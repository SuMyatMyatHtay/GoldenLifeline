CREATE DATABASE  IF NOT EXISTS `golden_lifeline` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `golden_lifeline`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: golden_lifeline
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_help_request`
--

DROP TABLE IF EXISTS `tbl_help_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_help_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `elderlyName` varchar(45) DEFAULT NULL,
  `requestType` varchar(45) DEFAULT NULL,
  `askTimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `reqStatus` varchar(45) DEFAULT 'Processing',
  `requestNote` varchar(200) DEFAULT NULL,
  `volunteerName` varchar(45) DEFAULT NULL,
  `receivedTimestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `volunteerNote` varchar(200) DEFAULT NULL,
  `adminCheckStatus` varchar(45) DEFAULT 'Processing',
  `checkedBy` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_help_request`
--

LOCK TABLES `tbl_help_request` WRITE;
/*!40000 ALTER TABLE `tbl_help_request` DISABLE KEYS */;
INSERT INTO `tbl_help_request` VALUES (1,'Grammy','Food','2024-02-02 03:17:55','Completed','NoMeat','Test','2024-02-02 03:17:55',NULL,'Completed','SuAdmin23'),(2,'Grammy','Medicine','2024-02-02 03:17:55','Completed','PainKiller','Test','2024-02-02 03:17:55',NULL,'Completed','demo_administrator'),(3,'Grammy','Food','2024-02-15 03:46:06','Completed','I dont like Vegetables','Test','2024-02-15 03:46:06','null','Completed','demo_administrator'),(4,'Ekp','Food','2024-02-15 06:26:54','','hi','demo_user','2024-02-15 06:26:54',NULL,'Processing',NULL),(5,'Ekp','Medicine','2024-02-15 06:37:19','OnGoing','med','smmh','2024-02-15 06:37:19',NULL,'Processing',NULL),(6,'Ekp','Companionship','2024-02-15 06:37:27','Completed','com','smmh','2024-02-15 06:37:27',NULL,'Completed','demo_administrator'),(7,'Ekp','Food','2024-02-15 08:01:34','OnGoing','burmese','smmh','2024-02-15 08:01:34',NULL,'Processing',NULL),(8,'Ekp','Medicine','2024-02-15 08:58:38','OnGoing','request by SU ','smmh','2024-02-15 08:58:38',NULL,'Processing',NULL),(9,'Ekp','Food','2024-02-15 14:29:32','Completed','candy','smmh','2024-02-15 14:29:32',NULL,'Flagged','SuAdmTest11'),(10,'Ekp','Food','2024-02-15 14:33:05','Completed','dlksnfd','smmh','2024-01-15 14:33:05',NULL,'Flagged','SuAdm11'),(11,'Ekp','Companionship','2024-02-16 00:36:07','Completed','CS by Su ','smmh','2023-09-16 00:36:07',NULL,'Completed','SuAdm11'),(13,'Ekp','Medicine','2024-02-16 03:07:31','Completed','sweet',NULL,'2024-02-16 03:07:31',NULL,'Completed','SuAdmTest11'),(14,'Ekp','Food','2024-02-16 03:28:31','OnGoing','Chinese','smmh','2024-02-16 03:28:31',NULL,'Processing',NULL),(15,'Ekp','Food','2024-02-16 04:27:32','OnGoing','I do not want much vegetable and peas','smmh','2024-02-16 04:27:32',NULL,'Processing',NULL),(16,'ElderlySu11','Companionship','2024-02-16 04:34:25','Completed','This is the testing for CA2 demo ','smmh','2024-02-16 04:34:25',NULL,'Completed','SuAdmTest11');
/*!40000 ALTER TABLE `tbl_help_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nodered_people`
--

DROP TABLE IF EXISTS `tbl_nodered_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_nodered_people` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nodered_people`
--

LOCK TABLES `tbl_nodered_people` WRITE;
/*!40000 ALTER TABLE `tbl_nodered_people` DISABLE KEYS */;
INSERT INTO `tbl_nodered_people` VALUES (1,'Obama');
/*!40000 ALTER TABLE `tbl_nodered_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users_login`
--

DROP TABLE IF EXISTS `tbl_users_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users_login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `userType` varchar(45) NOT NULL,
  `postalCode` int DEFAULT NULL,
  `unitNumber` varchar(45) DEFAULT NULL,
  `addressDetail` varchar(200) DEFAULT NULL,
  `nearestMRT` varchar(45) DEFAULT NULL,
  `mobilePhoneNumber` int DEFAULT NULL,
  `verifyAccount` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users_login`
--

LOCK TABLES `tbl_users_login` WRITE;
/*!40000 ALTER TABLE `tbl_users_login` DISABLE KEYS */;
INSERT INTO `tbl_users_login` VALUES (1,'Test','RegisteredUser',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Grammy','Elderly',NULL,NULL,NULL,NULL,NULL,NULL),(11,'SuAdmin','Admin',NULL,NULL,NULL,NULL,NULL,NULL),(12,'SuAdmin23','Admin',129784,'#03-21','School Dorm','Dover',1234567,NULL),(13,'Ekp','Elderly',123456,'#12-15','Jurong East','JurongEast',123456,NULL),(14,'smmh','RegisteredUser',1234,'#04-12','Jurong','JooKoon',34343434,NULL),(15,'SuAdm11','Admin',123456,'#2-11','Block 210, Clementi Road','BoonLay',65871749,1),(16,'SuAdmTest11','Admin',124578,'#23-31','Block 210, Clementi Road','Eunos',87174945,1),(17,'ElderlySu11','Elderly',123456,'#34-32','Block 210, Clementi Road','BuonaVista',87144927,0);
/*!40000 ALTER TABLE `tbl_users_login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-16 23:32:56
