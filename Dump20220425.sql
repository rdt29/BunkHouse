CREATE DATABASE  IF NOT EXISTS `bunkhouse` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bunkhouse`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: bunkhouse
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
-- Table structure for table `add_new_property`
--

DROP TABLE IF EXISTS `add_new_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_new_property` (
  `Property Id` varchar(500) NOT NULL,
  `Accommodation type` varchar(500) NOT NULL,
  `Accommodation Name` varchar(1000) NOT NULL,
  `City` varchar(500) NOT NULL,
  `State` varchar(500) NOT NULL,
  `Pincode` varchar(500) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `LandMark` varchar(500) NOT NULL,
  `Total Rooms` varchar(500) NOT NULL,
  `Single_bed_Ac_Rooms` varchar(500) NOT NULL,
  `Single_bed_Non_Ac_Rooms` varchar(500) NOT NULL,
  `Double_bed_Ac_Rooms` varchar(500) NOT NULL,
  `Double_Bed_Non_Ac_Room` varchar(500) NOT NULL,
  `Wifi` varchar(500) NOT NULL,
  `Water Coller` varchar(500) NOT NULL,
  `Insertedby` varchar(1000) NOT NULL,
  `Sin_Bed_Ac_Rate` varchar(1000) NOT NULL,
  `Sin_Bed_Non-ac_ Rate` varchar(1000) NOT NULL,
  `Double_bed_ac_rate` varchar(1000) NOT NULL,
  `Double_bed_Non-ac_rate` varchar(1000) NOT NULL,
  `Contact_No` varchar(1000) NOT NULL,
  `Location` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`Property Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_new_property`
--

LOCK TABLES `add_new_property` WRITE;
/*!40000 ALTER TABLE `add_new_property` DISABLE KEYS */;
INSERT INTO `add_new_property` VALUES ('7982','Hostel','Sarthi Hostel','Bhopal','Madhya Pradesh','462021','Indrapuri bhopal','near AmPm cafe','10','5','2','2','1','Yes','Yes','shachisoni0352@gmail.com','5000','3000','3000','3000','09826329937','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d458.221184388472!2d77.46550062989199!3d23.251474325037734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x397c42015aaaaaab%3A0xebf79dba6ff77fea!2sSarthi%201%20girls%20hostel!5e0!3m2!1sen!2sin!4v1650825070409!5m2!1sen!2sin'),('9922','Hostel','Gurukripa Girls Hostel','indore','Madhya Pradesh','462021','Indore','Bhwarkuya','20','5','5','5','5','No','Yes','shachisoni0352@gmail.com','4000','4000','2000','2000','9981695406','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3666.447677396964!2d77.42611831396073!3d23.226790914495407!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x397c425f2ecf6605%3A0xd9a685fb1482a7bf!2sGuru%20Kripa%20Girls%20Hostel!5e0!3m2!1sen!2sin!4v1650825277946!5m2!1sen!2sin');
/*!40000 ALTER TABLE `add_new_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_details`
--

DROP TABLE IF EXISTS `booking_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_details` (
  `Name` varchar(1000) NOT NULL,
  `Email` varchar(1000) NOT NULL,
  `Bunk_Orderid` varchar(500) NOT NULL,
  `Contactno` varchar(1000) NOT NULL,
  `Id_proof` varchar(1000) NOT NULL,
  `City` varchar(1000) NOT NULL,
  `State` varchar(1000) NOT NULL,
  `Room_type` varchar(1000) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `Pincode` varchar(1000) NOT NULL,
  `Property_name` varchar(1000) NOT NULL,
  `Property_id` varchar(1000) NOT NULL,
  `Status` varchar(1000) NOT NULL,
  PRIMARY KEY (`Bunk_Orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_details`
--

LOCK TABLES `booking_details` WRITE;
/*!40000 ALTER TABLE `booking_details` DISABLE KEYS */;
INSERT INTO `booking_details` VALUES ('Rajdeep tiwari','rdt2922@gmail.com','BH-3115906076','12121212','1212122','nsp','mp','Single_bed_Ac_Rooms','hb coloney','487001','Sarthi Hostel','7982','Not paid'),('Rajdeep tiwari','rdt2922@gmail.com','BH-7132141521','12321','231','nsp','mp','Single_bed_Non_Ac_Rooms','hb coloney','487001','Sarthi Hostel','7982','Not paid');
/*!40000 ALTER TABLE `booking_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proprietor`
--

DROP TABLE IF EXISTS `proprietor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proprietor` (
  `Name` varchar(1000) DEFAULT NULL,
  `Email` varchar(1000) NOT NULL,
  `Password` varchar(1000) DEFAULT NULL,
  `Contactno` varchar(500) NOT NULL,
  PRIMARY KEY (`Contactno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proprietor`
--

LOCK TABLES `proprietor` WRITE;
/*!40000 ALTER TABLE `proprietor` DISABLE KEYS */;
INSERT INTO `proprietor` VALUES ('Shachi Soni','shachisoni0352@gmail.com','shachi12321','6260674435'),('Yashika','yashikakumari145@gmail.com','Yashika@123','7545893729'),('Shruti Shrivastava','shrutishrivastavaa29@gmail.com','shruti12321','9179375960'),('Rajdeep tiwari','rdt2922@gmail.com','123456789','9981695406');
/*!40000 ALTER TABLE `proprietor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_login`
--

DROP TABLE IF EXISTS `student_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_login` (
  `Name` varchar(1000) NOT NULL,
  `Email` varchar(1000) NOT NULL,
  `Password` varchar(1000) NOT NULL,
  `Contactno` varchar(500) NOT NULL,
  PRIMARY KEY (`Contactno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_login`
--

LOCK TABLES `student_login` WRITE;
/*!40000 ALTER TABLE `student_login` DISABLE KEYS */;
INSERT INTO `student_login` VALUES ('Shachi Soni','shachisoni03@gmail.com','12345678','6260674435'),('Shachi Soni','S1@gmail.com','shachi@3','7674983450'),('Rajdeep tiwari','rdt2923@gmail.com','123456789','7879260020'),('rdt','rdt2922@gmail.com','rajdeep12321','9981695406');
/*!40000 ALTER TABLE `student_login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-25 15:29:51
