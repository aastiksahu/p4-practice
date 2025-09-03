-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: project04
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `st_college`
--

DROP TABLE IF EXISTS `st_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_college` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `phone_no` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_college`
--

LOCK TABLES `st_college` WRITE;
/*!40000 ALTER TABLE `st_college` DISABLE KEYS */;
INSERT INTO `st_college` VALUES (1,'Ips Academy','Rajendra Nagar','Madhya Pradesh','Indore','9669866628','admin','admin','2025-05-01 20:51:34','2025-05-01 20:51:34'),(2,'Acropolis','Manglia','Madhya Pradesh','Indore','9479514095','admin','admin','2025-05-01 20:51:34','2025-05-01 20:51:34'),(3,'SGSITS','Vallabh Nagar','Madhya Pradesh','Indore','9407126877','admin','admin','2025-05-01 20:51:34','2025-05-01 20:51:34'),(4,'MIT','Dewas Road','Madhya Pradesh','Ujjain','9827071414','admin','admin','2025-05-01 20:51:34','2025-05-01 20:51:34'),(5,'Pranshanti','Gram Gangedi','Madhya Pradesh','Ujjain','9752062272','admin','admin','2025-05-01 20:51:34','2025-05-01 20:51:34'),(6,'Advance','Teen Batti Chauraha','Madhya Pradesh','Ujjain','9907618616','admin','admin','2025-05-01 20:51:34','2025-05-01 20:51:34'),(7,'Madhav ','Dewas Road','Madhya Pradesh','Ujjain','9907755803','admin','admin','2025-05-01 20:51:34','2025-05-01 20:51:34'),(8,'Polytechic','Dewas Road','Madhya Pradesh','Ujjain','9752971920','admin','admin','2025-05-01 20:51:34','2025-05-01 20:51:34'),(9,'Vikram','Dewas road','Madhya Pradesh','Ujjain','9926197350','admin','admin','2025-05-01 20:51:34','2025-05-01 20:51:34'),(10,'Prestige','Scheme No 54','Madhya Pradesh','Indore','9893997843','admin','admin','2025-05-01 20:51:34','2025-05-01 20:51:34'),(11,'Rays','Jaora Copound','Madhya Pradesh','Indore','9827360504','admin','aastik@gmail.com','2025-07-28 17:51:45','2025-07-28 17:51:45');
/*!40000 ALTER TABLE `st_college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_course`
--

DROP TABLE IF EXISTS `st_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_course` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `duration` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_course`
--

