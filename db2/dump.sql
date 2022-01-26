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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Euismod Urna Nullam Inc.','Tucker Duffy',1),(2,'Duis Cursus Diam Consulting','Jesse Richards',2),(3,'Quis Lectus PC','Melvin Rowe',3),(4,'Proin Limited','Maxwell Myers',4),(5,'Ut Dolor Dapibus LLC','Moses Langley',5),(6,'Diam Ltd','Odette Watson',6),(7,'Praesent Interdum LLC','Willow Gillespie',7),(8,'Pede Incorporated','Prescott Dyer',8),(9,'Est PC','Adena Tanner',9),(10,'Sed Dictum Proin LLC','Dale Owens',10),(11,'Dui Suspendisse Ac Limited','September Craig',11),(12,'Diam Ltd','Kerry Montgomery',12),(13,'In Consectetuer PC','Tarik Walker',13),(14,'Magna LLP','Zachery Mann',14),(15,'Malesuada Ut Sem Company','Isaac Rosales',15),(16,'Dictum Placerat Incorporated','Cameron Reeves',16),(17,'At Fringilla Consulting','Genevieve Battle',17),(18,'Vestibulum Lorem Associates','Jaime Mayo',18),(19,'Enim Mauris Industries','Rowan Pate',19),(20,'In Nec Orci Foundation','Peter Owen',20),(21,'Aliquam Adipiscing Incorporated','Xaviera Mccoy',21),(22,'Mauris Incorporated','Gareth Caldwell',22),(23,'Orci Consectetuer Euismod Limited','Nicole Riley',23),(24,'Gravida Aliquam Tincidunt Incorporated','Martena Hinton',24),(25,'Egestas Aliquam Nec Corporation','Jesse Calhoun',25),(26,'Fusce Mollis Duis Incorporated','Elton Patel',26),(27,'Egestas Fusce Corp.','Tatum Kim',27),(28,'Blandit Nam Foundation','Celeste Smith',28),(29,'Suspendisse Consulting','Arsenio Kinney',29),(30,'Arcu Corp.','Mira Wyatt',30),(31,'Mi Tempor Inc.','Guinevere Lynch',31),(32,'Dis Parturient LLC','Steel Marquez',32),(33,'Libero PC','Raya Beck',33),(34,'Hendrerit Consectetuer Cursus Inc.','Paul Aguilar',34),(35,'Egestas Hendrerit Corporation','Drew Dyer',35),(36,'Tempor Industries','Bert Owen',36),(37,'Eu Institute','Merrill Moses',37),(38,'Lectus Institute','Rowan Manning',38),(39,'Donec Est Corp.','Deacon Morgan',39),(40,'Aenean Eget Industries','Clinton Best',40),(41,'Malesuada Id Corp.','Nola Malone',41),(42,'Ante Lectus Industries','Ira Jordan',42),(43,'Placerat Eget Consulting','Wendy Brown',43),(44,'Urna Nec Corp.','Tyrone Church',44),(45,'Egestas Urna Incorporated','Erich Koch',45),(46,'Neque Sed Industries','Lunea Sanchez',46),(47,'In Corp.','Dacey Estes',47),(48,'Eget Ipsum Corporation','Mari Melendez',48),(49,'Egestas Blandit Nam LLP','Clarke Lewis',49),(50,'Sit Amet Foundation','Indira Barber',50),(51,'Aliquam Ornare Incorporated','Cassady Rowe',51),(52,'Magnis Dis PC','Inga Mcfadden',52),(53,'Sed Et Libero Foundation','Harlan Hull',53),(54,'Sodales Elit Erat LLP','Ray Morgan',54),(55,'Donec Tempus PC','Tanner Lewis',55),(56,'Eu Incorporated','Ruth King',56),(57,'Turpis Non Inc.','Erasmus Castillo',57),(58,'Montes PC','Katell Savage',58),(59,'Neque Vitae Semper Associates','Oliver Pierce',59),(60,'Nulla Semper Industries','Nyssa Morrow',60),(61,'Lacus Limited','Nora Sharp',61),(62,'Quisque Purus Ltd','Ocean Albert',62),(63,'Curae Phasellus LLP','Penelope Cain',63),(64,'Ultrices A Auctor Associates','Deanna Donovan',64),(65,'Eget Ipsum Suspendisse PC','Roanna Mccray',65),(66,'Lectus Pede Ultrices Consulting','Neville Dixon',66),(67,'Viverra Foundation','McKenzie Mcleod',67),(68,'Nullam Ut LLP','Basia Moreno',68),(69,'Dolor Quisque Foundation','Chester Roach',69),(70,'Iaculis Aliquet Foundation','Logan Rios',70),(71,'Augue Corporation','Mechelle Casey',71),(72,'Vestibulum Ante Ipsum Incorporated','Julian Bauer',72),(73,'Eget Mollis Lectus Company','Velma Pruitt',73),(74,'Sed Molestie Sed Inc.','Irene Hodge',74),(75,'Nibh Dolor PC','Dale Decker',75),(76,'Vel Incorporated','Cassandra Mullins',76),(77,'Faucibus Morbi Vehicula Corporation','Moses Cole',77),(78,'Magna Industries','Anthony Blake',78),(79,'Quis Pede LLP','Irma Aguirre',79),(80,'Molestie In Company','Sybill Campos',80),(81,'Fringilla Ltd','Hayes Flowers',81),(82,'Amet Consectetuer Consulting','Sasha Merrill',82),(83,'Vestibulum Neque PC','Joel Eaton',83),(84,'Nunc Commodo Industries','Leo Dunn',84),(85,'Lorem Luctus PC','Gil Good',85),(86,'Mus Proin Vel Industries','Tanek James',86),(87,'Mi Aliquam Gravida Inc.','Gisela Walker',87),(88,'Semper Rutrum Industries','Raven Holden',88),(89,'Nisl Elementum Purus Limited','Vivian Parsons',89),(90,'Ac Mattis Consulting','George Whitney',90),(91,'Quam Vel Sapien Associates','Nerea Fischer',91),(92,'Auctor Non Feugiat PC','Emery Finley',92),(93,'Varius Orci In LLC','Jada Thornton',93),(94,'Et LLC','Driscoll Howell',94),(95,'Sapien Aenean Limited','Mollie Fuentes',95),(96,'Nunc Id Inc.','Ila Hart',96),(97,'Vitae Purus Gravida Consulting','Lucian Mosley',97),(98,'Metus Ltd','Cameron Nash',98),(99,'Tristique Pharetra Quisque Inc.','Sharon Mooney',99),(100,'Sed Hendrerit Corp.','Patricia Workman',100),(101,'Non Foundation','Aquila Knowles',101),(102,'Cras Eu Ltd','Nigel Chase',102),(103,'Vel Sapien Corporation','Amber Bartlett',103),(104,'Magna A Tortor Ltd','Pandora Morin',104),(105,'Iaculis Lacus Associates','Cade Levy',105),(106,'Nunc Lectus Industries','Rooney Mcfarland',106),(107,'Mi Industries','Hasad Tran',107),(108,'Facilisis Vitae Industries','Meredith Monroe',108),(109,'Lorem Eget LLP','Marvin Stewart',109),(110,'Augue Eu LLC','Nathan Olsen',110),(111,'Magna Et Industries','Xantha Glass',111),(112,'Nullam Ltd','Dylan Ellison',112),(113,'Lacus Mauris Non Inc.','Walter Brock',113),(114,'Suspendisse Tristique Neque Corp.','Keaton Thornton',114),(115,'Fringilla Industries','Felix Velez',115),(116,'Lacus Vestibulum Lorem Associates','Blake Christian',116),(117,'Eget Company','Faith Mcintyre',117),(118,'Ullamcorper Duis Limited','Allegra Hardy',118),(119,'Consequat Dolor Industries','Raphael Buchanan',119),(120,'Tincidunt Adipiscing Corporation','Rachel Alston',120),(121,'Nulla Eget Metus Corporation','Igor Gill',121),(122,'Est Ac Consulting','Macy Stephens',122),(123,'Et Incorporated','Emerson Sawyer',123),(124,'Vel Limited','Leo Mcleod',124),(125,'Sapien Gravida Corporation','Gannon Larsen',125),(126,'Eu Sem Company','Burke Brady',126),(127,'Aliquam Eu Accumsan Institute','Walter Osborn',127),(128,'Cras Lorem Lorem LLC','Ezekiel Crawford',128),(129,'Sed Pede Ltd','Julian Key',129),(130,'Et Magnis Dis Incorporated','Kieran Sears',130),(131,'Ante Dictum Incorporated','Kai Rollins',131),(132,'Interdum Limited','Chadwick Wynn',132),(133,'Vulputate Ullamcorper Foundation','Evelyn Prince',133),(134,'A Scelerisque Inc.','Jocelyn Everett',134),(135,'Nec Malesuada Ut Associates','Orson York',135),(136,'Neque Morbi PC','Georgia Mcbride',136),(137,'Suspendisse Dui Fusce Limited','MacKensie Barlow',137),(138,'Nibh Enim Foundation','Jaquelyn Bowers',138),(139,'Luctus Lobortis Foundation','Deanna Sosa',139),(140,'Ut Sem Corporation','Herrod Richardson',140),(141,'Turpis Foundation','Joshua Rose',141),(142,'Rutrum Urna Nec Incorporated','Castor Palmer',142),(143,'Sodales Nisi Consulting','Noelani Fry',143),(144,'Lorem Vehicula Et Ltd','Ursula Lester',144),(145,'Quis Tristique LLC','Solomon Gregory',145),(146,'Lobortis Ultrices Vivamus Inc.','Brian Carroll',146),(147,'Sociis Natoque Ltd','Tatum Mcclain',147),(148,'Sed Eu Foundation','Keelie Wyatt',148),(149,'Curae Donec Tincidunt Associates','Hasad Richardson',149),(150,'Ornare Egestas LLC','Piper Solomon',150),(151,'Aenean Eget Industries','Abra Alston',151),(152,'Parturient LLC','Barry Knight',152),(153,'Arcu Limited','Penelope Chambers',153),(154,'Metus In Nec Incorporated','Patience Mathis',154),(155,'Nibh Vulputate Consulting','Conan Baxter',155),(156,'Mus Proin Foundation','Calvin Faulkner',156),(157,'Lectus Cum Incorporated','Ian Davis',157),(158,'Vestibulum Ante Ipsum Limited','Barclay Simpson',158),(159,'Ipsum Primis In Corp.','Lana Snider',159),(160,'Vivamus Nibh Ltd','Aileen Charles',160),(161,'Nisi Nibh Limited','Caesar Stevens',161),(162,'Nonummy Ac Feugiat LLC','Dominic Fulton',162),(163,'Arcu Morbi Incorporated','Kiayada Mcconnell',163),(164,'Purus Ac Tellus LLC','Oliver Lee',164),(165,'Morbi Institute','Luke Steele',165),(166,'Nec Cursus A LLP','Zephania Shannon',166),(167,'Mauris Eu Elit Ltd','Whilemina Golden',167),(168,'Sem Vitae Industries','Raymond Jackson',168),(169,'Sit Amet Inc.','Brenda Houston',169),(170,'Dictum Augue Malesuada Limited','Myra Wilkinson',170),(171,'Tempus Inc.','Len Potter',171),(172,'Mauris Eu Limited','Allegra Tanner',172),(173,'Cursus Associates','Jameson Murphy',173),(174,'Eu Dolor Egestas LLP','Hanae Stevens',174),(175,'Turpis Egestas LLC','India Savage',175),(176,'Ac Tellus PC','Ebony Parker',176),(177,'A Nunc Corp.','Penelope Marquez',177),(178,'Sagittis Lobortis Corp.','Erin Gallagher',178),(179,'Metus Eu Institute','Caldwell Petty',179),(180,'Senectus Et Institute','Rooney Stanton',180),(181,'Ultrices Iaculis Odio Institute','Steven Gilmore',181),(182,'Turpis Nulla Corp.','Xanthus Norman',182),(183,'Sed Nulla Ante Institute','Finn Pittman',183),(184,'Suspendisse LLP','Phillip Hudson',184),(185,'Nam Consequat Industries','Madeson Campbell',185),(186,'A Felis Ullamcorper Foundation','Ezekiel Boyd',186),(187,'Non Lobortis Limited','Buffy Walton',187),(188,'Ipsum Dolor Sit PC','Cameron Rush',188),(189,'Molestie Orci Tincidunt Company','Eagan Casey',189),(190,'Pellentesque Habitant Company','Rhonda Chan',190),(191,'Non Egestas Corporation','Risa Cooper',191),(192,'Quis Pede Corp.','Naida Fernandez',192),(193,'Ut PC','Susan Olson',193),(194,'Eget Mollis LLC','Bertha Carson',194),(195,'Phasellus Fermentum Industries','Oprah Cochran',195),(196,'Auctor Associates','Jacqueline Bowman',196),(197,'Nunc PC','Kenneth Tanner',197),(198,'Nam Ac Ltd','Gannon Levine',198),(199,'Cubilia Curae Institute','Echo Sheppard',199),(200,'Dapibus Ligula Aliquam Institute','Cally Murray',200);
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
  `faculty_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'Cras'),(2,'nisl.'),(3,'Quisque'),(4,'commodo'),(5,'convallis'),(6,'pretium'),(7,'elit,'),(8,'arcu.'),(9,'ante'),(10,'libero'),(11,'libero'),(12,'auctor.'),(13,'mauris'),(14,'malesuada'),(15,'libero.'),(16,'Vivamus'),(17,'convallis'),(18,'Proin'),(19,'orci,'),(20,'urna'),(21,'aliquet'),(22,'facilisis'),(23,'auctor'),(24,'non'),(25,'libero'),(26,'congue'),(27,'Aenean'),(28,'In'),(29,'ac'),(30,'urna'),(31,'nisl'),(32,'sem.'),(33,'ante'),(34,'consectetuer,'),(35,'erat,'),(36,'arcu'),(37,'vulputate'),(38,'ultricies'),(39,'montes,'),(40,'sem'),(41,'per'),(42,'Maecenas'),(43,'quam'),(44,'quis'),(45,'non'),(46,'eu'),(47,'enim'),(48,'Cras'),(49,'Proin'),(50,'sem'),(51,'nulla'),(52,'dui,'),(53,'Phasellus'),(54,'Curabitur'),(55,'senectus'),(56,'Phasellus'),(57,'libero'),(58,'turpis.'),(59,'fermentum'),(60,'tempus'),(61,'Duis'),(62,'egestas'),(63,'lacus'),(64,'Suspendisse'),(65,'lectus'),(66,'placerat'),(67,'semper'),(68,'dictum'),(69,'Phasellus'),(70,'fringilla'),(71,'aliquam,'),(72,'cursus'),(73,'id'),(74,'massa.'),(75,'ac'),(76,'non'),(77,'accumsan'),(78,'sit'),(79,'aliquet'),(80,'a,'),(81,'molestie.'),(82,'id'),(83,'fermentum'),(84,'sollicitudin'),(85,'Fusce'),(86,'pharetra,'),(87,'sem,'),(88,'Integer'),(89,'mauris'),(90,'massa'),(91,'metus.'),(92,'nec'),(93,'non'),(94,'sit'),(95,'aliquam'),(96,'non'),(97,'quis'),(98,'risus'),(99,'ipsum'),(100,'vulputate'),(101,'Donec'),(102,'turpis'),(103,'sem'),(104,'at'),(105,'leo.'),(106,'diam.'),(107,'lacus'),(108,'facilisis'),(109,'Cras'),(110,'sed'),(111,'Nullam'),(112,'sodales'),(113,'Phasellus'),(114,'nisi'),(115,'eu'),(116,'ipsum'),(117,'justo'),(118,'dis'),(119,'eu,'),(120,'metus.'),(121,'Nulla'),(122,'ligula.'),(123,'tempus'),(124,'nunc'),(125,'Ut'),(126,'sagittis'),(127,'Sed'),(128,'hendrerit.'),(129,'neque.'),(130,'nulla.'),(131,'Cras'),(132,'lacinia.'),(133,'pede'),(134,'senectus'),(135,'risus.'),(136,'aliquam,'),(137,'Ut'),(138,'Aliquam'),(139,'malesuada'),(140,'ligula.'),(141,'orci.'),(142,'pellentesque'),(143,'Nulla'),(144,'mus.'),(145,'mattis'),(146,'felis'),(147,'tincidunt'),(148,'dolor'),(149,'lobortis'),(150,'sit'),(151,'Aliquam'),(152,'enim.'),(153,'Donec'),(154,'et,'),(155,'arcu.'),(156,'arcu'),(157,'at'),(158,'diam'),(159,'mauris'),(160,'aliquam'),(161,'amet,'),(162,'ante'),(163,'ante'),(164,'nisi'),(165,'Sed'),(166,'purus'),(167,'tristique'),(168,'tincidunt'),(169,'molestie'),(170,'In'),(171,'interdum'),(172,'senectus'),(173,'ultrices.'),(174,'sagittis'),(175,'lectus'),(176,'id'),(177,'magnis'),(178,'cursus,'),(179,'molestie'),(180,'semper'),(181,'pede'),(182,'urna'),(183,'tellus.'),(184,'magnis'),(185,'vel'),(186,'dolor,'),(187,'nec'),(188,'lacus.'),(189,'et'),(190,'diam'),(191,'eu'),(192,'libero'),(193,'Praesent'),(194,'In'),(195,'ligula'),(196,'non'),(197,'eu'),(198,'Vestibulum'),(199,'Nunc'),(200,'gravida');
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
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `faculty_id` (`faculty_id`),
  CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'feugiat. Lorem',1),(2,'mauris a',2),(3,'Maecenas libero',3),(4,'vitae risus.',4),(5,'Ut nec',5),(6,'Nam ac',6),(7,'at risus.',7),(8,'enim, condimentum',8),(9,'vitae aliquam',9),(10,'porta elit,',10),(11,'ridiculus mus.',11),(12,'mi fringilla',12),(13,'et malesuada',13),(14,'lorem, sit',14),(15,'Mauris blandit',15),(16,'in molestie',16),(17,'lorem, sit',17),(18,'Vestibulum ante',18),(19,'adipiscing, enim',19),(20,'vitae odio',20),(21,'in, cursus',21),(22,'amet luctus',22),(23,'Lorem ipsum',23),(24,'eu dui.',24),(25,'nisi. Mauris',25),(26,'hendrerit neque.',26),(27,'sed, facilisis',27),(28,'tincidunt nibh.',28),(29,'lobortis mauris.',29),(30,'faucibus leo,',30),(31,'scelerisque, lorem',31),(32,'Suspendisse commodo',32),(33,'nisi a',33),(34,'enim. Etiam',34),(35,'risus. Duis',35),(36,'facilisis, magna',36),(37,'eget varius',37),(38,'in felis.',38),(39,'lacus. Quisque',39),(40,'congue a,',40),(41,'montes, nascetur',41),(42,'id, mollis',42),(43,'at sem',43),(44,'arcu. Sed',44),(45,'non, lacinia',45),(46,'eu tellus.',46),(47,'neque et',47),(48,'sit amet',48),(49,'urna, nec',49),(50,'blandit mattis.',50),(51,'Sed molestie.',51),(52,'sem egestas',52),(53,'nunc risus',53),(54,'Aliquam adipiscing',54),(55,'Aliquam gravida',55),(56,'In at',56),(57,'eu neque',57),(58,'vel, vulputate',58),(59,'purus. Maecenas',59),(60,'placerat, augue.',60),(61,'Mauris non',61),(62,'at auctor',62),(63,'Donec elementum,',63),(64,'enim. Nunc',64),(65,'varius ultrices,',65),(66,'Donec non',66),(67,'eu enim.',67),(68,'velit egestas',68),(69,'Duis dignissim',69),(70,'Maecenas malesuada',70),(71,'est tempor',71),(72,'orci luctus',72),(73,'ornare, lectus',73),(74,'a odio',74),(75,'nec enim.',75),(76,'conubia nostra,',76),(77,'porttitor scelerisque',77),(78,'Aenean euismod',78),(79,'mollis. Phasellus',79),(80,'eget odio.',80),(81,'mollis nec,',81),(82,'sit amet',82),(83,'per inceptos',83),(84,'nibh. Donec',84),(85,'pede et',85),(86,'Morbi metus.',86),(87,'non magna.',87),(88,'interdum. Nunc',88),(89,'Mauris ut',89),(90,'metus eu',90),(91,'Proin eget',91),(92,'quis, tristique',92),(93,'lacus. Aliquam',93),(94,'turpis. In',94),(95,'interdum libero',95),(96,'vulputate, risus',96),(97,'lorem ac',97),(98,'Sed eu',98),(99,'Morbi sit',99),(100,'Nunc pulvinar',100),(101,'ultrices. Duis',101),(102,'tellus non',102),(103,'dolor sit',103),(104,'Donec vitae',104),(105,'Donec sollicitudin',105),(106,'sagittis semper.',106),(107,'sagittis. Nullam',107),(108,'Duis elementum,',108),(109,'nascetur ridiculus',109),(110,'a, malesuada',110),(111,'tortor, dictum',111),(112,'adipiscing lacus.',112),(113,'ac ipsum.',113),(114,'feugiat non,',114),(115,'porttitor eros',115),(116,'tellus. Aenean',116),(117,'ornare lectus',117),(118,'dignissim tempor',118),(119,'a, enim.',119),(120,'feugiat. Sed',120),(121,'Nulla eget',121),(122,'Morbi non',122),(123,'scelerisque mollis.',123),(124,'pede, nonummy',124),(125,'venenatis vel,',125),(126,'risus quis',126),(127,'enim diam',127),(128,'Donec non',128),(129,'imperdiet ullamcorper.',129),(130,'vitae, aliquet',130),(131,'aliquet vel,',131),(132,'massa rutrum',132),(133,'a, magna.',133),(134,'euismod enim.',134),(135,'eu nulla',135),(136,'massa. Mauris',136),(137,'pede et',137),(138,'et, rutrum',138),(139,'tortor nibh',139),(140,'tristique aliquet.',140),(141,'dictum augue',141),(142,'Proin vel',142),(143,'malesuada vel,',143),(144,'cursus et,',144),(145,'at pede.',145),(146,'sodales. Mauris',146),(147,'aliquet, metus',147),(148,'dictum. Proin',148),(149,'Sed diam',149),(150,'nulla at',150),(151,'Morbi metus.',151),(152,'posuere at,',152),(153,'pretium aliquet,',153),(154,'euismod enim.',154),(155,'non, lobortis',155),(156,'in, dolor.',156),(157,'enim, sit',157),(158,'pharetra nibh.',158),(159,'facilisis, magna',159),(160,'cursus et,',160),(161,'convallis dolor.',161),(162,'Duis risus',162),(163,'ante ipsum',163),(164,'feugiat metus',164),(165,'mattis semper,',165),(166,'nibh sit',166),(167,'ornare tortor',167),(168,'auctor vitae,',168),(169,'gravida molestie',169),(170,'eu neque',170),(171,'rutrum lorem',171),(172,'arcu. Sed',172),(173,'in magna.',173),(174,'ornare. In',174),(175,'scelerisque dui.',175),(176,'ipsum non',176),(177,'luctus felis',177),(178,'Quisque ac',178),(179,'ac mattis',179),(180,'Cras pellentesque.',180),(181,'dis parturient',181),(182,'habitant morbi',182),(183,'Morbi vehicula.',183),(184,'facilisis. Suspendisse',184),(185,'hendrerit a,',185),(186,'nonummy ut,',186),(187,'sed, sapien.',187),(188,'augue porttitor',188),(189,'amet, consectetuer',189),(190,'purus. Maecenas',190),(191,'sodales purus,',191),(192,'lacus. Aliquam',192),(193,'egestas. Aliquam',193),(194,'ac, fermentum',194),(195,'Morbi sit',195),(196,'Fusce diam',196),(197,'molestie tellus.',197),(198,'montes, nascetur',198),(199,'eleifend. Cras',199),(200,'semper cursus.',200);
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
  `shelve` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shelves`
