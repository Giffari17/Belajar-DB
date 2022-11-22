-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: radionuklidadb
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `elemen`
--

DROP TABLE IF EXISTS `elemen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `elemen` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  `emitted_radiation` varchar(45) DEFAULT NULL,
  `half_time` varchar(45) DEFAULT NULL,
  `massa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elemen`
--

LOCK TABLES `elemen` WRITE;
/*!40000 ALTER TABLE `elemen` DISABLE KEYS */;
INSERT INTO `elemen` VALUES (2,'Cobalt-60','β−\n\n','5,2 Tahun','59,9 AMU'),(3,'Cesium-137','β−','30,08 Tahun','136,9 AMU'),(4,'Americium-241','α','432,6 Tahun','241,05 AMU'),(5,'Strontium-90','β−','28,91 Tahun','89,9 AMU'),(6,'Technetium-99','β−','2,1E+5 Tahun','98,9 AMU'),(7,'Technetium-99m','β−','6,0072 Jam','98,9 AMU'),(8,'Thorium-237','β−','4,8 Menit','237,05 AMU'),(9,'Uranium-224','α','396 μDetik','224,02 AMU'),(10,'Uranium-225','α','69 mDetik','225,02 AMU'),(11,'Iodin-129','β−','1,5E+7 Tahun','128,9 AMU'),(12,'Iodin-131','β−','8,02 Hari','130,9 AMU'),(13,'Plutonium-238','α','87,7 Tahun','238,05 AMU'),(14,'Plutonium-239','α','24110 Tahun','239,05 AMU'),(15,'Plutonium-240','α','6561 Tahun','240,05 AMU'),(16,'Radium-226','α','0,24 Detik','206,003 AMU'),(17,'Radium-228','α','1,3 Detik','208,001 AMU'),(18,'Radon-222','α','3,8 Hari','222,01 AMU'),(19,'Thorium-228','α','1,9 Tahun','228,02 AMU'),(20,'Thorium-230','α','7,5E+4 Tahun','230,03 AMU'),(21,'Thorium-232','α','1,4E+10 Tahun','232,03 AMU'),(22,'Tritium','β','12,32 Tahun','3,01 AMU'),(23,'Uranium-234','α','2,4E+5 Tahun','234,04 AMU'),(24,'Uranium-235','α','7,04E+8 Tahun','235,04 AMU'),(25,'Uranium-238','α','4,4E+9 Tahun','238,05 AMU'),(26,'Yttrium-90','β-','64,05 Jam','89,9 AMU'),(27,'Samarium-153','β-','46,284 Jam','152,9 AMU'),(28,'Carbon-14','β-','5700 Tahun','14,003 AMU'),(29,'Cadmium-109','EC','461,9 Hari','108,9 AMU'),(30,'Curium-244','α','18,11 Tahun','244,06 AMU');
/*!40000 ALTER TABLE `elemen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `idsupplier` int NOT NULL AUTO_INCREMENT,
  `Perusahaan` varchar(45) DEFAULT NULL,
  `alamat` varchar(999) DEFAULT NULL,
  `contact_person` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`idsupplier`),
  UNIQUE KEY `idsupplier_UNIQUE` (`idsupplier`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'INUKI','Kawasan Puspiptek Serpong Gedung 70, Muncul, Setu, Kota Tanggerang Selatan, Banten 15314','marketing@inuki.co.id\ninfo\n@inuki.co.id\n\n021-7560211, 7560196'),(2,'Nordion','Corporate Office of MDS Nordion Inc., 447 March Road, Kanata, Ontario, Canada K2K 1X8','Tel: (613) 592-2790 Fax: (613) 592-6937\nwww.mds.nordion.com e-mail: info@mds.nordion.com'),(3,'Sentinel(tm) Asia','3F Chunghae Building, 12 Sunrung-ro 103 Gil \nKangnam-Ku, Seoul 06145, South Korea','+82 2 558 3335'),(4,'Comning Soon',NULL,NULL);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-23  0:18:25
