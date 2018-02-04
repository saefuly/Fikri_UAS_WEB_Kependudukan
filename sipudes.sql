-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2018 at 08:29 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sipudes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` text,
  `status` int(1) DEFAULT NULL,
  `id_penduduk` varchar(50) DEFAULT NULL,
  `akses` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `status`, `id_penduduk`, `akses`) VALUES
(3, '879678676', '7fd1191185f9c0a997d17083a467cf27', 1, '879678676', 2),
(4, 'fikri', '5d4864249b21de08642aa6ff4178b346', 1, '897980798', 1),
(5, '67575577667', 'ebe40884572c2adb6925d50550b28b79', 1, '67575577667', 2);

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE IF NOT EXISTS `agama` (
  `id_agama` varchar(10) NOT NULL,
  `agama` varchar(30) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_agama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agama`
--

INSERT INTO `agama` (`id_agama`, `agama`, `status`) VALUES
('000000001', 'Islam', 1),
('000000002', 'Kristen', 1),
('000000003', 'Katholik', 1),
('000000004', 'Hindu', 1),
('000000005', 'Budha', 1),
('000000006', 'Khonghucu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE IF NOT EXISTS `desa` (
  `desa` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `kepala_desa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`desa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`desa`, `kecamatan`, `kabupaten`, `kepala_desa`) VALUES
('SOKLAT', 'SUBANG', 'SUBANG', 'FIKRI RAHMAT');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE IF NOT EXISTS `file` (
  `id_kategori` varchar(30) DEFAULT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `file` text,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id_kategori`, `nik`, `file`, `status`) VALUES
('000000001', '9879878978', 'update201608280143400000000019879878978.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` varchar(30) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`, `status`) VALUES
('000000001', 'KTP', 1),
('000000002', 'Akte', 1),
('000000003', 'Surat Nikah', 1),
('000000004', 'Dokumen Penting Lainnya', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_klasifikasi`
--

CREATE TABLE IF NOT EXISTS `kategori_klasifikasi` (
  `id_kategori` varchar(20) DEFAULT NULL,
  `id_klasifikasi` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_klasifikasi`
--

INSERT INTO `kategori_klasifikasi` (`id_kategori`, `id_klasifikasi`, `status`) VALUES
('000000001', '000000002', 1),
('000000004', '000000002', 1),
('000000002', '000000003', 1),
('000000003', '000000002', 1),
('000000002', '000000002', 1),
('000000003', '000000003', 1),
('000000004', '000000003', 1),
('000000001', '000000003', 1),
('000000001', '000000001', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kk`
--

CREATE TABLE IF NOT EXISTS `kk` (
  `id_kk` varchar(20) NOT NULL,
  `no_kk` varchar(50) DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `kk` varchar(30) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_kk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kk`
--

INSERT INTO `kk` (`id_kk`, `no_kk`, `rt`, `rw`, `kk`, `status`) VALUES
('000000002', '786978698768768', '09', '09', '879678676', '1'),
('000000004', '89798787', '08', '09', '897980798', '1'),
('000000007', '15', '20', '20', '', '1'),
('000000008', '789o', 'jnj', 'jnkj', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `klasifikasi`
--

CREATE TABLE IF NOT EXISTS `klasifikasi` (
  `id_klasifikasi` varchar(10) DEFAULT NULL,
  `klasifikasi` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `klasifikasi`
--

INSERT INTO `klasifikasi` (`id_klasifikasi`, `klasifikasi`, `status`) VALUES
('000000001', 'Anak-anak', 1),
('000000002', 'Dewasa', 1),
('000000003', 'Orang Tua', 1),
('000000004', 'Remaja', 1);

-- --------------------------------------------------------

--
-- Table structure for table `klasifikasi_penduduk`
--

CREATE TABLE IF NOT EXISTS `klasifikasi_penduduk` (
  `nik` varchar(50) DEFAULT NULL,
  `id_klasifikasi` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `klasifikasi_penduduk`
--

INSERT INTO `klasifikasi_penduduk` (`nik`, `id_klasifikasi`) VALUES
('9879878978', '000000002'),
('879678676', '000000002'),
('76798697786767', '000000002'),
('769878767', '000000002'),
('67575577667', '000000003'),
('928282828717', '000000002'),
('111', '000000002'),
('897980798', '000000003'),
('1871818', '000000002');

-- --------------------------------------------------------

--
-- Table structure for table `penduduk`
--

CREATE TABLE IF NOT EXISTS `penduduk` (
  `nik` varchar(100) NOT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` varchar(10) DEFAULT NULL,
  `jk` varchar(10) DEFAULT NULL,
  `golongan_darah` varchar(5) DEFAULT NULL,
  `alamat` text,
  `pekerjaan` text,
  `kewarganegaraan` varchar(50) DEFAULT NULL,
  `id_agama` varchar(30) DEFAULT NULL,
  `id_kk` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`nik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penduduk`
--

INSERT INTO `penduduk` (`nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jk`, `golongan_darah`, `alamat`, `pekerjaan`, `kewarganegaraan`, `id_agama`, `id_kk`, `foto`, `status`) VALUES
('111', 'FIKRI', 'SUBANG', '15/09/1997', 'Laki-laki', 'B', 'SUBANG', 'PELAJAR', 'INDONESIA', '000000001', '000000007', 'uploadfoto20180126180021111.jpeg', 1),
('1871818', 'FIKRI RAHMAT', 'SUBANG', '10/01/1997', 'Laki-laki', 'B', 'KOTA SUBANG', 'MAHASISWA', 'INDONESIA', '000000001', '000000009', 'uploadfoto201801281556271871818.jpg', 1),
('67575577667', 'SURYA DINATA', 'TUBAN', '12/09/1998', 'Laki-laki', 'AB', 'DSN ALASTUWO ', 'PNS', 'INDONESIA', '000000001', '000000005', 'uploadfoto2016083006161467575577667.jpeg', 1),
('76798697786767', 'CAMELIA', 'TUBAN', '12/09/1998', 'Perempuan', 'A', 'JALAN AHMAD YANI', 'IBU RUMAH TANGGA', 'INDONESIA', '000000001', '000000002', 'uploadfoto2016083006100676798697786767.jpeg', 1),
('769878767', 'FANA MAYA', 'BOJONEGORO', '12/08/1997', 'Laki-laki', 'AB', 'JALAN SUROYO DINO', 'PNS', 'INDONESIA', '000000001', '000000003', 'uploadfoto20160830061254769878767.jpeg', 1),
('879678676', 'ASAL COBA', 'TEMPAT LAHIR', '01/08/2016', 'Laki-laki', 'A', 'JALAN JALAN KE KOTA', 'PETANI', 'INDONESIA', '000000001', '000000002', 'uploadfoto20160829182418879678676.jpeg', 1),
('897980798', 'FIKRI RAHMAT FAUZI', 'TUBAN', '12/07/1998', 'Laki-laki', 'B', 'JALAN AHMAD YANI', '-', 'INDONESIA', '000000001', '000000004', 'uploadfoto20180126181933897980798.jpeg', 1),
('928282828717', 'ANDRI', 'SUBANG', '01/01/1994', 'Laki-laki', 'B', 'SUBANG', 'KARYAWAN', 'INDONESIA', '000000001', '000000006', '', 1),
('9879878978', 'TEJA PAKU ALAM', 'TUBAN', '01/08/1998', 'Laki-laki', 'A', 'JALAN BUNTU', 'PETANI', 'INDONESIA', '000000001', '000000001', 'uploadfoto201608280140499879878978.jpeg', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
