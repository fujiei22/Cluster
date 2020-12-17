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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat` (
  `chatid` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(23) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `chatcontent` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`chatid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'淑芬','27','Hi'),(2,'淑芬','27','我覺得不行'),(3,'隔壁鄰居','27','哈哈我也覺得'),(4,'淑芬','27','現代的藝術家真的生存不易'),(5,'9S','27','真的真的'),(6,'9S','27','大家都用網路看圖了'),(7,'9S','27','都喜歡免費的'),(8,'隔壁鄰居','27','沒辦法網路太方便了'),(9,'隔壁鄰居','27','我已經好久沒看紙本的東西了'),(10,'淑芬','27','而且藝術家好多都是要死後才能紅'),(11,'淑芬','27','生前反而都默默無名'),(12,'9S','27','他們過世的時候肯定都沒有想到'),(13,'隔壁鄰居','27','這樣想想藝術家真的蠻可憐的\r\n'),(14,'9S','27','真的'),(15,'淑芬','8','好懂'),(16,'隔壁鄰居','8','我也是'),(17,'9S','8','為甚麼啊'),(18,'淑芬','8','擔心自己畫太差會不會被笑吧'),(19,'9S','8','喔喔'),(20,'隔壁鄰居','8','我也是擔心這個'),(21,'9S','8','這點還好吧'),(22,'9S','8','很多會畫畫的也都有黑歷史吧'),(23,'淑芬','8','可是我覺得會畫畫天分也很重要吧'),(24,'隔壁鄰居','8','摁摁真的'),(25,'隔壁鄰居','8','我朋友就是剛開始學就畫的有模有樣了'),(26,'淑芬','8','立體感甚麼的也有差'),(27,'淑芬','8','像我連一棵樹都畫的不太像XDD'),(28,'9S','8','對耶可能立體感也有影響'),(29,'隔壁鄰居','8','我立體感也不太行'),(30,'隔壁鄰居','8','以前數學課的立方體看起來都變形哈哈'),(31,'9S','8','立方體真的難畫'),(32,'9S','8','不過我覺得多練習應該還是有差吧'),(33,'淑芬','8','多練習一定有差但我還是覺得天分更重要哈哈'),(34,'9S','22','我最近看了你的名字'),(35,'9S','22','蠻好看的'),(36,'淑芬','22','我只看過電影版耶'),(37,'隔壁鄰居','22','我也只看電影版原來還有小說嗎'),(38,'淑芬','22','電影的場景真的畫的很美'),(39,'隔壁鄰居','22','真的不愧是新海誠'),(40,'隔壁鄰居','22','我最近是看了大港的女兒'),(41,'9S','22','是講甚麼內容啊'),(42,'隔壁鄰居','22','大概就是以日治時代為背景的一個高雄女性的故事'),(43,'隔壁鄰居','22','文筆蠻細膩的'),(44,'9S','22','感覺可以看看'),(45,'淑芬','22','那有人有推薦的推理類型的嗎'),(46,'9S','22','我挺喜歡東野圭吾的作品'),(47,'隔壁鄰居','22','喔喔我也知道他'),(48,'隔壁鄰居','22','我對嫌疑犯X的獻身這本蠻有興趣的'),(49,'9S','22','那本我看過簡直是東野圭吾的最高傑作'),(50,'9S','22','超推'),(51,'淑芬','22','天啊害我好想去看了'),(52,'隔壁鄰居','22','這麼推嗎看來我該下單了'),(53,'9S','22','解憂雜貨店我也蠻推的'),(54,'隔壁鄰居','22','這本我也有看過好看'),(55,'隔壁鄰居','22','那你有看過人魚沉睡的家嗎'),(56,'淑芬','22','我有看過！'),(57,'9S','22','有有有那本可是剛出我就買了哈哈'),(222,'','','');
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friends` (
  `order` int(4) NOT NULL AUTO_INCREMENT,
  `Email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Friends` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`order`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (1,'1111@gmail.com','1122@gmail.com'),(2,'1122@gmail.com','1111@gmail.com'),(3,'1111@gmail.com','5566@gmail.com'),(4,'5566@gmail.com','1111@gmail.com'),(5,'1111@gmail.com','6666@gmail.com'),(6,'6666@gmail.com','1111@gmail.com'),(7,'1177@gmail.com','1188@gmail.com'),(8,'1188@gmail.com','1177@gmail.com'),(9,'1212@gmail.com','2121@gmail.com'),(10,'2121@gmail.com','1212@gmail.com'),(11,'1212@gmail.com','1234@gmail.com'),(12,'1234@gmail.com','1212@gmail.com'),(13,'1234@gmail.com','5678@gmail.com'),(14,'5678@gmail.com','1234@gmail.com'),(15,'1155@gmail.com','4444@gmail.com'),(16,'4444@gmail.com','1155@gmail.com'),(17,'1155@gmail.com','1133@gmail.com'),(18,'1133@gmail.com','1155@gmail.com'),(19,'1144@gmail.com','1133@gmail.com'),(20,'1133@gmail.com','1144@gmail.com'),(21,'1133@gmail.com','1155@gmail.com'),(22,'1155@gmail.com','1133@gmail.com'),(23,'1122@gmail.com','1177@gmail.com'),(24,'1177@gmail.com','1122@gmail.com'),(25,'1122@gmail.com','1133@gmail.com'),(26,'1133@gmail.com','1122@gmail.com'),(27,'1122@gmail.com','1155@gmail.com'),(28,'1155@gmail.com','1122@gmail.com'),(29,'2121@gmail.com','1177@gmail.com'),(30,'1177@gmail.com','2121@gmail.com'),(31,'4444@gmail.com','1111@gmail.com'),(32,'1111@gmail.com','4444@gmail.com'),(33,'1188@gmail.com','4444@gmail.com'),(34,'4444@gmail.com','1188@gmail.com'),(35,'890@g','4444@gmail.com'),(36,'0000@gmail.com','4444@gmail.com'),(37,'0000@gmail.com','1122@gmail.com'),(38,'0000@gmail.com','1177@gmail.com');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `Name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Gender` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Birthday` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Createtime` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `read` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `draw` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `game` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `movie` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sport` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `dance` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `travel` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `shopping` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `class` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Signature` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`Email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('淑芬','female','12/19/2019','0000@gmail.com','0000','2020-12-08','87','100','45','60','10','4','12','3','0','工作狂一個','Hi!大家好，我是來自中原資管系的淑芬！'),('小明','male','12/31/2020','1111@gmail.com','1111','2020-12-08','80','99','47','46','3','14','0','11','0','猜猜我是哪個小明','室內派！討厭陽光簡直是吸血鬼本鬼了哈'),('小美','female','01/04/2021','1122@gmail.com','1122','2020-12-08','98','76','60','51','21','88','12','10','0','嗨我是小美','喜歡跳舞但不喜歡運動，除了跳舞外就是個宅女'),('張飛','male','03/15/2019','1133@gmail.com','1133','2020-12-08','89','84','40','51','14','14','6','17','0','好想中樂透','妥妥的室內派，出門太累了待在家多好！不過最近有點書荒有人有推薦的書嗎？'),('關羽','male','06/21/2018','1144@gmail.com','1144','2020-12-08','100','100','9','1','3','7','8','11','0','文藝系青年','興趣是畫圖跟閱讀有沒有人想跟我一起去美術館或是跟我聊聊喜歡的書的我涉略超廣！'),('劉備','male','03/01/2018','1155@gmail.com','1155','2020-12-08','51','43','91','93','19','11','2','9','1','',''),('曹操','male','10/10/2017','1166@gmail.com','1166','2020-12-08','53','53','84','83','14','11','5','5','1','',''),('2B','female','08/21/2019','1177@gmail.com','1177','2020-12-08','41','55','90','96','16','7','4','17','1','',''),('9S','male','07/29/2020','1188@gmail.com','1188','2020-12-08','100','90','51','43','100','7','4','0','0','閱讀is my life','熱愛閱讀的書蟲，特別喜歡推裡類型的作品有興趣歡迎找我聊聊！平常也很喜歡運動尋找球友中'),('漩渦鳴人','male','12/05/2019','1212@gmail.com','1212','2020-12-08','55','43','100','100','1','10','10','15','1','',''),('志明','male','12/17/2020','1234@gmail.com','1234','2020-12-08','11','7','5','8','94','80','52','48','2','',''),('宇智波佐助','male','01/01/2020','2121@gmail.com','2121','2020-12-08','7','2','17','6','76','76','49','58','2','',''),('小華','male','01/01/2021','2222@gmail.com','2222','2020-12-08','2','9','4','9','87','77','41','40','2','',''),('阿貴','male','11/29/2020','3333@gmail.com','3333','2020-12-08','15','50','5','18','88','96','55','46','2','',''),('小月','female','11/29/2020','3344@gmail.com','3344','2020-12-08','4','90','4','4','84','83','49','41','2','',''),('阿榮','male','01/05/2021','4444@gmail.com','4444','2020-12-08','1','11','18','12','44','42','100','86','3','',''),('阿財','male','11/30/2020','5555@gmail.com','5555','2020-12-08','12','17','7','19','45','49','96','99','3','',''),('小鳳','female','12/01/2020','5566@gmail.com','5566','2020-12-08','11','8','5','13','59','59','77','84','3','',''),('春嬌','female','12/13/2020','5678@gmail.com','5678','2020-12-08','8','4','18','7','44','41','96','86','3','',''),('自強','male','12/02/2020','6666@gmail.com','6666','2020-12-08','15','18','18','2','48','52','91','82','3','',''),('隔壁鄰居','male','12/02/2020','890@gmail.com','890','2020-12-11','1','1','1','1','2','1','100','100','3','我是你隔壁的鄰居','嗨嗨我是隔壁鄰居，喜歡買東西跟出去玩哈哈歡迎揪我出去');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberskin`
--

DROP TABLE IF EXISTS `memberskin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memberskin` (
  `Email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Skin` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Eyes` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Eyebrow` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Mouth` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Fronthair` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Backhair` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Clothes` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Accessories` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`Email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberskin`
