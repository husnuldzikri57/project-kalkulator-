-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Apr 2020 pada 17.16
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
-- Struktur dari tabel `cetak_tiket`
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
-- Struktur dari tabel `formulir`
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
-- Dumping data untuk tabel `formulir`
--

INSERT INTO `formulir` (`no_id`, `Nama`, `alamat`, `nomor_telepon`, `umur`, `jenis_kelamin`) VALUES
(1234, 'ragil', 'jogja', 82134, '19', 'L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `kode_tiket` char(10) NOT NULL,
  `Transfer` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`kode_tiket`, `Transfer`) VALUES
('1lMnZH2', ''),
('MsnhSoW', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `tanggal_keberangkatan` date NOT NULL,
  `jumlah_penumpang` varchar(10) NOT NULL,
  `asal_kota` varchar(20) NOT NULL,
  `tujuan_kota` varchar(20) NOT NULL,
  `tujuan_terminal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`tanggal_keberangkatan`, `jumlah_penumpang`, `asal_kota`, `tujuan_kota`, `tujuan_terminal`) VALUES
('2020-04-30', '4', 'jogja', 'lampung', 'rajabasa'),
('2020-04-30', '4', 'jogja', 'lampung', 'rajabasa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cetak_tiket`
--
ALTER TABLE `cetak_tiket`
  ADD UNIQUE KEY `kode_tiket` (`kode_tiket`),
  ADD UNIQUE KEY `no_id` (`no_id`);

--
-- Indeks untuk tabel `formulir`
--
ALTER TABLE `formulir`
  ADD PRIMARY KEY (`no_id`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`kode_tiket`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cetak_tiket`
--
ALTER TABLE `cetak_tiket`
  ADD CONSTRAINT `cetak_tiket_ibfk_1` FOREIGN KEY (`no_id`) REFERENCES `formulir` (`no_id`),
  ADD CONSTRAINT `cetak_tiket_ibfk_2` FOREIGN KEY (`kode_tiket`) REFERENCES `pembayaran` (`kode_tiket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
