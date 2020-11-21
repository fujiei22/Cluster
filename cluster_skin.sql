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
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skin`
--

LOCK TABLES `skin` WRITE;
/*!40000 ALTER TABLE `skin` DISABLE KEYS */;
INSERT INTO `skin` VALUES (1,'img\\header\\accessories','accessories01.png'),(2,'img\\header\\accessories','accessories02.png'),(3,'img\\header\\accessories','accessories03.png'),(4,'img\\header\\accessories','accessories04.png'),(5,'img\\header\\accessories','accessories05.png'),(6,'img\\header\\accessories','accessories06.png'),(7,'img\\header\\accessories','accessories07.png'),(8,'img\\header\\accessories','accessories08.png'),(9,'img\\header\\back hair','back hair01.png'),(10,'img\\header\\back hair','back hair02.png'),(11,'img\\header\\back hair','back hair03.png'),(12,'img\\header\\back hair','back hair04.png'),(13,'img\\header\\back hair','back hair05.png'),(14,'img\\header\\back hair','back hair06.png'),(15,'img\\header\\back hair','back hair07.png'),(16,'img\\header\\back hair','back hair08.png'),(17,'img\\header\\back hair','back hair09.png'),(18,'img\\header\\back hair','back hair10.png'),(19,'img\\header\\back hair','back hair11.png'),(20,'img\\header\\back hair','back hair12.png'),(21,'img\\header\\back hair','back hair13.png'),(22,'img\\header\\back hair','back hair14.png'),(23,'img\\header\\back hair','back hair15.png'),(24,'img\\header\\back hair','back hair16.png'),(25,'img\\header\\back hair','back hair17.png'),(26,'img\\header\\back hair','back hair18.png'),(27,'img\\header\\back hair','back hair19.png'),(28,'img\\header\\back hair','back hair20.png'),(29,'img\\header\\back hair','back hair21.png'),(30,'img\\header\\back hair','back hair22.png'),(31,'img\\header\\back hair','back hair23.png'),(32,'img\\header\\back hair','back hair24.png'),(33,'img\\header\\back hair','back hair25.png'),(34,'img\\header\\back hair','back hair26.png'),(35,'img\\header\\back hair','back hair27.png'),(36,'img\\header\\back hair','back hair28.png'),(37,'img\\header\\back hair','back hair29.png'),(38,'img\\header\\back hair','back hair30.png'),(39,'img\\header\\back hair','back hair31.png'),(40,'img\\header\\back hair','back hair32.png'),(41,'img\\header\\back hair','back hair33.png'),(42,'img\\header\\back hair','back hair34.png'),(43,'img\\header\\back hair','back hair35.png'),(44,'img\\header\\back hair','back hair36.png'),(45,'img\\header\\back hair','back hair37.png'),(46,'img\\header\\back hair','back hair38.png'),(47,'img\\header\\back hair','back hair39.png'),(48,'img\\header\\back hair','back hair40.png'),(49,'img\\header\\back hair','back hair41.png'),(50,'img\\header\\back hair','back hair42.png'),(51,'img\\header\\back hair','back hair43.png'),(52,'img\\header\\back hair','back hair44.png'),(53,'img\\header\\back hair','back hair45.png'),(54,'img\\header\\back hair','back hair46.png'),(55,'img\\header\\back hair','back hair47.png'),(56,'img\\header\\back hair','back hair48.png'),(57,'img\\header\\back hair','back hair49.png'),(58,'img\\header\\back hair','back hair50.png'),(59,'img\\header\\back hair','back hair51.png'),(60,'img\\header\\back hair','back hair52.png'),(61,'img\\header\\back hair','back hair53.png'),(62,'img\\header\\back hair','back hair54.png'),(63,'img\\header\\back hair','back hair55.png'),(64,'img\\header\\back hair','back hair56.png'),(65,'img\\header\\clothes','clothes01.png'),(66,'img\\header\\clothes','clothes02.png'),(67,'img\\header\\clothes','clothes03.png'),(68,'img\\header\\clothes','clothes04.png'),(69,'img\\header\\clothes','clothes05.png'),(70,'img\\header\\clothes','clothes06.png'),(71,'img\\header\\clothes','clothes07.png'),(72,'img\\header\\clothes','clothes08.png'),(73,'img\\header\\clothes','clothes09.png'),(74,'img\\header\\clothes','clothes10.png'),(75,'img\\header\\clothes','clothes11.png'),(76,'img\\header\\clothes','clothes12.png'),(77,'img\\header\\clothes','clothes13.png'),(78,'img\\header\\clothes','clothes14.png'),(79,'img\\header\\clothes','clothes15.png'),(80,'img\\header\\clothes','clothes16.png'),(81,'img\\header\\clothes','clothes17.png'),(82,'img\\header\\clothes','clothes18.png'),(83,'img\\header\\clothes','clothes19.png'),(84,'img\\header\\clothes','clothes20.png'),(85,'img\\header\\clothes','clothes21.png'),(86,'img\\header\\clothes','clothes22.png'),(87,'img\\header\\clothes','clothes23.png'),(88,'img\\header\\clothes','clothes24.png'),(89,'img\\header\\clothes','clothes25.png'),(90,'img\\header\\clothes','clothes26.png'),(91,'img\\header\\clothes','clothes27.png'),(92,'img\\header\\clothes','clothes28.png'),(93,'img\\header\\clothes','clothes29.png'),(94,'img\\header\\clothes','clothes30.png'),(95,'img\\header\\clothes','clothes31.png'),(96,'img\\header\\clothes','clothes32.png'),(97,'img\\header\\clothes','clothes33.png'),(98,'img\\header\\eyebrow','eyebrow01.png'),(99,'img\\header\\eyebrow','eyebrow02.png'),(100,'img\\header\\eyebrow','eyebrow03.png'),(101,'img\\header\\eyebrow','eyebrow04.png'),(102,'img\\header\\eyes','eyes01.png'),(103,'img\\header\\eyes','eyes02.png'),(104,'img\\header\\eyes','eyes03.png'),(105,'img\\header\\eyes','eyes04.png'),(106,'img\\header\\eyes','eyes05.png'),(107,'img\\header\\eyes','eyes06.png'),(108,'img\\header\\eyes','eyes07.png'),(109,'img\\header\\eyes','eyes08.png'),(110,'img\\header\\eyes','eyes09.png'),(111,'img\\header\\eyes','eyes10.png'),(112,'img\\header\\eyes','eyes11.png'),(113,'img\\header\\eyes','eyes12.png'),(114,'img\\header\\eyes','eyes13.png'),(115,'img\\header\\eyes','eyes14.png'),(116,'img\\header\\eyes','eyes15.png'),(117,'img\\header\\eyes','eyes16.png'),(118,'img\\header\\eyes','eyes17.png'),(119,'img\\header\\eyes','eyes18.png'),(120,'img\\header\\eyes','eyes19.png'),(121,'img\\header\\eyes','eyes20.png'),(122,'img\\header\\eyes','eyes21.png'),(123,'img\\header\\eyes','eyes22.png'),(124,'img\\header\\eyes','eyes23.png'),(125,'img\\header\\eyes','eyes24.png'),(126,'img\\header\\eyes','eyes25.png'),(127,'img\\header\\eyes','eyes26.png'),(128,'img\\header\\eyes','eyes27.png'),(129,'img\\header\\eyes','eyes28.png'),(130,'img\\header\\eyes','eyes29.png'),(131,'img\\header\\eyes','eyes30.png'),(132,'img\\header\\eyes','eyes31.png'),(133,'img\\header\\eyes','eyes32.png'),(134,'img\\header\\eyes','eyes33.png'),(135,'img\\header\\eyes','eyes34.png'),(136,'img\\header\\eyes','eyes35.png'),(137,'img\\header\\eyes','eyes36.png'),(138,'img\\header\\eyes','eyes37.png'),(139,'img\\header\\eyes','eyes38.png'),(140,'img\\header\\eyes','eyes39.png'),(141,'img\\header\\eyes','eyes40.png'),(142,'img\\header\\eyes','eyes41.png'),(143,'img\\header\\eyes','eyes42.png'),(144,'img\\header\\eyes','eyes43.png'),(145,'img\\header\\front hair','front hair01.png'),(146,'img\\header\\front hair','front hair02.png'),(147,'img\\header\\front hair','front hair03.png'),(148,'img\\header\\front hair','front hair04.png'),(149,'img\\header\\front hair','front hair05.png'),(150,'img\\header\\front hair','front hair06.png'),(151,'img\\header\\front hair','front hair07.png'),(152,'img\\header\\front hair','front hair08.png'),(153,'img\\header\\front hair','front hair09.png'),(154,'img\\header\\front hair','front hair10.png'),(155,'img\\header\\front hair','front hair11.png'),(156,'img\\header\\front hair','front hair12.png'),(157,'img\\header\\front hair','front hair13.png'),(158,'img\\header\\front hair','front hair14.png'),(159,'img\\header\\front hair','front hair15.png'),(160,'img\\header\\front hair','front hair16.png'),(161,'img\\header\\front hair','front hair17.png'),(162,'img\\header\\front hair','front hair18.png'),(163,'img\\header\\front hair','front hair19.png'),(164,'img\\header\\front hair','front hair20.png'),(165,'img\\header\\front hair','front hair21.png'),(166,'img\\header\\front hair','front hair22.png'),(167,'img\\header\\front hair','front hair23.png'),(168,'img\\header\\front hair','front hair24.png'),(169,'img\\header\\front hair','front hair25.png'),(170,'img\\header\\front hair','front hair26.png'),(171,'img\\header\\front hair','front hair27.png'),(172,'img\\header\\front hair','front hair28.png'),(173,'img\\header\\front hair','front hair29.png'),(174,'img\\header\\front hair','front hair30.png'),(175,'img\\header\\front hair','front hair31.png'),(176,'img\\header\\front hair','front hair32.png'),(177,'img\\header\\front hair','front hair33.png'),(178,'img\\header\\front hair','front hair34.png'),(179,'img\\header\\front hair','front hair35.png'),(180,'img\\header\\front hair','front hair36.png'),(181,'img\\header\\front hair','front hair37.png'),(182,'img\\header\\front hair','front hair38.png'),(183,'img\\header\\front hair','front hair39.png'),(184,'img\\header\\front hair','front hair40.png'),(185,'img\\header\\front hair','front hair41.png'),(186,'img\\header\\front hair','front hair42.png'),(187,'img\\header\\front hair','front hair43.png'),(188,'img\\header\\front hair','front hair44.png'),(189,'img\\header\\front hair','front hair45.png'),(190,'img\\header\\front hair','front hair46.png'),(191,'img\\header\\front hair','front hair47.png'),(192,'img\\header\\front hair','front hair48.png'),(193,'img\\header\\front hair','front hair49.png'),(194,'img\\header\\front hair','front hair50.png'),(195,'img\\header\\front hair','front hair51.png'),(196,'img\\header\\front hair','front hair52.png'),(197,'img\\header\\front hair','front hair53.png'),(198,'img\\header\\front hair','front hair54.png'),(199,'img\\header\\front hair','front hair55.png'),(200,'img\\header\\front hair','front hair56.png'),(201,'img\\header\\front hair','front hair57.png'),(202,'img\\header\\front hair','front hair58.png'),(203,'img\\header\\front hair','front hair59.png'),(204,'img\\header\\front hair','front hair60.png'),(205,'img\\header\\front hair','front hair61.png'),(206,'img\\header\\front hair','front hair62.png'),(207,'img\\header\\front hair','front hair63.png'),(208,'img\\header\\front hair','front hair64.png'),(209,'img\\header\\front hair','front hair65.png'),(210,'img\\header\\front hair','front hair66.png'),(211,'img\\header\\mouth','mouth01.png'),(212,'img\\header\\mouth','mouth02.png'),(213,'img\\header\\mouth','mouth03.png'),(214,'img\\header\\mouth','mouth04.png'),(215,'img\\header\\mouth','mouth05.png'),(216,'img\\header\\mouth','mouth06.png'),(217,'img\\header\\mouth','mouth07.png'),(218,'img\\header\\mouth','mouth08.png'),(219,'img\\header\\skin','skin1.png'),(220,'img\\header\\skin','skin2.png'),(221,'img\\header\\skin','skin3.png'),(222,'img\\header\\skin','skin4.png');
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

-- Dump completed on 2020-11-21 16:32:41
