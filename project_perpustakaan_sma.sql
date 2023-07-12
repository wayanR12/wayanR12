-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2023 at 06:35 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_perpustakaan_sma`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID_ADMIN` varchar(10) NOT NULL,
  `USERNAME` varchar(128) DEFAULT NULL,
  `PASSWORD` mediumtext DEFAULT NULL,
  `LAST_LOGIN` varchar(40) DEFAULT NULL,
  `ROLE` varchar(15) DEFAULT NULL,
  `FULLNAME` varchar(128) DEFAULT NULL,
  `JENKEL` char(1) DEFAULT NULL,
  `NO_TELP` varchar(20) DEFAULT NULL,
  `ALAMAT` mediumtext DEFAULT NULL,
  `PHOTO` mediumtext DEFAULT NULL,
  `DTE_CREATED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID_ADMIN`, `USERNAME`, `PASSWORD`, `LAST_LOGIN`, `ROLE`, `FULLNAME`, `JENKEL`, `NO_TELP`, `ALAMAT`, `PHOTO`, `DTE_CREATED`) VALUES
('AD010', 'perpus', '47bce5c74f589f4867dbd57e9ca9f808', '25-06-2023 06:25:35', 'admin', 'WAYAN RICKY ADITYA', 'L', '081549573481', 'Barambai kolam kanan', 'IMG-20201031-WA00231.jpg', '2023-03-13'),
('AD011', 'noval', '202cb962ac59075b964b07152d234b70', '25-06-2023 05:08:42', 'admin', 'MUHAMMAD NOVAL', NULL, NULL, NULL, 'default.png', '2023-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `ID_ANGGOTA` varchar(10) NOT NULL,
  `ID_ADMIN` varchar(10) DEFAULT NULL,
  `FULL_NAME` varchar(128) DEFAULT NULL,
  `kelas` varchar(50) NOT NULL,
  `TMP_LAHIR` varchar(90) DEFAULT NULL,
  `TGL_LAHIR` varchar(20) DEFAULT NULL,
  `ALAMAT` mediumtext DEFAULT NULL,
  `GENDER` char(1) DEFAULT NULL,
  `TELP` varchar(20) DEFAULT NULL,
  `FOTO` mediumtext DEFAULT NULL,
  `D_CREATED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`ID_ANGGOTA`, `ID_ADMIN`, `FULL_NAME`, `kelas`, `TMP_LAHIR`, `TGL_LAHIR`, `ALAMAT`, `GENDER`, `TELP`, `FOTO`, `D_CREATED`) VALUES
('AGT001', 'AD010', 'Muhammad Rangga', 'X IPS II', 'Jl. keramat Rt.02 Rw.001', '02/20/2000', 'Jl. keramat', 'L', '085733573529', '20__Multazam_A_3.JPG', '2017-06-16'),
('AGT002', 'AD010', 'Galbie Elinour', 'X IPS I', 'Malang', '06/16/2017', 'Jl. Kawi no. 89, Malang Kota', 'P', '0897786788954', '12__GALBIE_ELINOUR1.JPG', '2017-06-16'),
('AGT003', 'AD010', 'Alfan Cahyo Wicaksono', '', 'Malang', '10/13/1998', 'Jl. Silak Kesam 101', 'L', '087669887654', '2__Alfan_Cahyo_.JPG', '2017-06-16'),
('AGT004', 'AD010', 'Sasna Salsabila Hapsari', '', 'Madiun', '03/08/1999', 'Perum. Aspol 443, Kota Madiun', 'P', '0818897546788', '30__Sasna_S_.JPG', '2017-06-16'),
('AGT005', 'AD010', 'Riski Ananda Widiya P', '', 'Tulungagung', '02/19/2000', 'Perum. Grand Emerald ZU3, Tulungagung', 'P', '093889765643', '31__Riski_Ananda.JPG', '2017-06-16'),
('AGT006', 'AD010', 'Anggyanisa Mutia Putri', '', 'Madiun', '08/18/2000', 'Gg. Pattimura 89', 'P', '085389755644', '2__Anddyanisa_M_.JPG', '2017-06-16'),
('AGT007', 'AD010', 'Prasetya Ananta W. S.', '', 'Malang', '06/16/1999', 'Sulfat Indah 89', 'L', '08267599432', '28__Prsetya_Ananta.JPG', '2017-06-16'),
('AGT008', 'AD010', 'Irvina Firadila', '', 'Lumajang', '08/12/1999', 'Ds. Sambungrejo RT. 4 RW. 7 Kec. Welasasih, Lumajang', 'P', '0876654897765', '14__Irvina_F_.JPG', '2017-06-16'),
('AGT009', 'AD010', 'Ridhwan Rofianto', '', 'Surabaya', '04/01/2001', 'Mburine cito', 'L', '089776598334', '29__RIDHWAN_ROFIANTO.JPG', '2017-06-16'),
('AGT010', 'AD010', 'Muhamad Iqbal Samudra', '', 'Banyuwangi', '04/05/2000', 'Ds. Sumoharjo, RT. 5 RW. 9', 'L', '08677564987', '18__Muh__Iqbal.JPG', '2017-06-16'),
('AGT011', 'AD010', 'Nabila Hanggana Raras', 'XI IPA I', 'Sidoarjo', '03/08/2000', 'Perum. Sugih Asri F32, Candi, Sidoarjo', 'P', '084876835267', '28__Nabila_Hanggana_Raras.JPG', '2017-06-16'),
('AGT012', 'AD010', 'Erika Prafitasari Rotinsulu', '', 'Sidoarjo', '08/04/2000', 'Perum. Bumi Citra Fajar A76, Sekardangan, Sidoarjo', 'P', '08567498256', '9__Erika_P_.JPG', '2017-06-16'),
('AGT013', 'AD010', 'Nico Ardian Nugroho', '', 'Malang', '04/02/2000', 'Jl. Sironggo Ajoh Kav. 4, Malang', 'L', '089765689645', '24__Nico_Ardian.JPG', '2017-06-16'),
('AGT014', 'AD010', 'Ad Reana Vidya', '', 'Malang', '06/29/2000', 'Perum. Siswa Taman AG65, Kepanjen', 'P', '087995764839', '2__Ad_Reana.JPG', '2017-06-29'),
('AGT015', 'AD010', 'Vejryn Shaviero', 'XII IPS 2', 'Jember', '06/10/2000', 'Jl. Utama Kota gg. 6, Jember', 'L', '088786368495', '34__VEJRYN_SHAVIERO.JPG', '2017-06-29'),
('AGT016', 'AD011', 'KADEK CINDY LESTARI', 'XII IPS 3', 'Barambai', '04/05/2005', 'Barambai Kolam Kanan Rt.12 Rw.03', 'P', '080000000000', 'IMG-20201031-WA00231.jpg', '2023-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `ID_BUKU` varchar(10) NOT NULL,
  `ID_ADMIN` varchar(10) DEFAULT NULL,
  `TITLE` varchar(150) DEFAULT NULL,
  `AUTHOR` varchar(128) DEFAULT NULL,
  `PUBLISHER` varchar(128) DEFAULT NULL,
  `YEAR` char(4) DEFAULT NULL,
  `QTY` int(11) DEFAULT NULL,
  `KELUAR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`ID_BUKU`, `ID_ADMIN`, `TITLE`, `AUTHOR`, `PUBLISHER`, `YEAR`, `QTY`, `KELUAR`) VALUES
