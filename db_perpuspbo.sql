-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2017 at 04:14 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpuspbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_akun`
--

CREATE TABLE `tb_akun` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_akun`
--

INSERT INTO `tb_akun` (`username`, `password`) VALUES
('admin', 'admin'),
('deby', '123456'),
('pegawai', 'pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `Nis` int(11) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Kelas` varchar(8) NOT NULL,
  `JK` varchar(1) NOT NULL,
  `Telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`Nis`, `Nama`, `Kelas`, `JK`, `Telp`) VALUES
(6567, 'Daffa Kevin R', '9.3', 'L', '081555608801'),
(7847, 'Kirana Asheeqa', '8.2', 'P', '0815556046');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `Kode` int(11) NOT NULL,
  `Judul` varchar(25) NOT NULL,
  `Penulis` varchar(25) NOT NULL,
  `Kategori` enum('Pelajaran','Novel','Referensi','Tips') NOT NULL,
  `Tahun` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`Kode`, `Judul`, `Penulis`, `Kategori`, `Tahun`) VALUES
(1201, 'Mengejar Mimpi', 'Akbar A', 'Novel', 2010),
(6764, 'Aljabar Dasar', 'Algebra', 'Pelajaran', 2009);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pinjam`
--

CREATE TABLE `tb_pinjam` (
  `Struk` int(10) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Judul` varchar(25) NOT NULL,
  `Pinjam` date NOT NULL,
  `Kembali` date NOT NULL,
  `Biaya` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pinjam`
--

INSERT INTO `tb_pinjam` (`Struk`, `Nama`, `Judul`, `Pinjam`, `Kembali`, `Biaya`) VALUES
(1001, 'Deby', 'Meraih Mimpi', '2017-05-16', '2017-05-24', 3000),
(1002, 'Daffa', 'Sains Kuark', '2017-05-23', '2017-05-24', 0),
(1003, 'cvmn', 'cfhgm', '2017-05-02', '2017-05-10', 160000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_akun`
--
ALTER TABLE `tb_akun`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`Kode`);

--
-- Indexes for table `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  ADD PRIMARY KEY (`Struk`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
