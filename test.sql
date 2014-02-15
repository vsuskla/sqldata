-- MySQL dump 10.13  Distrib 5.6.13, for osx10.8 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.6.13

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
-- Table structure for table `beholdning`
--

DROP TABLE IF EXISTS `beholdning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beholdning` (
  `ktonr` varchar(5) NOT NULL,
  `beholdning` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ktonr`,`beholdning`),
  UNIQUE KEY `ktonr_UNIQUE` (`ktonr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beholdning`
--

LOCK TABLES `beholdning` WRITE;
/*!40000 ALTER TABLE `beholdning` DISABLE KEYS */;
INSERT INTO `beholdning` VALUES ('1234',100.00);
INSERT INTO `beholdning` VALUES ('1235',1000.00);
INSERT INTO `beholdning` VALUES ('1236',10000.00);
INSERT INTO `beholdning` VALUES ('2233',11111.00);
INSERT INTO `beholdning` VALUES ('666',333.00);
/*!40000 ALTER TABLE `beholdning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hist_trans`
--

DROP TABLE IF EXISTS `hist_trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hist_trans` (
  `ktonr` varchar(5) NOT NULL,
  `type` varchar(4) DEFAULT NULL,
  `antall` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ktonr`),
  UNIQUE KEY `ktonr_UNIQUE` (`ktonr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hist_trans`
--

LOCK TABLES `hist_trans` WRITE;
/*!40000 ALTER TABLE `hist_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `hist_trans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `ktonr` varchar(5) NOT NULL,
  `fornavn` varchar(45) DEFAULT NULL,
  `etternavn` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ktonr`),
  UNIQUE KEY `ktonr_UNIQUE` (`ktonr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES ('1234','Klaus','Tørhaugen');
INSERT INTO `test` VALUES ('1235','Anita','Fuglerud');
INSERT INTO `test` VALUES ('1236','TEST','ETTERTEST');
INSERT INTO `test` VALUES ('2233','Arne','bjarne');
INSERT INTO `test` VALUES ('2244','Sander','Torhaugen');
INSERT INTO `test` VALUES ('666','Kadu','Trur');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trans`
--

DROP TABLE IF EXISTS `trans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trans` (
  `ktonr` varchar(5) NOT NULL,
  `type` varchar(4) DEFAULT NULL,
  `antall` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ktonr`),
  UNIQUE KEY `ktonr_UNIQUE` (`ktonr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trans`
--

LOCK TABLES `trans` WRITE;
/*!40000 ALTER TABLE `trans` DISABLE KEYS */;
INSERT INTO `trans` VALUES ('1234','TEGN',333.50);
INSERT INTO `trans` VALUES ('1235','TEGN',222.50);
/*!40000 ALTER TABLE `trans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-15  9:10:25
