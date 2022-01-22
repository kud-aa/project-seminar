-- MariaDB dump 10.19  Distrib 10.6.5-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	10.6.5-MariaDB

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shelve_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shelve_id` (`shelve_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`shelve_id`) REFERENCES `shelves` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (61,'when the books is a little bit sus','AMOGUS',1),(62,'25,5','9,2 ',2),(63,'25,5','19,5',3),(64,'20,1','45  ',4),(65,'40  ','1,4 ',5),(66,'42,4','22,3',6),(67,'28,9','3,5 ',7),(68,'6,5 ','6,6 ',8),(69,'25,7','0,9 ',9),(70,'9   ','37,1',10),(71,'18,4','5,5 ',11),(72,'42,8','12,4',12),(73,'46,3','18,9',13),(74,'6,5 ','19,9',14),(75,'30,9','35,5',15),(76,'12,1','30  ',16),(77,'49,9','2   ',17),(78,'21,1','13,3',18),(79,'18,5','47,9',19),(80,'16,9','26,4',20),(81,'9,5 ','23,8',21),(82,'48,3','18,4',22),(83,'7,3 ','1,9 ',23),(84,'23,5','7,2 ',24),(85,'46  ','25,6',25),(86,'25,1','43,6',26),(87,'43,9','45  ',27),(88,'44,3','13,6',28),(89,'33,4','11,5',29),(90,'41,1','25,7',30),(91,'15,8','45,4',31),(92,'37,9','12,2',32),(93,'22,5','48,6',33),(94,'16,5','44  ',34),(95,'8,3 ','10,4',35),(96,'34,6','27,2',36),(97,'33,9','36  ',37),(98,'10,9','30,9',38),(99,'32,6','5,8 ',39),(100,'25,6','19,1',40),(101,'10,7','18  ',41),(102,'30,4','12,7',42),(103,'23,9','46,1',43),(104,'49,1','41,5',44),(105,'25,4','19,3',45),(106,'42,5','9,2 ',46),(107,'19,3','42,6',47),(108,'1   ','27,8',48),(109,'15,4','32,2',49),(110,'26,5','22,2',50),(111,'33,6','42,3',51),(112,'35,8','27,2',52),(113,'40,1','12,5',53),(114,'11,6','22,7',54),(115,'40,3','7,7 ',55),(116,'24,8','40  ',56),(117,'47,4','13,3',57),(118,'31,7','1,2 ',58),(119,'2,3 ','40,9',59),(120,'30,4','9,6 ',60),(121,'19,3','31,1',61),(122,'5,2 ','36,9',62),(123,'5,2 ','23,9',63),(124,'37  ','36,1',64),(125,'19,1','22,6',65),(126,'28,2','21,9',66),(127,'17,2','20,2',67),(128,'5,1 ','34,4',68),(129,'29,5','16,1',69);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'DEEZNUTS'),(2,'17,2'),(3,'49,1'),(4,'4,6 '),(5,'32,6'),(6,'48,2'),(7,'37  '),(8,'21,2'),(9,'24,3'),(10,'44,3'),(11,'27,5'),(12,'40,7'),(13,'12  '),(14,'37,8'),(15,'36,4'),(16,'29,9'),(17,'38,7'),(18,'26,6'),(19,'10,9'),(20,'19,4'),(21,'45,2'),(22,'17,7'),(23,'48,9'),(24,'1,2 '),(25,'7,7 '),(26,'49,8'),(27,'37  '),(28,'11,3'),(29,'35,8'),(30,'29  '),(31,'41,4'),(32,'22,6'),(33,'27,3'),(34,'23,7'),(35,'32,4'),(36,'0,6 '),(37,'12,7'),(38,'9,9 '),(39,'0,6 '),(40,'46,4'),(41,'14,4'),(42,'29,2'),(43,'1,3 '),(44,'31,2'),(45,'8,7 '),(46,'16,7'),(47,'18,7'),(48,'2,5 '),(49,'1,5 '),(50,'29,2'),(51,'46,1'),(52,'25,1'),(53,'16,9'),(54,'5   '),(55,'14,4'),(56,'0,4 '),(57,'1,6 '),(58,'11,3'),(59,'31  '),(60,'38,9'),(61,'12,7'),(62,'39,9'),(63,'7,6 '),(64,'49,7'),(65,'38,3'),(66,'38,5'),(67,'12,2'),(68,'43  '),(69,'44,6');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `faculty_id` (`faculty_id`),
  CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'BOYS_NEXT_DOOR',1),(2,'17,2',2),(3,'49,1',3),(4,'4,6 ',4),(5,'32,6',5),(6,'48,2',6),(7,'37  ',7),(8,'21,2',8),(9,'24,3',9),(10,'44,3',10),(11,'27,5',11),(12,'40,7',12),(13,'12  ',13),(14,'37,8',14),(15,'36,4',15),(16,'29,9',16),(17,'38,7',17),(18,'26,6',18),(19,'10,9',19),(20,'19,4',20),(21,'45,2',21),(22,'17,7',22),(23,'48,9',23),(24,'1,2 ',24),(25,'7,7 ',25),(26,'49,8',26),(27,'37  ',27),(28,'11,3',28),(29,'35,8',29),(30,'29  ',30),(31,'41,4',31),(32,'22,6',32),(33,'27,3',33),(34,'23,7',34),(35,'32,4',35),(36,'0,6 ',36),(37,'12,7',37),(38,'9,9 ',38),(39,'0,6 ',39),(40,'46,4',40),(41,'14,4',41),(42,'29,2',42),(43,'1,3 ',43),(44,'31,2',44),(45,'8,7 ',45),(46,'16,7',46),(47,'18,7',47),(48,'2,5 ',48),(49,'1,5 ',49),(50,'29,2',50),(51,'46,1',51),(52,'25,1',52),(53,'16,9',53),(54,'5   ',54),(55,'14,4',55),(56,'0,4 ',56),(57,'1,6 ',57),(58,'11,3',58),(59,'31  ',59),(60,'38,9',60),(61,'12,7',61),(62,'39,9',62),(63,'7,6 ',63),(64,'49,7',64),(65,'38,3',65),(66,'38,5',66),(67,'12,2',67),(68,'43  ',68),(69,'44,6',69);
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shelves`
--

DROP TABLE IF EXISTS `shelves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shelves` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelves`
--