--

LOCK TABLES `memberskin` WRITE;
/*!40000 ALTER TABLE `memberskin` DISABLE KEYS */;
INSERT INTO `memberskin` VALUES ('0000@gmail.com','4','1','4','4','29','8','18','7'),('1111@gmail.com','2','18','1','2','16','36','11','1'),('1122@gmail.com','1','3','3','2','4','6','1','6'),('1133@gmail.com','4','19','3','6','39','36','4','4'),('1144@gmail.com','3','15','1','1','19','36','3','5'),('1155@gmail.com','1','7','2','8','33','28','2','8'),('1166@gmail.com','2','17','1','8','17','36','20','1'),('1177@gmail.com','1','1','1','1','14','21','19','6'),('1188@gmail.com','1','12','2','3','21','27','15','4'),('1212@gmail.com','1','17','4','5','11','36','6','8'),('1234@gmail.com','2','1','3','2','3','36','2','1'),('2121@gmail.com','4','20','4','1','21','28','13','2'),('2222@gmail.com','1','20','1','2','9','36','15','8'),('3333@gmail.com','3','3','3','6','2','23','12','1'),('3344@gmail.com','1','1','2','1','29','29','18','8'),('4444@gmail.com','1','18','2','1','13','36','9','8'),('5555@gmail.com','1','16','1','4','23','36','7','6'),('5566@gmail.com','1','5','1','1','10','9','16','3'),('5678@gmail.com','1','1','4','1','30','34','5','8'),('6666@gmail.com','3','15','2','7','37','36','18','1'),('7777@gmail.com','1','1','4','1','5','2','4','7'),('7788@gmail.com','1','1','4','1','5','2','4','7'),('8888@gmail.com','1','1','4','1','5','2','4','7'),('890@g','1','1','4','1','5','2','4','7'),('9900@gmail.com','1','1','4','1','5','2','4','7'),('9999@gmail.com','1','1','4','1','5','4','4','7'),('fujiei2238@gmail.com','1','1','4','1','5','2','4','7');
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
  `PostName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Subject` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `Category` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PostDate` date DEFAULT NULL,
  `class` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pno`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (7,'小明','1111@gmail.com','看過Bob Ross畫畫的都幾歲了?','他樹是怎麼畫的。他輕輕鬆鬆，簡簡單單畫起來就像樹，我怎麼畫都不像阿。有人成功畫過嗎?','繪畫','2020-11-04','0'),(8,'張飛','1133@gmail.com','有人跟我一樣怕畫畫嗎？','會畫畫的是天生還是可以訓練來的？有人跟我一樣怕畫畫的嗎？','繪畫','2020-11-05','0'),(9,'漩渦鳴人','1212@gmail.com','終極風暴4八門遁甲之術','請問這關用八門阿凱打六道班 有個成就是使用特殊支援擊中4次 可是這關不能放支援阿？','遊戲','2020-11-06','1'),(10,'關羽','1144@gmail.com','鬼滅之刃成為台灣影史上最賣座的亞洲電影','鬼滅之刃無限列車篇，周末的票房來到5.37億，正式超車海角七號，成為亞洲電影中  台灣影史上 票房最賣座的一部','電影','2020-11-07','1'),(11,'宇智波佐助','2121@gmail.com','開始運動後生活有什麼改變?','有人可以分享一下，開始運動後生活上的改變嗎?','運動','2020-11-07','2'),(12,'阿貴','3333@gmail.com','推薦一部不能只有我看到的電影','可以推薦一部不能只有你看到的片嗎?','電影','2020-11-08','1'),(13,'自強','6666@gmail.com','多久後才能去日本旅遊？','今年因為疫情完全去不了，各位覺得最快什麼時候才能去日本旅遊?','旅遊','2020-11-09','3'),(14,'春嬌','5678@gmail.com','黑五購物節有什麼好買的？','黑五購物節大家都買什麼，有沒有實用的東西可以分享一下','購物','2020-11-10','3'),(15,'小鳳','5566@gmail.com','有人精通火影忍者終極風暴嗎？','想請問用筆電玩的話，按鍵通常怎麼設定最順手？','遊戲','2020-11-11','1'),(16,'阿財','5555@gmail.com','新球類運動TEQ BALL?','現在在歐洲有一款新式的運動結合了 足球 排球規則 與 桌球場地，有人也知道這個運動嗎?','運動','2020-11-12','2'),(17,'阿榮','4444@gmail.com','台灣旅遊業有得到懲罰嗎？','台灣旅遊業很爛，不是說在台灣旅遊很爛喔!不知道憑什麼跟日本一樣貴。現在台灣疫情穩了 旅遊業是不是又贏了呢？','旅遊','2020-11-13','3'),(18,'小明','1111@gmail.com','國內旅遊比出國貴還該去嗎？','有沒有國內旅遊價格高居不下的八卦，要推銷國內旅遊或觀光，先把價格降低吧','旅遊','2020-11-14','3'),(19,'小美','1122@gmail.com','有沒有PChome 24 購物的八卦？','雙11我買了一包《滿漢大餐》蔥燒牛肉麵，到現在過5天了訂單顯示還沒出貨，快餓死了','購物','2020-11-15','3'),(20,'劉備','1155@gmail.com','中國可以用小畫家畫畫嗎','動物森友會因為自由度太高在中國被下架，同樣自由度高的小畫家會被中國下架嗎?','繪畫','2020-11-16','0'),(21,'2B','1177@gmail.com','Twice新歌I can’t stop me舞蹈','這次回歸的歌很帶感很好聽，但你們不覺得舞蹈滿有問題的嗎？手的動作也太多太雜 有點俗氣','舞蹈','2020-11-17','2'),(22,'志明','1234@gmail.com','大家最近看了什麼好書呢','武漢肺炎的影響，大家出去玩的時間變少了，想必多了很多時間做室內休閒活動，那麼大家看了哪些好書呢','閱讀','2020-11-18','0'),(23,'2B','1177@gmail.com','有閱讀習慣的人多嗎','我每個月會盡量閱讀一兩本書，總覺得看的書越多知道的越少，有閱讀習慣的人多嗎?','閱讀','2020-11-19','0'),(24,'曹操','1166@gmail.com','尼爾的回顧以及繼承','想請問各位師兄，如果想回顧之前故事是否要打完一週目？以及繼承包括晶片嗎？','遊戲','2020-11-20','1'),(25,'小月','3344@gmail.com','韓國流行舞蹈贏台灣幾條街？','在網路上看了一下韓國的舞團，再看台灣的女團 實在不忍睹，到底為什麼造成如此大的差距？','舞蹈','2020-11-21','2'),(26,'阿榮','4444@gmail.com','只能帶一部電影到荒島會選哪部?','如果被公司派去荒島，10年後才能回來，但是可以帶一部電影作品去那邊，請問該帶哪一部電影過去看','電影','2020-11-22','1'),(27,'漩渦鳴人','1212@gmail.com','梵谷來到現代社會畫畫還能賣錢嗎?','梵谷生前畫作沒人欣賞，死後才開始被人捧上天，畫家死後才紅是什麼概念?','繪畫','2020-11-23','0'),(28,'9S','1188@gmail.com','為啥台灣閱讀風氣不高？','看很多調查排名，台灣的閱讀風氣都遠輸亞洲很多國家，歐美就更不用講了，為啥會這樣啊？','閱讀','2020-11-24','0'),(29,'劉備','1155@gmail.com','唸多媒體設計不會畫畫很正常嗎','我有個朋友唸多媒體設計，他說他的強項在特效跟修圖改圖，有掛嗎?','繪畫','2020-11-25','0'),(30,'張飛','1133@gmail.com','怎麼增加閱讀速度','好像是太久沒閱讀了，最近常常文章看一看就飄掉，不然就是看完那些字後沒有進到腦裡，閱讀速度也變超慢，怎麼辦','閱讀','2020-11-26','0'),(31,'阿財','5555@gmail.com','找一部蜘蛛人的電影','如題，記得以前看過有人被蜘蛛咬結果基因變化，會吐絲還會爬牆，有人還記得這部是什麼嗎','電影','2020-11-27','1'),(32,'小華','2222@gmail.com','現在什麼電影值得看?','現在還有什麼片值得看的?該不會都爛片?','電影','2020-11-28','1'),(33,'小華','2222@gmail.com','邊上廁所邊閱讀？','歐陽修說過，要把握三上的時間，馬上，廁上，枕上。馬上可以在公車上看，枕上可以睡覺看，那廁上呢？','閱讀','2020-11-29','0'),(34,'淑芬','0000@gmail.com','想問一下APEX的擊殺分','到底是怎樣算阿 有時候打倒 我也沒倒 然後沒分數== 有人也被吃過分嗎','遊戲','2020-11-30','1'),(35,'關羽','1144@gmail.com','問一下APEX飛行軌跡','這季484只有大師和頂獵的飛行軌跡?如果是我這季可以不用認真上鑽石','遊戲','2020-12-01','1'),(36,'自強','6666@gmail.com','上班族覺得自己的運動量很夠？','身邊朋友覺得上班的時候，做一堆case，跟同事開會吵架，跟老闆拍馬屁，見客戶什麼的運動量很夠。有沒有上班族覺得自己運動很多的？','運動','2020-12-02','2'),(37,'9S','1188@gmail.com','出社會後想跳舞很困難嗎?','最近看了些外國舞蹈覺得很厲害想學習。但已經出社會了，沒辦法像學生一樣一群人一起練舞，想問出社會後想跳舞很困難嗎?','舞蹈','2020-12-03','2'),(38,'宇智波佐助','2121@gmail.com','國內旅遊要花多少錢？','之前才去花蓮玩過，住一晚四人房是一人一千上下，聽說有人住三千，不知道多高級，台灣國內旅遊很貴嗎？','旅遊','2020-12-04','3'),(39,'小鳳','5566@gmail.com','羅志祥跳舞真的很強嗎？','我記得他以前不紅，我只記得他跳舞跳很久，跳到大家都不跳就變亞洲舞王了，他是真的強嗎?','舞蹈','2020-12-05','2'),(40,'淑芬','0000@gmail.com','臺灣最不愛運動的城市是台南？','我看新聞說議員拿這件事情來質詢，我以為應該是天龍人，沒想到居然是台南人','運動','2020-12-06','2'),(41,'曹操','1166@gmail.com','腳踝扭傷是最常見的運動傷害嗎','明明運動員鍛鍊的比平常人多，但頻率好像沒有平常人低，是為什麼?','運動','2020-12-07','2'),(42,'小月','3344@gmail.com','線上購物很卡','那個量販店的線上購物app，一直在轉圈圈，很煩欸，有人也一直轉圈圈嗎','購物','2020-12-08','3');
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
  `file_path` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `img_file` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`imgno`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
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

-- Dump completed on 2020-12-18  2:27:46
