CREATE DATABASE  IF NOT EXISTS `cluster` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cluster`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cluster
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `Name` varchar(30) DEFAULT NULL,
  `Gender` varchar(30) DEFAULT NULL,
  `Birthday` varchar(30) DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `Music` varchar(30) DEFAULT NULL,
  `Movie` varchar(30) DEFAULT NULL,
  `Sport` varchar(30) DEFAULT NULL,
  `Game` varchar(30) DEFAULT NULL,
  `Travel` varchar(30) DEFAULT NULL,
  `Food` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `pno` int(4) NOT NULL AUTO_INCREMENT,
  `PostName` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Subject` varchar(30) DEFAULT NULL,
  `Content` text,
  `Category` varchar(30) DEFAULT NULL,
  `PostDate` date DEFAULT NULL,
  PRIMARY KEY (`pno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skin`
--

DROP TABLE IF EXISTS `skin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skin` (
  `imgno` int(20) NOT NULL AUTO_INCREMENT,
  `file_path` varchar(30) DEFAULT NULL,
  `img_file` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`imgno`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skin`
--

LOCK TABLES `skin` WRITE;
/*!40000 ALTER TABLE `skin` DISABLE KEYS */;
INSERT INTO `skin` VALUES (1,'img/header/accessories/','accessories'),(2,'img/header/accessories/','accessories'),(3,'img/header/accessories/','accessories'),(4,'img/header/accessories/','accessories'),(5,'img/header/accessories/','accessories'),(6,'img/header/accessories/','accessories'),(7,'img/header/accessories/','accessories'),(8,'img/header/accessories/','accessories'),(9,'img/header/backhair/','backhair'),(10,'img/header/backhair/','backhair'),(11,'img/header/backhair/','backhair'),(12,'img/header/backhair/','backhair'),(13,'img/header/backhair/','backhair'),(14,'img/header/backhair/','backhair'),(15,'img/header/backhair/','backhair'),(16,'img/header/backhair/','backhair'),(17,'img/header/backhair/','backhair'),(18,'img/header/backhair/','backhair'),(19,'img/header/backhair/','backhair'),(20,'img/header/backhair/','backhair'),(21,'img/header/backhair/','backhair'),(22,'img/header/backhair/','backhair'),(23,'img/header/backhair/','backhair'),(24,'img/header/backhair/','backhair'),(25,'img/header/backhair/','backhair'),(26,'img/header/backhair/','backhair'),(27,'img/header/backhair/','backhair'),(28,'img/header/backhair/','backhair'),(29,'img/header/backhair/','backhair'),(30,'img/header/backhair/','backhair'),(31,'img/header/backhair/','backhair'),(32,'img/header/backhair/','backhair'),(33,'img/header/backhair/','backhair'),(34,'img/header/backhair/','backhair'),(35,'img/header/backhair/','backhair'),(36,'img/header/backhair/','backhair'),(37,'img/header/backhair/','backhair'),(38,'img/header/backhair/','backhair'),(39,'img/header/backhair/','backhair'),(40,'img/header/backhair/','backhair'),(41,'img/header/backhair/','backhair'),(42,'img/header/backhair/','backhair'),(43,'img/header/backhair/','backhair'),(44,'img/header/backhair/','backhair'),(45,'img/header/clothes/','clothes'),(46,'img/header/clothes/','clothes'),(47,'img/header/clothes/','clothes'),(48,'img/header/clothes/','clothes'),(49,'img/header/clothes/','clothes'),(50,'img/header/clothes/','clothes'),(51,'img/header/clothes/','clothes'),(52,'img/header/clothes/','clothes'),(53,'img/header/clothes/','clothes'),(54,'img/header/clothes/','clothes'),(55,'img/header/clothes/','clothes'),(56,'img/header/clothes/','clothes'),(57,'img/header/clothes/','clothes'),(58,'img/header/clothes/','clothes'),(59,'img/header/clothes/','clothes'),(60,'img/header/clothes/','clothes'),(61,'img/header/clothes/','clothes'),(62,'img/header/clothes/','clothes'),(63,'img/header/clothes/','clothes'),(64,'img/header/clothes/','clothes'),(65,'img/header/eyebrow/','eyebrow'),(66,'img/header/eyebrow/','eyebrow'),(67,'img/header/eyebrow/','eyebrow'),(68,'img/header/eyebrow/','eyebrow'),(69,'img/header/eyes/','eyes'),(70,'img/header/eyes/','eyes'),(71,'img/header/eyes/','eyes'),(72,'img/header/eyes/','eyes'),(73,'img/header/eyes/','eyes'),(74,'img/header/eyes/','eyes'),(75,'img/header/eyes/','eyes'),(76,'img/header/eyes/','eyes'),(77,'img/header/eyes/','eyes'),(78,'img/header/eyes/','eyes'),(79,'img/header/eyes/','eyes'),(80,'img/header/eyes/','eyes'),(81,'img/header/eyes/','eyes'),(82,'img/header/eyes/','eyes'),(83,'img/header/eyes/','eyes'),(84,'img/header/eyes/','eyes'),(85,'img/header/eyes/','eyes'),(86,'img/header/eyes/','eyes'),(87,'img/header/eyes/','eyes'),(88,'img/header/eyes/','eyes'),(89,'img/header/fronthair/','fronthair'),(90,'img/header/fronthair/','fronthair'),(91,'img/header/fronthair/','fronthair'),(92,'img/header/fronthair/','fronthair'),(93,'img/header/fronthair/','fronthair'),(94,'img/header/fronthair/','fronthair'),(95,'img/header/fronthair/','fronthair'),(96,'img/header/fronthair/','fronthair'),(97,'img/header/fronthair/','fronthair'),(98,'img/header/fronthair/','fronthair'),(99,'img/header/fronthair/','fronthair'),(100,'img/header/fronthair/','fronthair'),(101,'img/header/fronthair/','fronthair'),(102,'img/header/fronthair/','fronthair'),(103,'img/header/fronthair/','fronthair'),(104,'img/header/fronthair/','fronthair'),(105,'img/header/fronthair/','fronthair'),(106,'img/header/fronthair/','fronthair'),(107,'img/header/fronthair/','fronthair'),(108,'img/header/fronthair/','fronthair'),(109,'img/header/fronthair/','fronthair'),(110,'img/header/fronthair/','fronthair'),(111,'img/header/fronthair/','fronthair'),(112,'img/header/fronthair/','fronthair'),(113,'img/header/fronthair/','fronthair'),(114,'img/header/fronthair/','fronthair'),(115,'img/header/fronthair/','fronthair'),(116,'img/header/fronthair/','fronthair'),(117,'img/header/fronthair/','fronthair'),(118,'img/header/fronthair/','fronthair'),(119,'img/header/fronthair/','fronthair'),(120,'img/header/fronthair/','fronthair'),(121,'img/header/fronthair/','fronthair'),(122,'img/header/fronthair/','fronthair'),(123,'img/header/fronthair/','fronthair'),(124,'img/header/fronthair/','fronthair'),(125,'img/header/fronthair/','fronthair'),(126,'img/header/fronthair/','fronthair'),(127,'img/header/fronthair/','fronthair'),(128,'img/header/mouth/','mouth'),(129,'img/header/mouth/','mouth'),(130,'img/header/mouth/','mouth'),(131,'img/header/mouth/','mouth'),(132,'img/header/mouth/','mouth'),(133,'img/header/mouth/','mouth'),(134,'img/header/mouth/','mouth'),(135,'img/header/mouth/','mouth'),(136,'img/header/skin/','skin'),(137,'img/header/skin/','skin'),(138,'img/header/skin/','skin'),(139,'img/header/skin/','skin');
/*!40000 ALTER TABLE `skin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-23 23:41:37