('BKO004', 'AD010', 'Mikrotik Kung Fu : Kitab 1', 'Rendra Towidjojo', 'Jasakom', '2016', 1, 3),
('BKO005', 'AD010', 'Windows 10 : Panduan Lengkap', 'Indra Susanto', 'Jasakom', '2013', 5, 0),
('BKO006', 'AD010', 'Bisnis Online Revolution', 'Iwan Kenrianto', 'Gramedia', '2015', 2, 1),
('BKO007', 'AD010', '3 Tools Facebook Graph Gratisan', 'Suryadin Laoddang', 'Dosen Jualan', '2015', 2, 1),
('BKO008', 'AD010', 'Mengolah Database Excel', 'Sumonggo Surya', 'Andi Publisher', '2001', 1, 1),
('BKO009', 'AD010', 'Mahir Corel Draw Dalam 4 Hari', 'Yuli Kristanto S', 'Izuka Komp', '2008', 0, 3),
('BKO010', 'AD010', 'The Magic of Photoshop', 'Hendri Hendratama', 'Informatika', '2013', 3, 3),
('BKO011', 'AD010', 'Teknik Profesional Photoshop CS3', 'Rahmat Widiyanto', 'Elex Media Computindo', '2009', 5, 1),
('BKO012', 'AD010', 'Jago SEO', 'Hidayat Rahmad', 'Elex Media Computindo', '2011', 0, 3),
('BKO013', 'AD010', 'Hacking Wireless Network', 'Suryatama Udin', 'Jasakom', '2014', 8, 1),
('BKO014', 'AD010', 'Blender 3D Modelling', 'Hendri Hendratama', 'Informatika', '2015', 0, 2),
('BKO015', 'AD010', 'Aplikasi Berbasis Android', 'Hyua Hendra La', 'Moklet Publisher', '2019', 2, 2),
('BKO016', 'AD010', 'Membangun Aplikasi ASP', 'Hendro SPd', 'Moklet Publisher', '2020', 1, 3),
('BKO017', 'AD010', 'Basis Data Kebun Binatang', 'Ifa Khoirunnisa', 'Moklet Publisher', '2018', 3, 0),
('BKO018', 'AD010', 'Buku Panduan ASUS', 'Herman Dzumavo', 'Samsara', '2008', 3, 0),
('BKO019', 'AD010', 'The Power of Microsoft Edge', 'Steven Reward', 'Duston Magz', '2017', 5, 1),
('BKO020', 'AD010', 'MySQL Dasar dan Implementasi', 'Supratman Efendi', 'Ilmukom', '2014', 2, 3),
('BKO021', 'AD010', 'Nippon Against World', 'Hasirama Tadashi', 'Sung Yang', '2009', 0, 2),
('BKO022', 'AD010', 'Konfigursi Router Cisco', 'Solikin', 'Safari pub', '2019', 1, 2),
('BKO023', 'AD010', 'Fashion Paris', 'Amire Melaine', 'FranceTime', '2018', 1, 1),
('BKO024', 'AD010', 'Unreleashed Journal', 'Timothy Law', 'Askars', '2017', 3, 1),
('BKO025', 'AD010', 'Biologi XI SMA & MA', 'Suwarno', 'Adi Wahyono', '2013', 60, 0);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `ID_DIPINJAM` int(11) NOT NULL,
  `ID_PINJAM` varchar(10) DEFAULT NULL,
  `ID_BUKU` varchar(10) DEFAULT NULL,
  `TGL_KEMBALI` date DEFAULT NULL,
  `DENDA` int(11) DEFAULT NULL,
  `STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`ID_DIPINJAM`, `ID_PINJAM`, `ID_BUKU`, `TGL_KEMBALI`, `DENDA`, `STATUS`) VALUES
(13, 'P170623001', 'BKO005', '2017-06-25', 0, 'Sudah Kembali'),
(14, 'P170623001', 'BKO008', '2023-05-12', 11500, 'Sudah Kembali'),
(15, 'P170623001', 'BKO013', '2023-05-12', 11500, 'Sudah Kembali'),
(16, 'P170623002', 'BKO008', '2023-05-12', 22000, 'Sudah Kembali'),
(17, 'P170624001', 'BKO013', '2017-07-09', 4000, 'Sudah Kembali'),
(18, 'P170624001', 'BKO007', '2023-05-12', 0, 'Sudah Kembali'),
(19, 'P170624001', 'BKO011', '2023-05-28', 0, 'Sudah Kembali'),
(20, 'P170624002', 'BKO004', '2023-05-12', 0, 'Sudah Kembali'),
(21, 'P170624002', 'BKO005', '2023-05-28', 0, 'Sudah Kembali'),
(22, 'P170624002', 'BKO007', '2023-05-28', 0, 'Sudah Kembali'),
(23, 'P170624003', 'BKO011', '2023-05-28', 0, 'Sudah Kembali'),
(24, 'P170624003', 'BKO004', '2023-05-12', 0, 'Sudah Kembali'),
(25, 'P170624003', 'BKO015', '2023-05-28', 0, 'Sudah Kembali'),
(26, 'P170624004', 'BKO017', '2017-06-25', 0, 'Sudah Kembali'),
(27, 'P170624005', 'BKO013', '2023-05-28', 14000, 'Sudah Kembali'),
(28, 'P170624005', 'BKO006', '2023-05-29', 14500, 'Sudah Kembali'),
(29, 'P170624006', 'BKO011', '2017-06-25', 0, 'Sudah Kembali'),
(30, 'P170624006', 'BKO018', '2017-07-10', 4500, 'Sudah Kembali'),
(31, 'P170625001', 'BKO019', '2023-05-29', 1000, 'Sudah Kembali'),
(32, 'P170625001', 'BKO020', NULL, 0, 'Belum Kembali'),
(33, 'P170625001', 'BKO021', NULL, 0, 'Belum Kembali'),
(34, 'P170625002', 'BKO010', '2017-07-09', 3500, 'Sudah Kembali'),
(35, 'P170625002', 'BKO016', NULL, 0, 'Belum Kembali'),
(36, 'P170626001', 'BKO012', NULL, 0, 'Belum Kembali'),
(37, 'P170626001', 'BKO009', NULL, 0, 'Belum Kembali'),
(38, 'P170626001', 'BKO014', NULL, 0, 'Belum Kembali'),
(39, 'P170626002', 'BKO014', NULL, 0, 'Belum Kembali'),
(40, 'P170626002', 'BKO010', NULL, 0, 'Belum Kembali'),
(41, 'P170629001', 'BKO013', NULL, 0, 'Belum Kembali'),
(42, 'P170629001', 'BKO009', NULL, 0, 'Belum Kembali'),
(43, 'P170629002', 'BKO010', NULL, 0, 'Belum Kembali'),
(44, 'P170629002', 'BKO016', NULL, 0, 'Belum Kembali'),
(45, 'P170629002', 'BKO012', NULL, 0, 'Belum Kembali'),
(46, 'P170709001', 'BKO020', NULL, 0, 'Belum Kembali'),
(47, 'P170709001', 'BKO011', NULL, 0, 'Belum Kembali'),
(48, 'P170709002', 'BKO022', NULL, 0, 'Belum Kembali'),
(49, 'P170709002', 'BKO021', NULL, 0, 'Belum Kembali'),
(50, 'P230512001', 'BKO007', NULL, 0, 'Belum Kembali'),
(51, 'P230512002', 'BKO004', NULL, 0, 'Belum Kembali'),
(52, 'P230512003', 'BKO020', NULL, 0, 'Belum Kembali'),
(53, 'P230512004', 'BKO015', NULL, 0, 'Belum Kembali'),
(54, 'P230512005', 'BKO004', NULL, 0, 'Belum Kembali'),
(55, 'P230512006', 'BKO009', NULL, 0, 'Belum Kembali'),
(56, 'P230512007', 'BKO004', NULL, 0, 'Belum Kembali'),
(57, 'P230512008', 'BKO008', NULL, 0, 'Belum Kembali'),
(58, 'P230512009', 'BKO012', NULL, 0, 'Belum Kembali'),
(59, 'P230512010', 'BKO006', NULL, 0, 'Belum Kembali'),
(60, 'P230528001', 'BKO022', NULL, 0, 'Belum Kembali'),
(61, 'P230528002', 'BKO015', NULL, 0, 'Belum Kembali'),
(62, 'P230528003', 'BKO024', NULL, 0, 'Belum Kembali'),
(63, 'P230529001', 'BKO010', NULL, 0, 'Belum Kembali'),
(64, 'P230529001', 'BKO019', NULL, 0, 'Belum Kembali'),
(65, 'P230530001', 'BKO023', NULL, 0, 'Belum Kembali'),
(66, 'P230530002', 'BKO016', NULL, 0, 'Belum Kembali'),
(67, 'P230629003', 'BKO017', '2023-05-30', 0, 'Sudah Kembali');

-- --------------------------------------------------------

--
-- Table structure for table `notif`
--

CREATE TABLE `notif` (
  `ID_NOTIF` int(11) NOT NULL,
  `ID_ADMIN` varchar(128) NOT NULL,
  `JUDUL` varchar(128) NOT NULL,
  `ISI` varchar(128) NOT NULL,
  `DT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `ID_PINJAM` varchar(10) NOT NULL,
  `ID_ANGGOTA` varchar(10) DEFAULT NULL,
  `ID_ADMIN` varchar(10) DEFAULT NULL,
  `TGL_PINJAM` date DEFAULT NULL,
  `JML_BUKU` int(11) NOT NULL,
  `STATS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`ID_PINJAM`, `ID_ANGGOTA`, `ID_ADMIN`, `TGL_PINJAM`, `JML_BUKU`, `STATS`) VALUES
('P170623001', 'AGT003', 'AD010', '2023-04-12', 3, 'Sudah Kembali'),
('P170623002', 'AGT003', 'AD010', '2023-03-22', 1, 'Sudah Kembali'),
('P170624001', 'AGT007', 'AD010', '2023-05-23', 3, 'Sudah Kembali'),
('P170624002', 'AGT004', 'AD010', '2023-05-23', 3, 'Sudah Kembali'),
('P170624003', 'AGT004', 'AD010', '2023-05-23', 3, 'Sudah Kembali'),
('P170624004', 'AGT004', 'AD010', '2023-05-23', 1, 'Sudah Kembali'),
('P170624005', 'AGT003', 'AD010', '2023-04-23', 2, 'Sudah Kembali'),
('P170624006', 'AGT003', 'AD010', '2023-05-23', 2, 'Sudah Kembali'),
('P170625001', 'AGT013', 'AD010', '2023-05-01', 3, 'Belum Kembali'),
('P170625002', 'AGT010', 'AD010', '2023-05-23', 2, 'Belum Kembali'),
('P170626001', 'AGT006', 'AD010', '2023-05-23', 3, 'Belum Kembali'),
('P170626002', 'AGT012', 'AD010', '2023-02-15', 2, 'Belum Kembali'),
('P170629001', 'AGT014', 'AD010', '2023-05-23', 2, 'Belum Kembali'),
('P170629002', 'AGT015', 'AD010', '2023-05-23', 3, 'Belum Kembali'),
('P170709001', 'AGT011', 'AD010', '2023-05-23', 2, 'Belum Kembali'),
('P170709002', 'AGT011', 'AD010', '2023-05-23', 2, 'Belum Kembali'),
('P230512001', 'AGT004', 'AD010', '2023-05-12', 1, 'Belum Kembali'),
('P230512002', 'AGT011', 'AD010', '2023-05-12', 1, 'Belum Kembali'),
('P230512003', 'AGT004', 'AD010', '2023-05-12', 1, 'Belum Kembali'),
('P230512004', 'AGT011', 'AD010', '2023-05-12', 1, 'Belum Kembali'),
('P230512005', 'AGT011', 'AD010', '2023-05-12', 1, 'Belum Kembali'),
('P230512006', 'AGT011', 'AD010', '2023-05-12', 1, 'Belum Kembali'),
('P230512007', 'AGT011', 'AD010', '2023-05-12', 1, 'Belum Kembali'),
('P230512008', 'AGT004', 'AD010', '2023-05-12', 1, 'Belum Kembali'),
('P230512009', 'AGT011', 'AD010', '2023-05-12', 1, 'Belum Kembali'),
('P230512010', 'AGT011', 'AD010', '2023-05-12', 1, 'Belum Kembali'),
('P230528001', 'AGT015', 'AD010', '2023-05-28', 1, 'Belum Kembali'),
('P230528002', 'AGT015', 'AD010', '2023-05-28', 1, 'Belum Kembali'),
('P230528003', 'AGT015', 'AD010', '2023-05-28', 1, 'Belum Kembali'),
('P230529001', 'AGT007', 'AD010', '2023-05-29', 2, 'Belum Kembali'),
('P230530001', 'AGT001', 'AD010', '2023-05-30', 1, 'Belum Kembali'),
('P230530002', 'AGT002', 'AD010', '2023-05-30', 1, 'Belum Kembali'),
('P230629003', 'AGT003', 'AD010', '2023-05-30', 1, 'Sudah Kembali');

-- --------------------------------------------------------

--
-- Table structure for table `perpus`
--

CREATE TABLE `perpus` (
  `ID_PERPUS` int(11) NOT NULL,
  `NAMA_P` varchar(128) DEFAULT NULL,
  `ALAMAT_P` mediumtext DEFAULT NULL,
  `ABOUT` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perpus`
