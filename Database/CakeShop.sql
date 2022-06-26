-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: shopdb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `seo` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (2,NULL,NULL,_binary '',NULL,NULL,'bánh kem\r\n','Bánh Kem',NULL),(3,NULL,NULL,_binary '',NULL,NULL,'Bánh sinh nhật','Bánh sinh nhật',NULL),(4,NULL,NULL,_binary '',NULL,NULL,'Bánh mỳ','Bánh mỳ',NULL);
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `phone_number` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contact`
--

LOCK TABLES `tbl_contact` WRITE;
/*!40000 ALTER TABLE `tbl_contact` DISABLE KEYS */;
INSERT INTO `tbl_contact` VALUES (7,NULL,'2022-06-13 17:10:15.005000',_binary '',NULL,NULL,'tran36016@gmail.com','giaphong','abc','0912112905'),(10,NULL,'2022-06-23 20:12:38.639000',_binary '',NULL,NULL,'tran36016@gmail.com','giaphong','123132','0948349562');
/*!40000 ALTER TABLE `tbl_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `detail_description` longtext NOT NULL,
  `is_hot` bit(1) NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `price_sale` decimal(13,2) DEFAULT NULL,
  `seo` varchar(1000) DEFAULT NULL,
  `short_description` varchar(1000) DEFAULT NULL,
  `so_luong_ton` int DEFAULT NULL,
  `title` varchar(1000) NOT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl5l3hu2fh1ixbx8ejat9df13p` (`category_id`),
  CONSTRAINT `FKl5l3hu2fh1ixbx8ejat9df13p` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products`
--

