-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 12:30 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan_skincare`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `id_kategori` char(3) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga`, `stok`) VALUES
(1, 'Implore Peeling', 'IP', 30000, 20),
(2, 'Implore Brightening Serum', 'IBS', 35000, 20),
(3, 'Implore Acne Serum', 'IAS', 35000, 20),
(4, 'Implore Night Serum', 'INS', 35000, 20),
(5, 'Implore Retinol', 'IR', 35000, 20),
(6, 'Something Peeling', 'SP', 99000, 20),
(7, 'Something Nacinamide Serum', 'SNS', 99000, 25),
(8, 'Something Retinol', 'SR', 99000, 25),
(9, 'Something AHA BHA', 'SAB', 99000, 25),
(10, 'Something Bakuchiol', 'SB', 99000, 25);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `jk_kelamin` char(1) DEFAULT NULL,
  `alamat_karyawan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `jk_kelamin`, `alamat_karyawan`) VALUES
(1, 'Intan', 'P', 'Bintaro'),
(2, 'Bayu', 'L', 'Serang'),
(3, 'Bambang', 'L', 'Cilegon'),
(4, 'Anton', 'L', 'Pandeglang'),
(5, 'Bondan', 'L', 'Jakarta Utara'),
(6, 'Sari', 'P', 'Jakarta Timur'),
(7, 'Putu', 'P', 'Bali'),
(8, 'Indah', 'P', 'Makassar'),
(9, 'Lusi', 'P', 'Cirebon'),
(10, 'Naufal', 'L', 'Tanggerang');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL,
  `no_telp` char(15) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `no_telp`, `alamat`) VALUES
(1, 'Susan', '0888128880012', 'Vila Melati Mas, Tanggerang Selatan'),
(2, 'Bagas', '0888128889164', 'Villa Dago, Tanggrang Selatan'),
(3, 'Putri', '0888763518482', 'Reni Jaya, Tanggrang Selatan'),
(4, 'Milla', '0812313546565', 'Muncul, Tanggrang Selatan'),
(5, 'Aska', '0898234716273', 'Q-Big BSD, Tanggrang Selatan'),
(6, 'Bima', '0816253614353', 'Bintaro Sektor 9, Tanggrang Selatan'),
(7, 'Udin', '0815361746712', 'Bintaro Sektor 7, Tanggrang Selatan'),
(8, 'Tina', '0871623715361', 'Bintaro Sektor 8, Tanggrang Selatan'),
(9, 'Joko', '0867364562523', 'Serpong, Tanggrang Selatan'),
(10, 'Budi', '0835645514231', 'Ciputat Timur, Tanggrang Selatan'),
(11, 'Yosi', '08712637155521', 'Ciputat Timur, Tanggrang Selatan'),
(12, 'Danu', '08712637536152', 'Pamulang 2, Tanggrang Selatan');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_barang` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `id_pembeli` int(11) NOT NULL,
  `tgl_transaksi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_karyawan`, `id_barang`, `jumlah_barang`, `total`, `id_pembeli`, `tgl_transaksi`) VALUES
(1, 1, 2, 5, 175000, 2, '2020-04-05'),
(2, 2, 1, 10, 300000, 1, '2020-04-10'),
(3, 1, 2, 2, 70000, 3, '2020-04-12'),
(4, 3, 3, 20, 700000, 4, '2020-04-20'),
(5, 4, 4, 15, 525000, 5, '2020-04-22'),
(6, 5, 2, 10, 350000, 5, '2020-04-25'),
(7, 6, 5, 15, 525000, 6, '2020-04-26'),
(8, 7, 6, 10, 990000, 7, '2020-04-26'),
(9, 8, 7, 5, 495000, 8, '2020-04-28'),
(10, 9, 8, 25, 2475000, 9, '2020-05-05'),
(11, 10, 9, 5, 495000, 10, '2020-05-06'),
(12, 5, 10, 5, 495000, 11, '2020-05-07'),
(13, 6, 9, 5, 495000, 10, '2020-05-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
