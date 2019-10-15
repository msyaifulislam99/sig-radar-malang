-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2018 at 03:42 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemetaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agen`
--

CREATE TABLE `tbl_agen` (
  `id_agen` int(11) NOT NULL,
  `nama_agen` varchar(25) NOT NULL,
  `alamat_agen` varchar(50) NOT NULL,
  `jatah` int(5) DEFAULT NULL,
  `foto` varchar(15) DEFAULT NULL,
  `lokasi` point DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agen`
--

INSERT INTO `tbl_agen` (`id_agen`, `nama_agen`, `alamat_agen`, `jatah`, `foto`, `lokasi`) VALUES
(1, 'AMIN', 'alamat amin', NULL, '1.JPG', '\0\0\0\0\0\0\0�Ba���\0\0\08	*\\@'),
(2, 'MICKEY', '', NULL, NULL, '\0\0\0\0\0\0\0�O\n*���\0\0\0((\\@'),
(3, 'RUBIANI', '', NULL, NULL, '\0\0\0\0\0\0\0oԋ�T��\0\0��B(\\@'),
(4, 'TERMINAL', '', NULL, NULL, '\0\0\0\0\0\0\0\rW�D��\0\0��#(\\@'),
(5, 'ASEET', '', NULL, NULL, '\0\0\0\0\0\0\0ッ����\0\0��#(\\@'),
(6, 'HERCULES', '', NULL, NULL, NULL),
(7, 'HADI SALAM', '', NULL, NULL, NULL),
(8, 'LUCKY', '', NULL, NULL, NULL),
(9, 'ERWAN', '', NULL, NULL, NULL),
(10, 'IJEN', '', NULL, NULL, NULL),
(11, 'J TWO', '', NULL, NULL, NULL),
(12, 'BRANTAS', '', NULL, NULL, NULL),
(13, 'FIDANUR', '', NULL, NULL, NULL),
(14, 'CLASSA', '', NULL, NULL, NULL),
(15, 'PUTRI', '', NULL, NULL, NULL),
(16, 'SURYA INDAH', '', NULL, NULL, NULL),
(17, 'UDIN', '', NULL, NULL, NULL),
(18, 'ELITE', '', NULL, NULL, NULL),
(19, 'DUAJA', '', NULL, NULL, NULL),
(20, 'AGUS RIA', '', NULL, NULL, NULL),
(21, 'SUPRAYIT', '', NULL, NULL, NULL),
(22, 'ABDUL AZIZ', '', NULL, NULL, NULL),
(23, 'SUGIANTO', '', NULL, NULL, NULL),
(24, 'SOEHARTO', '', NULL, NULL, NULL),
(25, 'FATKUR', '', NULL, NULL, NULL),
(26, 'tes nama agen', 'alamat agen', NULL, NULL, '\0\0\0\0\0\0\0T\r2X��\0\0\0px(\\@'),
(27, 'adhis putra yudha', 'polowijen', NULL, NULL, '\0\0\0\0\0\0\0K������\0\0\0.\\@'),
(28, 'agen coba', 'alamat coba', NULL, NULL, '\0\0\0\0\0\0\0�''��Q��\0\0\0�h)\\@');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id_customer` int(11) NOT NULL,
  `id_striker` int(11) NOT NULL,
  `nama_customer` varchar(25) DEFAULT NULL,
  `alamat_customer` varchar(50) DEFAULT NULL,
  `lokasi` point DEFAULT NULL,
  `foto` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id_customer`, `id_striker`, `nama_customer`, `alamat_customer`, `lokasi`, `foto`) VALUES
