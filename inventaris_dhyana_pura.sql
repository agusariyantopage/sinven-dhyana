-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2022 at 11:31 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris_dhyana_pura`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(10) NOT NULL,
  `id_subkategori` int(10) NOT NULL,
  `deskripsi` varchar(150) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `spesifikasi` varchar(100) NOT NULL,
  `keterangan` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `id_subkategori`, `deskripsi`, `merk`, `spesifikasi`, `keterangan`) VALUES
(1, 1, 'Tanah Pertanian', '-', '-', 'Default Item'),
(2, 2, 'Tanah Perkebunan', '-', '-', 'Default Item'),
(3, 3, 'Tanah Bangunan Gedung', '-', '-', 'Default Item'),
(4, 4, 'Tanah Untuk Bangunan Bukan Gedung', '-', '-', 'Default Item'),
(5, 5, 'Tanah Kuburan', '-', '-', 'Default Item'),
(6, 6, 'Bangunan Tempat Kerja/Usaha/Sosial', '-', '-', 'Default Item'),
(7, 7, 'Bangunan Rumah Ibadah', '-', '-', 'Default Item'),
(8, 8, 'Bangunan Pastori/Rumah Dinas/Mess', '-', '-', 'Default Item'),
(9, 9, 'Bangunan Bersejarah/Monumen', '-', '-', 'Default Item'),
(10, 10, 'Jalan dan Jembatan', '-', '-', 'Default Item'),
(11, 11, 'Bangunan Air/Irigasi', '-', '-', 'Default Item'),
(12, 12, 'Instalasi/Jaringan Air Bersih', '-', '-', 'Default Item'),
(13, 13, 'Instalasi/Jaringan Air Kotor', '-', '-', 'Default Item'),
(14, 14, 'Instalasi/Jaringan Gardu Listrik', '-', '-', 'Default Item'),
(15, 15, 'Instalasi/Jaringan Pengolahan Limbah', '-', '-', 'Default Item'),
(16, 16, 'Instalasi/Jaringan Gas', '-', '-', 'Default Item'),
(17, 17, 'Instalasi/Jaringan Telepon', '-', '-', 'Default Item'),
(18, 18, 'Alat-alat Bantu', '-', '-', 'Default Item'),
(19, 19, 'Compressor', '-', '-', 'Default Item'),
(20, 20, 'Electric Generating Set', '-', '-', 'Default Item'),
(21, 21, 'Pompa', '-', '-', 'Default Item'),
(22, 22, 'Mesin Bor', '-', '-', 'Default Item'),
(23, 23, 'Unit Pemeliharaan Lapangan', '-', '-', 'Default Item'),
(24, 24, 'Alat Pengolahan Air Kotor', '-', '-', 'Default Item'),
(25, 25, 'Pembangkit Sistem Generator', '-', '-', 'Default Item'),
(26, 26, 'Mesin Molen', '-', '-', 'Default Item'),
(27, 27, 'Stamper', '-', '-', 'Default Item'),
(28, 28, 'Alat Potong Rumput', '-', '-', 'Default Item'),
(29, 29, 'Tenda Knock Down', '-', '-', 'Default Item'),
(30, 30, 'Pengadaan Penerangan Jalan Umum', '-', '-', 'Default Item'),
(31, 31, 'Alat Angkut kendaraan Bermotor', '-', '-', 'Default Item'),
(32, 32, 'Kendaraan Roda Empat ke Atas', '-', '-', 'Default Item'),
(33, 33, 'Kendaraan Bermotor Beroda Dua', '-', '-', 'Default Item'),
(34, 34, 'Alat Ukur', '-', '-', 'Default Item'),
(35, 35, 'Alat Ukur universal', '-', '-', 'Default Item'),
(36, 36, 'Alat Ukur/Test Intelegensia', '-', '-', 'Default Item'),
(37, 37, 'Alat Ukur/Test Alat Kepribadian', '-', '-', 'Default Item'),
(38, 38, 'Alat Ukur /Test Klinis Lain', '-', '-', 'Default Item'),
(39, 39, 'Alat Calibrasi', '-', '-', 'Default Item'),
(40, 40, 'Oscilloscope', '-', '-', 'Default Item'),
(41, 41, 'Universal Tester', '-', '-', 'Default Item'),
(42, 42, 'Alat Ukur/Pembanding', '-', '-', 'Default Item'),
(43, 43, 'Alat Timbangan/Blora', '-', '-', 'Default Item'),
(44, 44, 'Anak Timbangan/Biasa', '-', '-', 'Default Item'),
(45, 45, 'Takaran Kering', '-', '-', 'Default Item'),
(46, 46, 'Takaran Bahan Bangunan 2 HL', '-', '-', 'Default Item'),
(47, 47, 'Takaran Latex/Getah Susu', '-', '-', 'Default Item'),
(48, 48, 'Gelas Takar Berbagai Capasitas', '-', '-', 'Default Item'),
(49, 49, 'Alat Ukur Lainnya', '-', '-', 'Default Item'),
(50, 50, 'Alat Pengolahan', '-', '-', 'Default Item'),
(51, 51, 'Alat Pengolahan Tanah dan Tanaman', '-', '-', 'Default Item'),
(52, 52, 'Alat Panen/Pengolahan', '-', '-', 'Default Item'),
(53, 53, 'Alat-Alat Peternakan', '-', '-', 'Default Item'),
(54, 54, 'Alat Penyimpanan Hasil Percobaan Pertanian', '-', '-', 'Default Item'),
(55, 55, 'Alat Laboratorium Pertanian', '-', '-', 'Default Item'),
(56, 56, 'Alat Processing', '-', '-', 'Default Item'),
(57, 57, 'Alat Pasca Panen', '-', '-', 'Default Item'),
(58, 58, 'Alat Produksi Perikanan', '-', '-', 'Default Item'),
(59, 59, 'Alat Pemeliharaan Tanaman/Alat Penyimpan', '-', '-', 'Default Item'),
(60, 60, 'Alat Pemeliharaan Tanaman', '-', '-', 'Default Item'),
(61, 61, 'Alat Panen', '-', '-', 'Default Item'),
(62, 62, 'Alat Penyimpanan', '-', '-', 'Default Item'),
(63, 63, 'Alat Laboratorium', '-', '-', 'Default Item'),
(64, 64, 'Alat Penangkap Ikan', '-', '-', 'Default Item'),
(65, 65, 'Alat Kantor', '-', '-', 'Default Item'),
(66, 66, 'Mesin Tik', '-', '-', 'Default Item'),
(67, 67, 'Mesin Hitung/Jumlah', '-', '-', 'Default Item'),
(68, 68, 'Alat Reproduksi (Pengganda)', '-', '-', 'Default Item'),
(69, 69, 'Alat Penyimpanan Perlengkapan Kantor', '-', '-', 'Default Item'),
(70, 70, 'Alat Kantor Lainnya', '-', '-', 'Default Item'),
(71, 71, 'Mesin Absensi', '-', '-', 'Default Item'),
(72, 72, 'Mesin Antrian', '-', '-', 'Default Item'),
(73, 73, 'CCTV', '-', '-', 'Default Item'),
(74, 74, 'Intercom (PABX)', '-', '-', 'Default Item'),
(75, 75, 'Papan Visual Elektronik', '-', '-', 'Default Item'),
(76, 76, 'Mesin Penghancur Kertas', '-', '-', 'Default Item'),
(77, 77, 'White board', '-', '-', 'Default Item'),
(78, 78, 'Kotak Saran', '-', '-', 'Default Item'),
(79, 79, 'Air Conditioner (AC)', '-', '-', 'Default Item'),
(80, 80, 'Filling Kabinet', '-', '-', 'Default Item'),
(81, 81, 'Air Cooler', '-', '-', 'Default Item'),
(82, 82, 'Korden / Vertical Blinds', '-', '-', 'Default Item'),
(83, 83, 'Wall Screen', '-', '-', 'Default Item'),
(84, 84, 'Papan Informasi', '-', '-', 'Default Item'),
(85, 85, 'Brankas', '-', '-', 'Default Item'),
(86, 86, 'Papan Nama Kantor', '-', '-', 'Default Item'),
(87, 87, 'Wireless', '-', '-', 'Default Item'),
(88, 88, 'Toilet Portable', '-', '-', 'Default Item'),
(89, 89, 'Tangki Air', '-', '-', 'Default Item'),
(90, 90, 'Alat Rumah Tangga', '-', '-', 'Default Item'),
(91, 91, 'Meubelair', '-', '-', 'Default Item'),
(92, 92, 'Alat Pengukur Waktu', '-', '-', 'Default Item'),
(93, 93, 'Alat Pembersih', '-', '-', 'Default Item'),
(94, 94, 'Alat Pendingin', '-', '-', 'Default Item'),
(95, 95, 'Alat Dapur', '-', '-', 'Default Item'),
(96, 96, 'Alat Rumah Tangga Lainnya (Home Use)', '-', '-', 'Default Item'),
(97, 97, 'Alat Pemadam Kebakaran', '-', '-', 'Default Item'),
(98, 98, 'Televisi', '-', '-', 'Default Item'),
(99, 99, 'Komputer', '-', '-', 'Default Item'),
(100, 100, 'Komputer Unit/Jaringan', '-', '-', 'Default Item'),
(101, 101, 'Personal Komputer', '-', '-', 'Default Item'),
(102, 102, 'Peralatan Komputer Mainframe', '-', '-', 'Default Item'),
(103, 103, 'Peralatan Mini Komputer', '-', '-', 'Default Item'),
(104, 104, 'Peralatan Personal Komputer', '-', '-', 'Default Item'),
(105, 105, 'Peralatan Jaringan', '-', '-', 'Default Item'),
(106, 106, 'Printer/Scanner', '-', '-', 'Default Item'),
(107, 107, 'UPS/Stabilizer', '-', '-', 'Default Item'),
(108, 108, 'Rak Server', '-', '-', 'Default Item'),
(109, 109, 'Perangkat Layanan Informasi', '-', '-', 'Default Item'),
(110, 110, 'Software Berlisensi', '-', '-', 'Default Item'),
(111, 111, 'Proyektor', '-', '-', 'Default Item'),
(112, 112, 'Mainframe/Server', '-', '-', 'Default Item'),
(113, 113, 'Aplikasi/Software', '-', '-', 'Default Item'),
(114, 114, 'Meja Dan Kursi Kerja/Rapat Pejabat', '-', '-', 'Default Item'),
(115, 115, 'Meja Kerja Pejabat', '-', '-', 'Default Item'),
(116, 116, 'Meja Rapat Pejabat', '-', '-', 'Default Item'),
(117, 117, 'Kursi Kerja Pejabat', '-', '-', 'Default Item'),
(118, 118, 'Kursi Rapat Pejabat', '-', '-', 'Default Item'),
(119, 119, 'Kursi Hadap Depan Meja Kerja Pejabat', '-', '-', 'Default Item'),
(120, 120, 'Kursi Tamu di Ruang Pejabat', '-', '-', 'Default Item'),
(121, 121, 'Lemari dan Arsip Pejabat', '-', '-', 'Default Item'),
(122, 122, 'Meja Front Office', '-', '-', 'Default Item'),
(123, 123, 'Alat Studio', '-', '-', 'Default Item'),
(124, 124, 'Peralatan Studio Visual', '-', '-', 'Default Item'),
(125, 125, 'Peralatan Studio Video dan Film', '-', '-', 'Default Item'),
(126, 126, 'Peralatan Studio Video dan Film A', '-', '-', 'Default Item'),
(127, 127, 'Peralatan Cetak', '-', '-', 'Default Item'),
(128, 128, 'Peralatan Computing', '-', '-', 'Default Item'),
(129, 129, 'Peralatan Pemetaan Ukur', '-', '-', 'Default Item'),
(130, 130, 'Peralatan Studio Audio', '-', '-', 'Default Item'),
(131, 131, 'Camera', '-', '-', 'Default Item'),
(132, 132, 'Sound System', '-', '-', 'Default Item'),
(133, 133, 'Alat Komunikasi', '-', '-', 'Default Item'),
(134, 134, 'Alat Komunikasi Telephone', '-', '-', 'Default Item'),
(135, 135, 'Alat Komunikasi Radio', '-', '-', 'Default Item'),
(136, 136, 'Peralatan Pemancar', '-', '-', 'Default Item'),
(137, 137, 'Alat Kedokteran', '-', '-', 'Default Item'),
(138, 138, 'Alat Kesehatan', '-', '-', 'Default Item'),
(139, 139, 'Alat Laboratorium', '-', '-', 'Default Item'),
(140, 140, 'Alat Peraga/Praktek Sekolah', '-', '-', 'Default Item'),
(141, 141, 'Tanaman', '-', '-', 'Default Item'),
(142, 142, 'Ternak', '-', '-', 'Default Item'),
(143, 143, 'Konstruksi Dalam Pengerjaan', '-', '-', 'Default Item'),
(144, 106, 'Printer Epson L120', 'Epson', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `barang_detail`
--

CREATE TABLE `barang_detail` (
  `id_barang_detail` int(10) NOT NULL,
  `id_input` varchar(100) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `kondisi` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `catatan` varchar(100) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `id_unitkerja` int(10) NOT NULL,
  `tanggal_input` date NOT NULL,
  `jam_input` time NOT NULL,
  `id_tambah` int(11) NOT NULL DEFAULT 0,
  `tanggal_perolehan` date NOT NULL,
  `nilai_perolehan` int(15) NOT NULL DEFAULT 0,
  `perubahan_terakhir` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_detail`
--

