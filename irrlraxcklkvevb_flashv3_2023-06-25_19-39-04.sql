-- MariaDB dump 10.19  Distrib 10.5.21-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: mama
-- ------------------------------------------------------
-- Server version	10.5.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `prefix` varchar(10) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `bnum` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `origin_num` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES ('นาย','วิ่งจับ','ขับฟีโน่หนี','xxx-xxx-xxxx','2023-02-11 07:48:46','2023-02-13 12:32:56','XXXXXXXXXX');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `box_product`
--

DROP TABLE IF EXISTS `box_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `box_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `des` varchar(1000) NOT NULL,
  `img` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0,
  `percent` int(3) NOT NULL DEFAULT 100,
  `salt_prize` varchar(255) NOT NULL DEFAULT 'ไม่ได้รับรางวัล',
  `c_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_product`
--

LOCK TABLES `box_product` WRITE;
/*!40000 ALTER TABLE `box_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `box_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `box_stock`
--

DROP TABLE IF EXISTS `box_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `box_stock` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` int(3) NOT NULL,
  `p_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box_stock`
--

LOCK TABLES `box_stock` WRITE;
/*!40000 ALTER TABLE `box_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `box_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boxlog`
--

DROP TABLE IF EXISTS `boxlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boxlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime(2) NOT NULL,
  `username` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `prize_name` varchar(255) NOT NULL,
  `uid` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2275 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boxlog`
--

LOCK TABLES `boxlog` WRITE;
/*!40000 ALTER TABLE `boxlog` DISABLE KEYS */;
INSERT INTO `boxlog` VALUES (2254,'2023-06-10 21:19:53.00','zixca','ไก่ตันเผ่ามิงค์,ดาบคู่ V.4🌌 ',139,'Time_ShopXAzxfIF:focuskoae2549@422f4d8','1'),(2255,'2023-06-10 21:19:53.00','zixca','ไก่ตันเผ่ามิงค์,ดาบคู่ V.4🌌 ',139,'Time_ShopXhOYYwr:focuskoae2549@f2b4df5','1'),(2256,'2023-06-10 21:30:09.00','zixca','ไก่ตันV.4 ลุ้นขั้้น 1 - 10 [ได้รหัส 100%]',159,'สุ่มไก่ตันV.4 ทักเพจ Random bux มาได้เลยงับ	','1'),(2257,'2023-06-10 21:30:09.00','zixca','ไก่ตันV.4 ลุ้นขั้้น 1 - 10 [ได้รหัส 100%]',159,'สุ่มไก่ตันV.4 ทักเพจ Random bux มาได้เลยงับ	','1'),(2258,'2023-06-10 21:30:09.00','zixca','ไก่ตันV.4 ลุ้นขั้้น 1 - 10 [ได้รหัส 100%]',159,'สุ่มไก่ตันV.4 ทักเพจ Random bux มาได้เลยงับ	','1'),(2259,'2023-06-10 21:30:09.00','zixca','ไก่ตันV.4 ลุ้นขั้้น 1 - 10 [ได้รหัส 100%]',159,'สุ่มไก่ตันV.4 ทักเพจ Random bux มาได้เลยงับ	','1'),(2260,'2023-06-10 21:30:09.00','zixca','ไก่ตันV.4 ลุ้นขั้้น 1 - 10 [ได้รหัส 100%]',159,'สุ่มไก่ตันV.4 ทักเพจ Random bux มาได้เลยงับ	','1'),(2261,'2023-06-10 21:30:09.00','zixca','ไก่ตันV.4 ลุ้นขั้้น 1 - 10 [ได้รหัส 100%]',159,'สุ่มไก่ตันV.4 ทักเพจ Random bux มาได้เลยงับ	','1'),(2262,'2023-06-10 21:30:36.00','zixca','เกลือ',10,'เกลืออีกแย้ว','1'),(2263,'2023-06-17 01:09:51.00','zixca','Token discord 3m+',2,'ติดต่อรับที่เฟส : ชิกกล้า ไม่มีหัวใจ','1'),(2264,'2023-06-17 01:23:43.00','zixca','Token discord 3m+',2,'ติดต่อรับที่เฟส : ชิกกล้า ไม่มีหัวใจ','1'),(2265,'2023-06-17 01:36:04.00','zixca','ตัวอย่างสินค้า',1,'เทส','1'),(2266,'2023-06-17 01:45:52.00','zixca','เทส',1,'เครนะไก่','1'),(2267,'2023-06-17 13:00:16.00','zixca','ตัวอย่างสินค้า',1,'เทส','1'),(2268,'2023-06-17 21:35:17.00','zixca','เทส',1,'ไอ้ไก่','1'),(2269,'2023-06-17 22:30:32.00','zixca','เทส',1,'1','1'),(2270,'2023-06-17 22:30:43.00','zixca','เทส',1,'1','1'),(2271,'2023-06-17 22:38:34.00','zixca','ตัวอย่างสินค้า',1,'เทส','1'),(2272,'2023-06-18 06:32:21.00','zixca','ตัวอย่างสินค้า',1,'เทส','1'),(2273,'2023-06-22 08:52:43.00','zixca','เกลือออ',1,'1','1'),(2274,'2023-06-22 08:52:54.00','zixca','เกลือออ',1,'1','1');
/*!40000 ALTER TABLE `boxlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carousel`
--

DROP TABLE IF EXISTS `carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carousel`
--

LOCK TABLES `carousel` WRITE;
/*!40000 ALTER TABLE `carousel` DISABLE KEYS */;
INSERT INTO `carousel` VALUES (9,'https://cdn.discordapp.com/attachments/1117536152115753042/1117747780392337469/20230519_014829.jpg');
/*!40000 ALTER TABLE `carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) NOT NULL,
  `des` varchar(1000) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crecom`
--

DROP TABLE IF EXISTS `crecom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crecom` (
  `recom_1` int(11) NOT NULL DEFAULT 0,
  `recom_2` int(11) NOT NULL DEFAULT 0,
  `recom_3` int(11) NOT NULL DEFAULT 0,
  `recom_4` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crecom`
--

LOCK TABLES `crecom` WRITE;
/*!40000 ALTER TABLE `crecom` DISABLE KEYS */;
/*!40000 ALTER TABLE `crecom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kbank_trans`
--

DROP TABLE IF EXISTS `kbank_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kbank_trans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref` varchar(255) NOT NULL,
  `date` datetime(2) NOT NULL,
  `sender` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kbank_trans`
--

LOCK TABLES `kbank_trans` WRITE;
/*!40000 ALTER TABLE `kbank_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `kbank_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recom`
--

DROP TABLE IF EXISTS `recom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recom` (
  `recom_1` int(11) NOT NULL DEFAULT 0,
  `recom_2` int(11) NOT NULL DEFAULT 0,
  `recom_3` int(11) NOT NULL DEFAULT 0,
  `recom_4` int(11) NOT NULL DEFAULT 0,
  `recom_5` int(11) NOT NULL DEFAULT 0,
  `recom_6` int(11) NOT NULL DEFAULT 0,
  `recom_7` int(11) NOT NULL DEFAULT 0,
  `recom_8` int(11) NOT NULL DEFAULT 0,
  `recom_9` int(11) NOT NULL DEFAULT 0,
  `recom_10` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recom`
--

LOCK TABLES `recom` WRITE;
/*!40000 ALTER TABLE `recom` DISABLE KEYS */;
INSERT INTO `recom` VALUES (50,50,50,50,50,48,48,48,48,48);
/*!40000 ALTER TABLE `recom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redeem`
--

DROP TABLE IF EXISTS `redeem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redeem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  `max_count` int(11) NOT NULL,
  `prize` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redeem`
--

LOCK TABLES `redeem` WRITE;
/*!40000 ALTER TABLE `redeem` DISABLE KEYS */;
INSERT INTO `redeem` VALUES (6,'zxcx20',1,20,20.00);
/*!40000 ALTER TABLE `redeem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redeem_his`
--

DROP TABLE IF EXISTS `redeem_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redeem_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date` datetime(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redeem_his`
--

LOCK TABLES `redeem_his` WRITE;
/*!40000 ALTER TABLE `redeem_his` DISABLE KEYS */;
INSERT INTO `redeem_his` VALUES (1,'1','karnza','2023-03-15 23:35:36.00'),(2,'1','randombux','2023-04-06 11:24:15.00'),(3,'68','randombux','2023-04-06 12:08:22.00'),(4,'70','randombux','2023-04-06 12:13:28.00'),(5,'73','randombux','2023-04-06 13:30:17.00'),(6,'74','randombux','2023-04-06 13:58:03.00'),(7,'75','randombux','2023-04-06 14:27:41.00'),(8,'76','randombux','2023-04-06 14:57:48.00'),(9,'39','randombux','2023-04-06 15:10:32.00'),(10,'54','randombux','2023-04-06 15:40:49.00'),(11,'28','randombux','2023-04-06 17:24:15.00'),(12,'78','randombux','2023-04-06 17:32:47.00'),(13,'498','kaitunv.4','2023-05-05 14:21:51.00'),(14,'273','kaitunv.4','2023-05-05 15:07:57.00'),(15,'841','kaitunv.4','2023-05-05 15:10:13.00'),(16,'842','kaitunv.4','2023-05-05 15:13:36.00'),(17,'843','kaitunv.4','2023-05-05 15:14:22.00'),(18,'575','NEWWEBSITE','2023-05-06 10:23:57.00'),(19,'880','NEWWEBSITE','2023-05-07 07:02:53.00'),(20,'879','NEWWEBSITE','2023-05-07 07:03:31.00'),(21,'881','NEWWEBSITE','2023-05-07 07:04:22.00'),(22,'1','zxcx20','2023-06-17 22:28:59.00');
/*!40000 ALTER TABLE `redeem_his` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `wallet` varchar(255) NOT NULL,
  `fee` enum('on','off') NOT NULL DEFAULT 'off',
  `name` varchar(255) NOT NULL,
  `ann` varchar(255) NOT NULL,
  `main_color` varchar(255) NOT NULL,
  `sec_color` varchar(255) NOT NULL,
  `discord` varchar(255) NOT NULL,
  `widget_discord` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `date` datetime(2) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `bg2` varchar(255) NOT NULL DEFAULT 'https://somoskudasai.com/wp-content/uploads/2022/11/portada_k-on-16.jpg',
  `bg3` varchar(255) NOT NULL,
  `webhook_dc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES ('0624760173','on','FLASH SHOP','ทักไปที่เพจ','#ffbb00','#ffff00','https://discord.com/','1051524444302090261','facebook.com/profile.php?id=100056793965040','Flash shop','2022-12-25 12:30:39.00','::1','https://cdn.discordapp.com/attachments/1116428668818948198/1121052561693229097/received_943789193356835.jpg','https://cdn.discordapp.com/attachments/1101611438814023742/1120334170170863735/15_20230619144530.png','undefined','https://discord.com/api/webhooks/1117120269295829062/UZzGTrPtFsJTT1ElQqF588AB3bgCI_p1MduyOh2oBUmyKwz1VN-qnvMjhGtbGLtuSoNR');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static`
--

DROP TABLE IF EXISTS `static`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `static` (
  `s_count` int(11) NOT NULL DEFAULT 2575,
  `b_count` int(11) NOT NULL DEFAULT 3525,
  `m_count` int(11) NOT NULL DEFAULT 5468,
  `last_change` datetime(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static`
--

LOCK TABLES `static` WRITE;
/*!40000 ALTER TABLE `static` DISABLE KEYS */;
INSERT INTO `static` VALUES (5,10,1,'2023-04-12 18:03:59.00');
/*!40000 ALTER TABLE `static` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_wheel`
--

DROP TABLE IF EXISTS `stock_wheel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_wheel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `p_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=370 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_wheel`
--

LOCK TABLES `stock_wheel` WRITE;
/*!40000 ALTER TABLE `stock_wheel` DISABLE KEYS */;
INSERT INTO `stock_wheel` VALUES (4,'1','1'),(5,'1','1'),(6,'1','2'),(7,'1','2'),(8,'1','2'),(9,'1','2'),(41,'เกลือ','3'),(42,'เกลืออีกแย้ว','3'),(43,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(44,'เกลืออีกแล้วง่ะ','3'),(45,'เกลือ~ ','3'),(46,'เกลือ','3'),(47,'เกลืออีกแย้ว','3'),(48,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(49,'เกลืออีกแล้วง่ะ','3'),(50,'เกลือ~ ','3'),(51,'เกลือ','3'),(52,'เกลืออีกแย้ว','3'),(53,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(54,'เกลืออีกแล้วง่ะ','3'),(55,'เกลือ~ ','3'),(56,'เกลือ','3'),(57,'เกลืออีกแย้ว','3'),(58,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(59,'เกลืออีกแล้วง่ะ','3'),(60,'เกลือ~ ','3'),(61,'เกลือ','3'),(62,'เกลืออีกแย้ว','3'),(63,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(64,'เกลืออีกแล้วง่ะ','3'),(65,'เกลือ~ ','3'),(66,'เกลือ','3'),(67,'เกลืออีกแย้ว','3'),(68,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(69,'เกลืออีกแล้วง่ะ','3'),(70,'เกลือ~ ','3'),(71,'เกลือ','3'),(72,'เกลืออีกแย้ว','3'),(73,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(74,'เกลืออีกแล้วง่ะ','3'),(75,'เกลือ~ ','3'),(76,'เกลือ','3'),(77,'เกลืออีกแย้ว','3'),(78,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(79,'เกลืออีกแล้วง่ะ','3'),(80,'เกลือ~ ','3'),(81,'เกลือ','3'),(82,'เกลืออีกแย้ว','3'),(83,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(84,'เกลืออีกแล้วง่ะ','3'),(85,'เกลือ~ ','3'),(86,'เกลือ','3'),(87,'เกลืออีกแย้ว','3'),(88,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(89,'เกลืออีกแล้วง่ะ','3'),(90,'เกลือ~ ','3'),(91,'เกลือ','3'),(92,'เกลืออีกแย้ว','3'),(93,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(94,'เกลืออีกแล้วง่ะ','3'),(95,'เกลือ~ ','3'),(96,'เกลือ','3'),(97,'เกลืออีกแย้ว','3'),(98,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(99,'เกลืออีกแล้วง่ะ','3'),(100,'เกลือ~ ','3'),(101,'เกลือ','3'),(102,'เกลืออีกแย้ว','3'),(103,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(104,'เกลืออีกแล้วง่ะ','3'),(105,'เกลือ~ ','3'),(106,'เกลือ','3'),(107,'เกลืออีกแย้ว','3'),(108,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(109,'เกลืออีกแล้วง่ะ','3'),(110,'เกลือ~ ','3'),(111,'เกลือ','3'),(112,'เกลืออีกแย้ว','3'),(113,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(114,'เกลืออีกแล้วง่ะ','3'),(115,'เกลือ~ ','3'),(116,'เกลือ','3'),(117,'เกลืออีกแย้ว','3'),(118,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(119,'เกลืออีกแล้วง่ะ','3'),(120,'เกลือ~ ','3'),(121,'เกลือ','3'),(122,'เกลืออีกแย้ว','3'),(123,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(124,'เกลืออีกแล้วง่ะ','3'),(125,'เกลือ~ ','3'),(126,'เกลือ','3'),(127,'เกลืออีกแย้ว','3'),(128,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(129,'เกลืออีกแล้วง่ะ','3'),(130,'เกลือ~ ','3'),(131,'เกลือ','3'),(132,'เกลืออีกแย้ว','3'),(133,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(134,'เกลืออีกแล้วง่ะ','3'),(135,'เกลือ~ ','3'),(136,'เกลือ','3'),(137,'เกลืออีกแย้ว','3'),(138,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(139,'เกลืออีกแล้วง่ะ','3'),(140,'เกลือ~ ','3'),(141,'เกลือ','3'),(142,'เกลืออีกแย้ว','3'),(143,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(144,'เกลืออีกแล้วง่ะ','3'),(145,'เกลือ~ ','3'),(146,'เกลือ','3'),(147,'เกลืออีกแย้ว','3'),(148,'ขอบคุณสำหรับค่าขนมแมวเลีย','3'),(149,'เกลืออีกแล้วง่ะ','3'),(178,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(179,'เกลืออีกแล้วง่ะ','5'),(180,'เกลือ~ ','5'),(181,'เกลือ','5'),(182,'เกลืออีกแย้ว','5'),(183,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(184,'เกลืออีกแล้วง่ะ','5'),(185,'เกลือ~ ','5'),(186,'เกลือ','5'),(187,'เกลืออีกแย้ว','5'),(188,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(189,'เกลืออีกแล้วง่ะ','5'),(190,'เกลือ~ ','5'),(191,'เกลือ','5'),(192,'เกลืออีกแย้ว','5'),(193,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(194,'เกลืออีกแล้วง่ะ','5'),(195,'เกลือ~ ','5'),(196,'เกลือ','5'),(197,'เกลืออีกแย้ว','5'),(198,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(199,'เกลืออีกแล้วง่ะ','5'),(200,'เกลือ~ ','5'),(201,'เกลือ','5'),(202,'เกลืออีกแย้ว','5'),(203,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(204,'เกลืออีกแล้วง่ะ','5'),(205,'เกลือ~ ','5'),(206,'เกลือ','5'),(207,'เกลืออีกแย้ว','5'),(208,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(209,'เกลืออีกแล้วง่ะ','5'),(210,'เกลือ~ ','5'),(211,'เกลือ','5'),(212,'เกลืออีกแย้ว','5'),(213,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(214,'เกลืออีกแล้วง่ะ','5'),(215,'เกลือ~ ','5'),(216,'เกลือ','5'),(217,'เกลืออีกแย้ว','5'),(218,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(219,'เกลืออีกแล้วง่ะ','5'),(220,'เกลือ~ ','5'),(221,'เกลือ','5'),(222,'เกลืออีกแย้ว','5'),(223,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(224,'เกลืออีกแล้วง่ะ','5'),(225,'เกลือ~ ','5'),(226,'เกลือ','5'),(227,'เกลืออีกแย้ว','5'),(228,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(229,'เกลืออีกแล้วง่ะ','5'),(230,'เกลือ~ ','5'),(231,'เกลือ','5'),(232,'เกลืออีกแย้ว','5'),(233,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(234,'เกลืออีกแล้วง่ะ','5'),(235,'เกลือ~ ','5'),(236,'เกลือ','5'),(237,'เกลืออีกแย้ว','5'),(238,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(239,'เกลืออีกแล้วง่ะ','5'),(240,'เกลือ~ ','5'),(241,'เกลือ','5'),(242,'เกลืออีกแย้ว','5'),(243,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(244,'เกลืออีกแล้วง่ะ','5'),(245,'เกลือ~ ','5'),(246,'เกลือ','5'),(247,'เกลืออีกแย้ว','5'),(248,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(249,'เกลืออีกแล้วง่ะ','5'),(250,'เกลือ~ ','5'),(251,'เกลือ','5'),(252,'เกลืออีกแย้ว','5'),(253,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(254,'เกลืออีกแล้วง่ะ','5'),(255,'เกลือ~ ','5'),(256,'เกลือ','5'),(257,'เกลืออีกแย้ว','5'),(258,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(259,'เกลืออีกแล้วง่ะ','5'),(260,'เกลือ~ ','5'),(261,'เกลือ','5'),(262,'เกลืออีกแย้ว','5'),(263,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(264,'เกลืออีกแล้วง่ะ','5'),(265,'เกลือ~ ','5'),(266,'เกลือ','5'),(267,'เกลืออีกแย้ว','5'),(268,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(269,'เกลืออีกแล้วง่ะ','5'),(270,'เกลือ~ ','5'),(271,'เกลือ','5'),(272,'เกลืออีกแย้ว','5'),(273,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(274,'เกลืออีกแล้วง่ะ','5'),(275,'เกลือ~ ','5'),(276,'เกลือ','5'),(277,'เกลืออีกแย้ว','5'),(278,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(279,'เกลืออีกแล้วง่ะ','5'),(280,'เกลือ~ ','5'),(281,'เกลือ','5'),(282,'เกลืออีกแย้ว','5'),(283,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(284,'เกลืออีกแล้วง่ะ','5'),(285,'เกลือ~ ','5'),(286,'เกลือ','5'),(287,'เกลืออีกแย้ว','5'),(288,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(289,'เกลืออีกแล้วง่ะ','5'),(290,'เกลือ~ ','5'),(291,'เกลือ','5'),(292,'เกลืออีกแย้ว','5'),(293,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(294,'เกลืออีกแล้วง่ะ','5'),(295,'เกลือ~ ','5'),(296,'เกลือ','5'),(297,'เกลืออีกแย้ว','5'),(298,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(299,'เกลืออีกแล้วง่ะ','5'),(300,'เกลือ~ ','5'),(301,'เกลือ','5'),(302,'เกลืออีกแย้ว','5'),(303,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(304,'เกลืออีกแล้วง่ะ','5'),(305,'เกลือ~ ','5'),(306,'เกลือ','5'),(307,'เกลืออีกแย้ว','5'),(308,'ขอบคุณสำหรับค่าขนมแมวเลีย','5'),(309,'เกลืออีกแล้วง่ะ','5'),(311,'เงิน 20 บาท💰','4'),(312,'เงิน 20 บาท💰','4'),(313,'เงิน 20 บาท💰','4'),(314,'เงิน 20 บาท💰','4'),(315,'เงิน 20 บาท💰','4'),(316,'เงิน 20 บาท💰','4'),(317,'เงิน 20 บาท💰','4'),(318,'เงิน 20 บาท💰','4'),(319,'เงิน 20 บาท💰','4'),(320,'เงิน 20 บาท💰','4'),(321,'เงิน 20 บาท💰','4'),(322,'เงิน 20 บาท💰','4'),(323,'เงิน 20 บาท💰','4'),(324,'เงิน 20 บาท💰','4'),(325,'เงิน 20 บาท💰','4'),(326,'เงิน 20 บาท💰','4'),(327,'เงิน 20 บาท💰','4'),(338,'เงิน 30 บาท💰','6'),(339,'เงิน 30 บาท💰','6'),(340,'เงิน 30 บาท💰','6'),(341,'เงิน 30 บาท💰','6'),(342,'เงิน 30 บาท💰','6'),(343,'เงิน 30 บาท💰','7'),(344,'เงิน 30 บาท💰','7'),(345,'เงิน 30 บาท💰','7'),(346,'เงิน 30 บาท💰','7'),(347,'เงิน 30 บาท💰','7'),(348,'เงิน 30 บาท💰','7'),(349,'เงิน 30 บาท💰','7'),(350,'เงิน 30 บาท💰','7'),(351,'เงิน 30 บาท💰','7'),(352,'เงิน 30 บาท💰','7'),(353,'เงิน 30 บาท💰','7'),(354,'เงิน 30 บาท💰','7'),(357,'ควยยยย','9'),(358,'ควยยย','9'),(359,'ควยย','9'),(362,'1','8'),(363,'1','8'),(366,'1','15'),(367,'1','16'),(368,'1','14'),(369,'1','13');
/*!40000 ALTER TABLE `stock_wheel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topup_his`
--

DROP TABLE IF EXISTS `topup_his`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topup_his` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL,
  `amount` int(20) NOT NULL,
  `date` datetime NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topup_his`
--

LOCK TABLES `topup_his` WRITE;
/*!40000 ALTER TABLE `topup_his` DISABLE KEYS */;
INSERT INTO `topup_his` VALUES (1,'https://gift.truemoney.com/campaign/?v=dP1hjoThzajw03jZff',10,'2023-04-05 17:01:12',11,'karnzac'),(2,'https://gift.truemoney.com/campaign/?v=ZAldWD3mHscmdJ9kbp',200,'2023-04-06 15:13:47',39,'Mewdoss'),(3,'https://gift.truemoney.com/campaign/?v=ae2mpAadX3TnQbmabl',200,'2023-04-06 18:51:26',78,'ugjljhcf'),(4,'https://gift.truemoney.com/campaign/?v=Pp5Nk1OFKbVnjrfpmf',259,'2023-04-15 10:48:11',98,'jojo123gg'),(5,'https://gift.truemoney.com/campaign/?v=LdI4gfmEeTffk6P3ci',250,'2023-04-16 15:04:48',140,'KuBodki'),(6,'https://gift.truemoney.com/campaign/?v=U4JxhmLf01n2j3oe1e',30,'2023-04-16 15:05:29',140,'KuBodki'),(7,'https://gift.truemoney.com/campaign/?v=oUeaeCdY0JEZ2ecKeg',15,'2023-04-16 19:57:13',146,'Kingoihj'),(8,'https://gift.truemoney.com/campaign/?v=LccbDUVTYolb1kkqdj',15,'2023-04-16 19:58:01',146,'Kingoihj'),(9,'https://gift.truemoney.com/campaign/?v=qtqLlheoTjQlzughcp',15,'2023-04-16 20:34:21',147,'MMMK'),(10,'https://gift.truemoney.com/campaign/?v=jmMogMbNlS1vm2Wjek',16,'2023-04-17 17:05:43',158,'Jat'),(11,'https://gift.truemoney.com/campaign/?v=1OhnhdDoUCkrYnfhec',107,'2023-04-18 03:40:56',143,'POLAR'),(12,'https://gift.truemoney.com/campaign/?v=M1zjk1offTftqkpk1g',36,'2023-04-18 15:59:55',140,'KuBodki'),(13,'https://gift.truemoney.com/campaign/?v=bbIsXjYXboadJ1kQff',100,'2023-04-18 16:03:22',140,'KuBodki'),(14,'https://gift.truemoney.com/campaign/?v=26mMD5cBgLN1lKgi1o',50,'2023-04-18 16:09:05',140,'KuBodki'),(15,'https://gift.truemoney.com/campaign/?v=Jhq1hHpnFue1Tnkekl',78,'2023-04-18 16:20:21',140,'KuBodki'),(16,'https://gift.truemoney.com/campaign/?v=jgqa9XdzBljlCLmQdb',50,'2023-04-18 23:40:42',207,'fewfah'),(17,'https://gift.truemoney.com/campaign/?v=rjWdepNYUeM5noembf',15,'2023-04-19 01:38:35',212,'Tonnum'),(18,'https://gift.truemoney.com/campaign/?v=dEfLkfKMq2mApqzche',10,'2023-04-19 03:05:48',215,'UIOP66oi'),(19,'https://gift.truemoney.com/campaign/?v=JPwkivXho1hTXkdMbe',10,'2023-04-19 03:14:12',215,'UIOP66oi'),(20,'https://gift.truemoney.com/campaign/?v=7b1dZ6DyoJB6i8bcmc',16,'2023-04-19 11:46:16',225,'waranon'),(21,'https://gift.truemoney.com/campaign/?v=dnOb7aaKXL4evng4ho',15,'2023-04-19 15:06:48',229,'August'),(22,'https://gift.truemoney.com/campaign/?v=bceakbHdDYkFozc2gd',10,'2023-04-19 15:07:16',229,'August'),(23,'https://gift.truemoney.com/campaign/?v=fpcxgcaMm1cZ9esnhn',11,'2023-04-19 15:08:24',229,'August'),(24,'https://gift.truemoney.com/campaign/?v=lbbV8alm6fDcfsBjij',10,'2023-04-19 22:17:47',255,'098098'),(25,'https://gift.truemoney.com/campaign/?v=gTJIes7iknjhcnXVhl',10,'2023-04-20 09:29:08',269,'Yo'),(26,'https://gift.truemoney.com/campaign/?v=g0okn4itimvCT18gae',10,'2023-04-20 09:39:22',269,'Yo'),(27,'https://gift.truemoney.com/campaign/?v=9bYdJ9mC6z8Lphb1og',10,'2023-04-20 15:05:59',277,'BF1044'),(28,'https://gift.truemoney.com/campaign/?v=6DqrXtgskpjm1Tjlgj',50,'2023-04-21 12:49:50',321,'Oklove'),(29,'https://gift.truemoney.com/campaign/?v=TO2j9vkpThql8neld1',250,'2023-04-21 13:26:12',330,'odeenza'),(30,'https://gift.truemoney.com/campaign/?v=MbhdacbgoLD7VI2fdp',15,'2023-04-21 13:29:13',332,'112233'),(31,'https://gift.truemoney.com/campaign/?v=SbJhVS9m1E81i10jbd',52,'2023-04-21 14:52:14',321,'Oklove'),(32,'https://gift.truemoney.com/campaign/?v=cOdDnrgmeTK4oh1k1e',10,'2023-04-21 15:11:33',321,'Oklove'),(33,'https://gift.truemoney.com/campaign/?v=Le71SGa7lonkYnyeid',10,'2023-04-21 15:21:12',321,'Oklove'),(34,'https://gift.truemoney.com/campaign/?v=jrsd9dhipwpcjfvfgg',10,'2023-04-21 16:58:24',347,'Kfbidbshsvk'),(35,'https://gift.truemoney.com/campaign/?v=faN3bfkp9oRDO8vegh',15,'2023-04-21 17:05:51',349,'Thagoon'),(36,'https://gift.truemoney.com/campaign/?v=a1Offad3eUj8jBRhgb',15,'2023-04-21 19:16:30',354,'sofwal'),(37,'https://gift.truemoney.com/campaign/?v=ZblbhTCGrU9mdcDIhn',11,'2023-04-21 19:47:14',356,'qqwwqq'),(38,'https://gift.truemoney.com/campaign/?v=oXuhMyDpoGPlDWlacd',15,'2023-04-21 20:15:34',360,'Newna132'),(39,'https://gift.truemoney.com/campaign/?v=pd5hg0JmppQrm8Hbji',10,'2023-04-21 21:40:53',367,'Rob'),(40,'https://gift.truemoney.com/campaign/?v=abBwnWiwo1VLl1ehbi',15,'2023-04-21 23:32:48',376,'Deauza '),(41,'https://gift.truemoney.com/campaign/?v=0VcgjmfDKhdtcmSnjk',10,'2023-04-21 23:46:17',378,'Fahat '),(42,'https://gift.truemoney.com/campaign/?v=n5lCkef477kpVg9wea',99,'2023-04-22 11:19:33',380,'Isekai'),(43,'https://gift.truemoney.com/campaign/?v=DlpRjHgFqLnpPgPkhb',15,'2023-04-23 00:35:19',385,'StarrySkyX'),(44,'https://gift.truemoney.com/campaign/?v=aNavEfjcLQhRQ0kohp',10,'2023-04-23 03:15:50',386,'Kkon'),(45,'https://gift.truemoney.com/campaign/?v=yCtjnkb5rl0l1de4bo',40,'2023-04-23 16:11:00',390,'Qwertt'),(46,'https://gift.truemoney.com/campaign/?v=Qoi1Ifdp6f5Gjjxing',20,'2023-04-23 16:25:37',391,'PPGODPP'),(47,'https://gift.truemoney.com/campaign/?v=njn7v7KiHaD2noobhp',30,'2023-04-23 17:47:54',398,'Bas101'),(48,'https://gift.truemoney.com/campaign/?v=f0aWpffeSJYUcwWchh',41,'2023-04-23 19:05:29',401,'phum1233'),(49,'https://gift.truemoney.com/campaign/?v=5b8ctmi6loGbP9g7dj',15,'2023-04-23 20:03:41',403,'Buntita12340'),(50,'https://gift.truemoney.com/campaign/?v=UnYNegb1b0HoUlezdg',15,'2023-04-23 22:48:28',413,'kalka'),(51,'https://gift.truemoney.com/campaign/?v=mOzZfm4VN1kjml4jel',30,'2023-04-23 23:32:59',414,'momon2515'),(52,'https://gift.truemoney.com/campaign/?v=HfXhehiepdpkq0vjbi',40,'2023-04-24 17:25:11',429,'BigSeeSiriraj'),(53,'https://gift.truemoney.com/campaign/?v=JhkwKz3hFUb3cGmZbo',40,'2023-04-24 18:20:15',432,'utopia9990'),(54,'https://gift.truemoney.com/campaign/?v=5OkbQof1gakjcAcQbi',15,'2023-04-24 21:47:20',447,'sonic5561afk'),(55,'https://gift.truemoney.com/campaign/?v=OkuZDoMX0HfnNnlNkb',15,'2023-04-24 22:11:31',448,'0653943057'),(56,'https://gift.truemoney.com/campaign/?v=eEvAfpRf2wllhPpkfm',120,'2023-04-24 22:13:03',444,'Thitiwut477'),(57,'https://gift.truemoney.com/campaign/?v=ac1hIFScexllsgigkd',30,'2023-04-24 23:27:13',444,'Thitiwut477'),(58,'https://gift.truemoney.com/campaign/?v=cec4aPpKBlmpkWhedj',22,'2023-04-25 07:17:34',398,'Bas101'),(59,'https://gift.truemoney.com/campaign/?v=PeCbnzYAmNJ1mienhd',40,'2023-04-25 12:44:35',461,'Paphawin '),(60,'https://gift.truemoney.com/campaign/?v=VHIPoF4jipEjHoindh',32,'2023-04-25 20:00:21',414,'momon2515'),(61,'https://gift.truemoney.com/campaign/?v=agaXc4e2UHoJ3Cbgp1',20,'2023-04-25 20:07:27',414,'momon2515'),(62,'https://gift.truemoney.com/campaign/?v=uKgwFWlFAwclnkTIbm',36,'2023-04-26 03:16:55',468,'popza556'),(63,'https://gift.truemoney.com/campaign/?v=lH9ozyUjcdFjqfoea1',50,'2023-04-26 03:24:08',468,'popza556'),(64,'https://gift.truemoney.com/campaign/?v=fboIq1TMvmmtb4Zhka',15,'2023-04-26 04:40:37',73,'Gotatle'),(65,'https://gift.truemoney.com/campaign/?v=1f1TTlb1e8blEekhgc',100,'2023-04-27 03:28:50',258,'Ad10'),(66,'https://gift.truemoney.com/campaign/?v=kbhj8c6ae6bd40mHgf',15,'2023-04-27 06:47:25',490,'Balgame4399'),(67,'https://gift.truemoney.com/campaign/?v=c7k90ml75fjXmzeIja',10,'2023-04-27 08:09:55',494,'Yuiop'),(68,'https://gift.truemoney.com/campaign/?v=wr5VAhcncfogWnjYck',10,'2023-04-27 09:09:08',498,'BOP'),(69,'https://gift.truemoney.com/campaign/?v=jDlIiag4lgzfBvkEjc',30,'2023-04-27 09:11:23',477,'Nirawit'),(70,'https://gift.truemoney.com/campaign/?v=E1psCdghF4Zhb6lhom',10,'2023-04-27 09:32:40',499,'Sorasak 1'),(71,'https://gift.truemoney.com/campaign/?v=KbbinrzFCoxcrT1jlj',10,'2023-04-27 10:20:24',504,'Ydjskxjhs'),(72,'https://gift.truemoney.com/campaign/?v=3hc1ymTc6T8pbRWmil',85,'2023-04-27 12:47:39',508,'Nongp'),(73,'https://gift.truemoney.com/campaign/?v=G6Hq9soAgUliHnnXik',81,'2023-04-27 20:54:52',398,'Bas101'),(74,'https://gift.truemoney.com/campaign/?v=AreymfchuRlh1Yjihg',40,'2023-04-27 20:57:22',398,'Bas101'),(75,'https://gift.truemoney.com/campaign/?v=DE1l8IcgmrD1hQBe1i',10,'2023-04-27 22:59:22',516,'KLEIN23'),(76,'https://gift.truemoney.com/campaign/?v=lu1lHFgrmS9cQfacgo',10,'2023-04-27 23:08:52',518,'Jack 999'),(77,'https://gift.truemoney.com/campaign/?v=kmNxb0VeOKk5aeSljh',50,'2023-04-27 23:10:40',518,'Jack 999'),(78,'https://gift.truemoney.com/campaign/?v=ebX2fbaJgJOmxYakji',30,'2023-04-28 00:35:31',516,'KLEIN23'),(79,'https://gift.truemoney.com/campaign/?v=qju5eb5hOlYo2yemjf',10,'2023-04-28 00:36:53',516,'KLEIN23'),(80,'https://gift.truemoney.com/campaign/?v=1CIlhlggdpZ6vKehja',10,'2023-04-28 00:45:27',524,'Teiu'),(81,'https://gift.truemoney.com/campaign/?v=oh1HjfW1CYbD7Gkifo',12,'2023-04-28 08:02:34',535,'Ryoko'),(82,'https://gift.truemoney.com/campaign/?v=147dhJklQ9dgNf5Yee',40,'2023-04-28 08:09:05',378,'Fahat '),(83,'https://gift.truemoney.com/campaign/?v=jxaYm5hBypHeRcnpbo',14,'2023-04-28 09:28:21',536,'Yoolp'),(84,'https://gift.truemoney.com/campaign/?v=bdBfeeD8akY4U6SZgi',10,'2023-04-28 12:12:30',544,'xeonshop9x9_9936'),(85,'https://gift.truemoney.com/campaign/?v=dckebSDwpjjI4xCge1',160,'2023-04-28 13:16:02',546,'Nakanomiku3 '),(86,'https://gift.truemoney.com/campaign/?v=fyczSkdbvxc5ZTago1',40,'2023-04-28 13:29:12',550,'Gvvdvsjh'),(87,'https://gift.truemoney.com/campaign/?v=jAi1tlDkPjfaJWbGdh',40,'2023-04-28 19:36:36',566,'AUNT'),(88,'https://gift.truemoney.com/campaign/?v=bjlGfYbvspaBmjMmbk',16,'2023-04-28 22:00:17',567,'rarin'),(89,'https://gift.truemoney.com/campaign/?v=bkcdnnjWGVfJtc76ia',10,'2023-04-28 22:09:32',567,'rarin'),(90,'https://gift.truemoney.com/campaign/?v=MDm0N2pcgFWimHpcel',16,'2023-04-28 22:45:00',568,'Jess1234'),(91,'https://gift.truemoney.com/campaign/?v=VhpJmo1iiGEz4bnNdf',50,'2023-04-29 08:40:57',572,'Pang'),(92,'https://gift.truemoney.com/campaign/?v=hb1CSbCfgrVdMdpafo',50,'2023-04-29 10:40:47',572,'Pang'),(93,'https://gift.truemoney.com/campaign/?v=aZpC1WREK1ppapieml',50,'2023-04-29 11:08:46',572,'Pang'),(94,'https://gift.truemoney.com/campaign/?v=oogcEdigi66l5adYda',10,'2023-04-29 19:10:54',578,'Soodkdk'),(95,'https://gift.truemoney.com/campaign/?v=pzSH6l1rjaWl5zBfei',50,'2023-04-29 22:22:25',477,'Nirawit'),(96,'https://gift.truemoney.com/campaign/?v=Rm6i12QkegknNF8ihd',10,'2023-04-29 22:29:17',477,'Nirawit'),(97,'https://gift.truemoney.com/campaign/?v=wp4UUTnPTc6tombpig',10,'2023-04-30 12:19:30',582,'Djcss'),(98,'https://gift.truemoney.com/campaign/?v=NcjXCgg7To7oGpfNbb',11,'2023-04-30 12:31:11',583,'The55'),(99,'https://gift.truemoney.com/campaign/?v=e2cDjIkPDnaO0niJfg',19,'2023-04-30 13:02:09',586,'Ggfijw'),(100,'https://gift.truemoney.com/campaign/?v=alJbjV2J6hCoahmBed',41,'2023-04-30 13:48:45',585,'Pounddd'),(101,'https://gift.truemoney.com/campaign/?v=ehanoz0hKZclE2lwkk',10,'2023-04-30 17:47:58',1,'karnzacadmin'),(102,'https://gift.truemoney.com/campaign/?v=gcoZgLnho6DkochTha',10,'2023-04-30 20:43:40',587,'Dfg'),(103,'https://gift.truemoney.com/campaign/?v=kqafpobriJeEwCMikc',23,'2023-04-30 22:07:59',591,'โต้เอง'),(104,'https://gift.truemoney.com/campaign/?v=39Teijm7f1eOLDXg1d',20,'2023-05-01 00:36:29',598,'roongza5'),(105,'https://gift.truemoney.com/campaign/?v=Rghs9flnjkmsfsDbi1',10,'2023-05-01 08:18:31',608,'Kgjckhhigg'),(106,'https://gift.truemoney.com/campaign/?v=oRaiy1oUiemgYdiilf',20,'2023-05-01 14:35:15',625,'Ffshhe'),(107,'https://gift.truemoney.com/campaign/?v=oHncPlD9HHmw71dj1a',40,'2023-05-01 16:55:36',632,'Yunggon'),(108,'https://gift.truemoney.com/campaign/?v=KI6dk18vm8i2de3Thn',10,'2023-05-01 16:56:17',632,'Yunggon'),(109,'https://gift.truemoney.com/campaign/?v=Ub8hKvbpxVlhLyg1gd',40,'2023-05-01 17:11:17',636,'RUOK0199'),(110,'https://gift.truemoney.com/campaign/?v=f7Wte1rePbfxP2dhpk',10,'2023-05-01 17:11:51',636,'RUOK0199'),(111,'https://gift.truemoney.com/campaign/?v=4QcbcT3eh6osKo1jhk',15,'2023-05-01 17:47:22',639,'Playmojd'),(112,'https://gift.truemoney.com/campaign/?v=npRY0yIDkHbfri7pea',16,'2023-05-01 17:48:20',639,'Playmojd'),(113,'https://gift.truemoney.com/campaign/?v=YmESsfZinLafhfACeb',50,'2023-05-01 20:21:54',646,'Puree'),(114,'https://gift.truemoney.com/campaign/?v=5cgoLUnmD5cjFnbPfd',10,'2023-05-01 22:53:06',643,'Felix'),(115,'https://gift.truemoney.com/campaign/?v=NpGlYf93z8vpfImojd',10,'2023-05-01 23:53:48',643,'Felix'),(116,'https://gift.truemoney.com/campaign/?v=hvidaHjFgdROccXJjn',20,'2023-05-01 23:59:37',643,'Felix'),(117,'https://gift.truemoney.com/campaign/?v=sEgjadlwicWlr6zngf',10,'2023-05-02 02:32:15',671,'Gtveresth '),(118,'https://gift.truemoney.com/campaign/?v=s9pjddoJ6c4SpPepf1',20,'2023-05-02 07:31:20',644,'Pokpong845'),(119,'https://gift.truemoney.com/campaign/?v=VYp2xgl1VTqlf2Qemh',50,'2023-05-02 07:37:44',644,'Pokpong845'),(120,'https://gift.truemoney.com/campaign/?v=ZgJf95lcojbjwjKik1',15,'2023-05-02 11:36:27',687,'Y2K'),(121,'https://gift.truemoney.com/campaign/?v=mLUDjjjuAlCamd9ef1',10,'2023-05-02 11:37:01',687,'Y2K'),(122,'https://gift.truemoney.com/campaign/?v=JCltbcfhwBg1k0yfhg',25,'2023-05-02 11:53:28',689,'Fan786 '),(123,'https://gift.truemoney.com/campaign/?v=F5SpqYya61kncdcplj',10,'2023-05-02 11:55:10',689,'Fan786 '),(124,'https://gift.truemoney.com/campaign/?v=4muQgrkeunn30ne1ep',42,'2023-05-02 12:13:36',624,'dkkfnf099'),(125,'https://gift.truemoney.com/campaign/?v=1jKleTggaabxn7jjho',103,'2023-05-02 13:08:33',654,'clientgame'),(126,'https://gift.truemoney.com/campaign/?v=aKh41FBa13rehS0dml',10,'2023-05-02 14:07:16',695,'Kim'),(127,'https://gift.truemoney.com/campaign/?v=d4Ji4SQaihjHsmzRck',25,'2023-05-02 14:23:33',697,'VIP999'),(128,'https://gift.truemoney.com/campaign/?v=p9lQf9t1PachFlkpac',22,'2023-05-02 14:24:23',697,'VIP999'),(129,'https://gift.truemoney.com/campaign/?v=3dRekk6u1bkNjzQikm',40,'2023-05-02 14:31:48',664,'Pongthakorn Liamsung'),(130,'https://gift.truemoney.com/campaign/?v=YRpMjCgFWkcscA3gje',10,'2023-05-02 14:32:48',664,'Pongthakorn Liamsung'),(131,'https://gift.truemoney.com/campaign/?v=lV2aHciAaf1km5Mj1g',25,'2023-05-02 15:22:46',698,'You1234'),(132,'https://gift.truemoney.com/campaign/?v=NYpnDDdsgiDUVooVbj',22,'2023-05-02 15:26:09',698,'You1234'),(133,'https://gift.truemoney.com/campaign/?v=bbdpmdpi6WcP9wFafk',45,'2023-05-02 15:54:35',699,'Asdfghjkl'),(134,'https://gift.truemoney.com/campaign/?v=ooGef16LA34pFnnbbe',26,'2023-05-02 16:41:54',702,'Gkvfivfudfj'),(135,'https://gift.truemoney.com/campaign/?v=Xde1rf3f8WukhdScmn',25,'2023-05-02 17:29:53',703,'ZXChb333'),(136,'https://gift.truemoney.com/campaign/?v=9ycxzojFIcl1hXBjgk',168,'2023-05-02 18:25:00',530,'misensa2'),(137,'https://gift.truemoney.com/campaign/?v=cKo3vlabgGLvc3oki1',20,'2023-05-02 19:43:15',707,'Gggggg'),(138,'https://gift.truemoney.com/campaign/?v=O6LmdLoPnqKHgnnQge',10,'2023-05-02 19:43:48',707,'Gggggg'),(139,'https://gift.truemoney.com/campaign/?v=qyE2IhgkSrnzgmZwif',43,'2023-05-02 23:40:38',721,'Wqeqeqeqeqr'),(140,'https://gift.truemoney.com/campaign/?v=PHl1m0hOapEEjakped',50,'2023-05-03 09:24:36',477,'Nirawit'),(141,'https://gift.truemoney.com/campaign/?v=DSdf8h2hXqaclCClfm',26,'2023-05-03 11:37:51',643,'Felix'),(142,'https://gift.truemoney.com/campaign/?v=pccUrQWbhzAlAMxika',40,'2023-05-03 11:52:45',736,'Bsihero89'),(143,'https://gift.truemoney.com/campaign/?v=2jcel0GlZoXb5A1ecl',10,'2023-05-03 11:53:26',736,'Bsihero89'),(144,'https://gift.truemoney.com/campaign/?v=el1QMBsaCZicbpoiom',200,'2023-05-03 12:19:59',712,'Nay'),(145,'https://gift.truemoney.com/campaign/?v=aaQRTEEbhiFQzHk1ip',10,'2023-05-03 12:20:59',712,'Nay'),(146,'https://gift.truemoney.com/campaign/?v=brd1cNgGaZoplMdcgl',40,'2023-05-03 17:04:06',758,'Chollatit'),(147,'https://gift.truemoney.com/campaign/?v=4ck9aWgX4pjThNxgkb',19,'2023-05-03 17:20:42',758,'Chollatit'),(148,'https://gift.truemoney.com/campaign/?v=f3gh7dgk34plfYVpga',50,'2023-05-03 18:11:30',762,'Ezcorano'),(149,'https://gift.truemoney.com/campaign/?v=5bSogbkdNKmEfmnehe',10,'2023-05-03 19:39:58',767,'Din999'),(150,'https://gift.truemoney.com/campaign/?v=gpcDFcfRXgaD9c3bk1',23,'2023-05-03 19:59:02',767,'Din999'),(151,'https://gift.truemoney.com/campaign/?v=aPUaYhgrjphdGw5lbi',56,'2023-05-03 20:30:22',771,'  Bird'),(152,'https://gift.truemoney.com/campaign/?v=2GG4eFntle8oaeg9hi',25,'2023-05-03 21:54:05',777,'Nook'),(153,'https://gift.truemoney.com/campaign/?v=kZo1sfHjVchebnouda',43,'2023-05-04 01:08:44',779,'Bes123'),(154,'https://gift.truemoney.com/campaign/?v=3LJdEdfeHG1uIk9ign',41,'2023-05-04 08:14:16',785,'Stepebgbee'),(155,'https://gift.truemoney.com/campaign/?v=rdRjWtTibjnVUDgdh1',40,'2023-05-04 08:26:52',786,'masumkaitun'),(156,'https://gift.truemoney.com/campaign/?v=nRa9yfDtMvuaMfcojp',10,'2023-05-04 08:30:02',786,'masumkaitun'),(157,'https://gift.truemoney.com/campaign/?v=dcCiuhgd1bgH1CIkgf',35,'2023-05-04 11:39:27',793,'Boirty'),(158,'https://gift.truemoney.com/campaign/?v=mgXarqnf0ZRBbnDOfd',82,'2023-05-04 12:06:23',794,'Ballxeres '),(159,'https://gift.truemoney.com/campaign/?v=Zhh4cYnhu13c1pghgj',10,'2023-05-04 12:22:46',795,'JBIBI'),(160,'https://gift.truemoney.com/campaign/?v=JxXiEh11lf1lHJkgij',22,'2023-05-04 12:30:06',795,'JBIBI'),(161,'https://gift.truemoney.com/campaign/?v=liuasdFf1YhmmLurih',15,'2023-05-04 12:38:17',795,'JBIBI'),(162,'https://gift.truemoney.com/campaign/?v=86fvc1mPi6BVnVefio',15,'2023-05-04 13:44:15',536,'Yoolp'),(163,'https://gift.truemoney.com/campaign/?v=5bAgWtnXptgcLbhdhi',16,'2023-05-04 14:30:14',799,'Bean'),(164,'https://gift.truemoney.com/campaign/?v=oscaffNm6oNdUenVdd',10,'2023-05-04 14:42:00',536,'Yoolp'),(165,'https://gift.truemoney.com/campaign/?v=bdXdpNcDa7OFCAtije',40,'2023-05-04 14:45:40',801,'Son999'),(166,'https://gift.truemoney.com/campaign/?v=imnZA812NakckbpQgl',10,'2023-05-04 15:01:58',801,'Son999'),(167,'https://gift.truemoney.com/campaign/?v=AxcNhk6frpcTSquhe1',40,'2023-05-04 16:08:12',804,'Non2551'),(168,'https://gift.truemoney.com/campaign/?v=aoZNugapPgbRNtjbcp',10,'2023-05-04 16:08:44',804,'Non2551'),(169,'https://gift.truemoney.com/campaign/?v=GakgQOpzXGkJWdnkgo',15,'2023-05-04 16:49:55',806,'Vkl'),(170,'https://gift.truemoney.com/campaign/?v=grjlc1qVTdR1vOYh1e',40,'2023-05-04 17:53:48',536,'Yoolp'),(171,'https://gift.truemoney.com/campaign/?v=wg9kjehhIbQYf2RDbf',13,'2023-05-04 19:06:34',813,'คิริโนะจัง'),(172,'https://gift.truemoney.com/campaign/?v=rboyZy2rc4ibvslPhk',11,'2023-05-04 19:13:04',813,'คิริโนะจัง'),(173,'https://gift.truemoney.com/campaign/?v=kRWINOaWod160Aojig',159,'2023-05-04 21:32:00',823,'Xhdggd'),(174,'https://gift.truemoney.com/campaign/?v=ulM8ZwY8ndglbpRmgi',20,'2023-05-04 21:34:42',823,'Xhdggd'),(175,'https://gift.truemoney.com/campaign/?v=IlSpb1ABjbZfPEve1i',45,'2023-05-04 22:02:14',802,'Anonbutda'),(176,'https://gift.truemoney.com/campaign/?v=g7VAbUiQmjaTjElKkk',15,'2023-05-04 22:06:16',802,'Anonbutda'),(177,'https://gift.truemoney.com/campaign/?v=dhi1IhFaXZEJtaofob',20,'2023-05-05 07:15:42',477,'Nirawit'),(178,'https://gift.truemoney.com/campaign/?v=W0ndgChmSGeAdPemek',30,'2023-05-05 11:11:03',835,'Av12'),(179,'https://gift.truemoney.com/campaign/?v=O7SgUfmYpbS1lbipig',205,'2023-05-05 22:36:31',712,'Nay'),(180,'https://gift.truemoney.com/campaign/?v=z5ABopjCVsokgn1lnp',29,'2023-05-06 01:36:17',643,'Felix'),(181,'https://gift.truemoney.com/campaign/?v=aDD1mblxXermmjLend',50,'2023-05-06 10:51:12',862,'เดชดนัย ชะสันติ'),(182,'https://gift.truemoney.com/campaign/?v=HoWbbf7NhowU1imhfd',80,'2023-05-06 17:26:15',868,'Minoppl'),(183,'https://gift.truemoney.com/campaign/?v=hG2dG12xbntCqdjjpf',20,'2023-05-06 18:57:31',229,'August'),(184,'https://gift.truemoney.com/campaign/?v=lxVjegWan1ZeShq2gi',12,'2023-05-06 20:27:10',871,'Asawin'),(185,'https://gift.truemoney.com/campaign/?v=oU7gjxTkRjrehalign',40,'2023-05-07 08:57:12',706,'FRt909'),(186,'https://gift.truemoney.com/campaign/?v=KNFpmvG0iFZgiWfed1',10,'2023-05-07 08:57:48',706,'FRt909'),(187,'https://gift.truemoney.com/campaign/?v=og0jSs8yDapN7wodbk',15,'2023-05-07 09:25:08',921,'Famhi8'),(188,'https://gift.truemoney.com/campaign/?v=sku67iEBb1kXo8fvim',34,'2023-05-07 10:19:34',936,'NONUI87'),(189,'https://gift.truemoney.com/campaign/?v=l1UjiFgA1eTXmIkggd',15,'2023-05-07 11:13:28',941,'Fhdkfu'),(190,'https://gift.truemoney.com/campaign/?v=a3mepgyra5eAeKPibc',50,'2023-05-07 12:16:38',955,'TGG'),(191,'https://gift.truemoney.com/campaign/?v=aiqj4iysn7aNb1Mkkb',10,'2023-05-07 12:16:48',957,'DEAR '),(192,'https://gift.truemoney.com/campaign/?v=oKDkjzeBu1zsxeokan',160,'2023-05-07 12:34:46',958,'Non'),(193,'https://gift.truemoney.com/campaign/?v=VzbY7fzoO31e1hmhfp',40,'2023-05-07 12:49:44',969,'Uffududududududu'),(194,'https://gift.truemoney.com/campaign/?v=p1a47s9ffxVcUVhb1l',47,'2023-05-07 12:51:04',972,'Bungohm04'),(195,'https://gift.truemoney.com/campaign/?v=sMK6pE1nojgbK4jgik',10,'2023-05-07 13:01:09',975,'dc2025'),(196,'https://gift.truemoney.com/campaign/?v=isc5l4OOcnCalmE7cn',10,'2023-05-07 13:02:22',975,'dc2025'),(197,'https://gift.truemoney.com/campaign/?v=m3KdXEVds1Lhhmubnj',35,'2023-05-07 13:02:58',969,'Uffududududududu'),(198,'https://gift.truemoney.com/campaign/?v=kxaTlbVhBhjO3cvDkn',20,'2023-05-07 13:23:08',978,'ภัคจิรา'),(199,'https://gift.truemoney.com/campaign/?v=kQld4pAhzshdbUf1af',22,'2023-05-07 13:24:37',964,'Poiu'),(200,'https://gift.truemoney.com/campaign/?v=ozDftm3FAaH11joinm',142,'2023-05-07 14:00:33',531,'RUOKKO'),(201,'https://gift.truemoney.com/campaign/?v=jTjlpPgbNnjggdiBkc',30,'2023-05-07 15:29:43',1004,'0984051453'),(202,'https://gift.truemoney.com/campaign/?v=O05fd1ehXgAZwpKfhg',15,'2023-05-07 16:22:35',1014,'Piyarangkurthnkr@gmail.com '),(203,'https://gift.truemoney.com/campaign/?v=gbiV6bdamojkeff4gl',140,'2023-05-07 18:12:14',1043,'Bo111'),(204,'https://gift.truemoney.com/campaign/?v=X1WDExf6kbjfbHki1p',10,'2023-05-07 18:31:17',1043,'Bo111'),(205,'https://gift.truemoney.com/campaign/?v=DD66WkgwtljogCmHdk',41,'2023-05-07 18:40:00',703,'ZXChb333'),(206,'https://gift.truemoney.com/campaign/?v=6W0e1F7jdeLaoDik1m',10,'2023-05-07 19:22:57',1060,'Tawan933870'),(207,'https://gift.truemoney.com/campaign/?v=9nHSsothhXifNfirkb',40,'2023-05-07 19:35:08',1063,'Kongpop'),(208,'https://gift.truemoney.com/campaign/?v=bjgnYBHUCprs5nhna1',10,'2023-05-07 19:37:38',1063,'Kongpop'),(209,'https://gift.truemoney.com/campaign/?v=41loRFkkAEul0tbjcd',45,'2023-05-07 19:57:51',1072,'Djjsijsn89'),(210,'https://gift.truemoney.com/campaign/?v=hahxckdiiJCofbnKdo',40,'2023-05-07 20:44:09',1061,'ABCGG3GGG8'),(211,'https://gift.truemoney.com/campaign/?v=Qs1ufiheooMpZDlpje',31,'2023-05-07 20:55:04',1061,'ABCGG3GGG8'),(212,'https://gift.truemoney.com/campaign/?v=hqqdVgjXd15edRbfdp',16,'2023-05-07 21:21:32',863,'Watcha'),(213,'https://gift.truemoney.com/campaign/?v=KbdpZgcvasvRBm0bbf',12,'2023-05-07 22:15:31',1111,'Qwer'),(214,'https://gift.truemoney.com/campaign/?v=BWKV8wDkjjiQechohp',25,'2023-05-08 00:11:35',1134,'Awerty'),(215,'https://gift.truemoney.com/campaign/?v=2iDdKmz2im7xopijjn',13,'2023-05-08 00:25:03',1138,'OLPOOLP11'),(216,'https://gift.truemoney.com/campaign/?v=dEslewlvxeKn9jkjka',10,'2023-05-08 03:21:44',1143,'KingtheTime'),(217,'https://gift.truemoney.com/campaign/?v=pLvjfaMu1eU1jhlpdd',11,'2023-05-08 03:25:11',1143,'KingtheTime'),(218,'https://gift.truemoney.com/campaign/?v=VnrNo3Yultglemijkn',10,'2023-05-08 04:20:59',1146,'Rickroll'),(219,'https://gift.truemoney.com/campaign/?v=1mQeanoInaCsEd5b1f',45,'2023-05-08 04:49:05',1149,'Mmllpp'),(220,'https://gift.truemoney.com/campaign/?v=dUicnpXnikwXpaNjfh',45,'2023-05-08 07:26:29',656,'Jioor  Sert');
/*!40000 ALTER TABLE `topup_his` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `point` float NOT NULL,
  `total` float NOT NULL,
  `pin` varchar(6) NOT NULL,
  `rank` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'zixca','a01610228fe998f515a72dd730294d87','2023-06-10',198764,0,'',1),(4,'fifa007','c4ca4238a0b923820dcc509a6f75849b','2023-06-15',0,0,'',0),(5,'pnkshop','fed2522b2c57812399b3717dfe10cdb0','2023-06-17',0,0,'',1),(6,'Bankbbii','4d6a0e7e466e151b0a886d2f027183c1','2023-06-17',0,0,'',0),(7,'Kuytu','57844346849ee08374ce4a95b7ddda9c','2023-06-18',0,0,'',0),(8,'Atom','c988e659fb6d5c35f270b0475942b74e','2023-06-18',0,0,'',0),(9,'Sxdd.','d30bf7e52ab07ccc070d15a9934bdacf','2023-06-18',0,0,'',0),(10,'Ruok','1bbd886460827015e5d605ed44252251','2023-06-18',0,0,'',0),(11,'ggez','e10adc3949ba59abbe56e057f20f883e','2023-06-18',0,0,'',0),(12,'Aaa','0cc175b9c0f1b6a831c399e269772661','2023-06-19',0,0,'',0),(13,'RUOK999','775f9aab558ae0fc2d316020a760bd63','2023-06-22',0,0,'',1),(14,'Popo','25d55ad283aa400af464c76d713c07ad','2023-06-23',0,0,'',0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wheel`
--

DROP TABLE IF EXISTS `wheel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wheel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wheel`
--

LOCK TABLES `wheel` WRITE;
/*!40000 ALTER TABLE `wheel` DISABLE KEYS */;
INSERT INTO `wheel` VALUES (5,'สุ่มตัวALL STAR',1,'https://cdn.discordapp.com/attachments/1121083158197182495/1121083239331807233/a4f5045f89fd4574d59534b42e141465.jpg'),(7,'สุ่มเงินน',1,'https://cdn.discordapp.com/attachments/1121083158197182495/1121083248240504872/e55052356134580a010a37cadf756a67.jpg');
/*!40000 ALTER TABLE `wheel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wheel_item`
--

DROP TABLE IF EXISTS `wheel_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wheel_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `percent` int(3) NOT NULL DEFAULT 100,
  `w_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wheel_item`
--

LOCK TABLES `wheel_item` WRITE;
/*!40000 ALTER TABLE `wheel_item` DISABLE KEYS */;
INSERT INTO `wheel_item` VALUES (12,'เกลือออ','https://cdn.discordapp.com/attachments/1121083158197182495/1121273855391043604/59360b2d5a6567891a8f1823dbdbc285.jpg',75,5),(16,'20บาท','https://cdn.discordapp.com/attachments/1121083158197182495/1121756975768809512/received_182331937855503.jpg',50,5),(17,'เกลืออ','https://cdn.discordapp.com/attachments/1121083158197182495/1121273855391043604/59360b2d5a6567891a8f1823dbdbc285.jpg',70,5),(18,'ชาโด้','https://cdn.discordapp.com/attachments/1121083158197182495/1121756945867616317/received_1482303832313520.jpg',15,5),(19,'เกลือ','https://cdn.discordapp.com/attachments/1121083158197182495/1121273855391043604/59360b2d5a6567891a8f1823dbdbc285.jpg',70,5),(20,'ดาบิ','https://cdn.discordapp.com/attachments/1121083158197182495/1121756917396672522/received_659863445956719.jpg',35,5),(21,'เกลือ','https://cdn.discordapp.com/attachments/1121083158197182495/1121273855391043604/59360b2d5a6567891a8f1823dbdbc285.jpg',70,5),(22,'ซาโบ้','https://cdn.discordapp.com/attachments/1121083158197182495/1121756894332198972/received_221647064084009.jpg',30,5);
/*!40000 ALTER TABLE `wheel_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'irrlraxcklkvevb_flashv3'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-25 23:09:19
