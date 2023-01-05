-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2023 at 11:07 AM
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
-- Database: `dbmahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tdosen`
--

CREATE TABLE `tdosen` (
  `KdDosen` varchar(20) NOT NULL,
  `NamaDosen` varchar(40) DEFAULT NULL,
  `MataKuliah` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tdosen`
--

INSERT INTO `tdosen` (`KdDosen`, `NamaDosen`, `MataKuliah`) VALUES
('D001', 'DARTO', 'MK007'),
('D002', 'HERIS P', 'MK006'),
('D003', 'FIKRI', 'MK002'),
('D004', 'PRAMADITYA', 'MK005'),
('D005', 'HARIS', 'MK010'),
('D006', 'KUKUH', 'MK006');

-- --------------------------------------------------------

--
-- Table structure for table `tkelas`
--

CREATE TABLE `tkelas` (
  `Kelas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tkelas`
--

INSERT INTO `tkelas` (`Kelas`) VALUES
('3A'),
('3B'),
('3C'),
('4A'),
('4B'),
('4C');

-- --------------------------------------------------------

--
-- Table structure for table `tmahasiswa`
--

CREATE TABLE `tmahasiswa` (
  `NIM` varchar(16) NOT NULL,
  `NamaLengkap` varchar(50) DEFAULT NULL,
  `JenisKelamin` varchar(10) DEFAULT NULL,
  `TglLahir` date DEFAULT NULL,
  `AlamatAsal` varchar(60) DEFAULT NULL,
  `KotaAsal` varchar(30) DEFAULT NULL,
  `AlamatMalang` varchar(60) DEFAULT NULL,
  `Agama` varchar(30) DEFAULT NULL,
  `TahunLulusSMA` int(6) DEFAULT NULL,
  `ProgramKelas` varchar(20) DEFAULT NULL,
  `email` longtext DEFAULT NULL,
  `KELAS` varchar(100) DEFAULT NULL,
  `pwdlogin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tmahasiswa`
--

INSERT INTO `tmahasiswa` (`NIM`, `NamaLengkap`, `JenisKelamin`, `TglLahir`, `AlamatAsal`, `KotaAsal`, `AlamatMalang`, `Agama`, `TahunLulusSMA`, `ProgramKelas`, `email`, `KELAS`, `pwdlogin`) VALUES
('07830072', 'ERSHAD RAHMAN IBRAHIM', 'LAKI-LAKI', '1998-10-07', 'JL IR RAIS IX/406', 'MALANG', 'JL IR RAIS IX/406', 'Islam', 2007, 'REGULAR', NULL, '3B', '07830072'),
('07830088', 'FEBRY ROSSYCHUL Iman', 'LAKI-LAKI', '1989-02-24', 'Jl. MUHARTO', 'MALANG', 'JL. MUHARTO', 'Islam', 2007, 'REGULAR', 'febryrossychul_iman@yahoo.com#http://febryrossychul_iman@yahoo.com#', '3B', '07830088'),
('08830004', 'NENZY APRILIANINGRUM', 'PEREMPUAN', '1990-04-12', 'JL.DANAU SENTANI TIMUR 3 H1 Q9', 'MALANG', 'JL.DANAU SENTANI TIMUR 3 H1 Q9', 'Islam', 2008, 'REGULAR', 'nenzy aprilianingrum@yahoo.com#http://nenzy aprilianingrum@yahoo.com#', '3A', ''),
('08830015', 'BAGUS ALFIN HIDAYAT', 'LAKI-LAKI', '1989-08-21', 'JL.MASTRIP 8', 'LUMAJANG', 'JL.KRESNO POLEHAN', 'Islam', 2008, 'REGULAR', 'mr.bags_piero@rocketmail.com#http://mr.bags_piero@rocketmail.com#', '3B', ''),
('08830020', 'MILKI HARFIN', 'LAKI-LAKI', '1990-05-24', 'JL.PISANG AGUNG', 'MASALEMBU', 'JL.PISANG AGUNG', 'Islam', 2008, 'REGULAR', 'r4dar_90@yahoo.com#http://r4dar_90@yahoo.com#', '3B', ''),
('08830031', 'Yunita dwi wulandari', 'PEREMPUAN', '1990-06-27', 'Jl.Danau Bratan timur IV/C-18', 'Malang', 'Jl.Danau Bratan Timur IV/C-18', 'Islam', 2008, 'REGULAR', 'rooneyta_mcloughlin@yahoo.com#http://rooneyta_mcloughlin@yahoo.com#', '3A', ''),
('08830052', 'KRISTINA NUGRAHENI K', 'PEREMPUAN', '1990-07-07', 'JL. PAHLAWAN 11 MOJOWARNO', 'JOMBANG', 'PISANG CANDI 102B(BELAKANG BM)', 'Kristen', 2008, 'REGULAR', 'hega_moedhza@yahoo.com#http://hega_moedhza@yahoo.com#', '3A', ''),
('08830060', 'NITA ANGGRAINI', 'PEREMPUAN', '1990-04-01', 'JL.DANAU SENTANI TIM II H1/I28', 'MALANG', 'JL.DANAU SENTANI TIM II H1/I28', 'Islam', 2008, 'REGULAR', 'nonietha_akazurie@yahoo.com#http://nonietha_akazurie@yahoo.com#', '3A', ''),
('08830061', 'AGUS BACHTIARO', 'LAKI-LAKI', '1987-10-21', 'KOTALAMA', 'MALUKU', 'JL.PISANG CANDI BARAT', 'Islam', 2006, 'REGULAR', 'gust11_102yahoo.co.id#http://gust11_102yahoo.co.id#', '3A', ''),
('08830069', 'didik Santoso', 'LAKI-LAKI', '1989-11-27', 'jl. Cengkeh 11a', 'malang', 'jl. Cengkeh 11a', 'Islam', 2008, 'REGULAR', 'orang.strez@yahoo.com#http://orang.strez@yahoo.com#', '3A', ''),
('08830079', 'soleman b. analalo', 'LAKI-LAKI', '1989-07-04', 'waikabubak, NTT', 'sUmba', 'JL.kelapa sawit', 'Kristen', 2008, 'REGULAR', 'ratewan@ymail.com#http://ratewan@ymail.com#', '3A', ''),
('08830089', 'FELISIANUS', 'LAKI-LAKI', '1987-10-31', 'JL.SOSOK KALBAR', 'SANGGAU KAPUAS', 'JL.PURNAMA INDAH DIENG', 'Katolik', NULL, 'REGULAR', NULL, '3A', ''),
('08830093', 'PAULUS PARESSLER KERAF', 'LAKI-LAKI', '1989-09-12', 'JL.ELOPADA', 'SUMBA B DAYA', 'JL.PISANG CANDI', 'Katolik', 2008, 'REGULAR', 'Glend_keraf@yahoo.com#http://Glend_keraf@yahoo.com#', '3A', ''),
('08830094', 'LAURENS ROY FURAY', 'LAKI-LAKI', '1990-07-03', 'jl.cendrawasi', 'MALANG', 'JL.PISANG CANDI BARAT NO 80', 'Kristen', 2008, 'REGULAR', 'laurensroy@yahoo.com#http://laurensroy@yahoo.com#', '3A', ''),
('08830101', 'Aquelino Da Costa X.', 'LAKI-LAKI', '1987-07-27', 'DILI', 'DILI', 'jl.SMPG MG MENDUNG 32', 'Katolik', 2008, 'REGULAR', 'amx.xavier@yahoo.com#http://amx.xavier@yahoo.com#', '3B', ''),
('08830104', 'fransiskus k assan', 'LAKI-LAKI', '1989-01-31', 'larantuka-ntt', 'larantuka', 'jl.gunung agung utara 13', 'Katolik', 2007, 'REGULAR', NULL, '3A', ''),
('08830105', 'FIDELIS NARDI', 'LAKI-LAKI', '1988-09-13', 'FLORES, NTT', 'MABAR', 'JL.DIENG', 'Katolik', 2006, 'REGULAR', 'narfidel@.co.id#http://narfidel@.co.id#', '3A', ''),
('08830116', 'NURKHOLIK', 'LAKI-LAKI', '1988-01-25', 'PELALAWAN-RIAU', 'SOREK', 'JL.Gading Pesantren', 'Islam', 2006, 'REGULAR', 'blackwimpie@yahoo.co.id#http://blackwimpie@yahoo.co.id#', '3B', ''),
('08830117', 'ANDREAS TADU', 'LAKI-LAKI', '1987-01-03', 'FLORES-NTT', 'MARTIM', 'JL.PISANG CANDI', 'Katolik', 2008, 'REGULAR', NULL, '3B', ''),
('08830118', 'Luthfi Amin', 'LAKI-LAKI', '1990-06-16', 'Sukun Pondok Indah blok i-8a', 'Malang', NULL, 'Islam', 2008, 'REGULAR', 'initialla@yahoo.co.id#http://initialla@yahoo.co.id#', '3B', ''),
('08830122', 'yoshia dewa krista', 'LAKI-LAKI', '1990-02-20', 'jl suprapto gg.plantan1 51', 'sampit', 'jl.pisang candi barat 80', 'Kristen', 2008, 'REGULAR', 'kristadewa@yahoo.com#http://kristadewa@yahoo.com#', '3A', ''),
('08830125', 'HENRY DHION', 'LAKI-LAKI', '1989-11-30', 'JATIADI, GENDING', 'PROBOLINGGO', 'JL. SINABUNG 2/ 09', 'Islam', 2008, 'REGULAR', 'Dhion,09@gmail.com#http://Dhion,09@gmail.com#', '3B', ''),
('08830129', 'KAROLINA', 'PEREMPUAN', '1987-03-06', 'FLORES-NTT', 'MARTIM', 'JL.SINGGALANG 26', 'Katolik', 2006, 'REGULAR', NULL, '3B', ''),
('08830141', 'YUS DWI PUTRA KARIAM', 'LAKI-LAKI', '1988-06-22', 'WAIKABUBAK/KMPUNG BARU', 'SUMBA', 'JLN.SIMPANG MEGAMENDUNG/NMR4A0', 'Kristen', 2008, 'REGULAR', 'kariamyus@yahoo.com#http://kariamyus@yahoo.com#', '3B', ''),
('08830144', 'DEWI SETYOWATI', 'PEREMPUAN', '1989-03-16', 'JL.S.SUPRIADI 6/2379', 'MALANG', 'BUKIT DIENG KAV.3', 'Islam', 2007, 'REGULAR', NULL, '3B', ''),
('08830148', 'YUSUF', 'LAKI-LAKI', '1986-10-13', 'BIMA NTB', 'BIMA', 'JL JOYO SURYO 631 B', 'Islam', 2006, 'REGULAR', 'BOBYNGALI@YAHOO.CO.ID#http://BOBYNGALI@YAHOO.CO.ID#', '3B', ''),
('08830150', 'JAIME BRANCO', 'LAKI-LAKI', '1985-11-05', 'TILES', 'LOSPALOS', 'JL.SMM', 'Katolik', 2003, 'REGULAR', 'ajaimoco@yahoo.com#http://ajaimoco@yahoo.com#', '3B', ''),
('08830151', 'RIMA ERMAWATI', 'PEREMPUAN', '1989-01-27', 'JL SUROPATI 41 BATU', 'MALANG', NULL, 'Islam', 2008, 'REGULAR', NULL, '3B', ''),
('08830152', 'julius r. soan', 'LAKI-LAKI', '1989-12-09', 'waikabubak-sumba barat', 'waikabubak', 'jl. Simpang Megamendung1 no.4', 'Kristen', 2008, 'REGULAR', NULL, '3B', ''),
('08830154', '0FELIA DA COSTA SORIANO', 'PEREMPUAN', '1987-09-27', 'TIMOR LESTE', 'LIQUISA', 'Jl.Bendungan Bening no 16', 'Katolik', NULL, 'REGULAR', NULL, '3B', ''),
('08830157', 'Karina Galih', 'PEREMPUAN', '1989-10-20', 'Jln.Suropati 44 Batu', 'Jakarta', NULL, 'Katolik', 2008, 'REGULAR', NULL, '3B', ''),
('08830159', 'NASRULLOH', 'LAKI-LAKI', '1989-08-20', 'JL. Raya Tajinan 87', 'MALANG', 'Jl. Raya Tajinan 87', 'Islam', 2007, 'REGULAR', 'mannasrul@gmail.com#http://mannasrul@gmail.com#', '3B', ''),
('08830162', 'HUBERTUS LUIS', 'LAKI-LAKI', '1987-11-23', 'JL.GAJAH MADA', 'MAUMERE', 'JL.PISANG CANDI', 'Katolik', 2007, 'REGULAR', 'rusty_guid@yahoo.com#http://rusty_guid@yahoo.com#', '3A', ''),
('08830163', 'dani bagus wahyu wijaya', 'LAKI-LAKI', '1990-01-11', 'jl mesuji 2', 'malang', 'jl. Mesuji 2', 'Islam', 2008, 'REGULAR', 'ace_d90@yahoo.com#http://ace_d90@yahoo.com#', '3B', ''),
('08830169', 'DEDY TRI HARIYONO', 'LAKI-LAKI', '1988-09-10', 'BABAT', 'LAMONGAN', 'JL PISANG AGUNG', 'Islam', 2007, 'REGULAR', 'dey_diy62@yahoo.co.id#http://dey_diy62@yahoo.co.id#', '3B', ''),
('08830173', 'ASTRID PUTRI', 'PEREMPUAN', '1990-10-06', 'JL.WARINOI IV/18', 'MALANG', 'JL.WARINOI IV/18', 'Islam', 2008, 'REGULAR', 'astridh.cindtha@yahoo.com#http://astridh.cindtha@yahoo.com#', '3B', ''),
('08830183', 'ANDIK ISFIANTO', 'LAKI-LAKI', '1987-05-14', 'JL KLAYATAN 67', 'MALANG', 'JL KEBONAGUNG 28', 'Islam', 2006, 'REGULAR', 'luvi_1an@yahoo.com#http://luvi_1an@yahoo.com#', '3B', ''),
('08831000', 'Heno Leqapi', 'PEREMPUAN', '1986-09-22', 'JL. Maka', 'MAUMERE', NULL, 'KATOLIK', 2006, 'AKSELERASI', NULL, '3C', ''),
('08831001', 'Nuqe Hoqeme', 'PEREMPUAN', '1986-09-30', 'JL. Devu', 'SAMPIT', NULL, 'KATOLIK', 2006, 'AKSELERASI', NULL, '3C', ''),
('08831002', 'Ruxe Yoqofa', 'PEREMPUAN', '1990-02-20', 'JL. Zadi', 'MALUKU', NULL, 'ISLAM', 2008, 'AKSELERASI', NULL, '3C', ''),
('08831003', 'Tibu Hiqeya', 'PEREMPUAN', '1987-10-21', 'JL. Ceba', 'MABAR', NULL, 'KRISTEN', 2008, 'AKSELERASI', NULL, '3C', ''),
('08831004', 'Quyi Sawomu', 'PEREMPUAN', '1988-09-13', 'JL. Geda', 'SUMBA', NULL, 'KATOLIK', 2007, 'AKSELERASI', NULL, '3C', ''),
('08831005', 'Buto Hakebe', 'PEREMPUAN', '1989-07-04', 'JL. Maye', 'MALANG', NULL, 'KATOLIK', 2007, 'AKSELERASI', NULL, '3C', ''),
('08831006', 'Vumi Bimega', 'LAKI-LAKI', '1989-11-27', 'JL. Jeja', 'MALANG', NULL, 'KRISTEN', 2008, 'AKSELERASI', NULL, '3C', ''),
('08831007', 'Riqe Jolike', 'PEREMPUAN', '1989-02-24', 'JL. Bogo', 'LAMONGAN', NULL, 'ISLAM', 2007, 'AKSELERASI', NULL, '3C', ''),
('08831008', 'Fedo Juhage', 'PEREMPUAN', '1986-09-22', 'JL. Vozi', 'PROBOLINGGO', NULL, 'KATOLIK', 2006, 'AKSELERASI', NULL, '3C', ''),
('08831009', 'Wufo Kejufa', 'LAKI-LAKI', '1986-09-30', 'JL. Nomi', 'MALANG', NULL, 'KRISTEN', 2006, 'AKSELERASI', NULL, '3C', ''),
('08831010', 'Boda Qivubo', 'LAKI-LAKI', '1990-02-20', 'JL. Buxo', 'MAUMERE', NULL, 'ISLAM', 2008, 'AKSELERASI', NULL, '3C', ''),
('08831011', 'Nosi Yedimo', 'PEREMPUAN', '1987-10-21', 'JL. Dubo', 'SAMPIT', NULL, 'ISLAM', 2008, 'AKSELERASI', NULL, '3C', ''),
('08831012', 'Jifo Mopece', 'PEREMPUAN', '1986-09-22', 'JL. Hele', 'MALUKU', NULL, 'ISLAM', 2007, 'AKSELERASI', NULL, '3C', ''),
('08831013', 'Fode Piluri', 'LAKI-LAKI', '1986-09-30', 'JL. Cozi', 'MABAR', NULL, 'ISLAM', 2007, 'AKSELERASI', NULL, '3C', ''),
('08831014', 'Suge Mipiwi', 'PEREMPUAN', '1990-02-20', 'JL. Beka', 'SUMBA', NULL, 'KATOLIK', 2008, 'AKSELERASI', NULL, '3C', ''),
('08831015', 'Piqo Wagedo', 'LAKI-LAKI', '1987-10-21', 'JL. Wina', 'MALANG', NULL, 'KATOLIK', 2007, 'AKSELERASI', NULL, '3C', ''),
('08838026', 'FRANSISKUS SOLANUS DONI', 'LAKI-LAKI', '1986-09-22', 'LEMBATA - NTT', 'MALANG', 'JL PISANG CANDI BARAT 15', 'Katolik', 2006, 'REGULAR', 'vicky_22@yahoo.com#http://vicky_22@yahoo.com#', '3A', ''),
('08838070', 'GABRIEL NONG MANS MANEK', 'LAKI-LAKI', '1986-09-30', 'MAUMERE, NTT', 'MAUMERE', 'JL JOYO PRANOTO', 'Katolik', 2005, 'REGULAR', 'glennzs@yahoo.com#http://glennzs@yahoo.com#', '3A', ''),
('11111', 'textbox', 'LAKI-LAKI', '1986-09-30', 'RichTextBox', 'textbox', 'RichTextBox', 'ISLAM', 0, 'REGULAR', 'textbox', '3A', '11111'),
('121342', 'Dyah Yuli', 'PEREMPUAN', '2002-07-02', 'Jl. Klayatan GG.1', 'Malang', 'Jl. Klayatan GG.1', 'ISLAM', 2020, 'AKSELERASI', 'dyip@gmail.com', '3B', '121342'),
('1214125', 'Rz', 'LAKI-LAKI', '2004-09-07', 'rz', 'Surabaya', 'rz', 'KEPERCAYAAN', 2000, 'AKSELERASI', '31r1@gmail.com', '3A', '1214125'),
('242421', 'Rizkyar ', 'LAKI-LAKI', '2000-08-21', 'Jl. Danau Bratan V G5D/5 No.05', 'MALANG', 'Jl. Danau Bratan V G5D/5 No.05', 'ISLAM', 2018, 'AKSELERASI', 'rzar@gmail.com', '3A', '242421'),
('324234', 'gtgtg', 'PEREMPUAN', '2000-06-03', 'RichTextBox', 'textbox', 'RichTextBox', 'KRISTEN', 3343, 'REGULAR', 'textbox', '3B', '324234'),
('34344545', 'textbox', 'LAKI-LAKI', '2019-07-17', 'RichTextBox', 'textbox', 'RichTextBox', 'ISLAM', 3434, 'AKSELERASI', 'textbox', '3A', '34344545'),
('443241', 'Rizky AR', 'LAKI-LAKI', '2000-02-21', 'Jl. Menuju Sukses', 'Jakarta', '', 'ISLAM', 2017, 'AKSELERASI', 'RAR@gmail.com', '3B', '443241'),
('4444', 'textbox', 'LAKI-LAKI', '2020-06-02', 'RichTextBox', 'textbox', 'RichTextBox', 'KRISTEN', 222, 'REGULAR', 'textbox', '3A', '4444'),
('5555', 'sdsdsd', 'LAKI-LAKI', '2020-06-07', 'asdsadsa', 'asdsad', 'asdsad', 'KRISTEN', 3434, 'REGULAR', '234234afd', '3A', '5555'),
('666666', 'SUSI', 'PEREMPUAN', '2000-02-03', 'JL. JALAN', 'BOGOR', 'JL. BUNTU', 'ISLAM', 2016, 'REGULAR', 'emailnya@anu.com', '3A', '666666'),
('666777', 'BUDI', 'LAKI-LAKI', '1999-06-06', 'JL. ASAL', 'SURABAYA', 'JL. MM', 'KRISTEN', 2019, 'AKSELERASI', '', '3B', '666777'),
('cbox', 'cbox', 'PEREMPUAN', '2002-05-13', 'cbox', 'cbox', 'cbox', 'ISLAM', 2009, 'AKSELERASI', 'cbox', '4B', 'cbox'),
('textbox', 'textbox', 'LAKI-LAKI', '2020-06-06', 'RichTextBox', 'textbox', 'RichTextBox', 'KRISTEN', 222, 'REGULAR', 'textbox', '3B', 'textbox');

-- --------------------------------------------------------

--
-- Table structure for table `tmatakuliah`
--

CREATE TABLE `tmatakuliah` (
  `KdMataKuliah` varchar(10) NOT NULL,
  `MataKuliah` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tmatakuliah`
--

INSERT INTO `tmatakuliah` (`KdMataKuliah`, `MataKuliah`) VALUES
('MK005', 'ANIMASI'),
('MK001', 'APLIKASI BASIS DATA 1'),
('MK002', 'APLIKASI BASIS DATA 2'),
('MK003', 'BASIS DATA'),
('MK010', 'DESIGN GRAFIS'),
('MK009', 'MANAJEMEN'),
('MK008', 'MATEMATIKA'),
('MK006', 'MS EXCEL'),
('MK007', 'MS WORD'),
('MK004', 'PERANCANGAN SISTEM');

-- --------------------------------------------------------

--
-- Table structure for table `tnilai`
--

CREATE TABLE `tnilai` (
  `NIM` varchar(16) NOT NULL,
  `MATAKULIAH` varchar(10) NOT NULL,
  `QUIZ` tinyint(3) UNSIGNED DEFAULT NULL,
  `UTS` tinyint(3) UNSIGNED DEFAULT NULL,
  `UAS` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tnilai`
--

INSERT INTO `tnilai` (`NIM`, `MATAKULIAH`, `QUIZ`, `UTS`, `UAS`) VALUES
('07830072', 'MK001', 57, 50, 60),
('07830072', 'MK002', 31, 92, 20),
('07830072', 'MK003', 78, 20, 57),
('07830072', 'MK004', 85, 28, 21),
('07830072', 'MK005', 81, 20, 24),
('07830072', 'MK006', 35, 81, 48),
('07830072', 'MK007', 52, 45, 23),
('07830072', 'MK008', 49, 63, 41),
('07830072', 'MK009', 61, 41, 52),
('07830072', 'MK010', 73, 39, 58),
('07830088', 'MK001', 37, 33, 43),
('07830088', 'MK002', 62, 36, 42),
('07830088', 'MK003', 98, 25, 79),
('07830088', 'MK004', 26, 44, 25),
('07830088', 'MK005', 42, 30, 49),
('07830088', 'MK006', 42, 40, 58),
('07830088', 'MK007', 85, 39, 47),
('07830088', 'MK008', 49, 28, 60),
('07830088', 'MK009', 39, 66, 81),
('07830088', 'MK010', 84, 26, 25),
('08830004', 'MK001', 66, 60, 66),
('08830004', 'MK002', 59, 74, 62),
('08830004', 'MK003', 66, 33, 39),
('08830004', 'MK004', 99, 52, 51),
('08830004', 'MK005', 65, 26, 28),
('08830004', 'MK006', 36, 73, 25),
('08830004', 'MK007', 59, 42, 39),
('08830004', 'MK008', 44, 25, 31),
('08830004', 'MK009', 47, 22, 54),
('08830004', 'MK010', 34, 36, 24),
('08830015', 'MK001', 91, 46, 33),
('08830015', 'MK002', 46, 61, 40),
('08830015', 'MK003', 43, 88, 67),
('08830015', 'MK004', 40, 39, 39),
('08830015', 'MK005', 22, 77, 49),
('08830015', 'MK006', 62, 48, 56),
('08830015', 'MK007', 31, 26, 51),
('08830015', 'MK008', 63, 33, 33),
('08830015', 'MK009', 33, 40, 86),
('08830015', 'MK010', 52, 85, 23),
('08830020', 'MK001', 57, 61, 90),
('08830020', 'MK002', 42, 20, 75),
('08830020', 'MK003', 85, 73, 92),
('08830020', 'MK004', 37, 75, 79),
('08830020', 'MK005', 74, 53, 52),
('08830020', 'MK006', 32, 43, 71),
('08830020', 'MK007', 33, 34, 55),
('08830020', 'MK008', 95, 81, 58),
('08830020', 'MK009', 55, 72, 53),
('08830020', 'MK010', 57, 28, 44),
('08830031', 'MK001', 20, 43, 28),
('08830031', 'MK002', 42, 50, 51),
('08830031', 'MK003', 24, 77, 90),
('08830031', 'MK004', 35, 28, 84),
('08830031', 'MK005', 21, 25, 35),
('08830031', 'MK006', 71, 58, 37),
('08830031', 'MK007', 71, 65, 84),
('08830031', 'MK008', 59, 23, 89),
('08830031', 'MK009', 36, 36, 40),
('08830031', 'MK010', 95, 40, 77),
('08830052', 'MK001', 63, 32, 83),
('08830052', 'MK002', 50, 21, 54),
('08830052', 'MK003', 84, 77, 65),
('08830052', 'MK004', 78, 71, 38),
('08830052', 'MK005', 61, 20, 29),
('08830052', 'MK006', 49, 84, 73),
('08830052', 'MK007', 61, 26, 27),
('08830052', 'MK008', 79, 37, 23),
('08830052', 'MK009', 62, 30, 80),
('08830052', 'MK010', 43, 95, 85),
('08830060', 'MK001', 91, 45, 28),
('08830060', 'MK002', 70, 60, 48),
('08830060', 'MK003', 89, 57, 66),
('08830060', 'MK004', 82, 41, 33),
('08830060', 'MK005', 77, 23, 23),
('08830060', 'MK006', 38, 26, 45),
('08830060', 'MK007', 28, 64, 28),
('08830060', 'MK008', 26, 31, 58),
('08830060', 'MK009', 22, 24, 60),
('08830060', 'MK010', 87, 89, 33),
('08830061', 'MK001', 73, 50, 61),
('08830061', 'MK002', 53, 74, 93),
('08830061', 'MK003', 57, 33, 34),
('08830061', 'MK004', 56, 34, 37),
('08830061', 'MK005', 55, 48, 82),
('08830061', 'MK006', 97, 24, 41),
('08830061', 'MK007', 59, 29, 33),
('08830061', 'MK008', 20, 29, 44),
('08830061', 'MK009', 74, 42, 24),
('08830061', 'MK010', 72, 61, 73),
('08830069', 'MK001', 29, 42, 44),
('08830069', 'MK002', 75, 49, 28),
('08830069', 'MK003', 47, 71, 34),
('08830069', 'MK004', 30, 97, 80),
('08830069', 'MK005', 52, 41, 53),
('08830069', 'MK006', 81, 44, 55),
('08830069', 'MK007', 62, 38, 88),
('08830069', 'MK008', 42, 20, 24),
('08830069', 'MK009', 33, 76, 50),
('08830069', 'MK010', 48, 66, 28),
('08830079', 'MK001', 22, 64, 26),
('08830079', 'MK002', 20, 70, 37),
('08830079', 'MK003', 88, 46, 39),
('08830079', 'MK004', 36, 30, 37),
('08830079', 'MK005', 24, 37, 95),
('08830079', 'MK006', 69, 29, 97),
('08830079', 'MK007', 43, 88, 27),
('08830079', 'MK008', 97, 85, 28),
('08830079', 'MK009', 98, 65, 27),
('08830079', 'MK010', 28, 59, 31),
('08830089', 'MK001', 58, 80, 48),
('08830089', 'MK002', 69, 41, 57),
('08830089', 'MK003', 69, 46, 81),
('08830089', 'MK004', 32, 35, 21),
('08830089', 'MK005', 90, 94, 75),
('08830089', 'MK006', 45, 92, 96),
('08830089', 'MK007', 34, 88, 73),
('08830089', 'MK008', 75, 67, 42),
('08830089', 'MK009', 28, 46, 35),
('08830089', 'MK010', 44, 32, 46),
('08830094', 'MK001', 39, 52, 43),
('08830094', 'MK002', 47, 38, 88),
('08830094', 'MK003', 56, 60, 42),
('08830094', 'MK004', 25, 20, 57),
('08830094', 'MK005', 35, 43, 86),
('08830094', 'MK006', 90, 98, 65),
('08830094', 'MK007', 92, 53, 54),
('08830094', 'MK008', 51, 71, 50),
('08830094', 'MK009', 89, 88, 40),
('08830094', 'MK010', 22, 21, 24),
('08830101', 'MK001', 63, 24, 47),
('08830101', 'MK002', 41, 64, 52),
('08830101', 'MK003', 33, 51, 24),
('08830101', 'MK004', 45, 45, 61),
('08830101', 'MK005', 33, 35, 96),
('08830101', 'MK006', 60, 52, 77),
('08830101', 'MK007', 75, 28, 84),
('08830101', 'MK008', 28, 40, 88),
('08830101', 'MK009', 41, 56, 37),
('08830101', 'MK010', 22, 91, 49),
('08830104', 'MK001', 53, 78, 22),
('08830104', 'MK002', 55, 29, 59),
('08830104', 'MK003', 29, 99, 37),
('08830104', 'MK004', 22, 89, 32),
('08830104', 'MK005', 25, 24, 26),
('08830104', 'MK006', 31, 67, 58),
('08830104', 'MK007', 30, 28, 49),
('08830104', 'MK008', 25, 22, 86),
('08830104', 'MK009', 32, 32, 59),
('08830104', 'MK010', 30, 95, 69),
('08830105', 'MK001', 43, 33, 21),
('08830105', 'MK002', 49, 28, 92),
('08830105', 'MK003', 34, 78, 26),
('08830105', 'MK004', 65, 52, 80),
('08830105', 'MK005', 48, 28, 39),
('08830105', 'MK006', 59, 78, 34),
('08830105', 'MK007', 24, 63, 47),
('08830105', 'MK008', 66, 91, 64),
('08830105', 'MK009', 25, 70, 32),
('08830105', 'MK010', 92, 27, 97),
('08830116', 'MK001', 58, 77, 99),
('08830116', 'MK002', 23, 41, 69),
('08830116', 'MK003', 43, 68, 83),
('08830116', 'MK004', 50, 81, 68),
('08830116', 'MK005', 77, 64, 45),
('08830116', 'MK006', 21, 96, 71),
('08830116', 'MK007', 34, 74, 82),
('08830116', 'MK008', 50, 31, 55),
('08830116', 'MK009', 54, 65, 61),
('08830116', 'MK010', 60, 46, 66),
('08830118', 'MK001', 92, 71, 54),
('08830118', 'MK002', 72, 53, 62),
('08830118', 'MK003', 66, 40, 47),
('08830118', 'MK004', 27, 98, 46),
('08830118', 'MK005', 26, 49, 50),
('08830118', 'MK006', 62, 25, 23),
('08830118', 'MK007', 94, 77, 31),
('08830118', 'MK008', 56, 32, 28),
('08830118', 'MK009', 37, 95, 63),
('08830118', 'MK010', 59, 39, 51),
('08830122', 'MK001', 44, 35, 96),
('08830122', 'MK002', 32, 31, 34),
('08830122', 'MK003', 69, 64, 49),
('08830122', 'MK004', 23, 88, 68),
('08830122', 'MK005', 58, 66, 38),
('08830122', 'MK006', 61, 79, 78),
('08830122', 'MK007', 48, 63, 66),
('08830122', 'MK008', 24, 45, 43),
('08830122', 'MK009', 22, 50, 92),
('08830122', 'MK010', 29, 96, 32),
('08830125', 'MK001', 97, 50, 40),
('08830125', 'MK002', 36, 56, 21),
('08830125', 'MK003', 26, 48, 43),
('08830125', 'MK004', 27, 93, 39),
('08830125', 'MK005', 22, 57, 61),
('08830125', 'MK006', 56, 57, 55),
('08830125', 'MK007', 42, 39, 92),
('08830125', 'MK008', 72, 51, 41),
('08830125', 'MK009', 43, 21, 90),
('08830125', 'MK010', 48, 24, 25),
('08830129', 'MK001', 61, 30, 24),
('08830129', 'MK002', 40, 28, 38),
('08830129', 'MK003', 92, 46, 28),
('08830129', 'MK004', 43, 95, 44),
('08830129', 'MK005', 94, 52, 73),
('08830129', 'MK006', 26, 60, 31),
('08830129', 'MK007', 45, 33, 43),
('08830129', 'MK008', 21, 20, 84),
('08830129', 'MK009', 84, 59, 30),
('08830129', 'MK010', 43, 23, 29),
('08830144', 'MK001', 43, 51, 48),
('08830144', 'MK002', 55, 25, 37),
('08830144', 'MK003', 64, 28, 60),
('08830144', 'MK004', 53, 57, 28),
('08830144', 'MK005', 52, 20, 52),
('08830144', 'MK006', 23, 73, 61),
('08830144', 'MK007', 94, 98, 56),
('08830144', 'MK008', 54, 56, 77),
('08830144', 'MK009', 87, 84, 68),
('08830144', 'MK010', 31, 26, 48),
('08830150', 'MK001', 67, 22, 37),
('08830150', 'MK002', 49, 54, 90),
('08830150', 'MK003', 28, 66, 31),
('08830150', 'MK004', 91, 62, 42),
('08830150', 'MK005', 72, 75, 92),
('08830150', 'MK006', 68, 35, 55),
('08830150', 'MK007', 67, 58, 89),
('08830150', 'MK008', 91, 29, 87),
('08830150', 'MK009', 78, 27, 41),
('08830150', 'MK010', 30, 72, 62),
('08830151', 'MK001', 52, 60, 44),
('08830151', 'MK002', 85, 76, 66),
('08830151', 'MK003', 87, 71, 42),
('08830151', 'MK004', 90, 74, 61),
('08830151', 'MK005', 35, 40, 37),
('08830151', 'MK006', 99, 45, 42),
('08830151', 'MK007', 42, 28, 81),
('08830151', 'MK008', 30, 26, 68),
('08830151', 'MK009', 42, 36, 85),
('08830151', 'MK010', 88, 78, 61),
('08830152', 'MK001', 89, 31, 54),
('08830152', 'MK002', 64, 78, 49),
('08830152', 'MK003', 42, 48, 56),
('08830152', 'MK004', 45, 97, 54),
('08830152', 'MK005', 78, 32, 38),
('08830152', 'MK006', 69, 20, 52),
('08830152', 'MK007', 73, 89, 73),
('08830152', 'MK008', 40, 67, 21),
('08830152', 'MK009', 69, 44, 33),
('08830152', 'MK010', 30, 25, 70),
('08830154', 'MK001', 31, 37, 31),
('08830154', 'MK002', 41, 61, 35),
('08830154', 'MK003', 43, 41, 44),
('08830154', 'MK004', 90, 28, 41),
('08830154', 'MK005', 54, 27, 72),
('08830154', 'MK006', 77, 64, 37),
('08830154', 'MK007', 33, 55, 82),
('08830154', 'MK008', 48, 21, 99),
('08830154', 'MK009', 76, 55, 74),
('08830154', 'MK010', 31, 32, 21),
('08830157', 'MK001', 25, 39, 73),
('08830157', 'MK002', 28, 91, 98),
('08830157', 'MK003', 38, 20, 99),
('08830157', 'MK004', 54, 24, 29),
('08830157', 'MK005', 33, 77, 41),
('08830157', 'MK006', 52, 96, 34),
('08830157', 'MK007', 22, 44, 85),
('08830157', 'MK008', 47, 69, 30),
('08830157', 'MK009', 76, 38, 31),
('08830157', 'MK010', 48, 60, 52),
('08830159', 'MK001', 40, 43, 64),
('08830159', 'MK002', 75, 32, 27),
('08830159', 'MK003', 44, 51, 45),
('08830159', 'MK004', 58, 51, 93),
('08830159', 'MK005', 39, 77, 43),
('08830159', 'MK006', 40, 97, 59),
('08830159', 'MK007', 29, 25, 23),
('08830159', 'MK008', 21, 47, 66),
('08830159', 'MK009', 64, 53, 93),
('08830159', 'MK010', 37, 41, 49),
('08830163', 'MK001', 27, 33, 90),
('08830163', 'MK002', 72, 73, 87),
('08830163', 'MK003', 67, 34, 45),
('08830163', 'MK004', 62, 36, 50),
('08830163', 'MK005', 36, 81, 58),
('08830163', 'MK006', 22, 21, 80),
('08830163', 'MK007', 76, 48, 59),
('08830163', 'MK008', 41, 36, 22),
('08830163', 'MK009', 22, 74, 73),
('08830163', 'MK010', 22, 31, 98),
('08830169', 'MK001', 78, 55, 28),
('08830169', 'MK002', 74, 98, 23),
('08830169', 'MK003', 59, 77, 34),
('08830169', 'MK004', 72, 22, 46),
('08830169', 'MK005', 45, 22, 60),
('08830169', 'MK006', 45, 54, 74),
('08830169', 'MK007', 22, 63, 92),
('08830169', 'MK008', 27, 96, 73),
('08830169', 'MK009', 43, 53, 50),
('08830169', 'MK010', 99, 20, 59),
('08830173', 'MK001', 21, 92, 60),
('08830173', 'MK002', 68, 22, 95),
('08830173', 'MK003', 65, 96, 24),
('08830173', 'MK004', 59, 70, 60),
('08830173', 'MK005', 21, 40, 43),
('08830173', 'MK006', 62, 40, 31),
('08830173', 'MK007', 65, 50, 21),
('08830173', 'MK008', 90, 70, 31),
('08830173', 'MK009', 27, 84, 59),
('08830173', 'MK010', 51, 22, 34),
('08830183', 'MK001', 33, 85, 98),
('08830183', 'MK002', 53, 38, 70),
('08830183', 'MK003', 62, 83, 82),
('08830183', 'MK004', 68, 72, 68),
('08830183', 'MK005', 46, 65, 73),
('08830183', 'MK006', 61, 28, 91),
('08830183', 'MK007', 74, 52, 85),
('08830183', 'MK008', 75, 69, 82),
('08830183', 'MK009', 63, 49, 47),
('08830183', 'MK010', 40, 28, 57),
('08831000', 'MK001', 32, 31, 32),
('08831000', 'MK002', 86, 53, 40),
('08831000', 'MK003', 96, 27, 44),
('08831000', 'MK004', 66, 42, 76),
('08831000', 'MK005', 43, 99, 31),
('08831000', 'MK006', 90, 72, 33),
('08831000', 'MK007', 98, 52, 82),
('08831000', 'MK008', 58, 67, 69),
('08831000', 'MK009', 98, 45, 41),
('08831000', 'MK010', 63, 48, 36),
('08831001', 'MK001', 33, 50, 20),
('08831001', 'MK002', 36, 24, 45),
('08831001', 'MK003', 96, 45, 43),
('08831001', 'MK004', 22, 52, 80),
('08831001', 'MK005', 61, 56, 53),
('08831001', 'MK006', 91, 69, 32),
('08831001', 'MK007', 91, 26, 95),
('08831001', 'MK008', 22, 43, 50),
('08831001', 'MK009', 89, 22, 72),
('08831001', 'MK010', 86, 98, 34),
('08831002', 'MK001', 55, 53, 64),
('08831002', 'MK002', 98, 74, 95),
('08831002', 'MK003', 68, 82, 75),
('08831002', 'MK004', 66, 66, 82),
('08831002', 'MK005', 26, 41, 69),
('08831002', 'MK006', 20, 68, 52),
('08831002', 'MK007', 46, 25, 84),
('08831002', 'MK008', 71, 37, 94),
('08831002', 'MK009', 50, 52, 66),
('08831002', 'MK010', 76, 75, 99),
('08831003', 'MK001', 57, 63, 69),
('08831003', 'MK002', 43, 76, 62),
('08831003', 'MK003', 63, 94, 71),
('08831003', 'MK004', 23, 56, 71),
('08831003', 'MK005', 31, 72, 48),
('08831003', 'MK006', 28, 38, 26),
('08831003', 'MK007', 38, 64, 36),
('08831003', 'MK008', 76, 28, 48),
('08831003', 'MK009', 95, 25, 58),
('08831003', 'MK010', 61, 89, 21),
('08831004', 'MK001', 32, 47, 35),
('08831004', 'MK002', 25, 36, 34),
('08831004', 'MK003', 23, 96, 24),
('08831004', 'MK004', 41, 65, 66),
('08831004', 'MK005', 45, 57, 89),
('08831004', 'MK006', 68, 79, 43),
('08831004', 'MK007', 23, 51, 43),
('08831004', 'MK008', 78, 83, 87),
('08831004', 'MK009', 27, 37, 54),
('08831004', 'MK010', 46, 42, 85),
('08831005', 'MK001', 47, 60, 31),
('08831005', 'MK002', 49, 57, 34),
('08831005', 'MK003', 22, 75, 44),
('08831005', 'MK004', 63, 77, 43),
('08831005', 'MK005', 21, 47, 27),
('08831005', 'MK006', 69, 21, 85),
('08831005', 'MK007', 32, 26, 30),
('08831005', 'MK008', 29, 96, 50),
('08831005', 'MK009', 45, 84, 82),
('08831005', 'MK010', 23, 41, 72),
('08831006', 'MK001', 89, 34, 72),
('08831006', 'MK002', 31, 77, 41),
('08831006', 'MK003', 64, 54, 41),
('08831006', 'MK004', 71, 80, 75),
('08831006', 'MK005', 31, 60, 21),
('08831006', 'MK006', 70, 32, 52),
('08831006', 'MK007', 20, 77, 28),
('08831006', 'MK008', 41, 24, 23),
('08831006', 'MK009', 93, 24, 29),
('08831006', 'MK010', 37, 56, 97),
('08831007', 'MK001', 74, 62, 26),
('08831007', 'MK002', 99, 88, 58),
('08831007', 'MK003', 94, 42, 21),
('08831007', 'MK004', 97, 23, 91),
('08831007', 'MK005', 31, 97, 89),
('08831007', 'MK006', 38, 33, 41),
('08831007', 'MK007', 59, 46, 85),
('08831007', 'MK008', 86, 31, 56),
('08831007', 'MK009', 60, 64, 90),
('08831007', 'MK010', 83, 54, 48),
('08831008', 'MK001', 34, 35, 38),
('08831008', 'MK002', 29, 94, 53),
('08831008', 'MK003', 45, 46, 50),
('08831008', 'MK004', 30, 48, 27),
('08831008', 'MK005', 42, 83, 40),
('08831008', 'MK006', 40, 21, 47),
('08831008', 'MK007', 23, 39, 43),
('08831008', 'MK008', 55, 80, 30),
('08831008', 'MK009', 22, 34, 32),
('08831008', 'MK010', 93, 22, 39),
('08831009', 'MK001', 43, 38, 35),
('08831009', 'MK002', 43, 23, 29),
('08831009', 'MK003', 26, 45, 37),
('08831009', 'MK004', 29, 37, 47),
('08831009', 'MK005', 50, 83, 62),
('08831009', 'MK006', 21, 85, 88),
('08831009', 'MK007', 39, 46, 33),
('08831009', 'MK008', 52, 82, 65),
('08831009', 'MK009', 21, 96, 98),
('08831009', 'MK010', 93, 23, 43),
('08831010', 'MK001', 42, 30, 63),
('08831010', 'MK002', 31, 80, 45),
('08831010', 'MK003', 35, 94, 56),
('08831010', 'MK004', 26, 66, 37),
('08831010', 'MK005', 51, 22, 48),
('08831010', 'MK006', 43, 23, 33),
('08831010', 'MK007', 61, 53, 93),
('08831010', 'MK008', 45, 59, 75),
('08831010', 'MK009', 77, 63, 56),
('08831010', 'MK010', 60, 96, 39),
('08831011', 'MK001', 83, 90, 46),
('08831011', 'MK002', 78, 36, 51),
('08831011', 'MK003', 45, 44, 69),
('08831011', 'MK004', 21, 62, 45),
('08831011', 'MK005', 30, 64, 30),
('08831011', 'MK006', 69, 47, 24),
('08831011', 'MK007', 32, 32, 48),
('08831011', 'MK008', 41, 93, 41),
('08831011', 'MK009', 24, 23, 26),
('08831011', 'MK010', 53, 45, 50),
('08831012', 'MK001', 33, 65, 75),
('08831012', 'MK002', 88, 35, 23),
('08831012', 'MK003', 94, 90, 75),
('08831012', 'MK004', 63, 93, 35),
('08831012', 'MK005', 64, 50, 59),
('08831012', 'MK006', 31, 21, 46),
('08831012', 'MK007', 24, 35, 25),
('08831012', 'MK008', 60, 94, 69),
('08831012', 'MK009', 53, 97, 81),
('08831012', 'MK010', 32, 95, 43),
('08831013', 'MK001', 50, 35, 92),
('08831013', 'MK002', 60, 82, 51),
('08831013', 'MK003', 46, 58, 68),
('08831013', 'MK004', 31, 48, 80),
('08831013', 'MK005', 67, 34, 48),
('08831013', 'MK006', 96, 27, 35),
('08831013', 'MK007', 20, 48, 29),
('08831013', 'MK008', 78, 66, 77),
('08831013', 'MK009', 60, 25, 59),
('08831013', 'MK010', 21, 49, 62),
('08831014', 'MK001', 78, 56, 81),
('08831014', 'MK002', 24, 62, 87),
('08831014', 'MK003', 79, 81, 63),
('08831014', 'MK004', 90, 37, 24),
('08831014', 'MK005', 76, 23, 24),
('08831014', 'MK006', 89, 36, 44),
('08831014', 'MK007', 50, 90, 36),
('08831014', 'MK008', 21, 67, 84),
('08831014', 'MK009', 96, 58, 41),
('08831014', 'MK010', 30, 26, 43),
('08831015', 'MK001', 67, 45, 74),
('08831015', 'MK002', 75, 52, 60),
('08831015', 'MK003', 59, 66, 35),
('08831015', 'MK004', 54, 42, 84),
('08831015', 'MK005', 29, 45, 76),
('08831015', 'MK006', 27, 29, 23),
('08831015', 'MK007', 37, 97, 74),
('08831015', 'MK008', 31, 34, 71),
('08831015', 'MK009', 87, 20, 62),
('08831015', 'MK010', 51, 33, 88),
('08838026', 'MK001', 70, 84, 94),
('08838026', 'MK002', 99, 60, 46),
('08838026', 'MK003', 37, 68, 48),
('08838026', 'MK004', 28, 22, 36),
('08838026', 'MK005', 22, 41, 21),
('08838026', 'MK006', 67, 49, 31),
('08838026', 'MK007', 94, 61, 55),
('08838026', 'MK008', 39, 71, 52),
('08838026', 'MK009', 66, 25, 94),
('08838026', 'MK010', 59, 99, 36),
('08838070', 'MK001', 97, 59, 31),
('08838070', 'MK002', 27, 64, 41),
('08838070', 'MK003', 24, 44, 90),
('08838070', 'MK004', 48, 85, 34),
('08838070', 'MK005', 27, 60, 40),
('08838070', 'MK006', 27, 46, 99),
('08838070', 'MK007', 48, 27, 37),
('08838070', 'MK008', 90, 34, 96),
('08838070', 'MK009', 29, 29, 77),
('08838070', 'MK010', 59, 48, 83);

-- --------------------------------------------------------

--
-- Table structure for table `tprogramkelas`
--

CREATE TABLE `tprogramkelas` (
  `ProgramKelas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tprogramkelas`
--

INSERT INTO `tprogramkelas` (`ProgramKelas`) VALUES
('AKSELERASI'),
('REGULAR');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vmhs1`
-- (See below for the actual view)
--
CREATE TABLE `vmhs1` (
`NIM` varchar(16)
,`NamaLengkap` varchar(50)
,`KotaAsal` varchar(30)
,`TahunLulusSMA` int(6)
);

-- --------------------------------------------------------

--
-- Structure for view `vmhs1`
--
DROP TABLE IF EXISTS `vmhs1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vmhs1`  AS SELECT `tmahasiswa`.`NIM` AS `NIM`, `tmahasiswa`.`NamaLengkap` AS `NamaLengkap`, `tmahasiswa`.`KotaAsal` AS `KotaAsal`, `tmahasiswa`.`TahunLulusSMA` AS `TahunLulusSMA` FROM `tmahasiswa` WHERE `tmahasiswa`.`KotaAsal` not in ('surabaya','malang','bogor') AND `tmahasiswa`.`TahunLulusSMA` in (2004,2006,2009)  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tdosen`
--
ALTER TABLE `tdosen`
  ADD PRIMARY KEY (`KdDosen`),
  ADD KEY `TMataKuliahTDosen` (`MataKuliah`);

--
-- Indexes for table `tkelas`
--
ALTER TABLE `tkelas`
  ADD PRIMARY KEY (`Kelas`);

--
-- Indexes for table `tmahasiswa`
--
ALTER TABLE `tmahasiswa`
  ADD PRIMARY KEY (`NIM`),
  ADD KEY `TKelasTMahasiswa` (`KELAS`) USING BTREE,
  ADD KEY `TProgramKelasTMahasiswa` (`ProgramKelas`) USING BTREE;

--
-- Indexes for table `tmatakuliah`
--
ALTER TABLE `tmatakuliah`
  ADD PRIMARY KEY (`KdMataKuliah`),
  ADD KEY `TMataKuliahMATAKULIAH` (`MataKuliah`);

--
-- Indexes for table `tnilai`
--
ALTER TABLE `tnilai`
  ADD PRIMARY KEY (`NIM`,`MATAKULIAH`),
  ADD KEY `TMahasiswaTNilai` (`NIM`),
  ADD KEY `TMataKuliahTNilai` (`MATAKULIAH`);

--
-- Indexes for table `tprogramkelas`
--
ALTER TABLE `tprogramkelas`
  ADD PRIMARY KEY (`ProgramKelas`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tdosen`
--
ALTER TABLE `tdosen`
  ADD CONSTRAINT `TDosen_MataKuliah_TMataKuliah_KdMataKuliah` FOREIGN KEY (`MataKuliah`) REFERENCES `tmatakuliah` (`KdMataKuliah`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tmahasiswa`
--
ALTER TABLE `tmahasiswa`
  ADD CONSTRAINT `TMahasiswa_KELAS_TKelas_Kelas` FOREIGN KEY (`KELAS`) REFERENCES `tkelas` (`Kelas`),
  ADD CONSTRAINT `TMahasiswa_ProgramKelas_TProgramKelas_ProgramKelas` FOREIGN KEY (`ProgramKelas`) REFERENCES `tprogramkelas` (`ProgramKelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tnilai`
--
ALTER TABLE `tnilai`
  ADD CONSTRAINT `TNilai_MATAKULIAH_TMataKuliah_KdMataKuliah` FOREIGN KEY (`MATAKULIAH`) REFERENCES `tmatakuliah` (`KdMataKuliah`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `TNilai_NIM_TMahasiswa_NIM` FOREIGN KEY (`NIM`) REFERENCES `tmahasiswa` (`NIM`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