--

LOCK TABLES `shelves` WRITE;
/*!40000 ALTER TABLE `shelves` DISABLE KEYS */;
INSERT INTO `shelves` VALUES (1,'17'),(2,'19'),(3,'7'),(4,'13'),(5,'3'),(6,'19'),(7,'11'),(8,'1'),(9,'7'),(10,'11'),(11,'1'),(12,'17'),(13,'3'),(14,'15'),(15,'11'),(16,'1'),(17,'19'),(18,'19'),(19,'9'),(20,'3'),(21,'1'),(22,'7'),(23,'5'),(24,'19'),(25,'15'),(26,'1'),(27,'13'),(28,'9'),(29,'1'),(30,'5'),(31,'5'),(32,'13'),(33,'1'),(34,'7'),(35,'17'),(36,'15'),(37,'9'),(38,'17'),(39,'11'),(40,'7'),(41,'1'),(42,'15'),(43,'15'),(44,'13'),(45,'15'),(46,'15'),(47,'5'),(48,'17'),(49,'9'),(50,'1'),(51,'13'),(52,'7'),(53,'11'),(54,'11'),(55,'1'),(56,'13'),(57,'1'),(58,'7'),(59,'17'),(60,'9'),(61,'19'),(62,'17'),(63,'9'),(64,'15'),(65,'11'),(66,'15'),(67,'13'),(68,'15'),(69,'13'),(70,'13'),(71,'5'),(72,'5'),(73,'13'),(74,'15'),(75,'17'),(76,'11'),(77,'9'),(78,'1'),(79,'17'),(80,'13'),(81,'3'),(82,'19'),(83,'9'),(84,'17'),(85,'13'),(86,'3'),(87,'3'),(88,'9'),(89,'15'),(90,'17'),(91,'7'),(92,'5'),(93,'19'),(94,'9'),(95,'15'),(96,'13'),(97,'17'),(98,'7'),(99,'17'),(100,'11'),(101,'13'),(102,'1'),(103,'1'),(104,'11'),(105,'19'),(106,'9'),(107,'1'),(108,'7'),(109,'11'),(110,'9'),(111,'17'),(112,'13'),(113,'5'),(114,'19'),(115,'11'),(116,'5'),(117,'17'),(118,'15'),(119,'5'),(120,'5'),(121,'11'),(122,'1'),(123,'1'),(124,'5'),(125,'11'),(126,'19'),(127,'15'),(128,'9'),(129,'19'),(130,'7'),(131,'13'),(132,'7'),(133,'3'),(134,'19'),(135,'19'),(136,'11'),(137,'19'),(138,'3'),(139,'1'),(140,'7'),(141,'5'),(142,'7'),(143,'5'),(144,'13'),(145,'19'),(146,'15'),(147,'17'),(148,'5'),(149,'13'),(150,'17'),(151,'9'),(152,'15'),(153,'1'),(154,'15'),(155,'11'),(156,'17'),(157,'7'),(158,'3'),(159,'1'),(160,'5'),(161,'9'),(162,'7'),(163,'19'),(164,'15'),(165,'5'),(166,'19'),(167,'5'),(168,'17'),(169,'5'),(170,'5'),(171,'9'),(172,'17'),(173,'17'),(174,'17'),(175,'9'),(176,'9'),(177,'19'),(178,'19'),(179,'11'),(180,'5'),(181,'13'),(182,'9'),(183,'13'),(184,'17'),(185,'13'),(186,'13'),(187,'3'),(188,'1'),(189,'11'),(190,'7'),(191,'19'),(192,'3'),(193,'11'),(194,'17'),(195,'5'),(196,'13'),(197,'11'),(198,'3'),(199,'19'),(200,'3');
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Maggie','Stewart','618-8727',1,1),(2,'Ulric','Woods','1-517-781-2575',2,2),(3,'Avye','Allen','326-6654',3,3),(4,'Ezra','Hamilton','702-5283',4,4),(5,'Chaim','Rhodes','262-9036',5,5),(6,'Maya','Murphy','616-4717',6,6),(7,'Guy','Pate','566-3747',7,7),(8,'August','Peck','1-488-700-2208',8,8),(9,'Cooper','Yates','1-624-889-7209',9,9),(10,'Jocelyn','Potter','1-865-478-5328',10,10),(11,'Dalton','Bright','1-302-344-6332',11,11),(12,'Paul','Neal','1-525-660-4043',12,12),(13,'Justin','Lindsay','115-2731',13,13),(14,'Lillian','Brooks','1-571-633-4617',14,14),(15,'Amal','Rios','1-447-598-4439',15,15),(16,'Medge','Hoffman','386-9601',16,16),(17,'Blaze','Mosley','341-8932',17,17),(18,'Dorothy','Terrell','1-217-483-6660',18,18),(19,'MacKensie','Whitley','238-8442',19,19),(20,'Brock','Barker','542-2234',20,20),(21,'Gemma','Valdez','555-6435',21,21),(22,'Ori','Hoffman','564-2668',22,22),(23,'Brian','Mcdaniel','1-235-865-2361',23,23),(24,'Maisie','Stark','1-275-888-3225',24,24),(25,'Emery','Conrad','708-9837',25,25),(26,'Faith','Lynch','981-3504',26,26),(27,'Slade','Riddle','1-144-947-3696',27,27),(28,'Noel','Fields','836-3748',28,28),(29,'Owen','Oneil','938-4120',29,29),(30,'Ronan','Jenkins','487-2124',30,30),(31,'Mira','Chan','1-290-475-1241',31,31),(32,'Hakeem','Cherry','1-788-388-7266',32,32),(33,'Ori','Middleton','314-3243',33,33),(34,'Reese','Church','1-728-845-2917',34,34),(35,'Aladdin','Thornton','517-1066',35,35),(36,'Fletcher','Kent','1-284-532-0388',36,36),(37,'Wang','Hill','1-207-373-9786',37,37),(38,'Shea','Dixon','315-1372',38,38),(39,'Fletcher','Bridges','728-1712',39,39),(40,'Iliana','Schwartz','203-2515',40,40),(41,'Nathan','Allen','1-835-519-5586',41,41),(42,'Allistair','Madden','1-757-256-1675',42,42),(43,'Merrill','Robinson','1-811-751-9463',43,43),(44,'Marcia','Burnett','1-150-367-8718',44,44),(45,'Molly','Hodge','786-4716',45,45),(46,'Alexander','Craig','461-1183',46,46),(47,'Dale','Chase','426-6637',47,47),(48,'Maris','Hopper','583-6246',48,48),(49,'Peter','Mcdaniel','1-898-332-9224',49,49),(50,'Neve','Moses','311-6498',50,50),(51,'Steel','Goodman','887-5586',51,51),(52,'Haley','Rivas','1-526-837-2767',52,52),(53,'Petra','Ward','1-267-555-5537',53,53),(54,'Selma','Sellers','309-7646',54,54),(55,'Xandra','Reyes','1-679-989-3546',55,55),(56,'Mikayla','Mills','1-494-729-7606',56,56),(57,'Grace','Soto','1-730-277-4312',57,57),(58,'Chloe','Ballard','419-0145',58,58),(59,'Denton','Ayala','518-0321',59,59),(60,'Julian','Chan','614-7751',60,60),(61,'Caleb','Wyatt','1-175-635-4416',61,61),(62,'Nadine','Terrell','1-469-510-1761',62,62),(63,'Kyle','Lindsey','863-3118',63,63),(64,'Pandora','Mcknight','1-547-685-5759',64,64),(65,'Roth','Morris','1-563-231-8523',65,65),(66,'Clayton','Warren','1-213-416-2359',66,66),(67,'Peter','Salinas','1-222-666-5186',67,67),(68,'Jordan','Branch','1-371-631-1765',68,68),(69,'Basil','Melton','1-838-324-0161',69,69),(70,'Mariam','Bush','336-4342',70,70),(71,'Blaze','Downs','1-259-551-5551',71,71),(72,'Breanna','Stephens','1-204-595-1436',72,72),(73,'Madeson','Ferguson','562-6135',73,73),(74,'Lara','Reyes','1-375-406-1156',74,74),(75,'Patricia','Rodriquez','573-4803',75,75),(76,'Avram','Crosby','1-685-588-5317',76,76),(77,'Sonya','Acosta','623-3181',77,77),(78,'Damon','White','1-702-257-0074',78,78),(79,'Christopher','Scott','1-778-826-6779',79,79),(80,'Kerry','Watts','767-5636',80,80),(81,'Madaline','Mccall','1-916-464-6394',81,81),(82,'Buckminster','Hester','1-183-516-7432',82,82),(83,'Robin','Buck','876-7618',83,83),(84,'Kibo','Jones','597-2085',84,84),(85,'Evangeline','Morales','932-3474',85,85),(86,'Dexter','Chang','110-5976',86,86),(87,'Axel','Bates','1-254-151-1328',87,87),(88,'Ursa','English','1-746-392-8368',88,88),(89,'Jason','Sheppard','461-4231',89,89),(90,'Violet','Gibbs','1-326-672-7291',90,90),(91,'Charity','Kent','542-3426',91,91),(92,'Deanna','Jordan','1-551-448-5460',92,92),(93,'Luke','Cox','1-726-958-7812',93,93),(94,'Dawn','Carpenter','938-3877',94,94),(95,'Olga','Bradford','575-6739',95,95),(96,'Denise','Foster','611-9652',96,96),(97,'Octavius','William','1-851-257-6355',97,97),(98,'Ila','Reynolds','660-4328',98,98),(99,'Lavinia','Cobb','1-368-773-7484',99,99),(100,'Ryan','Park','748-4046',100,100),(101,'Zenia','Farley','524-3815',101,101),(102,'Abdul','Phillips','1-771-542-1244',102,102),(103,'Josiah','Snider','140-9846',103,103),(104,'Quamar','Church','1-368-673-9375',104,104),(105,'Lee','Mayer','1-558-474-4447',105,105),(106,'Karleigh','Ferguson','140-5385',106,106),(107,'Lewis','Pugh','1-292-754-1704',107,107),(108,'Tyler','Nelson','1-947-481-1458',108,108),(109,'Kevyn','Briggs','480-3278',109,109),(110,'Mara','Beach','378-4111',110,110),(111,'Xavier','Klein','1-872-719-4042',111,111),(112,'Ian','Mercer','1-523-657-6925',112,112),(113,'David','Sexton','1-586-385-6027',113,113),(114,'Lacy','Lynch','325-2116',114,114),(115,'Tanek','Blevins','1-167-487-2435',115,115),(116,'Brianna','Norman','469-1762',116,116),(117,'Josephine','Hartman','1-666-862-6867',117,117),(118,'Sybil','Heath','1-514-253-0493',118,118),(119,'Austin','Ortiz','618-8718',119,119),(120,'Harper','Hancock','1-354-737-1127',120,120),(121,'Sybil','Snider','672-3262',121,121),(122,'Levi','Hurley','877-5581',122,122),(123,'Colette','Ward','1-428-627-0902',123,123),(124,'Megan','Parks','544-0969',124,124),(125,'Myles','Harding','252-9425',125,125),(126,'Shafira','Mcmahon','236-5007',126,126),(127,'Hannah','Mcclain','1-469-738-5728',127,127),(128,'Graiden','Vega','1-465-248-2415',128,128),(129,'Wade','Ochoa','1-489-877-1051',129,129),(130,'Dillon','Moon','1-616-469-8623',130,130),(131,'Adam','Suarez','224-0926',131,131),(132,'Vladimir','Conner','1-974-181-3736',132,132),(133,'Hamilton','Chandler','1-285-376-5666',133,133),(134,'Sade','Bradshaw','1-940-214-7477',134,134),(135,'Madonna','Vincent','1-717-333-3727',135,135),(136,'Celeste','Sweet','366-0103',136,136),(137,'Jasmine','Solomon','1-722-580-8868',137,137),(138,'Adam','Hill','847-1763',138,138),(139,'David','Prince','1-461-726-7026',139,139),(140,'Stella','Douglas','1-185-186-2586',140,140),(141,'Edward','Dodson','1-403-487-6213',141,141),(142,'MacKensie','Conrad','1-317-849-8861',142,142),(143,'Alexandra','Murray','1-654-539-4779',143,143),(144,'Kevin','Shelton','1-836-302-5267',144,144),(145,'Naida','Wilkinson','1-996-886-4182',145,145),(146,'Octavius','Valenzuela','861-6667',146,146),(147,'Peter','Ayala','1-167-324-4244',147,147),(148,'Carol','Bartlett','974-5976',148,148),(149,'Sydnee','Price','464-5224',149,149),(150,'Geoffrey','Lucas','1-980-776-7423',150,150),(151,'Fritz','Glover','1-584-268-5373',151,151),(152,'Portia','Espinoza','101-8354',152,152),(153,'Deacon','Grimes','570-7271',153,153),(154,'Harding','Hodges','1-752-436-4602',154,154),(155,'Sharon','Mendez','1-754-137-8616',155,155),(156,'Seth','Morales','1-352-624-1272',156,156),(157,'Wade','Cooley','1-739-876-9098',157,157),(158,'Drew','English','1-726-741-4143',158,158),(159,'Baxter','Cole','534-8142',159,159),(160,'Damian','Velez','764-9484',160,160),(161,'Carly','Pugh','575-4619',161,161),(162,'Hillary','Harvey','1-883-370-7280',162,162),(163,'Idola','Hutchinson','683-6444',163,163),(164,'Kaseem','Compton','921-3306',164,164),(165,'Nehru','Ayers','833-8460',165,165),(166,'Tanisha','Acosta','655-1273',166,166),(167,'Ferdinand','Bryan','1-317-632-1264',167,167),(168,'Mollie','Davis','662-8364',168,168),(169,'Harrison','Little','448-1526',169,169),(170,'Kieran','Newton','583-5678',170,170),(171,'Oliver','Bradford','531-6596',171,171),(172,'Ezekiel','Medina','1-811-510-4791',172,172),(173,'Jade','Vargas','838-5556',173,173),(174,'Wesley','Davidson','546-2264',174,174),(175,'Charles','Matthews','393-5876',175,175),(176,'Blythe','Noble','1-680-285-7273',176,176),(177,'Iona','Cook','266-8365',177,177),(178,'Quinlan','Wise','483-4631',178,178),(179,'Jerome','Joyce','156-2504',179,179),(180,'Delilah','Wilkins','461-4443',180,180),(181,'Daria','Hess','535-0323',181,181),(182,'Shana','York','1-884-654-9735',182,182),(183,'Stewart','Bailey','811-3494',183,183),(184,'Laura','Riggs','241-2638',184,184),(185,'Devin','Fuller','594-3267',185,185),(186,'Linda','Chaney','1-397-756-8175',186,186),(187,'Ralph','Key','423-8525',187,187),(188,'Nola','Carpenter','1-797-208-3926',188,188),(189,'Clio','Mueller','1-544-235-5810',189,189),(190,'Zena','Whitley','837-1472',190,190),(191,'Timothy','Huff','329-7167',191,191),(192,'Ira','Craft','1-540-384-5061',192,192),(193,'Thaddeus','Roth','1-505-257-3813',193,193),(194,'Wallace','Chambers','1-784-303-8135',194,194),(195,'Larissa','Buckley','764-3023',195,195),(196,'Whilemina','Thomas','557-3541',196,196),(197,'Bert','Donovan','1-331-774-0445',197,197),(198,'Hadassah','Keith','1-828-272-5862',198,198),(199,'Xantha','Arnold','1-518-573-9908',199,199),(200,'Darryl','Hinton','425-8556',200,200);
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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_owe_books`
--

LOCK TABLES `students_owe_books` WRITE;
/*!40000 ALTER TABLE `students_owe_books` DISABLE KEYS */;
INSERT INTO `students_owe_books` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),(41,41,41),(42,42,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),(48,48,48),(49,49,49),(50,50,50),(51,51,51),(52,52,52),(53,53,53),(54,54,54),(55,55,55),(56,56,56),(57,57,57),(58,58,58),(59,59,59),(60,60,60),(61,61,61),(62,62,62),(63,63,63),(64,64,64),(65,65,65),(66,66,66),(67,67,67),(68,68,68),(69,69,69),(70,70,70),(71,71,71),(72,72,72),(73,73,73),(74,74,74),(75,75,75),(76,76,76),(77,77,77),(78,78,78),(79,79,79),(80,80,80),(81,81,81),(82,82,82),(83,83,83),(84,84,84),(85,85,85),(86,86,86),(87,87,87),(88,88,88),(89,89,89),(90,90,90),(91,91,91),(92,92,92),(93,93,93),(94,94,94),(95,95,95),(96,96,96),(97,97,97),(98,98,98),(99,99,99),(100,100,100),(101,101,101),(102,102,102),(103,103,103),(104,104,104),(105,105,105),(106,106,106),(107,107,107),(108,108,108),(109,109,109),(110,110,110),(111,111,111),(112,112,112),(113,113,113),(114,114,114),(115,115,115),(116,116,116),(117,117,117),(118,118,118),(119,119,119),(120,120,120),(121,121,121),(122,122,122),(123,123,123),(124,124,124),(125,125,125),(126,126,126),(127,127,127),(128,128,128),(129,129,129),(130,130,130),(131,131,131),(132,132,132),(133,133,133),(134,134,134),(135,135,135),(136,136,136),(137,137,137),(138,138,138),(139,139,139),(140,140,140),(141,141,141),(142,142,142),(143,143,143),(144,144,144),(145,145,145),(146,146,146),(147,147,147),(148,148,148),(149,149,149),(150,150,150),(151,151,151),(152,152,152),(153,153,153),(154,154,154),(155,155,155),(156,156,156),(157,157,157),(158,158,158),(159,159,159),(160,160,160),(161,161,161),(162,162,162),(163,163,163),(164,164,164),(165,165,165),(166,166,166),(167,167,167),(168,168,168),(169,169,169),(170,170,170),(171,171,171),(172,172,172),(173,173,173),(174,174,174),(175,175,175),(176,176,176),(177,177,177),(178,178,178),(179,179,179),(180,180,180),(181,181,181),(182,182,182),(183,183,183),(184,184,184),(185,185,185),(186,186,186),(187,187,187),(188,188,188),(189,189,189),(190,190,190),(191,191,191),(192,192,192),(193,193,193),(194,194,194),(195,195,195),(196,196,196),(197,197,197),(198,198,198),(199,199,199),(200,200,200);
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

-- Dump completed on 2022-01-26 16:44:22
