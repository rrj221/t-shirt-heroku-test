-- MySQL dump 10.13  Distrib 5.7.13, for osx10.11 (x86_64)
--
-- Host: 127.0.0.1    Database: tshirt_db
-- ------------------------------------------------------
-- Server version	5.7.13

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
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `imgURL` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `ShirtId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `UserId` (`UserId`),
  KEY `ShirtId` (`ShirtId`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`ShirtId`) REFERENCES `Shirts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,'blue','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2FhanSolo.png?alt=media&token=932dcf41-5e1a-4c92-a1ab-607ba4a8c614','2016-08-26 21:58:58','2016-08-26 21:58:58',10,2),(2,'purple','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2FhanSolo.png?alt=media&token=932dcf41-5e1a-4c92-a1ab-607ba4a8c614','2016-08-26 21:59:38','2016-08-26 21:59:38',10,5),(3,'black','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fluke.png?alt=media&token=ee02bb6a-f45d-4b46-a87d-52a2c7654b06','2016-08-26 22:02:12','2016-08-26 22:02:12',4,1),(4,'yellow','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fluke.png?alt=media&token=ee02bb6a-f45d-4b46-a87d-52a2c7654b06','2016-08-26 22:02:45','2016-08-26 22:02:45',4,7),(5,'pink','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fvader.png?alt=media&token=46f14ed3-9f36-47dc-a4bb-64bcac01c338','2016-08-26 22:07:07','2016-08-26 22:07:07',4,4),(6,'blue','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fvader.png?alt=media&token=3119535b-018d-46c0-a077-a297053014a0','2016-08-27 00:22:17','2016-08-27 00:22:17',4,2),(7,'black','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fjawa.png?alt=media&token=d4f9c4e0-3d0b-44a8-bafd-417623ef5eb4','2016-08-27 01:08:24','2016-08-27 01:08:24',4,1),(8,'black','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2FdeathStar.jpg?alt=media&token=cc01688e-e5c4-437c-bded-d446de7f1a86','2016-08-27 01:10:39','2016-08-27 01:10:39',4,1),(9,'red','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fsabers.jpg?alt=media&token=dfea7c63-3a1f-487b-a4e5-745d6a3c99ab','2016-08-27 01:15:16','2016-08-27 01:15:16',4,6),(10,'purple','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2FhanSolo.png?alt=media&token=5ed50045-b122-44ad-a96a-835ad697d0d3','2016-08-27 01:16:51','2016-08-27 01:16:51',4,5),(11,'blue','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fjawa.png?alt=media&token=29ac5f8f-dd4d-43ba-b7b5-053d81bf3046','2016-08-27 01:18:23','2016-08-27 01:18:23',4,2),(12,'red','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fluke.png?alt=media&token=03c1117f-d91a-4767-96df-7d0db0befbc8','2016-08-27 01:26:26','2016-08-27 01:26:26',4,6),(13,'green','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fsabers.jpg?alt=media&token=3492ccb1-95fc-4ca1-b12c-0d90a005d655','2016-08-27 01:28:47','2016-08-27 01:28:47',4,3),(14,'black','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fluke.png?alt=media&token=8b13615f-7720-4285-9ef3-7c143940a8eb','2016-08-27 01:30:16','2016-08-27 01:30:16',4,1),(15,'black','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Flaser.jpg?alt=media&token=b5c90fe7-c101-425c-b270-09ab2c65c969','2016-08-27 01:33:32','2016-08-27 01:33:32',4,1),(16,'black','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fgit_logo_hover.png?alt=media&token=3a0df460-8159-4c24-a1d1-7542ce1fe461','2016-08-27 01:40:39','2016-08-27 01:40:39',4,1),(17,'black','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Flinkedin_logo_hover.png?alt=media&token=844bb59e-e544-4407-a603-2ec07529e022','2016-08-27 01:43:25','2016-08-27 01:43:25',4,1),(18,'black','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fstock_photo.jpg?alt=media&token=e1c82b4e-f054-4de2-882d-35d4cdcc9e43','2016-08-27 01:44:27','2016-08-27 01:44:27',4,1),(19,'yellow','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fstack_overflow_logo_hover.png?alt=media&token=32701cc2-f9af-4c8c-a06f-2b64840015cf','2016-08-27 01:45:27','2016-08-27 01:45:27',4,7),(20,'black','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fprofile-photo.jpg?alt=media&token=3691332d-95a5-4add-8e48-31cdc15e798d','2016-08-27 01:50:32','2016-08-27 01:50:32',4,1),(21,'green','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fstack_overflow_logo.png?alt=media&token=4a493224-5648-4205-8d78-8455a11d607c','2016-08-27 01:53:35','2016-08-27 01:53:35',4,3),(22,'black','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fprofile-photo.jpg?alt=media&token=5182316f-aa38-4ff8-a6fc-e14ff431db08','2016-08-27 02:01:04','2016-08-27 02:01:04',4,1),(23,'pink','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Flinkedin_logo.png?alt=media&token=17dde20e-cd13-42f0-b042-0aedd07f78b5','2016-08-27 13:33:59','2016-08-27 13:33:59',4,4),(24,'pink','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fiphone.jpg?alt=media&token=1852aca5-bb25-4dfe-b4ec-d02a6a3a440d','2016-08-28 01:51:59','2016-08-28 01:51:59',10,4),(25,'red','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fearphones.jpg?alt=media&token=22225281-009b-46f2-9d09-cbfcc795949f','2016-08-28 01:59:10','2016-08-28 01:59:10',10,6),(26,'red','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fearphones.jpg?alt=media&token=22225281-009b-46f2-9d09-cbfcc795949f','2016-08-28 02:01:10','2016-08-28 02:01:10',10,6),(27,'blue','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fdj-rpg.jpg?alt=media&token=0cb7681c-6f78-45c7-8b6d-0df087f38bb0','2016-08-28 02:02:33','2016-08-28 02:02:33',10,2),(28,'green','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Ftv.jpg?alt=media&token=e149eb13-f489-4efb-96e3-783deeb42caa','2016-08-28 02:05:18','2016-08-28 02:05:18',10,3),(29,'pink','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fiphone.jpg?alt=media&token=1876d29b-adf5-47ba-90d6-617d98bef3fa','2016-08-28 02:08:37','2016-08-28 02:08:37',10,4),(30,'yellow','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fdj-rpg.jpg?alt=media&token=2795d7e2-c92a-4d25-a3e9-975ee147c9f9','2016-08-28 02:09:31','2016-08-28 02:09:31',10,7),(31,'purple','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Ftv.jpg?alt=media&token=10875c2f-637c-4580-9d83-cd2c796e5a11','2016-08-28 18:56:33','2016-08-28 18:56:33',10,5),(32,'black','https://firebasestorage.googleapis.com/v0/b/image-upload-test-a6531.appspot.com/o/images%2Fiphone.jpg?alt=media&token=1c7bb5bd-f777-4a1e-a050-17413a681b14','2016-08-28 19:05:57','2016-08-28 19:05:57',10,1);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sessions`
--

DROP TABLE IF EXISTS `Sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sessions` (
  `sid` varchar(32) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sessions`
