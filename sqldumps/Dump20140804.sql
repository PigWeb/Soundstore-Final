CREATE DATABASE  IF NOT EXISTS `store` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `store`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: store
-- ------------------------------------------------------
-- Server version	5.6.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artista` (
  `idartista` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `cant_discos` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idartista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
INSERT INTO `artista` VALUES (1002,'Foo Fighters','Rock','6'),(1023,'Nirvana','Grunge','3'),(1029,'Michael Jackson','Pop','3'),(1034,'Green Day','Punk','3'),(1200,'The Ramones','Punk','5'),(1254,'Eminem','Hip Hop','4'),(1340,'Jimmy Hendrix','Rock','3'),(1440,'David Guetta','Electro','3'),(1920,'The Weeks','Indie','1');
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `idc` int(11) NOT NULL AUTO_INCREMENT,
  `numeroventa` int(11) DEFAULT NULL,
  `imagen` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `precio` varchar(45) DEFAULT NULL,
  `cantidad` varchar(45) DEFAULT NULL,
  `subtotal` varchar(45) DEFAULT NULL,
  `iddisco` int(11) DEFAULT NULL,
  `mailusr` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idc`),
  KEY `iddisco_idx` (`iddisco`),
  KEY `mailusr_idx` (`mailusr`),
  CONSTRAINT `iddisco` FOREIGN KEY (`iddisco`) REFERENCES `disco` (`iddisco`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mailusr` FOREIGN KEY (`mailusr`) REFERENCES `usuario` (`email`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (2,1,'JimiHendrix.jpg','Are You Experienced?','46','1','46',20149,'algusta@gmail.com'),(3,1,'Jimiaxis.jpg','Axis Bold As Love','52','1','52',20455,'algusta@gmail.com'),(4,1,'jimiladyland.jpg','Electric Ladyland','740','1','740',20999,'algusta@gmail.com'),(5,1,'Guetta1.png','Nothing But The Beat','57','1','57',22190,'algusta@gmail.com'),(6,1,'thriller.jpg','Thriller','580','2','1160',39002,'algusta@gmail.com'),(7,2,'Jimiaxis.jpg','Axis Bold As Love','52','3','156',20455,'pilarpa@gmail.com'),(8,2,'JimiHendrix.jpg','Are You Experienced?','46','1','46',20149,'pilarpa@gmail.com'),(9,2,'jimiladyland.jpg','Electric Ladyland','740','1','740',20999,'pilarpa@gmail.com'),(10,3,'JimiHendrix.jpg','Are You Experienced?','46','1','46',20149,'ffernandez@gmail.com'),(11,4,'ff-iyh.jpg','In Your Honor','54','1','54',10023,'algusta@gmail.com'),(12,4,'jimiladyland.jpg','Electric Ladyland','740','1','740',20999,'algusta@gmail.com'),(13,5,'ff-iyh.jpg','In Your Honor','54','1','54',10023,'pirulinera@gmail.com'),(14,5,'jimiladyland.jpg','Electric Ladyland','740','1','740',20999,'pirulinera@gmail.com'),(15,6,'ff-iyh.jpg','In Your Honor','54','1','54',10023,'ffernandez@gmail.com'),(16,6,'jimiladyland.jpg','Electric Ladyland','740','1','740',20999,'ffernandez@gmail.com'),(17,7,'ff-iyh.jpg','In Your Honor','54','1','54',10023,'pirulinera@gmail.com'),(18,7,'jimiladyland.jpg','Electric Ladyland','740','1','740',20999,'pirulinera@gmail.com'),(19,8,'ff-iyh.jpg','In Your Honor','54','1','54',10023,'algusta@gmail.com'),(20,8,'jimiladyland.jpg','Electric Ladyland','740','1','740',20999,'algusta@gmail.com'),(21,9,'ff-iyh.jpg','In Your Honor','54','1','54',10023,'pilarpa@gmail.com'),(22,9,'jimiladyland.jpg','Electric Ladyland','740','1','740',20999,'pilarpa@gmail.com'),(32,10,'ff-iyh.jpg','In Your Honor','54','1','54',10023,'algusta@gmail.com'),(33,10,'jimiladyland.jpg','Electric Ladyland','740','1','740',20999,'algusta@gmail.com'),(34,10,'weeks.jpg','The Weeks','50','1','50',39004,'algusta@gmail.com'),(36,11,'jimiladyland.jpg','Electric Ladyland','740','1','740',20999,'algusta@gmail.com'),(37,11,'ramonespleasant.jpg','Pleasant Dreams','46','1','46',32535,'algusta@gmail.com'),(38,12,'ff-iyh.jpg','In Your Honor','54','1','54',10023,'algusta@gmail.com'),(39,12,'Nevermind.jpg','Nevermind','45','1','45',10020,'algusta@gmail.com'),(40,13,'JimiHendrix.jpg','Are You Experienced?','46','1','46',20149,'pirulinera@gmail.com'),(41,13,'Jimiaxis.jpg','Axis Bold As Love','52','1','52',20455,'pirulinera@gmail.com'),(42,13,'jimiladyland.jpg','Electric Ladyland','740','1','740',20999,'pirulinera@gmail.com'),(43,14,'Jimiaxis.jpg','Axis Bold As Love','52','1','52',20455,'administrador@soundstore.com'),(44,15,'ff-iyh.jpg','In Your Honor','54','2','108',10023,'algusta@gmail.com'),(45,15,'ramonespleasant.jpg','Pleasant Dreams','46','1','46',32535,'algusta@gmail.com'),(46,16,'bad.jpg','Bad','56','1','56',20030,'algusta@gmail.com'),(47,16,'thriller.jpg','Thriller','580','1','580',39002,'algusta@gmail.com'),(48,17,'Guetta1.png','Nothing But The Beat','45','1','45',22190,'algusta@gmail.com'),(49,17,'weeks.jpg','The Weeks','50','1','50',39004,'algusta@gmail.com'),(50,18,'Nevermind.jpg','Nevermind','45','1','45',10020,'algusta@gmail.com'),(51,19,'Guetta1.png','Nothing But The Beat','45','1','45',22190,'algusta@gmail.com'),(52,19,'Jimiaxis.jpg','Axis Bold As Love','52','1','52',20455,'algusta@gmail.com'),(53,20,'ff-iyh.jpg','In Your Honor','54','1','54',10023,'administrador@soundstore.com'),(54,20,'JimiHendrix.jpg','Are You Experienced?','46','1','46',20149,'administrador@soundstore.com'),(55,20,'Eminem.jpg','Marshall Mathers LP','49','1','49',10032,'administrador@soundstore.com'),(56,21,'Eminem.jpg','Marshall Mathers LP','49','1','49',10032,'administrador@soundstore.com'),(57,22,'ff-iyh.jpg','In Your Honor','54','1','54',10023,'algusta@gmail.com'),(58,22,'thecolor.jpg','The Color And The Shape','40','1','40',12003,'algusta@gmail.com');
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disco`
--

DROP TABLE IF EXISTS `disco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disco` (
  `iddisco` int(11) NOT NULL,
  `id_artista` int(11) DEFAULT NULL,
  `nombre_d` varchar(45) DEFAULT NULL,
  `artista` varchar(45) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `formato` varchar(45) DEFAULT NULL,
  `portada` varchar(45) DEFAULT NULL,
  `tema_preview` varchar(45) DEFAULT NULL,
  `nombretpre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddisco`),
  KEY `artist_idx` (`artista`),
  KEY `artista_idx` (`artista`),
  KEY `idartista_idx` (`id_artista`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disco`
--

LOCK TABLES `disco` WRITE;
/*!40000 ALTER TABLE `disco` DISABLE KEYS */;
INSERT INTO `disco` VALUES (10020,1023,'Nevermind','Nirvana','Grunge',45,'CD','Nevermind.jpg','smells.mp3','Smells Like Teen Spirit'),(10023,1002,'In Your Honor','Foo Fighters','Rock',54,'CD','ff-iyh.jpg','bestou.mp3','Best of You'),(10032,1254,'Marshall Mathers LP','Eminem','Hip Hop',49,'CD','Eminem.jpg','the real ss.mp3','The Real Slim Shady'),(10073,2333,'Trueno TIerra','La Renga','Rock Nacional',15,'CD','Truenotierra.jpg','03 - Ruta 40.mp3','Ruta 40'),(12003,1002,'The Color And The Shape','Foo Fighters','Rock',40,'CD','thecolor.jpg','Monkey.mp3','Monkey Wrench'),(20030,1029,'Bad','Michael Jackson','Pop',56,'CD','bad.jpg','Bad.mp3','Bad'),(20149,1340,'Are You Experienced?','Jimi Hendrix','Rock',46,'CD','JimiHendrix.jpg','Purple.MP3','Purple Haze'),(20455,1340,'Axis Bold As Love','Jimi Hendrix','Rock',52,'CD','Jimiaxis.jpg','Castles.MP3','Castles Made Of Sand'),(20999,1340,'Electric Ladyland','Jimi Hendrix','Rock',740,'Vinilo','jimiladyland.jpg','Watchtower.MP3','All Along The Watchtower'),(22190,1440,'Nothing But The Beat','David Guetta','Musica Electronica',45,'CD','Guetta1.png','tit.mp3','Titanium'),(32535,1200,'Pleasant Dreams','The Ramones','Punk',46,'CD','ramonespleasant.jpg','KKK.mp3','The KKK Took My Baby Away'),(39002,1029,'Thriller','Michael Jackson','Pop',580,'Vinilo','thriller.jpg','BEAT IT.mp3','Beat It'),(39004,1920,'The Weeks','The Weeks','Indie',50,'CD','weeks.jpg','The Weeks-thwgui.mp3','The House We Grew Up In ');
/*!40000 ALTER TABLE `disco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `email` varchar(60) NOT NULL,
  `nomape` varchar(45) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `admin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('administrador@soundstore.com','Administrador',45,'Avenida Rivadavia 6000','Capital Federal','Capital Federal','123456','1'),('algusta@gmail.com','Gustavo Albo',27,'Avenida de Mayo 925','Ramos Mejia','Buenos Aires','33434223','0'),('ffernandez@gmail.com','Federico Fernandez',21,'Pampa 3638','San Justo','Buenos Aires','12456','0'),('jperez@gmail.com','Juan Perez',34,'Balcarce 50','Capital Federal','Capital Federal','123456','0'),('pilarpa@gmail.com','Pilar Paradela',26,'Avenida Rivadavia 13200','Castelar','Buenos Aires','123456','0'),('pirulinera@gmail.com','Pilar',25,'Florencio Varela 1900','San Justo','Buenos Aires','123456','0');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'store'
--
/*!50003 DROP PROCEDURE IF EXISTS `adddi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `adddi`(IN Id INT(11), IN Idarti INT(11), IN ndisco varchar(45), 
IN artist varchar(45), IN genero varchar(45), IN precio INT(11),IN formato varchar(45), IN nomimg varchar(45),
IN nmp3 varchar(45),IN npre varchar(45))
BEGIN

INSERT INTO disco VALUES(Id,Idarti,ndisco,artist,genero,precio,formato,nomimg,nmp3,npre);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `adduser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `adduser`(IN email varchar(60), IN nombre varchar(45),  IN edad int(11), IN dire varchar(45), IN locali varchar(45), 
IN pcia varchar(45), IN p1 varchar(32),IN admin varchar(32))
BEGIN

INSERT INTO usuario VALUES(email,nombre,edad,dire,locali,pcia,p1,admin);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `conusr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `conusr`(IN mail varchar(60))
BEGIN

SELECT * FROM usuario WHERE email=mail;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deld` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deld`(IN disco varchar(45))
BEGIN

DELETE FROM `store`.`disco` WHERE `iddisco`=disco;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delusr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delusr`(IN mail varchar (60))
BEGIN

DELETE FROM `store`.`usuario` WHERE `email`=mail;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `disco` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `disco`(IN d INT(11))
BEGIN

SELECT * FROM disco WHERE iddisco=d;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingresacompra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingresacompra`(IN numeroventa int(11), IN imagen varchar(45), 
IN nombre varchar(45), IN precio varchar(45), IN cantidad varchar(45), 
IN subtotal varchar(45), IN iddisco INT(11), IN email varchar(45))
BEGIN

	INSERT INTO compra (numeroventa,imagen,nombre,precio,cantidad,subtotal,iddisco,mailusr)
	values(numeroventa,imagen,nombre,precio,cantidad,subtotal,iddisco,email);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `qusr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `qusr`(IN d varchar(60))
BEGIN

SELECT * FROM usuario WHERE email=d;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search1`(IN d VARCHAR(45))
BEGIN

SELECT * FROM disco WHERE nombre_d LIKE d;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `search2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `search2`(IN d VARCHAR(45))
BEGIN

SELECT * FROM disco WHERE artista LIKE d;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `selallcomp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `selallcomp`()
BEGIN

SELECT * FROM store.compra;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `selalldisco` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `selalldisco`()
BEGIN

SELECT * FROM disco;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `selallusr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `selallusr`()
BEGIN

SELECT * FROM store.usuario;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `seleventa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `seleventa`()
BEGIN

		select * from compra order by numeroventa DESC limit 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updusr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updusr`(IN nombre varchar(45),  
IN edad int(11), IN dire varchar(45), IN locali varchar(45), 
IN pcia varchar(45), IN p1 varchar(32),IN admin varchar(32), IN email varchar(60))
BEGIN

UPDATE `store`.`usuario` SET `nomape`=nombre, 
`edad`=edad, `direccion`=dire, `localidad`=locali,`provincia`=pcia, `password`=p1, `admin`=admin
WHERE `email`=email;

END ;;
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

-- Dump completed on 2014-08-04 17:41:03
