-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 03:42 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `id_value_radionuklida`
--

CREATE TABLE `id_value_radionuklida` (
  `id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `id_value_radionuklida`
--

INSERT INTO `id_value_radionuklida` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17);

-- --------------------------------------------------------

--
-- Table structure for table `id_value_rumahsakit`
--

CREATE TABLE `id_value_rumahsakit` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `id_value_rumahsakit`
--

INSERT INTO `id_value_rumahsakit` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Table structure for table `radionuklida`
--

CREATE TABLE `radionuklida` (
  `ID` int(10) NOT NULL,
  `id_radionuklida` varchar(45) DEFAULT NULL,
  `nama_radionuklida` varchar(45) DEFAULT NULL,
  `aktivitas_radionuklida` varchar(45) DEFAULT NULL,
  `waktuparo_radionuklida` varchar(45) DEFAULT NULL,
  `ket_radionuklida` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `radionuklida`
--

INSERT INTO `radionuklida` (`ID`, `id_radionuklida`, `nama_radionuklida`, `aktivitas_radionuklida`, `waktuparo_radionuklida`, `ket_radionuklida`) VALUES
(1, 'RAD-00001', 'Cobalt-60', '10 Ci', '5,27 tahun', 'Co-60 milik RSPAD Gatot Subroto'),
(2, 'RAD-00002', 'Iodine-125', '8 Ci', '59,49 tahun', 'I-125 milik RS Sardjito'),
(3, 'RAD-00003', 'Cobalt-60', '20 Ci', '5,27 tahun', 'Co-60 milik RS Sardjito'),
(4, 'RAD-00004', 'Carbon-14', '15 Ci', '5730 tahun', 'C-14 milik RS Cipto Mangunkusumo'),
(5, 'RAD-00005', 'Gallium-68', '80 Ci', '1,2 hari', 'Ga-69 milik RS Kanker Dharmais'),
(6, 'RAD-00006', 'Phosporus-32', '32 Ci', '14,28 hari', 'P-32 milik RSUP Dr. M. Djamil'),
(7, 'RAD-00007', 'Cesium-137', '10 Ci', '30,05 tahun', 'Cs-137 milik RS Cipto Mangunkusumo'),
(8, 'RAD-00008', 'Iodine-125', '20 Ci', '59,49 hari', 'I-125 milik RS Cipto Mangunkusumo'),
(9, 'RAD-00009', 'Cobalt-60', '8 Ci', '5,27 tahun', 'Co-60 milik RSUP Dr. M. Djamil'),
(10, 'RAD-00010', 'Radium-223', '100 Ci', '10,43 hari', 'Ra-223 milik RS Kanker Dharmais'),
(11, 'RAD-00011', 'Selenium-75', '45 Ci', '119,8 hari', 'Se-75 milik RS Ulin'),
(12, 'RAD-00012', 'Cesium-137', '12 Ci', '30,05 tahun', 'Cs-137 milik RS Ulin'),
(13, 'RAD-00013', 'Samarium-153', '10 kCi', '46,28 jam', 'Sm-153 milik RS Adam Malik'),
(14, 'RAD-00014', 'Strontium-89', '120 Ci', '50,52 hari', 'Sr-89 milik RS Karyadi'),
(15, 'RAD-00015', 'Yttrium-90', '100 Ci', '2,7 hari', 'Y-90 milik RS Karyadi'),
(16, 'RAD-00016', 'Iodine-125', '20 Ci', '59,49 tahun', 'I-125 milik RS Kasih Ibu'),
(17, 'RAD-00017', 'Radium-223', '200 Ci', '10,43 hari', 'Ra-223 milik RS Sardjito');

--
-- Triggers `radionuklida`
--
DELIMITER $$
CREATE TRIGGER `getID` BEFORE INSERT ON `radionuklida` FOR EACH ROW BEGIN
	INSERT INTO id_value_radionuklida VALUES (NULL);
    SET NEW.id_radionuklida = CONCAT("RAD-", LPAD(LAST_INSERT_ID(), 5, "0"));
                END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `rumah_sakit`
--

CREATE TABLE `rumah_sakit` (
  `ID` int(8) NOT NULL,
  `id_rs` varchar(45) DEFAULT NULL,
  `nama_rs` varchar(45) DEFAULT NULL,
  `alamat_rs` varchar(99) DEFAULT NULL,
  `telp_rs` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rumah_sakit`
--

INSERT INTO `rumah_sakit` (`ID`, `id_rs`, `nama_rs`, `alamat_rs`, `telp_rs`) VALUES
(1, 'RS-001', 'RSPAD Gatot Soebroto', 'Jl. Abdul Rahman Saleh No. 24 Jakarta Pusat 10410', '021-3441008, 384'),
(2, 'RS-002', 'Rumah Sakit Abdi Waluyo', 'Jl. HOS Cokroaminoto No. 31 Jakarta Pusat - Indonesia', '021-3144989'),
(3, 'RS-003', 'Rumah Sakit Umum Pusat Dr. M. Djamil', 'Jl. Perintis Kemerdekaan, Sawahan Tim., Kec. Padang Tim., Kota Padang, Sumatera Barat 25171', '(0751) 8956666'),
(4, 'RS-004', 'Rumah Sakit Cipto Mangunkusumo (RSCM)', 'Jl. Diponegoro No. 71 Jakarta', '15000 135'),
(5, 'RS-005', 'Rumah Sakit Kanker Dharmais', 'Jl. Letjen. S. Parman No.84-86, Jakarta Barat', '(021) 5681570'),
(6, 'RS-006', 'Rumah Sakit Hasan Sadikin', 'Jl. Pasteur No. 38 Bandung', '(022) 2551111'),
(7, 'RS-007', 'Rumah Sakit Karyadi', 'Jl. Dr. Sutomo No. 16 Kel. Randusari, Kota Semarang, Jawa Tengah 50244', '024 8413476'),
(8, 'RS-008', 'Rumah Sakit Ulin', 'Jl. A.Yani Km 2,5 Banjarmasin, Kalimantan Selatan', '0511 3252180'),
(9, 'RS-009', 'Rumah Sakit Adam Malik', 'Jl. Bunga Lau No. 17, Medan', '(061) 8364-581'),
(10, 'RS-010', 'RSUP Dr. Sardjito', 'Jl. Kesehatan No. 1 Sekip Sinduadi Yogyakarta, DIY 55284', '1500 705'),
(11, 'RS-011', 'RS JIH', 'Jl. Ring Road Utara No.160, Perumnas Condong Catur, Condongcatur, Kec. Depok, Kabupaten Sleman, Dae', '(0274) 4463535'),
(12, 'RS-012', 'RS Kasih Ibu', 'Slamet Riyadi St No.404, Purwosari, Laweyan, Surakarta City, Central Java 57142', '(0271) 714422');

--
-- Triggers `rumah_sakit`
--
DELIMITER $$
CREATE TRIGGER `getID_rs` BEFORE INSERT ON `rumah_sakit` FOR EACH ROW BEGIN
	INSERT INTO id_value_rumahsakit VALUES (NULL);
    SET NEW.id_rs = CONCAT("RS-", LPAD(LAST_INSERT_ID(), 3, "0"));
                END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `id_value_radionuklida`
--
ALTER TABLE `id_value_radionuklida`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `id_value_rumahsakit`
--
ALTER TABLE `id_value_rumahsakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radionuklida`
--
ALTER TABLE `radionuklida`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `id_radionuklida_UNIQUE` (`ID`);

--
-- Indexes for table `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `id_rumahsakit_UNIQUE` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `id_value_radionuklida`
--
ALTER TABLE `id_value_radionuklida`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `id_value_rumahsakit`
--
ALTER TABLE `id_value_rumahsakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `radionuklida`
--
ALTER TABLE `radionuklida`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rumah_sakit`
--
ALTER TABLE `rumah_sakit`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