--

LOCK TABLES `Sessions` WRITE;
/*!40000 ALTER TABLE `Sessions` DISABLE KEYS */;
INSERT INTO `Sessions` VALUES ('lcMQ4jlfjDArW37j_LGv09m8W4HwfGE2','2016-08-29 19:08:52','{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"passport\":{\"user\":10}}','2016-08-24 00:19:29','2016-08-28 19:08:52');
/*!40000 ALTER TABLE `Sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shirts`
--

DROP TABLE IF EXISTS `Shirts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Shirts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shirts`
--

LOCK TABLES `Shirts` WRITE;
/*!40000 ALTER TABLE `Shirts` DISABLE KEYS */;
INSERT INTO `Shirts` VALUES (1,'black','gs://image-upload-test-a6531.appspot.com/shirts/',9,'2016-08-26 17:14:27','2016-08-26 17:14:27'),(2,'blue','gs://image-upload-test-a6531.appspot.com/shirts/',12,'2016-08-26 17:14:39','2016-08-26 17:14:39'),(3,'green','gs://image-upload-test-a6531.appspot.com/shirts/',12,'2016-08-26 17:14:39','2016-08-26 17:14:39'),(4,'pink','gs://image-upload-test-a6531.appspot.com/shirts/',12,'2016-08-26 17:14:39','2016-08-26 17:14:39'),(5,'purple','gs://image-upload-test-a6531.appspot.com/shirts/',15,'2016-08-26 17:14:39','2016-08-26 17:14:39'),(6,'red','gs://image-upload-test-a6531.appspot.com/shirts/',12,'2016-08-26 17:14:39','2016-08-26 17:14:39'),(7,'yellow','gs://image-upload-test-a6531.appspot.com/shirts/',12,'2016-08-26 17:14:39','2016-08-26 17:14:39');
/*!40000 ALTER TABLE `Shirts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'ryan','jarrell',NULL,NULL,NULL,NULL,'2016-08-23 20:30:33','2016-08-23 20:30:33'),(2,'ryanjarrell','iscool',NULL,NULL,NULL,NULL,'2016-08-23 21:07:05','2016-08-23 21:07:05'),(3,'ryan2','password',NULL,NULL,NULL,'1990-07-10 00:00:00','2016-08-24 21:47:14','2016-08-24 21:47:14'),(4,'paulcastro6','password','paul@hotmail.com','paul',NULL,'2010-07-04 00:00:00','2016-08-25 01:51:50','2016-08-25 01:51:50'),(5,'ryan','jarrell',NULL,NULL,NULL,NULL,'2016-08-24 21:53:18','2016-08-24 21:53:18'),(6,'ryanjarrell','iscool',NULL,NULL,NULL,NULL,'2016-08-24 21:53:18','2016-08-24 21:53:18'),(7,'ryan2','password',NULL,NULL,NULL,'1990-07-10 00:00:00','2016-08-24 21:53:18','2016-08-24 21:53:18'),(8,'paulcastro6','password','paul@hotmail.com','paul',NULL,'2010-07-04 00:00:00','2016-08-25 01:53:50','2016-08-25 01:53:50'),(9,'paulcastro6','password','paul@hotmail.com','paul',NULL,'2010-07-04 00:00:00','2016-08-25 01:54:36','2016-08-25 01:54:36'),(10,'ossers6','password','gabriel@yahoo.com','gabriel','ossers','2000-07-10 00:00:00','2016-08-25 01:55:25','2016-08-25 01:55:25'),(11,'ossers6','password','gabriel@yahoo.com','gabriel','ossers','2000-07-10 00:00:00','2016-08-25 01:57:25','2016-08-25 01:57:25');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-28 15:22:58
