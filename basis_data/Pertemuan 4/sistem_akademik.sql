-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sistem_akademik
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Table structure for table `jurusan`
--

DROP TABLE IF EXISTS `jurusan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurusan` (
  `id_jurusan` char(5) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurusan`
--

LOCK TABLES `jurusan` WRITE;
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
INSERT INTO `jurusan` VALUES ('TE001','S1 Teknik Elektro'),('TE002','S2 Teknik Elektro'),('TI001','S1 Teknologi Informasi'),('TI002','S2 Teknologi Informasi');
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `krs`
--

DROP TABLE IF EXISTS `krs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krs` (
  `npm` char(5) NOT NULL,
  `id_mata_kuliah` char(5) NOT NULL,
  PRIMARY KEY (`npm`,`id_mata_kuliah`),
  KEY `id_mata_kuliah` (`id_mata_kuliah`),
  CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`npm`) REFERENCES `mahasiswa` (`NPM`),
  CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_mata_kuliah`) REFERENCES `mata_kuliah` (`id_mata_kuliah`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krs`
--

LOCK TABLES `krs` WRITE;
/*!40000 ALTER TABLE `krs` DISABLE KEYS */;
INSERT INTO `krs` VALUES ('25001','TI101'),('25001','TI102'),('25001','TI103'),('25002','TI201'),('25003','TE201'),('25003','TE202'),('25004','TI101'),('25004','TI103'),('25005','TE101'),('25005','TE102'),('25006','TE101'),('25006','TE102'),('25007','TI101'),('25007','TI102'),('25007','TI103'),('25008','TE201'),('25008','TE202');
/*!40000 ALTER TABLE `krs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `NPM` char(5) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jurusan` char(5) DEFAULT NULL,
  PRIMARY KEY (`NPM`),
  KEY `jurusan` (`jurusan`),
  CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`jurusan`) REFERENCES `jurusan` (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES ('25001','Emannuel Henji','TI001'),('25002','Cristiano Ronaldo','TI002'),('25003','Monaria','TE002'),('25004','Bill Gates','TI001'),('25005','Roberto Martin','TE001'),('25006','John Cena','TE001'),('25007','Mark','TI001'),('25008','Purbaya','TE002');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mata_kuliah`
--

DROP TABLE IF EXISTS `mata_kuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mata_kuliah` (
  `id_mata_kuliah` char(5) NOT NULL,
  `id_jurusan` char(5) DEFAULT NULL,
  `nama_mata_kuliah` varchar(50) NOT NULL,
  PRIMARY KEY (`id_mata_kuliah`),
  KEY `id_jurusan` (`id_jurusan`),
  CONSTRAINT `mata_kuliah_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mata_kuliah`
--

LOCK TABLES `mata_kuliah` WRITE;
/*!40000 ALTER TABLE `mata_kuliah` DISABLE KEYS */;
INSERT INTO `mata_kuliah` VALUES ('TE101','TE001','IoT'),('TE102','TE001','Pemrograman Dasar'),('TE201','TE002','Telekomunikasi'),('TE202','TE002','Energi Terbarukan'),('TI101','TI001','Basis Data'),('TI102','TI001','Kalkulus Lanjut'),('TI103','TI001','Alpro'),('TI201','TI002','Bisnis TI'),('TI202','TI002','WEB3');
/*!40000 ALTER TABLE `mata_kuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai_mahasiswa`
--

DROP TABLE IF EXISTS `nilai_mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai_mahasiswa` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `npm` char(5) DEFAULT NULL,
  `id_mata_kuliah` char(5) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_nilai`),
  KEY `npm` (`npm`),
  KEY `id_mata_kuliah` (`id_mata_kuliah`),
  CONSTRAINT `nilai_mahasiswa_ibfk_1` FOREIGN KEY (`npm`) REFERENCES `mahasiswa` (`NPM`),
  CONSTRAINT `nilai_mahasiswa_ibfk_2` FOREIGN KEY (`id_mata_kuliah`) REFERENCES `mata_kuliah` (`id_mata_kuliah`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai_mahasiswa`
--

LOCK TABLES `nilai_mahasiswa` WRITE;
/*!40000 ALTER TABLE `nilai_mahasiswa` DISABLE KEYS */;
INSERT INTO `nilai_mahasiswa` VALUES (1,'25001','TI101',92),(2,'25001','TI102',87),(3,'25001','TI103',95),(4,'25002','TI201',86),(5,'25002','TI202',88),(6,'25003','TE201',90),(7,'25003','TE202',90),(8,'25005','TE101',92),(9,'25005','TE102',85),(10,'25004','TI101',85),(11,'25004','TI103',93),(17,'25006','TE101',82),(24,'25006','TE102',80),(25,'25007','TI101',80),(26,'25007','TI102',97),(27,'25007','TI103',95),(28,'25008','TE201',92),(29,'25008','TE202',84);
/*!40000 ALTER TABLE `nilai_mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-17 20:58:05
