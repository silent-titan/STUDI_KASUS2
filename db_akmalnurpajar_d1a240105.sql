-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2025 at 10:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_akmalnurpajar_d1a240105`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about`
--

CREATE TABLE `tbl_about` (
  `id_about` int(2) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_about`
--

INSERT INTO `tbl_about` (`id_about`, `about`) VALUES
(0, 'Hi! Saya Akmal Nurpajar, seorang yang antusias di dunia teknologi dan sangat menyukai dunia coding. Sejak pertama kali mengenal baris kode, saya langsung jatuh cinta dengan cara kerja logika dan bagaimana teknologi bisa menyelesaikan masalah sehari-hari.\r\n\r\nSelain coding, saya juga tertarik pada berbagai hal lain seperti eksplorasi teknologi baru, desain antarmuka pengguna (UI/UX), serta hal-hal kreatif seperti menulis, membuat konten, atau mempelajari sesuatu yang menantang.\r\n\r\nSaya percaya bahwa belajar adalah proses seumur hidup, dan saya selalu terbuka untuk tantangan baru dan kolaborasi dengan orang-orang hebat di bidang teknologi maupun di luar itu.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_artikel`
--

CREATE TABLE `tbl_artikel` (
  `id_artikel` int(5) NOT NULL,
  `nama_artikel` text NOT NULL,
  `isi_artikel` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_artikel`
--

INSERT INTO `tbl_artikel` (`id_artikel`, `nama_artikel`, `isi_artikel`) VALUES
(0, 'Candi Borobudur', 'Candi Borobudur: Warisan Budaya Dunia yang Menakjubkan\r\n\r\nCandi Borobudur merupakan salah satu peninggalan sejarah dan kebudayaan terbesar di Indonesia sekaligus monumen Buddha terbesar di dunia. Terletak di Magelang, Jawa Tengah, candi ini dibangun pada abad ke-8 oleh Dinasti Syailendra, dan hingga kini tetap menjadi pusat ziarah agama Buddha serta daya tarik wisata yang mengagumkan.\r\n\r\nArsitektur dan Makna Filosofis\r\nBorobudur memiliki struktur yang sangat unik dan kompleks. Dibangun dalam bentuk mandala raksasa, candi ini terdiri dari sembilan tingkat: enam tingkat persegi di bagian bawah, tiga tingkat bundar di bagian atas, dan satu stupa utama di puncak. Terdapat lebih dari 2.600 panel relief dan 500 lebih arca Buddha yang menghiasi bangunan ini.\r\n\r\nStruktur Borobudur mencerminkan konsep kosmologi Buddha, yaitu perjalanan menuju pencerahan. Tiga tingkat utamanya melambangkan tiga dunia dalam ajaran Buddha:\r\n\r\nKamadhatu (dunia nafsu),\r\n\r\nRupadhatu (dunia bentuk),\r\n\r\nArupadhatu (dunia tanpa bentuk).\r\n\r\nRelief pada dinding-dinding candi menceritakan kehidupan Buddha Gautama, hukum karma, serta ajaran moral lainnya.\r\n\r\nSejarah dan Pemulihan\r\nBorobudur sempat terkubur oleh abu vulkanik dan tumbuh-tumbuhan selama berabad-abad, hingga akhirnya ditemukan kembali pada tahun 1814 oleh Sir Thomas Stamford Raffles. Proyek restorasi besar-besaran dilakukan oleh pemerintah Indonesia bekerja sama dengan UNESCO pada tahun 1970-an. Pada tahun 1991, Candi Borobudur diakui sebagai Warisan Dunia UNESCO.\r\n\r\nFungsi dan Makna Saat Ini\r\nSaat ini, Borobudur tidak hanya menjadi objek wisata sejarah dan budaya, tetapi juga berfungsi sebagai tempat ibadah umat Buddha, terutama saat perayaan Hari Waisak. Ribuan umat Buddha dari berbagai negara berkumpul di candi ini setiap tahun untuk merayakan kelahiran, pencerahan, dan wafatnya Buddha Gautama.\r\n\r\nPenutup\r\nCandi Borobudur adalah simbol kejayaan peradaban masa lalu yang mengandung nilai-nilai spiritual, artistik, dan budaya yang sangat tinggi. Keindahan arsitekturnya serta kedalaman pesan filosofisnya menjadikan Borobudur tidak hanya sebagai warisan Indonesia, tetapi juga warisan dunia yang patut dijaga dan dilestarikan.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id_gallery` int(5) NOT NULL,
  `judul` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id_gallery`, `judul`, `foto`) VALUES
(1, 'candi borobudur', 'candi borobudur.jpg'),
(2, 'saya dan hutao', 'saya2.jpg'),
(3, 'saya edit with AI', 'saya.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `password`) VALUES
('', ''),
('admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
