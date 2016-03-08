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
  PRIMARY KEY (`idc`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (2,1,'JimiHendrix.jpg','Are You Experienced?','46','1','46'),(3,1,'Jimiaxis.jpg','Axis Bold As Love','52','1','52'),(4,1,'jimiladyland.jpg','Electric Ladyland','740','1','740'),(5,1,'Guetta1.png','Nothing But The Beat','57','1','57'),(6,1,'thriller.jpg','Thriller','580','2','1160'),(7,2,'Jimiaxis.jpg','Axis Bold As Love','52','3','156'),(8,2,'JimiHendrix.jpg','Are You Experienced?','46','1','46'),(9,2,'jimiladyland.jpg','Electric Ladyland','740','1','740'),(10,3,'JimiHendrix.jpg','Are You Experienced?','46','1','46'),(11,4,'ff-iyh.jpg','In Your Honor','54','1','54'),(12,4,'jimiladyland.jpg','Electric Ladyland','740','1','740'),(13,5,'ff-iyh.jpg','In Your Honor','54','1','54'),(14,5,'jimiladyland.jpg','Electric Ladyland','740','1','740'),(15,6,'ff-iyh.jpg','In Your Honor','54','1','54'),(16,6,'jimiladyland.jpg','Electric Ladyland','740','1','740'),(17,7,'ff-iyh.jpg','In Your Honor','54','1','54'),(18,7,'jimiladyland.jpg','Electric Ladyland','740','1','740'),(19,8,'ff-iyh.jpg','In Your Honor','54','1','54'),(20,8,'jimiladyland.jpg','Electric Ladyland','740','1','740'),(21,9,'ff-iyh.jpg','In Your Honor','54','1','54'),(22,9,'jimiladyland.jpg','Electric Ladyland','740','1','740'),(23,10,'ff-iyh.jpg','In Your Honor','54','1','54'),(24,10,'jimiladyland.jpg','Electric Ladyland','740','1','740');
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
  KEY `idartista_idx` (`id_artista`),
  CONSTRAINT `idartista` FOREIGN KEY (`id_artista`) REFERENCES `artista` (`idartista`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disco`
--

LOCK TABLES `disco` WRITE;
/*!40000 ALTER TABLE `disco` DISABLE KEYS */;
INSERT INTO `disco` VALUES (10020,1023,'Nevermind','Nirvana','Grunge',45,'CD','Nevermind.jpg','smells.mp3','Smells Like Teen Spirit'),(10023,1002,'In Your Honor','Foo Fighters','Rock',54,'CD','ff-iyh.jpg','bestou.mp3','Best of You'),(10032,1254,'Marshall Mathers LP','Eminem','Hip Hop',49,'CD','Eminem.jpg','the real ss.mp3','The Real Slim Shady'),(12003,1002,'The Color And The Shape','Foo Fighters','Rock',40,'CD','thecolor.jpg','Monkey.mp3','Monkey Wrench'),(20030,1029,'Bad','Michael Jackson','Pop',56,'CD','bad.jpg','Bad.mp3','Bad'),(20149,1340,'Are You Experienced?','Jimi Hendrix','Rock',46,'CD','JimiHendrix.jpg','Purple.MP3','Purple Haze'),(20455,1340,'Axis Bold As Love','Jimi Hendrix','Rock',52,'CD','Jimiaxis.jpg','Castles.MP3','Castles Made Of Sand'),(20999,1340,'Electric Ladyland','Jimi Hendrix','Rock',740,'Vinilo','jimiladyland.jpg','Watchtower.MP3','All Along The Watchtower'),(22190,1440,'Nothing But The Beat','David Guetta','Electro',57,'CD','Guetta1.png','tit.mp3','Titanium'),(32356,1034,'American Idiot','Green Day','Punk',50,'CD','greenday.png','Ameridiot.mp3','American Idiot'),(32535,1200,'Pleasant Dreams','The Ramones','Punk',46,'CD','ramonespleasant.jpg','KKK.mp3','The KKK Took My Baby Away'),(39002,1029,'Thriller','Michael Jackson','Pop',580,'Vinilo','thriller.jpg','BEAT IT.mp3','Beat It'),(39004,1920,'The Weeks','The Weeks','Indie',50,'CD','weeks.jpg','The Weeks-thwgui.mp3','The House We Grew Up In ');
/*!40000 ALTER TABLE `disco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusr` varchar(45) NOT NULL,
  `nomape` varchar(45) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  `categoria` varchar(45) NOT NULL,
  `cuit` varchar(45) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`idusr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('algusta','Gustavo',24,'algusta@gmail.com','Av De Mayo 925','Ramos Mejia','Buenos Aires','Consumidor final','1','33434223'),('pepe','Jose Perez',50,'jperez@gmail.com','Balcarce 50','Capital Federal','Buenos Aires','Consumidor final','0','1234567'),('pilarpa','pilar paralela',25,'pilarpa@gmail.com','Florencio Varela 2033','San Justo','Buenos Aires','Consumidor final','1','123456'),('piru','pilar paradela',24,'pirulinera@gmail.com','Avenida Rivadavia 19200','Castelar','Buenos Aires','Consumidor final','1','123456');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'store'
--
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `adduser`(IN usuario varchar(45),
IN nombre varchar(45),  IN edad int(11),IN email varchar(60), IN dire varchar(45), IN locali varchar(45), 
IN pcia varchar(45),IN cat varchar(45), IN cuit varchar(45), IN p1 varchar(32))
BEGIN

INSERT INTO usuario VALUES(usuario,nombre,edad,email,dire,locali,
pcia,cat,cuit,p1);

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
CREATE DEFINER=`root`@`localhost` PROCEDURE `conusr`(IN email varchar(60),IN p1 varchar(32))
BEGIN

SELECT * FROM usuario WHERE email=email AND password=p1;


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
IN nombre varchar(45), IN precio varchar(45), IN cantidad varchar(45), IN subtotal varchar(45))
BEGIN

	INSERT INTO compra (numeroventa,imagen,nombre,precio,cantidad,subtotal)
	values(numeroventa,imagen,nombre,precio,cantidad,subtotal);

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-07-22  8:03:08
