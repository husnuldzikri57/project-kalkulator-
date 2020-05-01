-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2020 at 04:52 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyek`
--

-- --------------------------------------------------------

--
-- Table structure for table `cetak_tiket`
--

CREATE TABLE `cetak_tiket` (
  `kode_tiket` varchar(10) NOT NULL,
  `no_id` int(10) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `asal_kota` varchar(20) NOT NULL,
  `tujuan_kota` varchar(20) NOT NULL,
  `nomer_telepon` int(15) NOT NULL,
  `harga` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `formulir`
--

CREATE TABLE `formulir` (
  `no_id` int(10) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nomor_telepon` int(15) NOT NULL,
  `umur` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formulir`
--

INSERT INTO `formulir` (`no_id`, `Nama`, `alamat`, `nomor_telepon`, `umur`, `jenis_kelamin`) VALUES
(53761423, 'Husnul', 'Bantul', 2147483647, '20', 'laki laki');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `kode_tiket` char(10) NOT NULL,
  `Transfer` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`kode_tiket`, `Transfer`) VALUES
('euBDfeS', ''),
('YBRSzZa', '');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `tanggal_keberangkatan` date NOT NULL,
  `jumlah_penumpang` varchar(10) NOT NULL,
  `asal_kota` varchar(20) NOT NULL,
  `tujuan_kota` varchar(20) NOT NULL,
  `tujuan_terminal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`tanggal_keberangkatan`, `jumlah_penumpang`, `asal_kota`, `tujuan_kota`, `tujuan_terminal`) VALUES
('2020-05-13', '12', 'jogja', 'lampung', 'po'),
('2020-05-25', '3', 'jogja', 'lampung', 'panjang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cetak_tiket`
--
ALTER TABLE `cetak_tiket`
  ADD UNIQUE KEY `kode_tiket` (`kode_tiket`),
  ADD UNIQUE KEY `no_id` (`no_id`);

--
-- Indexes for table `formulir`
--
ALTER TABLE `formulir`
  ADD PRIMARY KEY (`no_id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`kode_tiket`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cetak_tiket`
--
ALTER TABLE `cetak_tiket`
  ADD CONSTRAINT `cetak_tiket_ibfk_1` FOREIGN KEY (`no_id`) REFERENCES `formulir` (`no_id`),
  ADD CONSTRAINT `cetak_tiket_ibfk_2` FOREIGN KEY (`kode_tiket`) REFERENCES `pembayaran` (`kode_tiket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