LOCK TABLES `shelves` WRITE;
/*!40000 ALTER TABLE `shelves` DISABLE KEYS */;
INSERT INTO `shelves` VALUES (1,'AMOGUS'),(2,'19,6'),(3,'44,1'),(4,'1,4 '),(5,'14  '),(6,'9,7 '),(7,'39,4'),(8,'6,7 '),(9,'38,2'),(10,'20,8'),(11,'21,1'),(12,'35,1'),(13,'31,5'),(14,'36,3'),(15,'26  '),(16,'0,3 '),(17,'17,9'),(18,'36,7'),(19,'11,4'),(20,'26,9'),(21,'14,5'),(22,'35,6'),(23,'24,8'),(24,'35,6'),(25,'37,9'),(26,'7,2 '),(27,'3,8 '),(28,'48  '),(29,'26,9'),(30,'14,7'),(31,'20,5'),(32,'20,2'),(33,'35,1'),(34,'13,1'),(35,'18,9'),(36,'12,2'),(37,'41,3'),(38,'43,3'),(39,'9,2 '),(40,'0,4 '),(41,'32,6'),(42,'49,6'),(43,'42,1'),(44,'37,9'),(45,'36,8'),(46,'1,9 '),(47,'34  '),(48,'23,3'),(49,'14,3'),(50,'22,6'),(51,'48,2'),(52,'37,7'),(53,'20,4'),(54,'16,4'),(55,'13  '),(56,'19,2'),(57,'12,8'),(58,'27,6'),(59,'23,2'),(60,'47,5'),(61,'3,7 '),(62,'48,5'),(63,'21  '),(64,'21,1'),(65,'0,4 '),(66,'32,4'),(67,'49,8'),(68,'19,9'),(69,'32,3');
/*!40000 ALTER TABLE `shelves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_id` smallint(5) unsigned NOT NULL,
  `group_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `faculty_id` (`faculty_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `students_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`),
  CONSTRAINT `students_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (2,'Billy','Herringhton','88005553535',1,1),(3,'38,4','6,8 ','6,1 ',2,2),(4,'3,3 ','41,3','39,2',3,3),(5,'41,7','39  ','1,2 ',4,4),(6,'4,1 ','31,1','28,4',5,5),(7,'41,4','17,9','11,7',6,6),(8,'20  ','49,1','5,6 ',7,7),(9,'31,1','8,4 ','33,6',8,8),(10,'2,6 ','43,6','46,8',9,9),(11,'31,2','29  ','1,2 ',10,10),(12,'7,3 ','49,6','21,4',11,11),(13,'10,8','40,1','25,3',12,12),(14,'13,5','35,6','28,2',13,13),(15,'22,5','40,2','33,8',14,14),(16,'32,2','15,9','29,4',15,15),(17,'40  ','11,2','22,9',16,16),(18,'21,8','24,4','33,7',17,17),(19,'13  ','26,2','46,5',18,18),(20,'14  ','46,7','22,2',19,19),(21,'23,7','28,8','22,9',20,20),(22,'14,4','5,4 ','18,2',21,21),(23,'3,4 ','5,8 ','28,8',22,22),(24,'10,8','38  ','34,7',23,23),(25,'5   ','17,5','29  ',24,24),(26,'10,5','43  ','41,1',25,25),(27,'1,8 ','35,3','38,1',26,26),(28,'18,6','28,5','11,1',27,27),(29,'28  ','49,6','36,3',28,28),(30,'35,3','10,7','28,9',29,29),(31,'30,7','24,9','33,8',30,30),(32,'37,4','28,3','25,8',31,31),(33,'28,1','19,4','9   ',32,32),(34,'35,5','49,6','34,6',33,33),(35,'14,7','24,2','35,1',34,34),(36,'32,3','9,3 ','24,1',35,35),(37,'12,8','24,3','32,8',36,36),(38,'14,2','14,7','23,4',37,37),(39,'45,9','20,2','25  ',38,38),(40,'16,5','30,9','40,5',39,39),(41,'41,3','19,7','47,5',40,40),(42,'40,4','25,9','14,4',41,41),(43,'48,7','1,4 ','17,9',42,42),(44,'48,4','31,7','30  ',43,43),(45,'27,6','38,4','48,9',44,44),(46,'5,2 ','27,7','33,1',45,45),(47,'49,6','6,9 ','37,8',46,46),(48,'22,6','5,6 ','25,6',47,47),(49,'4,7 ','36,4','36,4',48,48),(50,'16,1','3,4 ','19,5',49,49),(51,'48,5','4,9 ','17,4',50,50),(52,'41,1','28  ','7,7 ',51,51),(53,'20,7','18,9','31,4',52,52),(54,'29,6','14,6','4,8 ',53,53),(55,'37,4','24,8','22,1',54,54),(56,'29,1','25,4','38,4',55,55),(57,'14,3','30,5','48,1',56,56),(58,'30,4','19,1','48,8',57,57),(59,'19,7','8,7 ','32,3',58,58),(60,'8   ','21,4','26,2',59,59),(61,'17,3','9   ','8,2 ',60,60),(62,'16,8','39,1','38  ',61,61),(63,'45,7','44,2','28,1',62,62),(64,'6   ','7,6 ','45  ',63,63),(65,'22,5','43  ','15,9',64,64),(66,'47,5','20,5','15,8',65,65),(67,'6,9 ','47  ','12,1',66,66),(68,'24,9','20,8','34  ',67,67),(69,'24  ','4,7 ','34,5',68,68),(70,'0,8 ','35,8','13,5',69,69);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_owe_books`
--

DROP TABLE IF EXISTS `students_owe_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students_owe_books` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` smallint(5) unsigned NOT NULL,
  `book_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `students_owe_books_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `students_owe_books_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_owe_books`
--

LOCK TABLES `students_owe_books` WRITE;
/*!40000 ALTER TABLE `students_owe_books` DISABLE KEYS */;
INSERT INTO `students_owe_books` VALUES (1,2,61),(2,3,62),(3,4,63),(4,5,64),(5,6,65),(6,7,66),(7,8,67),(8,9,68),(9,10,69),(10,11,70),(11,12,71),(12,13,72),(13,14,73),(14,15,74),(15,16,75),(16,17,76),(17,18,77),(18,19,78),(19,20,79),(20,21,80),(21,22,81),(22,23,82),(23,24,83),(24,25,84),(25,26,85),(26,27,86),(27,28,87),(28,29,88),(29,30,89),(30,31,90),(31,32,91),(32,33,92),(33,34,93),(34,35,94),(35,36,95),(36,37,96),(37,38,97),(38,39,98),(39,40,99),(40,41,100),(41,42,101),(42,43,102),(43,44,103),(44,45,104),(45,46,105),(46,47,106),(47,48,107),(48,49,108),(49,50,109),(50,51,110),(51,52,111),(52,53,112),(53,54,113),(54,55,114),(55,56,115),(56,57,116),(57,58,117),(58,59,118),(59,60,119),(60,61,120),(61,62,121),(62,63,122),(63,64,123),(64,65,124),(65,66,125),(66,67,126),(67,68,127),(68,69,128),(69,70,129);
/*!40000 ALTER TABLE `students_owe_books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-11  2:27:45