LOCK TABLES `tbl_products` WRITE;
/*!40000 ALTER TABLE `tbl_products` DISABLE KEYS */;
INSERT INTO `tbl_products` VALUES (11,NULL,NULL,_binary '',NULL,NULL,'product/avatar/kemtuoi.jpg','<p>Bánh kem tươi<br></p>',_binary '',200000.00,190000.00,NULL,'Bánh kem tươi',4,'Bánh kem tươi',2),(13,NULL,NULL,_binary '',NULL,NULL,'product/avatar/kemdau.jpg','<p>Bánh kem dâu<br></p>',_binary '',150000.00,140000.00,NULL,'Bánh kem dâu',4,'Bánh kem dâu',2),(14,NULL,NULL,_binary '',NULL,NULL,'product/avatar/pizza.jpg','<p>Bánh pizza<br></p>',_binary '',190000.00,180000.00,NULL,'Bánh pizza',5,'Bánh pizza',4),(15,NULL,NULL,_binary '',NULL,NULL,'product/avatar/trasuatranchau.jpg','<p>Bánh trà sữa trân châu<br></p>',_binary '',100000.00,90000.00,NULL,'Bánh trà sữa trân châu',5,'Bánh trà sữa trân châu',2),(16,NULL,NULL,_binary '',NULL,NULL,'product/avatar/caramen1.jpg','<p>Bánh caramen<br></p>',_binary '',90000.00,80000.00,NULL,'Bánh caramen',5,'Bánh caramen',2),(17,NULL,NULL,_binary '',NULL,NULL,'product/avatar/matcha.jpg','<p>Bánh matcha<br></p>',_binary '',250000.00,240000.00,NULL,'Bánh matcha',4,'Bánh matcha',3),(20,NULL,NULL,_binary '',NULL,NULL,'product/avatar/deo.jpg','<p>Bánh dẻo<br></p>',_binary '',40000.00,40000.00,NULL,'Bánh dẻo',15,'Bánh dẻo',2),(21,NULL,NULL,_binary '',NULL,NULL,'product/avatar/chocolate01.jpg','<p>Bánh chocolate 01<br></p>',_binary '',150000.00,140000.00,NULL,'Bánh chocolate 01',2,'Bánh chocolate 01',3),(23,NULL,NULL,_binary '',NULL,NULL,'product/avatar/BC68_4645_anh1.jfif','<p>Bánh mocha<br></p>',_binary '',100000.00,90000.00,NULL,'Bánh mocha',10,'Bánh mocha',3),(24,NULL,NULL,_binary '',NULL,NULL,'product/avatar/banh14124.jpg','<p>Bánh lamington<br></p>',_binary '',270000.00,260000.00,NULL,'Bánh lamington',14,'Bánh lamington',2),(25,NULL,NULL,_binary '',NULL,NULL,'product/avatar/92.jpg','<p>Bánh chocolate 02<br></p>',_binary '',150000.00,140000.00,NULL,'Bánh chocolate 02',5,'Bánh chocolate 02',3);
/*!40000 ALTER TABLE `tbl_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products_images`
--

DROP TABLE IF EXISTS `tbl_products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `path` varchar(200) NOT NULL,
  `title` varchar(500) NOT NULL,
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjac7pn534bktj4tvkxqvydglf` (`product_id`),
  CONSTRAINT `FKjac7pn534bktj4tvkxqvydglf` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products_images`
--

LOCK TABLES `tbl_products_images` WRITE;
/*!40000 ALTER TABLE `tbl_products_images` DISABLE KEYS */;
INSERT INTO `tbl_products_images` VALUES (11,NULL,NULL,_binary '',NULL,NULL,'product/pictures/kemtuoi.jpg','kemtuoi.jpg',11),(15,NULL,NULL,_binary '',NULL,NULL,'product/pictures/kemdau.jpg','kemdau.jpg',13),(16,NULL,NULL,_binary '',NULL,NULL,'product/pictures/pizza.jpg','pizza.jpg',14),(17,NULL,NULL,_binary '',NULL,NULL,'product/pictures/trasuatranchau.jpg','trasuatranchau.jpg',15),(18,NULL,NULL,_binary '',NULL,NULL,'product/pictures/caramen2.jpg','caramen2.jpg',16),(19,NULL,NULL,_binary '',NULL,NULL,'product/pictures/caramen1.jpg','caramen1.jpg',16),(20,NULL,NULL,_binary '',NULL,NULL,'product/pictures/matcha.jpg','matcha.jpg',17),(24,NULL,NULL,_binary '',NULL,NULL,'product/pictures/deo.jpg','deo.jpg',20),(25,NULL,NULL,_binary '',NULL,NULL,'product/pictures/chocolate01.jpg','chocolate01.jpg',21),(27,NULL,NULL,_binary '',NULL,NULL,'product/pictures/BC68_4645_anh1.jfif','BC68_4645_anh1.jfif',23),(28,NULL,NULL,_binary '',NULL,NULL,'product/pictures/laminngtong4.jpg','laminngtong4.jpg',24),(29,NULL,NULL,_binary '',NULL,NULL,'product/pictures/lamington3.jpg','lamington3.jpg',24),(30,NULL,NULL,_binary '',NULL,NULL,'product/pictures/92.jpg','92.jpg',25);
/*!40000 ALTER TABLE `tbl_products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `description` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=437 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles`
--

LOCK TABLES `tbl_roles` WRITE;
/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
INSERT INTO `tbl_roles` VALUES (11,NULL,NULL,_binary '',NULL,NULL,'ADMIN','ADMIN'),(435,NULL,NULL,_binary '',NULL,NULL,'GUEST','GUEST'),(436,NULL,NULL,_binary '',NULL,NULL,'GUEST','GUEST');
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder`
--

DROP TABLE IF EXISTS `tbl_saleorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `code` varchar(45) NOT NULL,
  `customer_address` varchar(100) DEFAULT NULL,
  `cutomer_email` varchar(100) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_phone` varchar(100) DEFAULT NULL,
  `tinh_trang` varchar(255) DEFAULT NULL,
  `total` decimal(13,2) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbiu8ui4krw8j3gtn97w3rdq7v` (`user_id`),
  CONSTRAINT `FKbiu8ui4krw8j3gtn97w3rdq7v` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder`
--

LOCK TABLES `tbl_saleorder` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder` DISABLE KEYS */;
INSERT INTO `tbl_saleorder` VALUES (4,NULL,'2022-06-25 19:48:09.135000',_binary '',NULL,NULL,'1656161289135','nam định','tran36016@gmail.com','gia phong','0948349562','Chưa thanh toán',NULL,NULL);
/*!40000 ALTER TABLE `tbl_saleorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder_products`
--

DROP TABLE IF EXISTS `tbl_saleorder_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `quality` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `saleorder_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnyfdau9vc46jkiwvrgj1ns85v` (`product_id`),
  KEY `FKnpyir3q973iv4wq49ltw0kcrd` (`saleorder_id`),
  CONSTRAINT `FKnpyir3q973iv4wq49ltw0kcrd` FOREIGN KEY (`saleorder_id`) REFERENCES `tbl_saleorder` (`id`),
  CONSTRAINT `FKnyfdau9vc46jkiwvrgj1ns85v` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder_products`
--

LOCK TABLES `tbl_saleorder_products` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder_products` DISABLE KEYS */;
INSERT INTO `tbl_saleorder_products` VALUES (7,NULL,'2022-06-25 19:48:09.151000',_binary '',NULL,NULL,1,17,4),(8,NULL,'2022-06-25 19:48:09.145000',_binary '',NULL,NULL,1,21,4),(9,NULL,'2022-06-25 19:48:09.160000',_binary '',NULL,NULL,1,24,4);
/*!40000 ALTER TABLE `tbl_saleorder_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by` int DEFAULT NULL,
  `created_date` datetime(6) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `username` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (11,NULL,NULL,_binary '',NULL,NULL,'admin@example.com','$2a$04$VfMI75Jcf5S/vx2ENFwUu.SjP.EbPjIJhScGMxKsTKTIlrEF9D.e6','admin'),(18,NULL,NULL,_binary '',NULL,NULL,'phong313@gmail.com','$2a$10$lnKzcCDdlYRqFX/VO836su1YPPWkl.4iIDzeymk1chG5s4ZJFz93G','phong3'),(19,NULL,NULL,_binary '',NULL,NULL,'phong4@gmail.com','$2a$10$edmEeZDtuUZcyUNIFzCuPOH89VuyAlNUJgDfWcZZ1PxqHxWtkCS.q','phong4');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users_roles`
--

DROP TABLE IF EXISTS `tbl_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users_roles` (
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  KEY `FK9759r6hlfhyhtv3e7eppsldx9` (`user_id`),
  KEY `FKjx9up05623t9hyre3gu4ch7eb` (`role_id`),
  CONSTRAINT `FK9759r6hlfhyhtv3e7eppsldx9` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`),
  CONSTRAINT `FKjx9up05623t9hyre3gu4ch7eb` FOREIGN KEY (`role_id`) REFERENCES `tbl_roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users_roles`
--

LOCK TABLES `tbl_users_roles` WRITE;
/*!40000 ALTER TABLE `tbl_users_roles` DISABLE KEYS */;
INSERT INTO `tbl_users_roles` VALUES (11,11),(435,18),(436,19);
/*!40000 ALTER TABLE `tbl_users_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-26 22:26:48
