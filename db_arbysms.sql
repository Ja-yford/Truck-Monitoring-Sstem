-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_arbysms
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `appointment_id` int NOT NULL AUTO_INCREMENT,
  `renter_id` int DEFAULT NULL,
  `appointment_date` date DEFAULT NULL,
  `purpose_id` int DEFAULT NULL,
  `total_days` int DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `renter_id` (`renter_id`),
  KEY `purpose_id` (`purpose_id`),
  CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`renter_id`) REFERENCES `renter` (`renter_id`),
  CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`purpose_id`) REFERENCES `purpose` (`purpose_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (13,7,'2024-03-15',29,0,'2024-03-15','2024-03-15'),(14,7,'2024-03-15',3,0,'2024-03-15','2024-03-15'),(15,7,'2024-03-15',3,0,'2024-03-15','2024-03-15'),(16,7,'2024-03-15',3,0,'2024-03-15','2024-03-15'),(17,6,'2024-03-18',2,3,'2024-03-16','2024-03-17');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `appointment_details`
--

DROP TABLE IF EXISTS `appointment_details`;
/*!50001 DROP VIEW IF EXISTS `appointment_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `appointment_details` AS SELECT 
 1 AS `appointment_id`,
 1 AS `renter_name`,
 1 AS `appointment_date`,
 1 AS `description`,
 1 AS `total_days`,
 1 AS `start_date`,
 1 AS `end_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(50) DEFAULT NULL,
  `employee_age` int DEFAULT NULL,
  `employee_contact` varchar(30) DEFAULT NULL,
  `employee_type` varchar(30) DEFAULT NULL,
  `license_no` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (2,'Gerald',23,'9987213','Driver','123'),(3,'Gerald',24,'998765','Mechanic','A123'),(4,'Employee',21,'912345678','Driver','123abc'),(5,'Employee',21,'09123456789','Driver','123abc');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maintenance_activity`
--

DROP TABLE IF EXISTS `maintenance_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance_activity` (
  `maintenance_activity_id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`maintenance_activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance_activity`
--

LOCK TABLES `maintenance_activity` WRITE;
/*!40000 ALTER TABLE `maintenance_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `maintenance_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_maintenance`
--

DROP TABLE IF EXISTS `monthly_maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monthly_maintenance` (
  `monthly_maintenance_id` int NOT NULL AUTO_INCREMENT,
  `truck_id` int DEFAULT NULL,
  `maintenance_activity_id` int DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `maintenance_date` date DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`monthly_maintenance_id`),
  KEY `truck_id` (`truck_id`),
  KEY `maintenance_activity_id` (`maintenance_activity_id`),
  CONSTRAINT `monthly_maintenance_ibfk_1` FOREIGN KEY (`truck_id`) REFERENCES `truck` (`truck_id`),
  CONSTRAINT `monthly_maintenance_ibfk_2` FOREIGN KEY (`maintenance_activity_id`) REFERENCES `maintenance_activity` (`maintenance_activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_maintenance`
--

LOCK TABLES `monthly_maintenance` WRITE;
/*!40000 ALTER TABLE `monthly_maintenance` DISABLE KEYS */;
/*!40000 ALTER TABLE `monthly_maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `rent_id` int DEFAULT NULL,
  `total_amount` int DEFAULT NULL,
  `sub_total` int DEFAULT NULL,
  `payment_status_id` int DEFAULT NULL,
  `payment_mode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `rent_id` (`rent_id`),
  KEY `payment_status_id` (`payment_status_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`rent_id`) REFERENCES `rent` (`rent_id`),
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`payment_status_id`) REFERENCES `payment_status` (`payment_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (3,5,NULL,500,2,'GCASH'),(4,1,NULL,5,1,'n'),(6,5,NULL,5,1,'G'),(7,5,1500,500,3,'gcash'),(8,5,1500,5,1,'g');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_status`
--

DROP TABLE IF EXISTS `payment_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_status` (
  `payment_status_id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`payment_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_status`
--

LOCK TABLES `payment_status` WRITE;
/*!40000 ALTER TABLE `payment_status` DISABLE KEYS */;
INSERT INTO `payment_status` VALUES (1,'Paid'),(2,'Partial'),(3,'Unpaid');
/*!40000 ALTER TABLE `payment_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `paymentdetails`
--

DROP TABLE IF EXISTS `paymentdetails`;
/*!50001 DROP VIEW IF EXISTS `paymentdetails`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `paymentdetails` AS SELECT 
 1 AS `payment_id`,
 1 AS `rent_id`,
 1 AS `total_amount`,
 1 AS `sub_total`,
 1 AS `description`,
 1 AS `payment_mode`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `purpose`
--

DROP TABLE IF EXISTS `purpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purpose` (
  `purpose_id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`purpose_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purpose`
--

LOCK TABLES `purpose` WRITE;
/*!40000 ALTER TABLE `purpose` DISABLE KEYS */;
INSERT INTO `purpose` VALUES (1,'Secret'),(2,'Secret'),(3,''),(4,''),(5,''),(6,'Secret'),(7,'Secret'),(8,'Secret'),(9,'Secret'),(10,''),(11,''),(12,''),(13,''),(14,''),(15,''),(16,'Secret'),(17,'3'),(18,''),(19,'Secret'),(20,'19'),(21,'19'),(22,'21'),(23,'21'),(24,''),(25,'lago'),(26,'lago'),(27,'23'),(28,'27'),(29,'Traveling'),(30,'2'),(31,'  ');
/*!40000 ALTER TABLE `purpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rent`
--

DROP TABLE IF EXISTS `rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rent` (
  `rent_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `truck_id` int NOT NULL,
  `rent_cost` int DEFAULT NULL,
  `appointment_id` int NOT NULL,
  PRIMARY KEY (`rent_id`,`employee_id`,`truck_id`,`appointment_id`),
  KEY `employee_id` (`employee_id`),
  KEY `truck_id` (`truck_id`),
  KEY `appointment_id` (`appointment_id`),
  CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`),
  CONSTRAINT `rent_ibfk_2` FOREIGN KEY (`truck_id`) REFERENCES `truck` (`truck_id`),
  CONSTRAINT `rent_ibfk_3` FOREIGN KEY (`appointment_id`) REFERENCES `appointment` (`appointment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rent`
--

LOCK TABLES `rent` WRITE;
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
INSERT INTO `rent` VALUES (1,5,9,NULL,16),(3,4,4,NULL,16),(4,3,4,NULL,17),(5,3,2,1500,17),(6,3,2,0,13);
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `rentdetails`
--

DROP TABLE IF EXISTS `rentdetails`;
/*!50001 DROP VIEW IF EXISTS `rentdetails`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `rentdetails` AS SELECT 
 1 AS `rent_id`,
 1 AS `employee_name`,
 1 AS `truck_name`,
 1 AS `appointment_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `renter`
--

DROP TABLE IF EXISTS `renter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `renter` (
  `renter_id` int NOT NULL AUTO_INCREMENT,
  `renter_name` varchar(50) DEFAULT NULL,
  `renter_age` int DEFAULT NULL,
  `renter_contact` varchar(15) DEFAULT NULL,
  `renter_address` varchar(100) DEFAULT NULL,
  `renter_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`renter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renter`
--

LOCK TABLES `renter` WRITE;
/*!40000 ALTER TABLE `renter` DISABLE KEYS */;
INSERT INTO `renter` VALUES (1,'Me',23,'123','Davao City','me@me.com'),(2,'meme',24,'912345678','Davao','youyou@you.com'),(5,'Nath',23,'987654','Tagum City','nath@gmail.com'),(6,'Nath',23,'987654','Tagum City','nath@gmail.com'),(7,'Gerald',21,'09123456789','Tagum','');
/*!40000 ALTER TABLE `renter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `report_id` int NOT NULL AUTO_INCREMENT,
  `maintenance_activity_id` int DEFAULT NULL,
  `rent_id` int DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`report_id`),
  KEY `maintenance_activity_id` (`maintenance_activity_id`),
  KEY `rent_id` (`rent_id`),
  CONSTRAINT `report_ibfk_1` FOREIGN KEY (`maintenance_activity_id`) REFERENCES `maintenance_activity` (`maintenance_activity_id`),
  CONSTRAINT `report_ibfk_2` FOREIGN KEY (`rent_id`) REFERENCES `rent` (`rent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `status_id` int NOT NULL AUTO_INCREMENT,
  `status_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Available'),(2,'Not Available'),(3,'Under Maintenance/Repair');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `truck`
--

DROP TABLE IF EXISTS `truck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `truck` (
  `truck_id` int NOT NULL AUTO_INCREMENT,
  `truck_name` varchar(30) DEFAULT NULL,
  `truck_capacity` int DEFAULT NULL,
  `truck_price` int DEFAULT NULL,
  `plate_number` varchar(10) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`truck_id`),
  KEY `status` (`status`),
  CONSTRAINT `truck_ibfk_1` FOREIGN KEY (`status`) REFERENCES `status` (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `truck`
--

LOCK TABLES `truck` WRITE;
/*!40000 ALTER TABLE `truck` DISABLE KEYS */;
INSERT INTO `truck` VALUES (2,'Honda',4,500,'',2),(4,'Truck',6000,800,'',1),(7,'hey',12,12,'a1',1),(8,'hey',12,12,'',1),(9,'hey',12,12,'a1',1);
/*!40000 ALTER TABLE `truck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `appointment_details`
--

/*!50001 DROP VIEW IF EXISTS `appointment_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `appointment_details` AS select `a`.`appointment_id` AS `appointment_id`,`r`.`renter_name` AS `renter_name`,`a`.`appointment_date` AS `appointment_date`,`p`.`description` AS `description`,(to_days(`a`.`end_date`) - to_days(`a`.`start_date`)) AS `total_days`,`a`.`start_date` AS `start_date`,`a`.`end_date` AS `end_date` from ((`appointment` `a` join `renter` `r` on((`a`.`renter_id` = `r`.`renter_id`))) join `purpose` `p` on((`a`.`purpose_id` = `p`.`purpose_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `paymentdetails`
--

/*!50001 DROP VIEW IF EXISTS `paymentdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `paymentdetails` AS select `p`.`payment_id` AS `payment_id`,`r`.`rent_id` AS `rent_id`,`p`.`total_amount` AS `total_amount`,`p`.`sub_total` AS `sub_total`,`ps`.`description` AS `description`,`p`.`payment_mode` AS `payment_mode` from ((`payment` `p` join `rent` `r` on((`p`.`rent_id` = `r`.`rent_id`))) join `payment_status` `ps` on((`p`.`payment_status_id` = `ps`.`payment_status_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rentdetails`
--

/*!50001 DROP VIEW IF EXISTS `rentdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rentdetails` AS select `r`.`rent_id` AS `rent_id`,`e`.`employee_name` AS `employee_name`,`t`.`truck_name` AS `truck_name`,`a`.`appointment_id` AS `appointment_id` from (((`rent` `r` join `employee` `e` on((`r`.`employee_id` = `e`.`employee_id`))) join `truck` `t` on((`r`.`truck_id` = `t`.`truck_id`))) join `appointment` `a` on((`r`.`appointment_id` = `a`.`appointment_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-16 12:54:04