--

INSERT INTO `perpus` (`ID_PERPUS`, `NAMA_P`, `ALAMAT_P`, `ABOUT`) VALUES
(3, 'SMA Negeri 1 Marabahan', 'Marabahan', 'WELCOME');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_ADMIN`),
  ADD UNIQUE KEY `ADMIN_PK` (`ID_ADMIN`),
  ADD UNIQUE KEY `ID_ADMIN` (`ID_ADMIN`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`ID_ANGGOTA`),
  ADD UNIQUE KEY `ANGGOTA_PK` (`ID_ANGGOTA`),
  ADD KEY `MAKE_FK` (`ID_ADMIN`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`ID_BUKU`),
  ADD UNIQUE KEY `BUKU_PK` (`ID_BUKU`),
  ADD KEY `CREATE_FK` (`ID_ADMIN`);

--
-- Indexes for table `detail_pinjam`
--
ALTER TABLE `detail_pinjam`
  ADD PRIMARY KEY (`ID_DIPINJAM`),
  ADD UNIQUE KEY `DETAIL_PINJAM_PK` (`ID_DIPINJAM`),
  ADD KEY `MEMILIKI_FK` (`ID_PINJAM`),
  ADD KEY `MENGAMBIL_FK` (`ID_BUKU`);

--
-- Indexes for table `notif`
--
ALTER TABLE `notif`
  ADD PRIMARY KEY (`ID_NOTIF`),
  ADD KEY `FK_NOTIF_MEMBUAT_ADMIN` (`ID_ADMIN`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`ID_PINJAM`),
  ADD UNIQUE KEY `PEMINJAMAN_PK` (`ID_PINJAM`),
  ADD KEY `MELAKUKAN_FK` (`ID_ANGGOTA`),
  ADD KEY `MELAYANI_FK` (`ID_ADMIN`);

--
-- Indexes for table `perpus`
--
ALTER TABLE `perpus`
  ADD PRIMARY KEY (`ID_PERPUS`),
  ADD UNIQUE KEY `PERPUS_PK` (`ID_PERPUS`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pinjam`
