-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: acervo_musicas
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `interpretacao`
--

DROP TABLE IF EXISTS `interpretacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interpretacao` (
  `idInterpretacao` int NOT NULL AUTO_INCREMENT,
  `anoGravacao` int NOT NULL,
  `nomeVersao` varchar(50) NOT NULL,
  `id_msc` int NOT NULL,
  `id_cant` int NOT NULL,
  PRIMARY KEY (`idInterpretacao`),
  KEY `id_msc` (`id_msc`),
  KEY `id_cant` (`id_cant`),
  CONSTRAINT `interpretacao_ibfk_1` FOREIGN KEY (`id_msc`) REFERENCES `musica` (`idMusica`),
  CONSTRAINT `interpretacao_ibfk_2` FOREIGN KEY (`id_cant`) REFERENCES `cantor` (`idCantor`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interpretacao`
--

LOCK TABLES `interpretacao` WRITE;
/*!40000 ALTER TABLE `interpretacao` DISABLE KEYS */;
INSERT INTO `interpretacao` VALUES (32,1979,'Versão Original',1,1),(33,2011,'Ao Vivo',1,1),(34,1980,'Versão Original',2,1),(35,2015,'Extended Mix',2,1),(36,1979,'Versão Original',3,1),(37,2008,'Acústico',3,1),(38,1977,'Versão Original',7,2),(39,1996,'Philip Glass Remix',7,2),(40,2012,'Ao Vivo',7,2),(41,1989,'Versão Original',8,3),(42,2014,'Extended Mix',8,3),(43,1980,'Versão Original',10,4),(44,2005,'Acústico',10,4),(45,2006,'Pet Shop Boys \"Stars Are Blazing\" Mix',17,10),(46,2017,'Extended Mix',17,10),(47,2006,'Pet Shop Boys Maxi-mix',19,13),(48,2011,'Ao Vivo',19,13),(49,2005,'Pet Shop Boys Orange Alert Mix',20,14),(50,2006,'PSB There Are No Guitars On This Mix',21,15),(51,1993,'Versão Original',22,16),(52,1996,'Ao Vivo',22,16),(53,1998,'Acústico',22,16),(54,1990,'Versão Original',23,16),(55,1999,'Acústico',23,16),(56,2001,'Versão Original',24,16),(57,1987,'Versão Original',25,16),(58,2003,'Ao Vivo',25,16),(59,2014,'Versão Original',26,17),(60,2014,'Extended Mix',26,17),(61,2014,'Versão Original',27,17),(62,2014,'Ao Vivo',27,17),(94,1979,'Versão Original',1,1),(95,2011,'Ao Vivo',1,1),(96,1980,'Versão Original',2,1),(97,2015,'Extended Mix',2,1),(98,1979,'Versão Original',3,1),(99,2008,'Acústico',3,1),(100,1977,'Versão Original',7,2),(101,1996,'Philip Glass Remix',7,2),(102,2012,'Ao Vivo',7,2),(103,1989,'Versão Original',8,3),(104,2014,'Extended Mix',8,3),(105,1980,'Versão Original',10,4),(106,2005,'Acústico',10,4),(107,2006,'Pet Shop Boys \"Stars Are Blazing\" Mix',17,10),(108,2017,'Extended Mix',17,10),(109,2006,'Pet Shop Boys Maxi-mix',19,13),(110,2011,'Ao Vivo',19,13),(111,2005,'Pet Shop Boys Orange Alert Mix',20,14),(112,2006,'PSB There Are No Guitars On This Mix',21,15),(113,1993,'Versão Original',22,15),(114,1996,'Ao Vivo',22,15),(115,1998,'Acústico',22,15),(116,1990,'Versão Original',23,15),(117,1999,'Acústico',23,15),(118,2001,'Versão Original',24,15),(119,1987,'Versão Original',25,15),(120,2003,'Ao Vivo',25,15),(121,2014,'Versão Original',26,16),(122,2014,'Extended Mix',26,16),(123,2014,'Versão Original',27,16),(124,2014,'Ao Vivo',27,16);
/*!40000 ALTER TABLE `interpretacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-13 19:44:22
