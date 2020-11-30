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
  `Createtime` varchar(30) DEFAULT NULL,
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
-- Table structure for table `memberskin`
--

DROP TABLE IF EXISTS `memberskin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memberskin` (
  `Email` varchar(30) NOT NULL,
  `Skin` varchar(30) DEFAULT NULL,
  `Eyes` varchar(30) DEFAULT NULL,
  `Eyebrow` varchar(30) DEFAULT NULL,
  `Mouth` varchar(30) DEFAULT NULL,
  `Fronthair` varchar(30) DEFAULT NULL,
  `Backhair` varchar(30) DEFAULT NULL,
  `Clothes` varchar(30) DEFAULT NULL,
  `Accessories` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberskin`
--

LOCK TABLES `memberskin` WRITE;
/*!40000 ALTER TABLE `memberskin` DISABLE KEYS */;
/*!40000 ALTER TABLE `memberskin` ENABLE KEYS */;
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
INSERT INTO `skin` VALUES (1,'img/header/accessories/','accessories1'),(2,'img/header/accessories/','accessories2'),(3,'img/header/accessories/','accessories3'),(4,'img/header/accessories/','accessories4'),(5,'img/header/accessories/','accessories5'),(6,'img/header/accessories/','accessories6'),(7,'img/header/accessories/','accessories7'),(8,'img/header/accessories/','accessories8'),(9,'img/header/backhair/','backhair1'),(10,'img/header/backhair/','backhair2'),(11,'img/header/backhair/','backhair3'),(12,'img/header/backhair/','backhair4'),(13,'img/header/backhair/','backhair5'),(14,'img/header/backhair/','backhair6'),(15,'img/header/backhair/','backhair7'),(16,'img/header/backhair/','backhair8'),(17,'img/header/backhair/','backhair9'),(18,'img/header/backhair/','backhair10'),(19,'img/header/backhair/','backhair11'),(20,'img/header/backhair/','backhair12'),(21,'img/header/backhair/','backhair13'),(22,'img/header/backhair/','backhair14'),(23,'img/header/backhair/','backhair15'),(24,'img/header/backhair/','backhair16'),(25,'img/header/backhair/','backhair17'),(26,'img/header/backhair/','backhair18'),(27,'img/header/backhair/','backhair19'),(28,'img/header/backhair/','backhair20'),(29,'img/header/backhair/','backhair21'),(30,'img/header/backhair/','backhair22'),(31,'img/header/backhair/','backhair23'),(32,'img/header/backhair/','backhair24'),(33,'img/header/backhair/','backhair25'),(34,'img/header/backhair/','backhair26'),(35,'img/header/backhair/','backhair27'),(36,'img/header/backhair/','backhair28'),(37,'img/header/backhair/','backhair29'),(38,'img/header/backhair/','backhair30'),(39,'img/header/backhair/','backhair31'),(40,'img/header/backhair/','backhair32'),(41,'img/header/backhair/','backhair33'),(42,'img/header/backhair/','backhair34'),(43,'img/header/backhair/','backhair35'),(44,'img/header/backhair/','backhair36'),(45,'img/header/clothes/','clothes1'),(46,'img/header/clothes/','clothes2'),(47,'img/header/clothes/','clothes3'),(48,'img/header/clothes/','clothes4'),(49,'img/header/clothes/','clothes5'),(50,'img/header/clothes/','clothes6'),(51,'img/header/clothes/','clothes7'),(52,'img/header/clothes/','clothes8'),(53,'img/header/clothes/','clothes9'),(54,'img/header/clothes/','clothes10'),(55,'img/header/clothes/','clothes11'),(56,'img/header/clothes/','clothes12'),(57,'img/header/clothes/','clothes13'),(58,'img/header/clothes/','clothes14'),(59,'img/header/clothes/','clothes15'),(60,'img/header/clothes/','clothes16'),(61,'img/header/clothes/','clothes17'),(62,'img/header/clothes/','clothes18'),(63,'img/header/clothes/','clothes19'),(64,'img/header/clothes/','clothes20'),(65,'img/header/eyebrow/','eyebrow1'),(66,'img/header/eyebrow/','eyebrow2'),(67,'img/header/eyebrow/','eyebrow3'),(68,'img/header/eyebrow/','eyebrow4'),(69,'img/header/eyes/','eyes1'),(70,'img/header/eyes/','eyes2'),(71,'img/header/eyes/','eyes3'),(72,'img/header/eyes/','eyes4'),(73,'img/header/eyes/','eyes5'),(74,'img/header/eyes/','eyes6'),(75,'img/header/eyes/','eyes7'),(76,'img/header/eyes/','eyes8'),(77,'img/header/eyes/','eyes9'),(78,'img/header/eyes/','eyes10'),(79,'img/header/eyes/','eyes11'),(80,'img/header/eyes/','eyes12'),(81,'img/header/eyes/','eyes13'),(82,'img/header/eyes/','eyes14'),(83,'img/header/eyes/','eyes15'),(84,'img/header/eyes/','eyes16'),(85,'img/header/eyes/','eyes17'),(86,'img/header/eyes/','eyes18'),(87,'img/header/eyes/','eyes19'),(88,'img/header/eyes/','eyes20'),(89,'img/header/fronthair/','fronthair1'),(90,'img/header/fronthair/','fronthair2'),(91,'img/header/fronthair/','fronthair3'),(92,'img/header/fronthair/','fronthair4'),(93,'img/header/fronthair/','fronthair5'),(94,'img/header/fronthair/','fronthair6'),(95,'img/header/fronthair/','fronthair7'),(96,'img/header/fronthair/','fronthair8'),(97,'img/header/fronthair/','fronthair9'),(98,'img/header/fronthair/','fronthair10'),(99,'img/header/fronthair/','fronthair11'),(100,'img/header/fronthair/','fronthair12'),(101,'img/header/fronthair/','fronthair13'),(102,'img/header/fronthair/','fronthair14'),(103,'img/header/fronthair/','fronthair15'),(104,'img/header/fronthair/','fronthair16'),(105,'img/header/fronthair/','fronthair17'),(106,'img/header/fronthair/','fronthair18'),(107,'img/header/fronthair/','fronthair19'),(108,'img/header/fronthair/','fronthair20'),(109,'img/header/fronthair/','fronthair21'),(110,'img/header/fronthair/','fronthair22'),(111,'img/header/fronthair/','fronthair23'),(112,'img/header/fronthair/','fronthair24'),(113,'img/header/fronthair/','fronthair25'),(114,'img/header/fronthair/','fronthair26'),(115,'img/header/fronthair/','fronthair27'),(116,'img/header/fronthair/','fronthair28'),(117,'img/header/fronthair/','fronthair29'),(118,'img/header/fronthair/','fronthair30'),(119,'img/header/fronthair/','fronthair31'),(120,'img/header/fronthair/','fronthair32'),(121,'img/header/fronthair/','fronthair33'),(122,'img/header/fronthair/','fronthair34'),(123,'img/header/fronthair/','fronthair35'),(124,'img/header/fronthair/','fronthair36'),(125,'img/header/fronthair/','fronthair37'),(126,'img/header/fronthair/','fronthair38'),(127,'img/header/fronthair/','fronthair39'),(128,'img/header/mouth/','mouth1'),(129,'img/header/mouth/','mouth2'),(130,'img/header/mouth/','mouth3'),(131,'img/header/mouth/','mouth4'),(132,'img/header/mouth/','mouth5'),(133,'img/header/mouth/','mouth6'),(134,'img/header/mouth/','mouth7'),(135,'img/header/mouth/','mouth8'),(136,'img/header/skin/','skin1'),(137,'img/header/skin/','skin2'),(138,'img/header/skin/','skin3'),(139,'img/header/skin/','skin4');
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

-- Dump completed on 2020-11-29 16:59:15
