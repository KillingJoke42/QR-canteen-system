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
  `hash` varchar(35) NOT NULL,
  `item_type` varchar(15) DEFAULT NULL,
  `dish` varchar(50) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_card`
--

LOCK TABLES `menu_card` WRITE;
/*!40000 ALTER TABLE `menu_card` DISABLE KEYS */;
INSERT INTO `menu_card` VALUES ('04a3d0453792ee9625ed5191f4c1edad','soups','Hariyali Shorba',135),('0545c0b8ac98900d205947ca9c544da7','main_course','Paneer Butter Masala',299),('071efe3d21eac5f5a3b1691163b804f4','desert','Gulab Jamun and Ice Cream',120),('0eaa6aa6551e1dff8b1051807956f0af','starters','Veg. Malai Seekh',315),('11204dfacc658db32086b2667d452b16','desert','Sizzling Brownie',250),('147ae7ce5a43da2df1fc79198b07e366','main_course','Veg Seekh Masala',299),('148c21c0e71ae70a91312ee7c8aac31a','roti','Plain Naan',50),('19f44ada10debae1e8256c871c42dc8e','roti','Pyaz Mirch Ka Kulcha',80),('1b5aab9b83f1f0054cd8a0ae8c6f2de5','roti','Cheese Naan',110),('231d0ce6bf2566ea8c60a5bd593739de','soups','Veg Manchow',135),('26aa536cadd1a175e1ddb7043b36c911','biryani','Veg Fried Rice',300),('2e92719bb9919bae470d2f1698b596cd','roti','Rumali Roti',100),('3baf64d08c10c16be88cae2e90487488','sides','Veg Raita',70),('41f154ec104113b4e5d163588c9dd77d','starters','Sp Veg Platter',595),('43ef074d2fac76e3cd6fe67b2d72f49d','drinks','Chaas',50),('44c698ceb38fd4a388eede713176f6bb','starters','Paneer Pahandi Tikka',315),('4905f67693c1e057a2d9b8c9de8f863b','desert','Ice Cream',80),('4c19cf209c1c2e1a63f7a3c6ba3e94e0','drinks','Packaged Water',20),('4da8732c09b8e8acf9b29e3bff827931','starters','Paneer Tikka',315),('5068208837f34bb1e147f29e57f9dd3c','starters','Paneer Achari Tikka',315),('585719f6d53183092085f0ef91fba404','main_course','Dal Fry',200),('60c421d25ef937c374ff3b29c554e50a','main_course','Dal Tadka',225),('6398bdad0dd2d1abec773394368c2a7b','drinks','Fresh Lime Soda',99),('6f978a8bbf74999475f11847ea2b646a','main_course','Kaju Curry',350),('71ae8f76c4cacd9ce3554235a2b7e18e','roti','Butter Naan',55),('71d0171e111faf8b23d1366289651aac','drinks','Lassi',99),('75c6378f3b0e64a8a3145b06b01ea74b','main_course','Veg Handi',299),('79298b8e341a254e143871394741738f','starters','Hara Bhara Kebab',315),('7cd59c598434d0a13dccda50651be8b0','roti','Butter Roti',45),('7ee8dbfe770a407a6a42590b5c00380e','main_course','Veg Makhanwala',299),('8995b3ad89a4b968e5e3a6ac41e8d1e3','main_course','Veg Jainpuri',299),('8b0084a12d9d86db3694a424935bcd90','roti','Plain Roti',40),('8c20bc1b477e8ee82cbca98f323fcfca','sides','Roasted Papad',40),('8e90bf24db344ce19753721a2b11aa58','starters','Paneer Chilly Dry',315),('94c8d2125faaca26f9bf8fc9c9dfd0b4','soups','Veg Lemon Coriander',135),('9c7ec32f746f3e5a64bd109420737905','biryani','Veg Schezwan Fried Rice',300),('9e8859b3d5f243952ca333ee99e89f5d','roti','Kulcha',80),('a108b0416e7c74ef36277f780ad143f4','sides','Green Salad',90),('a75ae03489be3ec13e8f76bafa0efc58','soups','Veg Hot and Sour',135),('a89222ee6851c9152d01906af7120bd2','soups','Veg Sweet Corn',135),('a9c257195a43d2c0045cb83198b35373','drinks','Masala Chaas',55),('ac0ea3eb260d5d85dcf0aff2517da3a7','biryani','Veg Dum Biryani',300),('b2908f4b57578b00ec1be0010d4855f1','roti','Garlic Naan',90),('b4776839e8260f40be3bfa1f650fa011','biryani','Veg Pulav',300),('b6de5dcca45a0c380978b1661906dc21','main_course','Paneer Lababdar',299),('b8266513fc23985afedc9ac0aed2eb22','sides','Veg Masala Papad',80),('b9585278d52adae50dcdb53a70190902','biryani','Plain Rice',100),('bbf4c5fd6caf7a0d9f65ea984c391aab','drinks','Soft Drink',50),('bf85b43f71baab70257094963257077a','desert','Gulab Jamun',80),('c3f728e0739311ad6ca038f9b5bf15d7','main_course','Cheese Butter Masala',325),('c66ca53f94872a62857d175c72f108f3','starters','Paneer Hariyali Tikka',315),('c7d988e490847422dd91ddd9c4fa3d55','roti','Cheese Garlic Naan',120),('c9d172218df53c5850b15bc529dc2512','sides','Cheese Masala Papad',99),('ccd225b26161d6c63625ccae28afafb2','biryani','Veg Hydrabadi Dum Biryani',300),('d15e5df83afbb079ba7d03e6c596afdd','main_course','Paneer Pasanda',299),('d79ca853f9287aff4c0bd86601d581b4','roti','Laccha Paratha',80),('dc80ed7bf0437632ead3684e17b077c8','soups','Sp Shorba',135),('de435e8a3c182b1946fc0a8e62a6ced7','main_course','Dal Lasuni Tadka',225),('df99cf119be909623f239daaa784e7b8','biryani','Zeera Rice',120),('e4add89699f57dbd895c82d0a99182bf','main_course','Paneer Angara',299),('e609eca000b04c17e9145574d5fe598f','desert','Ice Cream Sauce',20),('f37bf4fe0ac58710d85a3d8751887dbd','main_course','Paneer Tikka Masala',299),('f60bb226544ae92d7b77603e98d65aeb','main_course','Paneer Toofani',299),('fb5995f435763acc5e88e19c5be510bb','main_course','Veg Kolhapuri',299);
/*!40000 ALTER TABLE `menu_card` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-07  5:15:16