--
ALTER TABLE `detail_pinjam`
  MODIFY `ID_DIPINJAM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `notif`
--
ALTER TABLE `notif`
  MODIFY `ID_NOTIF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `perpus`
--
ALTER TABLE `perpus`
  MODIFY `ID_PERPUS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `FK_ANGGOTA_MAKE_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `FK_BUKU_CREATE_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);

--
-- Constraints for table `detail_pinjam`
--
ALTER TABLE `detail_pinjam`
  ADD CONSTRAINT `FK_DETAIL_P_MEMILIKI_PEMINJAM` FOREIGN KEY (`ID_PINJAM`) REFERENCES `peminjaman` (`ID_PINJAM`),
  ADD CONSTRAINT `FK_DETAIL_P_MENGAMBIL_BUKU` FOREIGN KEY (`ID_BUKU`) REFERENCES `buku` (`ID_BUKU`);

--
-- Constraints for table `notif`
--
ALTER TABLE `notif`
  ADD CONSTRAINT `FK_NOTIF_MEMBUAT_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `FK_PEMINJAM_MELAKUKAN_ANGGOTA` FOREIGN KEY (`ID_ANGGOTA`) REFERENCES `anggota` (`ID_ANGGOTA`),
  ADD CONSTRAINT `FK_PEMINJAM_MELAYANI_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