INSERT INTO `barang_detail` (`id_barang_detail`, `id_input`, `id_barang`, `kondisi`, `lokasi`, `catatan`, `gambar`, `id_unitkerja`, `tanggal_input`, `jam_input`, `id_tambah`, `tanggal_perolehan`, `nilai_perolehan`, `perubahan_terakhir`) VALUES
(1, '0', 3, 'Baik', '-', 'Tanah I (4.050 M2)', '', 1, '2022-03-29', '10:10:37', 0, '1992-01-01', 762906336, '2022-03-28 10:10:00'),
(2, '0', 3, 'Baik', '-', 'Tanah II (1.750 M2)', '', 1, '2022-03-29', '10:12:36', 0, '2001-01-01', 892500000, '2022-03-28 10:12:00'),
(3, '0', 3, 'Baik', '-', 'Tanah III (2.500 M2)', '', 1, '2022-03-29', '09:59:30', 0, '2002-01-01', 1325000000, '2022-03-29 09:59:00'),
(4, '0', 3, 'Baik', '-', 'Tanah IV (1.110 M2)', '', 1, '2022-03-29', '09:59:30', 0, '2008-01-01', 1360453500, '2022-03-29 09:59:00'),
(5, '0', 3, 'Baik', '-', 'by balik nama sertifikat YDP ke GKPB', '', 1, '2022-03-29', '09:59:30', 0, '2015-01-01', 350720312, '2022-03-29 09:59:00'),
(6, '0', 3, 'Baik', '-', 'Tanah ', '', 1, '2022-03-29', '09:59:30', 0, '2015-01-01', 2147483647, '2022-03-29 09:59:00'),
(7, '0', 6, 'Baik', '-', 'Pembangunan Jalan dan Parkir', '', 1, '2022-03-29', '09:59:30', 0, '1998-01-01', 12535000, '2022-03-29 09:59:00'),
(8, '0', 6, 'Baik', '-', 'Revovasi Gedung A', '', 1, '2022-03-29', '10:00:58', 0, '1998-01-01', 19284108, '2022-03-29 10:00:00'),
(9, '0', 6, 'Baik', '-', 'Sktsel Bangunan', '', 1, '2022-03-29', '10:00:58', 0, '1998-01-01', 3000000, '2022-03-29 10:00:00'),
(10, '0', 6, 'Baik', '-', 'Pemasangan Lampu', '', 1, '2022-03-29', '10:00:58', 0, '1998-01-01', 4592000, '2022-03-29 10:00:00'),
(11, '0', 6, 'Baik', '-', 'Trali Besi untuk Lab', '', 1, '2022-03-29', '10:00:58', 0, '1998-01-01', 1344000, '2022-03-29 10:00:00'),
(12, '0', 6, 'Baik', '-', 'Bangunan CV Christina ', '', 1, '2022-03-29', '10:00:58', 0, '1999-01-01', 2147483647, '2022-03-29 10:00:00'),
(13, '0', 6, 'Baik', '-', 'Tambahan Listrik Gedung Baru', '', 1, '2022-03-29', '10:00:58', 0, '1999-01-01', 16500000, '2022-03-29 10:00:00'),
(14, '0', 6, 'Baik', '-', 'Pagar Besi Pengamanan Kampus', '', 1, '2022-03-29', '10:00:58', 0, '1999-01-01', 14657500, '2022-03-29 10:00:00'),
(15, '0', 6, 'Baik', '-', 'Pasang Lampu Gedung B', '', 1, '2022-03-29', '10:00:58', 0, '1999-01-01', 1377000, '2022-03-29 10:00:00'),
(16, '0', 6, 'Baik', '-', 'Pembuatan Taman Gedung B', '', 1, '2022-03-29', '10:00:58', 0, '1999-01-01', 15615000, '2022-03-29 10:00:00'),
(17, '0', 6, 'Baik', '-', 'Kenaikan Kontrak Pengembangan Kampus', '', 1, '2022-03-29', '10:00:58', 0, '1999-01-01', 62608215, '2022-03-29 10:00:00'),
(18, '0', 6, 'Baik', '-', 'Pelatan Lampu Untuk Di Kamar Praktek', '', 1, '2022-03-29', '10:00:58', 0, '2000-01-01', 3000000, '2022-03-29 10:00:00'),
(19, '0', 6, 'Baik', '-', 'Renovasi Pengerjaan Gedung Kampus', '', 1, '2022-03-29', '10:00:58', 0, '2000-01-01', 112602960, '2022-03-29 10:00:00'),
(20, '0', 6, 'Baik', '-', 'Korden dan rel korden', '', 1, '2022-03-29', '10:00:58', 0, '2000-01-01', 11834000, '2022-03-29 10:00:00'),
(21, '0', 6, 'Baik', '-', 'Pintu Ruang direktur', '', 1, '2022-03-29', '20:49:20', 0, '2000-01-01', 1750000, '2022-03-29 20:49:00'),
(22, '0', 6, 'Baik', '-', 'Kaca Jendela dan lis kaca', '', 1, '2022-03-29', '20:49:20', 0, '2001-01-01', 641577, '2022-03-29 20:49:00'),
(23, '0', 6, 'Baik', '-', 'Perbaikan gedung C Lantai 5', '', 1, '2022-03-29', '20:53:36', 0, '2001-01-01', 3144000, '2022-03-29 20:53:00'),
(24, '0', 6, 'Baik', '-', 'Batu, kayu Triplek untuk rumah jenzet', '', 1, '2022-03-29', '20:53:36', 0, '2001-01-01', 5481500, '2022-03-29 20:53:00'),
(25, '0', 6, 'Baik', '-', 'Pengadaan renoir', '', 1, '2022-03-29', '20:53:36', 0, '2001-01-01', 20830000, '2022-03-29 20:53:00'),
(26, '0', 6, 'Baik', '-', 'Perbaikan Kamar kecil', '', 1, '2022-03-29', '20:53:36', 0, '2001-01-01', 5947500, '2022-03-29 20:53:00'),
(27, '0', 6, 'Baik', '-', 'Pemasangana peredam suara', '', 1, '2022-03-29', '20:53:36', 0, '2001-01-01', 27460000, '2022-03-29 20:53:00'),
(28, '0', 6, 'Baik', '-', 'Pelunasan Pekerjaan cat tambahan', '', 1, '2022-03-29', '20:53:36', 0, '2001-01-01', 43506000, '2022-03-29 20:53:00'),
(29, '0', 6, 'Baik', '-', 'Keramik semen pasir untuk di kantin', '', 1, '2022-03-29', '21:53:36', 0, '2001-01-01', 67796000, '2022-03-29 20:53:00'),
(30, '0', 6, 'Baik', '-', 'Pembuatan ruang Makan', '', 1, '2022-03-29', '22:53:36', 0, '2001-01-01', 3140000, '2022-03-29 20:53:00'),
(31, '0', 6, 'Baik', '-', 'Water Proving Gedung C', '', 1, '2022-03-29', '23:53:36', 0, '2001-01-01', 2153000, '2022-03-29 20:53:00'),
(32, '0', 6, 'Baik', '-', 'Pengadaan huruf nama PPLP', '', 1, '2022-03-29', '00:53:36', 0, '2001-01-01', 5500000, '2022-03-29 20:53:00'),
(33, '0', 6, 'Baik', '-', 'Pelunasan Pengadaan pintu alumunium', '', 1, '2022-03-29', '01:53:36', 0, '2001-01-01', 1663247, '2022-03-29 20:53:00'),
(34, '0', 6, 'Baik', '-', 'Kusen untuk pintu Lab FO', '', 1, '2022-03-29', '02:53:36', 0, '2001-01-01', 400000, '2022-03-29 20:53:00'),
(35, '0', 6, 'Baik', '-', 'Renovasi gedung C dan service', '', 1, '2022-03-29', '03:53:36', 0, '2001-01-01', 13653020, '2022-03-29 20:53:00'),
(36, '0', 6, 'Baik', '-', 'Perbaikan gedung', '', 1, '2022-03-29', '04:53:36', 0, '2001-01-01', 28469370, '2022-03-29 20:53:00'),
(37, '0', 6, 'Baik', '-', 'Pembuatan hurup nama STIM', '', 1, '2022-03-29', '05:53:36', 0, '2001-01-01', 3490000, '2022-03-29 20:53:00'),
(38, '0', 6, 'Baik', '-', 'Perbaikan Gedung C dan Tralis gedung B', '', 1, '2022-03-29', '06:53:36', 0, '2001-01-01', 16676100, '2022-03-29 20:53:00'),
(39, '0', 6, 'Baik', '-', 'Pengadaan renoir di gedung B', '', 1, '2022-03-29', '07:53:36', 0, '2001-01-01', 10320000, '2022-03-29 20:53:00'),
(40, '0', 6, 'Baik', '-', 'Perbaikan di Gedung A', '', 1, '2022-03-29', '08:53:36', 0, '2001-01-01', 29296500, '2022-03-29 20:53:00'),
(41, '0', 6, 'Baik', '-', 'Pengadaan renoir gedung B', '', 1, '2022-03-29', '09:53:36', 0, '2001-01-01', 158485000, '2022-03-29 20:53:00'),
(42, '0', 6, 'Baik', '-', 'Renoir gedung B, C', '', 1, '2022-03-29', '10:53:36', 0, '2001-01-01', 13135900, '2022-03-29 20:53:00'),
(43, '0', 6, 'Baik', '-', 'Peralatan perbaikan kamar mandi', '', 1, '2022-03-29', '11:53:36', 0, '2001-01-01', 1934000, '2022-03-29 20:53:00'),
(44, '0', 6, 'Baik', '-', 'Perbaikan gedung A', '', 1, '2022-03-29', '12:53:36', 0, '2001-01-01', 4000000, '2022-03-29 20:49:00'),
(45, '0', 6, 'Baik', '-', 'Pasang keramik  di Lab. Dapur', '', 1, '2022-03-29', '13:53:36', 0, '2001-01-01', 702850, '2022-03-29 20:49:00'),
(46, '0', 6, 'Baik', '-', 'Renovasi Kantor yayasan', '', 1, '2022-03-29', '14:53:36', 0, '2001-01-01', 28120500, '2022-03-29 20:53:00'),
(47, '0', 6, 'Baik', '-', 'Pengadaan pintu lab dapur', '', 1, '2022-03-29', '15:53:36', 0, '2001-01-01', 9480000, '2022-03-29 20:53:00'),
(48, '0', 6, 'Baik', '-', 'Pembuatan dapur gedung C', '', 1, '2022-03-29', '16:53:36', 0, '2001-01-01', 52160555, '2022-03-29 20:53:00'),
(49, '0', 6, 'Baik', '-', 'Trali Pintu di Yayasan', '', 1, '2022-03-29', '17:53:36', 0, '2001-01-01', 516000, '2022-03-29 20:53:00'),
(50, '0', 6, 'Baik', '-', 'Interior', '', 1, '2022-03-29', '18:53:36', 0, '2001-01-01', 100025000, '2022-03-29 20:53:00'),
(51, '0', 6, 'Baik', '-', 'Bangunan Gedung C', '', 1, '2022-03-29', '19:53:36', 0, '2002-01-01', 224114800, '2022-03-29 20:53:00'),
(52, '0', 6, 'Baik', '-', 'Pemasangan panel listrik gedung C', '', 1, '2022-03-29', '20:53:36', 0, '2003-01-01', 8500000, '2022-03-29 20:53:00'),
(53, '0', 6, 'Baik', '-', 'Pekerjaan pembuatan got dan Parkir', '', 1, '2022-03-29', '21:53:36', 0, '2003-01-01', 57944000, '2022-03-29 20:53:00'),
(54, '0', 6, 'Baik', '-', 'Pekerjaan Rest, Cafe dan ruang Pastry', '', 1, '2022-03-29', '22:53:36', 0, '2003-01-01', 60931850, '2022-03-29 20:53:00'),
(55, '0', 6, 'Baik', '-', 'Perbaikan gedung B', '', 1, '2022-03-29', '23:53:36', 0, '2003-01-01', 10802500, '2022-03-29 20:53:00'),
(56, '0', 6, 'Baik', '-', 'Pekerjaan tambahan dan ongkos', '', 1, '2022-03-29', '00:53:36', 0, '2003-01-01', 32668100, '2022-03-29 20:53:00'),
(57, '0', 6, 'Baik', '-', 'Pemasangan pentelasi kaca gedung C', '', 1, '2022-03-29', '01:53:36', 0, '2003-01-01', 1567140, '2022-03-29 20:53:00'),
(58, '0', 6, 'Baik', '-', 'Perbaikan gedung C dan ongkos tukang', '', 1, '2022-03-29', '02:53:36', 0, '2003-01-01', 13444000, '2022-03-29 20:53:00'),
(59, '0', 6, 'Baik', '-', 'Trali dan pagar bangunan', '', 1, '2022-03-29', '03:53:36', 0, '2003-01-01', 11421840, '2022-03-29 20:53:00'),
(60, '0', 6, 'Baik', '-', 'Bangunan kampus', '', 1, '2022-03-29', '04:53:36', 0, '2003-01-01', 145139525, '2022-03-29 20:53:00'),
(61, '0', 6, 'Baik', '-', 'Perbaikan gedung A', '', 1, '2022-03-29', '05:53:36', 0, '2004-01-01', 17100000, '2022-03-29 20:53:00'),
(62, '0', 6, 'Baik', '-', 'Pembuatan interior perpustakaan', '', 1, '2022-03-29', '06:53:36', 0, '2004-01-01', 20845000, '2022-03-29 20:53:00'),
(63, '0', 6, 'Baik', '-', 'Bahan Bangunan untuk gedung A', '', 1, '2022-03-29', '07:53:36', 0, '2004-01-01', 11009750, '2022-03-29 20:53:00'),
(64, '0', 6, 'Baik', '-', 'Pengadaan Sketsel ruang Kejur dan P3M', '', 1, '2022-03-29', '08:53:36', 0, '2006-01-01', 9175000, '2022-03-29 20:53:00'),
(65, '0', 6, 'Baik', '-', 'Bahan Bangunan untuk R Training, Wadir I', '', 1, '2022-03-29', '09:53:36', 0, '2006-01-01', 31844825, '2022-03-29 20:53:00'),
(66, '0', 6, 'Baik', '-', 'Trali runag Wadir I dan R. Training', '', 1, '2022-03-29', '10:53:36', 0, '2006-01-01', 3250000, '2022-03-29 20:53:00'),
(67, '0', 6, 'Baik', '-', 'Trali untuk di ruang kelas Gedung C', '', 1, '2022-03-29', '11:53:36', 0, '2007-01-01', 9720000, '2022-03-29 20:49:00'),
(68, '0', 6, 'Baik', '-', 'Pembuatan trali gedung C dan Talang Air', '', 1, '2022-03-29', '12:53:36', 0, '2007-01-01', 10840000, '2022-03-29 20:49:00'),
(69, '0', 6, 'Baik', '-', 'Renovasi  gedung C', '', 1, '2022-03-29', '13:53:36', 0, '2008-01-01', 145139525, '2022-03-29 20:53:00'),
(70, '0', 6, 'Baik', '-', 'Renovasi Canovi', '', 1, '2022-03-29', '14:53:36', 0, '2008-12-23', 1600000, '2022-03-29 20:53:00'),
(71, '0', 6, 'Baik', '-', 'Pembongkaran Tanah di gedung A', '', 1, '2022-03-29', '15:53:36', 0, '2008-12-23', 63488500, '2022-03-29 20:53:00'),
(72, '0', 6, 'Baik', '-', 'Tiang LCD dan Tralis', '', 1, '2022-03-29', '16:53:36', 0, '2008-12-23', 34100000, '2022-03-29 20:53:00'),
(73, '0', 6, 'Baik', '-', 'Perbaikan untuk Gedung A', '', 1, '2022-03-29', '17:53:36', 0, '2009-02-27', 3000000, '2022-03-29 20:53:00'),
(74, '0', 6, 'Baik', '-', '4 ptk BPN, Tembok pagar tanah selatan', '', 1, '2022-03-29', '18:53:36', 0, '2009-03-13', 26140000, '2022-03-29 20:53:00'),
(75, '0', 6, 'Baik', '-', 'Tembok pagar barat lapangan Basket', '', 1, '2022-03-29', '19:53:36', 0, '2009-03-13', 13800000, '2022-03-29 20:53:00'),
(76, '0', 6, 'Baik', '-', 'Pembangunan Gedung A, Rapat', '', 1, '2022-03-29', '20:53:36', 0, '2009-03-30', 37100000, '2022-03-29 20:53:00'),
(77, '0', 6, 'Baik', '-', 'Sketsel untuk ruang Internet', '', 1, '2022-03-29', '21:53:36', 0, '2009-04-15', 3845780, '2022-03-29 20:53:00'),
(78, '0', 6, 'Baik', '-', 'Bangunan Rumah Kost', '', 1, '2022-03-29', '22:53:36', 0, '2009-05-29', 79877270, '2022-03-29 20:53:00'),
(79, '0', 6, 'Baik', '-', 'Senderan tembok tanah selatan kampus', '', 1, '2022-03-29', '23:53:36', 0, '2009-06-05', 93530000, '2022-03-29 20:53:00'),
(80, '0', 6, 'Baik', '-', 'Bangunan Rumah Kost I', '', 1, '2022-03-29', '00:53:36', 0, '2009-06-16', 34742500, '2022-03-29 20:53:00'),
(81, '0', 6, 'Baik', '-', 'Bangunan rumah Kost II', '', 1, '2022-03-29', '01:53:36', 0, '2009-06-30', 14306300, '2022-03-29 20:53:00'),
(82, '0', 6, 'Baik', '-', 'Banguan Rumah Kost III', '', 1, '2022-03-29', '02:53:36', 0, '2009-07-27', 14058000, '2022-03-29 20:53:00'),
(83, '0', 6, 'Baik', '-', 'Senderan Tembok Tanah selatan Kampus II', '', 1, '2022-03-29', '03:53:36', 0, '2009-07-27', 8700000, '2022-03-29 20:53:00'),
(84, '0', 6, 'Baik', '-', 'Tembok Pagar barat Lap. Basket II', '', 1, '2022-03-29', '04:53:36', 0, '2009-07-27', 2300000, '2022-03-29 20:53:00'),
(85, '0', 6, 'Baik', '-', 'Perlengkapan peresmian Gedung D', '', 1, '2022-03-29', '05:53:36', 0, '2009-07-14', 15306900, '2022-03-29 20:53:00'),
(86, '0', 6, 'Baik', '-', 'Perbaikan Gedung C', '', 1, '2022-03-29', '06:53:36', 0, '2009-08-10', 34437744, '2022-03-29 20:53:00'),
(87, '0', 6, 'Baik', '-', 'Perbaikan Rumah Kost', '', 1, '2022-03-29', '07:53:36', 0, '2009-08-27', 7990000, '2022-03-29 20:53:00'),
(88, '0', 6, 'Baik', '-', 'Pengadaan  Dak air Panas', '', 1, '2022-03-29', '08:53:36', 0, '2009-08-31', 5000000, '2022-03-29 20:53:00'),
(89, '0', 6, 'Baik', '-', 'Pasang Instalasi air panas di G.House', '', 1, '2022-03-29', '09:53:36', 0, '2009-09-14', 9031000, '2022-03-29 20:53:00'),
(90, '0', 6, 'Baik', '-', 'Bangunan rmh di sblah G.House', '', 1, '2022-03-29', '10:53:36', 0, '2009-09-23', 13558500, '2022-03-29 20:49:00'),
(91, '0', 6, 'Baik', '-', 'Perbaikan Bangunan D', '', 1, '2022-03-29', '11:53:36', 0, '2010-04-02', 15600000, '2022-03-29 20:49:00'),
(92, '0', 6, 'Baik', '-', 'Bangunan D', '', 1, '2022-03-29', '12:53:36', 0, '2010-06-30', 2147483647, '2022-03-29 20:53:00'),
(93, '0', 6, 'Baik', '-', 'Pengurusan IMB Bangunan D', '', 1, '2022-03-29', '13:53:36', 0, '2010-07-05', 10000000, '2022-03-29 20:53:00'),
(94, '0', 6, 'Baik', '-', 'Perbaikan gedung B & C', '', 1, '2022-03-29', '14:53:36', 0, '2011-02-04', 4282000, '2022-03-29 20:53:00'),
(95, '0', 6, 'Baik', '-', 'Perbaikan gedung B & C', '', 1, '2022-03-29', '15:53:36', 0, '2011-03-18', 6207000, '2022-03-29 20:53:00'),
(96, '0', 6, 'Baik', '-', 'Service atap kamar mandi STIM dan service gerbang sebelah barat gapura', '', 1, '2022-03-29', '16:53:36', 0, '2011-03-31', 4630000, '2022-03-29 20:53:00'),
(97, '0', 6, 'Baik', '-', 'Renovasi asrama Kampung Bali', '', 1, '2022-03-29', '17:53:36', 0, '2011-07-29', 18651050, '2022-03-29 20:53:00'),
(98, '0', 6, 'Baik', '-', 'Renovasi asrama Kampung Bali', '', 1, '2022-03-29', '18:53:36', 0, '2011-08-29', 87077100, '2022-03-29 20:53:00'),
(99, '0', 6, 'Baik', '-', 'Pembuatan jembatan di kampus', '', 1, '2022-03-29', '19:53:36', 0, '2011-12-20', 26063000, '2022-03-29 20:53:00'),
(100, '0', 6, 'Baik', '-', 'Renovasi kamar mandi lantai II', '', 1, '2022-03-29', '20:53:36', 0, '2012-02-29', 37380610, '2022-03-29 20:53:00'),
(101, '0', 6, 'Baik', '-', 'Renovasi lantai V dan waterproofing', '', 1, '2022-03-29', '21:53:36', 0, '2012-02-29', 16804900, '2022-03-29 20:53:00'),
(102, '0', 6, 'Baik', '-', 'Renovasi kamar mandi yysn dan asrama K Bali', '', 1, '2022-03-29', '22:53:36', 0, '2012-02-29', 10045750, '2022-03-29 20:53:00'),
(103, '0', 6, 'Baik', '-', 'Renovasi kamar mandi lantai III', '', 1, '2022-03-29', '23:53:36', 0, '2012-03-31', 40359400, '2022-03-29 20:53:00'),
(104, '0', 6, 'Baik', '-', 'Pembuatan ruang arsip', '', 1, '2022-03-29', '00:53:36', 0, '2012-03-31', 14223600, '2022-03-29 20:53:00'),
(105, '0', 6, 'Baik', '-', 'Pemasangan keramik dan daun pintu u/ di lab ITC dan fisioterapy', '', 1, '2022-03-29', '01:53:36', 0, '2013-09-04', 32848000, '2022-03-29 20:53:00'),
(106, '0', 6, 'Baik', '-', 'Pemasangan sunblas di ruang lab fisioterapy', '', 1, '2022-03-29', '02:53:36', 0, '2013-06-28', 6883000, '2022-03-29 20:53:00'),
(107, '0', 6, 'Baik', '-', 'Partisi ruang prodi IKST di gedung D', '', 1, '2022-03-29', '03:53:36', 0, '2013-07-15', 38754600, '2022-03-29 20:53:00'),
(108, '0', 6, 'Baik', '-', 'Canopy Galvalum u/ di gedung A lantai III', '', 1, '2022-03-29', '04:53:36', 0, '2013-07-23', 17452500, '2022-03-29 20:53:00'),
(109, '0', 6, 'Baik', '-', 'tangga tower u/ di gedung A', '', 1, '2022-03-29', '05:53:36', 0, '2013-07-24', 850000, '2022-03-29 20:53:00'),
(110, '0', 6, 'Baik', '-', 'Stiker riben / sun blast untuk di ruang prodi IKST di gedung D', '', 1, '2022-03-29', '06:53:36', 0, '2013-07-31', 9921000, '2022-03-29 20:53:00'),
(111, '0', 6, 'Baik', '-', 'Sunblast (stiker) u/ di ruang ICT', '', 1, '2022-03-29', '07:53:36', 0, '2013-07-31', 2389000, '2022-03-29 20:53:00'),
(112, '0', 6, 'Baik', '-', 'Sekat partisi u/ ruangan 7 karakter', '', 1, '2022-03-29', '08:53:36', 0, '2013-09-16', 14359000, '2022-03-29 20:53:00'),
(113, '0', 6, 'Baik', '-', 'Pengecatan dan pembuatan ruangan engineering di kampus Undhira', '', 1, '2022-03-29', '09:53:36', 0, '2013-09-27', 76000000, '2022-03-29 20:49:00'),
(114, '0', 6, 'Baik', '-', 'Pengecatan kamarkamar di asrama K Bali', '', 1, '2022-03-29', '10:53:36', 0, '2013-10-16', 7499000, '2022-03-29 20:49:00'),
(115, '0', 6, 'Baik', '-', 'pengecatan gedung B dan C', '', 1, '2022-03-29', '11:53:36', 0, '2013-10-26', 85775000, '2022-03-29 20:53:00'),
(116, '0', 6, 'Baik', '-', 'Pemasangan korden dan stiker sunblast di ruangan 7 karakter', '', 1, '2022-03-29', '12:53:36', 0, '2013-10-26', 12683950, '2022-03-29 20:53:00'),
(117, '0', 6, 'Baik', '-', 'Pengecatan gedung B bagian selatan dan barat', '', 1, '2022-03-29', '13:53:36', 0, '2013-11-19', 167326500, '2022-03-29 20:53:00'),
(118, '0', 6, 'Baik', '-', 'Pintu dorong, almari dan sketsel atas u/ di ruangan ketua YDP', '', 1, '2022-03-29', '14:53:36', 0, '2014-01-16', 5400000, '2022-03-29 20:53:00'),
(119, '0', 6, 'Baik', '-', 'Rabatan lantai III dan IV gedung D', '', 1, '2022-03-29', '15:53:36', 0, '2014-01-16', 77200000, '2022-03-29 20:53:00'),
(120, '0', 6, 'Baik', '-', 'Service dan cleaning toilet gedung D ', '', 1, '2022-03-29', '16:53:36', 0, '2014-01-28', 26912000, '2022-03-29 20:53:00'),
(121, '0', 6, 'Baik', '-', 'Perbaikan ruang panel dan pembuatan ruang internet kampus Undhira', '', 1, '2022-03-29', '17:53:36', 0, '2014-02-18', 55303000, '2022-03-29 20:53:00'),
(122, '0', 6, 'Baik', '-', '2 unit sketsel kelas u/ di gedung D', '', 1, '2022-03-29', '18:53:36', 0, '2014-02-28', 32000000, '2022-03-29 20:53:00'),
(123, '0', 6, 'Baik', '-', 'Bobok tembok + kusen + pintu gedung D', '', 1, '2022-03-29', '19:53:36', 0, '2014-02-28', 14000000, '2022-03-29 20:53:00'),
(124, '0', 6, 'Baik', '-', 'Pembuatan kamar mandi dan pemasangan tembok belakang kantin Undhira', '', 1, '2022-03-29', '20:53:36', 0, '2014-03-17', 34000000, '2022-03-29 20:53:00'),
(125, '0', 6, 'Baik', '-', 'Renovasi asrama K Bali', '', 1, '2022-03-29', '21:53:36', 0, '2014-03-17', 7037500, '2022-03-29 20:53:00'),
(126, '0', 6, 'Baik', '-', ' renovasi kamar praktek PPLP ', '', 1, '2022-03-29', '22:53:36', 0, '2014-11-07', 354750000, '2022-03-29 20:53:00'),
(127, '0', 6, 'Baik', '-', 'By penurunan tanah dari lantai III kampus Undhira', '', 1, '2022-03-29', '23:53:36', 0, '2014-07-18', 7350000, '2022-03-29 20:53:00'),
(128, '0', 6, 'Baik', '-', 'Pembyrn tahap I u/ pengecatan gedung A dan D', '', 1, '2022-03-29', '00:53:36', 0, '2014-07-24', 61373492, '2022-03-29 20:53:00'),
(129, '0', 6, 'Baik', '-', 'Rabatan lantai V kmps Undhira', '', 1, '2022-03-29', '01:53:36', 0, '2014-12-08', 105980000, '2022-03-29 20:53:00'),
(130, '0', 6, 'Baik', '-', 'Service kmr mandi gedung A', '', 1, '2022-03-29', '02:53:36', 0, '2014-12-08', 185975200, '2022-03-29 20:53:00'),
(131, '0', 6, 'Baik', '-', 'sketsel + bobok tembok, pasang kusen dan pintu u/ di ruang LP2M, ruang dosen dan international prg d', '', 1, '2022-03-29', '03:53:36', 0, '2014-09-30', 18000000, '2022-03-29 20:53:00'),
(132, '0', 6, 'Baik', '-', 'Sketsel kls gd A', '', 1, '2022-03-29', '04:53:36', 0, '2014-09-30', 10500000, '2022-03-29 20:53:00'),
(133, '0', 6, 'Baik', '-', 'Renovasi asrama K Bali', '', 1, '2022-03-29', '05:53:36', 0, '2014-02-27', 16302700, '2022-03-29 20:53:00'),
(134, '0', 6, 'Baik', '-', 'pemasangan sundha plafond di ruang makan asrama K bali', '', 1, '2022-03-29', '06:53:36', 0, '2015-03-31', 8886471, '2022-03-29 20:53:00'),
(135, '0', 6, 'Baik', '-', 'Pembuatan garase mobil', '', 1, '2022-03-29', '07:53:36', 0, '2020-12-10', 167000000, '2022-03-29 20:53:00'),
(136, '0', 6, 'Baik', '-', 'Renovasi restauran bawah', '', 1, '2022-03-29', '08:53:36', 0, '2021-01-31', 220000000, '2022-03-29 20:49:00'),
(137, '0', 6, 'Baik', '-', 'Gedung E', '', 1, '2022-03-29', '09:53:36', 0, '2017-01-01', 2147483647, '2022-03-29 20:49:00'),
(138, '0', 6, 'Baik', '-', 'Bangunan Ruko di depan pos satpam barat', '', 1, '2022-03-29', '10:53:36', 0, '2019-01-01', 850000000, '2022-03-29 20:53:00'),
(139, '0', 6, 'Baik', '-', 'Service plafond lobby Undhira', '', 1, '2022-03-29', '11:53:36', 0, '2021-11-26', 95000000, '2022-03-29 20:53:00'),
(140, '0', 6, 'Baik', '-', 'Perbaikan atap gedung C', '', 1, '2022-03-29', '12:53:36', 0, '2021-11-26', 115500000, '2022-03-29 20:53:00'),
(141, '0', 6, 'Baik', '-', 'Service plafond dan tembok perpustakaan', '', 1, '2022-03-29', '13:53:36', 0, '2021-12-17', 45000000, '2022-03-29 20:53:00'),
(142, '0', 6, 'Baik', '-', 'Jalan parkir gapura, pagar Keliling', '', 1, '2022-03-29', '14:53:36', 0, '1994-01-01', 85019225, '2022-03-29 20:53:00'),
(143, '0', 6, 'Baik', '-', 'Taman, Instalasi listrik, Pintu Gerbang', '', 1, '2022-03-29', '15:53:36', 0, '1996-01-01', 653800, '2022-03-29 20:53:00'),
(144, '0', 6, 'Baik', '-', 'Jalan Setapak, Taman, Lampu dan Lanskape', '', 1, '2022-03-29', '16:53:36', 0, '1999-01-01', 417879800, '2022-03-29 20:53:00'),
(145, '0', 6, 'Baik', '-', 'Material dan ongkos buat bak sampah', '', 1, '2022-03-29', '17:53:36', 0, '2000-01-01', 4081500, '2022-03-29 20:53:00'),
(146, '0', 6, 'Baik', '-', 'Taman & Jalan 0,20 are, 0,25 are', '', 1, '2022-03-29', '18:53:36', 0, '2000-01-01', 11250000, '2022-03-29 20:53:00'),
(147, '0', 6, 'Baik', '-', 'Pengaspalan jalan', '', 1, '2022-03-29', '19:53:36', 0, '2000-01-01', 67570000, '2022-03-29 20:53:00'),
(148, '0', 6, 'Baik', '-', 'Pengadaan Pintu Gerbang Besi', '', 1, '2022-03-29', '20:53:36', 0, '2000-01-01', 9427000, '2022-03-29 20:53:00'),
(149, '0', 6, 'Baik', '-', 'Peralatan listrik lampu jalan', '', 1, '2022-03-29', '21:53:36', 0, '2000-01-01', 5224000, '2022-03-29 20:53:00'),
(150, '0', 6, 'Baik', '-', 'Pasang Paving', '', 1, '2022-03-29', '22:53:36', 0, '2000-01-01', 8002500, '2022-03-29 20:53:00'),
(151, '0', 6, 'Baik', '-', 'Pembuatan taman jalan baru', '', 1, '2022-03-29', '23:53:36', 0, '2001-01-01', 9098500, '2022-03-29 20:53:00'),
(152, '0', 6, 'Baik', '-', 'Papan nama PPLP Dhyana pura', '', 1, '2022-03-29', '00:53:36', 0, '2001-01-01', 17400000, '2022-03-29 20:53:00'),
(153, '0', 6, 'Baik', '-', 'Pengadaad Rumah Jenzet', '', 1, '2022-03-29', '01:53:36', 0, '2001-01-01', 4000000, '2022-03-29 20:53:00'),
(154, '0', 6, 'Baik', '-', 'Pengadaan tanaman dan landchape', '', 1, '2022-03-29', '02:53:36', 0, '2001-01-01', 14818750, '2022-03-29 20:53:00'),
(155, '0', 6, 'Baik', '-', 'Papan nama STIM di jalan baru', '', 1, '2022-03-29', '03:53:36', 0, '2001-01-01', 1200000, '2022-03-29 20:53:00'),
(156, '0', 6, 'Baik', '-', 'Peralatan instalasi air pam', '', 1, '2022-03-29', '04:53:36', 0, '2001-01-01', 786000, '2022-03-29 20:53:00'),
(157, '0', 6, 'Baik', '-', 'Pengadaan pohon paku raja di jalan baru', '', 1, '2022-03-29', '05:53:36', 0, '2001-01-01', 4700000, '2022-03-29 20:53:00'),
(158, '0', 6, 'Baik', '-', 'Pengaspalan jalan kampus', '', 1, '2022-03-29', '06:53:36', 0, '2001-01-01', 42000000, '2022-03-29 20:53:00'),
(159, '0', 6, 'Baik', '-', 'Pintu besi untuk tanah baru', '', 1, '2022-03-29', '07:53:36', 0, '2001-01-01', 2200000, '2022-03-29 20:53:00'),
(160, '0', 6, 'Baik', '-', 'Pembuatan tembok penyengker', '', 1, '2022-03-29', '08:53:36', 0, '2001-01-01', 8000000, '2022-03-29 20:53:00'),
(161, '0', 6, 'Baik', '-', 'Pengadaan tempat parkir', '', 1, '2022-03-29', '09:53:36', 0, '2001-01-01', 23000000, '2022-03-29 20:53:00'),
(162, '0', 6, 'Baik', '-', 'Pengadaan lapangan Basket', '', 1, '2022-03-29', '10:53:36', 0, '2003-01-01', 11640500, '2022-03-29 20:53:00'),
(163, '0', 6, 'Baik', '-', 'Bahan untuk pembuatan lapangan', '', 1, '2022-03-29', '11:53:36', 0, '2004-01-01', 11372175, '2022-03-29 20:53:00'),
(164, '0', 6, 'Baik', '-', 'Perbaikan got dan pasang paving kolam', '', 1, '2022-03-29', '12:53:36', 0, '2004-01-01', 23976500, '2022-03-29 20:53:00'),
(165, '0', 6, 'Baik', '-', 'Pembuatan taman Gd C lantai IV', '', 1, '2022-03-29', '13:53:36', 0, '2004-01-01', 19350000, '2022-03-29 20:53:00'),
(166, '0', 6, 'Baik', '-', 'Bahan untuk pasang paving di parkir', '', 1, '2022-03-29', '14:53:36', 0, '2004-01-01', 5185500, '2022-03-29 20:53:00'),
(167, '0', 6, 'Baik', '-', 'Paving untuk gedung A', '', 1, '2022-03-29', '15:53:36', 0, '2004-01-01', 6190000, '2022-03-29 20:53:00'),
(168, '0', 6, 'Baik', '-', 'Pagar kawat berduri di gedung A', '', 1, '2022-03-29', '16:53:36', 0, '2006-01-01', 6700000, '2022-03-29 20:53:00'),
(169, '0', 6, 'Baik', '-', 'Renovasi kantin Gedung A', '', 1, '2022-03-29', '17:53:36', 0, '2007-01-01', 5327000, '2022-03-29 20:53:00'),
(170, '0', 6, 'Baik', '-', 'Pagar besi depan kampus dan ongkos', '', 1, '2022-03-29', '18:53:36', 0, '2007-07-04', 5625000, '2022-03-29 20:53:00'),
(171, '0', 6, 'Baik', '-', 'Pembuatan kolam', '', 1, '2022-03-29', '19:53:36', 0, '2007-11-21', 27929850, '2022-03-29 20:53:00'),
(172, '0', 6, 'Baik', '-', 'Pembuatan bale bengong di kolam', '', 1, '2022-03-29', '20:53:36', 0, '2008-01-18', 14042500, '2022-03-29 20:53:00'),
(173, '0', 6, 'Baik', '-', 'Pembuatan tempat duduk', '', 1, '2022-03-29', '21:53:36', 0, '2008-07-17', 2802500, '2022-03-29 20:53:00'),
(174, '0', 6, 'Baik', '-', 'Pembuatan Kolam', '', 1, '2022-03-29', '22:53:36', 0, '2008-10-24', 1175000, '2022-03-29 20:53:00'),
(175, '0', 6, 'Baik', '-', 'Papan Basket', '', 1, '2022-03-29', '23:53:36', 0, '2009-04-15', 3200000, '2022-03-29 20:53:00'),
(176, '0', 6, 'Baik', '-', 'Pembuatan sumur bor dan peralatan', '', 1, '2022-03-29', '00:53:36', 0, '2009-07-14', 7743500, '2022-03-29 20:53:00'),
(177, '0', 6, 'Baik', '-', 'Perbaikan Lapangan Volly', '', 1, '2022-03-29', '01:53:36', 0, '2009-07-31', 3000000, '2022-03-29 20:53:00'),
(178, '0', 6, 'Baik', '-', 'Pasang koral sikat dirum ah kost', '', 1, '2022-03-29', '02:53:36', 0, '2009-08-19', 3500000, '2022-03-29 20:53:00'),
(179, '0', 6, 'Baik', '-', 'Pasang paving tambahan sebelah tmr Gd D', '', 1, '2022-03-29', '03:53:36', 0, '2009-08-31', 58867000, '2022-03-29 20:53:00'),
(180, '0', 6, 'Baik', '-', 'Perbaikan Lap Basket', '', 1, '2022-03-29', '04:53:36', 0, '2009-08-31', 2000000, '2022-03-29 20:53:00'),
(181, '0', 6, 'Baik', '-', 'Pengadaan paving di guest House', '', 1, '2022-03-29', '05:53:36', 0, '2009-08-27', 3500000, '2022-03-29 20:53:00'),
(182, '0', 6, 'Baik', '-', 'Pengadaan paving di guest House', '', 1, '2022-03-29', '06:53:36', 0, '2009-09-23', 5426000, '2022-03-29 20:53:00'),
(183, '0', 6, 'Baik', '-', 'Pembuatan polisi tidur barat', '', 1, '2022-03-29', '07:53:36', 0, '2009-11-17', 992000, '2022-03-29 20:53:00'),
(184, '0', 6, 'Baik', '-', 'Pembuatan polisi tidur timur', '', 1, '2022-03-29', '08:53:36', 0, '2009-12-05', 150000, '2022-03-29 20:53:00'),
(185, '0', 6, 'Baik', '-', 'Pembuatan sumur bor u/ asrama Kampung Bali', '', 1, '2022-03-29', '09:53:36', 0, '2010-10-29', 3302000, '2022-03-29 20:53:00'),
(186, '0', 6, 'Baik', '-', 'Peraltn instalasi listrik u/ asrama Kampung Bali', '', 1, '2022-03-29', '10:53:36', 0, '2010-10-28', 2040000, '2022-03-29 20:53:00'),
(187, '0', 6, 'Baik', '-', 'Pembuatan sumur bor u/ asrama Kampung Bali (23.000 WATT)', '', 1, '2022-03-29', '11:53:36', 0, '2010-11-03', 26100000, '2022-03-29 20:53:00'),
(188, '0', 6, 'Baik', '-', 'Tambah talang + fiber di atas pergola dan ruang pompa u/ asr', '', 1, '2022-03-29', '12:53:36', 0, '2010-11-08', 9600000, '2022-03-29 20:53:00'),
(189, '0', 6, 'Baik', '-', 'Instalasi Solar System & Booster Pump u/ asrama Kampung Bali', '', 1, '2022-03-29', '13:53:36', 0, '2010-11-15', 5320500, '2022-03-29 20:53:00'),
(190, '0', 6, 'Baik', '-', 'Pemasangan paving dan senderan u/ jln sepanjang asrama Kampung Bali', '', 1, '2022-03-29', '14:53:36', 0, '2010-12-16', 86390250, '2022-03-29 20:53:00'),
(191, '0', 6, 'Baik', '-', 'Pemasangan sambungan sementara listrik Asrama Kampung Bali', '', 1, '2022-03-29', '15:53:36', 0, '2011-01-25', 15288035, '2022-03-29 20:53:00'),
(192, '0', 6, 'Baik', '-', 'Pembongkaran, perataan & penanaman rumput u/ taman Asrama', '', 1, '2022-03-29', '16:53:36', 0, '2011-01-31', 12139000, '2022-03-29 20:53:00'),
(193, '0', 6, 'Baik', '-', 'Pembuatan parkir sepeda motor untuk asrama Kampung Bali (bahan bangunan)', '', 1, '2022-03-29', '17:53:36', 0, '2011-03-31', 8776500, '2022-03-29 20:53:00'),
(194, '0', 6, 'Baik', '-', 'Pembuatan taman di sebelah barat kolam', '', 1, '2022-03-29', '18:53:36', 0, '2011-03-31', 3010000, '2022-03-29 20:53:00'),
(195, '0', 6, 'Baik', '-', 'Pembuatan parkir sepeda motor untuk asrama Kampung Bali (ongkos tukang)', '', 1, '2022-03-29', '19:53:36', 0, '2011-07-04', 8760000, '2022-03-29 20:53:00'),
(196, '0', 6, 'Baik', '-', 'Pembuatan sketsel untuk ruang prodi Undhira', '', 1, '2022-03-29', '20:53:36', 0, '2011-06-16', 55000000, '2022-03-29 20:53:00'),
(197, '0', 6, 'Baik', '-', 'Pembuatan sketsel untuk perpustakaan', '', 1, '2022-03-29', '21:53:36', 0, '2011-08-19', 30150000, '2022-03-29 20:53:00'),
(198, '0', 6, 'Baik', '-', 'Pembuatan rak perpustakaan dan pintu kuadi u/ ruang rektor', '', 1, '2022-03-29', '22:53:36', 0, '2011-11-15', 30500000, '2022-03-29 20:53:00'),
(199, '0', 6, 'Baik', '-', 'Pembuatan pos satpam', '', 1, '2022-03-29', '23:53:36', 0, '2011-11-30', 30760500, '2022-03-29 20:53:00'),
(200, '0', 6, 'Baik', '-', 'Pembuatan talang tempat kompressor AC di Inholland', '', 1, '2022-03-29', '00:53:36', 0, '2011-12-20', 46927630, '2022-03-29 20:53:00'),
(201, '0', 6, 'Baik', '-', 'Pembongkaran sketsel, pembuatan rak buku perpustakaan', '', 1, '2022-03-29', '01:53:36', 0, '2012-01-03', 9200000, '2022-03-29 20:53:00'),
(202, '0', 6, 'Baik', '-', 'Pembuatan tutup got di kmps Undhira', '', 1, '2022-03-29', '02:53:36', 0, '2012-01-16', 32534000, '2022-03-29 20:53:00'),
(203, '0', 6, 'Baik', '-', 'Pembuatan masterplan Undhira', '', 1, '2022-03-29', '03:53:36', 0, '2012-02-15', 175000000, '2022-03-29 20:53:00'),
(204, '0', 6, 'Baik', '-', 'Pembuatan papan nama universitas', '', 1, '2022-03-29', '04:53:36', 0, '2012-03-29', 46000000, '2022-03-29 20:53:00'),
(205, '0', 6, 'Baik', '-', 'Pembuatan pergola di asrama K Bali', '', 1, '2022-03-29', '05:53:36', 0, '2012-04-25', 7067500, '2022-03-29 20:53:00'),
(206, '0', 6, 'Baik', '-', 'Service meja, pembuatan rak dapur dan sketsel u/ di lab komputer dan dapur', '', 1, '2022-03-29', '06:53:36', 0, '2012-04-16', 31650000, '2022-03-29 20:53:00'),
(207, '0', 6, 'Baik', '-', 'By cetak proposal dan penyelidikan tanah', '', 1, '2022-03-29', '07:53:36', 0, '2012-06-28', 5500000, '2022-03-29 20:53:00'),
(208, '0', 6, 'Baik', '-', 'By perataan dan pemotongan tanah u/ lahan parkir', '', 1, '2022-03-29', '08:53:36', 0, '2012-08-31', 57487500, '2022-03-29 20:53:00'),
(209, '0', 6, 'Baik', '-', 'Pengurugan dan pemasanagn limestone lahan parkir Undhira', '', 1, '2022-03-29', '09:53:36', 0, '2012-10-01', 84748125, '2022-03-29 20:53:00'),
(210, '0', 6, 'Baik', '-', 'Bongkar pasang sketsel dan pembuatan sketsel baru u/ ruang kemahasiswaan, P3 M, SPMI', '', 1, '2022-03-29', '10:53:36', 0, '2013-02-28', 9650000, '2022-03-29 20:53:00'),
(211, '0', 6, 'Baik', '-', 'Pembuatan kusen loket, ongkos bongkar tembok dan pasang kusen u/ ruang kemahasiswaan, P3M, SPMI', '', 1, '2022-03-29', '11:53:36', 0, '2013-02-28', 4300000, '2022-03-29 20:53:00'),
(212, '0', 6, 'Baik', '-', 'Pemasangan partisi u/ di ruang lab dan ITC kampus Undhira', '', 1, '2022-03-29', '12:53:36', 0, '2013-07-05', 52096000, '2022-03-29 20:53:00'),
(213, '0', 6, 'Baik', '-', 'Perbaikan paving yang rusak di sepanjang kampus Undhira', '', 1, '2022-03-29', '13:53:36', 0, '2013-12-07', 9282500, '2022-03-29 20:53:00'),
(214, '0', 6, 'Baik', '-', 'Pemasangan paving antara gedung B dan C', '', 1, '2022-03-29', '14:53:36', 0, '2013-07-31', 20000000, '2022-03-29 20:53:00'),
(215, '0', 6, 'Baik', '-', 'Penambahan daya listrik u/ gedung A, D dan B, C', '', 1, '2022-03-29', '15:53:36', 0, '2013-09-27', 68746000, '2022-03-29 20:53:00'),
(216, '0', 6, 'Baik', '-', 'Pemasangan kabel fiber dan fanel listrik', '', 1, '2022-03-29', '16:53:36', 0, '2013-10-16', 33525000, '2022-03-29 20:53:00'),
(217, '0', 6, 'Baik', '-', 'Pembelian kabel dan by instalasi kabel telp PABX dari gedung B ke D', '', 1, '2022-03-29', '17:53:36', 0, '2013-12-20', 23500000, '2022-03-29 20:53:00'),
(218, '0', 6, 'Baik', '-', 'Pembangunan pagar sebelah selatan gedung kampus Undhira', '', 1, '2022-03-29', '18:53:36', 0, '2014-08-01', 135821750, '2022-03-29 20:53:00'),
(219, '0', 6, 'Baik', '-', 'Pembuatan ground tank di gedung A', '', 1, '2022-03-29', '19:53:36', 0, '2016-01-16', 33950000, '2022-03-29 20:53:00'),
(220, '0', 6, 'Baik', '-', 'Pemasangan paving di sebelah selatan kampus Undhira', '', 1, '2022-03-29', '20:53:36', 0, '2014-07-02', 80350000, '2022-03-29 20:53:00'),
(221, '0', 6, 'Baik', '-', 'By gambar renovasi lobby kampus Undhira', '', 1, '2022-03-29', '21:53:36', 0, '2014-02-28', 49867000, '2022-03-29 20:53:00'),
(222, '0', 6, 'Baik', '-', 'Pemindahan panel induk dan pemasangan kabel tanam di kampus Undhira', '', 1, '2022-03-29', '22:53:36', 0, '2014-02-28', 86400000, '2022-03-29 20:53:00'),
(223, '0', 6, 'Baik', '-', 'Pemasangan paving di jalan setapak dan tempat parkir Undhira', '', 1, '2022-03-29', '23:53:36', 0, '2014-10-03', 68597900, '2022-03-29 20:53:00'),
(224, '0', 6, 'Baik', '-', 'Pengurugan areal parkir sepeda motor sebelah timur kampus Undhira', '', 1, '2022-03-29', '00:53:36', 0, '2014-03-17', 62040000, '2022-03-29 20:53:00'),
(225, '0', 6, 'Baik', '-', 'Pembyrn tahap I u/ Pemasangan paving di areal parkir sepeda motor Undhira', '', 1, '2022-03-29', '01:53:36', 0, '2014-04-14', 107253000, '2022-03-29 20:53:00'),
(226, '0', 6, 'Baik', '-', 'Pembelian kabel listrik u/ instalasi listrik di kampus Undhira', '', 1, '2022-03-29', '02:53:36', 0, '2014-04-14', 26575000, '2022-03-29 20:53:00'),
(227, '0', 6, 'Baik', '-', 'Pembelian kabel listrik u/ instalasi listrik di gedung C', '', 1, '2022-03-29', '03:53:36', 0, '2014-04-30', 32000000, '2022-03-29 20:53:00'),
(228, '0', 6, 'Baik', '-', 'Penambahan daya listrik untuk di gedung A', '', 1, '2022-03-29', '04:53:36', 0, '2014-05-31', 246712000, '2022-03-29 20:53:00'),
(229, '0', 6, 'Baik', '-', 'Pemasangan paving u/ parkir sepeda motor kmps Undhira', '', 1, '2022-03-29', '05:53:36', 0, '2014-11-26', 98467000, '2022-03-29 20:53:00'),
(230, '0', 6, 'Baik', '-', 'Pemidahan dan pemasangan panel di ruang adm PPLP', '', 1, '2022-03-29', '06:53:36', 0, '2015-01-31', 40000000, '2022-03-29 20:53:00'),
(231, '0', 6, 'Baik', '-', 'Pembuatan tempat sampah dan penataan taman di parkir barat', '', 1, '2022-03-29', '07:53:36', 0, '2015-08-31', 37800000, '2022-03-29 20:53:00'),
(232, '0', 6, 'Baik', '-', 'Pembuatan sumur bor di gedung D (ongkos)', '', 1, '2022-03-29', '08:53:36', 0, '2015-12-03', 36900000, '2022-03-29 20:53:00'),
(233, '0', 6, 'Baik', '-', 'Pembuatan pagar dan tempat sampah di depan gedung F', '', 1, '2022-03-29', '09:53:36', 0, '2021-10-28', 74500000, '2022-03-29 20:53:00'),
(234, '0', 6, 'Baik', '-', 'Pembuatan kandang burung Jalak Bali', '', 1, '2022-03-29', '10:53:36', 0, '2021-10-25', 22582500, '2022-03-29 20:53:00'),
(235, '0', 32, 'Baik', '-', 'Mobil Toyota Kijang LF 82', '', 1, '2022-03-29', '11:53:36', 0, '2001-10-05', 162700000, '2022-03-29 20:53:00'),
(236, '0', 32, 'Baik', '-', 'Mobil Toyota kijang LGX', '', 1, '2022-03-29', '12:53:36', 0, '2005-09-30', 133463000, '2022-03-29 20:53:00'),
(237, '0', 32, 'Baik', '-', 'Mobil Toyota Kijang SGX tahun 2002', '', 1, '2022-03-29', '13:53:36', 0, '2006-01-01', 100145450, '2022-03-29 20:53:00'),
(238, '0', 32, 'Baik', '-', 'Mobil Toyota kijang 1,8 LGX', '', 1, '2022-03-29', '14:53:36', 0, '2008-05-15', 134432000, '2022-03-29 20:53:00'),
(239, '0', 32, 'Baik', '-', 'Mobil Avanza G M /T 1 3', '', 1, '2022-03-29', '15:53:36', 0, '2010-05-31', 154200000, '2022-03-29 20:53:00'),
(240, '0', 33, 'Baik', '-', 'Sepeda Motor Supra X', '', 1, '2022-03-29', '16:53:36', 0, '2003-12-30', 0, '2022-03-29 20:53:00'),
(241, '0', 32, 'Baik', '-', 'Mobil Avanza G M /T 1 3 u/ Rektor Undhira', '', 1, '2022-03-29', '17:53:36', 0, '2011-08-26', 162400000, '2022-03-29 20:53:00'),
(242, '0', 32, 'Baik', '-', 'Mobil Avanza G M /T 1 3 u/ Sekretaris YDP', '', 1, '2022-03-29', '18:53:36', 0, '2011-11-30', 162400000, '2022-03-29 20:53:00'),
(243, '0', 32, 'Baik', '-', 'Mobil Pick up L 300 DK 9371 BL', '', 1, '2022-03-29', '19:53:36', 0, '2015-08-11', 57000000, '2022-03-29 20:53:00'),
(244, '0', 32, 'Baik', '-', 'Mobil Kijang Inova u/ rektor', '', 1, '2022-03-29', '20:53:36', 0, '2015-08-13', 293250000, '2022-03-29 20:53:00'),
(245, '0', 32, 'Baik', '-', 'Mobil IGNIS DK 1752 QY', '', 1, '2022-03-29', '21:53:36', 0, '2021-07-30', 0, '2022-03-29 20:53:00'),
(246, '1649575712', 144, 'Baik', '401', '', '', 1, '2022-04-10', '15:28:32', 0, '2022-04-10', 2500000, '2022-04-10 15:28:32'),
(247, '1649575767', 131, 'Baik', 'Sekertariat', '', '', 1, '2022-04-10', '15:29:27', 0, '2022-04-10', 5950000, '2022-04-10 15:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `barang_detail_log`
--

CREATE TABLE `barang_detail_log` (
  `id_barang_detail_log` int(10) NOT NULL,
  `id_barang_detail` int(10) NOT NULL,
  `id_barang` int(10) NOT NULL,
  `perubahan` text NOT NULL DEFAULT '-- Tidak Ada Perubahan --',
  `catatan` text NOT NULL DEFAULT '-- Tidak Ada Catatan --',
  `tanggal` date NOT NULL DEFAULT current_timestamp(),
  `waktu_input` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_unit` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `barang_habispakai`
--

CREATE TABLE `barang_habispakai` (
  `id_barang_habispakai` int(10) NOT NULL,
  `deskripsi` varchar(150) NOT NULL,
  `spesifikasi` varchar(150) NOT NULL,
  `satuan` varchar(100) NOT NULL,
  `harga` double(17,2) NOT NULL DEFAULT 0.00,
  `update_terakhir` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang_habispakai`
--

INSERT INTO `barang_habispakai` (`id_barang_habispakai`, `deskripsi`, `spesifikasi`, `satuan`, `harga`, `update_terakhir`) VALUES
(2, 'Kertas HVS A4', '70 Gr', 'Rim', 0.00, '0000-00-00 00:00:00'),
(3, 'Kertas Stensil/Buram', '', 'Rim', 0.00, '0000-00-00 00:00:00'),
(4, 'Kertas Folio Color', '', 'Rim', 0.00, '0000-00-00 00:00:00'),
(5, 'Kertas Double Folio', '', 'Lembar', 0.00, '0000-00-00 00:00:00'),
(6, 'Buku Folio', '100; besar', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(8, 'Stabilo', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(9, 'Spidol', 'marker dan boardmarker', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(10, 'Tip-ex', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(11, 'Penghapus Papan Tulis', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(12, 'Map Bisnis File', '', 'Lusin', 0.00, '0000-00-00 00:00:00'),
(13, 'Map Kancing Plastik', '', 'Lusin', 0.00, '0000-00-00 00:00:00'),
(14, 'Stofmap Folio', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(15, 'Map Seagull/map presensi', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(16, 'Amplop Coklat Besar', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(17, 'Amplop Folio', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(18, 'Amplop Go Putih', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(19, 'Box File', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(20, 'Ordner Teka Folio', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(21, 'Pocket File', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(22, 'Post It Note', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(23, 'Document Keeper', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(24, 'Binder Clip', 'Hitam 155; ukr.sedang', 'Kotak', 0.00, '0000-00-00 00:00:00'),
(25, 'Paper Clip', 'No. 1, 3, dan 5', 'Kotak', 0.00, '0000-00-00 00:00:00'),
(26, 'Tinta Printer Laser Jet', '17, 79, 85', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(27, 'Tinta Printer', 'T6641 (black, yellow, cyan, meganta)', 'Botol', 0.00, '0000-00-00 00:00:00'),
(28, 'Tinta PG', '745 (black+color)', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(29, 'Stepler+Isi', 'HD 10', 'Pak', 0.00, '0000-00-00 00:00:00'),
(30, 'Disc Pulpen', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(31, 'Penggaris', '30cm; 40cm; 60cm', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(32, 'Tinta Stempel', '', 'Botol', 0.00, '0000-00-00 00:00:00'),
(33, 'Double Tape', 'Warna Putih', 'Pak', 0.00, '0000-00-00 00:00:00'),
(34, 'Lakban', 'Bening/Coklat/Cloth', 'Pak', 0.00, '0000-00-00 00:00:00'),
(35, 'Isolasi Bening', 'Kecil/Besar', 'Pak', 0.00, '0000-00-00 00:00:00'),
(36, 'Selotip', 'Kecil/Besar (warna putih dan hitam)', 'Pak', 0.00, '0000-00-00 00:00:00'),
(37, 'Paper Napkin', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(38, 'Minyak Goreng', '2 liter', 'Liter', 0.00, '0000-00-00 00:00:00'),
(39, 'Sunlight', 'Cair dan cream', 'Gram/liter', 0.00, '0000-00-00 00:00:00'),
(40, 'Wings Biru', '', 'Gram', 0.00, '0000-00-00 00:00:00'),
(41, 'Susu Dancow', 'Bubuk', 'Gram', 0.00, '0000-00-00 00:00:00'),
(42, 'Nice Fresh Classic', 'Cairan Pembersih Stainless', 'Liter', 0.00, '0000-00-00 00:00:00'),
(43, 'Conq R Dust', 'Cairan Pembersih Lantai', 'Liter', 0.00, '0000-00-00 00:00:00'),
(44, 'Go Getter', 'Wood Cleaner', 'Liter', 0.00, '0000-00-00 00:00:00'),
(45, 'Marble Klin', 'Wood Cleaner', 'Liter', 0.00, '0000-00-00 00:00:00'),
(46, 'Glade Matic', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(47, 'Glade Aero', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(48, 'Unik Sponge Dapur', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(49, 'Unik Sabut Stainless', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(50, 'Shine Up', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(51, 'Go Metal Polish', '', 'Botol', 0.00, '0000-00-00 00:00:00'),
(52, 'Klin Glance', 'Glass Cleaner', 'Botol', 0.00, '0000-00-00 00:00:00'),
(53, 'Be Fresh', '', 'Botol', 0.00, '0000-00-00 00:00:00'),
(54, 'Hand Brush NGT', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(55, 'Sikat Cuci Baju', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(56, 'Gunting Gagang Merah', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(57, 'Tag Gun', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(58, 'Dust Pan NGT', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(59, 'Mega Container SIP', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(60, 'Container Diora Claris', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(61, 'Container Rabbit Hijau', 'Ukuran 62x43x25', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(62, 'Keranjang Medium Merah', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(63, 'Sapu Lidi Taman', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(64, 'Gayung Air', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(65, 'Refill Wet Mop Cotton', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(66, 'Wet Mop Cotton Complete', '', 'Set', 0.00, '0000-00-00 00:00:00'),
(67, 'Sapu Ijuk Kipas Besar', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(68, 'Ember Tanggung Warna', 'Ukuran 6 galon', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(69, 'Lap Kotak', '', 'Lusin', 0.00, '0000-00-00 00:00:00'),
(70, 'Dispenser Soap', '1 tombol', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(71, 'Botol Sprayer Asena', '500ml', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(72, 'Ember Hitam+Tutup', '80 galon', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(73, 'Tempat Sampah Swing', '15 liter', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(74, 'Floor Brush', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(75, 'Toilet Bowl Brush', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(76, 'Stick Mop', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(77, 'Stick Lobi Duster', '60cm', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(78, 'Sapu Bulu Plastik', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(79, 'Lap Kuning Flanel', '', 'Lusin', 0.00, '0000-00-00 00:00:00'),
(80, 'Lap Kanebo Phoenix', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(81, 'Kantong Sampah Plastik Hitam', '90x100cm', 'Pak', 0.00, '0000-00-00 00:00:00'),
(82, 'Sapu Nylon NGT', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(83, 'Hand Brush NGT', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(84, 'Floor Squeegee Complete', '55cm', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(85, 'Window Squeegee', '35cm', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(86, 'Sponge Polytex', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(87, 'Carry Caddy', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(88, 'Ember Mop Kuning', 'Single Bucket', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(89, 'Kape', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(90, 'Floor Refill Loby Duster Acrylic', '60cm', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(91, 'Single Bucket Yellow', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(92, 'Baterai Alkaline', 'A2, A3, A4', 'Pak', 0.00, '0000-00-00 00:00:00'),
(93, 'Lem Kertas', '', 'Tube/pcs', 0.00, '0000-00-00 00:00:00'),
(94, 'Cutter', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(95, 'Isi Cutter', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(96, 'Buku Kuitansi Mini', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(97, 'Buku Nota Kontan', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(98, 'Buku Kuarto', 'Ukuran Folio', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(99, 'Buku Kuarto', 'Ukuran Biasa', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(100, 'Kertas Warna', 'Merah, Kuning, Hijau, Biru', 'Rim', 0.00, '0000-00-00 00:00:00'),
(101, 'Kertas Bufallo', 'Ukuran A4 dan Folio', 'Rim', 0.00, '0000-00-00 00:00:00'),
(102, 'Pelubang Kertas/Perforator', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(103, 'Materai', '6000 dan 10.000', 'Lembar', 0.00, '0000-00-00 00:00:00'),
(104, 'Gunting Kertas', 'Ukuran sedang dan besar', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(105, 'Karet Gelang', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(106, 'Bak Stempel', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(107, 'Piping Bag', '', 'Lusin', 0.00, '0000-00-00 00:00:00'),
(108, 'Desinfectan', '', 'Liter', 0.00, '0000-00-00 00:00:00'),
(109, 'Sarung Tangan', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(110, 'Masker Care One', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(111, 'Face Shield', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(112, 'Thermogun Wall', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(113, 'Bingkai Kaca Foto Presiden+Wakil', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(114, 'Bottle+Bracket', 'Ukuran 500ml', 'Set', 0.00, '0000-00-00 00:00:00'),
(115, 'Tissue Paseo Smart', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(116, 'Plastik Sampah', '', 'Lusin', 0.00, '0000-00-00 00:00:00'),
(117, 'Pengisian Tabung Gas', 'Ukr Tabung Kecil dan Besar', 'Liter', 0.00, '0000-00-00 00:00:00'),
(118, 'Cetak Kuitansi Pembayaran Siswa', '', 'Lembar', 0.00, '0000-00-00 00:00:00'),
(119, 'Cetak Amplop', '', 'pak', 0.00, '0000-00-00 00:00:00'),
(120, 'Cetak Kop Surat', '', 'Set', 0.00, '0000-00-00 00:00:00'),
(121, 'Cetak Spanduk', '', 'Meter', 0.00, '0000-00-00 00:00:00'),
(122, 'Kartu Perpustakaan', '', 'Lembar', 0.00, '0000-00-00 00:00:00'),
(123, 'Kartu Ulangan Umum', '', 'Lembar', 0.00, '0000-00-00 00:00:00'),
(124, 'Fotocopy Presensi Siswa', '', 'Lembar', 0.00, '0000-00-00 00:00:00'),
(125, 'Fotocopy Jurnal Siswa', '', 'Lembar', 0.00, '0000-00-00 00:00:00'),
(126, 'Fotocopy Berkas Siswa', '', 'Lembar', 0.00, '0000-00-00 00:00:00'),
(127, 'Fotocopy Data BK', '', 'Lembar', 0.00, '0000-00-00 00:00:00'),
(128, 'Fotocopy RKAS', '', 'Lembar', 0.00, '0000-00-00 00:00:00'),
(129, 'Fotocopy Silabus', '', 'Lembar', 0.00, '0000-00-00 00:00:00'),
(130, 'Fotocopy RPP', '', 'Lembar', 0.00, '0000-00-00 00:00:00'),
(131, 'Fotocopy Laporan BOS', '', 'Eksemplar', 0.00, '0000-00-00 00:00:00'),
(132, 'Fotocopy Laporan Kedinasan', '', 'Eksemplar', 0.00, '0000-00-00 00:00:00'),
(133, 'Fotocopy Laporan Try Out', '', 'Eksemplar', 0.00, '0000-00-00 00:00:00'),
(134, 'Fotocopy Laporan Inventaris Barang', '', 'Eksemplar', 0.00, '0000-00-00 00:00:00'),
(135, 'Fotocopy Laporan UTS', '', 'Eksemplar', 0.00, '0000-00-00 00:00:00'),
(136, 'Fotocopy Laporan UAS', '', 'Eksemplar', 0.00, '0000-00-00 00:00:00'),
(137, 'Pengadaan Air Minum unt Guru dan Siswa', '', 'Dus', 0.00, '0000-00-00 00:00:00'),
(138, 'Baygon', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(139, 'Kapur Barus', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(140, 'Teka Box', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(141, 'Plastic SPP', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(142, 'Map Kantong Plastik Warna warni', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(143, 'Map Kertas KOP', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(144, 'Paralon', '', 'Meter', 0.00, '0000-00-00 00:00:00'),
(145, 'Lem Paralon', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(146, 'L ?', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(147, 'T ?', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(148, 'Sock Drat', '?', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(149, 'Kran Air', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(150, 'Kusen', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(151, 'Daun Pintu', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(152, 'Kunci', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(153, 'Engsel', '', 'Set', 0.00, '0000-00-00 00:00:00'),
(154, 'Grendel', '', 'Set', 0.00, '0000-00-00 00:00:00'),
(155, 'Cat Tembok', 'Vinilex', 'Kg/kaleng', 0.00, '0000-00-00 00:00:00'),
(156, 'Cat Besi', '', 'Kg/kaleng', 0.00, '0000-00-00 00:00:00'),
(157, 'Cat Kayu', '', 'Kg/kaleng', 0.00, '0000-00-00 00:00:00'),
(158, 'Cat Water Proof', '', 'Kg/kaleng', 0.00, '0000-00-00 00:00:00'),
(159, 'Tinner', '', 'Kaleng', 0.00, '0000-00-00 00:00:00'),
(160, 'Kuas Besar', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(161, 'Kuas Kecil', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(162, 'Kuas Roll', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(163, 'Pasir', '', 'Kubik', 0.00, '0000-00-00 00:00:00'),
(164, 'Semen', '', 'Sak', 0.00, '0000-00-00 00:00:00'),
(165, 'Semen Warna', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(166, 'Keramik', '', 'Dus', 0.00, '0000-00-00 00:00:00'),
(167, 'Pupuk', '', 'Sak', 0.00, '0000-00-00 00:00:00'),
(168, 'Obat Rumput', '', 'botol', 0.00, '0000-00-00 00:00:00'),
(169, 'Cairan Infus (NaCl)', '', 'Softbag/ampul plastik', 0.00, '0000-00-00 00:00:00'),
(170, 'Infus Set Dewasa', '', 'Softbag/ampul plastik', 0.00, '0000-00-00 00:00:00'),
(171, 'Infus Set Anak', '', 'Softbag/ampul plastik', 0.00, '0000-00-00 00:00:00'),
(172, 'Blood Set', '', 'Set', 0.00, '0000-00-00 00:00:00'),
(173, 'Abocate', 'No. 16, 18, 20 [IV Cateter Surflo Terumo (E)], 22, 24', 'pak', 0.00, '0000-00-00 00:00:00'),
(174, 'Handscoon', 'Ukuran M (7)', 'box', 0.00, '0000-00-00 00:00:00'),
(175, 'Masker', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(176, 'Aquabidest', '25 ml', 'Liter', 0.00, '0000-00-00 00:00:00'),
(177, 'Rebreathing Mask', '', 'Set', 0.00, '0000-00-00 00:00:00'),
(178, 'Ventolin Inhaler (salbutamol)', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(179, 'Salep Mata Erlamycetin', '3.5 gram', 'Tube', 0.00, '0000-00-00 00:00:00'),
(180, 'Tetes Mata Insto', '7.5 gram', 'Botol', 0.00, '0000-00-00 00:00:00'),
(181, 'Tetes Telinga Erlamycetin', '10 ml', 'Botol', 0.00, '0000-00-00 00:00:00'),
(182, 'Salep Kulit Gentamicin', '0.001', 'Tube', 0.00, '0000-00-00 00:00:00'),
(183, 'Tensimeter Jarum', '', 'Set', 0.00, '0000-00-00 00:00:00'),
(184, 'Tensimeter Digital', '', 'Set', 0.00, '0000-00-00 00:00:00'),
(185, 'Ramabion Kaplet', '', 'Pepel', 0.00, '0000-00-00 00:00:00'),
(186, 'Paracetamol Kaplet', '', 'Pepel', 0.00, '0000-00-00 00:00:00'),
(187, 'Demacolin Kaplet', '', 'Pepel', 0.00, '0000-00-00 00:00:00'),
(188, 'Alphara', '', 'Pepel', 0.00, '0000-00-00 00:00:00'),
(189, 'Asam Mefenamat', '', 'Pepel', 0.00, '0000-00-00 00:00:00'),
(190, 'Miratrim', '', 'Pepel', 0.00, '0000-00-00 00:00:00'),
(191, 'Antasidadoen', '', 'Pepel', 0.00, '0000-00-00 00:00:00'),
(192, 'Termometer Digital', '', 'Set', 0.00, '0000-00-00 00:00:00'),
(193, 'Termometer Raksa', '', 'Set', 0.00, '0000-00-00 00:00:00'),
(194, 'Neurotropic Injeksi', '', 'Vial', 0.00, '0000-00-00 00:00:00'),
(195, 'Neurobion  ', '5000', 'Ampul', 0.00, '0000-00-00 00:00:00'),
(196, 'Kassa Verban Gulung', '10 cm', 'Bungkus', 0.00, '0000-00-00 00:00:00'),
(197, 'Three Way Infus+Selang', '', 'Set', 0.00, '0000-00-00 00:00:00'),
(198, 'LCD Fetal Doppler', '', 'Set', 0.00, '0000-00-00 00:00:00'),
(199, 'Pewangi Ruangan', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(200, 'Betadine Sedang dan Besar', '', 'Botol', 0.00, '0000-00-00 00:00:00'),
(201, 'Bedak Bayi Cusson', '', 'Botol', 0.00, '0000-00-00 00:00:00'),
(202, 'Alkohol', '0.7', 'Liter', 0.00, '0000-00-00 00:00:00'),
(203, 'Gliserin', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(204, 'Balpirik', '', 'Botol', 0.00, '0000-00-00 00:00:00'),
(205, 'Revanol', '', 'Botol/liter', 0.00, '0000-00-00 00:00:00'),
(206, 'Peditox', '', 'Botol', 0.00, '0000-00-00 00:00:00'),
(207, 'Pasta Gigi', '', 'Tube', 0.00, '0000-00-00 00:00:00'),
(208, 'Lidocaine', '', 'Ampul', 0.00, '0000-00-00 00:00:00'),
(209, 'Varbifen', '', 'Ampul', 0.00, '0000-00-00 00:00:00'),
(210, 'Methil', '', 'Ampul', 0.00, '0000-00-00 00:00:00'),
(211, 'Epinephrin', '', 'Ampul', 0.00, '0000-00-00 00:00:00'),
(212, 'Oksitosin', '', 'Ampul', 0.00, '0000-00-00 00:00:00'),
(213, 'Vaksin polio', '', 'Ampul', 0.00, '0000-00-00 00:00:00'),
(214, 'Pentapio', '', 'Ampul', 0.00, '0000-00-00 00:00:00'),
(215, 'Vaksin Campak', '', 'Ampul', 0.00, '0000-00-00 00:00:00'),
(216, 'BCG', '', 'Ampul', 0.00, '0000-00-00 00:00:00'),
(217, 'Vaksin TT', '', 'Ampul', 0.00, '0000-00-00 00:00:00'),
(218, 'Penisilin', '', 'Ampul', 0.00, '0000-00-00 00:00:00'),
(219, 'Dexametason', '', 'Kaplet', 0.00, '0000-00-00 00:00:00'),
(220, 'Antasidadon', '', 'Kaplet', 0.00, '0000-00-00 00:00:00'),
(221, 'Panadol', '', 'Kaplet', 0.00, '0000-00-00 00:00:00'),
(222, 'Antimo', '', 'Kaplet', 0.00, '0000-00-00 00:00:00'),
(223, 'Cairan Infus', 'RL', 'Softbag', 0.00, '0000-00-00 00:00:00'),
(224, 'Cairan Infus', 'D5', 'Softbag', 0.00, '0000-00-00 00:00:00'),
(225, 'Shampoo', '', 'Botol/mililiter', 0.00, '0000-00-00 00:00:00'),
(226, 'Sabun Cair', '', 'Liter', 0.00, '0000-00-00 00:00:00'),
(227, 'Sikat Gigi', '', 'Pak/pcs', 0.00, '0000-00-00 00:00:00'),
(228, 'Sunlight', '', 'Botol/mililiter', 0.00, '0000-00-00 00:00:00'),
(229, 'Aseptic Gel (one med)', '500 ml', 'Tube', 0.00, '0000-00-00 00:00:00'),
(230, 'Handscrup (one med)', '500 ml', 'Pak', 0.00, '0000-00-00 00:00:00'),
(231, 'Kapas Gulung Besar', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(232, 'Kassa Gulung Kecil', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(233, 'Kassa Steril Kotak', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(234, 'Spuit (one med)', '1, 3, 5, 10 cc', 'Box', 0.00, '0000-00-00 00:00:00'),
(235, 'Jarum Spuit', '3 cc', 'Box', 0.00, '0000-00-00 00:00:00'),
(236, 'Chloramphenicol', '', 'Pepel', 0.00, '0000-00-00 00:00:00'),
(237, 'Seftriaxon', '', 'Viald', 0.00, '0000-00-00 00:00:00'),
(238, 'Balsem Cap Lang', '', 'Botol/tube', 0.00, '0000-00-00 00:00:00'),
(239, 'Minyak Telon', '', 'botol', 0.00, '0000-00-00 00:00:00'),
(240, 'Minyak Kayu putih', '', 'Botol', 0.00, '0000-00-00 00:00:00'),
(241, 'Plester Besar', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(242, 'Hansaplast', '', 'Box', 0.00, '0000-00-00 00:00:00'),
(243, 'Hipafix', '', 'Box', 0.00, '0000-00-00 00:00:00'),
(244, 'Tensi Aneroid Dewasa (one med)', '', 'Set', 0.00, '0000-00-00 00:00:00'),
(245, 'Toples Sedang (t4 kapas)', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(246, 'Cairan Humidifire', '', 'Box', 0.00, '0000-00-00 00:00:00'),
(247, 'Troli Stainless 2 rak', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(248, 'Gel USG', '', 'Botol/tube', 0.00, '0000-00-00 00:00:00'),
(249, 'Baby Oil', '', 'Botol', 0.00, '0000-00-00 00:00:00'),
(250, 'Benang+Jarum Jahit Luka', '2', 'Set', 0.00, '0000-00-00 00:00:00'),
(251, 'Lidocain', '0.02', 'Ampul', 0.00, '0000-00-00 00:00:00'),
(252, 'Duk Lubang', 'Kecil, sedang, besar', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(253, 'Perlak (coklat muda)', 'Uk. 85 x 140 cm', 'Meter', 0.00, '0000-00-00 00:00:00'),
(254, 'Stik Laken (biru muda)', 'Uk. 85 x 140 cm', 'Meter', 0.00, '0000-00-00 00:00:00'),
(255, 'Laken (hijau)', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(256, 'Sarung Bantal (hijau)', '', 'Lusin', 0.00, '0000-00-00 00:00:00'),
(257, 'Perlak Alas Lemari (coklat muda)', 'Uk. 35 x 116 cm', 'Meter', 0.00, '0000-00-00 00:00:00'),
(258, 'Bantal', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(259, 'Selimut loreng', '', 'Meter', 0.00, '0000-00-00 00:00:00'),
(260, 'Kotak P3K', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(261, 'Bak Sampah Tutup', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(262, 'Object Glass', '7105', 'Pak', 0.00, '0000-00-00 00:00:00'),
(263, 'Perhydrol', '30% - 100 ml', 'Milliliter', 0.00, '0000-00-00 00:00:00'),
(264, 'Obat Oral (ambroxol sirup)', '', 'botol', 0.00, '0000-00-00 00:00:00'),
(265, 'Ventolin Inhaler (salbutamol)', '', 'Box', 0.00, '0000-00-00 00:00:00'),
(266, 'Suppositoria Tablet (dulcolax)', '', 'Tube', 0.00, '0000-00-00 00:00:00'),
(267, 'Suppositoria Gel (microlux)', '', 'Tube', 0.00, '0000-00-00 00:00:00'),
(268, 'Vagistin Supp (tablet vagina)', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(269, 'Bak Mandi Bayi', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(270, 'Tourniquet', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(271, 'Set Baju Bayi', '', 'Set', 0.00, '0000-00-00 00:00:00'),
(272, 'Midline OM', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(273, 'Gunting Tali Pusar', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(274, 'Gunting Jaringan', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(275, 'Gunting Episiotomi', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(276, 'Gunting Lurus Tajam Tumpul', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(277, 'Gunting Angkat Jahitan', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(278, 'Doppler', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(279, 'Leukoplast Plester', '2.5 x 4.5 m', 'Meter', 0.00, '0000-00-00 00:00:00'),
(280, 'Saniter Spray', '200 ml', 'Milliliter', 0.00, '0000-00-00 00:00:00'),
(281, 'IV Cateter', '18 G Surflo Terumo', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(282, 'Korentang', '25 cm', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(283, 'Jarforcep JS', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(284, 'Sarung Tangan Exam L Sensi 100', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(285, 'Cusson Mini Bag x 24', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(286, 'Pen Light OM', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(287, 'Tes Kehamilan', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(288, 'Refill Hand Sanitizer', '', 'Liter', 0.00, '0000-00-00 00:00:00'),
(289, 'Nanas Madu', '', 'Biji', 0.00, '0000-00-00 00:00:00'),
(290, 'Apel Hijau Malang', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(291, 'Timun Jepang', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(292, 'Wortel Import', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(293, 'Asam Jawa', '', 'Ons/gram', 0.00, '0000-00-00 00:00:00'),
(294, 'Gula Merah', '', 'Biji', 0.00, '0000-00-00 00:00:00'),
(295, 'Sereh', '', 'Ikat', 0.00, '0000-00-00 00:00:00'),
(296, 'Cabe Rawit', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(297, 'Cabe Lombok', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(298, 'Lada Hitam', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(299, 'Ketumbar', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(300, 'Merica Bubuk', '', 'Bungku/botol', 0.00, '0000-00-00 00:00:00'),
(301, 'Kulit Lasagna', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(302, 'Santan Kara', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(303, 'Daun Bawang', '', 'Ikat', 0.00, '0000-00-00 00:00:00'),
(304, 'Kelapa Parut', '', 'Biji', 0.00, '0000-00-00 00:00:00'),
(305, 'Taoge', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(306, 'Bayam Lokal', '', 'Ikat', 0.00, '0000-00-00 00:00:00'),
(307, 'Kacang Panjang', '', 'Ikat', 0.00, '0000-00-00 00:00:00'),
(308, 'Jeruk Limau', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(309, 'Dada Ayam', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(310, 'Bihun', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(311, 'Sayur Kol', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(312, 'Mercolade Chocollatte', 'Dark dan White', 'Pak', 0.00, '0000-00-00 00:00:00'),
(313, 'Cabe Kering', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(314, 'Bawang Merah', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(315, 'Bawang Putih', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(316, 'Udang Super', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(317, 'Tomato Cherry', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(318, 'Corriander/ketumbar = no. 11', '', 'Pcs', 0.00, '0000-00-00 00:00:00'),
(319, 'Lengkuas', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(320, 'Daun Jeruk Purut', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(321, 'Terasi Udang', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(322, 'Fish Gravy', '', 'Botol', 0.00, '0000-00-00 00:00:00'),
(323, 'Jeruk Nipis/Lime', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(324, 'Minyak Goreng', 'Bimoli', 'Liter', 0.00, '0000-00-00 00:00:00'),
(325, 'Jahe Gajah', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(326, 'Kencur', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(327, 'Kunyit', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(328, 'Coklat Bubuk', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(329, 'Mentega Kuning', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(330, 'Cooking Cream', '', 'Kg', 0.00, '0000-00-00 00:00:00'),
(331, 'Base Genep', '', '??', 0.00, '0000-00-00 00:00:00'),
(332, 'Bawang Goreng', '', 'Pak', 0.00, '0000-00-00 00:00:00'),
(333, 'Telor Ayam Super', '', 'Krat/kg', 0.00, '0000-00-00 00:00:00'),
(334, 'Piping Bag', '', 'Lusin ', 0.00, '0000-00-00 00:00:00'),
(336, 'Pikachu', 'Kekuatan Listrik', 'Ekor', 0.00, '2021-04-17 11:19:23'),
(337, 'xxxx', 'xxxx', 'xxxx', 0.00, '2021-04-17 11:06:39'),
(338, 'xs', '', 'xs', 0.00, '2021-04-17 11:08:26'),
(339, 'xx', 'x', 'xx', 0.00, '2021-04-17 11:09:24'),
(340, 'Daging Ayama', '-', 'Kg', 0.00, '2021-08-19 10:34:45'),
(341, 'Daging sapi', '-', 'Kg', 0.00, '2021-08-19 10:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `habispakai`
--

CREATE TABLE `habispakai` (
  `id_habispakai` int(11) NOT NULL,
  `id_unit` int(10) NOT NULL,
  `tipe_sumber` varchar(150) NOT NULL,
  `keterangan_tipe_sumber` varchar(200) NOT NULL,
  `pengaju` varchar(100) NOT NULL,
  `penanggung` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Sedang Diverifikasi',
  `periode_pakai` varchar(50) NOT NULL DEFAULT 'Tidak Terduga',
  `tgl_awal_pakai` date NOT NULL DEFAULT current_timestamp(),
  `tgl_akhir_pakai` date NOT NULL DEFAULT current_timestamp(),
  `tgl_setuju` date NOT NULL,
  `tgl_terima_barang` date NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `alasan_dihapus` text DEFAULT NULL,
  `update_terakhir` datetime NOT NULL DEFAULT current_timestamp(),
  `final` int(1) NOT NULL DEFAULT 0,
  `diterima` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `habispakai`
--

INSERT INTO `habispakai` (`id_habispakai`, `id_unit`, `tipe_sumber`, `keterangan_tipe_sumber`, `pengaju`, `penanggung`, `status`, `periode_pakai`, `tgl_awal_pakai`, `tgl_akhir_pakai`, `tgl_setuju`, `tgl_terima_barang`, `dibuat_pada`, `alasan_dihapus`, `update_terakhir`, `final`, `diterima`) VALUES
(1, 12, 'Mandiri', '-', 'Agus', 'Budi', 'Disetujui', 'Tidak Terduga', '2021-08-18', '2021-08-18', '2021-08-18', '2021-08-26', '2021-08-18 10:28:15', '', '2021-08-18 10:36:48', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `habispakai_detail`
--

CREATE TABLE `habispakai_detail` (
  `id_habispakai_detail` int(10) NOT NULL,
  `id_habispakai` int(10) NOT NULL,
  `id_barang_habispakai` int(10) NOT NULL,
  `harga` int(17) NOT NULL,
  `jumlah` int(17) NOT NULL,
  `jumlah_realisasi` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `habispakai_detail`
--

INSERT INTO `habispakai_detail` (`id_habispakai_detail`, `id_habispakai`, `id_barang_habispakai`, `harga`, `jumlah`, `jumlah_realisasi`) VALUES
(2, 1, 7, 3500, 25, 0),
(3, 1, 34, 25000, 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `habispakai_realisasi`
--

CREATE TABLE `habispakai_realisasi` (
  `id_habispakai_realisasi` int(17) NOT NULL,
  `id_habispakai` int(17) NOT NULL,
  `id_barang_habispakai` int(17) NOT NULL,
  `harga` int(17) NOT NULL,
  `jumlah` int(17) NOT NULL,
  `tgl_realisasi` date NOT NULL,
  `supplier` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `habispakai_realisasi`
--

INSERT INTO `habispakai_realisasi` (`id_habispakai_realisasi`, `id_habispakai`, `id_barang_habispakai`, `harga`, `jumlah`, `tgl_realisasi`, `supplier`) VALUES
(1, 1, 2, 25000, 2, '2021-08-18', 'Utama Raya'),
(2, 1, 34, 25000, 6, '2021-08-19', 'Utama Raya'),
(5, 1, 34, 25000, 6, '2022-02-10', 'Utama Raya');

-- --------------------------------------------------------

--
-- Table structure for table `hapus`
--

CREATE TABLE `hapus` (
  `id_hapus` int(11) NOT NULL,
  `id_unit` int(10) NOT NULL,
  `alasan` mediumtext NOT NULL,
  `tindak_lanjut` text NOT NULL DEFAULT '-',
  `pengaju` varchar(100) NOT NULL,
  `penanggung` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Sedang Diverifikasi',
  `tgl_aju` date NOT NULL,
  `tgl_setuju` date NOT NULL,
  `alasan_ditolak` text DEFAULT NULL,
  `update_terakhir` datetime NOT NULL,
  `final` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hapus`
--

INSERT INTO `hapus` (`id_hapus`, `id_unit`, `alasan`, `tindak_lanjut`, `pengaju`, `penanggung`, `status`, `tgl_aju`, `tgl_setuju`, `alasan_ditolak`, `update_terakhir`, `final`) VALUES
(2, 12, 'Barang Rusak', 'Dibuang', 'Agus Ariyanto', 'Yuli Hermayati', 'Disetujui', '2021-06-17', '2021-06-17', NULL, '2021-06-17 10:37:33', 1),
(3, 13, 'Barang rusak', 'Dibuang', 'Agus', 'Budi', 'Disetujui', '2021-08-19', '2021-08-19', NULL, '2021-08-19 11:58:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hapus_detail`
--

CREATE TABLE `hapus_detail` (
  `id_hapus_detail` int(11) NOT NULL,
  `id_hapus` int(10) NOT NULL,
  `id_barang_detail` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `id_barang` int(11) NOT NULL,
  `kondisi` varchar(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hapus_detail`
--

INSERT INTO `hapus_detail` (`id_hapus_detail`, `id_hapus`, `id_barang_detail`, `status`, `id_barang`, `kondisi`, `lokasi`) VALUES
(1, 2, 202100354, 'Disetujui', 4, 'Baik', 'Ruang TU'),
(2, 3, 202101949, 'Disetujui', 8, 'Rusak', 'LAB KOMPUTER'),
(3, 3, 202101987, 'Disetujui', 29, 'Rusak', 'LAB KOMPUTER');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'TANAH'),
(2, 'GEDUNG DAN BANGUNAN'),
(3, 'PERALATAN DAN MESIN'),
(4, 'TANAMAN DAN TERNAK'),
(5, 'KONSTRUKSI DALAM PENGERJAAN');

-- --------------------------------------------------------

--
-- Table structure for table `subkategori`
--

CREATE TABLE `subkategori` (
  `id_subkategori` int(10) NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `subkategori` varchar(100) NOT NULL,
  `item` int(1) NOT NULL DEFAULT 1,
  `parent_id` int(11) DEFAULT NULL,
  `apresiasi_per_tahun` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subkategori`
--

INSERT INTO `subkategori` (`id_subkategori`, `id_kategori`, `kode`, `subkategori`, `item`, `parent_id`, `apresiasi_per_tahun`) VALUES
(1, 1, '11', 'Tanah Pertanian', 1, 0, 5),
(2, 1, '12', 'Tanah Perkebunan', 1, 0, 0),
(3, 1, '13', 'Tanah Bangunan Gedung', 1, 0, 0),
(4, 1, '14', 'Tanah Untuk Bangunan Bukan Gedung', 1, 0, 0),
(5, 1, '15', 'Tanah Kuburan', 1, 0, 0),
(6, 2, '11', 'Bangunan Tempat Kerja/Usaha/Sosial', 1, 0, 0),
(7, 2, '12', 'Bangunan Rumah Ibadah', 1, 0, 0),
(8, 2, '13', 'Bangunan Pastori/Rumah Dinas/Mess', 1, 0, 0),
(9, 2, '14', 'Bangunan Bersejarah/Monumen', 1, 0, 0),
(10, 2, '15', 'Jalan dan Jembatan', 1, 0, 0),
(11, 2, '16', 'Bangunan Air/Irigasi', 1, 0, 0),
(12, 2, '17', 'Instalasi/Jaringan Air Bersih', 1, 0, 0),
(13, 2, '18', 'Instalasi/Jaringan Air Kotor', 1, 0, 0),
(14, 2, '19', 'Instalasi/Jaringan Gardu Listrik', 1, 0, 0),
(15, 2, '20', 'Instalasi/Jaringan Pengolahan Limbah', 1, 0, 0),
(16, 2, '21', 'Instalasi/Jaringan Gas', 1, 0, 0),
(17, 2, '22', 'Instalasi/Jaringan Telepon', 1, 0, 0),
(18, 3, '31', 'Alat-alat Bantu', 1, 0, 0),
(19, 3, '11', 'Compressor', 1, 31, 0),
(20, 3, '12', 'Electric Generating Set', 1, 31, 0),
(21, 3, '13', 'Pompa', 1, 31, 0),
(22, 3, '14', 'Mesin Bor', 1, 31, 0),
(23, 3, '15', 'Unit Pemeliharaan Lapangan', 1, 31, 0),
(24, 3, '16', 'Alat Pengolahan Air Kotor', 1, 31, 0),
(25, 3, '17', 'Pembangkit Sistem Generator', 1, 31, 0),
(26, 3, '18', 'Mesin Molen', 1, 31, 0),
(27, 3, '19', 'Stamper', 1, 31, 0),
(28, 3, '20', 'Alat Potong Rumput', 1, 31, 0),
(29, 3, '21', 'Tenda Knock Down', 1, 31, 0),
(30, 3, '22', 'Pengadaan Penerangan Jalan Umum', 1, 31, 0),
(31, 3, '32', 'Alat Angkut kendaraan Bermotor', 1, 0, 0),
(32, 3, '11', 'Kendaraan Roda Empat ke Atas', 1, 32, 0),
(33, 3, '12', 'Kendaraan Bermotor Beroda Dua', 1, 32, 0),
(34, 3, '33', 'Alat Ukur', 1, 0, 0),
(35, 3, '11', 'Alat Ukur universal', 1, 33, 0),
(36, 3, '12', 'Alat Ukur/Test Intelegensia', 1, 33, 0),
(37, 3, '13', 'Alat Ukur/Test Alat Kepribadian', 1, 33, 0),
(38, 3, '14', 'Alat Ukur /Test Klinis Lain', 1, 33, 0),
(39, 3, '15', 'Alat Calibrasi', 1, 33, 0),
(40, 3, '16', 'Oscilloscope', 1, 33, 0),
(41, 3, '17', 'Universal Tester', 1, 33, 0),
(42, 3, '18', 'Alat Ukur/Pembanding', 1, 33, 0),
(43, 3, '19', 'Alat Timbangan/Blora', 1, 33, 0),
(44, 3, '20', 'Anak Timbangan/Biasa', 1, 33, 0),
(45, 3, '21', 'Takaran Kering', 1, 33, 0),
(46, 3, '22', 'Takaran Bahan Bangunan 2 HL', 1, 33, 0),
(47, 3, '23', 'Takaran Latex/Getah Susu', 1, 33, 0),
(48, 3, '24', 'Gelas Takar Berbagai Capasitas', 1, 33, 0),
(49, 3, '25', 'Alat Ukur Lainnya', 1, 33, 0),
(50, 3, '34', 'Alat Pengolahan', 1, 0, 0),
(51, 3, '11', 'Alat Pengolahan Tanah dan Tanaman', 1, 34, 0),
(52, 3, '12', 'Alat Panen/Pengolahan', 1, 34, 0),
(53, 3, '13', 'Alat-Alat Peternakan', 1, 34, 0),
(54, 3, '14', 'Alat Penyimpanan Hasil Percobaan Pertanian', 1, 34, 0),
(55, 3, '15', 'Alat Laboratorium Pertanian', 1, 34, 0),
(56, 3, '16', 'Alat Processing', 1, 34, 0),
(57, 3, '17', 'Alat Pasca Panen', 1, 34, 0),
(58, 3, '18', 'Alat Produksi Perikanan', 1, 34, 0),
(59, 3, '35', 'Alat Pemeliharaan Tanaman/Alat Penyimpan', 1, 0, 0),
(60, 3, '11', 'Alat Pemeliharaan Tanaman', 1, 35, 0),
(61, 3, '12', 'Alat Panen', 1, 35, 0),
(62, 3, '13', 'Alat Penyimpanan', 1, 35, 0),
(63, 3, '14', 'Alat Laboratorium', 1, 35, 0),
(64, 3, '15', 'Alat Penangkap Ikan', 1, 35, 0),
(65, 3, '36', 'Alat Kantor', 1, 0, 0),
(66, 3, '11', 'Mesin Tik', 1, 36, 0),
(67, 3, '12', 'Mesin Hitung/Jumlah', 1, 36, 0),
(68, 3, '13', 'Alat Reproduksi (Pengganda)', 1, 36, 0),
(69, 3, '14', 'Alat Penyimpanan Perlengkapan Kantor', 1, 36, 0),
(70, 3, '15', 'Alat Kantor Lainnya', 1, 36, 0),
(71, 3, '16', 'Mesin Absensi', 1, 36, 0),
(72, 3, '17', 'Mesin Antrian', 1, 36, 0),
(73, 3, '18', 'CCTV', 1, 36, 0),
(74, 3, '19', 'Intercom (PABX)', 1, 36, 0),
(75, 3, '20', 'Papan Visual Elektronik', 1, 36, 0),
(76, 3, '21', 'Mesin Penghancur Kertas', 1, 36, 0),
(77, 3, '22', 'White board', 1, 36, 0),
(78, 3, '23', 'Kotak Saran', 1, 36, 0),
(79, 3, '24', 'Air Conditioner (AC)', 1, 36, 0),
(80, 3, '25', 'Filling Kabinet', 1, 36, 0),
(81, 3, '26', 'Air Cooler', 1, 36, 0),
(82, 3, '27', 'Korden / Vertical Blinds', 1, 36, 0),
(83, 3, '28', 'Wall Screen', 1, 36, 0),
(84, 3, '29', 'Papan Informasi', 1, 36, 0),
(85, 3, '30', 'Brankas', 1, 36, 0),
(86, 3, '31', 'Papan Nama Kantor', 1, 36, 0),
(87, 3, '32', 'Wireless', 1, 36, 0),
(88, 3, '33', 'Toilet Portable', 1, 36, 0),
(89, 3, '34', 'Tangki Air', 1, 36, 0),
(90, 3, '37', 'Alat Rumah Tangga', 1, 0, 0),
(91, 3, '11', 'Meubelair', 1, 37, 0),
(92, 3, '12', 'Alat Pengukur Waktu', 1, 37, 0),
(93, 3, '13', 'Alat Pembersih', 1, 37, 0),
(94, 3, '14', 'Alat Pendingin', 1, 37, 0),
(95, 3, '15', 'Alat Dapur', 1, 37, 0),
(96, 3, '16', 'Alat Rumah Tangga Lainnya (Home Use)', 1, 37, 0),
(97, 3, '17', 'Alat Pemadam Kebakaran', 1, 37, 0),
(98, 3, '18', 'Televisi', 1, 37, 0),
(99, 3, '38', 'Komputer', 1, 0, 0),
(100, 3, '11', 'Komputer Unit/Jaringan', 1, 38, 0),
(101, 3, '12', 'Personal Komputer', 1, 38, 0),
(102, 3, '13', 'Peralatan Komputer Mainframe', 1, 38, 0),
(103, 3, '14', 'Peralatan Mini Komputer', 1, 38, 0),
(104, 3, '15', 'Peralatan Personal Komputer', 1, 38, 0),
(105, 3, '16', 'Peralatan Jaringan', 1, 38, 0),
(106, 3, '17', 'Printer/Scanner', 1, 38, 0),
(107, 3, '18', 'UPS/Stabilizer', 1, 38, 0),
(108, 3, '19', 'Rak Server', 1, 38, 0),
(109, 3, '20', 'Perangkat Layanan Informasi', 1, 38, 0),
(110, 3, '21', 'Software Berlisensi', 1, 38, 0),
(111, 3, '22', 'Proyektor', 1, 38, 0),
(112, 3, '23', 'Mainframe/Server', 1, 38, 0),
(113, 3, '24', 'Aplikasi/Software', 1, 38, 0),
(114, 3, '39', 'Meja Dan Kursi Kerja/Rapat Pejabat', 1, 0, 0),
(115, 3, '11', 'Meja Kerja Pejabat', 1, 39, 0),
(116, 3, '12', 'Meja Rapat Pejabat', 1, 39, 0),
(117, 3, '13', 'Kursi Kerja Pejabat', 1, 39, 0),
(118, 3, '14', 'Kursi Rapat Pejabat', 1, 39, 0),
(119, 3, '15', 'Kursi Hadap Depan Meja Kerja Pejabat', 1, 39, 0),
(120, 3, '16', 'Kursi Tamu di Ruang Pejabat', 1, 39, 0),
(121, 3, '17', 'Lemari dan Arsip Pejabat', 1, 39, 0),
(122, 3, '18', 'Meja Front Office', 1, 39, 0),
(123, 3, '40', 'Alat Studio', 1, 0, 0),
(124, 3, '11', 'Peralatan Studio Visual', 1, 40, 0),
(125, 3, '12', 'Peralatan Studio Video dan Film', 1, 40, 0),
(126, 3, '13', 'Peralatan Studio Video dan Film A', 1, 40, 0),
(127, 3, '14', 'Peralatan Cetak', 1, 40, 0),
(128, 3, '15', 'Peralatan Computing', 1, 40, 0),
(129, 3, '16', 'Peralatan Pemetaan Ukur', 1, 40, 0),
(130, 3, '17', 'Peralatan Studio Audio', 1, 40, 0),
(131, 3, '18', 'Camera', 1, 40, 0),
(132, 3, '19', 'Sound System', 1, 40, 0),
(133, 3, '41', 'Alat Komunikasi', 1, 0, 0),
(134, 3, '11', 'Alat Komunikasi Telephone', 1, 41, 0),
(135, 3, '12', 'Alat Komunikasi Radio', 1, 41, 0),
(136, 3, '42', 'Peralatan Pemancar', 1, 0, 0),
(137, 3, '43', 'Alat Kedokteran', 1, 0, 0),
(138, 3, '44', 'Alat Kesehatan', 1, 0, 0),
(139, 3, '45', 'Alat Laboratorium', 1, 0, 0),
(140, 3, '46', 'Alat Peraga/Praktek Sekolah', 1, 0, 0),
(141, 4, '11', 'Tanaman', 1, 0, 0),
(142, 4, '12', 'Ternak', 1, 0, 0),
(143, 5, '11', 'Konstruksi Dalam Pengerjaan', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tambah`
--

CREATE TABLE `tambah` (
  `id_tambah` int(11) NOT NULL,
  `id_unit` int(10) NOT NULL,
  `tipe_sumber` varchar(150) NOT NULL,
  `jenis_tipe_sumber` varchar(150) NOT NULL,
  `keterangan_tipe_sumber` varchar(200) NOT NULL,
  `alasan` mediumtext NOT NULL,
  `pengaju` varchar(100) NOT NULL,
  `penanggung` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Sedang Diverifikasi',
  `tgl_aju` date NOT NULL,
  `tgl_setuju` date NOT NULL,
  `tgl_terima_barang` date NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `alasan_ditolak` text DEFAULT NULL,
  `update_terakhir` datetime NOT NULL DEFAULT current_timestamp(),
  `final` int(1) NOT NULL DEFAULT 0,
  `diterima` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tambah`
--

INSERT INTO `tambah` (`id_tambah`, `id_unit`, `tipe_sumber`, `jenis_tipe_sumber`, `keterangan_tipe_sumber`, `alasan`, `pengaju`, `penanggung`, `status`, `tgl_aju`, `tgl_setuju`, `tgl_terima_barang`, `dibuat_pada`, `alasan_ditolak`, `update_terakhir`, `final`, `diterima`) VALUES
(1, 12, 'Mandiri', 'Bantuan Kementrian Pendidikan dan Kebudayaan', '-', '', 'Agus Ariyanto', 'Yuli Hermayati', 'Ditolak', '2021-05-11', '2021-05-11', '2021-05-12', '2021-05-11 13:30:13', 'Efisiensi', '2021-07-07 09:03:48', 1, 1),
(2, 12, 'Bantuan', 'Bantuan Kementrian Pendidikan dan Kebudayaan', '-', '', 'Agus Ariyanto', 'Yuli Hermayati', 'Disetujui', '2021-05-11', '2021-07-28', '2021-05-11', '2021-05-11 13:51:30', NULL, '2021-07-28 11:01:11', 1, 1),
(4, 12, 'Mandiri', 'g', 'g', '', 'Agus Ariyanto', 'Yuli Hermayati', 'Disetujui', '2021-06-16', '2021-06-16', '2021-06-18', '2021-06-16 09:42:45', NULL, '2021-06-16 09:49:55', 1, 1),
(5, 12, 'Mandiri', 'PT Gramedia', '-', '', 'Agus Ariyanto', 'Yuli Hermayati', 'Disetujui', '2021-06-17', '2021-06-17', '2021-06-21', '2021-06-17 10:16:01', NULL, '2021-06-17 10:22:47', 1, 1),
(6, 13, 'Mandiri', 'CV. Komputer Utama', '-', '', 'Deni', 'Budi', 'Disetujui', '2021-08-19', '2021-08-19', '2021-08-26', '2021-08-19 11:34:49', NULL, '2021-08-19 11:44:30', 1, 1),
(7, 13, 'Mandiri', 'Mandiri', '-', '', 'Agus', 'Budi', 'Ditolak', '2021-08-19', '0000-00-00', '2021-08-20', '2021-08-19 11:39:54', 'Barang masih banyak', '2021-08-19 11:41:36', 1, 0),
(8, 13, 'Bantuan', 'Bantuan Pemerintah Provinsi', 'Bantuan Dinas Pendidikan', '', 'Agus', 'Budi', 'Disetujui', '2021-08-19', '2021-08-19', '2021-08-16', '2021-08-19 11:47:09', NULL, '2021-08-19 11:48:39', 1, 1),
(9, 1, 'Mandiri', 'CV. Komputer Utama', '-', '', 'Agus', 'Budi', 'Ditolak', '2022-02-07', '0000-00-00', '2022-02-07', '2022-02-07 10:51:07', '-', '2022-04-09 16:15:30', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tambah_detail`
--

CREATE TABLE `tambah_detail` (
  `id_tambah_detail` int(11) NOT NULL,
  `id_tambah` int(10) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `qty` int(11) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `nilai_perolehan` double(17,2) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tambah_detail`
--

INSERT INTO `tambah_detail` (`id_tambah_detail`, `id_tambah`, `id_barang`, `status`, `qty`, `lokasi`, `nilai_perolehan`, `dibuat_pada`) VALUES
(1, 1, 6, 'Ditolak', 8, 'Lab Komputer', 90000.00, '2021-05-11 13:30:47'),
(2, 2, 3, 'Disetujui', 1, 'Lab Komputer', 1.00, '2021-05-11 13:51:43'),
(4, 4, 3, 'Disetujui', 2, 'Lab Komputer', 20000.00, '2021-06-16 09:43:01'),
(5, 4, 4, 'Disetujui', 4, 'Lab Komputer', 4000.00, '2021-06-16 09:43:20'),
(6, 5, 487, 'Disetujui', 1, 'Aula', 5000000.00, '2021-06-17 10:18:15'),
(7, 5, 1787, 'Disetujui', 2, 'Lab Komputer', 2000000.00, '2021-06-17 10:19:59'),
(8, 6, 192, 'Disetujui', 3, 'Lobby Utama', 7500000.00, '2021-08-19 11:35:46'),
(9, 6, 32, 'Disetujui', 3, 'Lobby Utama', 50000.00, '2021-08-19 11:36:33'),
(11, 7, 10, 'Ditolak', 1, 'Lobby Utama', 2000000.00, '2021-08-19 11:40:24'),
(12, 8, 7, 'Disetujui', 20, 'Lobby Utama', 500000.00, '2021-08-19 11:47:56'),
(13, 9, 8, 'Ditolak', 10, '208', 100000.00, '2022-02-07 10:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `id_unit` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama_singkat` varchar(100) NOT NULL,
  `nama_panjang` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_pimpinan` varchar(100) NOT NULL,
  `nama_kasarpras` varchar(100) NOT NULL,
  `final_data_awal` int(1) NOT NULL DEFAULT 0,
  `file_sk_data_awal` varchar(150) NOT NULL,
  `waktu_upload_sk_data_awal` datetime DEFAULT NULL,
  `akses_pengajuan` int(1) NOT NULL DEFAULT 0,
  `waktu_approval_data_awal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unit_kerja`
--

INSERT INTO `unit_kerja` (`id_unit`, `kode`, `nama_singkat`, `nama_panjang`, `username`, `password`, `nama_pimpinan`, `nama_kasarpras`, `final_data_awal`, `file_sk_data_awal`, `waktu_upload_sk_data_awal`, `akses_pengajuan`, `waktu_approval_data_awal`) VALUES
(1, 'SKYDP', 'SKYDP', 'Sektetariat Yayasan Dhyana Pura', 'SKYDP', 'SKYDP', 'DR. Budi Sadikin', 'I Gusti Ngurah Suarjaya , M.M.', 0, 'SPTJM_1_2022_02_07_10_49_31.pdf', '2022-02-07 10:49:31', 0, '2022-02-07 10:50:10'),
(2, 'PPLP-DLG', 'PPLP-DLG', 'PPLP Dhyana Pura Dalung', 'PPLP-DLG', 'PPLP-DLG', 'DR. Budi Sadikin', 'I Gusti Ngurah Suarjaya , M.M.', 0, '', NULL, 0, '0000-00-00 00:00:00'),
(3, 'PPLP-JMB', 'PPLP-JMB', 'PPLP Dhyana Pura Jembrana', 'PPLP-JMB', 'PPLP-JMB', 'DR. Budi Sadikin', 'I Gusti Ngurah Suarjaya , M.M.', 0, '', NULL, 0, '0000-00-00 00:00:00'),
(4, 'DCPM', 'DCPM', 'PT. Dwicitra Putra Mandiri', 'DCPM', 'DCPM', 'DR. Budi Sadikin', 'I Gusti Ngurah Suarjaya , M.M.', 0, '', NULL, 0, NULL),
(19, 'RSPDP', 'RSPDP', 'Radio Suara Pendidikan Dhyana Pura', 'RSPDP', 'RSPDP', 'DR. Budi Sadikin', 'I Gusti Ngurah Suarjaya , M.M.', 0, '', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_panjang` varchar(100) NOT NULL,
  `level` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama_panjang`, `level`) VALUES
(1, 'admin', 'admin@ytsj', 'Administrator', 1);

-- --------------------------------------------------------

--
-- Table structure for table `versi_database`
--

CREATE TABLE `versi_database` (
  `table` varchar(255) NOT NULL,
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `versi_database`
--

INSERT INTO `versi_database` (`table`, `version`) VALUES
('Versi Skema Database', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_data_rinci_00`
-- (See below for the actual view)
--
CREATE TABLE `view_data_rinci_00` (
`id_barang_detail` int(10)
,`id_input` varchar(100)
,`id_barang` int(10)
,`kondisi` varchar(50)
,`lokasi` varchar(50)
,`catatan` varchar(100)
,`gambar` varchar(150)
,`id_unitkerja` int(10)
,`tanggal_input` date
,`jam_input` time
,`id_tambah` int(11)
,`tanggal_perolehan` date
,`nilai_perolehan` int(15)
,`perubahan_terakhir` datetime
,`deskripsi` varchar(150)
,`spesifikasi` varchar(100)
,`nama_panjang` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_data_rinci_1`
-- (See below for the actual view)
--
CREATE TABLE `view_data_rinci_1` (
`id_barang_detail` int(10)
,`id_input` varchar(100)
,`id_barang` int(10)
,`kondisi` varchar(50)
,`lokasi` varchar(50)
,`catatan` varchar(100)
,`gambar` varchar(150)
,`id_unitkerja` int(10)
,`tanggal_input` date
,`jam_input` time
,`id_tambah` int(11)
,`tanggal_perolehan` date
,`nilai_perolehan` int(15)
,`perubahan_terakhir` datetime
,`deskripsi` varchar(150)
,`spesifikasi` varchar(100)
,`nama_panjang` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_data_rinci_19`
-- (See below for the actual view)
--
CREATE TABLE `view_data_rinci_19` (
`id_barang_detail` int(10)
,`id_input` varchar(100)
,`id_barang` int(10)
,`kondisi` varchar(50)
,`lokasi` varchar(50)
,`catatan` varchar(100)
,`gambar` varchar(150)
,`id_unitkerja` int(10)
,`tanggal_input` date
,`jam_input` time
,`id_tambah` int(11)
,`tanggal_perolehan` date
,`nilai_perolehan` int(15)
,`perubahan_terakhir` datetime
,`deskripsi` varchar(150)
,`spesifikasi` varchar(100)
,`nama_panjang` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `view_data_rinci_00`
--
DROP TABLE IF EXISTS `view_data_rinci_00`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_data_rinci_00`  AS  select `barang_detail`.`id_barang_detail` AS `id_barang_detail`,`barang_detail`.`id_input` AS `id_input`,`barang_detail`.`id_barang` AS `id_barang`,`barang_detail`.`kondisi` AS `kondisi`,`barang_detail`.`lokasi` AS `lokasi`,`barang_detail`.`catatan` AS `catatan`,`barang_detail`.`gambar` AS `gambar`,`barang_detail`.`id_unitkerja` AS `id_unitkerja`,`barang_detail`.`tanggal_input` AS `tanggal_input`,`barang_detail`.`jam_input` AS `jam_input`,`barang_detail`.`id_tambah` AS `id_tambah`,`barang_detail`.`tanggal_perolehan` AS `tanggal_perolehan`,`barang_detail`.`nilai_perolehan` AS `nilai_perolehan`,`barang_detail`.`perubahan_terakhir` AS `perubahan_terakhir`,`barang`.`deskripsi` AS `deskripsi`,`barang`.`spesifikasi` AS `spesifikasi`,`unit_kerja`.`nama_panjang` AS `nama_panjang` from ((`barang_detail` join `barang`) join `unit_kerja`) where `barang_detail`.`id_barang` = `barang`.`id_barang` and `unit_kerja`.`id_unit` = `barang_detail`.`id_unitkerja` ;

-- --------------------------------------------------------

--
-- Structure for view `view_data_rinci_1`
--
DROP TABLE IF EXISTS `view_data_rinci_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_data_rinci_1`  AS  select `barang_detail`.`id_barang_detail` AS `id_barang_detail`,`barang_detail`.`id_input` AS `id_input`,`barang_detail`.`id_barang` AS `id_barang`,`barang_detail`.`kondisi` AS `kondisi`,`barang_detail`.`lokasi` AS `lokasi`,`barang_detail`.`catatan` AS `catatan`,`barang_detail`.`gambar` AS `gambar`,`barang_detail`.`id_unitkerja` AS `id_unitkerja`,`barang_detail`.`tanggal_input` AS `tanggal_input`,`barang_detail`.`jam_input` AS `jam_input`,`barang_detail`.`id_tambah` AS `id_tambah`,`barang_detail`.`tanggal_perolehan` AS `tanggal_perolehan`,`barang_detail`.`nilai_perolehan` AS `nilai_perolehan`,`barang_detail`.`perubahan_terakhir` AS `perubahan_terakhir`,`barang`.`deskripsi` AS `deskripsi`,`barang`.`spesifikasi` AS `spesifikasi`,`unit_kerja`.`nama_panjang` AS `nama_panjang` from ((`barang_detail` join `barang`) join `unit_kerja`) where `barang_detail`.`id_barang` = `barang`.`id_barang` and `unit_kerja`.`id_unit` = `barang_detail`.`id_unitkerja` and `barang_detail`.`id_unitkerja` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `view_data_rinci_19`
--
DROP TABLE IF EXISTS `view_data_rinci_19`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_data_rinci_19`  AS  select `barang_detail`.`id_barang_detail` AS `id_barang_detail`,`barang_detail`.`id_input` AS `id_input`,`barang_detail`.`id_barang` AS `id_barang`,`barang_detail`.`kondisi` AS `kondisi`,`barang_detail`.`lokasi` AS `lokasi`,`barang_detail`.`catatan` AS `catatan`,`barang_detail`.`gambar` AS `gambar`,`barang_detail`.`id_unitkerja` AS `id_unitkerja`,`barang_detail`.`tanggal_input` AS `tanggal_input`,`barang_detail`.`jam_input` AS `jam_input`,`barang_detail`.`id_tambah` AS `id_tambah`,`barang_detail`.`tanggal_perolehan` AS `tanggal_perolehan`,`barang_detail`.`nilai_perolehan` AS `nilai_perolehan`,`barang_detail`.`perubahan_terakhir` AS `perubahan_terakhir`,`barang`.`deskripsi` AS `deskripsi`,`barang`.`spesifikasi` AS `spesifikasi`,`unit_kerja`.`nama_panjang` AS `nama_panjang` from ((`barang_detail` join `barang`) join `unit_kerja`) where `barang_detail`.`id_barang` = `barang`.`id_barang` and `unit_kerja`.`id_unit` = `barang_detail`.`id_unitkerja` and `barang_detail`.`id_unitkerja` = 19 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `barang_detail`
--
ALTER TABLE `barang_detail`
  ADD PRIMARY KEY (`id_barang_detail`);

--
-- Indexes for table `barang_detail_log`
--
ALTER TABLE `barang_detail_log`
  ADD PRIMARY KEY (`id_barang_detail_log`);

--
-- Indexes for table `barang_habispakai`
--
ALTER TABLE `barang_habispakai`
  ADD PRIMARY KEY (`id_barang_habispakai`);

--
-- Indexes for table `habispakai`
--
ALTER TABLE `habispakai`
  ADD PRIMARY KEY (`id_habispakai`);

--
-- Indexes for table `habispakai_detail`
--
ALTER TABLE `habispakai_detail`
  ADD PRIMARY KEY (`id_habispakai_detail`);

--
-- Indexes for table `habispakai_realisasi`
--
ALTER TABLE `habispakai_realisasi`
  ADD PRIMARY KEY (`id_habispakai_realisasi`);

--
-- Indexes for table `hapus`
--
ALTER TABLE `hapus`
  ADD PRIMARY KEY (`id_hapus`);

--
-- Indexes for table `hapus_detail`
--
ALTER TABLE `hapus_detail`
  ADD PRIMARY KEY (`id_hapus_detail`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `subkategori`
--
ALTER TABLE `subkategori`
  ADD PRIMARY KEY (`id_subkategori`);

--
-- Indexes for table `tambah`
--
ALTER TABLE `tambah`
  ADD PRIMARY KEY (`id_tambah`);

--
-- Indexes for table `tambah_detail`
--
ALTER TABLE `tambah_detail`
  ADD PRIMARY KEY (`id_tambah_detail`);

--
-- Indexes for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`id_unit`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `versi_database`
--
ALTER TABLE `versi_database`
  ADD PRIMARY KEY (`table`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `barang_detail`
--
ALTER TABLE `barang_detail`
  MODIFY `id_barang_detail` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `barang_detail_log`
--
ALTER TABLE `barang_detail_log`
  MODIFY `id_barang_detail_log` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `barang_habispakai`
--
ALTER TABLE `barang_habispakai`
  MODIFY `id_barang_habispakai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `habispakai`
--
ALTER TABLE `habispakai`
  MODIFY `id_habispakai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `habispakai_detail`
--
ALTER TABLE `habispakai_detail`
  MODIFY `id_habispakai_detail` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `habispakai_realisasi`
--
ALTER TABLE `habispakai_realisasi`
  MODIFY `id_habispakai_realisasi` int(17) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hapus`
--
ALTER TABLE `hapus`
  MODIFY `id_hapus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hapus_detail`
--
ALTER TABLE `hapus_detail`
  MODIFY `id_hapus_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subkategori`
--
ALTER TABLE `subkategori`
  MODIFY `id_subkategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `tambah`
--
ALTER TABLE `tambah`
  MODIFY `id_tambah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tambah_detail`
--
ALTER TABLE `tambah_detail`
  MODIFY `id_tambah_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  MODIFY `id_unit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
