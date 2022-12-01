-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: db_inventaris
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
-- Table structure for table `radionuklida`
--

DROP TABLE IF EXISTS `radionuklida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `radionuklida` (
  `id_radionuklida` varchar(10) NOT NULL,
  `nama_radionuklida` varchar(45) DEFAULT NULL,
  `aktivitas_radionuklida` varchar(45) DEFAULT NULL,
  `waktuparo_radionuklida` varchar(45) DEFAULT NULL,
  `ket_radionuklida` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`id_radionuklida`),
  UNIQUE KEY `id_radionuklida_UNIQUE` (`id_radionuklida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radionuklida`
--

LOCK TABLES `radionuklida` WRITE;
/*!40000 ALTER TABLE `radionuklida` DISABLE KEYS */;
INSERT INTO `radionuklida` VALUES ('RAD-00001','Cobalt-60','10 Ci','5,27 tahun','Co-60 milik RSPAD Gatot Soebroto'),('RAD-00002','Iodine-125','8 Ci','59,49 hari','I-125 milik RS Sardjito'),('RAD-00003','Cobalt-60','1 Ci','5,27 tahun','Co-60 milik RS Sardjito'),('RAD-00004','Carbon-14','1 Ci','5730 tahun','C-14 milik RS Cipto Mangunkusumo'),('RAD-00005','Gallium-68','3 Ci','1,2 hari','Ga-68 milik RS Kanker Dharmais'),('RAD-00006','Phosporus-32','5 Ci','14,28 hari','P-32 milik RSUP Dr. M. Djamil'),('RAD-00007','Cesium-137','2 Ci','30,05 tahun','Cs-137 milik RS Cipto Mangunkusumo'),('RAD-00008','Iodine-125','10 Ci','59,49 hari','I-125 milik RS Cipto Mangunkusumo'),('RAD-00009','Cobalt-60','5 Ci','5,27 tahun','Co-60 milik RSUP Dr. M. Djamil'),('RAD-00010','Radium-223','10 Ci','10,43 hari','Ra-223 milik RS Kanker Dharmais'),('RAD-00011','Selenium-75','7,5 Ci','119,8 hari','Se-75 milik RS Ulin'),('RAD-00012','Cesium-137','3 Ci','30,05 tahun','Cs-137 milik RS Ulin'),('RAD-00013','Samarium-153','9 Ci','46,28 jam','Sm-153 milik RS Adam Malik'),('RAD-00014','Strontium-89','12 Ci','50,52 hari','Sr-89 milik RS Kanker Dharmais'),('RAD-00015','Yttrium-90','10 Ci','2,7 hari','Y-90 milik RS Karyadi');
/*!40000 ALTER TABLE `radionuklida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rumah_sakit`
--

DROP TABLE IF EXISTS `rumah_sakit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `rumah_sakit` (
  `id_rumahsakit` varchar(8) NOT NULL,
  `nama_rumahsakit` varchar(45) DEFAULT NULL,
  `alamat_rumahsakit` varchar(99) DEFAULT NULL,
  `telp_rumahsakit` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rumahsakit`),
  UNIQUE KEY `id_rumahsakit_UNIQUE` (`id_rumahsakit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rumah_sakit`
--

LOCK TABLES `rumah_sakit` WRITE;
/*!40000 ALTER TABLE `rumah_sakit` DISABLE KEYS */;
INSERT INTO `rumah_sakit` VALUES ('RS-001','RSPAD Gatot Soebroto','Jl. Abdul Rahman Saleh No. 24 Jakarta Pusat 10410','021-3441008'),('RS-002','Rumah Sakit Sardjito','Jl. Kesehatan No. 1 Sekip Sinduadi Yogyakarta, DIY 55284','1500 705'),('RS-003','Rumah Sakit Abdi Waluyo','Jl. HOS Cokroaminoto No. 31 Jakarta Pusat - Indonesia','021-3144989'),('RS-004','Rumah Sakit Umum Pusat Dr. M. Djamil','Jl. Perintis Kemerdekaan, Sawahan Tim., Kec. Padang Tim., Kota Padang, Sumatera Barat 25171','(0751) 8956666'),('RS-005','Rumah Sakit Cipto Mangunkusumo (RSCM)','Jl. Diponegoro no. 71 jakarta','15000 135'),('RS-006','Rumah Sakit Kanker Dharmais','Jl. Letjen. S. Parman No.84-86, Jakarta Barat','(021) 5681570'),('RS-007','Rumah Sakit Hasan Sadikin','Jl. Pasteur No. 38 Bandung','(022)2551111'),('RS-008','Rumah Sakit Karyadi','Jl. Dr. Sutomo No. 16 Kel. Randusari, Kota Semarang, Jawa Tengah  Kode Pos :50244','024 8413476'),('RS-009','Rumah Sakit Ulin','Jl. A.Yani Km 2,5 Banjarmasin, Kalimantan Selatan','0511 3252180'),('RS-010','Rumah Sakit Adam Malik','Jl. Bunga Lau No. 17, Medan','(061) 8364-581');
/*!40000 ALTER TABLE `rumah_sakit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-02  0:49:58