LOCK TABLES `st_course` WRITE;
/*!40000 ALTER TABLE `st_course` DISABLE KEYS */;
INSERT INTO `st_course` VALUES (11,'B.Tech','4 Year','B.Tech in Computer Science','admin','admin','2025-05-01 21:01:48','2025-05-01 21:01:48'),(22,'Corporate Java','1 Year','Placement Training ','admin','admin','2025-05-01 21:01:48','2025-05-01 21:01:48'),(33,'Corporate Python','1 Year','Placement Training','admin','admin','2025-05-01 21:01:48','2025-05-01 21:01:48'),(44,'BCA','3 Year','BCA in Computer Science','admin','admin','2025-05-01 21:01:48','2025-05-01 21:01:48'),(55,'MCA','2 Year','MCA in Computer Science','admin','admin','2025-05-01 21:01:48','2025-05-01 21:01:48');
/*!40000 ALTER TABLE `st_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_faculty`
--

DROP TABLE IF EXISTS `st_faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_faculty` (
  `id` bigint NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `college_id` bigint DEFAULT NULL,
  `college_name` varchar(255) DEFAULT NULL,
  `course_id` bigint DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `subject_id` bigint DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_faculty`
--

LOCK TABLES `st_faculty` WRITE;
/*!40000 ALTER TABLE `st_faculty` DISABLE KEYS */;
INSERT INTO `st_faculty` VALUES (700001,'Anshul','Prajapati','2001-03-18 00:00:00','Male','9407126877','anshul@gmail.com',11,'Rays',22,'Corporate Java',4001,'Physics','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(700002,'Sawan','Panwar','1995-06-13 00:00:00','Male','9827071414','sawan@gmail.com',11,'Rays',33,'Corporate Python',7001,'Physics','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(700003,'Chetan','Patidar','2001-04-29 00:00:00','Male','8827850682','chetan@gmail.com',11,'Rays',22,'Corporate Java',4002,'Chemistry','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(700004,'Amit','Kirar','2002-06-17 00:00:00','Male','8120291470','amit@gmail.com',11,'Rays',22,'Corporate Java',4003,'Maths','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(700005,'Akbar','Mansuri','2001-12-09 00:00:00','Male','9755530652','akbar@gmail.com',11,'Rays',33,'Corporate Python',7002,'Chemistry','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(700006,'Sanjana','Gangrade','2000-04-29 00:00:00','Female','7489651401','sanjana@gmail.com',11,'Rays',33,'Corporate Python',7003,'Maths','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(700007,'Jeet','Rathore','1997-04-29 00:00:00','Female','9752971920','jeet@gmail.com',3,'SGSITS',11,'B.Tech',1001,'Physics','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(700008,'Shraddha','Sharma','2000-04-12 00:00:00','Female','7000967143','shraddha@gmail.com',3,'SGSITS',11,'B.Tech',1002,'Chemistry','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(700009,'Neha','Billore','1999-05-08 00:00:00','Female','8656865633','neha@gmail.com',3,'SGSITS',11,'B.Tech',1003,'Maths','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(700011,'Yash','Rathore','1997-02-04 00:00:00','Male','7772885946','yash@gmail.com',10,'Prestige',55,'MCA',9001,'Physics','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(700012,'Priyansh','Bairagi','1998-02-14 00:00:00','Male','9907755803','priyansh@gmail.com',10,'Prestige',55,'MCA',9003,'Maths','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(700013,'Raj','Chourasiya','1998-05-02 00:00:00','Male','7879241253','raj@gmail.com',1,'IPS Academy',44,'BCA',3001,'Physics','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(700014,'Aayush','Kaushik','1997-02-28 00:00:00','Male','9977958886','aayush@gmail.com',1,'IPS Academy',44,'BCA',3002,'Chemistry','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(700015,'Harsha','Purohit','1998-06-18 00:00:00','Female','9827512099','harsha@gmail.com',1,'IPS Academy',44,'BCA',3003,'Maths','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(700016,'Mamta','korde','1976-12-20 00:00:00','Female','9407126877','mamta@gmail.com',1,'Rays',33,'Corporate Java',4003,'Physics','admin','admin','2025-07-08 16:34:53','2025-07-08 16:34:53'),(700017,'Kalpana','Sahu','1976-12-20 00:00:00','Female','9407126877','kalpana@gmail.com',11,'Rays',22,'Corporate Java',9001,'Chemistry','admin','admin','2025-07-08 16:56:58','2025-07-08 16:56:58');
/*!40000 ALTER TABLE `st_faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_marksheet`
--

DROP TABLE IF EXISTS `st_marksheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_marksheet` (
  `id` bigint NOT NULL,
  `roll_no` varchar(45) DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `physics` int DEFAULT NULL,
  `chemistry` int DEFAULT NULL,
  `maths` int DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_marksheet`
--

LOCK TABLES `st_marksheet` WRITE;
/*!40000 ALTER TABLE `st_marksheet` DISABLE KEYS */;
INSERT INTO `st_marksheet` VALUES (1,'2001',101,'Aayush Trivedi',78,85,92,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(2,'2002',102,'Nikhil Dubey',65,72,88,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(3,'2003',103,'Riya Bhandari',92,89,95,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(4,'2004',104,'Mahima Disawal',85,76,81,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5,'2005',105,'Ishita Sharma',73,91,30,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(6,'2006',106,'Harshit Sanghavi',68,79,77,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(7,'2007',107,'Sanyam Gangwal',89,82,90,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(8,'2008',108,'Avi Gangwal',76,85,79,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(9,'2009',109,'Jitesh Bagadiya',81,78,86,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(10,'2010',110,'Ashwin Khatri',94,88,93,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(11,'2011',111,'Aaditya Diwedi',72,30,80,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(12,'2012',112,'Lakshit Chourasiya',83,90,87,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(13,'2013',113,'Mudita Sharma',79,84,91,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(14,'2014',114,'Mahima Shrama',87,77,82,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(15,'2015',115,'Anmol Jain',91,93,89,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(16,'2016',116,'Somil Khan',30,71,75,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(17,'2017',117,'Muskan Bakodiya',84,86,94,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(18,'2018',118,'Ankit Malviya',77,80,83,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(19,'2019',119,'Aditi Thakur',90,92,96,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(20,'2020',120,'Raghav Chandre',71,68,30,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(21,'2021',121,'Mukul Vishwakarma',82,79,85,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(22,'2022',122,'Kamakshi Trivedi',88,87,90,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(23,'2023',123,'Stuti Bhatt',75,83,78,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(24,'2024',124,'Chandni Shukala',93,89,97,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(25,'2025',125,'Yasmin Ahmed',80,75,81,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(26,'2026',126,'Surbhi Laddha',86,91,88,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(27,'2027',127,'Chetna Jamra',32,74,72,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(28,'2028',128,'Shiny Jain',95,94,98,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(29,'2029',129,'Paridhi Pavecha',30,81,76,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(30,'2030',130,'Yogita Shukala',89,85,92,'Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(31,'BE101',101,NULL,89,90,78,'root','aastik@gmail.com','2025-07-29 15:54:09','2025-07-29 15:55:22'),(32,'AE018',132,NULL,73,65,78,'aastiksahu8@gmail.com','aastiksahu8@gmail.com','2025-08-04 16:33:28','2025-08-04 16:34:25');
/*!40000 ALTER TABLE `st_marksheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_role`
--

DROP TABLE IF EXISTS `st_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_role` (
  `id` bigint NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_role`
--

LOCK TABLES `st_role` WRITE;
/*!40000 ALTER TABLE `st_role` DISABLE KEYS */;
INSERT INTO `st_role` VALUES (11111,'Admin','admin','root','root','2025-04-30 20:58:48','2025-04-30 20:58:48'),(22222,'Faculty','Faculty has limited Access.','admin','admin','2025-04-30 21:06:27','2025-04-30 21:06:27'),(33333,'Student','Student has limited Access.','admin','admin','2025-05-01 12:46:42','2025-05-01 12:46:42'),(44444,'Kiosk','Kiosk has limited Access.','admin','admin','2025-05-01 12:47:52','2025-05-01 12:47:52'),(55555,'College','College has limited Access','admin','admin','2025-05-01 12:47:52','2025-05-01 12:47:52');
/*!40000 ALTER TABLE `st_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_student`
--

DROP TABLE IF EXISTS `st_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_student` (
  `id` bigint NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `college_id` bigint DEFAULT NULL,
  `college_name` varchar(255) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_student`
--

LOCK TABLES `st_student` WRITE;
/*!40000 ALTER TABLE `st_student` DISABLE KEYS */;
INSERT INTO `st_student` VALUES (101,'Aayush','Trivedi','2000-05-12 00:00:00','Male','9876543210 ','aayush@gmail.com',11,'Rays','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(102,'Nikhil','Dubey','2003-11-03 00:00:00','Male','9123456789 ','nikhil@gmail.com',3,'SGSITS','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(103,'Riya','Bhandari','2001-07-29 00:00:00','Female','9988776655  ','riya@gmail.com',10,'Prestige','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(104,'Mahima','Disawal','2002-03-17 00:00:00','Female','9090909090  ','mahima@gmail.com',1,'IPS Academy','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(105,'Ishita','Sharma','1999-08-21 00:00:00','Female','9112233445  ','ishita@gmail.com',11,'Rays','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(106,'Harshit','Sanghavi','2004-01-10 00:00:00','Male','8765432109  ','harshit@gmail.com',3,'SGSITS','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(107,'Sanyam','Gangwal','2000-09-05 00:00:00','Male','7987654321  ','sanyam@gmail.com',10,'Prestige','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(108,'Avi','Gangwal','2002-12-25 00:00:00','Male','8877099881  ','avi@gmail.com',1,'IPS Academy','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(109,'Jitesh','Bagadiya','2003-06-14 00:00:00','Male','9345678901  ','jitesh@gmail.com',11,'Rays','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(110,'Ashwin','Khatri','1999-04-08 00:00:00','Male','7890123456  ','ashwin@gmail.com',3,'SGSITS','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(111,'Aaditya','Diwedi','2001-10-22 00:00:00','Male','8500011223  ','aaditya@gmail.com',10,'Prestige','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(112,'Lakshit','Chourasiya','2000-01-01 00:00:00','Male','9820076432  ','lakshit@gmail.com',1,'IPS Academy','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(113,'Mudita','Sharma','2004-07-09 00:00:00','Female','7304567890  ','mudita@gmail.com',11,'Rays','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(114,'Mahima','Shrama','2003-03-30 00:00:00','Female','7012345678  ','mahima@gmail.com',3,'SGSITS','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(115,'Anmol','Jain','2002-05-06 00:00:00','Male','8899077665  ','anmol@gmail.com',10,'Prestige','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(116,'Somil','Khan','1999-12-19 00:00:00','Male','9123045678  ','somil@gmail.com',1,'IPS Academy','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(117,'Muskan','Bakodiya','2001-02-11 00:00:00','Female','9812345670  ','muskan@gmail.com',11,'Rays','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(118,'Ankit','Malviya','2000-11-28 00:00:00','Male','9533112233  ','ankit@gmail.com',3,'SGSITS','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(119,'Aditi','Thakur','2004-03-03 00:00:00','Female','8200133445  ','aditi@gmail.com',10,'Prestige','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(120,'Raghav','Chandre','1999-07-16 00:00:00','Male','7985124680  ','raghav@gmail.com',1,'IPS Academy','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(121,'Mukul','Vishwakarma','2002-09-20 00:00:00','Male','8754321098  ','mukul@gmail.com',11,'Rays','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(122,'Kamakshi','Trivedi','2003-08-27 00:00:00','Female','9845012345  ','kamakshi@gmail.com',3,'SGSITS','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(123,'Stuti','Bhatt','2001-05-01 00:00:00','Female','9011223344  ','stuti@gmail.com',10,'Prestige','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(124,'Chandni','Shukala','2000-03-19 00:00:00','Female','9900011122  ','chandni@gmail.com',1,'IPS Academy','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(125,'Yasmin','Ahmed','2004-11-18 00:00:00','Female','9733123456  ','yasmin@gmail.com',11,'Rays','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(126,'Surbhi','Laddha','1999-10-10 00:00:00','Female','7860099887  ','surbhi@gmail.com',3,'SGSITS','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(127,'Chetna','Jamra','2001-12-07 00:00:00','Female','8888877766  ','chetna@gmail.com',10,'Prestige','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(128,'Shiny','Jain','2003-02-24 00:00:00','Female','9678912345  ','shiny@gmail.com',1,'IPS Academy','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(129,'Paridhi','Pavecha','2002-06-30 00:00:00','Female','7000011223  ','paridhi@gmail.com',11,'Rays','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(130,'Yogita','Shukala','2004-08-15 00:00:00','Female','9032112345','yogita@gmail.com',3,'SGSITS','Faculty','Faculty','2025-05-01 21:18:42','2025-05-01 21:18:42'),(131,'Aastik','Sahu','1998-02-03 00:00:00','Male','9669866628','aastik@gmail.com',1,'IPS Academy','Faculty','Faculty','2025-07-09 10:16:05','2025-07-09 10:16:05'),(132,'test','test','0014-02-15 00:00:00','Male','9926197350','test@gmail.com',4,'MIT','aastik@gmail.com','aastik@gmail.com','2025-07-28 23:51:07','2025-07-28 23:51:07');
/*!40000 ALTER TABLE `st_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_subject`
--

DROP TABLE IF EXISTS `st_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_subject` (
  `id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `course_id` bigint DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_subject`
--

LOCK TABLES `st_subject` WRITE;
/*!40000 ALTER TABLE `st_subject` DISABLE KEYS */;
INSERT INTO `st_subject` VALUES (1001,'Physics bt',11,'B.Tech','B.Tech is a Gradutation Course','admin','admin','2025-05-01 23:11:14','2025-05-01 23:11:14'),(1002,'Chemistry bt',11,'B.Tech','B.Tech is a Gradutation Course','admin','admin','2025-05-01 23:11:14','2025-05-01 23:11:14'),(1003,'Maths bt',11,'B.Tech','B.Tech is a Gradutation Course','admin','admin','2025-05-01 23:11:14','2025-05-01 23:11:14'),(3001,'Physics bc',44,'BCA','BCA  is a Gradutation Course','admin','admin','2025-05-01 23:11:14','2025-05-01 23:11:14'),(3002,'Chemistry bc',44,'BCA','BCA  is a Gradutation Course','admin','admin','2025-05-01 23:11:14','2025-05-01 23:11:14'),(3003,'Maths bc',44,'BCA','BCA  is a Gradutation Course','admin','admin','2025-05-01 23:11:14','2025-05-01 23:11:14'),(4001,'Physics cj',22,'Corporate Java','Corporate Java is a Placement training course','admin','admin','2025-05-01 23:11:14','2025-05-01 23:11:14'),(4002,'Chemistry cj',22,'Corporate Java','Corporate Java is a Placement training course','admin','admin','2025-05-01 23:11:14','2025-05-01 23:11:14'),(4003,'Maths cj',22,'Corporate Java','Corporate Java is a Placement training course','admin','admin','2025-05-01 23:11:14','2025-05-01 23:11:14'),(7001,'Physics cp',33,'Corporate Python','Corporate Python is a Placement training course','admin','admin','2025-05-01 23:11:14','2025-05-01 23:11:14'),(7002,'Chemistry cp',33,'Corporate Python','Corporate Python is a Placement training course','admin','admin','2025-05-01 23:11:14','2025-05-01 23:11:14'),(7003,'Maths cp',33,'Corporate Python','Corporate Python is a Placement training course','admin','admin','2025-05-01 23:11:14','2025-05-01 23:11:14'),(9001,'Physics mc',55,'MCA','MCA is a Gradutation Course','admin','admin','2025-05-01 23:11:14','2025-05-01 23:11:14'),(9002,'Chemistry mc',55,'MCA','MCA is a Gradutation Course','admin','admin','2025-05-01 23:11:14','2025-05-01 23:11:14'),(9003,'Maths mc',55,'MCA','MCA is a Gradutation Course','admin','admin','2025-05-01 23:11:14','2025-05-01 23:11:14'),(9004,'Aastik',22,'Corporate Java','Corporate Java is a Placement training course','admin','admin','2025-07-09 10:23:41','2025-07-09 10:23:41');
/*!40000 ALTER TABLE `st_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_timetable`
--

DROP TABLE IF EXISTS `st_timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_timetable` (
  `id` bigint NOT NULL,
  `semester` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `exam_date` datetime DEFAULT NULL,
  `exam_time` varchar(45) DEFAULT NULL,
  `course_id` bigint DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `subject_id` bigint DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_timetable`
--

LOCK TABLES `st_timetable` WRITE;
/*!40000 ALTER TABLE `st_timetable` DISABLE KEYS */;
INSERT INTO `st_timetable` VALUES (767,'8th','Computer Science','2025-06-14 00:00:00','9 to 12',11,'B.Tech',1001,'Physics','Faculty','Faculty','2025-05-01 23:23:27','2025-05-01 23:23:27'),(768,'4th','Computer Science','2025-06-17 00:00:00','9 to 12',11,'B.Tech',1002,'Chemistry','Faculty','Faculty','2025-05-01 23:23:27','2025-05-01 23:23:27'),(769,'1st','Computer Science','2025-06-20 00:00:00','9 to 12',11,'B.Tech',1003,'Maths','Faculty','Faculty','2025-05-01 23:23:27','2025-05-01 23:23:27'),(770,'1st','Placement Training','2025-06-14 00:00:00','2 to 5',22,'Corporate Java',4001,'Physics','Faculty','Faculty','2025-05-01 23:23:27','2025-05-01 23:23:27'),(771,'2nd','Placement Training','2025-06-17 00:00:00','2 to 5',22,'Corporate Java',4002,'Chemistry','Faculty','Faculty','2025-05-01 23:23:27','2025-05-01 23:23:27'),(772,'1st','Placement Training','2025-06-17 00:00:00','2 to 5',22,'Corporate Java',4003,'Maths','Faculty','Faculty','2025-05-01 23:23:27','2025-05-01 23:23:27'),(773,'2nd','Placement Training','2025-06-14 00:00:00','10 to 1',33,'Corporate Python',7001,'Physics','Faculty','Faculty','2025-05-01 23:23:27','2025-05-01 23:23:27'),(774,'2nd','Placement Training','2025-06-17 00:00:00','10 to 1',33,'Corporate Python',7002,'Chemistry','Faculty','Faculty','2025-05-01 23:23:27','2025-05-01 23:23:27'),(775,'1st','Placement Training','2025-06-17 00:00:00','10 to 1',33,'Corporate Python',7003,'Maths','Faculty','Faculty','2025-05-01 23:23:27','2025-05-01 23:23:27'),(776,'3rd','Computer  Application','2025-06-14 00:00:00','11 to 2',44,'BCA',3001,'Physics','Faculty','Faculty','2025-05-01 23:23:27','2025-05-01 23:23:27'),(777,'5th','Computer  Application','2025-06-17 00:00:00','11 to 2',44,'BCA',3002,'Chemistry','Faculty','Faculty','2025-05-01 23:23:27','2025-05-01 23:23:27'),(778,'6th','Computer  Application','2025-06-17 00:00:00','11 to 2',44,'BCA',3003,'Maths','Faculty','Faculty','2025-05-01 23:23:27','2025-05-01 23:23:27'),(779,'1st','Computer  Application','2025-06-14 00:00:00','12 to 3',55,'MCA',9001,'Physics','Faculty','Faculty','2025-05-01 23:23:27','2025-05-01 23:23:27'),(780,'3rd','Computer  Application','2025-06-17 00:00:00','12 to 3',55,'MCA',9002,'Chemistry','Faculty','Faculty','2025-05-01 23:23:27','2025-05-01 23:23:27'),(781,'2nd','Computer  Application','2025-06-17 00:00:00','12 to 3',55,'MCA',9003,'Maths','Faculty','Faculty','2025-05-01 23:23:27','2025-05-01 23:23:27'),(782,'4','test','2025-09-03 00:00:00','08:00 AM to 11:00 AM',11,'B.Tech',1001,'Physics bt','aastiksahu8@gmail.com','aastiksahu8@gmail.com','2025-08-06 15:36:11','2025-08-06 15:36:24');
/*!40000 ALTER TABLE `st_timetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_user`
--

DROP TABLE IF EXISTS `st_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_user` (
  `id` bigint NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `modified_by` varchar(45) DEFAULT NULL,
  `created_datetime` datetime DEFAULT NULL,
  `modified_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_user`
--

LOCK TABLES `st_user` WRITE;
/*!40000 ALTER TABLE `st_user` DISABLE KEYS */;
INSERT INTO `st_user` VALUES (5262,'Aastik','Sahu','aastiksahu8@gmail.com','Aastik@123','1998-02-03 00:00:00','9669866628',11111,'Male','root','root','2025-05-01 21:18:42','2025-05-01 21:18:42'),(5263,'Anshul','Prajapati','anshul@gmail.com','Anshul@123','0023-08-22 00:00:00','9407126877',22222,'Male','aastik@gmail.com','aastik@gmail.com','2025-05-30 11:31:57','2025-07-21 21:40:49'),(5264,'Sawan','Panwar','sawan@gmail.com','Sawan@123','1995-06-13 00:00:00','9827071414',22222,'Male','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(5265,'Chetan','Patidar','chetan50682@gmail.com','Chetan@123','2001-04-29 00:00:00','8827850682',22222,'Male','aastik@gmail.com','aastik@gmail.com','2025-05-30 11:23:05','2025-05-30 11:23:05'),(5266,'Amit','Kirar','amit@gmail.com','Amit@123','2002-06-17 00:00:00','8120291470',22222,'Male','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(5267,'Akbar','Mansuri','akbar@gmail.com','Akbar@123','2001-12-09 00:00:00','9755530652',22222,'Male','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(5268,'Sanjana','Gangrade','sanjana@gmail.com','Sanjana@123','2000-04-29 00:00:00','7489651401',22222,'Female','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(5269,'Jeet','Rathore','jeet@gmail.com','Jeet@123','1997-04-29 00:00:00','9752971920',22222,'Female','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(5270,'Shraddha','Sharma','shraddha@gmail.com','Shraddha@123','2000-04-12 00:00:00','7000967143',22222,'Female','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(5271,'Neha','Billore','neha@gmail.com','Neha@123','1999-05-08 00:00:00','8656865633',22222,'Female','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(5272,'Shubham','Sahu','shubham@gmail.com','Shubham@123','1997-07-25 00:00:00','9752062272',22222,'Male','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(5273,'Yash','Rathore','yash@gmail.com','Yash@123','1997-02-04 00:00:00','7772885946',22222,'Male','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(5274,'Priyansh','Bairagi','priyansh@gmail.com','Priyansh@123','1998-02-14 00:00:00','9907755803',22222,'Male','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(5275,'Raj','Chourasiya','raj@gmail.com','Raj@123','1998-05-02 00:00:00','7879241253',22222,'Male','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(5276,'Aayush','Kaushik','aayush@gmail.com','Aayush@123','1997-02-28 00:00:00','9977958886',22222,'Male','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(5277,'Harsha','Purohit','harsha@gmail.com','Harsha@123','1998-06-18 00:00:00','9827512099',22222,'Female','admin','admin','2025-05-01 21:18:42','2025-05-01 21:18:42'),(5278,'Aayush','Trivedi','aayush@gmail.com','aayush@123','2000-05-12 00:00:00','9876543210',33333,'Male','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5279,'Nikhil','Dubey','nikhil@gmail.com','nikhil@123','2003-11-03 00:00:00','9123456789',33333,'Male','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5280,'Riya','Bhandari','riya@gmail.com','riya@123','2001-07-29 00:00:00','9988776655',33333,'Female','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5281,'Mahima','Disawal','mahima@gmail.com','mahima@123','2002-03-17 00:00:00','9090909090',33333,'Female','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5282,'Ishita','Sharma','ishita@gmail.com','ishita@123','1999-08-21 00:00:00','9112233445',33333,'Female','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5283,'Harshit','Sanghavi','harshit@gmail.com','harshit@123','2004-01-10 00:00:00','8765432109',33333,'Male','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5284,'Sanyam','Gangwal','sanyam@gmail.com','sanyam@123','2000-09-05 00:00:00','7987654321',33333,'Male','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5285,'Avi','Gangwal','avi@gmail.com','avi@123','2002-12-25 00:00:00','8877099881',33333,'Male','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5286,'Jitesh','Bagadiya','jitesh@gmail.com','jitesh@123','2003-06-14 00:00:00','9345678901',33333,'Male','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5287,'Ashwin','Khatri','ashwin@gmail.com','ashwin@123','1999-04-08 00:00:00','7890123456',33333,'Male','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5288,'Aaditya','Diwedi','aaditya@gmail.com','aaditya@123','2001-10-22 00:00:00','8500011223',33333,'Male','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5289,'Lakshit','Chourasiya','lakshit@gmail.com','lakshit@123','2000-01-01 00:00:00','9820076432',33333,'Male','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5290,'Mudita','Sharma','mudita@gmail.com','mudita@123','2004-07-09 00:00:00','7304567890',33333,'Female','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5291,'Mahima','Shrama','mahima@gmail.com','mahima@123','2003-03-30 00:00:00','7012345678',33333,'Female','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5292,'Anmol','Jain','anmol@gmail.com','anmol@123','2002-05-06 00:00:00','8899077665',33333,'Male','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5293,'Somil','Khan','somil@gmail.com','somil@123','1999-12-19 00:00:00','9123045678',33333,'Male','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5294,'Muskan','Bakodiya','muskan@gmail.com','muskan@123','2001-02-11 00:00:00','9812345670',33333,'Female','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5295,'Ankit','Malviya','ankit@gmail.com','ankit@123','2000-11-28 00:00:00','9533112233',33333,'Male','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5296,'Aditi','Thakur','aditi@gmail.com','aditi@123','2004-03-03 00:00:00','8200133445',33333,'Female','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5297,'Raghav','Chandre','raghav@gmail.com','raghav@123','1999-07-16 00:00:00','7985124680',33333,'Male','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5298,'Mukul','Vishwakarma','mukul@gmail.com','mukul@123','2002-09-20 00:00:00','8754321098',33333,'Male','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5299,'Kamakshi','Trivedi','kamakshi@gmail.com','kamakshi@123','2003-08-27 00:00:00','9845012345',33333,'Female','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5300,'Stuti','Bhatt','stuti@gmail.com','stuti@123','2001-05-01 00:00:00','9011223344',33333,'Female','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5301,'Chandni','Shukala','chandni@gmail.com','chandni@123','2000-03-19 00:00:00','9900011122',33333,'Female','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5302,'Yasmin','Ahmed','yasmin@gmail.com','yasmin@123','2004-11-18 00:00:00','9733123456',33333,'Female','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5303,'Surbhi','Laddha','surbhi@gmail.com','surbhi@123','1999-10-10 00:00:00','7860099887',33333,'Female','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5304,'Chetna','Jamra','chetna@gmail.com','chetna@123','2001-12-07 00:00:00','8888877766',33333,'Female','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5305,'Shiny','Jain','shiny@gmail.com','shiny@123','2003-02-24 00:00:00','9678912345',33333,'Female','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5306,'Paridhi','Pavecha','paridhi@gmail.com','paridhi@123','2002-06-30 00:00:00','7000011223',33333,'Female','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5307,'Yogita','Shukala','yogita@gmail.com','yogita@123','2004-08-15 00:00:00','9032112345',33333,'Female','Faculty','Faculty','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5308,'Kanak','Soni','kanak@gmail.com','kanak@123','2002-06-17 00:00:00','7542378764',44444,'Female','admin','admin','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5309,'Uday','Dabi','uday@gmail.com','uday@123','2001-05-01 21:18:00','9752971368',44444,'Male','admin','admin','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5310,'Khush','Bhawsar','khush@gmail.com','khush@123','2003-07-18 21:18:00','7000365245',44444,'Male','admin','admin','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5311,'Mohit','Sharma','mohit@gmail.com','mohit@123','1998-08-26 21:18:00','7878426519',44444,'Male','admin','admin','2025-05-01 21:18:00','2025-05-01 21:18:00'),(5312,'Swati','Gupta','swatigupta7840@gmail.com','Swati@123','0026-11-21 00:00:00','8546123545',33333,'Female','root','root','2025-08-04 15:58:02','2025-08-04 15:58:02');
/*!40000 ALTER TABLE `st_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 16:27:55
