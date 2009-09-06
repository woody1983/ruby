-- MySQL dump 10.11
--
-- Host: localhost    Database: depot_development
-- ------------------------------------------------------
-- Server version	5.0.75-0ubuntu10.2

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `products` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `description` text,
  `image_url` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `price` decimal(10,0) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Pragmatic Version Control','  <p>\r\n   This book is a recipe-based approach to using Subversion that will\r\n   get you up and running quickly---and correctly.</p> <p> All projects need\r\n   version control: it\'s a foundational piece of any project\' s\r\n   infrastructure.<br> Yet half of all project teams in the U.S. don\'t use\r\n   any version control at all.<br> Many others don\'t use it well, and end\r\n   up experiencing time-consuming problems.\r\n</p>\r\n','/images/svn.jpg','2009-09-04 02:15:03','2009-09-04 03:39:09','28'),(2,'UTC','<p>\r\nutcutcutcutc utcutcutc\r\naaaaaaaaaaaaaaaaaa\r\nbbbbbbbbbbbbbb\r\n</p>','/images/utc.jpg','2009-09-04 03:27:56','2009-09-04 03:27:56','15');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20090904021124'),('20090904021944'),('20090904065106');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL auto_increment,
  `session_id` varchar(255) NOT NULL,
  `data` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,'BAh7CDoQX2NzcmZfdG9rZW4iMU01N2tOTFFrY1FWZkhmZEcya1lIejM2eEUwaHk4K0NSa2dVbzNRM3RuUms9IgpmbGFzaElDOidBY3Rpb25Db250cm9sbGVyOjpGbGFzaDo6Rmxhc2hIYXNoewAGOgpAdXNlZHsAOg9zZXNzaW9uX2lkIiVjMjZjYTYzYTNkNGU4YTQyZjAxOGEzMmYxYmQ2OWY5Nw==--5cc6199cb9da9bf1ce00819d598cc','BAh7BjoQX2NzcmZfdG9rZW4iMXVKRGNIMHVQcjgxTnpONXZSR0hqeDRiUXFJ\nZnpDaWZ2SENFMElUVGZJdzg9\n','2009-09-04 06:54:39','2009-09-04 06:54:39'),(2,'BAh7CDoQX2NzcmZfdG9rZW4iMU01N2tOTFFrY1FWZkhmZEcya1lIejM2eEUwaHk4K0NSa2dVbzNRM3RuUms9IgpmbGFzaElDOidBY3Rpb25Db250cm9sbGVyOjpGbGFzaDo6Rmxhc2hIYXNoewAGOgpAdXNlZHsAOg9zZXNzaW9uX2lkIiVjMjZjYTYzYTNkNGU4YTQyZjAxOGEzMmYxYmQ2OWY5Nw==--5cc6199cb9da9bf1ce00819d598cc','BAh7BjoQX2NzcmZfdG9rZW4iMWsyTnAyQ01PeTNkVWovZWhwYWlVNVFVNUVI\nekkvQWUzWGdEa1pMM3doTWM9\n','2009-09-04 06:55:17','2009-09-04 06:55:17'),(3,'BAh7CDoQX2NzcmZfdG9rZW4iMU01N2tOTFFrY1FWZkhmZEcya1lIejM2eEUwaHk4K0NSa2dVbzNRM3RuUms9IgpmbGFzaElDOidBY3Rpb25Db250cm9sbGVyOjpGbGFzaDo6Rmxhc2hIYXNoewAGOgpAdXNlZHsAOg9zZXNzaW9uX2lkIiVjMjZjYTYzYTNkNGU4YTQyZjAxOGEzMmYxYmQ2OWY5Nw==--5cc6199cb9da9bf1ce00819d598cc','BAh7BjoQX2NzcmZfdG9rZW4iMUZWSWtkSTRNRkp6SjY3MU9xMmRaRnIrRW5u\nRDFZRWE4bUpMNld4K1d0SFE9\n','2009-09-04 07:04:20','2009-09-04 07:04:20');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-09-06 23:37:41
