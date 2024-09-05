-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitalmgtsys
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `h_appointment`
--

DROP TABLE IF EXISTS `h_appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `h_appointment` (
  `ID` bigint NOT NULL,
  `firstName` varchar(225) DEFAULT NULL,
  `lastName` varchar(225) DEFAULT NULL,
  `doctorName` varchar(225) DEFAULT NULL,
  `deceased` varchar(225) DEFAULT NULL,
  `time` varchar(225) DEFAULT NULL,
  `appDate` date DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DoctorId` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_appointment`
--

LOCK TABLES `h_appointment` WRITE;
/*!40000 ALTER TABLE `h_appointment` DISABLE KEYS */;
INSERT INTO `h_appointment` VALUES (1,'Ivor Rocha','Ginger Ellison','Gillian Gill','Eius qui distinctio','10:00pm','2018-10-02','8565956865','Laudantium omnis vo','Admin123','Admin123','2020-07-20 11:02:15','2019-05-07 07:26:10',2),(2,'ROhit','Patel','Lael Snyder Mary Franks','FFFF','10:00pm','2018-10-02','9565456525','FFF','Admin123','Admin123','2020-07-20 11:02:11','2019-05-07 07:36:21',2),(3,'Addison Gibson','Reece Trevino','Lael Snyder Mary Franks','Nulla dicta hic temp','10 : 00 AM','2020-07-20','Cumque qui voluptate','Tenetur sit aliquam','Admin123','Admin123','2020-07-20 10:52:15','2020-07-20 10:52:15',2);
/*!40000 ALTER TABLE `h_appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `h_patient`
--

DROP TABLE IF EXISTS `h_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `h_patient` (
  `ID` bigint NOT NULL,
  `firstName` varchar(225) DEFAULT NULL,
  `lastName` varchar(225) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `age` varchar(225) DEFAULT NULL,
  `bloodGroup` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `city` varchar(225) DEFAULT NULL,
  `CNIC` varchar(225) DEFAULT NULL,
  `maritialStatus` varchar(225) DEFAULT NULL,
  `emailId` varchar(225) DEFAULT NULL,
  `doctorName` varchar(225) DEFAULT NULL,
  `deceased` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `DoctorId` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_patient`
--

