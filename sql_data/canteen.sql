-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: canteen
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `menu_card`
--

DROP TABLE IF EXISTS `menu_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_card` (
  `id` varchar(5) NOT NULL,
  `dish_type` varchar(20) DEFAULT NULL,
  `dish_name` varchar(50) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_card`
--

LOCK TABLES `menu_card` WRITE;
/*!40000 ALTER TABLE `menu_card` DISABLE KEYS */;
INSERT INTO `menu_card` VALUES ('I001','soups','Sp Shorba',135),('I002','soups','Hariyali Shorba',135),('I003','soups','Veg Hot and Sour',135),('I004','soups','Veg Sweet Corn',135),('I005','soups','Veg Manchow',135),('I006','soups','Veg Lemon Coriander',135),('I007','sides','Cheese Masala Papad',99),('I008','sides','Veg Masala Papad',80),('I009','sides','Roasted Papad',40),('I010','sides','Green Salad',90),('I011','sides','Veg Raita',70),('I012','starters','Sp Veg Platter',595),('I013','starters','Veg. Malai Seekh',315),('I014','starters','Hara Bhara Kebab',315),('I015','starters','Paneer Tikka',315),('I016','starters','Paneer Pahandi Tikka',315),('I017','starters','Paneer Achari Tikka',315),('I018','starters','Paneer Hariyali Tikka',315),('I019','starters','Paneer Chilly Dry',315),('I020','main_course','Kaju Curry',350),('I021','main_course','Cheese Butter Masala',325),('I022','main_course','Paneer Angara',299),('I023','main_course','Paneer Pasanda',299),('I024','main_course','Paneer Lababdar',299),('I025','main_course','Paneer Toofani',299),('I026','main_course','Paneer Butter Masala',299),('I027','main_course','Veg Jainpuri',299),('I028','main_course','Paneer Tikka Masala',299),('I029','main_course','Veg Kolhapuri',299),('I030','main_course','Veg Handi',299),('I031','main_course','Veg Makhanwala',299),('I032','main_course','Veg Seekh Masala',299),('I033','main_course','Dal Fry',200),('I034','main_course','Dal Tadka',225),('I035','main_course','Dal Lasuni Tadka',225),('I036','roti','Plain Roti',40),('I037','roti','Butter Roti',45),('I038','roti','Plain Naan',50),('I039','roti','Butter Naan',55),('I040','roti','Cheese Garlic Naan',120),('I041','roti','Cheese Naan',110),('I042','roti','Garlic Naan',90),('I043','roti','Rumali Roti',100),('I044','roti','Laccha Paratha',80),('I045','roti','Kulcha',80),('I046','roti','Pyaz Mirch Ka Kulcha',80),('I047','biryani','Veg Dum Biryani',300),('I048','biryani','Veg Hydrabadi Dum Biryani',300),('I049','biryani','Veg Fried Rice',300),('I050','biryani','Veg Schezwan Fried Rice',300),('I051','biryani','Veg Pulav',300),('I052','biryani','Zeera Rice',120),('I053','biryani','Plain Rice',100),('I054','desert','Sizzling Brownie',250),('I055','desert','Ice Cream',80),('I056','desert','Ice Cream Sauce',20),('I057','desert','Gulab Jamun',80),('I058','desert','Gulab Jamun and Ice Cream',120),('I059','drinks','Fresh Lime Soda',99),('I060','drinks','Lassi',99),('I061','drinks','Chaas',50),('I062','drinks','Masala Chaas',55),('I063','drinks','Soft Drink',50),('I064','drinks','Packaged Water',20);
/*!40000 ALTER TABLE `menu_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_history` (
  `order_id` varchar(35) NOT NULL,
  `order_owner` varchar(50) DEFAULT NULL,
  `place_timestamp` datetime DEFAULT NULL,
  `finish_timestamp` datetime DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_history`
--

LOCK TABLES `order_history` WRITE;
/*!40000 ALTER TABLE `order_history` DISABLE KEYS */;
INSERT INTO `order_history` VALUES ('08e8ef85888d9fad981898502987959e','anantraina','2020-08-07 23:22:19',NULL,0),('3c206955f45465f79762545ecd36884a','anantraina','2020-08-07 23:16:51',NULL,0),('654c885fff5ea52bd003cab7ab5b8e2f','anantraina','2020-08-07 22:41:22',NULL,0),('818217c9a0250a4f9ac359c65f1f9122','anantraina','2020-08-07 23:21:25',NULL,0),('f25630697bb0500e97b6618929a2802a','anantraina','2020-08-07 22:41:40',NULL,0);
/*!40000 ALTER TABLE `order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_history_meta`
--

DROP TABLE IF EXISTS `order_history_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_history_meta` (
  `order_id` varchar(35) NOT NULL,
  `id` varchar(5) DEFAULT NULL,
  `qty` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_history_meta`
--

LOCK TABLES `order_history_meta` WRITE;
/*!40000 ALTER TABLE `order_history_meta` DISABLE KEYS */;
INSERT INTO `order_history_meta` VALUES ('654c885fff5ea52bd003cab7ab5b8e2f','I001',1),('654c885fff5ea52bd003cab7ab5b8e2f','I037',4),('f25630697bb0500e97b6618929a2802a','I035',1),('f25630697bb0500e97b6618929a2802a','I026',6),('3c206955f45465f79762545ecd36884a','I006',1),('3c206955f45465f79762545ecd36884a','I031',2),('3c206955f45465f79762545ecd36884a','I008',1),('3c206955f45465f79762545ecd36884a','I025',3),('818217c9a0250a4f9ac359c65f1f9122','I021',1),('818217c9a0250a4f9ac359c65f1f9122','I033',2),('08e8ef85888d9fad981898502987959e','I001',1);
/*!40000 ALTER TABLE `order_history_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-07 23:25:26