(1, 4, 'BANK NIAGA', 'JL MERDEKA TIMUR ', '\0\0\0\0\0\0\0+�ej��\0\0��w(\\@', NULL),
(2, 4, 'DEPOT SATO JAYA', 'JL KAUMAN 5 MALANG', NULL, NULL),
(3, 4, 'ZUBAIDAH', 'JL. AI SURYANI I 1/332', NULL, NULL),
(4, 4, 'SDN SANTO YUSUF I', 'JL LAKS MARTADINATA 80', NULL, NULL),
(5, 4, 'SUNDARI HERAWATI', 'JL KYAI TAMIN I/2 MALANG', NULL, NULL),
(6, 4, 'ANDY GUNAWAN', 'JL KYAI TAMIN 30', NULL, NULL),
(7, 4, 'ANDRIYANTO', 'JL KYAI TAMIN II/20 ', NULL, NULL),
(8, 4, 'TANDO L', 'JL KYAI TAMIN II/17', NULL, NULL),
(9, 4, 'DEPOT MIE JANGKRIK', 'JL KYAI TAMIN ', NULL, NULL),
(10, 4, 'SDN PETRA', 'JL PROF M YAMIN 53 ', NULL, NULL),
(11, 4, 'SDN CIPTOMULYO I', 'JL SARTONO SH', NULL, NULL),
(12, 4, 'H ABD HADI', 'JL TRIJAYA', NULL, NULL),
(13, 4, 'PERUM PEGADAIAN', 'JL HALMAHERA 9', NULL, NULL),
(14, 4, 'PERUM PEGADAIAN', 'JL HALMAHERA 9', NULL, NULL),
(15, 4, 'PERUM PEGADAIAN', 'JL HALMAHERA 9', NULL, NULL),
(16, 4, 'ENDANG R', 'JL MALAKA 2', NULL, NULL),
(17, 4, 'NGATEMUN', 'JL CEMPAKA 27/JL NIAGA', NULL, NULL),
(18, 4, 'WAHYU S', 'JL CEMPAKA 27/JL NIAGA', NULL, NULL),
(19, 4, 'HANDOKO', 'JL PELTU SUJONO GG MAWAR 7', NULL, NULL),
(20, 4, 'CV NASIONAL', 'JL PELTU SUJONO GG MAWAR 21', NULL, NULL),
(21, 4, 'BENGKEL GAJAH MADA', 'JL PELTU SUJONO 14', NULL, NULL),
(22, 4, 'SAWAL', 'JL PELTU SUJONO GG WIJAYA KUSUMA', NULL, NULL),
(23, 4, 'TOKO KAWI TEKHNIK', 'JL KOL SUGIONO 82', NULL, NULL),
(24, 4, 'TOKO SAFARI MOTOR', 'JL KOL SUGIONO 82 ', NULL, NULL),
(25, 4, 'HERU D', 'JL KOL SUGIONO 144', NULL, NULL),
(26, 4, 'PT OEPET', 'JL KOL SUGIONO 136', NULL, NULL),
(27, 4, 'PT OEPET', 'JL KOL SUGIONO 83', NULL, NULL),
(28, 4, 'PT TRITAMA BINA KARYA', 'JL KOL SUGIONO 125', NULL, NULL),
(29, 4, 'TOKO RITA BARU', 'JL KOL SUGIONO 90', NULL, NULL),
(30, 4, 'TOKO PODO MORO', 'JL KOL SUGIONO 105', NULL, NULL),
(31, 4, 'HERU P', 'JL KOL SUGIONO IIIC', NULL, NULL),
(32, 4, 'HJ MUSINAH', 'JL KOL SUGIONO IIIB/13', NULL, NULL),
(33, 4, 'SUDARYANTO', 'JL KOL SUGIONO 8', NULL, NULL),
(34, 4, 'BASUKI/SPEDDY', 'JL AHMAD YANI 11', NULL, NULL),
(35, 4, 'TOKO HOKY JAYA', 'JL KOL SUGIONO 82 RUKO AG', NULL, NULL),
(36, 4, 'ZAINUL ARIFIN', 'JL TANJUNG PALMA YUDHA 6/41 ', NULL, NULL),
(37, 4, 'ENDANG SANTI/PKK', 'JL KOL SUGIONO 8', NULL, NULL),
(38, 1, 'BAMBANG', 'ARJUNO 8', NULL, NULL),
(39, 1, 'INTEL', 'KOREM 083', NULL, NULL),
(40, 1, 'HARIYANTO', 'TAMAN SLAMET 28', NULL, NULL),
(41, 1, 'BU AMELIA ', 'JL TENNES 32', NULL, NULL),
(42, 1, 'TOKO ELEKTRONIK', 'JL WELIRANG 30', NULL, NULL),
(43, 1, 'HARTOYO', 'JL WELIRANG 29', NULL, NULL),
(44, 1, 'PMI', 'JL BURING 20', NULL, NULL),
(45, 1, 'SMPN 1', 'JL LAWU 12', NULL, NULL),
(46, 1, 'FRANKY', 'JL CERME 12', NULL, NULL),
(47, 1, '', 'JL MURIA 26', NULL, NULL),
(48, 1, 'dr ISTANT', 'JL UNGARAN 10', NULL, NULL),
(49, 1, 'HANDOKO', 'BS RIADI 62', NULL, NULL),
(50, 1, 'ANDRE', 'BS RIADI 60', NULL, NULL),
(51, 1, 'BU LELY SETIAWATI', 'JL PANGGUNG 6', NULL, NULL),
(52, 1, '', 'JL ANJASMORO 29', NULL, NULL),
(53, 1, 'CANDRA', 'JL TAMAN IJEN C-3', NULL, NULL),
(54, 1, 'TANTONO', 'JL TAMAN IJEN C-18A', NULL, NULL),
(55, 1, 'INDARNO', 'JL TAMAN IJEN B-17', NULL, NULL),
(56, 1, 'PIETER', 'JL TAMAN IJEN O-18D', NULL, NULL),
(57, 1, '', 'JL JOMBANG 6', NULL, NULL),
(58, 1, 'HERY BASUKI', 'SINABU-NABU 3', NULL, NULL),
(59, 1, 'HERBASUKI', 'JL ARGOPURO IIA', NULL, NULL),
(60, 1, 'SURYA', 'JL TAMBORA 26', NULL, NULL),
(61, 1, 'STEVANUS', 'JL SIMP DIENG 2/3', NULL, NULL),
(62, 1, '', 'JL RAYA LANGSEP 17', NULL, NULL),
(63, 1, 'TAXI CITRA', 'SUHAT 77', NULL, NULL),
(64, 1, 'HADIONO', 'JL PANJAITAN 99', NULL, NULL),
(65, 1, 'PANTAI PHOTO', 'JL MERDEKA TIMUR 26', NULL, NULL),
(66, 1, '', 'JL MT HARYONO 433 A', NULL, NULL),
(67, 1, 'FOTO COPY', 'BS RIADI 180', NULL, NULL),
(68, 1, 'LATEF', 'JL ARJUNO 8', NULL, NULL),
(69, 1, 'Dra TUMINEM SH', 'JL BROMO 38', NULL, NULL),
(70, 1, 'SANTOSO LESMONO', 'JL IJEN 38', NULL, NULL),
(71, 1, 'HARSONO', 'JL IJEN 75A', NULL, NULL),
(72, 1, 'RUDI', 'JL IJEN 71', NULL, NULL),
(73, 1, 'YAYASAN ITN', 'JL TENIS 38 MALANG', NULL, NULL),
(74, 1, 'STEFANUS', 'JL LOKON 9 ', NULL, NULL),
(75, 1, 'HILL YUGIHARTO', 'JL LAWU 19', NULL, NULL),
(76, 1, 'NATALIA', 'JL MERATUS 3', NULL, NULL),
(77, 1, 'ALL N RESTO AND SPA', 'JL SIMP WILIS INDAH 10', NULL, NULL),
(78, 1, 'LOEKMAN', 'JL KH ZAINUL ARIFIN 53', NULL, NULL),
(79, 1, 'SUMBER MAS', 'JL KYAI TAMIN 47', NULL, NULL),
(80, 1, 'FANDI ARDI', 'JL FUJIAMA ', NULL, NULL),
(81, 8, 'PT TELKOM/OSTS', 'JL AHMAD YANI 11', NULL, NULL),
(82, 8, 'PT TELKOM/OSTS', 'JL AHMAD YANI 11', NULL, NULL),
(83, 8, 'PT TELKOM/KA', 'JL AHMAD YANI 11', NULL, NULL),
(84, 8, 'PT TELKOM/UBC', 'JL AHMAD YANI 11', NULL, NULL),
(85, 8, 'PT TELKOM/DBS', 'JL AHMAD YANI 11', NULL, NULL),
(86, 8, 'PT DUTA SARANA DUTA', 'JL AHMAD YANI 11', NULL, NULL),
(87, 8, 'PT KOPEGTEL', 'JL AHMAD YANI 11', NULL, NULL),
(88, 8, 'PT INFOMEDIA', 'JL AHMAD YANI 11', NULL, NULL),
(89, 8, 'PT TELKOM/TRANSMISI', 'JL JEND BASUKI RAHMAD 7-9', NULL, NULL),
(90, 8, 'PT TELKOM/FLEXI', 'JL JEND BASUKI RAHMAD 7-9', NULL, NULL),
(91, 8, 'BCA', 'JL JEND BASUKI RAHMAD 70-74', NULL, NULL),
(92, 8, 'HOTEL RICHE', 'JL JEND BASUKI RAHMAD 1', NULL, NULL),
(93, 8, 'PT MARGOSUKO', 'JL ARJUNO 30', NULL, NULL),
(94, 8, 'APOTEK NARITA', 'JL ARJUNO 34', NULL, NULL),
(95, 8, 'HARTO', 'JL SEMERU', NULL, NULL),
(96, 8, 'KODIM 0833 KOTA MALANG', 'JL KAHURIPAN ', NULL, NULL),
(97, 8, 'KODIM 0833 KOTA MALANG', 'JL KAHURIPAN ', NULL, NULL),
(98, 8, 'TOKO TEXTILE PERDANA', 'JL PASAR BESAR 63', NULL, NULL),
(99, 8, 'JAYA OPTIK', 'JL S WIRYOPRANOTO', NULL, NULL),
(100, 8, 'TEGUH', 'JL BAWEAN 6', NULL, NULL),
(101, 8, 'MARGARETA', 'JL BAWEAN 3', NULL, NULL),
(102, 8, 'ARIE S', 'JL BAWEAN 4', NULL, NULL),
(103, 8, 'PANGKALAN TNI AL', 'JL YOS SUDARSO 3', NULL, NULL),
(104, 8, 'PANGKALAN TNI AL', 'JL YOS SUDARSO 3', NULL, NULL),
(105, 8, 'HANDOKO ANGGORO', 'JL ANDALAS 8', NULL, NULL),
(106, 8, 'DEWI BS', 'JL BERINGIN 147', NULL, NULL),
(107, 8, 'HENDRI S', 'JL SIBERUT 16', NULL, NULL),
(108, 8, 'IRWAN MINTARJA', 'JL BATAM 5', NULL, NULL),
(109, 8, 'WARUNG PECEL SEMPU', 'JL SEMPU', NULL, NULL),
(110, 8, 'CORNELIS', 'JL KALIMANTAN 22', NULL, NULL),
(111, 8, 'PT TELKOM/DBS', 'JL AHMAD YANI 11', NULL, NULL),
(112, 8, 'HARTO SUDIANTO', 'JL LAKS MARTADINATA 59', NULL, NULL),
(113, 3, 'TOKO SEPEDA MOTOR MAJU', 'JL KH AHMAD DAHLAN 55 ', NULL, NULL),
(114, 3, 'SOEHARIYANTO', 'JL IR JUANDA I/1945', NULL, NULL),
(115, 3, 'SLAMET S', 'JL BLKNG RSSA 7/12', NULL, NULL),
(116, 3, 'SDK COR JESU', 'JL JA SUPRAPTO 55', NULL, NULL),
(117, 3, 'SUGENG RIANI', 'JL GILIMANUK IV/28', NULL, NULL),
(118, 3, 'BAHTERA LAW', 'JL R TUMENGGUNG SURYO 70', NULL, NULL),
(119, 3, 'TOKO JAYA ABADI', 'JL WR SUPRATMAN C 3 KAV 7', NULL, NULL),
(120, 3, 'NITA', 'JL AHMAD YANI 12 ', NULL, NULL),
(121, 3, 'YAMAHA BLIMBING', 'JL AHMAD YANI 10', NULL, NULL),
(122, 3, 'PT ASURANSI UMUM', 'JL TERS CANDI MENDUT 17H', NULL, NULL),
(123, 3, 'INDOVISUAL PRESENTAMA', 'JL M PANDJAITAN 68', NULL, NULL),
(124, 3, 'INEZ APARTEMEN', 'JL M PANDJAITAN 68', NULL, NULL),
(125, 3, 'UNIV GAJAYANA', 'JL BOGOR 38', NULL, NULL),
(126, 3, 'SUJONO', 'JL CINTADUI 6', NULL, NULL),
(127, 3, 'NIRMALA', 'JL CIKURAI 9', NULL, NULL),
(128, 3, 'WANRI', 'JL KERINCI 1', NULL, NULL),
(129, 3, 'RIO', 'JL BANTARAN INDAH', NULL, NULL),
(130, 3, 'PANIN BANK', 'JL SUKTAN AGUNG 14', NULL, NULL),
(131, 7, 'FREDDY', 'JL PAHL TRIP C-16', NULL, NULL),
(132, 7, 'ANGELIA', 'PERUM ISTANA DIENG UTARA 1-Z', NULL, NULL),
(133, 7, 'DEVI', 'PERUM BUKIT DIENG 0-11', NULL, NULL),
(134, 7, 'RINI', 'PERUM BUKIT DIENG EE-12', NULL, NULL),
(135, 7, 'SANDHY', 'PERUM PUNCAK DIENG LL 1/3', NULL, NULL),
(136, 7, 'SUGENG RIANI', 'JL RAYA TIDAR 30 ', NULL, NULL),
(137, 7, 'HARIYANTO', 'KL BARENG TENGAH 1/800', NULL, NULL),
(138, 7, 'JOHAN', 'JL SIMP TAMBORA 1/15', NULL, NULL),
(139, 7, 'Dr EDI WALUYO', 'JL LEMBAH DIENG E-2', NULL, NULL),
(140, 7, 'WITJAKSONO', 'JL LEMBAH DIENG BI-10', NULL, NULL),
(141, 7, 'TEDJO', 'JL PUNCAK ESBERG 1', NULL, NULL),
(142, 7, 'TOKO SEPATU MODERN', 'JL BASUKI RAHMAD 46', NULL, NULL),
(143, 4, 'BANK NIAGA', 'JL MERDEKA TIMUR ', NULL, NULL),
(144, 4, 'DEPOT SATO JAYA', 'JL KAUMAN 5 MALANG', NULL, NULL),
(145, 4, 'ZUBAIDAH', 'JL. AI SURYANI I 1/332', NULL, NULL),
(146, 4, 'SDN SANTO YUSUF I', 'JL LAKS MARTADINATA 80', NULL, NULL),
(147, 4, 'SUNDARI HERAWATI', 'JL KYAI TAMIN I/2 MALANG', NULL, NULL),
(148, 4, 'ANDY GUNAWAN', 'JL KYAI TAMIN 30', NULL, NULL),
(149, 4, 'ANDRIYANTO', 'JL KYAI TAMIN II/20 ', NULL, NULL),
(150, 4, 'TANDO L', 'JL KYAI TAMIN II/17', NULL, NULL),
(151, 4, 'DEPOT MIE JANGKRIK', 'JL KYAI TAMIN ', NULL, NULL),
(152, 4, 'SDN PETRA', 'JL PROF M YAMIN 53 ', NULL, NULL),
(153, 4, 'SDN CIPTOMULYO I', 'JL SARTONO SH', NULL, NULL),
(154, 4, 'H ABD HADI', 'JL TRIJAYA', NULL, NULL),
(155, 4, 'PERUM PEGADAIAN', 'JL HALMAHERA 9', NULL, NULL),
(156, 4, 'PERUM PEGADAIAN', 'JL HALMAHERA 9', NULL, NULL),
(157, 4, 'PERUM PEGADAIAN', 'JL HALMAHERA 9', NULL, NULL),
(158, 4, 'ENDANG R', 'JL MALAKA 2', NULL, NULL),
(159, 4, 'NGATEMUN', 'JL CEMPAKA 27/JL NIAGA', NULL, NULL),
(160, 4, 'WAHYU S', 'JL CEMPAKA 27/JL NIAGA', NULL, NULL),
(161, 4, 'HANDOKO', 'JL PELTU SUJONO GG MAWAR 7', NULL, NULL),
(162, 4, 'CV NASIONAL', 'JL PELTU SUJONO GG MAWAR 21', NULL, NULL),
(163, 4, 'BENGKEL GAJAH MADA', 'JL PELTU SUJONO 14', NULL, NULL),
(164, 4, 'SAWAL', 'JL PELTU SUJONO GG WIJAYA KUSUMA', NULL, NULL),
(165, 4, 'TOKO KAWI TEKHNIK', 'JL KOL SUGIONO 82', NULL, NULL),
(166, 4, 'TOKO SAFARI MOTOR', 'JL KOL SUGIONO 82 ', NULL, NULL),
(167, 4, 'HERU D', 'JL KOL SUGIONO 144', NULL, NULL),
(168, 4, 'PT OEPET', 'JL KOL SUGIONO 136', NULL, NULL),
(169, 4, 'PT OEPET', 'JL KOL SUGIONO 83', NULL, NULL),
(170, 4, 'PT TRITAMA BINA KARYA', 'JL KOL SUGIONO 125', NULL, NULL),
(171, 4, 'TOKO RITA BARU', 'JL KOL SUGIONO 90', NULL, NULL),
(172, 4, 'TOKO PODO MORO', 'JL KOL SUGIONO 105', NULL, NULL),
(173, 4, 'HERU P', 'JL KOL SUGIONO IIIC', NULL, NULL),
(174, 4, 'HJ MUSINAH', 'JL KOL SUGIONO IIIB/13', NULL, NULL),
(175, 4, 'SUDARYANTO', 'JL KOL SUGIONO 8', NULL, NULL),
(176, 4, 'BASUKI/SPEDDY', 'JL AHMAD YANI 11', NULL, NULL),
(177, 4, 'TOKO HOKY JAYA', 'JL KOL SUGIONO 82 RUKO AG', NULL, NULL),
(178, 4, 'ZAINUL ARIFIN', 'JL TANJUNG PALMA YUDHA 6/41 ', NULL, NULL),
(179, 4, 'ENDANG SANTI/PKK', 'JL KOL SUGIONO 8', NULL, NULL),
(180, 1, 'BAMBANG', 'ARJUNO 8', NULL, NULL),
(181, 1, 'INTEL', 'KOREM 083', NULL, NULL),
(182, 1, 'HARIYANTO', 'TAMAN SLAMET 28', NULL, NULL),
(183, 1, 'BU AMELIA ', 'JL TENNES 32', NULL, NULL),
(184, 1, 'TOKO ELEKTRONIK', 'JL WELIRANG 30', NULL, NULL),
(185, 1, 'HARTOYO', 'JL WELIRANG 29', NULL, NULL),
(186, 1, 'PMI', 'JL BURING 20', NULL, NULL),
(187, 1, 'SMPN 1', 'JL LAWU 12', NULL, NULL),
(188, 1, 'FRANKY', 'JL CERME 12', NULL, NULL),
(189, 1, '', 'JL MURIA 26', NULL, NULL),
(190, 1, 'dr ISTANT', 'JL UNGARAN 10', NULL, NULL),
(191, 1, 'HANDOKO', 'BS RIADI 62', NULL, NULL),
(192, 1, 'ANDRE', 'BS RIADI 60', NULL, NULL),
(193, 1, 'BU LELY SETIAWATI', 'JL PANGGUNG 6', NULL, NULL),
(194, 1, '', 'JL ANJASMORO 29', NULL, NULL),
(195, 1, 'CANDRA', 'JL TAMAN IJEN C-3', NULL, NULL),
(196, 1, 'TANTONO', 'JL TAMAN IJEN C-18A', NULL, NULL),
(197, 1, 'INDARNO', 'JL TAMAN IJEN B-17', NULL, NULL),
(198, 1, 'PIETER', 'JL TAMAN IJEN O-18D', NULL, NULL),
(199, 1, '', 'JL JOMBANG 6', NULL, NULL),
(200, 1, 'HERY BASUKI', 'SINABU-NABU 3', NULL, NULL),
(201, 1, 'HERBASUKI', 'JL ARGOPURO IIA', NULL, NULL),
(202, 1, 'SURYA', 'JL TAMBORA 26', NULL, NULL),
(203, 1, 'STEVANUS', 'JL SIMP DIENG 2/3', NULL, NULL),
(204, 1, '', 'JL RAYA LANGSEP 17', NULL, NULL),
(205, 1, 'TAXI CITRA', 'SUHAT 77', NULL, NULL),
(206, 1, 'HADIONO', 'JL PANJAITAN 99', NULL, NULL),
(207, 1, 'PANTAI PHOTO', 'JL MERDEKA TIMUR 26', NULL, NULL),
(208, 1, '', 'JL MT HARYONO 433 A', NULL, NULL),
(209, 1, 'FOTO COPY', 'BS RIADI 180', NULL, NULL),
(210, 1, 'LATEF', 'JL ARJUNO 8', NULL, NULL),
(211, 1, 'Dra TUMINEM SH', 'JL BROMO 38', NULL, NULL),
(212, 1, 'SANTOSO LESMONO', 'JL IJEN 38', NULL, NULL),
(213, 1, 'HARSONO', 'JL IJEN 75A', NULL, NULL),
(214, 1, 'RUDI', 'JL IJEN 71', NULL, NULL),
(215, 1, 'YAYASAN ITN', 'JL TENIS 38 MALANG', NULL, NULL),
(216, 1, 'STEFANUS', 'JL LOKON 9 ', NULL, NULL),
(217, 1, 'HILL YUGIHARTO', 'JL LAWU 19', NULL, NULL),
(218, 1, 'NATALIA', 'JL MERATUS 3', NULL, NULL),
(219, 1, 'ALL N RESTO AND SPA', 'JL SIMP WILIS INDAH 10', NULL, NULL),
(220, 1, 'LOEKMAN', 'JL KH ZAINUL ARIFIN 53', NULL, NULL),
(221, 1, 'SUMBER MAS', 'JL KYAI TAMIN 47', NULL, NULL),
(222, 1, 'FANDI ARDI', 'JL FUJIAMA ', NULL, NULL),
(223, 8, 'PT TELKOM/OSTS', 'JL AHMAD YANI 11', NULL, NULL),
(224, 8, 'PT TELKOM/OSTS', 'JL AHMAD YANI 11', NULL, NULL),
(225, 8, 'PT TELKOM/KA', 'JL AHMAD YANI 11', NULL, NULL),
(226, 8, 'PT TELKOM/UBC', 'JL AHMAD YANI 11', NULL, NULL),
(227, 8, 'PT TELKOM/DBS', 'JL AHMAD YANI 11', NULL, NULL),
(228, 8, 'PT DUTA SARANA DUTA', 'JL AHMAD YANI 11', NULL, NULL),
(229, 8, 'PT KOPEGTEL', 'JL AHMAD YANI 11', NULL, NULL),
(230, 8, 'PT INFOMEDIA', 'JL AHMAD YANI 11', NULL, NULL),
(231, 8, 'PT TELKOM/TRANSMISI', 'JL JEND BASUKI RAHMAD 7-9', NULL, NULL),
(232, 8, 'PT TELKOM/FLEXI', 'JL JEND BASUKI RAHMAD 7-9', NULL, NULL),
(233, 8, 'BCA', 'JL JEND BASUKI RAHMAD 70-74', NULL, NULL),
(234, 8, 'HOTEL RICHE', 'JL JEND BASUKI RAHMAD 1', NULL, NULL),
(235, 8, 'PT MARGOSUKO', 'JL ARJUNO 30', NULL, NULL),
(236, 8, 'APOTEK NARITA', 'JL ARJUNO 34', NULL, NULL),
(237, 8, 'HARTO', 'JL SEMERU', NULL, NULL),
(238, 8, 'KODIM 0833 KOTA MALANG', 'JL KAHURIPAN ', NULL, NULL),
(239, 8, 'KODIM 0833 KOTA MALANG', 'JL KAHURIPAN ', NULL, NULL),
(240, 8, 'TOKO TEXTILE PERDANA', 'JL PASAR BESAR 63', NULL, NULL),
(241, 8, 'JAYA OPTIK', 'JL S WIRYOPRANOTO', NULL, NULL),
(242, 8, 'TEGUH', 'JL BAWEAN 6', NULL, NULL),
(243, 8, 'MARGARETA', 'JL BAWEAN 3', NULL, NULL),
(244, 8, 'ARIE S', 'JL BAWEAN 4', NULL, NULL),
(245, 8, 'PANGKALAN TNI AL', 'JL YOS SUDARSO 3', NULL, NULL),
(246, 8, 'PANGKALAN TNI AL', 'JL YOS SUDARSO 3', NULL, NULL),
(247, 8, 'HANDOKO ANGGORO', 'JL ANDALAS 8', NULL, NULL),
(248, 8, 'DEWI BS', 'JL BERINGIN 147', NULL, NULL),
(249, 8, 'HENDRI S', 'JL SIBERUT 16', NULL, NULL),
(250, 8, 'IRWAN MINTARJA', 'JL BATAM 5', NULL, NULL),
(251, 8, 'WARUNG PECEL SEMPU', 'JL SEMPU', NULL, NULL),
(252, 8, 'CORNELIS', 'JL KALIMANTAN 22', NULL, NULL),
(253, 8, 'PT TELKOM/DBS', 'JL AHMAD YANI 11', NULL, NULL),
(254, 8, 'HARTO SUDIANTO', 'JL LAKS MARTADINATA 59', NULL, NULL),
(255, 3, 'TOKO SEPEDA MOTOR MAJU', 'JL KH AHMAD DAHLAN 55 ', NULL, NULL),
(256, 3, 'SOEHARIYANTO', 'JL IR JUANDA I/1945', NULL, NULL),
(257, 3, 'SLAMET S', 'JL BLKNG RSSA 7/12', NULL, NULL),
(258, 3, 'SDK COR JESU', 'JL JA SUPRAPTO 55', NULL, NULL),
(259, 3, 'SUGENG RIANI', 'JL GILIMANUK IV/28', NULL, NULL),
(260, 3, 'BAHTERA LAW', 'JL R TUMENGGUNG SURYO 70', NULL, NULL),
(261, 3, 'TOKO JAYA ABADI', 'JL WR SUPRATMAN C 3 KAV 7', NULL, NULL),
(262, 3, 'NITA', 'JL AHMAD YANI 12 ', NULL, NULL),
(263, 3, 'YAMAHA BLIMBING', 'JL AHMAD YANI 10', NULL, NULL),
(264, 3, 'PT ASURANSI UMUM', 'JL TERS CANDI MENDUT 17H', NULL, NULL),
(265, 3, 'INDOVISUAL PRESENTAMA', 'JL M PANDJAITAN 68', NULL, NULL),
(266, 3, 'INEZ APARTEMEN', 'JL M PANDJAITAN 68', NULL, NULL),
(267, 3, 'UNIV GAJAYANA', 'JL BOGOR 38', NULL, NULL),
(268, 3, 'SUJONO', 'JL CINTADUI 6', NULL, NULL),
(269, 3, 'NIRMALA', 'JL CIKURAI 9', NULL, NULL),
(270, 3, 'WANRI', 'JL KERINCI 1', NULL, NULL),
(271, 3, 'RIO', 'JL BANTARAN INDAH', NULL, NULL),
(272, 3, 'PANIN BANK', 'JL SUKTAN AGUNG 14', NULL, NULL),
(273, 7, 'FREDDY', 'JL PAHL TRIP C-16', NULL, NULL),
(274, 7, 'ANGELIA', 'PERUM ISTANA DIENG UTARA 1-Z', NULL, NULL),
(275, 7, 'DEVI', 'PERUM BUKIT DIENG 0-11', NULL, NULL),
(276, 7, 'RINI', 'PERUM BUKIT DIENG EE-12', NULL, NULL),
(277, 7, 'SANDHY', 'PERUM PUNCAK DIENG LL 1/3', NULL, NULL),
(278, 7, 'SUGENG RIANI', 'JL RAYA TIDAR 30 ', NULL, NULL),
(279, 7, 'HARIYANTO', 'KL BARENG TENGAH 1/800', NULL, NULL),
(280, 7, 'JOHAN', 'JL SIMP TAMBORA 1/15', NULL, NULL),
(281, 7, 'Dr EDI WALUYO', 'JL LEMBAH DIENG E-2', NULL, NULL),
(282, 7, 'WITJAKSONO', 'JL LEMBAH DIENG BI-10', NULL, NULL),
(283, 7, 'TEDJO', 'JL PUNCAK ESBERG 1', NULL, NULL),
(284, 7, 'TOKO SEPATU MODERN', 'JL BASUKI RAHMAD 46', NULL, NULL),
(285, 7, 'D LOUNGE', 'MOG', NULL, NULL),
(286, 7, 'TONI', 'JL KEBALEN WETAN GG MAWAR NO 10', NULL, NULL),
(287, 7, 'MARZUKI', 'JL KEBALEN WETAN GG MAWAR 8 ', NULL, NULL),
(288, 7, 'SONI', 'PERUM ISTANA DIENG TENGAH 1-11', NULL, NULL),
(289, 7, 'Dr HERMIN', 'JL TERS IJEN863 ', NULL, NULL),
(290, 7, 'HENDRO', 'JL MANGUN SARKORO 18 ', NULL, NULL),
(291, 7, 'YONO', 'JL MANGUN SARKORO 19', NULL, NULL),
(292, 7, 'SUSILOWATI', 'JL MUNDU 9 ', NULL, NULL),
(293, 7, 'GUNAWAN', 'PERUM PUCUK DIENG LL-2/11', NULL, NULL),
(294, 7, 'TOKO TRISAKTI', 'JL MARTADINATA 127 ', NULL, NULL),
(295, 7, 'ENDI', 'JL PANDERMAN 18', NULL, NULL),
(296, 7, 'YEYE', 'JL BOROBUDUR BARAT VI-8', NULL, NULL),
(297, 7, 'ADRIAN', 'JL SIMPANG DEWANDARU B-6', NULL, NULL),
(298, 7, 'FENI', 'JL BUKIT DIENG AA/9A', NULL, NULL),
(299, 7, 'H IMAM', 'JL BARENG KULON 1063', NULL, NULL),
(300, 7, 'AYU', 'JL KERINCI 16', NULL, NULL),
(301, 7, 'BIKERS CAFÉ', 'JL TERUSAN DIENG', NULL, NULL),
(302, 7, 'SANJAYA', 'JL ARIF MARGONO', NULL, NULL),
(303, 10, 'BUDI', 'JL KINIBALU 17 ', NULL, NULL),
(304, 10, 'SAFIA', 'PERUM PUNCAK DIENG JJ-2/7', NULL, NULL),
(305, 10, 'RUDI', 'JL SIWALAN 9', NULL, NULL),
(306, 10, 'SINTA', 'JL TELOMOYO 6', NULL, NULL),
(307, 10, 'TOKO BUNGA', 'JL GALUNGGUNG 92', NULL, NULL),
(308, 10, 'BU ENDANG', 'JL VILLA PUNCAK TIDAR AB-11', NULL, NULL),
(309, 10, 'LIONG', 'JL KEPUNDANG 21', NULL, NULL),
(310, 10, 'THE HARVEST', 'JL PAHLAWAN TRIP 8', NULL, NULL),
(311, 10, 'MARYONO', 'JL TENNES 8', NULL, NULL),
(312, 10, 'TRAVEL YABE', 'JL MENTAWI 11', NULL, NULL),
(313, 10, 'ESTER', 'JL ANDALAS SELATAN 1', NULL, NULL),
(314, 10, 'SUMBER BARU MOTOR', 'JL RAYA GADANG 14', NULL, NULL),
(315, 10, 'GATOTO', 'JL SUGIONO III-C/358', NULL, NULL),
(316, 10, 'DARMAWAN', 'PERUM ISTANA DIENG TMR 4/12', NULL, NULL),
(317, 10, 'LORENZ', 'PERUM BUKIT DIENG G-6 ', NULL, NULL),
(318, 10, 'BANK MUAMALAT', 'JL KAWI ATAS 34', NULL, NULL),
(319, 10, 'HENGKI', 'JL MANGGA 3', NULL, NULL),
(320, 10, 'TOKO RIA', 'JL DEWANDARU G-6', NULL, NULL),
(321, 10, 'DEBY', 'PERUM PINCAK DIENG LL 2/3', NULL, NULL),
(322, 10, 'PT KRESNA', 'JL SUKARNO HATTA', NULL, NULL),
(323, 10, 'LISA', 'JL PAHLAWAN TRIP C-8', NULL, NULL),
(324, 10, 'SUHARYO', 'JL TANGGAMUS 14', NULL, NULL),
(325, 10, 'WILLY', 'PERUM WILLYS INDAH B-10', NULL, NULL),
(326, 10, 'YANI', 'JL DEMPO 7', NULL, NULL),
(327, 10, 'VERONICA', 'JL LEMBAH DIENG ', NULL, NULL),
(328, 10, 'SDN PURWANTORO 2', 'JL CIPUNEGARA', NULL, NULL),
(329, 10, 'SRIWATI', 'JL MANGUN SARKORO 29', NULL, NULL),
(330, 10, 'SOKORA', 'JL SEDAP MALAM 10', NULL, NULL),
(331, 10, 'LUKMAN', 'JL ARJUNO 5', NULL, NULL),
(332, 10, 'AMELIA', 'JL BANDARA 11', NULL, NULL),
(333, 6, 'BU NITA', 'PERMATA HIJAU G-119', NULL, NULL),
(334, 6, 'HERIYANTO', 'JL PAPA UNGU 35', NULL, NULL),
(335, 6, 'YUSUF', 'JL BUKIT HIJAU D-78', NULL, NULL),
(336, 6, 'RAHMAT', 'JL PISANG KIPAS', NULL, NULL),
(337, 6, 'BU ARIF', 'JL VINOLIA 21', NULL, NULL),
(338, 6, 'RUDI', 'JL MT HARYONO 11/302', NULL, NULL),
(339, 6, 'SODIK', 'JL MT HARYONO 11/456', NULL, NULL),
(340, 6, 'BU LIS', 'JL VETERAN DALAM NO 1', NULL, NULL),
(341, 6, 'APOTIK DINOYO', 'JL MT HARYONO 152', NULL, NULL),
(342, 6, 'MUJIB', 'JL DP KAV 70', NULL, NULL),
(343, 6, 'BU EVI', 'AHMAD NING', NULL, NULL),
(344, 6, 'HERWANTONO', 'JL JOYO R 108', NULL, NULL),
(345, 6, 'HERIYANTO', 'JL JOYO T 32A', NULL, NULL),
(346, 6, 'DARSONO', 'JL ASTEROID II (CARTERAN MOBIL)', NULL, NULL),
(347, 6, 'FAK KEUANGAN UNISMA', 'UNISMA', NULL, NULL),
(348, 6, 'FAK EKONOMI UNISMA', 'UNISMA', NULL, NULL),
(349, 6, 'FAK A.I UNISMA', 'UNISMA', NULL, NULL),
(350, 6, 'SUHARTONO', 'JL SENTAURUS 04', NULL, NULL),
(351, 6, 'TRI KENA', 'BUKIT HIJAU D-46', NULL, NULL),
(352, 6, 'BUDIONO', 'JL INTAN 03', NULL, NULL),
(353, 11, '', 'JL BENGKALIS NO 17', NULL, NULL),
(354, 11, '', 'JL. SINBERUT 19', NULL, NULL),
(355, 11, '', 'JL SIBERUT 21', NULL, NULL),
(356, 11, '', 'JL FILISIUM 7', NULL, NULL),
(357, 11, '', 'JL SONOKELING 29', NULL, NULL),
(358, 11, '', 'JL SIMPANG SONOKELING 29', NULL, NULL),
(359, 11, 'SMKN 1', 'SONOKEMBANG JANTI', NULL, NULL),
(360, 11, '', 'FILISIUM 2', NULL, NULL),
(361, 11, '', 'NUSAKAMBANGAN 24', NULL, NULL),
(362, 11, 'BU HERLINA', 'JL SIBERUT 17', NULL, NULL),
(363, 11, 'PAK SANDI', 'JL LATIVA 1-11', NULL, NULL),
(364, 11, 'AUTO 2000', 'JL S SUPRIADI', NULL, NULL),
(365, 11, 'TOKO CEMARA INDAH', 'JL  MOCH YAMIN 107', NULL, NULL),
(366, 11, 'BU LURI', 'JL LATIVA 2-9', NULL, NULL),
(367, 11, 'H HASAN SALEH', 'JL CILIWUNG 30', NULL, NULL),
(368, 11, 'ABDULLAH', 'JL BUKIT DIENG AA 4', NULL, NULL),
(369, 11, 'SUHARTONO ', 'JL HALMAHERA 92', NULL, NULL),
(370, 11, 'HOTEL KARTIKA ', 'JL KAHURIPAN 12', NULL, NULL),
(371, 11, 'AGUS S', 'JL IJEN 75 B', NULL, NULL),
(372, 11, 'RATNADI', 'JL BUKIT DIENG AA. 8A', NULL, NULL),
(373, 11, 'ASRUL', 'PERUM GRAHA PUTRA ASRI I 14 MUHARTO 5C', NULL, NULL),
(374, 11, 'ANDIK', 'PUNCAK TIDAR I 62', NULL, NULL),
(375, 11, 'WIRAWAN', 'JL IJEN 20', NULL, NULL),
(376, 11, '', 'S SUPRIADI 4 DAN 11', NULL, NULL),
(377, 11, '', 'JL RAYA WALET A.5', NULL, NULL),
(378, 11, '', 'KLAYATAN 1/7', NULL, NULL),
(379, 11, '', 'GANG MANDALA B/34', NULL, NULL),
(380, 11, 'BU DIAN', 'JL LATIVA 18', NULL, NULL),
(381, 11, '', 'JL MALAKA 9', NULL, NULL),
(382, 11, '', 'JL SINGKEP 11', NULL, NULL),
(383, 11, '', 'JL TERNATE 33', NULL, NULL),
(384, 11, 'SMPN 19', 'JL BELITUNG 1', NULL, NULL),
(385, 11, '', 'JL BAWEAN 11', NULL, NULL),
(386, 11, '', 'JL P SAYANG 8', NULL, NULL),
(387, 11, '', 'JL LARWO G 6', NULL, NULL),
(388, 11, 'HULKIROM', 'JL HASYIM ASHARI', NULL, NULL),
(389, 11, '', 'JL BANDUNG 42', NULL, NULL),
(390, 11, '', 'TG P3', NULL, NULL),
(391, 11, 'TUNA NETRA', 'JL BERINGIN 13', NULL, NULL),
(392, 11, 'HADI SUPRIANTO', 'JL AMBON 42', NULL, NULL),
(393, 11, 'IRMA ', 'JL LARWO G 26', NULL, NULL),
(394, 11, 'BU CANDRA', 'LEMBAH DIENG A1-1', NULL, NULL),
(395, 11, 'BU SUSAN', 'JL RAUNG 1', NULL, NULL),
(396, 11, '', 'NGANTANG 23', NULL, NULL),
(397, 11, '', 'JL ANJASMORO 34', NULL, NULL),
(398, 11, '', 'BUKIT DIENG MH 8', NULL, NULL),
(399, 11, 'PAK ANGGI', '', NULL, NULL),
(400, 11, 'PAK HADI', 'BUKIT DIENG AA 6', NULL, NULL),
(401, 11, 'LESTARI MOTOR ', 'JL S SUPRIADI 30F, 30G', NULL, NULL),
(402, 11, 'KO HAN', 'JL SUHAT INDAH 15', NULL, NULL),
(403, 11, '', 'JL MENARI 53', NULL, NULL),
(404, 11, '', 'JL WILIS 26', NULL, NULL),
(405, 11, '', 'JL RETAWU 27', NULL, NULL),
(406, 11, '', 'JL TAMAN SLAMET 29', NULL, NULL),
(407, 11, '', 'JL WELIRANG 27', NULL, NULL),
(408, 11, '', 'JL PATIMURA 26', NULL, NULL),
(409, 11, '', 'JL DIENG 47', NULL, NULL),
(410, 11, '', 'JL RETAWU 25', NULL, NULL),
(411, 11, 'KURNIA MOTOR', 'JL LETJEN SUTOYO 37A', NULL, NULL),
(412, 11, '', 'JL EMPRIT EMAS 19', NULL, NULL),
(413, 11, 'BELAKANG RS UMUM 10', '', NULL, NULL),
(414, 11, 'PASAR BESAR 23', 'TOKO DIENG 2/5', NULL, NULL),
(415, 11, 'TOKO SAPTA JAYA', 'ISTANA DIENG TIMUR 4/5', NULL, NULL),
(416, 11, '', 'JL BENDAHARA 25', NULL, NULL),
(417, 11, 'GEREJA TIDAR', '', NULL, NULL),
(418, 11, 'TOKO LAKS MOTOR', 'KOTALAMA 64', NULL, NULL),
(419, 11, 'TOKO LOGAM CAHAYA', 'JL ZAENAL ZAKSE 2', NULL, NULL),
(420, 11, '', 'JL FLORES 1', NULL, NULL),
(421, 11, '', 'JL FLORES 5', NULL, NULL),
(422, 11, '', 'JL TIMOR 2', NULL, NULL),
(423, 11, '', 'JL MADURA 1', NULL, NULL),
(424, 11, '', 'JL ANDALAS TENGAH 9', NULL, NULL),
(425, 9, 'SUWANTO ALIM', 'JL SAPUDI 4', NULL, NULL),
(426, 9, 'Dr BENI', 'BUKIT  DIENG L 12', NULL, NULL),
(427, 9, 'DEPOT AHONG', 'SIMPANG WILIS INDAH 1', NULL, NULL),
(428, 9, '', 'BUKIT DIENG AA 3', NULL, NULL),
(429, 9, '', 'BUKIT DIENG MD 9', NULL, NULL),
(430, 9, '', 'BUKIT DIENG MA 9', NULL, NULL),
(431, 9, 'BPK SITORUS', 'JL ALUMUNIUM 3', NULL, NULL),
(432, 9, 'PAK DAMAR', 'BUKIT DIENG C3', NULL, NULL),
(433, 9, '', 'PULAU SAYANG 10', NULL, NULL),
(434, 9, 'SDK MARDIWIYATA', '', NULL, NULL),
(435, 9, 'TOKO SUBUR, EMAS, KOPRAL ', '', NULL, NULL),
(436, 9, 'Dr BUNTORO', 'PUNCAK DIENG II 2/18', NULL, NULL),
(437, 9, '', 'KARTINI 9', NULL, NULL),
(438, 9, '', 'KARTINI 7', NULL, NULL),
(439, 9, 'M ISMET', 'SARANGAN 12', NULL, NULL),
(440, 9, 'Dr Kumiaiyanto', 'd maninjau selatan d1', NULL, NULL),
(441, 9, 'mas totok', 'sulfat 15', NULL, NULL),
(442, 9, 'NY PARTINI S', 'CELAKET ID/205', NULL, NULL),
(443, 9, 'ALI CANDRA', 'BANDULAN 1B/23', NULL, NULL),
(444, 9, 'UNIGA', 'MERJOSARI', NULL, NULL),
(445, 9, '', 'CIPTO 7', NULL, NULL),
(446, 9, 'HARIYONO', 'BUKIT DIENG A 5A', NULL, NULL),
(447, 9, 'PAK RIDWAN', 'BUKIT AA.7', NULL, NULL),
(448, 9, 'PERCETAKAN GRACIA', 'JL NIAGA 11', NULL, NULL),
(449, 9, 'SUGIANTO', 'BUKIT DIENG A 12A', NULL, NULL),
(450, 9, 'KO LI ANG', 'KAYU TANGAN 50', NULL, NULL),
(451, 9, 'EFFENDI G', 'BUKIT DIENG AA 8', NULL, NULL),
(452, 9, '', 'KAWI 21', NULL, NULL),
(453, 9, '', 'SEGAWE 4', NULL, NULL),
(454, 5, '', 'JL BURING 30', NULL, NULL),
(455, 5, 'BP NICHOLAS', 'CV PAHALA ABADI', NULL, NULL),
(456, 5, 'BP WIJAYA', 'JL TGP NO 4', NULL, NULL),
(457, 5, '', 'JL PAHLAWAN TRP GG 6', NULL, NULL),
(458, 5, 'BU GHANDI', 'YAYASAN WIDYAKARYA', NULL, NULL),
(459, 5, 'BP BAMBANG', 'JL LAWU 05', NULL, NULL),
(460, 5, '', 'JL WILIS INDAHF9', NULL, NULL),
(461, 5, '', 'JL TAMAN WILIS 5', NULL, NULL),
(462, 5, '', 'JL TERUSAN DIENG 41', NULL, NULL),
(463, 5, '', 'JL BUKIT DIENG NO 3', NULL, NULL),
(464, 5, '', 'BUKIT DIENG A2 NO 4', NULL, NULL),
(465, 5, '', 'BUKIT DIENG L-7', NULL, NULL),
(466, 5, '', 'BUKIT DIENG 012', NULL, NULL),
(467, 5, '', 'BUKIT DIENG 03', NULL, NULL),
(468, 5, '', 'BUKIT DIENG D10', NULL, NULL),
(469, 5, '', 'ISTANA DIENG UTARA II/14', NULL, NULL),
(470, 5, '', 'ISTANA DIENG UTARA II/15', NULL, NULL),
(471, 5, '', 'ISTANA DIENG UTARA II/42', NULL, NULL),
(472, 5, '', 'ISTANA DIENG UTARA I/33', NULL, NULL),
(473, 5, '', 'ISTANA DIENG TENGAH II/05', NULL, NULL),
(474, 5, '', 'ISTANA DIENG TENGAH II/09', NULL, NULL),
(475, 5, '', 'ISTANA DIENG TENGAH I/1', NULL, NULL),
(476, 5, '', 'ISTANA DIENG TENGAH I/08', NULL, NULL),
(477, 5, '', 'ISTANA DIENG TENGAH I/09', NULL, NULL),
(478, 5, '', 'ISTANA DIENG TIMUR II/08', NULL, NULL),
(479, 5, '', 'ISTANA DIENG TIMUR VI/1', NULL, NULL),
(480, 5, '', 'ISTANA DIENG TIMUR VII/2', NULL, NULL),
(481, 5, '', 'ISTANA DIENG SELATAN NO 38 A', NULL, NULL),
(482, 5, '', 'ISTANA DIENG SELATAN NO 18', NULL, NULL),
(483, 5, '', 'ISTANA DIENG SELATAN NO 1A', NULL, NULL),
(484, 5, '', 'JL SIMPANG SAWO NO 05', NULL, NULL),
(485, 5, 'BP WILLY', 'JL SAWO NO 39', NULL, NULL),
(486, 5, 'Dr MELLY', 'JL TAMAN GAYAM NO 15', NULL, NULL),
(487, 5, '', 'PT. MTO (MOG)', NULL, NULL),
(488, 5, '', 'JL SUMBEREJO NO 23', NULL, NULL),
(489, 5, '', 'JL SUMBEREJO NO 28', NULL, NULL),
(490, 5, '', 'BUKIT DIENG 1-2', NULL, NULL),
(491, 5, '', 'BUKIT DIENG I-3', NULL, NULL),
(492, 5, '', 'BUKIT DIENG H-15', NULL, NULL),
(493, 5, '', 'BUKIT DIENG MC-26', NULL, NULL),
(494, 5, '', 'PUNCAK DIENG HH-2', NULL, NULL),
(495, 5, '', 'PUNCAK DIENG FF-12 A', NULL, NULL),
(496, 5, '', 'PUNCAK DIENG FF-3', NULL, NULL),
(497, 5, '', 'PUNCAK DIENG II-1/17', NULL, NULL),
(498, 5, '', 'PUNCAK DIENG II-I/25', NULL, NULL),
(499, 5, '', 'PUNCAK DIENG II-I/26', NULL, NULL),
(500, 5, '', 'PUNCAK DIENG II-III/9', NULL, NULL),
(501, 5, '', 'PINCAK DIENG II-III/15', NULL, NULL),
(502, 5, '', 'PINCAK DIENG II-II/15A', NULL, NULL),
(503, 5, '', 'PUNCAK DIENG NN II/2', NULL, NULL),
(504, 5, 'BP SIGIT NUR RAHMAT', 'PUNCAK DIENG JJ-III/11', NULL, NULL),
(505, 5, '', 'PINCAK DIENG JJ-II/15', NULL, NULL),
(506, 5, '', 'LEMBAH DIENG GA-10', NULL, NULL),
(507, 5, 'BP IRAWAN', 'LEMBAH DIENG GA-20', NULL, NULL),
(508, 5, '', 'LEMBAH DIENG B2/9', NULL, NULL),
(509, 5, '', 'LEMBAH DIENG G-23', NULL, NULL),
(510, 5, '', 'VILLA PUNCAK TIDAR AB-09', NULL, NULL),
(511, 5, '', 'VILLA PUNCAK TIDAR U-1', NULL, NULL),
(512, 5, '', 'VILLA PUNCAK TIDAR U-35', NULL, NULL),
(513, 5, '', 'BRI GADANG', NULL, NULL),
(514, 5, 'BP AGUS', 'BCA KYAI TAMIN', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_daerah`
--

CREATE TABLE `tbl_daerah` (
  `id_daerah` int(11) NOT NULL,
  `nama_daerah` varchar(30) NOT NULL,
  `agen_minim` int(5) DEFAULT NULL,
  `agen_max` int(5) DEFAULT NULL,
  `loper_minim` int(5) DEFAULT NULL,
  `loper_max` int(5) DEFAULT NULL,
  `poly` polygon DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_daerah`
--

INSERT INTO `tbl_daerah` (`id_daerah`, `nama_daerah`, `agen_minim`, `agen_max`, `loper_minim`, `loper_max`, `poly`) VALUES
(1, 'Blimbing', 2, 6, 20, 50, '\0\0\0\0\0\0\0\0\0\0\0\0C9Ѯ�����G�*\\@RI��&������*\\@Ral!���	m9�*\\@Sy;�i��;�i��*\\@���x���J+�*\\@\0:̗��8��*\\@����	��{Ic��*\\@X��0_��#��*\\@=~oӟ�����|*\\@w�k�F���� v*\\@>�\r��_^�}t*\\@x(\n��׆�q*\\@�V�I����mn*\\@z�ަ?����je*\\@гY�����G�`*\\@�W�f,��Á�,`*\\@�\r2�ȹ��XQ�i*\\@�8EGr���%j*\\@��{���x�W�f*\\@G ^�/��8J^�c*\\@�Q�Q��X��0_*\\@-!�l��x�q�Z*\\@�"��J��_$��\\*\\@�f����\n.V�`*\\@N^����]�zk*\\@K�=����8��m*\\@�|a2���XQ�i*\\@�m����N^*\\@Mu����c�Z*\\@��ճ�8�L*\\@�ꭁ����d�,*\\@��1���9b->*\\@�u7��$EdX�)\\@YLl>���s�]��)\\@�67�''��vöE�)\\@�c#���v��y�)\\@��PN����䠄)\\@A�c�]��oG8-x)\\@�6�X���=�>t)\\@B!������|\\)\\@��\0���\Z�d)\\@M֨��W`��V)\\@M֨����S)\\@*\0�3h��3��V)\\@���G������N)\\@���T����_�L)\\@�#����e�z�F)\\@~5����kC)\\@�]h�Ө���p>)\\@Ϊ��V��w��N#)\\@��\Z����-9()\\@>�$@M���i��&)\\@v��ݰ��l[�� )\\@�%䃞��^��)\\@Z�wg��scz�)\\@X�2ı��wJ��(\\@�lV}����s��(\\@�i�q���;ǀ��(\\@�hUM��&P6�(\\@�HV��t���(\\@\Zn�燱��D��(\\@ʉv����Y��(\\@�]P߲�?tA}�(\\@�n�ͳ�I��&�(\\@��=�>���;1��(\\@\\�������A�(\\@��\0���t����(\\@h˹W��pΈ��(\\@�������Hm�(\\@���9]��7�'',�(\\@�\n)?����&p�(\\@JF���7�A`�(\\@I.�!����"��(\\@��<�!��0G���(\\@���eN��&jj�(\\@\rl�`q��7Ou��(\\@~!<ڸ��ͪ��(\\@<�.���"��(\\@��	m����N�(\\@`����	�c�(\\@�������?���(\\@��|г��i㈵�(\\@����������(\\@''�o|���f�)\\@`�5�!���x\r)\\@�m�2���)\\@�M�»����\Z)\\@��gy��Z� )\\@?�m��Z� )\\@L��ݼ�Z� )\\@�Z��K���''�>)\\@��x����9])\\@�B�O���^��)\\@u<f�2�����)\\@�SW��P��n)\\@Xs�`���"q��)\\@�A	3m��ףp=\n)\\@��Ù��+j0\r)\\@\0\0\0\0\0���bg\n)\\@���V��~��k	)\\@T������X��)\\@p��1=���}ƅ)\\@��\Z�*���E���(\\@������"7�\r�(\\@�GĔH���#0�(\\@3Mg''��0du��(\\@��T�����~�n�(\\@���v���)�^�(\\@�g?RD����-�(\\@H�I�O��;S��(\\@+��ݓ��\r7���(\\@*�-9��fk}��(\\@M֨���[%X�(\\@�����-&6�(\\@�0|DL��Mۿ��(\\@�d�,�����Q�(\\@C9ѮB����Y��(\\@�7��d��Mۿ��(\\@�+H3����4�(\\@scz����A`��(\\@ɰ�72����0�(\\@�!q��������(\\@�0����F����(\\@Pp����W!�''�(\\@M2r���&䃞�(\\@���M���@���(\\@J�i���46<�(\\@�3��7����7��(\\@GZ*oG�����(\\@F�6�����A�(\\@F�6������Z�(\\@Է����t����(\\@\r��W���\rq���(\\@EdX���P�>�(\\@��x�Z���{,}�(\\@a7l[���{1��(\\@ҌE����&p�(\\@|DL�$��;�� �(\\@����m����N�(\\@��%����m���(\\@	�c���>�\r�(\\@�a��\0����\0�(\\@�L��\Z��-&6�(\\@z�ަ?���ͪ��(\\@�4�Ry�����\Z�(\\@�j����P�>�(\\@΍�	K��{1��(\\@�]K���[_$��(\\@�(�\r���^F��(\\@���%��7l[��(\\@X��0_��F����(\\@wJ���£�#�(\\@�0���&jj�(\\@�)\0�3�����(\\@���B����x@�(\\@]�����<,�(\\@[Υ�����}�k�(\\@=�!7����@���(\\@eS����t�//�(\\@B��=��Tƿϸ(\\@�q�������7�(\\@�f�����eN��(\\@�#�����\rq���(\\@K�8�������Q�(\\@f��a����7�)\\@�&������)\\@*��s���ڧ�1)\\@�zNz���%��C)\\@aO;�5��%#gaO)\\@F�6������W)\\@�\Z�''��H0�[)\\@+ٱ����N@a)\\@�%�����o��e)\\@�_�L���k&�l)\\@�.9����ʉv)\\@�������v�ӂ)\\@33333��k`��)\\@�Ր����=a��)\\@�W�2����(yu�)\\@�&"���od��)\\@V���������)\\@���Q����6T�)\\@t)�*����I�5�)\\@>�x���߾�)\\@@��"2��� ��)\\@��PN���K���)\\@��z6���=yX�)\\@_^�}t���B�O�)\\@(~��k����67�)\\@�&N�w���!q��)\\@֨�ht��(��)\\@f�-���du��)\\@K�R�����=yX�)\\@�ѩ+�����@��)\\@I�2���r��)\\@j�q������"�)\\@��V�c��Y�8��)\\@ߦ?����V����)\\@û\\�w��vq\r�)\\@ę_����>:u�)\\@�\0Ϡ��$���)\\@��k	����n��)\\@�H�����d*��)\\@�{�ʄ����\0�)\\@t��gy��K�R��)\\@�B�O���ke�/�)\\@Z\r�{,����ڊ�)\\@�J�8��R��*\\@�!�uq���d*\\@{�G���g��*\\@�<,���9�ߡ(*\\@��%�������3.*\\@��Hh�����W�2*\\@�zNz���NE*�-*\\@�mnLO�����3*\\@d#��������7*\\@�`����U���B*\\@��m4�����J�R*\\@I�2����c(''�U*\\@���M���=yX*\\@��H��5)�^*\\@J$��(���]�zk*\\@�O�I���*��s*\\@���h��j���v*\\@�߾���t��gy*\\@�Y��B����ypw*\\@�"�-���m��o*\\@Þv�k���-�l*\\@�0Bx���q���h*\\@�b�����\nK<�l*\\@�I�5�����ׁs*\\@Y4������:ǀ*\\@�w�W��?�ܵ�*\\@�}�k���4��@�*\\@�0|D��d�w*\\@@ٔ+����L��~*\\@�/�''��X9��v*\\@\nK<�l���q�Z|*\\@�w(\n���8��*\\@(\n�<��\r�-�*\\@�]h����[���*\\@S"���aۢ*\\@������q=\nף*\\@��.4���&S�*\\@��?�����t<f�*\\@A}˜.��K��*\\@Ϡ�������&�*\\@A�ȓ���B>�٬*\\@�>tA}��;%�*\\@z�rK��_��x�*\\@�n�����\n)?�*\\@`vO����\\��*\\@}�͍���іs)�*\\@`��V���{��*\\@��y�����%��*\\@''�UH����M�»*\\@�����&ǝ��*\\@��������kC�*\\@a\Z������;1��*\\@��u\Z����G��*\\@���T���io���*\\@��@���p��:�*\\@c��	���{���*\\@��҇.��)�Ǻ*\\@d@�z���B[Υ�*\\@�4�8E������*\\@�^)���\r\Z�''�*\\@�ꐛ���t{Ic�*\\@��%����*�D/�*\\@�ȓ�k����%ǝ*\\@��"��1�*�*\\@�Z_$���8��̒*\\@h��HK��j�t�*\\@�!Y����y�*\\@O#-����f�ʉ*\\@+j0\r����*\\@������c��	�*\\@C9Ѯ�����G�*\\@'),
(2, 'Kedungkandang', 3, 6, 1, 20, '\0\0\0\0\0\0\0\0\0\0�\0\0\0��?����?��(\\@��P���T㥛�(\\@��n��������(\\@.9���IV�(\\@I��Z������\0)\\@d�w����5�!\Z)\\@\r�a����:X��0)\\@�s�����ؙB)\\@E���J�����eN)\\@*�D/���3��V)\\@Օ��<��ޓ��Z)\\@bg\n���:̗`)\\@��_���>���d)\\@ڏ�a��:�}�k)\\@ۧ�1��S�!�u)\\@��@�������ׁ)\\@��+H���	�)\\@�^F��������)\\@��+���v��y�)\\@��\Z����u��)\\@9{����Dio��)\\@�P�f���6�X�)\\@W�c#��z�):�)\\@"�uq��:]�)\\@#�GG��k�w��)\\@�NG����bE\r�)\\@z�rK��o��\\�)\\@C�5v���D�!T�)\\@B�����K�;�)\\@�`\Z����A�ȓ�)\\@��S\0�����b��)\\@fN��������)\\@K�h��o��\\�)\\@�vö��$���)\\@��ʡ��wg�)\\@j>"����[=''�)\\@�9#J{������)\\@����������)\\@��(\\����r�)\\@��+e��V��y�)\\@�:�f����n��)\\@��7���N����)\\@��QI��������)\\@ȵ�b���Kvl�)\\@t$���������)\\@�|�����\0�4�)\\@ZGUD���72��)\\@�HP���(�\r*\\@��n������"*\\@>�>tA���46*\\@�j+����c�tv2*\\@ˡE�����//�>*\\@t�//���x�=\\*\\@�,�i���_^�}t*\\@=~o�������y*\\@7\Z�[ ��\np*\\@���	���S\0�g*\\@4��@���Q�Hm*\\@�i������� �r*\\@�T�����\nh"lx*\\@��v�����lscz*\\@�\Z�*����ݓ��*\\@Qk�w���{Ic��*\\@	m9���f����*\\@��VC���/��*\\@n�����4F�*\\@�=�>t��m�*\\@o*Ral���,`�*\\@��N@��гY��*\\@8��̒������*\\@���ǵ��鷯�*\\@P�c*��[Ӽ�+\\@kH�c����o��1+\\@j�t���:u�<+\\@�3�������N@+\\@2�%���^h��H+\\@��ݓ���z�ަ?+\\@�EB[����!�[=+\\@߉Y/��0/�>:+\\@��A����++MJ+\\@�^)�����&S+\\@�9@0��H0�[+\\@�7������4c+\\@��V	���P�f+\\@H�I�O��AJ�i+\\@�P��C����k+\\@�&N�w��h��n+\\@��V`��UMu+\\@F�j����v�ӂ+\\@c(''�U���(yu�+\\@�}t����!�rh�+\\@I��� ��:]�+\\@��A����pZ�+\\@f�c]���+0du�+\\@�sF����9�⪲+\\@�ꐛ�����b�+\\@J)������|���+\\@���[���x#��+\\@.9(a���t���+\\@�''���}y��+\\@������9��+\\@��"�-��Nz���+\\@H3Mg��]�].�+\\@�n��\\������+\\@#�G��y�Z��+\\@�!�[=���s��+\\@��s�����uq\r,\\@׆�q���*Ral!,\\@+��������q�&,\\@��b��|~!,\\@��	h"��>?�,\\@���,���!��u,\\@�''�>��\\=''�o,\\@�ܵ�|����:�f,\\@�;1������s,\\@�ަ?�����bg,\\@�?��"��?�m,\\@���^���8gDio,\\@�t<f���<k�]h,\\@Nz������<I�f,\\@2�������	.V,\\@iW!�''��nQf�L,\\@�u7O���_YiR,\\@G ^�/����q�@,\\@��dp���g��,\\@r������1��+\\@�\nF%u �����+\\@�GĔH ���&��+\\@Q�f� �!%̴+\\@��je �\Z����+\\@�f� ��j��+\\@�7��� ����|y+\\@P�I�5 ����v+\\@�.�o� �����s+\\@��� ��Y�w+\\@��P �%z�r+\\@�#��� ���̒\0+\\@�wE� �S�\nc+\\@.s�,& �����+\\@f1��� ��/�''+\\@�9d� �L��+\\@��9� �~��7+\\@''�o|�	 �ӟ�H+\\@''�UH�	 �l>�\r+\\@x�=\\r ��}ƅ+\\@�u\Zi� �''�;+\\@�e�-\r �:;%+\\@�����\r �~��7+\\@�� ��E�\r2+\\@t�3� �lxz�,+\\@��"�� �̴�+++\\@���h\0 ��1w-!+\\@:��KT �,Ԛ�+\\@UMu ��|~+\\@�׻ �HP�+\\@9EGr� ��|~+\\@9��m4 ���\Z�+\\@UގpZ �wg�+\\@�4�O ��f�+\\@�ek}� �ޫV&�*\\@�+��y ��<�*\\@82��� ���a��*\\@�E_A� ��j���*\\@�&S ���J�*\\@�6qr� ��z6�*\\@0du�� �*���*\\@t{Ic �\\ A�c*\\@Mg''�� ����Q*\\@����� ��Ȱ�7*\\@�G��| ��R?o**\\@H0�[ �j�t�*\\@֭��� �Gɫs*\\@FB[Υ ��O�c*\\@\r�x#� ��g�*\\@�e�I �����*\\@}��� ����*\\@(I�L� ��S:X�)\\@(I�L� ���j+�)\\@D� � �Gr��)\\@(�$� ���.4�)\\@a��p ��NG�)\\@\r�{,} �od��)\\@�e1�� �sK�!q)\\@���N ��=~o)\\@(�$� ����Hh)\\@��.4� ���)t^)\\@`��� ��_��M)\\@�\Z�X\Z ��z�G)\\@Y�� �al!�A)\\@(�XQ� �A��h:)\\@al!�A ��ĬC)\\@�+e� �\Z�A�L)\\@�� �r ��e�I)\\@��kC� ��`<)\\@�}\0R� �!�A	3)\\@(~��k �#�G)\\@~R��� �Hm��(\\@�F�? �\r\Z�''�(\\@��� ���{�(\\@M֨ ���~��(\\@d�w� �&p�n(\\@��\\�� �*��s(\\@0��" �fffff(\\@�{�� ���Jvl(\\@4��@� �fffff(\\@Ral!� ���je(\\@ı.n� ��d�`T(\\@����P ���#bJ(\\@�u��� ��g?RD(\\@�St$� �U���B(\\@�ypw� ���?(\\@Ͻ�K �U���N(\\@>�>tA\r �jj�Z_(\\@�{� ��\0�6q(\\@�h:; ��+��y(\\@�f��j �4��@�(\\@����\n ��C4��(\\@�"��~\n �\\w�T�(\\@''�UH�	 ��G�z(\\@(�$�	 �Q�Hm(\\@���	 �x�W�f(\\@0��{ ��}8g(\\@+��<� ��}8g(\\@H�I�O �_A��h(\\@IK�� �X��j(\\@-[닄 �<k�]h(\\@��ʡE �F���j(\\@�*5{� �*��s(\\@��\Z�D �&p�n(\\@��\0�� �x�W�f(\\@��g?R �Ƣ��d(\\@�J� ��ǵ�b(\\@�A�L� ���`(\\@l��[ �cE\r�a(\\@��� �Ƣ��d(\\@P�s� �J�O�c(\\@�a��� ��@��_(\\@nnLOX ���V`(\\@>"�D �u���a(\\@�*��< �*\0�3h(\\@���� ��,g(\\@öE�\r �.9(a(\\@��e�� �.�R\\U(\\@�%����� �r(\\@̗`���z�Fw(\\@.�R\\U��CB�(\\@��?����?��(\\@'),
(3, 'Klojen', 3, 6, 1, 20, '\0\0\0\0\0\0\0\0\0\0�\0\0\0+��p���"�D�(\\@���"���IF��(\\@c�tv2���W�(\\@c�=y��Ƨ\0�(\\@c�=y����0�(\\@�.���bg\n��(\\@)�^�����a�(\\@bۢ���>�\r�(\\@vöE��w;S�(\\@}��b��iƢ��(\\@(I�L�����4F�(\\@������)?���(\\@�\Z�X���''�$�(\\@�dp����[_$��(\\@&jj���-C��(\\@������L���(\\@	������D��(\\@�s)�*���b���(\\@�Zd���=���(\\@ �����>�\r�(\\@�46��iƢ��(\\@�ԕ����I�2��(\\@s����w�T��(\\@>?���&jj�(\\@uv28J��4K��(\\@9�����8���(\\@2 {�����x@�(\\@�J����T���(\\@AJ���+��(\\@z�]�z���3K�(\\@xE�����A�(\\@YLl>����Ր��(\\@ܝ����b->�(\\@9�ߡ(��B[Υ�(\\@a7l[����ݓ��(\\@\r�-����.9(a(\\@��S:���|?5^(\\@��Z�����|?5^(\\@I.�!����y�):(\\@�M����N^�(\\@y�t�����h:;(\\@�Pk�w��g��(\\@#gaO;��+��	(\\@���Z���D�R�(\\@�u����K�h(\\@�R\\U����O�c(\\@�������J�(\\@<Nё\\���y�(\\@��"����''�;(\\@���4��F%u(\\@�\n�r�������''\\@�q�t�������''\\@�''I�L��Y�n�''\\@x$(���gy�''\\@<f�2�������''\\@s�������S�''\\@<f�2���+��p�''\\@u��p�������''\\@Y�����Y��9�''\\@�j+����=,Ԛ�''\\@����h���hW!�''\\@w��\Z/��ҩ+��''\\@w;S����n��''\\@[닄���kH�c�''\\@��9z��.�;1�''\\@�+��E���d�,�''\\@���0����&N�''\\@�߄B��R~R�''\\@�	���������''\\@��&����''�o|�''\\@σ��v��u���''\\@^�o%���_�5�''\\@B�L��������''\\@�dp����Gr��''\\@C�O�}��5��''\\@��E_A��}�͍�''\\@���m���ZB>�''\\@ҌE����>:u�''\\@���מ��g''���''\\@��	m����#��''\\@�ĬC��9{��''\\@��{������@��''\\@�+e���vq\r�''\\@�T�����&���''\\@��鲘����b�''\\@cE\r�a��2��Y�''\\@�!7�\r���F ^�''\\@�$����ٱ��''\\@��)Wx��]�wb�''\\@z6�>���\0���''\\@��,`��KY�8�''\\@�F���d�C�''\\@.�R\\U��d�C�''\\@�t�����Z��''\\@�=yX����p=\n�''\\@�-�R\\�����<�''\\@���h��G8-x�''\\@� %���%��''\\@�`7l[���J�R�''\\@�x\r���=~o�''\\@N��������b�''\\@��P���}����''\\@�����������''\\@���ׁ���G�`�''\\@�Fw;���B�i�''\\@m��J�����6��''\\@ʉv��ٱ��''\\@�X����A�f�''\\@�m����|��''\\@�^)����Ù_�''\\@��#��r3܀�''\\@�4�O��g\n���''\\@Zd;��������''\\@��{������''\\@;M�\r��.�Ue�''\\@���1�����ͪ�''\\@W�c#������''\\@��)�D���X�''\\@�$#ga���rK�''\\@s��A��bg\n�''\\@�a��4��a\Z���''\\@�''�>���8EGr''\\@P6�\n��a��+e''\\@�N]�,��!�lV''\\@s��A��z�rK''\\@wg���e�`TR''\\@������(''�UH''\\@�\0�	����\0�6''\\@~5���<�.''\\@��o_���@H0''\\@3��V��wۅ�:''\\@P�>���lxz�,''\\@Q�i>����0''\\@�|~��p��e1''\\@��@�����a��4''\\@X��G��L���<''\\@xz�,C���=�$@''\\@^�o%������6''\\@��9#J��,H3M''\\@A�}\0R��o���T''\\@]3�f����-�R\\''\\@�M�»�����{''\\@ˡE�����f��''\\@���0����:�''\\@�4�Ry��+MJA�''\\@�dp������y�''\\@��e1����6qr�''\\@c�=y��v\Zi��''\\@���%���o����''\\@ףp=\n��+j0\r�''\\@ٱ��������''\\@0�''����խ�''\\@��#����lC�8''\\@4��k����A�f''\\@R,��\Z��a��p''\\@��+���E/�Xn''\\@:]�����)Wx''\\@<�.9��s.�Ue''\\@�^���/�>:u''\\@�t����Hm��~''\\@u�V���2d�''\\@h����]3�f�''\\@�s�^��y�ѩ''\\@�Cn������|�''\\@d�������K��''\\@\Z���)���-���''\\@��:���Y���''\\@V-�����v�''\\@4����\0�3h�''\\@�1ZGU�������''\\@l�`q8����"�''\\@� ������#��''\\@M֨�h��`YiR\n(\\@��Q,����/L�\n(\\@�����뭁�(\\@£�#���\r��0(\\@�Y�����F�?(\\@,�)��|��S(\\@e�u��6<�R(\\@�^�2����\r�e(\\@�U��������9](\\@�b�=��\npU(\\@}гY���8gDio(\\@&jj������P�(\\@@�z������%ǝ(\\@��������0���(\\@+��p���"�D�(\\@'),
(4, 'Lowokwaru', 3, 6, 1, 20, '\0\0\0\0\0\0\0\0\0\0E\0\0�r߉��X�2ı(\\@���<����]���(\\@{���������(\\@ҩ+�����\0�6q(\\@<�.��Ϊ��V(\\@�.���F��_(\\@G8-x�����:�f(\\@�ڊ�e���ϛ�T(\\@������?RD�U(\\@�2������E_A(\\@g������W�2(\\@�X�����G�z(\\@�p�q���Gɫs(\\@�� �X��#��(\\@3��y��`<���''\\@�nض(��n���''\\@�\nҌE���6T��''\\@��I����_�5�''\\@n��S��GUD�''\\@\Z�����=~o�''\\@p_�����T�''\\@q=\nף��]��ʾ''\\@\0����VH�I�''\\@M�\rO��=�U��''\\@tA}˜��!�X4�''\\@�l�IF��O�z1�''\\@�ME*���B��''\\@[��	���Y�w''\\@�Жs)��6�$#g''\\@�6�X���DL�$z''\\@��p����&p''\\@�/�\n��%z�r''\\@�^F����֋��h''\\@�f����/�$�''\\@���T����*5{�''\\@/�������>W[�''\\@,}��������''\\@�Pk���2����''\\@�XQ�i��9��v�''\\@��v���h��?�''\\@B>�٬���NG�''\\@AJ�i�����''\\@|~!���ht�''\\@ {������\0Ϡ''\\@�&1����H�}''\\@�q����e�F ^''\\@���EB��3��V''\\@A��h:�����N''\\@��s����kC�8''\\@(�r�w��eS��.''\\@E*�-���	�''\\@Է����Ԃ}''\\@�T����Wx���&\\@���"���I)��&\\@�����)\\���&\\@���K��P6�\n�&\\@�T����Hm��&\\@���g���L���&\\@J+�����q�&\\@�-�R\\��>�\r�&\\@�_�L��bJ$��&\\@L�\nF%��ɫs�&\\@����=��t����&\\@mscz���W>���&\\@77�'',���D��&\\@p_���~!<�&\\@�J�4����-�&\\@�HV���m4��&\\@�u������*���&\\@�b������}\0R�&\\@��Tގ��xE�&\\@"��������~�&\\@w�T����m��J�&\\@��KTo��|�w&\\@�aۢ������m&\\@?�''I�������_&\\@�z1���J{�/L&\\@x$(~���2ı.&\\@}iƢ��\0R�8�%\\@�G�Ȱ����1�%\\@C�+�����"�%\\@��k����F=D�%\\@}˜.����Pk�%\\@''�W������%\\@��yS���$��\\�%\\@C�8��$���~%\\@�Ry;����^��x%\\@a��������q%\\@)�''�$�����Hh%\\@��NG���e��a%\\@)������%@M-[%\\@�u7Ou���6�X%\\@G���������W%\\@-�����S?o*R%\\@�1=a�����E%\\@���Y���S��:%\\@�[w�T��	8�*5%\\@�v�k���w��\Z/%\\@�g?RD���}"%\\@������m%\\@h������z1�%\\@���4)��[|\n��$\\@�1�%��B��	�$\\@���a��/�\n�$\\@�Ŋ\ZL��f1���$\\@}i���?��$\\@��	h����:��$\\@���	��q>?�$\\@od����m��~�$\\@S?o*R��?�m$\\@s�]����Gɫs$\\@�kC�8���\nF%u$\\@�VC���?�Ŋ$\\@X��0_��\\w�T�$\\@�y����@�ȓ$\\@��.��m9��$\\@u�����CԷ$\\@�L�ֽ�"�*��$\\@��Q���e�I)�$\\@��H.��[��K�$\\@���j��l!�A	%\\@��"����S�\nc%\\@WC�K����<�!%\\@r�)�����)"%\\@����/i��Q%\\@U�t<f���y�t%\\@;�f����~j�t%\\@;�f���Mg''�%\\@m�������%\\@m���r�CQ�%\\@������%�%\\@�IF�¾�9�⪲%\\@�Բ���Ve��%\\@;6���f��%\\@�VC��]�].�%\\@tF�����?x�%\\@�S:X��˾+��%\\@9��v�����&\\@\0:̗��9�ߡ(&\\@s.�Ue����y�)&\\@�x]���\\�].&\\@ǝ��������<&\\@�6qr��Ͻ�K&\\@�J;����6T&\\@Y�O0���i�WV&\\@YiR\n���#�-�R&\\@����1��PN&\\@�H�}��uv28J&\\@>�>tA��:��K&\\@���QI��jM�S&\\@�rh���<1��P&\\@*��g��1��PN&\\@@j''���uv28J&\\@A��ǘ���g?RD&\\@���������I&\\@��u����B&\\@`YiR\n��\\Ɏ�@&\\@}�����j''�;&\\@������o%;&\\@F�6����T�t<&\\@��0B��j''�;&\\@*��s���P��C&\\@FB[Υ�����Q&\\@�~�n�����V&\\@�&���''�W&\\@�2�営�x�=\\&\\@.�!������V`&\\@LTo\rl���G�`&\\@0�''���G�`&\\@M�\rO���j��&k&\\@������X�5�;&\\@\Zn�燱��x�&1&\\@��Dذ��Жs)&\\@��\Z���r�&"&\\@�eS����_vO&\\@6�\n�r��\n��\Z&\\@6�\n�r����j+�%\\@��G���u��p&\\@u��������9&\\@vOj��u��p&\\@w�T�ܬ�y�@e�%\\@"\Z�A��=I�f�%\\@?����=,Ԛ�%\\@�v���V����%\\@A+0du��Y�n�%\\@	����������%\\@Ͻ���ke�/�%\\@_�L������%\\@\\ A�c��n���%\\@\\Z\r�{����3K&\\@�e�-����y�&\\@X�5�;��U0*�&\\@uYLl>��9�ߡ(&\\@X�f,���q\r�-&\\@W`��V����#0&\\@\0�~�:���Xni5&\\@T\0�gа�<�.9&\\@�8\n����=�>&\\@�x�Z�����B&\\@U0*���g�C&\\@���ү�\n�<I&\\@���ү�\npU&\\@\0�~�:��?o*Ra&\\@Tƿϸ���,g&\\@��yS�����e&\\@RD�U�����`&\\@�T[��Q�|a&\\@�}"O���<I�f&\\@x�=\\��\nK<�l&\\@��:����U��y&\\@r�鷯��y�&\\@r�@H���}\0R�&\\@9\n�����&\\@8gDio����Q,�&\\@q=\nף��&ǝ��&\\@��G�Ȱ���G��&\\@L����P�s�&\\@���4c���9z��&\\@ĔH�����,C�&\\@5����M���&\\@�0Bx���pUj�&\\@����۱�>�٬�&\\@5{������''\\@�Z|\n����Z��''\\@Tt$����	���''\\@�Ǻ���%��e''\\@�l�IF��@j''''\\@�Жs)��	8�*5''\\@��e˭��Fw;''\\@<�R�!���>�''I''\\@tA}˜���R�Z''\\@��y�C��3��bb''\\@9(a�������x''\\@ �o_��h?RD�''\\@\\ A�c���߾�''\\@#����R''���''\\@#J{�/��d�w�''\\@�>tA}���\r2��''\\@&��������''\\@_�L�����@��''\\@(�XQ�����k�''\\@�r�w���$����''\\@g~5��s��''\\@�Y�w���S:X�''\\@�1=a������(\\@������G ^�/(\\@i:;��8�L(\\@��ɥ��� �X(\\@-x�W���J�i�W(\\@�P���ꕲq(\\@~��7��To\rl�(\\@Uj�@����a��(\\@������i��Q�(\\@+j0���8���(\\@CV�z���`��(\\@B��=��鷯�(\\@S"�^F��7�A`�(\\@oG8-x���T���(\\@n�����b���(\\@��ԕϲ��J�(\\@��"���\r7���(\\@ܝ��.���Ր��(\\@i5$���Q�(\\@�x@ٴ�7l[��(\\@��1ZG��4h��(\\@hyܝ�����:�(\\@��M���?���(\\@䠄������=�(\\@�F����"�-�(\\@�wg���U���(\\@,��\Z������(\\@z6�>����7�(\\@cE\r�a����ԕ�(\\@��ʸ�bg\n��(\\@bod���U���(\\@��N]���,C�(\\@��\0���#0�(\\@����������(\\@^����,}��(\\@D�!T���Tt$��(\\@}���ݹ�i\0o�)\\@�l�/���Y��)\\@B`��"���Ue�)\\@]m������{�)\\@@�߾���}")\\@�e�c]���}")\\@[%Xμ��}")\\@46<����4)\\@����h���0�*)\\@B����"�uq)\\@���"��e�X)\\@X��G��''�;)\\@�L��~���\n�r)\\@�x]���=�\n)\\@�	�������)\\@U�wE�����4)\\@\0�d�F��B&9)\\@��QI�����Y�)\\@ŏ1w-���&S)\\@�����e���(\\@�rK�����"��(\\@!<�8�������(\\@��Ĭ�����x�(\\@ۢ����~!<�(\\@ٔ+�����<,�(\\@JA��4��t���(\\@����?����G��(\\@��#�����?��(\\@�e�I)��)�^�(\\@�&N�w������(\\@F�\r2������(\\@(\n�<��u��(\\@�=\\r���_F���(\\@�I�2���b���(\\@\npU��u��(\\@>�x���3K�(\\@�<���Mۿ��(\\@�}"��F����(\\@��ԕ���]h��(\\@rm����	m9��(\\@�I)�����D��(\\@��[����}�k�(\\@J�5�o��{���(\\@d#�������	�(\\@�r߉��X�2ı(\\@'),
(5, 'Sukun', 3, 6, 1, 20, '\0\0\0\0\0\0\0\0\0\0?\0\0���� ���eN�''\\@�\Z/�$ �}���''\\@ض(�A ��x@ٔ''\\@�\\�wb �a7l[�''\\@�`<� �a7l[�''\\@�V`�� �Ae���''\\@,Ԛ� ��r߉''\\@�x]�` �a\Z���''\\@�n� ��:M�''\\@d�C� �S�Z�''\\@��j+� ���P��''\\@���P �B��''\\@��q�@ �a\Z���''\\@�)W ��6�X�''\\@M֨� �Z��ڊ''\\@\r�-�� �H�Ȱ�''\\@�K��� �Ͻ�''\\@E\r�a� ���P��''\\@~t��g	 ��FZ*o''\\@DԷ�	 ��e��a''\\@��\0�	 ��[[''\\@`���	 ���9#J''\\@F%u\n ��ĬC''\\@`�5�!\n �,+MJA''\\@C�O�}\n ��g��?''\\@B>�٬\n �Uj�@''\\@	m9��\n ��Y��B''\\@�"��\n �%��C''\\@�)"�\n �����B''\\@&��:�\n �P0�A''\\@{���\n ��^�D''\\@{�G�\n �z�rK''\\@�⪲�\n ��Q�Q''\\@����\n �o���T''\\@Ϡ�� �e�u''\\@y�&1 �:]�''\\@9(a�\r �V�`\Z�''\\@YiR\n�\r ��|�͍''\\@=a��\r �]��''\\@��N ���K��''\\@���Y �YiR\n�''\\@�T��� ��t���''\\@��?�� �g��''\\@� �2���''\\@�^��x �Υ���''\\@�St$� ���.�''\\@��@�� ��w(\n�''\\@9��v� �''�UH�''\\@�je� �gaO;�''\\@�c*� �`<���''\\@�&�� ��%��(\\@U���N �>?�(\\@q�q�t ����(\\@T��� �u�(\\@�(�\r� ���� (\\@�b��� ����,(\\@7�A`� ����3.(\\@Tt$�� ��y�):(\\@L�� ��K7�A(\\@S���" ���y�C(\\@�u��� �xz�,C(\\@��# ��\ncA(\\@��=�$ ���0B(\\@���� ���ʡE(\\@�mnL ���M(D(\\@���=� �|���G(\\@u�< �g,��N(\\@vöE�\r ��d�`T(\\@YLl>�\r ��e�c](\\@�H.�!\r ��3��k(\\@�0|D �j���v(\\@��� ���|~(\\@�#�G ���E�(\\@%��e �j����(\\@�dp��\n ���n�(\\@_^�}t\n �\n�8�(\\@ҌE�	 ��Y/�r(\\@����(	 ���:�f(\\@�e�I) ����e(\\@IK�� �M֨�h(\\@���[ ����e(\\@�b(''� ��	h"l(\\@�[[ ���Jvl(\\@?�ܵ �	�c(\\@�m�2 ��G�`(\\@3ı.n �q��](\\@�`< ���bg(\\@�f� �	�c(\\@4.� ���d�`(\\@[rP �<Nё\\(\\@�d�`T �u���a(\\@�Ȱ�7 �Ƣ��d(\\@��B �#��^(\\@�g\\8 ��i�WV(\\@�o��e ��e�c](\\@r�&"\0 ���Jvl(\\@K�����4c�t(\\@�`����ݓ��(\\@DL�$z������(\\@aO;�5����}(\\@F�6���cE\r�a(\\@�\Z�''��#��^(\\@�»\\���#��^(\\@�V`����ܺ��:(\\@A��_����L2r(\\@���s�����(\\@�x�@e�����P(\\@\\���(��`YiR\n(\\@ͯ�\0���y�&1(\\@=\nףp�����(\\@ {�����됛�(\\@��N��K�h(\\@uv28J��Ǻ��(\\@������\\8�(\\@��"����@���(\\@3P���.�Ue�''\\@�����B�i�''\\@�O�}:������''\\@<�l���\0�M��''\\@u�����Zd;�''\\@=,Ԛ������''\\@u�����`���''\\@��.����ʄ_�''\\@��H�������''\\@!������rm��''\\@!�lV��ҩ+��''\\@��\0������''\\@�8������ZB>�''\\@��*��������''\\@*��g��d#��''\\@�Sr3��Υ���''\\@��gy������''\\@�����K�R��''\\@�1 {���R~R�''\\@Ͻ�K���]�C��''\\@�Zd�����V�''\\@�9]����g��''\\@{�G����_�5�''\\@&��:���}�͍�''\\@|�Pk��kH�c�''\\@��/������''\\@''�;��$���''\\@D���������''\\@$(~����hW!�''\\@��x�Z�����S�''\\@)�\r�0��nLOX�''\\@)�^�����\0�''\\@\rTƿ�������''\\@��J����gy�''\\@��JY�����6��''\\@�mnLO��g\n���''\\@J�i��������''\\@+MJA������''\\@�ڊ�e���L��''\\@I��Q,���A�f�''\\@��������Z��''\\@�G��|���*��''\\@g�C���*��''\\@���������.4�''\\@f�����ٱ��''\\@�UH�I�����''\\@0�''��}y��''\\@�Hh˹��O]�,�''\\@���I��\0�g��''\\@��g����R~R��''\\@��7�����6��''\\@������׻?�''\\@�A�L���.�Ue�''\\@�=~o��Έ���''\\@�nض(�������''\\@�'',���9{�''\\@R�������''\\@R\n�����''����''\\@�8\n����P1�''\\@Tƿϸ���n��''\\@�-�l���t���''\\@B��=���KqU�''\\@V��������jH�''\\@8gDi���B�i�''\\@t)�*���d*��''\\@��Y�����ߡ(�''\\@�������$EdX�''\\@ɰ�72��O#-��''\\@M�\rO��OGɫ''\\@��s�/��D�;��''\\@�}"���[Z\r�''\\@P6�\n��%z�r''\\@Wx��������e''\\@�v��\Z��W`��V''\\@��s�/���Z��K''\\@��N]�����4�R''\\@��PN���^h��H''\\@)?�����<�!7''\\@�]h����A}˜.''\\@,H3M����0''\\@l�F=D���Zd;''\\@�A`������N#-''\\@��ʾ+��L��1''\\@/�$���ڧ�1''\\@ȵ�b���\Z�uT5''\\@��|?5���!�[=''\\@���0���~��@''\\@�9]���u7''\\@z�(��%#gaO''\\@��[��ŬC9''\\@a��+e�����n/''\\@~R�����D� ''\\@\r�-����	���''\\@��J�����k	�&\\@��Mb��ۊ�e�&\\@+~����^�c@�&\\@�	m9���w���&\\@,}����7�A`�&\\@.�R\\U��\r��W�&\\@�4c�t����s��&\\@�UH�I��t���&\\@0/�>:�����N�&\\@��k�����G��&\\@��U+����D�&\\@��� �����q�&\\@p_���IV�&\\@��ht���Y���&\\@�rK�!���\\���&\\@7qr�C������&\\@�^)���"lxz�&\\@Ɗ\ZL���\n��ϛ&\\@�ܵ�|�����=�&\\@[rP����*���&\\@��-����@�ȓ&\\@�٬�\\���Pk�w&\\@?������mn&\\@x��������V`&\\@��:���W�L&\\@�3��k��\0t�//&\\@�G�Ȱ��wJ�%\\@#��^����e��%\\@�������5���%\\@\\ A�c����9�%\\@͒\05���Y�8��%\\@w-!���r���%\\@Y�8����O@a�%\\@��4����H�%\\@V-���):��%\\@��B����]�wb�%\\@�\ZL����`��"�%\\@������+��p�%\\@R�����R\\U�%\\@��bb����g\\8&\\@o/i�����5Y�&\\@������''N�w(&\\@n��S���3��7&\\@������5�8EG&\\@��U+��#�-�R&\\@������<Nё\\&\\@��M��W�}W&\\@I��Z����c�Z&\\@�>�''I���[�tY&\\@֭�����|��S&\\@<�.��8�L&\\@''�;��\0�d�F&\\@&S�����hUM&\\@�<,�����J�R&\\@%��7���#��S&\\@A��ǘ���[�tY&\\@x�q�Z��m��o&\\@�H�}���&N�w&\\@X��0_��M-[�&\\@s.�Ue��}"O�&\\@9��m4������&\\@6v�����\\���&\\@Ral!����(�&\\@l�F=D��	m9�&\\@���K\Z���-��&\\@��jH���_^�}t&\\@�N@a�����d&\\@��y���X�eS&\\@i��Q���<�R�!&\\@��������L2r&\\@a��+���oB!&\\@�ܘ����r����%\\@�����\0���%\\@��ݓ��� ���%\\@�`<����,σ�%\\@�/�''��x���N&\\@�-s���\\Ɏ�@&\\@Z*oG8��N�»\\&\\@B��=���l�IF&\\@8����DQ�O�%\\@5�l��������%\\@V���n��9��%\\@t)�*���� v��%\\@�lV}����e�%\\@ <���o���%\\@ ^�/�����b��%\\@���������%\\@�\\�C���+0du�%\\@������D�!T�%\\@���P1��]P�2�%\\@��EB[����b��%\\@�~�:p��R\n���%\\@�i�q������"�%\\@tA}˜����u��%\\@��j��������%\\@���e���I�5�%\\@X�eS��d;�O�%\\@��y�C���u��%\\@ʦ\\�]��=''�o|%\\@<1��P����y%\\@!�>\0���3��y%\\@�bb�q����x%\\@+j0��6�\n�r%\\@��N]�����	m%\\@x$(~���R�Z%\\@@��"2�����eN%\\@뭁�����9#J%\\@yu�����\nҌE%\\@�x@ٔ��L���<%\\@?5^�I���|a2%\\@�J�R���z�,C%\\@��6�����]K�%\\@U[r���d%\\@��7������ %\\@T\0�g���+j0\r%\\@����������Q%\\@�`�����4%\\@��Q�����a%\\@�J�4���L��\Z%\\@ŬC9����)"%\\@�m���� �X4%\\@��� �����x@%\\@�W���vöE%\\@4��k���OjM%\\@���^����V&�R%\\@���^����CV%\\@�a�����H0�[%\\@Q��C����I�_%\\@�vR~��,���d%\\@߉Y/���� �rh%\\@�a�����o*Ral%\\@4�i����Ӈ.�o%\\@&S����Y�w%\\@Q��C�����ek}%\\@&S����5�U�%\\@Q�|a��!����%\\@Q�y��� ��%\\@Þv�k���|�͍%\\@Q�O�I��V�F�%\\@5{����)Wx�%\\@R~R����닄��%\\@ĔH����=~oӟ%\\@��yS����K\Z�%\\@���Q���!q��%\\@�*�����&�%\\@T:X����r�)�%\\@�8\n��9�⪲%\\@��x�&��o����%\\@\Z���)���M��%\\@oG8-x�� ���%\\@�Z|\n���DԷ�%\\@ĔH����d�C�%\\@�������F ^�%\\@NbX9���}t��%\\@�\0����� $��%\\@.�R\\U������%\\@�&���h��s�%\\@��j+����Z_$�%\\@c���\Z��oض(�%\\@��0B��!%̴%\\@\r�a�����[=''�%\\@��|~��=�!7�%\\@\r\Z�''����):��%\\@� ���\0�g��%\\@�zNz����k��%\\@��\Z���D4���%\\@��|г��`���%\\@��Hh�������%\\@�\r2�����0��%\\@`�������3K&\\@��Hh������&\\@�G�`������P&\\@���6����H�}&\\@�//�>��RI��&&\\@_�2���#J{�/&\\@B��	������3&\\@%��1 ��X�5�;&\\@Ͻ�K����uT5A&\\@�V�I����GĔH&\\@�.n���:��K&\\@Z�!������Q&\\@''�;��Gw;S&\\@(I�L����i�WV&\\@bod���=yX&\\@,��yp���#Ed&\\@���K���XQ�i&\\@�N#-���-!�l&\\@���%�����s&\\@d]�F���Y/�r&\\@�[[%����(yu&\\@�3��7����0|&\\@�[Z\r���X��j&\\@s����#��^&\\@s.�Ue��J�i�W&\\@�uq\r\0 �qr�CQ&\\@�H���\0 �cAJ&\\@�&"�\0 ���ʡE&\\@R�Q� ��&k�C&\\@R,��\Z �U���B&\\@Q�y �\nףp=&\\@�Ր�� ��J�8&\\@PS��� �U��7&\\@P��n ��.Q�5&\\@�ڧ�1 �n��4&\\@��0 �c�ZB>&\\@���& ��+��E&\\@l�`q8 ��>\0�M&\\@���S ��4�O&\\@3��bb �5S&\\@3ı.n �|a2U&\\@�~j�t �u�V&\\@k`�� �W�}W&\\@�V	� ���y�]&\\@0�[w ���0_^&\\@��k �|�ʄ_&\\@���S ���V`&\\@P0�A ��G�`&\\@P�I�5 ��\\�wb&\\@P�c* �1%��e&\\@�<�!7 �q���h&\\@P0�A �pUj&\\@l�,	P ��3��k&\\@O;�5Y ���Jvl&\\@���_ ���n&\\@�N@a �\\=''�o&\\@�v��N �U[r&\\@P0�A ���u&\\@�t{I ��Pk�w&\\@O���| ��+��y&\\@���y� �m���{&\\@�6qr� ��G��|&\\@k�� �����~&\\@��P� ���E�&\\@�7�� ���n�&\\@܀�# ��-��&\\@NE*�- �\r�a��&\\@�	�8 �����&\\@�N^ ���dp�&\\@1_^�} ���_�&\\@j�q�� ���鲘&\\@ۢ�� �"O���&\\@j�WV� ��}\0R�&\\@�y� ���&\\@���)� ��� v�&\\@��3� �����&\\@M��\Z� ��z6�&\\@io��� ��U���&\\@��[� ��G��&\\@�D�� ��0���&\\@����� ��q�t�&\\@���� �X�2ı&\\@����& �?:u�&\\@��N#- �8�0�&\\@L��1 ��,`�&\\@��K�; �Tƿϸ&\\@h��|? ��Hh˹&\\@�_�L �)�Ǻ&\\@/i��Q ��M�»&\\@�#EdX �"�D�&\\@�-�R\\ ��?�߾&\\@�@+0d �t�//�&\\@ڬ�\\m �mscz�&\\@/�Xni �fN���&\\@LTo\rl �_)��&\\@���Kq ��Ր��&\\@�z��{ �X9��&\\@h?RD� ��\\���&\\@�o|� �t���&\\@g~5 �-&6�&\\@fI��Z �����&\\@�F� ���7��&\\@-σ�� ������&\\@-	PS� �\rq���&\\@���x� �{�G�&\\@��<�! ���k&�&\\@,g~5 ��~�n�&\\@,��yp �{��{�&\\@�3�� ����\Z�&\\@�»\\� ���0�&\\@�A�f� �w�n��&\\@�6T�� �fk}��&\\@�Q� �B��=�&\\@�d ��C9�&\\@cAJ ��	.V�&\\@�XQ�i �u��&\\@\r�-�� �u��&\\@�Բ�� ��ypw�&\\@���� �-&6�&\\@E\r�a� �-&6�&\\@)�[Z\r	 ��鲘�&\\@Ӽ�	 �~!<�&\\@a2U0*	 �B��	�&\\@)�\r�0	 ���7��&\\@~\0R�8	 ���?��&\\@Y��9	 ��U���&\\@E�\n)?	 �t���&\\@��h:;	 �[_$��&\\@al!�A	 �\r��W�&\\@���Q	 �B�f��&\\@a��_Y	 �\r��W�&\\@�jH�c	 ��"�-�&\\@�[�t	 ��"�-�&\\@}˜.�	 ��"�-�&\\@���מ	 �����&\\@(,�	 �w;S�&\\@���	 ��Q��&\\@��b��	 �iƢ�&\\@����	 ���4F�&\\@��y�	 ��C���&\\@`��V�	 �{1��&\\@� v��	 ��HK��&\\@DԷ�	 �-`��&\\@''f��	 �����&\\@(I�L�	 �IV�&\\@a���	 ��(�''�&\\@�J�8�	 ��(�''�&\\@�B�5v	 ����Q�&\\@��N]	 ���I�&\\@(D�!T	 ��sF��&\\@bod	 �{Nz��&\\@b��h� ��@e��&\\@���G� ���{��&\\@*��s �,��N''\\@*��g\\ �;M�\r''\\@�F�? �Л�T''\\@�d ��1w-!''\\@�g� ����#''\\@�6T�� �����(''\\@+���� ��o��1''\\@֐��� �H�}8''\\@�»\\� ��=�$@''\\@�`�� ��~��@''\\@�	ܺ� ���kC''\\@�Y�w ���E''\\@���W �(''�UH''\\@ףp=\n �\Z�A�L''\\@�ꐛ� �7�X�O''\\@X9�� ���.Q''\\@-�i�� �e�`TR''\\@��5� �o���T''\\@J+� ��HV''\\@f�2�} �z6�>W''\\@�\r�e �\Z�''�X''\\@g�C ��[[''\\@�7�0 ��ʦ\\''\\@�i>" ��x]''\\@��� ��I�_''\\@�t� �(a��_''\\@�ؙB� ���b''\\@�2�}� �\Z�d''\\@��ʡ ��_{f''\\@LqU�w �Z�wg''\\@���e �8gDi''\\@�|a2 ��<�;k''\\@D�  �o*Ral''\\@��Q� �V���n''\\@�u�� �֨�ht''\\@�u�� �����x''\\@i:; ����{''\\@��x�@ �Z��''\\@/�r�] �r3܀''\\@�5�U� �Mg''�''\\@���� �� ��''\\@�vö ��|�͍''\\@�2�}� �!�rh�''\\@��� ���1�''\\@���� ���eN�''\\@');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_striker`
--

CREATE TABLE `tbl_striker` (
  `id_striker` int(11) NOT NULL,
  `id_agen` int(11) NOT NULL,
  `nama_striker` varchar(25) NOT NULL,
  `tmpt_jualan` varchar(75) DEFAULT NULL,
  `alamat_striker` varchar(50) DEFAULT NULL,
  `jatah` int(3) DEFAULT NULL,
  `lokasi` point DEFAULT NULL,
  `foto` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_striker`
--

INSERT INTO `tbl_striker` (`id_striker`, `id_agen`, `nama_striker`, `tmpt_jualan`, `alamat_striker`, `jatah`, `lokasi`, `foto`) VALUES
(1, 1, 'FITRISNA MULYOHADI tes', NULL, 'JL BARENG TENGAH V-A/795 RT 010 BARENG', 43, '\0\0\0\0\0\0\0oJx�R��\0\0���''\\@', NULL),
(2, 1, 'HENDRATA ARI WIJAYA ', NULL, 'JL KOL SUGIONO VIII/6A ', 0, NULL, NULL),
(3, 1, 'LATIEF', NULL, 'JL MAWAR 198 LOWOKWARU', 18, NULL, NULL),
(4, 1, 'M AMIN', NULL, '', 37, NULL, NULL),
(5, 1, 'MUHAMMAD KUSAIRI', NULL, 'JL GELATIK DALAM 8 SUKUN', 61, NULL, NULL),
(6, 1, 'RACHMAD KURNIAWAN IHSAN', NULL, 'JLAN TALUN PASAR 8 KAUMAN KLOJEN', 20, NULL, NULL),
(7, 1, 'FITRISNA MULYOHADI', NULL, 'JL BARENG TENGAH V-A/795 RT 010 BARENG', 43, NULL, NULL),
(8, 1, 'HENDRATA ARI WIJAYA ', NULL, 'JL KOL SUGIONO VIII/6A ', 0, NULL, NULL),
(9, 1, 'LATIEF', NULL, 'JL MAWAR 198 LOWOKWARU', 18, NULL, NULL),
(10, 1, 'M AMIN', NULL, '', 37, NULL, NULL),
(11, 1, 'MUHAMMAD KUSAIRI', NULL, 'JL GELATIK DALAM 8 SUKUN', 61, NULL, NULL),
(12, 1, 'RACHMAD KURNIAWAN IHSAN', NULL, 'JLAN TALUN PASAR 8 KAUMAN KLOJEN', 20, NULL, NULL),
(13, 1, 'FITRISNA MULYOHADI', NULL, 'JL BARENG TENGAH V-A/795 RT 010 BARENG', 43, NULL, NULL),
(14, 1, 'HENDRATA ARI WIJAYA ', NULL, 'JL KOL SUGIONO VIII/6A ', 0, NULL, NULL),
(15, 1, 'LATIEF', NULL, 'JL MAWAR 198 LOWOKWARU', 18, NULL, NULL),
(16, 1, 'M AMIN', NULL, '', 37, NULL, NULL),
(17, 1, 'MUHAMMAD KUSAIRI', NULL, 'JL GELATIK DALAM 8 SUKUN', 61, NULL, NULL),
(18, 1, 'RACHMAD KURNIAWAN IHSAN', NULL, 'JLAN TALUN PASAR 8 KAUMAN KLOJEN', 20, NULL, NULL),
(19, 1, 'FITRISNA MULYOHADI', NULL, 'JL BARENG TENGAH V-A/795 RT 010 BARENG', 43, NULL, NULL),
(20, 1, 'HENDRATA ARI WIJAYA ', NULL, 'JL KOL SUGIONO VIII/6A ', 0, NULL, NULL),
(21, 1, 'LATIEF', NULL, 'JL MAWAR 198 LOWOKWARU', 18, NULL, NULL),
(22, 1, 'M AMIN', NULL, '', 37, NULL, NULL),
(23, 1, 'MUHAMMAD KUSAIRI', NULL, 'JL GELATIK DALAM 8 SUKUN', 61, NULL, NULL),
(24, 1, 'RACHMAD KURNIAWAN IHSAN', NULL, 'JLAN TALUN PASAR 8 KAUMAN KLOJEN', 20, NULL, NULL),
(25, 1, 'RIFA I', NULL, 'JL MERGAN RAYA V/67 TANJUNGREJO', 30, NULL, NULL),
(26, 1, 'ROMLI', NULL, 'PERUM GRIYA PERMATA ALAM BLOK 1E-08 NGIJO', 33, NULL, NULL),
(27, 1, 'RONI ADIANTO', NULL, 'JL NGAGLIK IV B/579 SUKUN ', 29, NULL, NULL),
(28, 1, 'SETIAWAN ', NULL, 'DSN TENGAH SUMBER REJO', 30, NULL, NULL),
(29, 1, 'SUNARTO', NULL, 'JL NGAGLIK IV B/579 SUKUN ', 97, NULL, NULL),
(30, 2, 'ENDY CANDRA', NULL, 'JL SYARIF AL QODRI 2B/13', 5, NULL, NULL),
(31, 2, 'A DJATMIKO', NULL, 'JL MERGAN RAYA VI/60 TANJUNG REJO SUKUN', 13, NULL, NULL),
(32, 2, 'ALI MUHTAR', NULL, 'BOTOPUTIH SUMBER PASIR OAKIS', 10, NULL, NULL),
(33, 2, 'BAMBANG ', NULL, 'KARSONOSUTOJAYAN PAKISAJI', 45, NULL, NULL),
(34, 2, 'BUDI KURNIAWAN', NULL, 'JL KRESNO 21 POLEHAN BLIMBING', 39, NULL, NULL),
(35, 2, 'DARSONO', NULL, 'JL KOL SUGIONO IX B MERGOSONO KEDINGKANDANG', 36, NULL, NULL),
(36, 2, 'DJARI', NULL, 'JL SUPRIADI IX ASUKUN', 33, NULL, NULL),
(37, 2, 'EKO SANTOSO', NULL, ' JL PISANG AGUNG 36 A PISANGCANDI SUKUN', 50, NULL, NULL),
(38, 2, 'FERI NOVIANTO', NULL, 'JL BATOK 1 ORO ORO DOWO KLOJEN', 6, NULL, NULL),
(39, 2, 'HADI WIBOWO', NULL, 'JL IR RAIS II/66 BARENG KLOJEN', 48, NULL, NULL),
(40, 2, 'HERDIAN CATUR ARIYUANTO', NULL, 'JL J.A SUPRAPTO 1/29 SAMAAN KLOJEN', 28, NULL, NULL),
(41, 2, 'JUMA ARI', NULL, 'PERUMNAS OAKISJAJAR PAKIS', 19, NULL, NULL),
(42, 2, 'KUSIYADI', NULL, 'JL S SUPRIYADI 2B SUKUN', 43, NULL, NULL),
(43, 2, 'MERI BASUKI', NULL, 'JL BAYAM DALAM 71 BUMIAYU KEDUNGKANDANG', 11, NULL, NULL),
(44, 2, 'MOCH SAFI I', NULL, 'JL NGAGLIK IVB/39 SUKUN', 10, NULL, NULL),
(45, 2, 'MOCHAMMAD SHOLEH', NULL, 'JL KASIH JAYA II/49 TANJUNGREJO SUKUN', 4, NULL, NULL),
(46, 2, 'MOHAMMAD DASUKIE', NULL, 'JL IR RAIS 2 BARENG KLOJEN', 16, NULL, NULL),
(47, 2, 'PURWOKO WIJATI', NULL, 'JL TERNATE GG BUNTU 23 KASIN KLOJEN', 19, NULL, NULL),
(48, 2, 'RACHMAT EKO PUJIONO', NULL, 'JL KLAYATAN GG 3/44 BANDUNG REJO SARI SUKUN', 5, NULL, NULL),
(49, 2, 'SAMSUL ARIFIN', NULL, 'DSN KOLPOH LENTENG PROPPO PAMEKASAN', 0, NULL, NULL),
(50, 2, 'SANARI', NULL, 'JL BROMO/44 ORO ORO DOWO KLOJEN', 30, NULL, NULL),
(51, 2, 'SAYADI', NULL, 'JL MT HARYONO XVI DINOYO LOWOKWARU', 24, NULL, NULL),
(52, 2, 'SETIAWAN', NULL, 'PONDOK CEMPAKA INDAH BLOK E-27 BANDULAN SUKUN', 13, NULL, NULL),
(53, 2, 'SLAMET HARIADI', NULL, 'JL GALUNGGUNG III 10 A GADINGKASRI KLOJEN', 57, NULL, NULL),
(54, 2, 'SUDIONO', NULL, 'JL IR RAIS GG 7/6A TANJUNG REJO SUKUN', 45, NULL, NULL),
(55, 2, 'SUPARMI', NULL, 'JL TAPAK SIRING III/33-C SAMAAN KLOJEN', 9, NULL, NULL),
(56, 2, 'SUSANTO', NULL, 'JL KLAMPOK KASRI II/260 GADINGKASRI KLOJEN', 41, NULL, NULL),
(57, 2, 'SUWARNO', NULL, 'JL JOMBANG 1A/54', 20, NULL, NULL),
(58, 2, 'WANDI KUSWANDI', NULL, 'JL KAPI WORO JABON MANGLIAWAN PAKIS', 40, NULL, NULL),
(59, 3, 'ABDOLLAH', NULL, 'JL LAKS MARTADINATA IIB/739 MANGLIAWAN', 0, NULL, NULL),
(60, 3, 'ABDUL KADIR', NULL, 'JL ARUMBA N0 9 TUNGGULWULUNG LOWOKWARU', 0, NULL, NULL),
(61, 3, 'AGUS PUJIONO ', NULL, 'JL JODIPAN WETAN I C /29 JODIPAN', 0, NULL, NULL),
(62, 3, 'AGUS SETIAWAN', NULL, 'JL RAYA TEBO UTARA RT 2 RW 1', 0, NULL, NULL),
(63, 3, 'Agus Sudjianto', NULL, 'JL.Gatot Subroto 5/06 Malang', 0, NULL, NULL),
(64, 3, 'AGUS WAHYUDI', NULL, 'JL KOL SUGIONO VD/84', 0, NULL, NULL),
(65, 3, 'AGUSTIN HARTININGSIH', NULL, 'PURWOHARJO RT 03 RW 01 AMPELGADING', 0, NULL, NULL),
(66, 3, 'ANANG RUSDIANTORO', NULL, 'JL LAKS MARTADINATA KOTA LAMA KEDUNGKANDANG', 25, NULL, NULL),
(67, 3, 'ARI', NULL, 'PERUM ASRIKATON BLOK F 18 PAKIS', 15, NULL, NULL),
(68, 3, 'ARIP', NULL, 'JL CUCAK RAWUN 2 NO 28', 20, NULL, NULL),
(69, 3, 'ASRI LASMIATI', NULL, 'JL MUHARTO II/39 JODIPAN', 0, NULL, NULL),
(70, 3, 'Berlian', NULL, 'Sultan Agung', 0, NULL, NULL),
(71, 3, 'Choirul Handoko', NULL, 'JL.Suropati 15 / 22 RT.2 RW.1', 0, NULL, NULL),
(72, 3, 'DAIMUL IKSAN', NULL, 'JL MADYOPURO IV KEDUNGKANDANG', 25, NULL, NULL),
(73, 3, 'DUL ROHMAN', NULL, 'DAMI AMPELDENTO PAKIS', 13, NULL, NULL),
(74, 3, 'DWI MOHAMAD SUKRI', NULL, 'JL KUMIS KUCING JATIMULYO LOWOKWARU', 0, NULL, NULL),
(75, 3, 'FARID', NULL, 'JL LA SUPRAPTO 1-G SAMAAN KLOJEN', 0, NULL, NULL),
(76, 3, 'FITRA ANUGRAH AKBAR', NULL, 'JL KENONGO SEKARPURO PAKIS ', 16, NULL, NULL),
(77, 3, 'GLEWO', NULL, 'KUTOBEDA', 12, NULL, NULL),
(78, 3, 'HARIYANTO', NULL, 'JL TEBO TENGAH NO 24 MULYOREJO', 0, NULL, NULL),
(79, 3, 'HARTONO', NULL, 'JL RAYA MANGLIAWAN PAKIS', 15, NULL, NULL),
(80, 3, 'HASYIM', NULL, 'JL KI AGENG GRIBIG II/15 MADYOPURO', 20, NULL, NULL),
(81, 3, 'HENDRA PRASETYO', NULL, 'JL IKAN PIRANHA ATAS TUNJUNG SEKAR LOWOKWARU', 0, NULL, NULL),
(82, 3, 'Husnan', NULL, 'JL.Muharto V B', 0, NULL, NULL),
(83, 3, 'KHOIRUL MU MININ', NULL, 'JL LESANPURO 1/22 KEDUNGKANDANG', 15, NULL, NULL),
(84, 3, 'M SOHIB', NULL, 'JL MUHARTO 7A /96', 0, NULL, NULL),
(85, 3, 'M YOSEP', NULL, 'JL BATOK DALAM 158 A', 0, NULL, NULL),
(86, 3, 'NGARIADI', NULL, 'JL TERUSAN SURABAYA 81 A SUMBERSARI', 0, NULL, NULL),
(87, 3, 'Nono', NULL, 'Jadipan Wetan I', 0, NULL, NULL),
(88, 3, 'NUR SALIM', NULL, 'JL RAYA CANDI 6/75 KARANG BESUKI', 0, NULL, NULL),
(89, 3, 'Nur Yanto', NULL, 'JL.Zakze IC No.1266 RT. 6 / 1', 0, NULL, NULL),
(90, 3, 'PEPENG', NULL, 'GANG SAMAAN BLIMBING', 0, NULL, NULL),
(91, 3, 'PEPENG', NULL, 'GANG SAMAAN BLIMBING', 15, NULL, NULL),
(92, 3, 'PRIYONO', NULL, 'JL KEDOYO TIMUR 59 MANGLIAWAN', 0, NULL, NULL),
(93, 3, 'RENI MAYASARI', NULL, 'JL LAKS MARTADINATA IIB/739 MANGLIAWAN', 0, NULL, NULL),
(94, 3, 'RIZKA AGUNG S', NULL, 'JL LA SUCIPTO XXIX / 1 BLIMBING', 0, NULL, NULL),
(95, 3, 'ROBERT', NULL, 'JL PANIAI  BLOK BLOK H NO 28 SAWOJAJAR', 30, NULL, NULL),
(96, 3, 'RONY ANGGA PUTRA', NULL, 'PURWOREJO BANJAREJO PAKIS', 18, NULL, NULL),
(97, 3, 'ROPI I', NULL, 'JL MAWAR GG III A', 18, NULL, NULL),
(98, 3, 'SATURI', NULL, 'JL JODIPAN WETAN 1E RT 12/07 BLIMBING', 0, NULL, NULL),
(99, 3, 'SETIAWAN', NULL, 'JL KENONGO SEKARPURO PAKIS', 26, NULL, NULL),
(100, 3, 'SETYOWATI', NULL, 'JL RAYA TEBO UTARA RT 2 RW 1', 0, NULL, NULL),
(101, 3, 'SIWA', NULL, 'JL KOL SUGIONO GG3 NO 38', 35, NULL, NULL),
(102, 3, 'Siwa / Kacong', NULL, 'Mergosono Gg 3 / 6 No.44', 0, NULL, NULL),
(103, 3, 'SLAMET ROCHMAN', NULL, 'JL MUHARTO 7A /51', 0, NULL, NULL),
(104, 3, 'SLAMET SETIAWAN', NULL, 'JL S SUPRIADI G 7/32 SUKUN', 0, NULL, NULL),
(105, 3, 'SLAMET SUHARTO', NULL, 'JL KENDALSARI III DALAM NO 49', 20, NULL, NULL),
(106, 3, 'SLAMET SUHARTO ', NULL, 'JL KENDALSARI III DALAM NO 49 TULUSREJO LOWOKWARU', 0, NULL, NULL),
(107, 3, 'SOEGIANTO', NULL, 'PURWOHARJO AMPELGADING RT 03 RW 01', 0, NULL, NULL),
(108, 3, 'SRI WAHYUNI ', NULL, 'JL TEBO TENGAH NO 24 MULYOREJO', 0, NULL, NULL),
(109, 3, 'SUDIBYO', NULL, 'JL NAROTAMA K-91 A KESATRIAN BLIMBING', 0, NULL, NULL),
(110, 3, 'SUDIBYO', NULL, 'JL NAROTAMA K-91 A KESATRIAN BLIMBING', 12, NULL, NULL),
(111, 3, 'SUGENG ', NULL, 'JL MANGGAR NO 54 LOWOKWARU', 16, NULL, NULL),
(112, 3, 'SUKIRMAN', NULL, 'JL MAWAR 1/156 G LOWOKWARU', 0, NULL, NULL),
(113, 3, 'SUMARTONO', NULL, 'JL IR RAIS 14/20 TANJUNGREJO SUKUN', 0, NULL, NULL),
(114, 3, 'Susanto', NULL, 'JL.WEKUDORO RT 07 RW 02 Polehan', 0, NULL, NULL),
(115, 3, 'SUTIKNO EFENDI', NULL, 'JL LOCARI NO 22 LOWOKWARU', 0, NULL, NULL),
(116, 3, 'SUWANDI', NULL, 'JL PISANG CANDI BARAT KAMPUNG BARU 27 D', 0, NULL, NULL),
(117, 3, 'SUWITO', NULL, 'JL NGAGLIK IV B /240 SUKUN', 0, NULL, NULL),
(118, 3, 'Taufik Hidayat', NULL, 'JL.Memberamo VI No.8', 0, NULL, NULL),
(119, 3, 'TOETOEK SOEBAGIJO ', NULL, 'JL SIMP BOROBUDUR UTARA NO 10', 0, NULL, NULL),
(120, 3, 'WAKIDI', NULL, 'JL JAKSA AGUNG SUPRAPTO 1/G 123', 0, NULL, NULL),
(121, 3, 'WAWAN KURNIAWAN', NULL, 'PERUMNAS ASABRI PAKISJAJAR PAKIS', 0, NULL, NULL),
(122, 3, 'WAWAN KURNIAWAN', NULL, 'PERUMNAS ASABRI PAKISJAJAR PAKIS', 20, NULL, NULL),
(123, 3, 'YANTO', NULL, 'JL GATOT SUBROTO GG 2 NO 375', 30, NULL, NULL),
(124, 3, 'YITNO', NULL, 'JL KRESNO 34 POLEHAN', 35, NULL, NULL),
(125, 4, 'MUHAMMAD HUSNI BAHAR', NULL, 'JL KAPIWORO KHUSNI BAHAR', 20, NULL, NULL),
(126, 4, 'MUHAMMAD ZUHRON', NULL, 'DSN MOROTANJEK PRWOSARI', 20, NULL, NULL),
(127, 4, 'ARIP', NULL, '', 20, NULL, NULL),
(128, 4, 'DWI HADI PURNOMO', NULL, 'JL KEPUH 6 BANDUNGREJOSARI SUKUN', 10, NULL, NULL),
(129, 4, 'SAMSUL HADI', NULL, '', 10, NULL, NULL),
(130, 4, 'LASIMIN', NULL, 'SRIMULYO DAMPIT', 10, NULL, NULL),
(131, 4, 'GATOT SUBIANTO', NULL, 'DSN BABAAN NGENEP KARANGPLOSO', 10, NULL, NULL),
(132, 4, 'ARIEF HARTOYO', NULL, 'JL DIPONEGORO DESA JATIREJOYOSO KEPANJEN', 20, NULL, NULL),
(133, 4, 'SAMSUDIN', NULL, 'JL MUHARTO VII KOTALAMA ', 15, NULL, NULL),
(134, 4, 'PUJIANTO', NULL, 'DUSUN BABAAN NGENEP KARANGPLOSO', 15, NULL, NULL),
(135, 5, 'Achmat Arief', NULL, 'Sidomulyo II - 44 Malang', 10, NULL, NULL),
(136, 5, 'Agus Harianto', NULL, 'Polowijen IV / 16 - Malang', 14, NULL, NULL),
(137, 5, 'Agus Prasetiyo', NULL, 'LA Sucipto Gg Makam no.6 Malang', 10, NULL, NULL),
(138, 5, 'Amini', NULL, 'Kademangan 9, Banjararum - Malang', 75, NULL, NULL),
(139, 5, 'Chamim', NULL, 'Sekargadung I Banjararum - Malang', 10, NULL, NULL),
(140, 5, 'Didik Yulianto', NULL, 'Kademangan 9, Banjararum - Malang', 10, NULL, NULL),
(141, 5, 'DJIZAM ABIDIN', NULL, 'JL TELUK CENDRAWASIH NO 42', 68, NULL, NULL),
(142, 5, 'Gatot Didik Subroto', NULL, 'Dusun Losawi, Singosari - Malang', 36, NULL, NULL),
(143, 5, 'Halimatus Sa diyah', NULL, 'Dusun Krajan Rt 2/ Rw 7, Bunut Wetan', 10, NULL, NULL),
(144, 5, 'MARA HIDAYATULLAH', NULL, 'SIMP. BUNGA KRISAN 19 MALANG', 10, NULL, NULL),
(145, 5, 'Matasil', NULL, 'Dusun Pagubukan Tengah - Wonorejo', 10, NULL, NULL),
(146, 5, 'MOHAMMAD ROMLI', NULL, 'JL PLAOSAN BARAT 37 PURWODADI BLIMBING', 65, NULL, NULL),
(147, 5, 'Mujianto', NULL, 'Teluk Cendrawasih 2E Malang', 10, NULL, NULL),
(148, 5, 'MUKHAMAD ASSADUDIN', NULL, 'JL BAUKSIT 61 A PURWANTORO BLIMBING', 9, NULL, NULL),
(149, 5, 'Prayitno Eko Santoso', NULL, 'Mondoroko I Malang', 10, NULL, NULL),
(150, 5, 'Reza Viandra H.', NULL, 'Welirang I - 7 Malang', 10, NULL, NULL),
(151, 5, 'Rionaldi Pratama (16 th)', NULL, 'Teluk Grajakan Gg Makam - Malang', 10, NULL, NULL),
(152, 5, 'Riska Agung S.', NULL, 'LA Sucipto XXIX / 1 - Malang', 110, NULL, NULL),
(153, 5, 'Rudi Hartono', NULL, 'Mendit Barat Rt 1/ Rw 2, Mangliawan', 10, NULL, NULL),
(154, 5, 'Suhandik Priyo Jatmiko', NULL, 'Tapak Siring 19D - Malang', 20, NULL, NULL),
(155, 5, 'Sukardi', NULL, 'Teluk Cendrawasih 2D - Malang', 18, NULL, NULL),
(156, 5, 'Sukarman', NULL, 'Teluk Cendrawasih I / 06 Malang', 10, NULL, NULL),
(157, 5, 'Sukirno', NULL, 'Griya Permata Alam FB / 13 - Malang', 12, NULL, NULL),
(158, 5, 'Suwaji', NULL, 'Teluk Pelabuhan Ratu - Malang', 10, NULL, NULL),
(159, 5, 'Syamsul Arifin', NULL, 'Sekargadung, Banjararum - Malang', 15, NULL, NULL),
(160, 5, 'UCIK LIBRAWATI', NULL, 'MUJAMIL BANJARUM MALANG', 6, NULL, NULL),
(161, 5, 'Yudi Sofyan', NULL, 'Mendit Timur gg Sugriwo III/ 28', 10, NULL, NULL),
(162, 5, 'Yuli Sri Rahayu', NULL, 'Dusun Kedawung, Karangploso - Malang', 15, NULL, NULL),
(163, 6, 'EKA DHARMA', NULL, 'PERUM PNS BLOK III B LESANPURO KEDUN', 32, NULL, NULL),
(164, 6, 'DAUD', NULL, 'KARANG DUREN PAKISAJI', 100, NULL, NULL),
(165, 6, 'HIDYATULLOH', NULL, 'JL GALUNGGUNG V/3A', 83, NULL, NULL),
(166, 6, 'AINUL YAQIN', NULL, 'JL LETJEND SUPARMAN I 56', 40, NULL, NULL),
(167, 6, 'OESMAN', NULL, 'DSN SONOTENGAH KEBON AGUNG PAKISAJI', 32, NULL, NULL),
(168, 6, 'ERWIN', NULL, 'KAYUTANGAN GG 6', 10, NULL, NULL),
(169, 6, 'HERCULES ', NULL, '', 0, NULL, NULL),
(170, 6, 'SUNARDI', NULL, 'JL BARENG TAMAN BUNGA 5', 38, NULL, NULL),
(171, 6, 'ARIS', NULL, 'JL SAWOJAJAR G 9 ', 30, NULL, NULL),
(172, 7, 'SUDAHRI', NULL, 'JL MUHARTO V B', 32, NULL, NULL),
(173, 7, 'SUROTO', NULL, 'JL KELUWEH DALAM BUMIAYU KEDUNGKANDANG', 13, NULL, NULL),
(174, 7, 'SUPARMIN', NULL, 'JL TELUK GRAJAKAN BLIMBING', 19, NULL, NULL),
(175, 7, 'SALIM', NULL, 'JL KECUBUNG CEMPOKO MULYO KEPANJEN', 20, NULL, NULL),
(176, 7, 'ISFANDI', NULL, 'JL D SINDERENG LESANPURO KDUNGKNDANG', 47, NULL, NULL),
(177, 7, 'DARUL AGUS EFENDI', NULL, 'JL MUHARTO GG VC KOTALAMA', 4, NULL, NULL),
(178, 7, 'HANDOKO', NULL, 'JL KI AGENG GRIBIG XII LESANPURO', 15, NULL, NULL),
(179, 7, 'SUPRIYADI', NULL, 'KEDOK TUREN', 35, NULL, NULL),
(180, 7, 'MUL', NULL, 'JUAL DI PASAR BLIMBING SUHAT ', 20, NULL, NULL),
(181, 7, 'MAIMUNAH', NULL, 'JL LESANPURO KEDUNGKANDANG', 35, NULL, NULL),
(182, 7, 'DWI ADI INDRIYANTO', NULL, 'JL MAWAR G 2 LOWOKWARU ', 38, NULL, NULL),
(183, 7, 'ZAINUL ABIDIN', NULL, 'JL HAMID RUSDI VI-B/2041 BUNULREJO BLIMBING', 54, NULL, NULL),
(184, 7, 'DARUL AGUS EFENDI', NULL, 'JL MUHARTO GG VC KOTALAMA KEDUNGKANDANG', 30, NULL, NULL),
(185, 7, 'DWI ADI INDRIANTO', NULL, 'JL MAWAR GG II/14 C LOWOKWARU', 20, NULL, NULL),
(186, 7, 'ALFAN', NULL, 'JL MEMBRAMO VII/I BUNULREJO BLIMBING', 30, NULL, NULL),
(187, 7, 'SUDAHRI', NULL, 'JL MUHARTO V B KOTA LAMA', 0, NULL, NULL),
(188, 7, 'BASUKI RAHMAD ', NULL, 'UREK-UREK GONDANGLEGI ', 0, NULL, NULL),
(189, 8, 'MOKHAMAD KHOLIL', NULL, 'JL SRIGUNTING 38 SUKUN', 0, NULL, NULL),
(190, 8, 'SETYO BUDI', NULL, 'JL KLAYATAN 1 32', 0, NULL, NULL),
(191, 8, 'DEDDY DARMAWAN', NULL, 'DSN SONOSARI KEBONAGUNG OAKISAJI', 0, NULL, NULL),
(192, 8, 'KHOJIN', NULL, 'JL BANDULAN VIII 489 BANDULAN SUKUN', 29, NULL, NULL),
(193, 8, 'EDY CANDRA ', NULL, 'JL SYARIF AL-QODRI 2B/13 KASIN KLOJEN', 15, NULL, NULL),
(194, 8, 'KURNIAWAN', NULL, 'JL HALMAHERA II/42 KASIN KLOJEN', 15, NULL, NULL),
(195, 8, 'LUTFI HEDRO MIHANTO', NULL, 'JL NGAGLIK IV B/92 SUKUN', 30, NULL, NULL),
(196, 8, 'MOCH TOHIR HADIS', NULL, 'JL SARTONO SH I/55 CIPTOMULYO', 15, NULL, NULL),
(197, 8, 'KHOIRUL NIAM', NULL, 'JL ARIF MARGONO II/14 KASIN', 10, NULL, NULL),
(198, 8, 'PRIYADI', NULL, 'JL SUPRIADI GG MASJID SUKUN', 40, NULL, NULL),
(199, 8, 'BAMBANG HADIATMOKO', NULL, 'JANTI SELATAN GG 8 NO 98 BANDUNGREJOSARI SUKUN', 15, NULL, NULL),
(200, 9, 'ABDUL GHOFUR', NULL, 'JL KENDALSARI V/37-G TULUSREJO LOWOKWARU', 20, NULL, NULL),
(201, 9, 'ABDULLAH', NULL, 'DS BANYUBULU PROPPO', 18, NULL, NULL),
(202, 9, 'ABDUS SYARIP ', NULL, 'JL JA SUPRAPTO RAMPAL', 20, NULL, NULL),
(203, 9, 'ACHMAD BADAR ADHIM', NULL, 'JL MANGGAR 10 LOWOKWARU', 8, NULL, NULL),
(204, 9, 'AHMAD ROZAK', NULL, 'JL KH ZAINUL ARIFIN 1/870', 8, NULL, NULL),
(205, 9, 'AHCHMAD SUPRAJITNO', NULL, 'LOWOKWARU', 26, NULL, NULL),
(206, 9, 'ACHMAD SUUDI', NULL, 'JL RAYA JERU TUMPANG', 10, NULL, NULL),
(207, 9, 'AGUS RIYADI', NULL, 'JL SIMPANG SETAMAN I/65', 20, NULL, NULL),
(208, 9, 'AGUS SUYONO', NULL, 'JL MT HARYONO IV/807-B', 12, NULL, NULL),
(209, 9, 'ZULKIFLI', NULL, 'JL SIDOMULYI 1/07', 20, NULL, NULL),
(210, 9, 'SLAMET', NULL, 'JL KOL SUGIONO IX B/36', 15, NULL, NULL),
(211, 9, 'JOKO SLAMET', NULL, 'JL KOL SUGIONO IX B/56', 20, NULL, NULL),
(212, 9, 'ALI AKROM', NULL, 'JL TELUK GRAJAKAN 135', 7, NULL, NULL),
(213, 9, 'AMAT SUGIANTO', NULL, 'JL CILIWUNG II/49 B', 61, NULL, NULL),
(214, 9, 'TAUFIK HIDAYAT', NULL, 'JL MEMBRAMO VI/B BUNULREJO BLIMBING', 20, NULL, NULL),
(215, 9, 'ANDIK CAHYONO', NULL, 'JL POLOWIKJEN II/445 POLOWIJEN BLIMBING', 36, NULL, NULL),
(216, 9, 'ANDIK SANTOSO', NULL, 'JL KARYA TIMUR IV/44', 0, NULL, NULL),
(217, 9, 'ARIFIN', NULL, 'JL APUKAT BETEK SANANREJO TUREN', 34, NULL, NULL),
(218, 9, 'ATIM BUDIANTO', NULL, 'JL LETJEN SUTOYO V-B/6', 10, NULL, NULL),
(219, 9, 'CHOIRUL ANAM', NULL, 'PERUM KARANGLO INDAH N-2A TUNJUNGTIRTO', 0, NULL, NULL),
(220, 9, 'MOCH. ISROK AL AMIN (DEBL', NULL, 'JL CAKALAN 211 POLOWIJEN BLIMBING', 14, NULL, NULL),
(221, 9, 'MOCH FATHUR RAHMAN', NULL, 'JL SELOREJO 40 LOWOKWARU', 3, NULL, NULL),
(222, 9, 'MOHAMAD SOLEH', NULL, 'JL CAKALANG I/ 2131i', 20, NULL, NULL),
(223, 9, 'WASIS', NULL, 'JL SELOREJO 26-D LOWOKWARU', 19, NULL, NULL),
(224, 9, 'AHMAD SARONI', NULL, 'JL WEKUDORO POLEHAN BLIMBING', 20, NULL, NULL),
(225, 9, 'INDRA ARDIANSYAH', NULL, 'JL SELOREJO 23-A LOWOKWARU', 14, NULL, NULL),
(226, 9, 'YANUAR MAULUDIN', NULL, 'JL SIMPANG CANDI CANGGUNG 48 MOJOLANGU ', 12, NULL, NULL),
(227, 9, 'IMAM SISWO', NULL, 'JL KENDALSARI DALAM III 40 TULUSREJO LOWOKWARU', 5, NULL, NULL),
(228, 9, 'EKO PURWANTO', NULL, 'JL BUNGA KUMIS KUCING 31 ', 30, NULL, NULL),
(229, 9, 'FEBI HINDARTO', NULL, 'JL LETJEN S PARMAN IV/21 PURWANTORO', 25, NULL, NULL),
(230, 9, 'HARDOKO', NULL, 'JL FLAMBOYAN III MALNGSUKO TUMPANG', 55, NULL, NULL),
(231, 9, 'HARSONO', NULL, 'JL LESTI 1/26 BUNULREJO BLIMBING', 18, NULL, NULL),
(232, 9, 'IMAM PURWADI', NULL, 'JL SIMPANG CANDI PANGGUNG IX MOJOLANGU', 35, NULL, NULL),
(233, 9, 'AGUS HANDOKO (JAVIER)', NULL, 'JL TUNGGUL AMETUNG 37 TUMPANH', 33, NULL, NULL),
(234, 9, 'DAMAN HURI', NULL, 'TAJINAN', 27, NULL, NULL),
(235, 9, 'NANANG KUSTOMO', NULL, 'WATES WONOMULYO PONCOKUSUMO', 19, NULL, NULL),
(236, 9, 'JUARI', NULL, 'JL JA SUPRAPTO IIE/345 SAMAAN KLOJEN', 37, NULL, NULL),
(237, 9, 'KUSAERI', NULL, 'JL SUMPIL 1/42 PURWODADI BLIMBING', 15, NULL, NULL),
(238, 9, 'LIANI', NULL, 'JL BASUKI RAHMAT II A/890 KAUMAN KLOJEN', 0, NULL, NULL),
(239, 9, 'LUKMAN SANTOSO', NULL, 'JL NAKULA 56', 17, NULL, NULL),
(240, 9, 'M RIDWan', NULL, 'jl candi badut 12 e ', 8, NULL, NULL),
(241, 9, 'MOH MA RUF', NULL, 'JL CILIWUNG 5B PURWANTORO BLIMBING', 0, NULL, NULL),
(242, 9, 'MASDUKI (MASDUKI)', NULL, 'JL CUCAK RAWUN V 8E/23', 36, NULL, NULL),
(243, 9, 'MISTARAM', NULL, 'JL SELOREJO BLOK D NO 34 LOWOKWARU', 30, NULL, NULL),
(244, 9, 'MOCH SOLEH', NULL, 'JL SIDOMULYO 48-A PURWODADI BLIMBING', 30, NULL, NULL),
(245, 9, 'MUCHAMAD MASURI', NULL, 'JL IR RAIS II A/6 BARENG KLOJEN', 26, NULL, NULL),
(246, 9, 'MOH MUSTAIN', NULL, 'JL GALUNGGUNG V/3 GADINGKASRI KLOJEN', 17, NULL, NULL),
(247, 9, 'MUTIA APRISANTI', NULL, 'JL KAPIMINDA 11H/24 MANGLIAWAN', 3, NULL, NULL),
(248, 9, 'PURNOMO', NULL, 'JL RAYA BANDULAN 17', 4, NULL, NULL),
(249, 9, 'NUR SASONGKO BAYU AJI', NULL, 'JL DANAU SENTANI UTARA XI H3 MADYOPURO KEDUNGKANDA', 18, NULL, NULL),
(250, 9, 'RACHMAT SHOLEH', NULL, 'JL TEMENGGUNGAN LEDOK 26 KESATRIAN BLIMBING', 41, NULL, NULL),
(251, 9, 'RIADI', NULL, 'JL BANTARAN 1B/12 TULUSREJO LOWOKWARU', 18, NULL, NULL),
(252, 9, 'RICKY AGUSTON', NULL, 'JL PANG SUDIRMAN 53 TUREN', 19, NULL, NULL),
(253, 9, 'RIYONO', NULL, 'JL MT HARYONO IV/807', 30, NULL, NULL),
(254, 9, 'ROBBI KRISTIAN WIRABUANA', NULL, 'JL LETJEN S PARMAN GG SANTREN 1/1 LOWOKWARU', 34, NULL, NULL),
(255, 9, 'NASA I', NULL, 'DSN PAGUBUKAN TENGAH LEBAKSARI WONOREJO PASURUAN', 0, NULL, NULL),
(256, 9, 'ANDIK TRIBOWO', NULL, 'JL POLOWIJEN I/221', 15, NULL, NULL),
(257, 9, 'FATKUR RAHMAN', NULL, 'JL POLOWIJEN I/254 ', 20, NULL, NULL),
(258, 9, 'SUPARMAN', NULL, 'JL POLOWIJEN III/4', 26, NULL, NULL),
(259, 9, 'MUSTOFA', NULL, 'JL POLOWIJEN I/254 ', 19, NULL, NULL),
(260, 9, 'SUDARTO', NULL, 'JL KARYA TIMUR 4 PURWANTORO BLIMBING', 20, NULL, NULL),
(261, 9, 'SUGIYANTO', NULL, 'PERMATA REGENCY BLOK 26 NO 22', 31, NULL, NULL),
(262, 9, 'SUNARMI', NULL, 'PERMATA REGENCY BLOK 26 NO 23', 31, NULL, NULL),
(263, 9, 'AGUNG ALPIANTO', NULL, 'PERMATA REGENCY BLOK 26 NO 24', 31, NULL, NULL),
(264, 9, 'SUKATEMI', NULL, 'PERMATA REGENCY BLOK 26 NO 25', 22, NULL, NULL),
(265, 9, 'SUMARTONO', NULL, 'JL IR RAIS 14/20 TANJUNGREJO', 35, NULL, NULL),
(266, 9, 'SUNARTO', NULL, 'JL KALIURANG BARAT VII/1366', 10, NULL, NULL),
(267, 9, 'MISIONO', NULL, 'JL SIMPANG SETAMAN NO 39 BLOWOKWARU ', 6, NULL, NULL),
(268, 9, 'AKSAN', NULL, 'JL TERUSAN LOCARI 8 A ', 12, NULL, NULL),
(269, 9, 'MOCH FERY NUGROHO', NULL, 'SUKOREJO SUTOJAYAN', 7, NULL, NULL),
(270, 9, 'CHUSNUL CHOTIMAH', NULL, 'JL TELUK GRAJAKAN 135 PANDANWANGI BLIMBING', 10, NULL, NULL),
(271, 9, 'SUNIKRAH', NULL, 'JL ZAENAL ZAKSE VI/15 JODIPAN BLIMBING', 7, NULL, NULL),
(272, 9, 'SUPRIYANTO', NULL, 'JL GADANG VI/39 GADANG SUKUN', 8, NULL, NULL),
(273, 9, 'SUUDI', NULL, 'KRAJAN BARAT PAKIS KEMBAR OAKIS', 12, NULL, NULL),
(274, 9, 'YAN PERMANA', NULL, 'JL CANDI BAJANG RATU 41 PURWANTORO BLIMBING', 10, NULL, NULL),
(275, 9, 'SUYONO ', NULL, 'JL EMBONG BRANTAS GG SD KIDUL DALEM KLOJEN', 10, NULL, NULL),
(276, 9, 'YUDIS KRISNA SARI ', NULL, 'JL IKAN PIRANHA ATAS 214 TUNJUNGSEKAR ', 9, NULL, NULL),
(277, 9, 'SALAMUN', NULL, 'JL SETIABUDI BAWAH NO 12 KLOJEN', 0, NULL, NULL),
(278, 9, 'AGUS NURSALIM (TERMINAL)', NULL, 'JL TELUK BAYUR PANDANWANGI', 71, NULL, NULL),
(279, 9, 'RACHMAD SANJAYA', NULL, 'JL SIMPANG TELUK BAYUR 60 C', 17, NULL, NULL),
(280, 9, 'MOCH ANWAR', NULL, 'JL SIMPANG TELUK BAYUR PANDANWANGI BLIMBING', 21, NULL, NULL),
(281, 9, 'RAMU', NULL, 'JL BATU PERMATA NO 4 TLOGOMAS LOWOKWARU', 25, NULL, NULL),
(282, 9, 'ABDULLAH', NULL, ' JL KARYA TIMUR I/17 K', 32, NULL, NULL),
(283, 9, 'IKHWAN PADI', NULL, 'JL KH YUSUF TASIKMADU LOWOKWARU', 7, NULL, NULL),
(284, 9, 'FERI SETIAWAN', NULL, 'JL TIRTOUTOMO IX/30', 12, NULL, NULL),
(285, 9, 'MOCHAMAD SOLIKIN', NULL, 'JL TIRTO UTOMO IV LANDUNGSARI DAU', 13, NULL, NULL),
(286, 9, 'WAHYUDI', NULL, 'JL TIRTO JOYO 40 LOWOKWARU', 32, NULL, NULL),
(287, 9, 'MOCH CHOIRUL', NULL, 'JL SATRIA 146 BALEREJOSARI BLIMBING', 15, NULL, NULL),
(288, 9, 'HARI HARSONO', NULL, 'JL KALPATARU V- E/9 KATIMULYO', 7, NULL, NULL),
(289, 9, 'ISKANDAR (ISKANDAR)', NULL, 'JL SUNANDAR PRIYO SUDARMO 16 PURWANTORO', 26, NULL, NULL),
(290, 9, 'HERU ISWOJO', NULL, 'PERUM MANGLIAWAN PERMAI PAKIS ', 11, NULL, NULL),
(291, 9, 'LUDFI FIRMANSYAH (LUDFI)', NULL, 'JL WR SUPRATMAN II/28 RAMPAL CELAKET', 56, NULL, NULL),
(292, 9, 'DIDIEK SUSANTO', NULL, 'JL CANDI BIMA 1/19-A MOJOLANGU', 55, NULL, NULL),
(293, 9, 'RACHMAD YULIANTO', NULL, 'JL SEBUKU XX /126 E BUNULREJO', 30, NULL, NULL),
(294, 9, 'M TAMSIR', NULL, 'JL LA SUCIPTO XXIX/11 BLIMBING', 20, NULL, NULL),
(295, 9, 'FADJAR KRISTANTO', NULL, 'JL JA SUPRAPTO IV-A/166 RAMPAL CELAKET', 30, NULL, NULL),
(296, 9, 'SURONO', NULL, 'JL LEMBANG I RAMPAL CELAKET', 11, NULL, NULL),
(297, 9, 'LUKMAN NUR CHAKIM (LUKMAN', NULL, 'JL TLOGO SURYO TLOGOMAS LOWOKWARU', 15, NULL, NULL),
(298, 9, 'MOH SOLEH', NULL, 'PUCANGSONO PAKIS', 16, NULL, NULL),
(299, 9, 'SULASTRI', NULL, 'JL DWIKORA V/38 KEBONAGUNG PAKISAJI', 19, NULL, NULL),
(300, 9, 'PARMAN', NULL, 'JL KALIURANG BARAT VII/17 SAMAAN KLOJEN', 53, NULL, NULL),
(301, 9, 'MUHAMMAD', NULL, 'JL KALIURANG BARAT VII/17 SAMAAN KLOJEN', 21, NULL, NULL),
(302, 9, 'FISH HEDRIANTO', NULL, 'DSN SEGARAN KENDALPAYAK PAKISAJI', 14, NULL, NULL),
(303, 9, 'SLAMET HANDOKO', NULL, 'JL MT HARYONO IV/80 7-B DINOYO', 8, NULL, NULL),
(304, 9, 'SLAMET HARIYADI', NULL, 'JL LETJEN S PARMAN IV- 30 B', 23, NULL, NULL),
(305, 9, 'ABDUL SYUKUR ', NULL, 'JL SEKAR GADUNG II BANJAR ARUM SINGOSARI', 25, NULL, NULL),
(306, 9, 'AAN SUTRIONO ', NULL, 'JL POLOWIJEN IV / 15', 27, NULL, NULL),
(307, 9, 'AHMAD MUHLISIN', NULL, 'JL BATUBARA 58B', 19, NULL, NULL),
(308, 9, 'FADILA HEDRIYANTO', NULL, 'JL SUMPIL 1/8', 40, NULL, NULL),
(309, 9, 'MUH MUNIR', NULL, 'JL POLOWIJEN II /349', 52, NULL, NULL),
(310, 9, 'KUSTONO', NULL, 'JL TELUK PELABUHAN RATU 13', 15, NULL, NULL),
(311, 9, 'M DJURI', NULL, 'JL KADEMANGAN 30 BANJAARUM SINGOSARI', 15, NULL, NULL),
(312, 9, 'HALIMATUS SA DIYAH', NULL, 'JL CAKALANG 211 POLOWIJEN BLIMBING', 32, NULL, NULL),
(313, 9, 'KUSMANADI', NULL, 'JL TANIN 18 BANJARARUM', 16, NULL, NULL),
(314, 9, 'MOCH FERRY', NULL, ' JL TELUK PELABUHAN RATU 12 C ', 13, NULL, NULL),
(315, 9, 'MUKHLIS THOHIR', NULL, 'JL TELUK LADA 3A', 12, NULL, NULL),
(316, 9, 'SUPADI', NULL, 'JL TLOGOMAS 8A/20', 40, NULL, NULL),
(317, 9, 'MUH MUHYIDIN', NULL, 'JL TELUK PELABUHAN RATU 13 MALANG', 12, NULL, NULL),
(318, 9, 'ANDHI GUNNIADHI', NULL, 'JL CITANDUI NO 22 PURWANTORO BLIMBING', 18, NULL, NULL),
(319, 9, 'MOERTIHANI', NULL, 'JL KEDAWUNG IV/18 RT 03 RW 05', 18, NULL, NULL),
(320, 9, 'MUCHIFUL ICHWAN', NULL, 'JL LA SUCIPTO GG TARUNA III PANDANWANGI BLIMBING', 15, NULL, NULL),
(321, 9, 'BAMBANG SUWOLO (BAMBANG)', NULL, 'JL DR CIPTO NO 14 BEDALI LAWANG', 10, NULL, NULL),
(322, 9, 'MISBACHUL MUCHDOR', NULL, 'JL POLOWIJEN II/349 POLOWIJEN BLIMBING', 20, NULL, NULL),
(323, 9, 'NGADERI ', NULL, 'DUSUN GEBYAK PURWOSARI SINGOSARI', 154, NULL, NULL),
(324, 9, 'MUHAMAD EDY NURYANTO', NULL, 'JL CEMPAKA RT 01 RW 05 PESANGGRAHAN BATU', 50, NULL, NULL),
(325, 9, 'ABDUL MUKLIS', NULL, 'JL AHMAD YANI UTARA 518 POLOWIJEN BLIMBING', 25, NULL, NULL),
(326, 9, 'ARIEF MUSTOFA (IRWAN)', NULL, 'JL MAYJEN SUNGKONO BURING', 30, NULL, NULL),
(327, 9, 'BAMBANG PEDY CAHYONO', NULL, 'JL BANTARAN II-A/34', 30, NULL, NULL),
(328, 9, 'SETYO ADI', NULL, 'JL KARYA TIMUR NO IV 42 C', 30, NULL, NULL),
(329, 9, 'SYAMSUL ARIF', NULL, 'JL CILIWUNG II/46 PURWANTORO', 30, NULL, NULL),
(330, 9, 'TOHARI', NULL, 'JL CANDI BUKIRSARI NO 22 TULUSREJO', 30, NULL, NULL),
(331, 9, 'RAHMAD ANSORI (MUKAYAT)', NULL, 'JL BASUKI RAHMAD IIA 890', 20, NULL, NULL),
(332, 9, 'EKO BAMBANG SUJONO (LNDGS', NULL, 'JL KLYATAN III 19 BANDUNGREJOSARI', 59, NULL, NULL),
(333, 10, 'CATUR BAMBANG HERMAWAN', NULL, 'JL JODIPAN WETAN III/3', 12, NULL, NULL),
(334, 10, 'SUKHUFAM MUTHOHARO', NULL, 'JL MUHARTO VII KOTALAMA', 15, NULL, NULL),
(335, 10, 'SUMARYADI', NULL, 'JL IR RAIS IV/89 BARENG', 10, NULL, NULL),
(336, 10, 'SUTRISNO', NULL, 'JL DANAU RAWA PENING ', 19, NULL, NULL),
(337, 10, 'ARDI FEBRIANTO', NULL, 'JL MUHARTO KOTALAMA', 15, NULL, NULL),
(338, 10, 'GUNTUR', NULL, 'JL MUHARTO VII KOTALAMA', 10, NULL, NULL),
(339, 10, 'RUSIADI', NULL, 'SUKUN SIDOMULYO NO IV TANJUNGREJO', 10, NULL, NULL),
(340, 10, 'PURNOMO HADI', NULL, 'JL RAYA MUHARTO 43 KOTALAMA', 10, NULL, NULL),
(341, 10, 'IRWAN SUGIONO', NULL, 'JL TANJUNG PUTRA YUDHA VI/57', 10, NULL, NULL),
(342, 10, 'BUDIANTO', NULL, 'JL MUHARTO 7 KOTALAMA', 13, NULL, NULL),
(343, 10, 'TRESNO SETIOHADI', NULL, 'JL TANJUNGPUTRA YUDHA VI', 10, NULL, NULL),
(344, 10, 'AGUS YUWONO', NULL, 'JL KOL SUGIONO IX B 27 MERGOSONO', 10, NULL, NULL),
(345, 10, 'TETTI SUSIANTI', NULL, 'JL JEND ESK RAHMAD VII/25', 12, NULL, NULL),
(346, 10, 'HARI BARENG ', NULL, 'JL BARENG KARTINI III-G 8B KAUMAN', 8, NULL, NULL),
(347, 10, 'SOKEH', NULL, 'JL BARENG TENGAH 23', 10, NULL, NULL),
(348, 10, 'FERY', NULL, 'DUSUN SANAN KULON KEC SANAN KULON', 25, NULL, NULL),
(349, 10, 'AMBAR', NULL, 'JL KEMANTREN 1 NO 25 SUKUN', 30, NULL, NULL),
(350, 11, 'KHOIRI', NULL, 'JL MT HARYONO GG BRAWIJAYA III/66', 35, NULL, NULL),
(351, 11, 'SULKIN', NULL, 'JL WATU GILANG IV/12-C KETWANG GEDE LOWOKWARU', 15, NULL, NULL),
(352, 11, 'ISNU PURWANTO', NULL, 'JL TLOGOINDAH IV/25 LOWOKWARU', 17, NULL, NULL),
(353, 11, 'SUYONO', NULL, 'JL GAJAYANA V/595 DINOYO LOWOKWARU', 12, NULL, NULL),
(354, 11, 'MOCHAMAD SLAMET', NULL, 'DSN KASIN AMPELDENTO KARANGPLOSO', 10, NULL, NULL),
(355, 11, 'EKO BUDI UTOMO', NULL, 'JL CANDI V B/305', 10, NULL, NULL),
(356, 11, 'MASRONI', NULL, 'JL SANTREN JARAK KULON JOGOROGO', 16, NULL, NULL),
(357, 11, 'CHUNAIFI', NULL, 'JL GAJAYANA 527 DINOYO LOWOKWARU', 40, NULL, NULL),
(358, 11, 'RUDY EKO ARI KUSTANTO', NULL, 'JL M PANDJAITAN 222 PENANGGUNGAN KLOJEN', 10, NULL, NULL),
(359, 11, 'ARIF ROCHMAN', NULL, 'JL TL CENDRAWASIH 157 ARJOSARI BLIMBING', 15, NULL, NULL),
(360, 11, 'SUPARDI', NULL, 'JL KYAI TAMIN I C/32 SUKOHARJO KLOJEN', 40, NULL, NULL),
(361, 11, 'ABDUL RAHMAN', NULL, 'JL MT HARYONO GG BRAWIJAYA III/66', 10, NULL, NULL),
(362, 11, 'YUYUT MAULA ARYANTO', NULL, 'JL ARIF MARGONO IV/1564 KASIN', 10, NULL, NULL),
(363, 11, 'RIDWAN SAMSUDIN', NULL, 'JL RAYA BANDULAN 108 BANDULAN SUKUN', 10, NULL, NULL),
(364, 11, 'LUKMAN HADI', NULL, 'JL MT HARYONO 89 ', 10, NULL, NULL),
(365, 11, 'MARDIANSYAH', NULL, 'JL ARIF MARGONO IV/1564 KASIN KLOJEN', 15, NULL, NULL),
(366, 11, 'AGUS YUWONO ', NULL, 'JL KOL SUGIONO IX B/27 MERGOSONO', 120, NULL, NULL),
(367, 11, 'M ROJIFAN', NULL, 'JL MT HARYONO GG BRAW 3/66 KETAWANGGEDE', 30, NULL, NULL),
(368, 11, 'KUSNADI', NULL, 'JL KH HASYIM ASYARI VI A/1361 KAUMAN KLOJEN', 40, NULL, NULL),
(369, 11, 'UMAR MUCHTAR', NULL, 'JL IR RAIS II-A/30 BARENG KLOJEN', 20, NULL, NULL),
(370, 12, 'ATIM SAFII I', NULL, 'JL SAWOJAJAR GG 19 NO 80 KEDUNGKANDANG', 25, NULL, NULL),
(371, 12, 'KHUSNUL AMALIAH', NULL, 'JL MAYJEN PANDJAITAN XI/15', 25, NULL, NULL),
(372, 12, 'FX SUJATMIKO', NULL, 'JL WR SUPRATMAN IV/20 RAMPAL CELAKET KLOJEN', 80, NULL, NULL),
(373, 12, 'SAIFUL BAKRI', NULL, 'JL EMBONG BRANTASIV/1529 KIDUL DALEM KLOJEN', 15, NULL, NULL),
(374, 12, 'RUDIANTO', NULL, 'JL TELUK BAYUR 28 PANDANWANGI BLIMBNG', 15, NULL, NULL),
(375, 12, 'SHOIBUR ROHMAN', NULL, 'JL MUHARTO VII KOTALAMA KEDUNGKANDANG', 20, NULL, NULL),
(376, 12, 'YUSRO AKBAR', NULL, 'JL IR JUANDA JODIPAN BLIMBING', 20, NULL, NULL),
(377, 12, 'ACH NANANG', NULL, 'JL KOL SUGIONO V/278 MERGOSONO KEDUNGKANDANG', 30, NULL, NULL),
(378, 12, 'SUMARDI', NULL, 'JL KWOKA BLOK Q-26 KARANGBESUKI SUKUN', 15, NULL, NULL),
(379, 12, 'ALI FAISOL', NULL, 'JL MUHARTO GG II/12 JODIPAN BLIMBING', 20, NULL, NULL),
(380, 12, 'TOTOK DIYANTONO', NULL, 'ROBYONG WONOMULYO PONCOKUSUMO', 16, NULL, NULL),
(381, 12, 'SAMSUL ARIFIN', NULL, 'JL AROWANA XII/187 KEBON AGUNG KALIWATES JEMBER', 20, NULL, NULL),
(382, 12, 'WAHYU ARI JATMIKO', NULL, 'BALONG PAREN MOJOPARON REMBANG PASURUAN', 20, NULL, NULL),
(383, 12, 'SITI NAFIAH', NULL, 'JL IR H JUANDA JODIPAN BLIMBING', 12, NULL, NULL),
(384, 12, 'LIA WULANDARI', NULL, 'JL KARANG AMPEL KARANGWIDORO DAU', 15, NULL, NULL),
(385, 12, 'G SUNARYO', NULL, 'JL KOTA LAMA 1006 KEDUNGKANDANG', 25, NULL, NULL),
(386, 13, 'SISWOKO', NULL, 'JL KERTOASRI 63 KETAWANG GEDE LOWOKWARU', 25, NULL, NULL),
(387, 13, 'BUANG SLAMET', NULL, 'JL JOYO RAHARJO I/233-K MERJOSARI LOWOKWARU', 12, NULL, NULL),
(388, 13, 'PARTO', NULL, 'DUSUN SUMBER REJO KALISONGO DAU', 20, NULL, NULL),
(389, 13, 'MISDIONO', NULL, 'JL JOYO SUKO NO 23 MERJOSARI LOWOKWARU', 20, NULL, NULL),
(390, 13, 'BUADI', NULL, 'JL BENDUNGAN SUTAMI I-D/451-A SUMBERSARI LOWOKWARU', 20, NULL, NULL),
(391, 13, 'SUCIPTO', NULL, 'JL GILIMANUK NO 56-A LOWOKWARU', 25, NULL, NULL),
(392, 13, 'ACHMAD IMAM ROYANI', NULL, 'PUJON KIDUL PUJON', 30, NULL, NULL),
(393, 13, 'ANTON SUHARSONO', NULL, 'JL JOYO SUKO METRO II LOWOKWARU', 25, NULL, NULL),
(394, 13, 'AHMAD MAULANA', NULL, 'JL SUMBERSARI V B/368 SUMBERSARI LOWOKWARU', 15, NULL, NULL),
(395, 13, 'PURYONO', NULL, 'JL MT HARYONO 8-B/999 DINOYO', 20, NULL, NULL),
(396, 13, 'MOHAMMAD KHOIRUL ANAM', NULL, 'KARAMGWIDORO DAU', 25, NULL, NULL),
(397, 13, 'SUJONO', NULL, 'KRAJAN BAGO LUMAJANG', 15, NULL, NULL),
(398, 13, 'DENNY SISWANTORO', NULL, 'JL BENDUNGAN SUTAMI I/427 SUMBERSARI LOWOKWARU', 15, NULL, NULL),
(399, 13, 'ANIS WAHYUDI', NULL, 'DSN KRAJAN II KALIBOTO JATIROTO LUMAJANG', 25, NULL, NULL),
(400, 13, 'ACHMAD JAUHARI', NULL, 'JL MT HARYONO VIII B/1048-B DINOYO', 15, NULL, NULL),
(401, 13, 'WIDJI HANDOKO', NULL, 'JL TIRTO UTOMO 76 LANDUNGSARI', 15, NULL, NULL),
(402, 13, 'HENDRA SETIAWAN', NULL, 'JL JOYO SUKO 41-L MERJOSARI LOWOKWARU', 15, NULL, NULL),
(403, 13, 'AHMAD MUTAQIN', NULL, 'JL BARAN TLOGOWARU KEDUNG KANDANG', 15, NULL, NULL),
(404, 13, 'MUHAMAD KHOIRUL ANAM', NULL, 'DUSUN TALAGA NONGGUNONG', 20, NULL, NULL),
(405, 14, 'HARI', NULL, 'JL NGAGLIK IID/51', 15, NULL, NULL),
(406, 14, 'DJOKO SLAMET SUBIANTORO', NULL, 'JL BANDULAN GG 6 1K NO 12', 15, NULL, NULL),
(407, 14, 'PURWITO', NULL, 'JL KELAPASAWIT  10 RT 04/03', 20, NULL, NULL),
(408, 14, 'AGUS AFANDI', NULL, 'JL KELAPA SAWIT 14 PISANGCANDI', 20, NULL, NULL),
(409, 14, 'SLAMET', NULL, 'JL CANDI 3/69 KARANGBESUKI', 35, NULL, NULL),
(410, 14, 'MOCH SOE OEDI', NULL, 'JL TER MERGAN RAYA XIX/31 TANJUNGREJO SUKUN', 15, NULL, NULL),
(411, 14, 'ERWAN HARIYONO', NULL, 'JL KELAPA SAWIT 4/9 PISANG CANDI', 20, NULL, NULL),
(412, 14, 'RUSWANDI', NULL, 'JL KLAMPOK KASRI II C/348 GADINGKASRI KLOJEN', 10, NULL, NULL),
(413, 14, 'BAGUS SADEWA', NULL, 'JL GUNUNG AGUNG PISANGCANDI', 25, NULL, NULL),
(414, 14, 'CHOIRUL HUDA', NULL, 'JL KLAPA SAWIT VIII/82', 25, NULL, NULL),
(415, 14, 'KHOLIK', NULL, 'JL RAYA PAKISAJI 111', 75, NULL, NULL),
(416, 14, 'EKO SANTOSO', NULL, 'JL GADING PESANTREN 20', 20, NULL, NULL),
(417, 14, 'MISDI', NULL, 'JL RAYA CANDI 406 KARANGBESUKI SUKUN', 35, NULL, NULL),
(418, 14, 'OKMAR SULAIMAN', NULL, 'JL KELAPA SAWIT 8 / 25 PISANGCANDI', 15, NULL, NULL),
(419, 14, 'HERU TRIATMOKO', NULL, 'JL KELAPA SAWIT IX/7B PISANGCANDI', 25, NULL, NULL),
(420, 14, 'ACHMAD SUMARYONO', NULL, 'JL TER MERGAN RAYA XIX/31 TANJUNGREJO SUKUN', 40, NULL, NULL),
(421, 14, 'SUGIONO', NULL, 'JL PISANG CANDI BARAT 55 SUKUN', 20, NULL, NULL),
(422, 14, 'SULAIMAN', NULL, 'JL PISANG CANDI 10B', 10, NULL, NULL),
(423, 14, 'NAFISAH', NULL, 'JL BANDULAN GG IF/36 BANDULAN SUKUN', 10, NULL, NULL),
(424, 14, 'SUWADI', NULL, 'JL BRIGJEND SLAMET RIYADI IX 266 A ORO ORO DOWO', 10, NULL, NULL),
(425, 14, 'M. SYAFI I', NULL, 'JL BELAKANG RSU VII/3 KLOJEN', 10, NULL, NULL),
(426, 14, 'SUPARNO', NULL, 'SUMBERSUKO RT19 RW05 WAGIR', 49, NULL, NULL),
(427, 14, 'RORI BINARA', NULL, 'JL KELAPA SAWI 21 PISANG CANDI SUKUN', 91, NULL, NULL),
(428, 14, 'MULIYONO', NULL, 'JL PISANG CANDI BARAT 100', 30, NULL, NULL),
(429, 15, 'SUWITO', NULL, 'JL KARANGJATI GG 1 BARU GENENGAN PAKISAJI', 3, NULL, NULL),
(430, 15, 'TEGUH WAHYUDI', NULL, 'JL KH MALIK DALAM', 3, NULL, NULL),
(431, 15, 'IMAM SAMA I', NULL, 'JL MAYJEN SUNGKONO BUMIAYU ', 3, NULL, NULL),
(432, 15, 'DJOKO BACHTIAR', NULL, 'JL GADANG XXI', 3, NULL, NULL),
(433, 15, 'SITI MAS AMAH', NULL, 'JL PENDOWO JERU TUREN', 10, NULL, NULL),
(434, 15, 'UTNIEL FERY IRAWAN', NULL, 'JL AHMAD UYANI 50 TUREN', 16, NULL, NULL),
(435, 15, 'SUDIYONO', NULL, 'JL KRAMAT TUMPUK KRENTENG TUREN', 35, NULL, NULL),
(436, 15, 'NUR QOSIM', NULL, 'SUMBERMANJING WETAN 018/005', 20, NULL, NULL),
(437, 15, 'HASANUDIN', NULL, 'HARJOKUNCARAN', 37, NULL, NULL),
(438, 15, 'PRANOTO', NULL, 'JL KEBALEN WETAN SIDOJAJAR ', 20, NULL, NULL),
(439, 15, 'CHOIRUL AHMAD', NULL, 'JL MAYJEN SUNGKONO RT 5 RW 2 NO 52', 20, NULL, NULL),
(440, 16, 'ALI MULYADI', NULL, 'JL KAWI SUKUN KEPANJEN', 46, NULL, NULL),
(441, 16, 'MARUQI', NULL, 'JL KAWI METRO 94 SUKUN', 23, NULL, NULL),
(442, 17, 'SUGENG HARIYADI', NULL, 'KEPANJEN PERMAI II TALANGAGUNG KEPANJEN', 8, NULL, NULL),
(443, 17, 'SUGENG WICAKSONO', NULL, 'MULYOSARI DONOMULYO', 10, NULL, NULL),
(444, 17, 'BUARI', NULL, 'JL KAWI 102 KEPANJEN', 19, NULL, NULL),
(445, 17, 'CHOIRIL ABIDIN', NULL, 'JL PUNTEN GG KENARI KEPANJEN', 19, NULL, NULL),
(446, 17, 'MUHAMMAD RIFAD', NULL, 'JL PENANGGUNGAN KEPANJEN', 3, NULL, NULL),
(447, 17, 'DIANA', NULL, 'JL REGULO CEPOKOMULYO KEPANJEN', 31, NULL, NULL),
(448, 17, 'SUPARDI', NULL, 'JL ANGGREK CEPOKOMULYO KEPANJEN', 19, NULL, NULL),
(449, 17, 'MUHAMMAD JAFAR', NULL, 'SUKOYUWONO PALAAN NGAJUM', 19, NULL, NULL),
(450, 17, 'CHOIRUL ANWAR', NULL, 'JL KAWI METRO 94 SUKUN KEPANJEN', 19, NULL, NULL),
(451, 17, 'USMAN', NULL, 'JL SIPONTALANGAGUNG KEPANJEN', 19, NULL, NULL),
(452, 17, 'SUGIANTO', NULL, 'JL KATU 83 KEPANJEN', 8, NULL, NULL),
(453, 17, 'ANTON BUDI SETIAWAN', NULL, 'JL KAWI METRO 68 KEPANJEN', 19, NULL, NULL),
(454, 17, 'M YUSUF', NULL, 'GONDANGLEGI', 19, NULL, NULL),
(455, 17, 'ASKUR', NULL, 'SUKOYUWONO PALAAN NGAJUM', 19, NULL, NULL),
(456, 17, 'MARUWI', NULL, 'JL KAWI 94 SUKUN KEPANJEN', 19, NULL, NULL),
(457, 17, 'PRASETYO UTOMO', NULL, 'JL RAYA MANGUNREJO', 9, NULL, NULL),
(458, 17, 'PRIHANDOKO', NULL, 'JL HASYIM ASHARI PENARUKAN KEPANJEN', 11, NULL, NULL),
(459, 17, 'HASYIM', NULL, 'WONOREJO BANTUR', 19, NULL, NULL),
(460, 17, 'RATNA WILUJENG', NULL, 'DSN NGADILUWIH KEDUNGPENDARINGAN KEPANJEN', 3, NULL, NULL),
(461, 17, 'AWANG KARTADININGRAT', NULL, 'JL REGULO CEMPOKO MULYO KEPANJEN', 36, NULL, NULL),
(462, 17, 'A IQBAL KHITONI KURNIAWAN', NULL, 'PENANGGUNGAN KEPANJEN', 3, NULL, NULL),
(463, 17, 'AGUS SETIAWAN', NULL, 'JL LAWU KEPANJEN', 5, NULL, NULL),
(464, 17, 'SUKINI', NULL, 'TALANGAGUNG KEPANJEN', 0, NULL, NULL),
(465, 17, 'FATKUL MUIN', NULL, 'JL KAWI 72 CEPOKOMULYI KEPANJEN', 12, NULL, NULL),
(466, 17, 'TAUFIQ NURHASYIM', NULL, 'JL LAWU SUKUN 134 KEPANJEN', 4, NULL, NULL),
(467, 17, 'MUSLIMIN', NULL, 'DUSUN NGADILUWIH KEDUNGPENDARINGAN KEPANJEN', 5, NULL, NULL),
(468, 17, 'ZUSLI NUR M.U', NULL, 'NGEBRUK SUMBER PUCUNG', 14, NULL, NULL),
(469, 18, 'SLAMET WIYONO', NULL, 'JL TERATAI INDAH 237 CEPOKOMULYO', 38, NULL, NULL),
(470, 18, 'ALI FAUZI', NULL, 'JL SULTAN AGUNG 85 KEPANJEN', 22, NULL, NULL),
(471, 18, 'SRIATI', NULL, 'DSN LEGOK SUKOHARJO KEPANJEN', 25, NULL, NULL),
(472, 18, 'ARIS AFANDI', NULL, 'JL SUSURJI 15 KEPANJEN', 10, NULL, NULL),
(473, 18, 'MISTAR', NULL, 'UBALAN MAGUAN NGAJUM', 20, NULL, NULL),
(474, 18, 'ENDRI SUDRAJAD', NULL, 'JL SURUJI NO 9 KEPANJEN', 30, NULL, NULL),
(475, 18, 'SUPRIYADI', NULL, 'PENARUKAN KEPANJEN', 28, NULL, NULL),
(476, 18, 'MOCHAMAD FAUZI', NULL, 'SUMBERSARI PANGGUNGREJO KEPANJEN', 60, NULL, NULL),
(477, 18, 'MOH BUDI SANTOSO', NULL, 'JL SURUJI 15 KEPANJEN', 26, NULL, NULL),
(478, 18, 'BUDI SANTOSO', NULL, 'JL AGUS SALIM BANJAREJO PAGELARAN', 25, NULL, NULL),
(479, 18, 'MONA KARUNIA', NULL, 'JL RAYA TALANGAGUNG 09 KEPANJEN', 30, NULL, NULL),
(480, 18, 'DIDIN PERMANA', NULL, 'DUSUN KULON KALISUMBERMANJENG KULON', 17, NULL, NULL),
(481, 18, 'SUNARYO', NULL, 'DONOMULYO RT 09 RW 03', 30, NULL, NULL),
(482, 18, 'SUGENG PRASETYO ', NULL, 'PERUM JOYOGRAND BLOPK UNIGA C-5 MERJOSARI', 19, NULL, NULL),
(483, 18, 'AGUNG MUJIONO', NULL, 'DONOMULYO RT 07/RW 02 DONOMULYO', 10, NULL, NULL),
(484, 19, 'UNTUNG', NULL, 'JL SIDOMULYO 1 WANDANPURO BULULAWANG', 20, NULL, NULL),
(485, 19, 'SUGIANTO', NULL, 'JL P DIPONEGORO GADING BULULAWANG', 11, NULL, NULL),
(486, 19, 'AGUS TUMBA LAKASANA', NULL, 'JL SIDOMULYO I/23 WANDAPURO BULULAWANG', 15, NULL, NULL),
(487, 19, 'SUHADAK', NULL, 'JL SENTOSA 14 SEMPALWADAK BULULAWANG', 10, NULL, NULL),
(488, 19, 'MUHAMMAD YASIN', NULL, 'JL RAYA KREBET RT 11 RW 003 BULULAWANG', 10, NULL, NULL),
(489, 20, 'IRFAN ALI', NULL, 'JL DR. CIPTO VII NO 17. E BEDALI LAWANG', 6, NULL, NULL),
(490, 20, 'WARIANTO', NULL, 'JL INDROKILO KALIREJO LAWANG', 20, NULL, NULL),
(491, 20, 'WAHYU ALI', NULL, 'LAWANG', 10, NULL, NULL),
(492, 20, 'MOH NURHIDAYAT', NULL, 'SEMAMBUNG CAPANG PURWODADI', 6, NULL, NULL),
(493, 20, 'KURNIAWAN', NULL, 'JL HAMID RUSDI KETINDAN LAWANG', 15, NULL, NULL),
(494, 20, 'EDI PURWANTO', NULL, 'JL HAMID RUSDI 111 KETINDAN LAWANG', 10, NULL, NULL),
(495, 20, 'AL IMRON', NULL, 'JL DOROWATI BARAT MULYOARJO LAWANG', 10, NULL, NULL),
(496, 20, 'MOH BAMBANG SUGIANTO', NULL, 'JL SUMBERSUKO GG JAMBU LAWANG', 20, NULL, NULL),
(497, 20, 'SUMARDI', NULL, 'JL CANDI TLAGAWANGI MOJOLANGU LOWOKWARU', 5, NULL, NULL),
(498, 20, 'SUHARTONO', NULL, 'JL KERTAREJASA IIIB/131', 10, NULL, NULL),
(499, 20, 'BUDI SANTOSO', NULL, 'JL LAHOR PESANGGRAHAN BATU', 10, NULL, NULL),
(500, 20, 'AGUS JUNIANTO', NULL, 'JL DOROWATI SELATAN MULYOARJO RT 03 RW 010 LAWANG', 30, NULL, NULL),
(501, 20, 'TRIO MAULANA', NULL, 'JL DOROWATI SELATAN MULYOARJO RT 03 RW 010 LAWANG', 10, NULL, NULL),
(502, 20, 'OESMAN SYARIF', NULL, 'DUSUN SEMBUNG RT 02 RW 11 PARERREJO', 18, NULL, NULL),
(503, 20, 'MARSIDI', NULL, 'JL INDROKILO UTARA KALIREJO LAWANG RT 02/RW 11', 15, NULL, NULL),
(504, 20, 'AHMAD ROCHMAN', NULL, 'DUSUN SIMPING RT 04 RW 06 TURIREJO LAWANG', 8, NULL, NULL),
(505, 20, 'HARIS DWI KURNIAWAN', NULL, 'JL MASJID BARAT 10 CANDIRENGGO SINGOSARI', 50, NULL, NULL),
(506, 20, 'DIDIT SUBIYANTO', NULL, 'JL HAMID RUSDI 80 KETINDAN LAWANG', 15, NULL, NULL),
(507, 21, 'KUSNADI', NULL, 'JL TOHJOYO II/99', 14, NULL, NULL),
(508, 21, 'ABDUL WAHID', NULL, 'NGIJO KARANGPLOSO', 47, NULL, NULL),
(509, 21, 'MOCH SOLIKIN', NULL, 'JL RONGGOWUNI PANGENTAN SINGOSARI', 10, NULL, NULL),
(510, 21, 'DOMINGUS', NULL, 'JL ANUSOPATI 54 CANDIRENGGO SINGOSARI', 12, NULL, NULL),
(511, 21, 'MUHAMMAD ZAENAL ARIF', NULL, 'JL SUROPATI NO 279 LOSARI SINGOSARI', 15, NULL, NULL),
(512, 21, 'SUGENG RIYADI', NULL, 'DSN KEMBANG PURWOSARI SINGOSARI', 28, NULL, NULL),
(513, 21, 'SUWANTO', NULL, 'DUSUN GEBYAK SINGOSARI', 41, NULL, NULL),
(514, 21, 'PIPIN HANDOYO', NULL, 'PERUM ARDIMULYO BLOK JJ - 8', 17, NULL, NULL),
(515, 21, 'AGUS SUBECHAN HARIANTO', NULL, 'JL RONGGOLAWE 52 BPANGENTAN', 15, NULL, NULL),
(516, 21, 'MUHAMMAD DJUNAEDI', NULL, 'JL SUKAPURA NO 70 SAMAAN', 30, NULL, NULL),
(517, 22, 'MISERI BUDIONO', NULL, 'JL INDROKILO SELATAN BEDALI LAWANG', 30, NULL, NULL),
(518, 22, 'WAHYUDI', NULL, 'KRAJAN SELATAN SUMBER PORONGLAWANG', 70, NULL, NULL),
(519, 23, 'Rudianto', NULL, 'Jl. Diponegoro I / 63 B RT.01 RW.11 Lawang', 21, NULL, NULL),
(520, 23, 'Nafi  Hansa ', NULL, 'Jl. Pungkur Argo gg.Bhayangkara 175 RT.04 Rw.08 La', 34, NULL, NULL),
(521, 23, 'Paiman', NULL, 'Jl. Anjasmoro RT.01 RW.03 Turirejo Lawang', 28, NULL, NULL),
(522, 23, 'Hadi Mulyono', NULL, 'Dsn. Semambung RT.01 RW.12 Ds. Capang Kec. Purwoda', 24, NULL, NULL),
(523, 23, 'Heru Sutikno', NULL, 'Jl. Ketindan gg  Taruna i/18 RT.03 RW.05 Lawang', 27, NULL, NULL),
(524, 23, 'Khoirul Huda', NULL, 'Jl. Ketindan 71 RT.02 RW.03 Lawang', 30, NULL, NULL),
(525, 23, 'Imung Sugianto', NULL, 'Jl. MH Thamrin gg Bhayangkara 125 Rt.04 RW.08 Lawa', 8, NULL, NULL),
(526, 23, 'Sunarto', NULL, 'Jl.Wisnuwardhana RT.12 RW.07 Tumpang', 32, NULL, NULL),
(527, 23, 'Sugiono', NULL, 'Jl. Bima Sakti 1/3 RT.04 RW.06 Lawang', 37, NULL, NULL),
(528, 23, 'Agus SH', NULL, 'Jl. Ronggolawe 52 B RT.07 RW.04 lawang', 17, NULL, NULL),
(529, 23, 'Suryadi Setianto', NULL, 'Jl. Sumber wuni RT.05 RW.03 Kalirejo Lawang', 19, NULL, NULL),
(530, 23, 'Irfan Ali', NULL, 'Jl. Dr.Cipto VII/17 E Lawang', 23, NULL, NULL),
(531, 23, 'Rochman Salim', NULL, 'Jl. Masjid Rt.03 Rw.01 Randu agung Singosari', 27, NULL, NULL),
(532, 24, 'MULYONO ASIH', NULL, 'JL HASANUDIN JUNREJO', 15, NULL, NULL),
(533, 24, 'PAIRI BUDIONO', NULL, 'JL MULYOREJO NO 3 JETAKLOR MULYOAGUNG DAU', 0, NULL, NULL),
(534, 24, 'BAMBANG SUHARIYANTO', NULL, 'MOJOREJO PENDEM JUNREJO', 0, NULL, NULL),
(535, 24, 'DWI WIDYA WIBOWO', NULL, 'JL RAYA MULYO AGUNG NO 264 SENGKALING', 60, NULL, NULL),
(536, 24, 'ASMARI', NULL, 'JL TEGAL GONDO PENDEM JUNREJO', 52, NULL, NULL),
(537, 24, 'PUTRO', NULL, '', 14, NULL, NULL),
(538, 24, 'OMAN ABDUL ROHMAN', NULL, 'JL RAYA TLOGOMAS VI/16 LOWOKWARU', 10, NULL, NULL),
(539, 24, 'ROH PAULUS SLAMET', NULL, 'DSN JUNWATU JUNREJO BATU', 15, NULL, NULL),
(540, 24, 'KUSNADI', NULL, 'JL WILIS TORONGREJO BATU', 40, NULL, NULL),
(541, 24, 'SLAMET BUDI SANTOSO', NULL, 'JL MARGOJOYO III/15', 10, NULL, NULL),
(542, 24, 'DIDIK KUSWOYO', NULL, 'JL PATIMURA TEMAS BATU', 12, NULL, NULL),
(543, 24, 'MISTINAH', NULL, 'DSN LESES NGIJO KARANGPLOSO', 25, NULL, NULL),
(544, 24, 'ELVIN EDI RIYANTO', NULL, 'JL P DIPONEGORO 20 GOROMOYO KARANGPLOSO', 25, NULL, NULL),
(545, 24, 'YANTI SRI RAHAYU', NULL, 'JL WIJAYA KUSUMA MULYOAGUNG DAU', 20, NULL, NULL),
(546, 24, 'IRWAN LUTDIN', NULL, 'DSN JUNGGO TULUNGREJO BUMIAJI BATU', 40, NULL, NULL),
(547, 24, 'SUPRIYANTO', NULL, 'JL MARTOREJO 373 ARENG ARENG JUNREJO', 10, NULL, NULL),
(548, 24, 'SUMADI', NULL, 'DSN SEMANDING DAU', 10, NULL, NULL),
(549, 24, 'EKO SANTOSO', NULL, 'DADAP TULIS DALAM', 10, NULL, NULL),
(550, 24, 'DWI WIDYO WIBOWO', NULL, 'JL RAYA MULYOAGUNG 264 DAU', 60, NULL, NULL),
(551, 24, 'TUSWO WIDODO', NULL, 'JL RAYA DERMO 20 MULYOAGUNG DAU', 10, NULL, NULL),
(552, 25, 'ADY SUSENO', NULL, 'JL MELATI 17 PESANGGRAHAN BATU', 12, NULL, NULL),
(553, 25, 'DWI WENI WIDIANTO', NULL, 'JL BRANTAS GG V SISIR BATU', 25, NULL, NULL),
(554, 25, 'NANANG NOVIANTO', NULL, 'JL BATOK 27 SISIR BATU', 13, NULL, NULL),
(555, 25, 'SYAIFUL AKHIRIN', NULL, 'JL LESTI UTARA NGAGLIK BATU', 10, NULL, NULL),
(556, 25, 'IWAN SURYANTO', NULL, 'JL BEJO 15 SISIR BATU', 20, NULL, NULL),
(557, 25, 'HERI WIDIANTO', NULL, 'JL SUROPATI PESANGGRAHAN BATU', 20, NULL, NULL),
(558, 25, 'TRI YULIANTO', NULL, 'JL WUKIR 29 BATU', 15, NULL, NULL),
(559, 25, 'SUBAKIR', NULL, 'JL JOMBANG NO 732 KANDANGAN', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `level` int(2) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `pass`, `level`, `fullname`, `email`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1, 'administrator', 'admin@oke.com'),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 2, 'pengguna', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agen`
--
ALTER TABLE `tbl_agen`
  ADD PRIMARY KEY (`id_agen`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `tbl_daerah`
--
ALTER TABLE `tbl_daerah`
  ADD PRIMARY KEY (`id_daerah`);

--
-- Indexes for table `tbl_striker`
--
ALTER TABLE `tbl_striker`
  ADD PRIMARY KEY (`id_striker`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_agen`
--
ALTER TABLE `tbl_agen`
  MODIFY `id_agen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;
--
-- AUTO_INCREMENT for table `tbl_daerah`
--
ALTER TABLE `tbl_daerah`
  MODIFY `id_daerah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_striker`
--
ALTER TABLE `tbl_striker`
  MODIFY `id_striker` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