LOCK TABLES `h_patient` WRITE;
/*!40000 ALTER TABLE `h_patient` DISABLE KEYS */;
INSERT INTO `h_patient` VALUES (1,'Adam Berg','Reagan Marquez','1992-12-06','9565685858','Male','21','A+','Sed aut ut molestias','In lorem eos magni e','Cupiditate enim id e','UnMarried','tuzyxiwu@mailinator.net','Dr Patel','Placeat laboris ips','Admin123','Admin123','2020-07-20 11:02:05','2019-05-07 07:25:47',2),(2,'Keefe Davenport','Shafira Knowles','1991-10-06','8565956865','Male','25','B+','Praesentium quo ut e','gggg','Sunt dolor molestia','Married','tazuke@mailinator.net','Lael Snyder Mary Franks','Architecto dolor vol','Admin123','Admin123','2020-07-20 11:02:01','2019-05-07 07:37:12',2),(3,'Allegra Buckley','Odette Cooke','1997-07-20','9685956845','Male','23','A+','Vero quisquam quas d','Reiciendis veritatis','51616843542135','UnMarried','wiguli@mailinator.com','Lael Snyder Mary Franks','Impedit accusamus p','Admin123','Admin123','2020-07-20 09:31:25','2020-07-20 10:57:45',2);
/*!40000 ALTER TABLE `h_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `h_role`
--

DROP TABLE IF EXISTS `h_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `h_role` (
  `ID` bigint NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_role`
--

LOCK TABLES `h_role` WRITE;
/*!40000 ALTER TABLE `h_role` DISABLE KEYS */;
INSERT INTO `h_role` VALUES (1,'Admin','Adminisration',NULL,NULL,'2019-04-30 08:16:16','2019-04-30 08:16:03'),(2,'Doctor','Doctor',NULL,NULL,'2019-04-30 08:16:21','2019-04-30 08:16:07'),(3,'Receptionist','Receptionist',NULL,NULL,'2019-04-30 08:16:25','2019-04-30 08:16:10');
/*!40000 ALTER TABLE `h_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `h_user`
--

DROP TABLE IF EXISTS `h_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `h_user` (
  `ID` bigint NOT NULL,
  `firstName` varchar(225) DEFAULT NULL,
  `lastName` varchar(225) DEFAULT NULL,
  `login` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `roleId` bigint DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `age` varchar(225) DEFAULT NULL,
  `spcialization` varchar(2225) DEFAULT NULL,
  `bloodGroup` varchar(225) DEFAULT NULL,
  `address` varchar(2225) DEFAULT NULL,
  `city` varchar(225) DEFAULT NULL,
  `CNIC` varchar(225) DEFAULT NULL,
  `maritialStatus` varchar(225) DEFAULT NULL,
  `joiningDate` date DEFAULT NULL,
  `Qualification` varchar(225) DEFAULT NULL,
  `emailId` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `h_user`
--

LOCK TABLES `h_user` WRITE;
/*!40000 ALTER TABLE `h_user` DISABLE KEYS */;
INSERT INTO `h_user` VALUES (1,'Admin','Admin','Admin123','321','2019-04-23','8956525353',1,'Male','21','Administrator','A+','Nihil rerum molestia','Indore','Indore',NULL,'2019-04-30',NULL,'Admin@gmail.com',NULL,NULL,'2024-09-04 12:27:29','2019-04-30 09:06:41'),(2,'Zack','Snyder','Doctor123','123','1997-10-06','8956525354',2,'Male','21','Pediatrist','01','Example Address','Chicago','Dolor amet voluptas','Single','2010-10-06','Doctor','becyxasizu@mailinator.net','Admin123','Admin123','2024-09-04 12:25:45','2019-05-01 07:35:26'),(3,'Hariom','Mukati','Receptionist123','123','1998-10-06','9165415598',3,'Male','20','Gynecology','A+','Amet maiores quisqu','Indore','Indore',NULL,'2010-10-06','Laborum illum cillu','hihyduta@mailinator.com','Admin123','Admin123','2024-09-04 12:27:29','2019-05-01 07:50:03'),(4,'John','Doe','johndoe','pass123','1980-01-15','8912345678',2,'Male','44','Cardiology','O+','123 Heart Lane','New York','1234567890123','Married','2010-05-20','MD','john.doe@example.com','Admin',NULL,'2019-01-01 08:00:00','2019-01-01 08:30:00'),(5,'Emily','Smith','emilysmith','emily123','1985-03-22','8901234567',2,'Female','39','Neurology','A-','456 Brain Avenue','Los Angeles','2345678901234','Single','2011-08-15','MD','emily.smith@example.com','Admin',NULL,'2019-01-02 09:00:00','2019-01-02 09:30:00'),(6,'Michael','Brown','michaelbrown','mike123','1978-07-10','8923456789',2,'Male','46','Orthopedics','B+','789 Bone Road','Chicago','3456789012345','Married','2009-12-12','MD','michael.brown@example.com','Admin',NULL,'2019-01-03 10:00:00','2019-01-03 10:30:00'),(7,'Sarah','Johnson','sarahjohnson','sarah123','1990-11-05','8934567890',2,'Female','33','Pediatrics','AB+','101 Child Street','Houston','4567890123456','Single','2015-07-01','MD','sarah.johnson@example.com','Admin',NULL,'2019-01-04 11:00:00','2019-01-04 11:30:00'),(8,'David','Williams','davidwilliams','david123','1982-04-18','8945678901',2,'Male','42','Dermatology','O-','202 Skin Boulevard','Phoenix','5678901234567','Married','2012-03-23','MD','david.williams@example.com','Admin',NULL,'2019-01-05 12:00:00','2019-01-05 12:30:00'),(9,'Jessica','Jones','jessicajones','jessica123','1975-02-28','8956789012',2,'Female','49','Gynecology','A+','303 Women Ave','San Diego','6789012345678','Married','2008-06-18','MD','jessica.jones@example.com','Admin',NULL,'2019-01-06 13:00:00','2019-01-06 13:30:00'),(10,'Chris','Miller','chrismiller','chris123','1988-08-11','8967890123',2,'Male','36','Oncology','B-','404 Cancer Road','Philadelphia','7890123456789','Single','2016-11-09','MD','chris.miller@example.com','Admin',NULL,'2019-01-07 14:00:00','2019-01-07 14:30:00'),(11,'Nancy','Davis','nancydavis','nancy123','1986-06-09','8978901234',2,'Female','38','Ophthalmology','AB-','505 Eye Drive','San Antonio','8901234567890','Married','2013-09-02','MD','nancy.davis@example.com','Admin',NULL,'2019-01-08 15:00:00','2019-01-08 15:30:00'),(12,'Jason','Garcia','jasongarcia','jason123','1991-09-30','8989012345',2,'Male','32','ENT','O+','606 Ear Street','Dallas','9012345678901','Single','2014-05-10','MD','jason.garcia@example.com','Admin',NULL,'2019-01-09 16:00:00','2019-01-09 16:30:00'),(13,'Karen','Martinez','karenmartinez','karen123','1984-12-19','8990123456',2,'Female','39','Rheumatology','B+','707 Joint Avenue','San Jose','0123456789012','Married','2010-02-14','MD','karen.martinez@example.com','Admin',NULL,'2019-01-10 17:00:00','2019-01-10 17:30:00'),(14,'Linda','Hernandez','lindahernandez','linda123','1989-07-07','8912345678',2,'Female','35','Endocrinology','A-','909 Gland Lane','San Francisco','2345678901234','Single','2016-08-20','MD','linda.hernandez@example.com','Admin',NULL,'2019-01-12 09:00:00','2019-01-12 09:30:00'),(15,'James','Clark','jamesclark','james123','1986-10-25','8923456789',2,'Male','37','Gastroenterology','B-','1010 Stomach Road','Seattle','3456789012345','Married','2012-12-22','MD','james.clark@example.com','Admin',NULL,'2019-01-13 10:00:00','2019-01-13 10:30:00'),(16,'Barbara','Lewis','barbaralewis','barbara123','1987-12-03','8934567890',2,'Female','36','Hematology','AB+','1111 Blood Lane','Washington','4567890123456','Single','2017-03-11','MD','barbara.lewis@example.com','Admin',NULL,'2019-01-14 11:00:00','2019-01-14 11:30:00'),(17,'William','Walker','williamwalker','william123','1985-02-14','8945678901',2,'Male','39','Pulmonology','O+','1212 Lung Avenue','Boston','5678901234567','Married','2013-05-06','MD','william.walker@example.com','Admin',NULL,'2019-01-15 12:00:00','2019-01-15 12:30:00'),(18,'Elizabeth','Hall','elizabethhall','elizabeth123','1982-08-30','8956789012',2,'Female','42','Psychiatry','A+','1313 Mind Road','Miami','6789012345678','Single','2009-07-24','MD','elizabeth.hall@example.com','Admin',NULL,'2019-01-16 13:00:00','2019-01-16 13:30:00'),(19,'Mark','Young','markyoung','mark123','1979-05-17','8967890123',2,'Male','45','Radiology','B-','1414 X-Ray Avenue','Denver','7890123456789','Married','2007-01-01','MD','mark.young@example.com','Admin',NULL,'2019-01-17 14:00:00','2019-01-17 14:30:00'),(20,'Susan','Allen','susanallen','susan123','1993-04-11','8978901234',2,'Female','31','Anesthesiology','AB-','1515 Sleep Lane','Las Vegas','8901234567890','Single','2018-11-30','MD','susan.allen@example.com','Admin',NULL,'2019-01-18 15:00:00','2019-01-18 15:30:00'),(21,'Steven','King','stevenking','steven123','1977-11-27','8989012345',2,'Male','46','Emergency Medicine','O-','1616 ER Road','Nashville','9012345678901','Married','2005-10-19','MD','steven.king@example.com','Admin',NULL,'2019-01-19 16:00:00','2019-01-19 16:30:00'),(22,'Sandra','Lopez','sandralopez','sandra123','1981-03-01','8990123456',2,'Female','43','Infectious Diseases','B+','1717 Virus Avenue','Charlotte','0123456789012','Single','2014-04-03','MD','sandra.lopez@example.com','Admin',NULL,'2019-01-20 17:00:00','2019-01-20 17:30:00');
/*!40000 ALTER TABLE `h_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-05 10:33:53