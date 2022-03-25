CREATE DATABASE  IF NOT EXISTS `escuela` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `escuela`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: escuela
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
-- Table structure for table `degree`
--

DROP TABLE IF EXISTS `degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `degree` (
  `id` int NOT NULL AUTO_INCREMENT,
  `degree` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degree`
--

LOCK TABLES `degree` WRITE;
/*!40000 ALTER TABLE `degree` DISABLE KEYS */;
INSERT INTO `degree` VALUES (1,'Secundaria'),(2,'Preparatoria');
/*!40000 ALTER TABLE `degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(100) NOT NULL,
  `positivo` int DEFAULT NULL,
  `negativo` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Dificultad Para Respirar',2,0),(2,'Dolor Toracico',2,0),(3,'Fiebre',2,0),(4,'Dolor de cabeza',2,0),(5,'Tos',2,0),(6,'Dolor o ardor de garganta',1,0),(7,'Dolor muscular',1,0),(8,'Escalofrios',1,0),(9,'Dolor o inflamacion en ojos',1,0),(10,'Dolor en articulaciones',1,0),(11,'Sudoracion',1,0),(12,'Congestion nasal',1,0),(13,'Fatiga y/o debilidad',1,0),(14,'Diarrea/Nausea/Vomito',1,0),(15,'¿Has tenido contacto con alguna persona confirmada con COVID-19 en los ultimos 15 dias?',1,0),(16,'¿Traes tu kit de salud (gel antibacterial y toallitas desinfectantes)?',0,1),(17,'¿Portas doble cubrebocas?',0,5),(18,'¿Desde cuando se ha sentido enfermo(a)? ',1,0);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `score` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `puntaje` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1266 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (756,103,1,'2021-09-25 22:18:00',0),(757,103,2,'2021-09-25 22:18:03',0),(758,103,3,'2021-09-25 22:18:05',0),(759,103,4,'2021-09-25 22:18:07',0),(760,103,5,'2021-09-25 22:18:08',0),(761,103,6,'2021-09-25 22:18:09',0),(762,103,7,'2021-09-25 22:18:10',0),(763,103,8,'2021-09-25 22:18:11',0),(764,103,9,'2021-09-25 22:18:13',0),(765,103,10,'2021-09-25 22:18:14',0),(766,103,11,'2021-09-25 22:18:17',0),(767,103,12,'2021-09-25 22:18:18',0),(768,103,13,'2021-09-25 22:18:20',0),(769,103,14,'2021-09-25 22:18:21',0),(770,103,15,'2021-09-25 22:18:23',0),(771,103,16,'2021-09-25 22:18:28',1),(772,103,17,'2021-09-25 22:18:41',0),(773,103,18,'2021-09-25 22:18:46',1),(774,103,18,'2021-09-25 22:21:07',1),(775,103,18,'2021-09-25 22:21:21',1),(776,103,18,'2021-09-25 22:21:23',1),(777,89,1,'2021-10-01 13:41:13',2),(778,89,1,'2021-10-01 13:43:12',2),(779,89,1,'2021-10-01 13:43:41',2),(780,89,1,'2021-10-01 13:44:12',2),(781,89,1,'2021-10-01 13:44:55',2),(782,89,1,'2021-10-01 13:45:23',2),(783,89,2,'2021-10-01 13:48:21',2),(784,89,3,'2021-10-01 13:48:24',2),(785,89,4,'2021-10-01 13:48:35',2),(786,89,5,'2021-10-01 13:48:36',2),(787,89,6,'2021-10-01 13:48:42',1),(788,89,7,'2021-10-01 13:48:45',0),(789,89,8,'2021-10-01 13:48:47',0),(790,89,9,'2021-10-01 13:48:49',0),(791,89,10,'2021-10-01 13:48:51',0),(792,89,11,'2021-10-01 13:48:53',0),(793,89,12,'2021-10-01 13:48:54',0),(794,89,13,'2021-10-01 13:48:55',0),(795,89,14,'2021-10-01 13:48:57',0),(796,89,15,'2021-10-01 13:49:00',0),(797,89,16,'2021-10-01 13:49:05',0),(798,89,17,'2021-10-01 13:49:09',0),(799,89,17,'2021-10-01 13:50:20',0),(800,89,18,'2021-10-01 13:50:26',0),(801,89,18,'2021-10-01 13:51:17',0),(802,89,18,'2021-10-01 13:51:46',0),(803,95,1,'2021-10-02 18:02:23',0),(804,95,2,'2021-10-02 18:02:27',0),(805,95,3,'2021-10-02 18:02:29',0),(806,95,4,'2021-10-02 18:02:30',0),(807,95,5,'2021-10-02 18:02:34',2),(808,95,6,'2021-10-02 18:02:40',0),(809,95,7,'2021-10-02 18:02:43',0),(810,95,8,'2021-10-02 18:02:45',0),(811,95,9,'2021-10-02 18:02:46',0),(812,95,10,'2021-10-02 18:02:47',0),(813,95,11,'2021-10-02 18:02:48',0),(814,95,12,'2021-10-02 18:02:49',0),(815,95,13,'2021-10-02 18:02:51',0),(816,95,14,'2021-10-02 18:02:53',0),(817,95,15,'2021-10-02 18:02:54',0),(818,95,16,'2021-10-02 18:02:56',0),(819,95,17,'2021-10-02 18:02:59',0),(820,95,18,'2021-10-02 18:03:01',0),(821,89,1,'2021-10-12 20:35:40',0),(822,89,1,'2021-10-12 20:36:49',0),(823,89,2,'2021-10-12 20:38:46',0),(824,89,3,'2021-10-12 20:38:51',0),(825,89,4,'2021-10-12 20:38:53',0),(826,89,5,'2021-10-12 20:39:22',0),(827,89,6,'2021-10-12 20:39:31',0),(828,89,6,'2021-10-12 20:39:33',0),(829,89,6,'2021-10-12 20:39:47',0),(830,89,6,'2021-10-12 20:40:44',0),(831,89,6,'2021-10-12 20:41:06',0),(832,89,6,'2021-10-12 20:41:20',0),(833,89,6,'2021-10-12 20:41:36',0),(834,89,6,'2021-10-12 20:41:54',0),(835,89,7,'2021-10-12 20:41:57',0),(836,89,8,'2021-10-12 20:41:58',0),(837,89,9,'2021-10-12 20:42:00',0),(838,89,10,'2021-10-12 20:42:01',0),(839,89,11,'2021-10-12 20:42:02',0),(840,89,12,'2021-10-12 20:42:03',0),(841,89,13,'2021-10-12 20:42:04',0),(842,89,14,'2021-10-12 20:42:05',0),(843,89,15,'2021-10-12 20:42:06',0),(844,89,16,'2021-10-12 20:42:07',0),(845,89,17,'2021-10-12 20:42:10',0),(846,89,18,'2021-10-12 20:42:34',0),(847,89,18,'2021-10-12 20:45:14',0),(848,95,1,'2021-10-12 20:55:04',0),(849,95,2,'2021-10-12 20:55:06',0),(850,95,3,'2021-10-12 20:55:07',0),(851,95,4,'2021-10-12 20:55:08',0),(852,95,5,'2021-10-12 20:55:09',0),(853,95,6,'2021-10-12 20:55:10',0),(854,95,7,'2021-10-12 20:55:11',0),(855,95,8,'2021-10-12 20:55:12',0),(856,95,9,'2021-10-12 20:55:13',0),(857,95,10,'2021-10-12 20:55:14',0),(858,95,11,'2021-10-12 20:55:16',0),(859,95,12,'2021-10-12 20:55:19',1),(860,95,13,'2021-10-12 20:55:20',1),(861,95,14,'2021-10-12 20:55:21',1),(862,95,15,'2021-10-12 20:55:23',1),(863,95,16,'2021-10-12 20:55:25',1),(864,95,17,'2021-10-12 20:55:30',0),(865,95,17,'2021-10-12 20:56:10',0),(866,95,18,'2021-10-12 20:56:13',0),(867,106,1,'2021-10-12 20:56:52',0),(868,106,2,'2021-10-12 20:56:54',0),(869,106,3,'2021-10-12 20:56:55',0),(870,106,4,'2021-10-12 20:56:56',0),(871,106,5,'2021-10-12 20:56:58',0),(872,106,6,'2021-10-12 20:57:47',0),(873,106,7,'2021-10-12 20:57:48',0),(874,106,8,'2021-10-12 20:57:50',0),(875,106,9,'2021-10-12 20:57:51',0),(876,106,10,'2021-10-12 20:57:52',0),(877,106,11,'2021-10-12 20:57:53',0),(878,106,12,'2021-10-12 20:57:54',0),(879,106,13,'2021-10-12 20:57:56',0),(880,106,14,'2021-10-12 20:57:57',0),(881,106,15,'2021-10-12 20:57:58',0),(882,106,16,'2021-10-12 20:57:59',0),(883,106,17,'2021-10-12 20:58:01',0),(884,106,17,'2021-10-12 20:59:15',0),(885,106,18,'2021-10-12 20:59:17',0),(886,103,1,'2021-10-14 21:16:49',0),(887,103,2,'2021-10-14 21:16:56',2),(888,103,3,'2021-10-14 21:17:01',2),(889,103,4,'2021-10-14 21:17:07',0),(890,103,5,'2021-10-14 21:17:16',2),(891,103,6,'2021-10-14 21:17:22',0),(892,103,7,'2021-10-14 21:17:24',0),(893,103,8,'2021-10-14 21:17:26',0),(894,103,9,'2021-10-14 21:17:29',0),(895,103,10,'2021-10-14 21:17:31',0),(896,103,11,'2021-10-14 21:17:32',0),(897,103,12,'2021-10-14 21:17:33',0),(898,103,13,'2021-10-14 21:17:35',0),(899,103,14,'2021-10-14 21:17:36',0),(900,103,15,'2021-10-14 21:17:39',0),(901,103,16,'2021-10-14 21:17:46',1),(902,103,17,'2021-10-14 21:18:10',0),(903,103,18,'2021-10-14 21:18:20',0),(904,120,1,'2021-10-21 20:23:41',0),(905,120,2,'2021-10-21 20:23:50',2),(906,120,3,'2021-10-21 20:25:09',2),(907,120,4,'2021-10-21 20:25:14',0),(908,120,5,'2021-10-21 20:25:29',0),(909,120,6,'2021-10-21 20:25:33',0),(910,120,7,'2021-10-21 20:25:37',0),(911,120,8,'2021-10-21 20:25:38',0),(912,120,9,'2021-10-21 20:25:42',0),(913,120,10,'2021-10-21 20:25:50',0),(914,120,11,'2021-10-21 20:25:51',0),(915,120,12,'2021-10-21 20:25:56',1),(916,120,13,'2021-10-21 20:26:02',0),(917,120,14,'2021-10-21 20:26:06',0),(918,120,15,'2021-10-21 20:26:09',0),(919,120,16,'2021-10-21 20:26:12',0),(920,120,17,'2021-10-21 20:26:18',5),(921,120,18,'2021-10-21 20:28:29',0),(922,130,1,'2021-10-21 21:27:17',0),(923,130,2,'2021-10-21 21:27:40',2),(924,130,3,'2021-10-21 21:27:47',0),(925,130,4,'2021-10-21 21:27:49',0),(926,130,5,'2021-10-21 21:27:51',0),(927,130,6,'2021-10-21 21:27:54',1),(928,130,7,'2021-10-21 21:27:59',0),(929,130,8,'2021-10-21 21:28:01',0),(930,130,9,'2021-10-21 21:28:02',0),(931,130,10,'2021-10-21 21:28:04',0),(932,130,11,'2021-10-21 21:28:05',0),(933,130,12,'2021-10-21 21:28:07',0),(934,130,13,'2021-10-21 21:28:09',0),(935,130,14,'2021-10-21 21:28:10',0),(936,130,15,'2021-10-21 21:28:12',0),(937,130,16,'2021-10-21 21:28:16',0),(938,130,17,'2021-10-21 21:28:23',0),(939,130,18,'2021-10-21 21:28:43',0),(940,130,18,'2021-10-21 21:31:42',0),(941,130,18,'2021-10-21 21:33:07',0),(942,130,18,'2021-10-21 21:33:58',0),(943,130,18,'2021-10-21 21:34:16',0),(944,130,18,'2021-10-21 21:34:34',0),(945,89,1,'2021-10-21 21:44:31',2),(946,130,1,'2021-10-21 21:44:35',0),(947,130,2,'2021-10-21 21:44:37',0),(948,130,3,'2021-10-21 21:44:39',0),(949,89,2,'2021-10-21 21:44:42',0),(950,130,4,'2021-10-21 21:44:43',0),(951,89,3,'2021-10-21 21:44:44',2),(952,130,5,'2021-10-21 21:44:45',0),(953,89,4,'2021-10-21 21:44:47',0),(954,130,6,'2021-10-21 21:44:47',0),(955,89,5,'2021-10-21 21:44:49',2),(956,130,7,'2021-10-21 21:44:49',0),(957,130,8,'2021-10-21 21:44:51',0),(958,130,9,'2021-10-21 21:44:53',0),(959,130,10,'2021-10-21 21:44:55',0),(960,130,11,'2021-10-21 21:44:56',0),(961,130,12,'2021-10-21 21:44:57',0),(962,130,13,'2021-10-21 21:44:58',0),(963,89,6,'2021-10-21 21:44:59',1),(964,130,14,'2021-10-21 21:44:59',0),(965,130,15,'2021-10-21 21:45:01',0),(966,89,7,'2021-10-21 21:45:01',0),(967,130,16,'2021-10-21 21:45:02',0),(968,89,8,'2021-10-21 21:45:04',1),(969,130,17,'2021-10-21 21:45:06',0),(970,89,9,'2021-10-21 21:45:07',0),(971,89,10,'2021-10-21 21:45:09',0),(972,89,11,'2021-10-21 21:45:11',0),(973,89,12,'2021-10-21 21:45:26',0),(974,89,13,'2021-10-21 21:45:29',1),(975,130,18,'2021-10-21 21:45:30',0),(976,89,14,'2021-10-21 21:45:35',0),(977,89,15,'2021-10-21 21:45:38',0),(978,89,16,'2021-10-21 21:45:42',0),(979,89,17,'2021-10-21 21:45:53',0),(980,89,18,'2021-10-21 21:45:55',0),(981,90,1,'2021-11-05 10:31:15',0),(982,90,2,'2021-11-05 10:31:20',0),(983,90,3,'2021-11-05 10:31:22',0),(984,90,4,'2021-11-05 10:31:25',0),(985,90,5,'2021-11-05 10:31:32',0),(986,90,6,'2021-11-05 10:31:33',0),(987,90,7,'2021-11-05 10:31:35',0),(988,90,8,'2021-11-05 10:31:37',0),(989,90,9,'2021-11-05 10:31:42',1),(990,90,10,'2021-11-05 10:31:47',1),(991,90,11,'2021-11-05 10:31:49',1),(992,90,12,'2021-11-05 10:31:53',0),(993,90,13,'2021-11-05 10:31:58',1),(994,90,14,'2021-11-05 10:32:02',1),(995,90,15,'2021-11-05 10:32:08',1),(996,90,16,'2021-11-05 10:32:13',0),(997,90,17,'2021-11-05 10:32:18',0),(998,90,18,'2021-11-05 10:32:22',0),(999,89,1,'2021-12-08 12:47:57',0),(1000,89,1,'2021-12-08 12:48:19',0),(1001,89,1,'2021-12-08 12:48:50',0),(1002,90,1,'2022-01-04 20:18:00',0),(1003,90,2,'2022-01-04 20:18:10',0),(1004,90,3,'2022-01-04 20:18:11',0),(1005,90,4,'2022-01-04 20:18:12',0),(1006,90,5,'2022-01-04 20:18:13',0),(1007,90,6,'2022-01-04 20:18:14',0),(1008,90,7,'2022-01-04 20:18:15',0),(1009,90,8,'2022-01-04 20:18:16',0),(1010,90,9,'2022-01-04 20:18:17',0),(1011,90,10,'2022-01-04 20:18:18',0),(1012,90,11,'2022-01-04 20:18:19',0),(1013,90,12,'2022-01-04 20:18:21',0),(1014,90,13,'2022-01-04 20:18:22',0),(1015,90,14,'2022-01-04 20:18:23',0),(1016,90,15,'2022-01-04 20:18:26',0),(1017,90,16,'2022-01-04 20:18:28',0),(1018,90,17,'2022-01-04 20:18:34',0),(1019,90,18,'2022-01-04 20:18:36',0),(1020,20,2,'18/01/2022',5),(1021,30,2,'2022-01-18',5),(1022,40,2,'2022-01-18',5),(1023,1,1,'2022-01-20 21:29:46',5),(1024,99,1,'2022-03-21 14:51:57',0),(1025,99,2,'2022-03-21 14:52:12',0),(1026,99,3,'2022-03-21 14:52:14',0),(1027,99,4,'2022-03-21 14:52:15',0),(1028,99,5,'2022-03-21 14:52:16',0),(1029,99,6,'2022-03-21 14:52:17',0),(1030,99,7,'2022-03-21 14:52:19',0),(1031,99,8,'2022-03-21 14:52:20',0),(1032,99,9,'2022-03-21 14:52:21',0),(1033,99,10,'2022-03-21 14:52:22',0),(1034,99,11,'2022-03-21 14:52:23',0),(1035,99,12,'2022-03-21 14:52:26',0),(1036,99,13,'2022-03-21 14:52:28',0),(1037,99,14,'2022-03-21 14:52:29',0),(1038,99,15,'2022-03-21 14:52:31',0),(1039,99,16,'2022-03-21 14:52:34',0),(1040,99,17,'2022-03-21 14:52:39',0),(1041,99,18,'2022-03-21 14:52:41',0),(1042,100,1,'2022-03-21 14:57:36',0),(1043,100,2,'2022-03-21 14:57:37',0),(1044,100,3,'2022-03-21 14:57:38',0),(1045,100,4,'2022-03-21 14:57:40',0),(1046,100,5,'2022-03-21 14:57:41',0),(1047,100,6,'2022-03-21 14:57:42',0),(1048,100,7,'2022-03-21 14:57:43',0),(1049,100,8,'2022-03-21 14:57:44',0),(1050,100,9,'2022-03-21 14:57:45',0),(1051,100,10,'2022-03-21 14:57:46',0),(1052,100,11,'2022-03-21 14:57:48',0),(1053,100,12,'2022-03-21 14:57:48',0),(1054,100,13,'2022-03-21 14:57:50',0),(1055,100,14,'2022-03-21 14:57:51',0),(1056,100,15,'2022-03-21 14:57:53',0),(1057,100,16,'2022-03-21 14:57:55',0),(1058,100,17,'2022-03-21 14:57:56',0),(1059,100,18,'2022-03-21 14:58:01',0),(1060,90,1,'2022-03-21 15:00:05',0),(1061,90,2,'2022-03-21 15:00:06',0),(1062,90,3,'2022-03-21 15:00:07',0),(1063,90,4,'2022-03-21 15:00:07',0),(1064,90,5,'2022-03-21 15:00:08',0),(1065,90,6,'2022-03-21 15:00:09',0),(1066,90,7,'2022-03-21 15:00:10',0),(1067,90,8,'2022-03-21 15:00:11',0),(1068,90,9,'2022-03-21 15:00:12',0),(1069,90,10,'2022-03-21 15:00:13',0),(1070,90,11,'2022-03-21 15:00:15',0),(1071,90,12,'2022-03-21 15:00:15',0),(1072,90,13,'2022-03-21 15:00:18',0),(1073,90,14,'2022-03-21 15:00:19',0),(1074,90,15,'2022-03-21 15:00:23',0),(1075,90,16,'2022-03-21 15:00:24',0),(1076,90,17,'2022-03-21 15:00:31',0),(1077,90,18,'2022-03-21 15:00:35',0),(1078,90,18,'2022-03-21 15:06:44',0),(1079,90,18,'2022-03-21 15:09:49',0),(1080,90,18,'2022-03-21 15:10:30',0),(1081,102,1,'2022-03-21 15:10:40',0),(1082,102,2,'2022-03-21 15:10:41',0),(1083,102,3,'2022-03-21 15:10:42',0),(1084,102,4,'2022-03-21 15:10:43',0),(1085,102,5,'2022-03-21 15:10:44',0),(1086,102,6,'2022-03-21 15:10:45',0),(1087,102,7,'2022-03-21 15:10:46',0),(1088,102,8,'2022-03-21 15:10:47',0),(1089,102,9,'2022-03-21 15:10:48',0),(1090,102,10,'2022-03-21 15:10:48',0),(1091,102,11,'2022-03-21 15:10:50',0),(1092,102,12,'2022-03-21 15:10:51',0),(1093,102,13,'2022-03-21 15:10:52',0),(1094,102,14,'2022-03-21 15:10:52',0),(1095,102,15,'2022-03-21 15:10:54',0),(1096,102,16,'2022-03-21 15:10:57',0),(1097,102,17,'2022-03-21 15:10:58',0),(1098,102,18,'2022-03-21 15:10:59',0),(1099,102,18,'2022-03-21 15:12:31',0),(1100,102,18,'2022-03-21 15:12:51',0),(1101,102,18,'2022-03-21 15:13:23',0),(1102,120,1,'2022-03-21 15:14:47',0),(1103,120,2,'2022-03-21 15:14:48',0),(1104,120,3,'2022-03-21 15:14:49',0),(1105,120,4,'2022-03-21 15:14:49',0),(1106,120,5,'2022-03-21 15:14:50',0),(1107,120,6,'2022-03-21 15:14:51',0),(1108,120,7,'2022-03-21 15:14:52',0),(1109,120,8,'2022-03-21 15:14:53',0),(1110,120,9,'2022-03-21 15:14:53',0),(1111,120,10,'2022-03-21 15:14:54',0),(1112,120,11,'2022-03-21 15:14:55',0),(1113,120,12,'2022-03-21 15:14:58',0),(1114,120,13,'2022-03-21 15:14:59',0),(1115,120,14,'2022-03-21 15:14:59',0),(1116,120,15,'2022-03-21 15:15:00',0),(1117,120,16,'2022-03-21 15:15:01',0),(1118,120,17,'2022-03-21 15:15:02',0),(1119,120,18,'2022-03-21 15:15:05',0),(1120,130,1,'2022-03-21 15:15:17',2),(1121,130,2,'2022-03-21 15:15:18',2),(1122,130,3,'2022-03-21 15:15:19',2),(1123,130,4,'2022-03-21 15:15:21',2),(1124,130,5,'2022-03-21 15:15:22',2),(1125,130,6,'2022-03-21 15:15:28',0),(1126,130,7,'2022-03-21 15:15:30',0),(1127,130,8,'2022-03-21 15:15:30',0),(1128,130,9,'2022-03-21 15:15:31',0),(1129,130,10,'2022-03-21 15:15:32',0),(1130,130,11,'2022-03-21 15:15:33',0),(1131,130,12,'2022-03-21 15:15:33',0),(1132,130,13,'2022-03-21 15:15:35',0),(1133,130,14,'2022-03-21 15:15:36',0),(1134,130,15,'2022-03-21 15:15:44',0),(1135,130,16,'2022-03-21 15:15:49',0),(1136,130,17,'2022-03-21 15:15:50',0),(1137,130,18,'2022-03-21 15:15:52',0),(1138,130,18,'2022-03-21 15:17:06',0),(1139,130,1,'2022-03-21 15:17:32',0),(1140,130,2,'2022-03-21 15:17:32',0),(1141,130,3,'2022-03-21 15:17:33',0),(1142,130,4,'2022-03-21 15:17:34',0),(1143,130,5,'2022-03-21 15:17:35',0),(1144,130,6,'2022-03-21 15:17:35',0),(1145,130,7,'2022-03-21 15:17:36',0),(1146,130,8,'2022-03-21 15:17:37',0),(1147,130,9,'2022-03-21 15:17:38',0),(1148,130,10,'2022-03-21 15:17:39',0),(1149,130,11,'2022-03-21 15:17:40',0),(1150,130,12,'2022-03-21 15:17:40',0),(1151,130,13,'2022-03-21 15:17:41',0),(1152,130,14,'2022-03-21 15:17:42',0),(1153,130,15,'2022-03-21 15:17:44',0),(1154,130,16,'2022-03-21 15:17:45',0),(1155,130,17,'2022-03-21 15:17:48',0),(1156,130,18,'2022-03-21 15:17:49',0),(1157,125,1,'2022-03-21 15:18:10',0),(1158,125,2,'2022-03-21 15:18:11',0),(1159,125,3,'2022-03-21 15:18:12',0),(1160,125,4,'2022-03-21 15:18:13',0),(1161,125,5,'2022-03-21 15:18:13',0),(1162,125,6,'2022-03-21 15:18:14',0),(1163,125,7,'2022-03-21 15:18:15',0),(1164,125,8,'2022-03-21 15:18:16',0),(1165,125,9,'2022-03-21 15:18:16',0),(1166,125,10,'2022-03-21 15:18:17',0),(1167,125,11,'2022-03-21 15:18:18',0),(1168,125,12,'2022-03-21 15:18:19',0),(1169,125,13,'2022-03-21 15:18:19',0),(1170,125,14,'2022-03-21 15:18:20',0),(1171,125,15,'2022-03-21 15:18:21',0),(1172,125,16,'2022-03-21 15:18:22',0),(1173,125,17,'2022-03-21 15:18:24',0),(1174,125,18,'2022-03-21 15:18:26',0),(1175,125,18,'2022-03-21 15:20:22',0),(1176,125,18,'2022-03-21 15:20:35',0),(1177,125,18,'2022-03-21 15:20:44',0),(1178,125,18,'2022-03-21 15:21:16',0),(1179,125,18,'2022-03-21 15:34:00',0),(1180,125,18,'2022-03-21 15:34:16',0),(1181,125,18,'2022-03-21 15:34:20',0),(1182,125,18,'2022-03-21 15:35:35',0),(1183,125,18,'2022-03-21 15:40:40',0),(1184,150,1,'2022-03-21 15:40:58',0),(1185,150,2,'2022-03-21 15:41:00',0),(1186,150,3,'2022-03-21 15:41:00',0),(1187,150,4,'2022-03-21 15:41:02',0),(1188,150,5,'2022-03-21 15:41:03',0),(1189,150,6,'2022-03-21 15:41:04',0),(1190,150,7,'2022-03-21 15:41:05',0),(1191,150,8,'2022-03-21 15:41:05',0),(1192,150,9,'2022-03-21 15:41:07',0),(1193,150,10,'2022-03-21 15:41:07',0),(1194,150,11,'2022-03-21 15:41:08',0),(1195,150,12,'2022-03-21 15:41:09',0),(1196,150,13,'2022-03-21 15:41:11',0),(1197,150,14,'2022-03-21 15:41:13',0),(1198,150,15,'2022-03-21 15:41:14',0),(1199,150,16,'2022-03-21 15:41:16',0),(1200,150,17,'2022-03-21 15:41:22',0),(1201,150,18,'2022-03-21 15:41:24',0),(1202,148,1,'2022-03-21 15:41:34',2),(1203,148,2,'2022-03-21 15:41:35',2),(1204,148,3,'2022-03-21 15:41:37',2),(1205,148,4,'2022-03-21 15:41:39',2),(1206,148,5,'2022-03-21 15:41:40',2),(1207,148,6,'2022-03-21 15:41:43',0),(1208,148,7,'2022-03-21 15:41:44',0),(1209,148,8,'2022-03-21 15:41:44',0),(1210,148,9,'2022-03-21 15:41:45',0),(1211,148,10,'2022-03-21 15:41:46',0),(1212,148,11,'2022-03-21 15:41:47',0),(1213,148,12,'2022-03-21 15:41:48',0),(1214,148,13,'2022-03-21 15:41:48',0),(1215,148,14,'2022-03-21 15:41:49',0),(1216,148,15,'2022-03-21 15:41:50',0),(1217,148,16,'2022-03-21 15:41:51',0),(1218,148,17,'2022-03-21 15:41:52',0),(1219,148,18,'2022-03-21 15:41:54',0),(1220,148,18,'2022-03-21 15:42:28',0),(1221,148,18,'2022-03-21 15:42:59',0),(1222,148,18,'2022-03-21 15:43:46',0),(1223,132,1,'2022-03-21 15:43:55',0),(1224,132,2,'2022-03-21 15:43:57',0),(1225,132,3,'2022-03-21 15:43:58',0),(1226,132,4,'2022-03-21 15:43:59',0),(1227,132,5,'2022-03-21 15:44:00',0),(1228,132,6,'2022-03-21 15:44:00',0),(1229,132,7,'2022-03-21 15:44:01',0),(1230,132,8,'2022-03-21 15:44:02',0),(1231,132,9,'2022-03-21 15:44:02',0),(1232,132,10,'2022-03-21 15:44:03',0),(1233,132,11,'2022-03-21 15:44:04',0),(1234,132,12,'2022-03-21 15:44:04',0),(1235,132,13,'2022-03-21 15:44:05',0),(1236,132,14,'2022-03-21 15:44:06',0),(1237,132,15,'2022-03-21 15:44:08',0),(1238,132,16,'2022-03-21 15:44:09',0),(1239,132,17,'2022-03-21 15:44:12',0),(1240,132,18,'2022-03-21 15:44:14',0),(1241,132,18,'2022-03-21 15:44:58',0),(1242,132,18,'2022-03-21 15:45:15',0),(1243,132,18,'2022-03-21 15:45:19',0),(1244,132,18,'2022-03-21 15:46:11',0),(1245,132,18,'2022-03-21 15:46:41',0),(1246,132,18,'2022-03-21 15:47:03',0),(1247,132,18,'2022-03-21 15:51:12',0),(1248,125,1,'2022-03-24 19:18:17',0),(1249,125,2,'2022-03-24 19:18:19',0),(1250,125,3,'2022-03-24 19:18:20',0),(1251,125,4,'2022-03-24 19:18:21',0),(1252,125,5,'2022-03-24 19:18:22',0),(1253,125,6,'2022-03-24 19:18:23',0),(1254,125,7,'2022-03-24 19:18:23',0),(1255,125,8,'2022-03-24 19:18:24',0),(1256,125,9,'2022-03-24 19:18:25',0),(1257,125,10,'2022-03-24 19:18:26',0),(1258,125,11,'2022-03-24 19:18:27',0),(1259,125,12,'2022-03-24 19:18:27',0),(1260,125,13,'2022-03-24 19:18:28',0),(1261,125,14,'2022-03-24 19:18:29',0),(1262,125,15,'2022-03-24 19:18:30',0),(1263,125,16,'2022-03-24 19:18:32',0),(1264,125,17,'2022-03-24 19:18:34',0),(1265,125,18,'2022-03-24 19:18:37',0);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `degree_id` int NOT NULL,
  `level` int NOT NULL,
  `num_list` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (89,'NICOLAS','AVILES','LOPEZ',1,1,1),(90,'BENOIT','CURTIS','SOLIS',1,1,2),(91,'VALERIA','FLORES','RENDON',1,1,3),(92,'SANTIAGO','MARTINEZ','BELLO',1,1,4),(93,'ERIKA','MARTINEZ','MONROY',1,1,5),(94,'ASTRID','NAVARRETE','GARCIA',1,1,6),(95,'ORZUE','OLIVETTO','MIRANDA',1,1,7),(96,'IKER','OSORIO','RIVERA',1,1,8),(97,'ALEJANDRO','RIOS','MERCADO',1,1,9),(98,'SOFIA','ROSAS DE LA','CRUZ',1,1,10),(99,'CRISTOFER','SANCHEZ','GALEANA',1,1,11),(100,'MARIANA','SANCHEZ','RODRIGUEZ',1,1,12);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-24 19:34:42
