-- MySQL dump 10.15  Distrib 10.0.20-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: jayab
-- ------------------------------------------------------
-- Server version	10.0.20-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `user` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `parent` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(500) NOT NULL DEFAULT '',
  `color` varchar(100) NOT NULL DEFAULT '',
  `creation_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modif_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_foreignkey_idx` (`user`),
  KEY `parent_foreignkey_idx` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbox_message`
--

DROP TABLE IF EXISTS `inbox_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbox_message` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NOT NULL DEFAULT '0',
  `from_class` varchar(50) NOT NULL DEFAULT '',
  `to_id` int(11) NOT NULL DEFAULT '0',
  `to_class` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(250) NOT NULL DEFAULT '',
  `summery` varchar(250) NOT NULL DEFAULT '',
  `content` blob NOT NULL,
  `creation_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modif_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbox_message`
--

LOCK TABLES `inbox_message` WRITE;
/*!40000 ALTER TABLE `inbox_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbox_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jayab_location`
--

DROP TABLE IF EXISTS `jayab_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jayab_location` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `reporter` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `owner_class` varchar(50) NOT NULL DEFAULT '',
  `community` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `latitude` decimal(32,8) NOT NULL DEFAULT '0.00000000',
  `longitude` decimal(32,8) NOT NULL DEFAULT '0.00000000',
  `creation_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modif_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `reporter_foreignkey_idx` (`reporter`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jayab_location`
--

LOCK TABLES `jayab_location` WRITE;
/*!40000 ALTER TABLE `jayab_location` DISABLE KEYS */;
INSERT INTO `jayab_location` VALUES (52,3,0,'',1,'parking maso','een ham towzih ast',0.09999200,0.09910200,'2015-09-24 12:28:12','2015-09-24 12:28:12'),(53,3,0,'',1,'maso 2','',0.09960100,0.09982600,'2015-09-24 12:44:29','2015-09-24 12:44:29'),(54,3,0,'',1,'maso 3','',0.09996000,0.09931600,'2015-09-24 12:45:12','2015-09-24 12:45:12'),(55,3,0,'',1,'maso 4','',0.09953600,0.09922500,'2015-09-24 12:50:45','2015-09-24 12:50:45'),(56,3,0,'',1,'maso 5','',0.09987400,0.09897300,'2015-09-24 12:55:58','2015-09-24 12:55:58'),(57,3,0,'',1,'maso 6','',0.09993900,0.09923100,'2015-09-24 13:01:39','2015-09-24 13:01:39'),(58,3,0,'',1,'maso 7','',0.09958500,0.09993900,'2015-09-24 13:10:44','2015-09-24 13:10:44'),(59,3,0,'',1,'kkk','',0.09492800,0.09338300,'2015-09-24 13:16:00','2015-09-24 13:16:00'),(60,3,0,'',1,'asdf','',0.09415600,0.09432700,'2015-09-24 13:16:45','2015-09-24 13:16:45'),(61,3,0,'',1,'fsdhd','',0.09801800,0.09411300,'2015-09-24 13:20:16','2015-09-24 13:20:16'),(62,3,0,'',1,'jj','',0.09823300,0.09329700,'2015-09-24 13:23:20','2015-09-24 13:23:20'),(63,3,0,'',1,'hhhh','',0.09548600,0.10235300,'2015-09-24 13:25:03','2015-09-24 13:25:03'),(64,3,0,'',1,'asdfsadfasdfadsf','',0.09754600,0.09806100,'2015-09-24 13:31:13','2015-09-24 13:31:13');
/*!40000 ALTER TABLE `jayab_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jayab_location_jayab_tag_assoc`
--

DROP TABLE IF EXISTS `jayab_location_jayab_tag_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jayab_location_jayab_tag_assoc` (
  `jayab_location_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `jayab_tag_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jayab_location_id`,`jayab_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jayab_location_jayab_tag_assoc`
--

LOCK TABLES `jayab_location_jayab_tag_assoc` WRITE;
/*!40000 ALTER TABLE `jayab_location_jayab_tag_assoc` DISABLE KEYS */;
INSERT INTO `jayab_location_jayab_tag_assoc` VALUES (56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(64,1);
/*!40000 ALTER TABLE `jayab_location_jayab_tag_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jayab_location_km_category_assoc`
--

DROP TABLE IF EXISTS `jayab_location_km_category_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jayab_location_km_category_assoc` (
  `jayab_location_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `km_category_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jayab_location_id`,`km_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jayab_location_km_category_assoc`
--

LOCK TABLES `jayab_location_km_category_assoc` WRITE;
/*!40000 ALTER TABLE `jayab_location_km_category_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `jayab_location_km_category_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jayab_location_km_label_assoc`
--

DROP TABLE IF EXISTS `jayab_location_km_label_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jayab_location_km_label_assoc` (
  `jayab_location_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `km_label_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`jayab_location_id`,`km_label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jayab_location_km_label_assoc`
--

LOCK TABLES `jayab_location_km_label_assoc` WRITE;
/*!40000 ALTER TABLE `jayab_location_km_label_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `jayab_location_km_label_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jayab_tag`
--

DROP TABLE IF EXISTS `jayab_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jayab_tag` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `key` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `value` tinyint(1) NOT NULL DEFAULT '1',
  `description` varchar(250) NOT NULL DEFAULT '',
  `creation_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modif_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tag_key` varchar(25) NOT NULL,
  `tag_value` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `key_foreignkey_idx` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jayab_tag`
--

LOCK TABLES `jayab_tag` WRITE;
/*!40000 ALTER TABLE `jayab_tag` DISABLE KEYS */;
INSERT INTO `jayab_tag` VALUES (1,0,1,'','0000-00-00 00:00:00','0000-00-00 00:00:00','amenity','parking');
/*!40000 ALTER TABLE `jayab_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jayab_vote`
--

DROP TABLE IF EXISTS `jayab_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jayab_vote` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `voter` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `location` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `like` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `voter_foreignkey_idx` (`voter`),
  KEY `location_foreignkey_idx` (`location`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jayab_vote`
--

LOCK TABLES `jayab_vote` WRITE;
/*!40000 ALTER TABLE `jayab_vote` DISABLE KEYS */;
INSERT INTO `jayab_vote` VALUES (7,3,61,1);
/*!40000 ALTER TABLE `jayab_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `km-comment`
--

DROP TABLE IF EXISTS `km-comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `km-comment` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `model_id` int(11) NOT NULL DEFAULT '0',
  `model_class` varchar(50) NOT NULL DEFAULT '',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `owner_class` varchar(50) NOT NULL DEFAULT '',
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `creation_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modif_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `common_combo_idx` (`model_id`,`model_class`,`owner_id`,`owner_class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `km-comment`
--

LOCK TABLES `km-comment` WRITE;
/*!40000 ALTER TABLE `km-comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `km-comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labels` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `user` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `community` tinyint(1) NOT NULL DEFAULT '1',
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(500) NOT NULL DEFAULT '',
  `color` varchar(100) NOT NULL DEFAULT '',
  `creation_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modif_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_foreignkey_idx` (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT '0',
  `user` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_foreignkey_idx` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (52,0,3,'The location Jayab_Location(52) has been created.'),(53,0,3,'The location Jayab_Location(53) has been created.'),(54,0,3,'The location Jayab_Location(54) has been created.'),(55,0,3,'The location Jayab_Location(55) has been created.'),(56,0,3,'The location Jayab_Location(56) has been created.'),(57,0,3,'The location Jayab_Location(57) has been created.'),(58,0,3,'The location Jayab_Location(58) has been created.'),(59,0,3,'The location Jayab_Location(59) has been created.'),(60,0,3,'The location Jayab_Location(60) has been created.'),(61,0,3,'The location Jayab_Location(61) has been created.'),(62,0,3,'The location Jayab_Location(62) has been created.'),(63,0,3,'The location Jayab_Location(63) has been created.'),(64,0,3,'The location Jayab_Location(64) has been created.'),(66,0,4,'Account data has been updated.'),(67,0,4,'Account data has been updated.'),(68,0,4,'Account data has been updated.'),(69,0,4,'Account data has been updated.'),(70,0,4,'Account data has been updated.'),(71,0,4,'Account data has been updated.'),(73,0,4,'Account data has been updated.'),(74,0,4,'Account data has been updated.'),(75,0,4,'Account data has been updated.'),(76,0,4,'Account data has been updated.'),(77,0,4,'Account data has been updated.'),(78,0,4,'Account data has been updated.'),(104,0,4,'Account data has been updated.'),(105,0,4,'Account data has been updated.'),(106,0,4,'Account data has been updated.'),(107,0,4,'Account data has been updated.'),(108,0,4,'Account data has been updated.'),(109,0,4,'Account data has been updated.'),(112,0,4,'Account data has been updated.'),(113,0,4,'Account data has been updated.'),(114,0,4,'Account data has been updated.'),(115,0,4,'Account data has been updated.'),(116,0,4,'Account data has been updated.'),(117,0,4,'Account data has been updated.'),(119,0,4,'Account data has been updated.'),(120,0,4,'Account data has been updated.'),(121,0,4,'Account data has been updated.'),(122,0,4,'Account data has been updated.'),(123,0,4,'Account data has been updated.'),(124,0,4,'Account data has been updated.'),(125,0,1,'The location Jayab_Location(89) has been created.'),(126,0,1,'The location Jayab_Location(90) has been created.'),(127,0,1,'The location Jayab_Location(91) has been created.'),(128,0,1,'The location Jayab_Location(92) has been created.'),(129,0,1,'The location Jayab_Location(93) has been created.'),(130,0,1,'The location Jayab_Location(94) has been created.'),(131,0,1,'The location Jayab_Location(95) has been created.'),(132,0,1,'The location Jayab_Location(96) has been created.'),(133,0,1,'The location Jayab_Location(97) has been created.'),(134,0,1,'The location Jayab_Location(98) has been created.'),(135,0,1,'The location Jayab_Location(99) has been created.'),(136,0,1,'The location Jayab_Location(100) has been created.'),(137,0,1,'The location Jayab_Location(101) has been created.'),(138,0,1,'The location Jayab_Location(102) has been created.'),(139,0,1,'The location Jayab_Location(103) has been created.'),(140,0,1,'The location Jayab_Location(104) has been created.'),(141,0,1,'The location Jayab_Location(105) has been created.'),(142,0,1,'The location Jayab_Location(106) has been created.'),(143,0,1,'The location Jayab_Location(107) has been created.'),(144,0,1,'The location Jayab_Location(108) has been created.'),(145,0,1,'The location Jayab_Location(109) has been created.'),(146,0,1,'The location Jayab_Location(110) has been created.'),(147,0,1,'The location Jayab_Location(111) has been created.'),(148,0,1,'The location Jayab_Location(112) has been created.'),(149,0,1,'The location Jayab_Location(113) has been created.'),(150,0,1,'The location Jayab_Location(114) has been created.'),(151,0,1,'The location Jayab_Location(115) has been created.'),(152,0,1,'The location Jayab_Location(116) has been created.'),(153,0,1,'The location Jayab_Location(117) has been created.'),(154,0,1,'The location Jayab_Location(118) has been created.'),(155,0,1,'The location Jayab_Location(119) has been created.'),(156,0,1,'The location Jayab_Location(120) has been created.'),(157,0,1,'The location Jayab_Location(121) has been created.'),(158,0,1,'The location Jayab_Location(122) has been created.'),(159,0,1,'The location Jayab_Location(123) has been created.'),(160,0,1,'The location Jayab_Location(124) has been created.'),(161,0,1,'The location Jayab_Location(125) has been created.'),(162,0,1,'The location Jayab_Location(126) has been created.'),(163,0,1,'The location Jayab_Location(127) has been created.'),(164,0,1,'The location Jayab_Location(128) has been created.'),(165,0,1,'The location Jayab_Location(129) has been created.'),(166,0,1,'The location Jayab_Location(130) has been created.'),(167,0,1,'The location Jayab_Location(131) has been created.'),(168,0,1,'The location Jayab_Location(132) has been created.'),(169,0,1,'The location Jayab_Location(133) has been created.'),(170,0,1,'The location Jayab_Location(134) has been created.'),(171,0,1,'The location Jayab_Location(135) has been created.'),(172,0,1,'The location Jayab_Location(136) has been created.'),(173,0,1,'The location Jayab_Location(137) has been created.'),(174,0,1,'The location Jayab_Location(138) has been created.'),(175,0,1,'The location Jayab_Location(139) has been created.');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `code_name` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `application` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `code_name_idx` (`code_name`),
  KEY `application_idx` (`application`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,0,'Software membership','software-member','Permission given to software members.','SaaS'),(2,0,'Software ownership','software-owner','Permission given to software owners.','SaaS'),(3,0,'Software authorized users','software-authorized-user','Permission given to users allowed to access a software.','SaaS');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluf_group_pluf_permission_assoc`
--

DROP TABLE IF EXISTS `pluf_group_pluf_permission_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluf_group_pluf_permission_assoc` (
  `pluf_group_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `pluf_permission_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pluf_group_id`,`pluf_permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluf_group_pluf_permission_assoc`
--

LOCK TABLES `pluf_group_pluf_permission_assoc` WRITE;
/*!40000 ALTER TABLE `pluf_group_pluf_permission_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `pluf_group_pluf_permission_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluf_group_pluf_user_assoc`
--

DROP TABLE IF EXISTS `pluf_group_pluf_user_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluf_group_pluf_user_assoc` (
  `pluf_user_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `pluf_group_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pluf_user_id`,`pluf_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluf_group_pluf_user_assoc`
--

LOCK TABLES `pluf_group_pluf_user_assoc` WRITE;
/*!40000 ALTER TABLE `pluf_group_pluf_user_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `pluf_group_pluf_user_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluf_permission_pluf_user_assoc`
--

DROP TABLE IF EXISTS `pluf_permission_pluf_user_assoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluf_permission_pluf_user_assoc` (
  `pluf_user_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `pluf_permission_id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pluf_user_id`,`pluf_permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluf_permission_pluf_user_assoc`
--

LOCK TABLES `pluf_permission_pluf_user_assoc` WRITE;
/*!40000 ALTER TABLE `pluf_permission_pluf_user_assoc` DISABLE KEYS */;
/*!40000 ALTER TABLE `pluf_permission_pluf_user_assoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluf_queue`
--

DROP TABLE IF EXISTS `pluf_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluf_queue` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT '0',
  `model_class` varchar(150) NOT NULL DEFAULT '',
  `model_id` int(11) NOT NULL DEFAULT '0',
  `action` varchar(150) NOT NULL DEFAULT '',
  `lock` int(11) NOT NULL DEFAULT '0',
  `creation_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modif_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `lock_idx` (`lock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluf_queue`
--

LOCK TABLES `pluf_queue` WRITE;
/*!40000 ALTER TABLE `pluf_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `pluf_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluf_search_occs`
--

DROP TABLE IF EXISTS `pluf_search_occs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluf_search_occs` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `word` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `model_class` varchar(150) NOT NULL DEFAULT '',
  `model_id` int(11) NOT NULL DEFAULT '0',
  `occ` int(11) NOT NULL DEFAULT '0',
  `pondocc` decimal(32,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`id`),
  KEY `model_class_id_combo_word_idx` (`model_class`,`model_id`,`word`),
  KEY `word_foreignkey_idx` (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluf_search_occs`
--

LOCK TABLES `pluf_search_occs` WRITE;
/*!40000 ALTER TABLE `pluf_search_occs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pluf_search_occs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluf_search_stats`
--

DROP TABLE IF EXISTS `pluf_search_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluf_search_stats` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `model_class` varchar(150) NOT NULL DEFAULT '',
  `model_id` int(11) NOT NULL DEFAULT '0',
  `indexations` int(11) NOT NULL DEFAULT '0',
  `creation_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modif_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `model_class_id_combo_idx` (`model_class`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluf_search_stats`
--

LOCK TABLES `pluf_search_stats` WRITE;
/*!40000 ALTER TABLE `pluf_search_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `pluf_search_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluf_search_words`
--

DROP TABLE IF EXISTS `pluf_search_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluf_search_words` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `word_unique_idx` (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluf_search_words`
--

LOCK TABLES `pluf_search_words` WRITE;
/*!40000 ALTER TABLE `pluf_search_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `pluf_search_words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rowpermissions`
--

DROP TABLE IF EXISTS `rowpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rowpermissions` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT '0',
  `model_id` int(11) NOT NULL DEFAULT '0',
  `model_class` varchar(50) NOT NULL DEFAULT '',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `owner_class` varchar(50) NOT NULL DEFAULT '',
  `negative` tinyint(1) NOT NULL DEFAULT '0',
  `permission` mediumint(9) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `permission_combo_idx` (`model_id`,`model_class`,`owner_id`,`owner_class`,`permission`),
  KEY `permission_foreignkey_idx` (`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rowpermissions`
--

LOCK TABLES `rowpermissions` WRITE;
/*!40000 ALTER TABLE `rowpermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `rowpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saas_application`
--

DROP TABLE IF EXISTS `saas_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saas_application` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL DEFAULT '0',
  `access_count` int(11) NOT NULL DEFAULT '0',
  `validate` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `domain` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `logo` varchar(150) NOT NULL DEFAULT '',
  `background` varchar(150) NOT NULL DEFAULT '',
  `creation_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modif_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saas_application`
--

LOCK TABLES `saas_application` WRITE;
/*!40000 ALTER TABLE `saas_application` DISABLE KEYS */;
/*!40000 ALTER TABLE `saas_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saas_configuration`
--

DROP TABLE IF EXISTS `saas_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saas_configuration` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `application` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `key` varchar(250) NOT NULL DEFAULT '',
  `value` varchar(250) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0',
  `owner_write` tinyint(1) NOT NULL DEFAULT '1',
  `owner_read` tinyint(1) NOT NULL DEFAULT '1',
  `member_write` tinyint(1) NOT NULL DEFAULT '1',
  `member_read` tinyint(1) NOT NULL DEFAULT '1',
  `authorized_write` tinyint(1) NOT NULL DEFAULT '1',
  `authorized_read` tinyint(1) NOT NULL DEFAULT '1',
  `other_write` tinyint(1) NOT NULL DEFAULT '1',
  `other_read` tinyint(1) NOT NULL DEFAULT '1',
  `description` varchar(250) NOT NULL DEFAULT '',
  `creation_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modif_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `key_idx` (`key`),
  KEY `application_foreignkey_idx` (`application`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saas_configuration`
--

LOCK TABLES `saas_configuration` WRITE;
/*!40000 ALTER TABLE `saas_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `saas_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saas_resource`
--

DROP TABLE IF EXISTS `saas_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saas_resource` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `application` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `key` varchar(250) NOT NULL DEFAULT '',
  `file` varchar(150) NOT NULL DEFAULT '',
  `owner_write` tinyint(1) NOT NULL DEFAULT '1',
  `owner_read` tinyint(1) NOT NULL DEFAULT '1',
  `member_write` tinyint(1) NOT NULL DEFAULT '1',
  `member_read` tinyint(1) NOT NULL DEFAULT '1',
  `authorized_write` tinyint(1) NOT NULL DEFAULT '1',
  `authorized_read` tinyint(1) NOT NULL DEFAULT '1',
  `other_write` tinyint(1) NOT NULL DEFAULT '1',
  `other_read` tinyint(1) NOT NULL DEFAULT '1',
  `description` varchar(250) NOT NULL DEFAULT '',
  `creation_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modif_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `application_foreignkey_idx` (`application`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saas_resource`
--

LOCK TABLES `saas_resource` WRITE;
/*!40000 ALTER TABLE `saas_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `saas_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_info`
--

DROP TABLE IF EXISTS `schema_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_info` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `application` varchar(150) NOT NULL DEFAULT '',
  `version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `application_unique_idx` (`application`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_info`
--

LOCK TABLES `schema_info` WRITE;
/*!40000 ALTER TABLE `schema_info` DISABLE KEYS */;
INSERT INTO `schema_info` VALUES (1,'Pluf',5),(2,'User',0),(3,'SaaS',0),(4,'Inbox',0),(5,'Wiki',0),(6,'KM',0),(7,'Jayab',0);
/*!40000 ALTER TABLE `schema_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT '0',
  `session_key` varchar(100) NOT NULL DEFAULT '',
  `session_data` longtext NOT NULL,
  `expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `session_key_idx` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,0,'3fe972a4f861e3b833a3a54efa5eb02c','a:1:{s:13:\"pluf_language\";s:2:\"fa\";}','2016-08-29 02:26:20'),(2,0,'8adcceea1117269a427498f3f84b31b7','a:1:{s:11:\"logout_time\";s:19:\"2015-09-12 01:51:20\";}','2016-09-11 01:51:20'),(3,0,'654fbcfaa33e664fb77b79719d58938d','a:1:{s:11:\"logout_time\";s:19:\"2015-09-12 12:08:58\";}','2016-09-11 12:08:58'),(4,0,'ed0f35c99959a6b8fb65b71d0b21770b','a:1:{s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-13 23:13:09'),(5,0,'7fc6a409ae0346e6cc54f878b582b32a','a:1:{s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-22 04:10:50'),(6,0,'63599134db5099bf9e1dc208d981e587','a:2:{s:10:\"login_time\";s:19:\"2015-09-24 14:39:35\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-23 14:48:32'),(7,0,'2387870b3fcdf45459cbbcdfdfab11e5','a:2:{s:10:\"login_time\";s:19:\"2015-09-24 12:25:47\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-23 12:27:32'),(8,0,'6d1f0bc278a20eec2f5ca8b325b01586','a:2:{s:10:\"login_time\";s:19:\"2015-09-24 12:31:17\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-23 12:31:34'),(9,0,'c8f2dc1ae15298122892743e8a65d4b4','a:1:{s:10:\"login_time\";s:19:\"2015-09-24 12:46:58\";}','2016-09-23 12:46:59'),(10,0,'0586671b9ce886b1727eeed9b535b42e','a:1:{s:10:\"login_time\";s:19:\"2015-09-24 12:49:33\";}','2016-09-23 12:49:33'),(11,0,'50eb2b5316d7ebd1a7bb060870308cba','a:2:{s:10:\"login_time\";s:19:\"2015-09-24 12:50:14\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-23 12:50:22'),(12,0,'89ddb27260aea52a6cfbeec66397e79f','a:2:{s:10:\"login_time\";s:19:\"2015-09-24 12:55:37\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-23 12:55:45'),(13,0,'5b9a0d5d4130e960538c15a7e201feb1','a:2:{s:10:\"login_time\";s:19:\"2015-09-24 13:00:49\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-23 13:01:15'),(14,0,'c97e4b5beb057ba269adfdfe71f0e5d3','a:2:{s:10:\"login_time\";s:19:\"2015-09-24 13:08:19\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-23 13:09:26'),(15,0,'ba58a7ca2adf9bf17ddfb0734f6cf186','a:2:{s:10:\"login_time\";s:19:\"2015-09-24 13:15:35\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-23 13:15:53'),(16,0,'82ba62f5a87fa2d9a392634b967025f9','a:2:{s:10:\"login_time\";s:19:\"2015-09-24 13:19:56\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-23 13:20:07'),(17,0,'3f4a69732b1279ce569dee76cd80e039','a:1:{s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-23 14:50:48'),(18,0,'8e2b2756965cc5269f1bcedaf578748d','a:2:{s:10:\"login_time\";s:19:\"2015-09-24 14:54:31\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-23 14:54:34'),(19,0,'0f752638b07b14d682d72d34a152148f','a:1:{s:11:\"logout_time\";s:19:\"2015-09-25 15:34:01\";}','2016-09-24 15:34:01'),(20,0,'0bae77966faf815be1f774aa30a917bc','a:1:{s:11:\"logout_time\";s:19:\"2015-09-25 15:35:47\";}','2016-09-24 15:35:47'),(21,0,'af5e2d9da1512b99ec5d63306bf40109','a:1:{s:11:\"logout_time\";s:19:\"2015-09-25 19:22:23\";}','2016-09-24 19:22:23'),(22,0,'43d1a37393120cd8b6299caf951c4a24','a:2:{s:10:\"login_time\";s:19:\"2015-09-25 19:31:37\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-24 19:32:14'),(23,0,'9dd8a23643e6044d4594cc95fce891b8','a:1:{s:11:\"logout_time\";s:19:\"2015-09-26 14:21:17\";}','2016-09-25 14:21:17'),(24,0,'bbb4fbcecfd92b31857d6f904d080850','a:1:{s:10:\"login_time\";s:19:\"2015-09-26 14:16:20\";}','2016-09-25 14:16:20'),(25,0,'980abd5d4e29f6bd9ddc64ca91b7e075','a:1:{s:10:\"login_time\";s:19:\"2015-09-26 14:18:05\";}','2016-09-25 14:18:05'),(26,0,'f7e99f7da7a6cc190002a99b254ed2dc','a:1:{s:10:\"login_time\";s:19:\"2015-09-26 14:18:06\";}','2016-09-25 14:18:06'),(27,0,'3ba0baf4696f29020d8c4655509b9e5b','a:1:{s:10:\"login_time\";s:19:\"2015-09-26 14:19:16\";}','2016-09-25 14:19:17'),(28,0,'e2337c6ef802c9f98f5dd8adcbe6058f','a:1:{s:10:\"login_time\";s:19:\"2015-09-26 14:19:17\";}','2016-09-25 14:19:17'),(29,0,'79aa091f7268a236898d4b252a38c8e7','a:1:{s:10:\"login_time\";s:19:\"2015-09-26 14:20:43\";}','2016-09-25 14:20:43'),(30,0,'4c6ece2ec8b05b86cb8e9f8bb263ddbb','a:1:{s:10:\"login_time\";s:19:\"2015-09-26 14:20:43\";}','2016-09-25 14:20:43'),(31,0,'f83697e1c48ecace7a831c24ae2c0e80','a:1:{s:11:\"logout_time\";s:19:\"2015-09-26 14:21:47\";}','2016-09-25 14:21:47'),(32,0,'977ace973591fbe6a635c3a8fb5be833','a:1:{s:10:\"login_time\";s:19:\"2015-09-26 14:21:48\";}','2016-09-25 14:21:48'),(33,0,'ee93b45552fd7486f101b30e82049724','a:1:{s:11:\"logout_time\";s:19:\"2015-09-26 14:55:36\";}','2016-09-25 14:55:36'),(34,0,'521a67d5198762384f59462afd177227','a:1:{s:10:\"login_time\";s:19:\"2015-09-26 14:55:36\";}','2016-09-25 14:55:36'),(35,0,'7011d321cfe11540adbfa32ac30a2f94','a:1:{s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-26 06:48:45'),(36,0,'ecf2f21a9f72f18b661d1d7c0d391a17','a:1:{s:11:\"logout_time\";s:19:\"2015-09-27 07:02:06\";}','2016-09-26 07:02:06'),(37,0,'ee8355ec2e7a9ee6d4904ee1a1f52e66','a:1:{s:10:\"login_time\";s:19:\"2015-09-27 07:02:06\";}','2016-09-26 07:02:06'),(38,0,'c7a89340f0167920cd95145753fd8386','a:1:{s:11:\"logout_time\";s:19:\"2015-09-27 08:06:10\";}','2016-09-26 08:06:10'),(39,0,'15ffadd02f001777bc7eb8b12ee593df','a:1:{s:10:\"login_time\";s:19:\"2015-09-27 08:06:10\";}','2016-09-26 08:06:10'),(40,0,'8f6fc80764db440f863755288e2d17bd','a:1:{s:10:\"login_time\";s:19:\"2015-09-27 13:39:23\";}','2016-09-26 13:39:24'),(41,0,'06013e57b7321ba4d05ddd66e906fc24','a:1:{s:10:\"login_time\";s:19:\"2015-09-27 13:40:07\";}','2016-09-26 13:40:07'),(42,0,'fff192109accfe66c47518597c23c613','a:1:{s:10:\"login_time\";s:19:\"2015-09-27 13:41:04\";}','2016-09-26 13:41:04'),(43,0,'f7cf42a74e146dd135a66ccf48a5fe7c','a:1:{s:10:\"login_time\";s:19:\"2015-09-27 13:41:04\";}','2016-09-26 13:41:04'),(44,0,'4ada536e689a36e726886d9e3f299599','a:1:{s:10:\"login_time\";s:19:\"2015-09-27 13:41:07\";}','2016-09-26 13:41:07'),(45,0,'c9fcd30796eeaa09b762c176a34de99e','a:2:{s:10:\"login_time\";s:19:\"2015-09-27 13:52:33\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-26 13:52:33'),(46,0,'6d80fef827eba0e01da8a97c8503be8f','a:2:{s:10:\"login_time\";s:19:\"2015-09-27 13:58:30\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-26 13:58:30'),(47,0,'19a736130060391ffb77f26afde48e4b','a:2:{s:10:\"login_time\";s:19:\"2015-09-28 15:57:56\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-27 15:57:56'),(48,0,'0830ea9e7debe6d6d48d445a6f155630','a:1:{s:11:\"logout_time\";s:19:\"2015-09-28 15:57:57\";}','2016-09-27 15:57:57'),(49,0,'b321b4db57c3eb08e84e471d61a61c31','a:1:{s:10:\"login_time\";s:19:\"2015-09-28 15:57:57\";}','2016-09-27 15:57:57'),(50,0,'158bc3ff6ad96a74968c428f001fe700','a:2:{s:10:\"login_time\";s:19:\"2015-09-28 16:00:38\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-27 16:00:38'),(51,0,'fb7a0db7a1c28bad5017005e37022877','a:1:{s:11:\"logout_time\";s:19:\"2015-09-28 16:00:38\";}','2016-09-27 16:00:38'),(52,0,'002255026ff2c98723459ad8286a66af','a:1:{s:10:\"login_time\";s:19:\"2015-09-28 16:00:39\";}','2016-09-27 16:00:39'),(53,0,'daa710abdb33297599d6fe1d3978784b','a:2:{s:10:\"login_time\";s:19:\"2015-09-28 16:01:22\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-27 16:01:22'),(54,0,'1f95cb8bb120d3fdcad20c3872a9f945','a:1:{s:11:\"logout_time\";s:19:\"2015-09-28 16:01:23\";}','2016-09-27 16:01:23'),(55,0,'12db914e728468cfc8feddb514cf2714','a:1:{s:10:\"login_time\";s:19:\"2015-09-28 16:01:23\";}','2016-09-27 16:01:23'),(56,0,'46ec5e716b46f6efa0e845b1f5944e05','a:2:{s:10:\"login_time\";s:19:\"2015-09-28 16:01:46\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-27 16:01:46'),(57,0,'e08a2a104d6b38e87336ad24237e0960','a:1:{s:11:\"logout_time\";s:19:\"2015-09-28 16:01:46\";}','2016-09-27 16:01:46'),(58,0,'fba0aec649a24d8817d89616a9a35e0b','a:1:{s:10:\"login_time\";s:19:\"2015-09-28 16:01:46\";}','2016-09-27 16:01:46'),(59,0,'f00599fd520abf5fdc9480df8650f4fe','a:2:{s:10:\"login_time\";s:19:\"2015-09-28 16:01:58\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-27 16:01:58'),(60,0,'9e3005ff8c396a1e1fbcdec8c28df5a6','a:1:{s:11:\"logout_time\";s:19:\"2015-09-28 16:01:58\";}','2016-09-27 16:01:58'),(61,0,'c94fda7ff76aedcfc7d15eb538da3f3a','a:1:{s:10:\"login_time\";s:19:\"2015-09-28 16:01:58\";}','2016-09-27 16:01:58'),(62,0,'b7f41394e3597647837d5d9c6f1273da','a:1:{s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-27 16:37:13'),(63,0,'d855897d17a9e8499327506f0e936ff3','a:2:{s:10:\"login_time\";s:19:\"2015-09-28 16:50:19\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-27 16:50:20'),(64,0,'b7b2dd3e60238ff9113f682f880c99ef','a:1:{s:11:\"logout_time\";s:19:\"2015-09-28 16:50:20\";}','2016-09-27 16:50:20'),(65,0,'fea1e7a9f59720629bc22333f178e0d2','a:1:{s:10:\"login_time\";s:19:\"2015-09-28 16:50:20\";}','2016-09-27 16:50:20'),(66,0,'b629e608df1b85d73da9d2172eb2dc5e','a:2:{s:10:\"login_time\";s:19:\"2015-09-28 16:50:20\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-27 16:50:20'),(67,0,'e91e5672b7f82b4e8f54d51230148ce1','a:2:{s:10:\"login_time\";s:19:\"2015-09-28 16:50:59\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-27 16:50:59'),(68,0,'f00a4977d98727a096d5d34d0d2a283c','a:1:{s:11:\"logout_time\";s:19:\"2015-09-28 16:51:00\";}','2016-09-27 16:51:00'),(69,0,'f3434d7419065d3e97bdd812004619b8','a:1:{s:10:\"login_time\";s:19:\"2015-09-28 16:51:00\";}','2016-09-27 16:51:00'),(70,0,'1b6bff40c694a3cb8da46400e4eccebb','a:2:{s:10:\"login_time\";s:19:\"2015-09-28 16:51:00\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-27 16:51:00'),(71,0,'3389c546d66b90f3cdf2da20aea4ec61','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 07:46:32\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 07:46:32'),(72,0,'95d689cb43e064218c33cebffaea8d39','a:1:{s:11:\"logout_time\";s:19:\"2015-09-29 07:46:33\";}','2016-09-28 07:46:33'),(73,0,'4ede31a6cc7abc591b3f6e112651df28','a:1:{s:10:\"login_time\";s:19:\"2015-09-29 07:46:33\";}','2016-09-28 07:46:33'),(74,0,'76f3bbd5f56b69ccd0ce9680d38face7','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 07:46:33\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 07:46:33'),(75,0,'45ab80b9cb10428833f68a9321f8462c','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 07:50:20\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 07:50:20'),(76,0,'93e8050596db514f1cc3359ece86f6fc','a:1:{s:11:\"logout_time\";s:19:\"2015-09-29 07:50:20\";}','2016-09-28 07:50:20'),(77,0,'3aa6bdf0f20e1db3342b9a5e54055047','a:1:{s:10:\"login_time\";s:19:\"2015-09-29 07:50:20\";}','2016-09-28 07:50:20'),(78,0,'9b609f3fe79d99ede4f5e1b4128d68f0','a:1:{s:11:\"logout_time\";s:19:\"2015-09-29 07:50:21\";}','2016-09-28 07:50:21'),(79,0,'3f77f8440bcc31b813b00dd5328a17ea','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 07:50:21\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 07:50:22'),(80,0,'99ada4fe6061a0d999dc6abf51e98fb1','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 07:50:22\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 07:50:22'),(81,0,'d67fd84b278742e3bcdea7b6146ff0da','a:1:{s:10:\"login_time\";s:19:\"2015-09-29 07:50:23\";}','2016-09-28 07:50:23'),(82,0,'3feb65f6b488e31af8cb3ee3e6799b2b','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 07:50:23\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 07:50:23'),(83,0,'fc21c4d0ba9af390530f05617c73bda6','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 07:50:23\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 07:50:23'),(84,0,'54130a40aba1f771b53bf833afb30703','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 07:50:23\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 07:50:23'),(85,0,'6ba5d6adde9648b216303bd86cd1525f','a:1:{s:11:\"logout_time\";s:19:\"2015-09-29 07:51:50\";}','2016-09-28 07:51:50'),(86,0,'fc1e2ffd2704b290f64eba561b8289c2','a:1:{s:10:\"login_time\";s:19:\"2015-09-29 07:51:50\";}','2016-09-28 07:51:51'),(87,0,'aa9d84d5090c18260e7b3abd3d121d16','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 07:51:51\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 07:51:51'),(88,0,'1ceb5e3cb1ddf3e429b0e41877c29791','a:1:{s:11:\"logout_time\";s:19:\"2015-09-29 07:51:51\";}','2016-09-28 07:51:51'),(89,0,'f49ad018935e75bfee0561403951d42d','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 07:51:52\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 07:51:52'),(90,0,'91c08cd4eea4c8ea199a1ea1c523befe','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 07:51:52\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 07:51:52'),(91,0,'da6cd2f263322e3334d07259960ac792','a:1:{s:10:\"login_time\";s:19:\"2015-09-29 07:51:53\";}','2016-09-28 07:51:53'),(92,0,'24bed9b2a93f653bdb64df0e486b80a6','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 07:51:53\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 07:51:53'),(93,0,'e9a0d0365bd4082a95b0dda193dc00bf','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 07:51:53\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 07:51:53'),(94,0,'503578c5c16066a779dc3c5d1184606c','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 07:51:53\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 07:51:54'),(95,0,'3a74e811fdf05afd61cceb21a7131b17','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 08:21:59\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 08:22:00'),(96,0,'ad82764d5136ccba52a7fedac0a0dbff','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 08:22:19\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 08:22:19'),(97,0,'3af675a08c691620c22d39cad1d44e36','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 08:32:11\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 08:32:11'),(98,0,'711672dfb92ef168bc52eb8d1dfaec67','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 08:32:11\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 08:32:11'),(99,0,'dc2c5e6143d529b6a65824e2c81bfdd0','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 08:33:31\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 08:33:31'),(100,0,'8360fdd3d41ff0ce92ae0b5209c9194c','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 08:33:32\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 08:33:32'),(101,0,'82cafe8d7481dc8d03a832079f1d7f6e','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 08:35:30\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 08:35:30'),(102,0,'a152c3ae3da3d808aeaa2ec36a67e358','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 08:35:30\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 08:35:30'),(103,0,'57ecaca03075501d7a19f93705891ae9','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 08:35:30\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 08:35:30'),(104,0,'636300cb2543f5ecc6cd4dbadc4081b5','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:01:48\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:01:48'),(105,0,'6e1f0c1ee195292fef04fc4225db3584','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:01:48\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:01:48'),(106,0,'10e71ec8065014723b4362a6431f193c','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:01:49\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:01:49'),(107,0,'b58a9254dfa499cda7dc9167a540b106','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:02:36\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:02:36'),(108,0,'2e5de5dbb91b51a0774f19dbacffec5c','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:02:36\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:02:36'),(109,0,'984c5c693bac1bb97cedaf82c1aec945','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:02:37\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:02:37'),(110,0,'280fd4709cd53a81150349ab7e8c83e7','a:1:{s:10:\"login_time\";s:19:\"2015-09-29 09:02:37\";}','2016-09-28 09:02:37'),(111,0,'ad1a22c1a1022c022fc109a5ea32a02f','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:03:27\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:03:27'),(112,0,'0b9351b4df878784151fcde83aff79b5','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:03:27\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:03:27'),(113,0,'0b6800dc32d19699ccd5a25ea89e4ae8','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:03:27\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:03:27'),(114,0,'1474027974ad5342dab6ffd62a646296','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:03:28\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:03:28'),(115,0,'bb24792895fbe9117e19287325067e61','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:03:39\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:03:39'),(116,0,'fd7644caab295d6ee60fc0bfc913de9b','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:03:39\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:03:40'),(117,0,'e945d2a58444987e8d3bb75cdb5588a6','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:03:40\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:03:40'),(118,0,'36336a6a4e4c6448df4a0f68d7432dbf','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:03:40\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:03:40'),(119,0,'4dca9af414e5b5aa0c3d60716b66f41d','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:08:16\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:08:16'),(120,0,'abf8d5a8f9175f5b69c571b864508a7d','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:08:20\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:08:21'),(121,0,'4cfb812cf88939d1f2406362020403bf','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:11:04\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:11:04'),(122,0,'8b78c5d57e6ab0231e00fa5bc0ba1dcf','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:11:04\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:11:05'),(123,0,'db861205f07fbff1ed62c688571da5d6','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:11:05\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:11:05'),(124,0,'db8b5e5aabcf72beb2437f82eb7e00cf','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:11:05\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:11:05'),(125,0,'5905836a48f3c7e27baf4832b6c39a65','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:11:15\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:11:15'),(126,0,'27ac1797d27fa8270fc628b4ae5cade9','a:1:{s:11:\"logout_time\";s:19:\"2015-09-29 09:12:02\";}','2016-09-28 09:12:02'),(127,0,'f6a942ad0e47b95af00f9207ebfc67e5','a:1:{s:10:\"login_time\";s:19:\"2015-09-29 09:12:02\";}','2016-09-28 09:12:02'),(128,0,'da60c57729039ccfb5a42c55d74b43fc','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:12:02\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:12:02'),(129,0,'b56697ff002e6b294fc821d1a2503d0b','a:1:{s:11:\"logout_time\";s:19:\"2015-09-29 09:12:02\";}','2016-09-28 09:12:02'),(130,0,'626f10def8d47c98119b8c53d3d6aa30','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:12:03\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:12:03'),(131,0,'67bee142566635bc5e581831182d6e75','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:12:03\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:12:03'),(132,0,'63fa35b2f2338fcf49351e811c601111','a:1:{s:10:\"login_time\";s:19:\"2015-09-29 09:12:04\";}','2016-09-28 09:12:04'),(133,0,'31b2aaf896d961e5383c94555ff2757e','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:12:04\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:12:04'),(134,0,'371b47bef06f76ea1ce82490087de94d','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:12:04\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:12:04'),(135,0,'c926b8bcb7d9b5b894f929bf7b09a354','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:12:04\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:12:04'),(136,0,'2eeaacc096450730a388f21559446e41','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:12:30\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:12:31'),(137,0,'7ef0c8677b620f76b491c31469d8b721','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:12:56\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:12:56'),(138,0,'dd8265b4745822536d88520cee06f8bc','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:19:45\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:19:45'),(139,0,'0ae635521f45ed9b5193818a4179bd71','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:21:07\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:21:07'),(140,0,'6f4507afc54636ee81a2c3106726ec4d','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:24:39\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:24:39'),(141,0,'e016dfdb9354443eec526e1ff9013fdd','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:24:45\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:24:46'),(142,0,'79540e1b4d94733088c7f82afea5a062','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:24:54\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:24:55'),(143,0,'c0dd846cdfde6efe4281df542da3ca82','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:53:48\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:53:49'),(144,0,'91e8c0886d1ad89d50cae1626d110167','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:57:13\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:57:14'),(145,0,'bbbe90b98f31086623d6d622613bff98','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 09:57:17\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 09:57:18'),(146,0,'33bc9752423972781c206ee3d5aeded8','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:19:13\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:19:13'),(147,0,'39adccd0774570fbcf9ea653878cb7fa','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:19:33\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:19:33'),(148,0,'95d01bbd8a102285c825f1be45e2393b','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:22:51\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:22:52'),(149,0,'9b25e6d19059f5b8a5f72554e3e4824f','a:1:{s:11:\"logout_time\";s:19:\"2015-09-29 10:22:52\";}','2016-09-28 10:22:52'),(150,0,'b714bbd83d8c62995b5614948c2a3950','a:1:{s:10:\"login_time\";s:19:\"2015-09-29 10:22:52\";}','2016-09-28 10:22:52'),(151,0,'d4cda685de790c8536271e7a8f10314b','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:22:52\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:22:52'),(152,0,'304dfd5168f14b0139fe6f38481f149c','a:1:{s:11:\"logout_time\";s:19:\"2015-09-29 10:22:52\";}','2016-09-28 10:22:52'),(153,0,'3db187b0ebd4a008b0d6f4325dacdc64','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:22:53\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:22:53'),(154,0,'b26953a49a445485bb29dbd6d06598d0','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:22:53\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:22:53'),(155,0,'5251874561280d27233dcd94b9cc9a61','a:1:{s:10:\"login_time\";s:19:\"2015-09-29 10:22:53\";}','2016-09-28 10:22:53'),(156,0,'bde7b1767ec129fe567957b3f8734233','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:22:54\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:22:54'),(157,0,'82be9f789b6af5b862ee500e3d0190ee','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:22:54\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:22:54'),(158,0,'9935b38d6013dbb45338a9df2d2c6c7c','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:23:07\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:23:08'),(159,0,'596a1be89a433cfb93ebbf1cf758ee09','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:23:47\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:23:47'),(160,0,'24fca4c1a040e0ff46da9cf5e2e44c14','a:1:{s:11:\"logout_time\";s:19:\"2015-09-29 10:23:47\";}','2016-09-28 10:23:47'),(161,0,'165e380db02e894105f7cf82e1aa72b7','a:1:{s:10:\"login_time\";s:19:\"2015-09-29 10:23:47\";}','2016-09-28 10:23:47'),(162,0,'a9f1ba3fa1252d54d17fa824d2633e03','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:23:47\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:23:47'),(163,0,'dd107af3618a8e1f2e325ea9391d719e','a:1:{s:11:\"logout_time\";s:19:\"2015-09-29 10:23:48\";}','2016-09-28 10:23:48'),(164,0,'670ab8cbc262dfec3616350eb8970867','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:23:48\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:23:48'),(165,0,'586069567052422c1fb717a1c8c74f92','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:23:49\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:23:49'),(166,0,'c9a9c3248bdf58262aa559c1ccf967ba','a:1:{s:10:\"login_time\";s:19:\"2015-09-29 10:23:49\";}','2016-09-28 10:23:49'),(167,0,'ba856435dea0990fb3aaf3411d363047','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:23:50\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:23:50'),(168,0,'da211f08f0ba7db96374b47588fe019e','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:23:50\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:23:50'),(169,0,'84d17f02b6b2652ad75865693d703e85','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:24:00\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:24:00'),(170,0,'ec34acf68f4ce77cf29f144587a8099e','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:24:00\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:24:00'),(171,0,'a6cd011e1d83ede52374f8d1b00f2aa4','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:24:00\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:24:00'),(172,0,'d24d10e94573cff424114de1582ee45d','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:24:01\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:24:01'),(173,0,'d48026ec6789f044a32cf48687aa9cd5','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:24:08\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:24:08'),(174,0,'ab7fb91e4b8c90bf2e4ae8c9b0f23b02','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:29:48\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:29:48'),(175,0,'5cf0911d4b4181c5c52ca50c05007ff2','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:34:03\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:34:03'),(176,0,'3639a6a222787f8b6e57db91c861cc52','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:34:07\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:34:08'),(177,0,'a2610b773bbb1516ae50991c82a44dfb','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:34:16\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:34:16'),(178,0,'be8e491304a5a1ff75bb4d8181383abe','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:36:09\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:36:09'),(179,0,'aa8c33d3e19a68167384354105b107d6','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:36:20\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:36:20'),(180,0,'bfe848fa172055302a1f80dd4bd8b47c','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:52:58\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:52:58'),(181,0,'3f4eba36d6a37bfa3a634647e58fc70c','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:53:18\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:53:18'),(182,0,'789f15c91ee72fd847b64b7bc1adb1b3','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:54:17\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:54:17'),(183,0,'946cdb75b00154012969d8b3ab50bebf','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:55:38\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:55:38'),(184,0,'b58eae05b93d142e04d84ab550ff31a2','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:56:39\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:56:39'),(185,0,'26289e57a121b022fa312d08c2bca140','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 10:59:16\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 10:59:16'),(186,0,'c6dc60e7ba4a535d68e4a53e32dce048','a:2:{s:10:\"login_time\";s:19:\"2015-09-29 11:06:49\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-28 11:06:49'),(187,0,'ced9ae84bfac3601ed38b25f2c0f65d2','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:27:12\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:27:13'),(188,0,'1c0c7ba1f11970febb13c430c3b9971d','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:27:13\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:27:13'),(189,0,'90ee8560c14baefd9b8b05754d98d040','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:27:14\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:27:14'),(190,0,'18660259a04d15254e1a45e6ac53afee','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:27:14\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:27:15'),(191,0,'13ba610c19f20d5b0b2d2a2c074032bb','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:27:15\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:27:16'),(192,0,'780eba048042747683abc89dd2679665','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:28:38\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:28:38'),(193,0,'b0ba4f84ddb6b14e36eba01c5d91f3e9','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:28:44\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:28:45'),(194,0,'34b2f619114e940adccc2380382d1809','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:30:52\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:30:53'),(195,0,'c4b7265079ee489fa285ac3546697553','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:32:56\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:32:56'),(196,0,'1a4d1c20562d9f9e01d041e5a710ac2c','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:33:16\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:33:17'),(197,0,'7a01347d99b2e952877912cff797adf0','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:33:17\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:33:17'),(198,0,'3d1bf322a864d9934312524332db9784','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:33:17\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:33:17'),(199,0,'b81978f5ddcc33bcdd66acefb3c9f7a9','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:33:17\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:33:17'),(200,0,'bc9805f301528f04b0cb6ea327720ba0','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:33:18\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:33:18'),(201,0,'1295d7a80c8bceafc8d93e443f83cd1b','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:33:18\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:33:18'),(202,0,'20a38d77bca5697eee422402b282dd9b','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:35:58\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:35:59'),(203,0,'ef9dc241998f66eb243d66cdae955328','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:35:59\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:35:59'),(204,0,'adf97e30122ad49d58e206da25950c50','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:35:59\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:36:00'),(205,0,'dc2b3d7b5a26573bc171982aecfb86b5','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:36:00\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:36:00'),(206,0,'3aeb271d756a3b062f40fbf568fbf9d8','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:36:00\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:36:00'),(207,0,'b8863fab75f3fe5e2157330e227dea79','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:36:00\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:36:00'),(208,0,'86dd76577185d58d8dc50feaa0784182','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 18:36:00\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 18:36:01'),(209,0,'5efd7351ad3787bb168a892463b05c6c','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:27:47\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:27:47'),(210,0,'08882f8e798dc7af80d47f0bea3d1420','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:27:47\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:27:47'),(211,0,'fa70c2b95471850aada3d8949f49fcfa','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:27:47\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:27:48'),(212,0,'681a87fb8ad11e649d820fad9be637de','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:27:48\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:27:48'),(213,0,'484f1647ba72892de1397b34c1d1935a','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:27:48\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:27:48'),(214,0,'e4b7b802166b85ffcb1f74c199e6a8a5','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:27:48\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:27:49'),(215,0,'9b36d2e6cd9a7695c5ab90bd45b3dc9b','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:27:49\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:27:49'),(216,0,'92cba76d42618a6e506b13ce898625b3','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:27:49\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:27:49'),(217,0,'947f5d301377fd01353d0bd2e892fed6','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:27:50\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:27:50'),(218,0,'d3ba7d63c448afca4ca2dad543a5b207','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:27:50\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:27:50'),(219,0,'74a66c32a9f84141c8ee00e85b843179','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:27:50\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:27:50'),(220,0,'6eb06ea5b9ef2a021c079420e1c30b6e','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:29:33\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:29:33'),(221,0,'9f6f4a449002f7b0c999a9ee4e276260','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:29:37\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:29:37'),(222,0,'900e8975892ccc509ae7c6c0f9e96631','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:30:46\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:30:46'),(223,0,'795d9e976466ded09e5e771f38ef5c72','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:32:14\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:32:14'),(224,0,'3818a258fe72eb9e8e793f11966030ef','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:32:37\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:32:38'),(225,0,'fc68cc2cc9bd9aa9b08ee82884e967e3','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:33:05\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:33:05'),(226,0,'87d15033984f556df0616d90a798cd69','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:34:28\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:34:28'),(227,0,'ec830941ace9165f00adbde2af65bfb0','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 21:33:14\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 21:34:30'),(228,0,'d957327438fdd6be4a7a2da8b06bba96','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:51:22\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:51:22'),(229,0,'c167092bf635c9970b91f46362867981','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:54:13\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:54:13'),(230,0,'f3607891e5301f3b41194f028303a471','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:54:13\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:54:13'),(231,0,'8499e597b3ece01c6327dfcbd8a7668f','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:54:13\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:54:13'),(232,0,'a6ed0a41ff0a4ff5e0dbdef24fee083f','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:54:14\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:54:14'),(233,0,'74034e9087f67154dfe59a8090ac4457','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:54:14\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:54:14'),(234,0,'9935654d24aa17715967332da8f3ba06','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:54:14\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:54:14'),(235,0,'30a49af976b2e357895ed4b960e92440','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:54:15\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:54:15'),(236,0,'5a18acf23b4ccddfa3e4dd8ee3d66958','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:54:15\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:54:15'),(237,0,'b9372d83d0241580a55f5c300baad32f','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:54:16\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:54:16'),(238,0,'8719ed5176dccdac4f23b8cb454bafe7','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:54:16\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:54:16'),(239,0,'598d75b506c80f64ab428929b2f03d63','a:2:{s:10:\"login_time\";s:19:\"2015-10-01 19:54:16\";s:13:\"pluf_language\";s:2:\"fa\";}','2016-09-30 19:54:16');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `user` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `access_count` int(11) NOT NULL DEFAULT '0',
  `validate` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `state` varchar(50) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT '',
  `national_id` varchar(100) NOT NULL DEFAULT '',
  `postal_code` varchar(100) NOT NULL DEFAULT '',
  `phone_number` varchar(50) NOT NULL DEFAULT '',
  `mobile_number` varchar(50) NOT NULL DEFAULT '',
  `shaba` varchar(70) NOT NULL DEFAULT '',
  `creation_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modif_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_idx` (`user`),
  KEY `user_foreignkey_idx` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,1,0,0,0,'maso 2','','','','','','','','','','2015-08-30 02:26:20','2015-09-27 13:49:58'),(2,2,0,0,0,'','','','','','','','','','','2015-09-10 18:55:29','2015-09-10 18:55:29'),(3,3,0,0,0,'','','','','','','','','','','2015-09-24 12:25:29','2015-09-24 12:25:29'),(4,4,0,0,0,'','','','','','','','','','','2015-09-29 07:50:21','2015-09-29 07:50:21');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `version` int(11) NOT NULL DEFAULT '0',
  `login` varchar(50) NOT NULL DEFAULT '',
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(150) NOT NULL DEFAULT '',
  `password` varchar(150) NOT NULL DEFAULT '',
  `administrator` tinyint(1) NOT NULL DEFAULT '0',
  `staff` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `language` varchar(5) NOT NULL DEFAULT 'fa',
  `timezone` varchar(45) NOT NULL DEFAULT 'Europe/Berlin',
  `date_joined` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_unique_idx` (`login`),
  KEY `login_idx` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,0,'admin','mmmm','admin','admin@dpq.co.ir','sha1:omip8:bc632200fdeb831aa66a14b533de8e9f9132cde4',1,1,1,'fa','Europe/Berlin','2015-08-30 02:25:34','2015-10-01 21:33:14'),(2,0,'mostafa','my first name','my last name','','sha1:[X58$:573d7d43b1f5762680280ecf7e0a66c17f51a94a',0,0,1,'fa','Europe/Berlin','2015-09-10 18:55:29','2015-09-10 18:55:29'),(3,0,'hadi','','','','sha1:mPB>{:867991804d3d3ad86e6870d3292ed84b6d775f86',0,0,1,'fa','Europe/Berlin','2015-09-24 12:25:28','2015-09-24 13:19:56'),(4,0,'test','test','hastim','','sha1:sF{0y:858671433abc628aae7f9f582ceb5cef83874746',0,0,1,'fa','Europe/Berlin','2015-09-29 07:50:21','2015-09-29 10:23:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_page`
--

DROP TABLE IF EXISTS `wiki_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wiki_page` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL DEFAULT '',
  `language` varchar(50) NOT NULL DEFAULT '',
  `summary` varchar(250) NOT NULL DEFAULT '',
  `content` blob NOT NULL,
  `creation_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modif_dtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wiki_page`
--

LOCK TABLES `wiki_page` WRITE;
/*!40000 ALTER TABLE `wiki_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `wiki_page` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-02 12:08:18
