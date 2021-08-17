-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 12:02 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_sparepart`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `alamat_karyawan` varchar(30) NOT NULL,
  `Tanggal_Lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `alamat_karyawan`, `Tanggal_Lahir`) VALUES
(1, 'agus', 'Bekasi', '2000-06-06'),
(2, 'ucok', 'cilegon', '1996-06-11'),
(3, 'imam', 'serang', '1992-08-16'),
(4, 'bambang', 'pandeglang', '1985-02-01'),
(5, 'ateng', 'bandung', '1989-05-11'),
(6, 'asep', 'cilegon', '1988-06-04'),
(7, 'arsy', 'serang', '1988-06-20'),
(8, 'katros', 'pandeglang', '1985-02-01'),
(9, 'karyo', 'cilegon', '1991-08-15'),
(10, 'edi', 'serang', '1989-08-22');

-- --------------------------------------------------------

--
-- Table structure for table `sparepart`
--

CREATE TABLE `sparepart` (
  `id_sparepart` int(11) NOT NULL,
  `nama_sparepart` varchar(30) NOT NULL,
  `harga_sparepart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sparepart`
--

INSERT INTO `sparepart` (`id_sparepart`, `nama_sparepart`, `harga_sparepart`) VALUES
(1, 'busi', 15000),
(2, 'filter_bensin', 5000),
(3, 'oli', 30000),
(4, 'minyak_rem', 5000),
(5, 'wd_carbu', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_sparepart` int(11) NOT NULL,
  `nama_sparepart` varchar(30) NOT NULL,
  `harga_sparepart` int(11) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_karyawan`, `id_sparepart`, `nama_sparepart`, `harga_sparepart`, `nama_pembeli`) VALUES
(1, 1, 1, 'busi', 15000, 'wahyu'),
(2, 1, 2, 'filter_bensin', 5000, 'meimei'),
(3, 1, 4, 'minyak_rem', 5000, 'cincong'),
(4, 1, 5, 'wd_carbu', 25000, 'paijo'),
(5, 1, 3, 'oli', 30000, 'Abrar'),
(6, 1, 4, 'minyak_rem', 5000, 'bowo'),
(7, 1, 3, 'oli', 30000, 'nanda'),
(8, 1, 4, 'minyak_rem', 5000, 'faisal'),
(9, 1, 2, 'filter_bensin', 5000, 'Dimas'),
(10, 1, 1, 'busi', 15000, 'Tubagus'),
(11, 2, 1, 'busi', 15000, 'mail'),
(12, 2, 5, 'wd_carbu', 25000, 'faisal'),
(13, 2, 2, 'filter_bensin', 5000, 'rahmat'),
(14, 2, 3, 'oli', 30000, 'vernand'),
(15, 2, 1, 'busi', 15000, 'mark'),
(16, 2, 4, 'minyak_rem', 5000, 'jundan'),
(17, 2, 1, 'busi', 15000, 'jamal'),
(18, 2, 4, 'minyak_rem', 5000, 'dodit'),
(19, 2, 1, 'busi', 15000, 'timothy'),
(20, 2, 3, 'oli', 30000, 'robi'),
(21, 3, 1, 'busi', 15000, 'ligma'),
(22, 3, 3, 'oli', 30000, 'balls'),
(23, 3, 4, 'minyak_rem', 5000, 'kansas'),
(24, 3, 5, 'wd_carbu', 25000, 'hendra'),
(25, 3, 4, 'minyak_rem', 5000, 'mustafa'),
(26, 3, 1, 'busi', 5000, 'ferdi'),
(27, 3, 4, 'minyak_rem', 5000, 'cimi'),
(28, 3, 1, 'busi', 5000, 'faris'),
(29, 3, 5, 'wd_carbu', 25000, 'mbabwe'),
(30, 3, 2, 'filter_bensin', 5000, 'leman'),
(31, 4, 4, 'minyak_rem', 5000, 'diki'),
(32, 4, 4, 'minyak_rem', 5000, 'allan'),
(33, 4, 2, 'filter_bensin', 5000, 'bastian'),
(34, 4, 1, 'busi', 15000, 'hendra'),
(35, 4, 3, 'oli', 30000, 'hani'),
(36, 4, 3, 'oli', 30000, 'leto'),
(37, 4, 5, 'wd_carbu', 25000, 'yanto'),
(38, 4, 1, 'busi', 15000, 'andri'),
(39, 4, 3, 'oli', 30000, 'hatta'),
(40, 4, 1, 'busi', 15000, 'karno'),
(41, 5, 4, 'minyak_rem', 5000, 'corfo'),
(42, 5, 5, 'wd_carbu', 25000, 'omar'),
(43, 5, 1, 'busi', 15000, 'bento'),
(44, 5, 2, 'filter_bensin', 5000, 'kirito'),
(45, 5, 3, 'oli', 30000, 'diki'),
(46, 5, 4, 'minyak_rem', 5000, 'endi'),
(47, 5, 5, 'wd_carbu', 25000, 'sugma'),
(48, 5, 4, 'minyak_rem', 5000, 'hasan'),
(49, 5, 1, 'busi', 15000, 'faris'),
(50, 5, 3, 'oli', 30000, 'caty'),
(51, 6, 4, 'minyak_rem', 5000, 'abrar'),
(52, 6, 3, 'oli', 30000, 'allan'),
(53, 6, 3, 'oli', 30000, 'bastian'),
(54, 6, 2, 'filter_bensin', 5000, 'vernand'),
(55, 6, 1, 'busi', 15000, 'diki'),
(56, 6, 5, 'wd_carbu', 25000, 'endi'),
(57, 6, 2, 'filter_bensin', 5000, 'sugma'),
(58, 6, 4, 'minyak_rem', 5000, 'hasan'),
(59, 6, 1, 'busi', 15000, 'faris'),
(60, 6, 4, 'minyak_rem', 5000, 'karno'),
(61, 7, 4, 'minyak_rem', 5000, 'bowo'),
(62, 7, 5, 'wd_carbu', 25000, 'balls'),
(63, 7, 2, 'filter_bensin', 5000, 'kansas'),
(64, 7, 1, 'busi', 15000, 'paijo'),
(65, 7, 1, 'busi', 15000, 'hani'),
(66, 7, 4, 'minyak_rem', 5000, 'jundan'),
(67, 7, 5, 'wd_carbu', 25000, 'jamal'),
(68, 7, 2, 'filter_bensin', 5000, 'dodit'),
(69, 7, 1, 'busi', 15000, 'timothy'),
(70, 7, 5, 'wd_carbu', 25000, 'robi'),
(71, 8, 3, 'oli', 30000, 'Putri'),
(72, 8, 5, 'wd_carbu', 25000, 'allan'),
(73, 8, 2, 'filter_bensin', 5000, 'rahmat'),
(74, 8, 4, 'minyak_rem', 5000, 'hendra'),
(75, 8, 1, 'busi', 15000, 'mustafa'),
(76, 8, 3, 'oli', 30000, 'jundan'),
(77, 8, 4, 'minyak_rem', 5000, 'jamal'),
(78, 8, 4, 'minyak_rem', 5000, 'dodit'),
(79, 8, 2, 'filter_bensin', 5000, 'juno'),
(80, 8, 2, 'filter_bensin', 5000, 'robi'),
(81, 9, 5, 'wd_carbu', 25000, 'bowo'),
(82, 9, 3, 'filter_bensin', 5000, 'balls'),
(83, 9, 4, 'minyak_rem', 5000, 'wahyu'),
(84, 9, 5, 'wd_carbu', 25000, 'meimei'),
(85, 9, 1, 'busi', 15000, 'cincong'),
(86, 9, 3, 'oli', 30000, 'paijo'),
(87, 9, 2, 'filter_bensin', 5000, 'mark'),
(88, 9, 1, 'busi', 15000, 'ciya'),
(89, 9, 4, 'minyak_rem', 5000, 'wahyu'),
(90, 9, 2, 'filter_bensin', 5000, 'faisal'),
(91, 10, 1, 'busi', 15000, 'jiwa'),
(92, 10, 3, 'oli', 30000, 'Albertus'),
(93, 10, 2, 'filter_bensin', 5000, 'bastian'),
(94, 10, 3, 'oli', 30000, 'kirito'),
(95, 10, 4, 'minyak_rem', 5000, 'mark'),
(96, 10, 1, 'busi', 15000, 'endi'),
(97, 10, 5, 'wd_carbu', 25000, 'sugma'),
(98, 10, 1, 'busi', 15000, 'dodit'),
(99, 10, 3, 'oli', 30000, 'mbabwe'),
(100, 10, 5, 'wd_carbu', 25000, 'caty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indexes for table `sparepart`
--
ALTER TABLE `sparepart`
  ADD PRIMARY KEY (`id_sparepart`),
  ADD KEY `id_sparepart` (`id_sparepart`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_karyawan` (`id_karyawan`),
  ADD KEY `id_sparepart` (`id_sparepart`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sparepart`
--
ALTER TABLE `sparepart`
  MODIFY `id_sparepart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_sparepart`) REFERENCES `sparepart` (`id_sparepart`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
