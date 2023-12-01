-- MySQL dump 10.13  Distrib 8.1.0, for Win64 (x86_64)
--
-- Host: localhost    Database: orderms
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country` varchar(50) NOT NULL,
  `region` varchar(70) NOT NULL,
  `city` varchar(100) NOT NULL,
  `street` varchar(250) NOT NULL,
  `note` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country` (`country`,`region`,`city`,`street`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Україна','Полтавська область','Полтава','вул. Європейська, 40','Домофон: 53'),(2,'Велика Британія','Великий Лондон','Лондон','36 Sloane Ct W','Код до дверей: 15'),(3,'Сполучені Штати Америки','Каліфорнія','Сан Франциско','4168 25th St',NULL),(4,'Швеція','Вестра-Йоталанд','Гетеборг','Persikogatan 19',NULL),(5,'Німеччина','Баден-Вюртемберг','Штутгарт','Lerchenstrasse 47',NULL),(6,'Канада','Квебек','Монреаль','5675 Boul. Saint-Laurent',NULL),(7,'Україна','Івано-Франківська область','Івано-Франківськ','вул. Шевченка, 20',NULL),(8,'Україна','Чернігівська область','Чернігів','вул. Дослідна, 2',NULL),(9,'Швеція','Вестра-Йоталанд','Гетеборг','Institutsgatan 9','Залишити перед дверима');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytics`
--

DROP TABLE IF EXISTS `analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analytics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stat_name` varchar(50) NOT NULL,
  `stat_value` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytics`
--

LOCK TABLES `analytics` WRITE;
/*!40000 ALTER TABLE `analytics` DISABLE KEYS */;
INSERT INTO `analytics` VALUES (1,'К-сть товарів',12),(2,'Вартість всіх товарів',338635),(3,'Найдорожчий товар',231600),(4,'Найдешевший товар',112);
/*!40000 ALTER TABLE `analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `sex` enum('0','1','2','9') DEFAULT '9',
  `email` varchar(320) DEFAULT NULL,
  `phone_number` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_number` (`phone_number`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Степан','Степанченко','1','stepan@ukr.net','+380950954915'),(2,'Джон','Шелбі','1','johny@gmail.com','+12124129061'),(3,'Стефанія','Грицько','2','stefaniamamamama@steefaaniiaa.ua','+380671234016'),(4,'Павло','Штаймайер','9','shein@outlook.com','+496912345678'),(5,'Василь','Джонсон','1','vaska@urk.net','+442071234567'),(6,'Білл','Джонсонюк','1','bill@gmail.com','+12505550196'),(7,'Марина','Чижикова','2','marisha@ukr.net','+380731259440'),(8,'Євгенія','Стаскевич','2','zheka@outlook.com','+380971275129');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_order`
--

DROP TABLE IF EXISTS `client_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_order` (
  `client_id` int NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`client_id`,`order_id`),
  UNIQUE KEY `client_id` (`client_id`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_order`
--

LOCK TABLES `client_order` WRITE;
/*!40000 ALTER TABLE `client_order` DISABLE KEYS */;
INSERT INTO `client_order` VALUES (1,1),(1,9),(2,3),(3,4),(3,10),(4,5),(5,2),(6,6),(7,7),(8,8);
/*!40000 ALTER TABLE `client_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address_id` int NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (1,1,'2023-11-20 10:00:00'),(2,2,'2023-11-30 15:35:00'),(3,3,'2023-12-15 20:00:00'),(4,4,'2023-11-21 09:00:00'),(5,5,'2023-11-16 13:40:00'),(6,6,'2024-01-05 16:00:00'),(7,7,'2023-11-19 19:00:00'),(8,8,'2023-12-10 15:30:00'),(9,1,'2023-11-19 16:15:00'),(10,9,'2023-11-28 12:20:00');
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `delivery_id` int NOT NULL,
  PRIMARY KEY (`id`,`product_id`,`delivery_id`),
  KEY `product_id` (`product_id`),
  KEY `delivery_id` (`delivery_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,1,1),(1,6,2,1),(1,7,1,1),(2,2,1,2),(2,9,1,2),(3,6,1,3),(3,10,5,3),(4,3,1,4),(4,7,1,4),(4,11,1,4),(5,4,1,5),(5,5,2,5),(6,8,2,6),(6,10,7,6),(7,10,2,7),(7,12,3,7),(8,4,1,8),(9,5,1,9),(10,7,1,10),(10,8,1,10);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` int NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'iPhone 15 128GB Black',35549,'Гарантія: 12 місяців'),(2,'Фара Volkswagen Golf VI',22645,'Сторона: Права пасажирська'),(3,'Google Pixel 8 8/128GB',34444,'Артикул товару: 815202'),(4,'Диски Hamann Anniversary EVO Black BMW X5',231600,'Комплект оригінальних різношироких тюнінгів дисків Hamann Anniversary EVO Black BMW X5 X6 F15 F16 G05'),(5,'Взуття для боксу Adidas Box Hog II чорне FX0561',2373,'Код #2000005251'),(6,'Бампер з Покемоном для Samsung А30 Жовтий',291,'Всі чохли на Samsung А30 2019 на нашому сайті створені з яскравими та дизайнерськими картинками - кожен знайде своє.'),(7,'Бездротова клавіатура Ajazz 308I‌',1299,'84 клавіші, 2хААА, Grey/White, колір - сірий'),(8,'Миша комп\'ютерна Xiaomi Wireless Mouse Lite Black (XMWXS801YM)',499,'Комп\'ютерна миша Xiaomi Wireless Mouse Lite стала чудовим прикладом аскетичної сучасної техніки, що гарна не тільки в дизайні, а й у функціоналі'),(9,'Диски Volkswagen Golf 6 jetta Touran Passat R16',9000,'Стан дисків дуже добрий. Без пробігу в Україні.Без тріщин викаток і перефарба.'),(10,'Цукерки Roshen Ромашка',112,'Відмінні апетитні цукерки Roshen Ромашка'),(11,'Чохол для Google Pixel 8, гібридний чохол Fusion, для MagSafe, прозорий',655,'Чохол для Google Pixel 8, Fusion Hybrid, для MagSafe, прозорий - надійне рішення для захисту вашого дорогоцінного телефону від наслідків падінь.'),(12,'Чай чорний Greenfield Golden Ceylon 2г 100шт',168,'Чай чорний пакетований Greenfield Golden Ceylon 100шт в коробці');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_product_insert` AFTER INSERT ON `product` FOR EACH ROW begin
	update analytics
	set stat_value = (select count(*) from product)
	where stat_name = "К-сть товарів";
    
    update analytics
    set stat_value = (select sum(price) from product)
    where stat_name = "Вартість всіх товарів";
    
    update analytics
    set stat_value = (select max(price) from product)
    where stat_name = "Найдорожчий товар";
    
    update analytics
    set stat_value = (select min(price) from product)
    where stat_name = "Найдешевший товар";
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_product_delete` AFTER DELETE ON `product` FOR EACH ROW begin
	update analytics
	set stat_value = (select count(*) from product)
	where stat_name = "К-сть товарів";
    
    update analytics
    set stat_value = (select sum(price) from product)
    where stat_name = "Вартість всіх товарів";
    
    update analytics
    set stat_value = (select max(price) from product)
    where stat_name = "Найдорожчий товар";
    
    update analytics
    set stat_value = (select min(price) from product)
    where stat_name = "Найдешевший товар";
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-01 17:51:07
