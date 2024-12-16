-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 08:38 PM
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
-- Database: `car-rental`
--
CREATE DATABASE IF NOT EXISTS `car-rental` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `car-rental`;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tipe_mobil` varchar(100) NOT NULL,
  `tanggal_sewa` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `total_harga` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`id`, `nama_pelanggan`, `email`, `tipe_mobil`, `tanggal_sewa`, `durasi`, `total_harga`) VALUES
(5, 'riswan ganteng', 'riswan@gmail.com', 'Sedan', '2024-12-03', 0, 0.00),
(6, 'Manda', 'test@example.com', 'SUV', '2024-12-10', 0, 0.00),
(7, 'Manda', 'test@example.com', 'SUV', '2024-12-10', 0, 0.00),
(8, 'Manda', 'test@example.com', 'SUV', '2024-12-10', 0, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'riswan', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `data_mhs`
--
CREATE DATABASE IF NOT EXISTS `data_mhs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `data_mhs`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `npm` int(8) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`npm`, `username`, `email`, `password`) VALUES
(23753001, 'riswan', 'admin1@gmailcom', 'riswan123'),
(23753002, 'root', 'admin123@gmailcom', 'root'),
(23753025, 'admin', 'admin@gmailcom', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`npm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `npm` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23753026;
--
-- Database: `dbmahasiswa`
--
CREATE DATABASE IF NOT EXISTS `dbmahasiswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbmahasiswa`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `npm` varchar(10) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `tahun_masuk` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `npm`, `jurusan`, `tahun_masuk`) VALUES
(4, 'Riswan', '23753025', 'Teknologi Informasi', '2023'),
(5, 'Ronaldo', '23753090', 'Teknik', '2023'),
(6, 'Lionel Messi', '23753023', 'Ekonomi dan Bisnis', '2023'),
(7, 'Mbappe', '23753021', 'Peternakan', '2023'),
(8, 'Garnacho', '23753029', 'Teknologi Pertanian', '2023'),
(9, 'Saka', '23753028', 'Perikanan dan Lautan', '2023'),
(10, 'Griezmann', '23753042', 'Perkebunan', '2023'),
(12, 'Manda Yunita', '23755122', 'Ekonomi dan Bisnis', '2023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `db_rm`
--
CREATE DATABASE IF NOT EXISTS `db_rm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_rm`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_akun`
--

CREATE TABLE `tbl_akun` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_akun`
--

INSERT INTO `tbl_akun` (`id`, `nama`, `username`, `password`, `foto`) VALUES
(4, 'Administrator', 'admin', '$2y$10$tf2VKfD.kjhXFc16fbaNY.EvtMhvhb8iYFWvHVr5MURTg443VwmIm', 'administrator-1579273408.png'),
(6, 'adya', 'adya13', '$2y$10$0IzMsiuMrJO8h//6Umgu6.eJwWlxYO0slk.w8c7c/TEJSDipWFyZ.', 'adya-1633005507.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_bayar`
--

CREATE TABLE `tbl_jenis_bayar` (
  `id` int(11) NOT NULL,
  `jenis_bayar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_jenis_bayar`
--

INSERT INTO `tbl_jenis_bayar` (`id`, `jenis_bayar`) VALUES
(3, 'Cash'),
(4, 'Kredit');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merk`
--

CREATE TABLE `tbl_merk` (
  `id` int(11) NOT NULL,
  `merk` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_merk`
--

INSERT INTO `tbl_merk` (`id`, `merk`) VALUES
(8, 'Toyota'),
(9, 'Suzuki'),
(10, 'honda');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mobil`
--

CREATE TABLE `tbl_mobil` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `no_polisi` varchar(10) DEFAULT NULL,
  `jumlah_kursi` int(1) DEFAULT NULL,
  `tahun_beli` int(4) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `id_merk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_mobil`
--

INSERT INTO `tbl_mobil` (`id`, `nama`, `warna`, `no_polisi`, `jumlah_kursi`, `tahun_beli`, `gambar`, `id_merk`) VALUES
(13, 'Toyota Kijang Innova', 'Putih', 'R 6788 KM', 6, 2019, 'toyota-kijang-innova-1577631464.png', NULL),
(14, 'Toyota Kijang Innova', 'Abu Abu', 'R 1309 KN', 7, 2018, 'toyota-kijang-innova-1579004786.png', 8),
(15, 'Suzuki All New Ertiga', 'Putih', 'R 1739 KN', 8, 2018, 'suzuki-all-new-ertiga-1579279546.png', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemesan`
--

CREATE TABLE `tbl_pemesan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pemesan`
--

INSERT INTO `tbl_pemesan` (`id`, `nama`, `alamat`, `jenis_kelamin`, `foto`) VALUES
(8, 'adya', 'kp. cibedug', 'P', 'adya-1633005350.webp'),
(9, 'eka', 'cangkuang', 'L', 'eka-1633009374.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_perjalanan`
--

CREATE TABLE `tbl_perjalanan` (
  `id` int(11) NOT NULL,
  `asal` varchar(20) DEFAULT NULL,
  `tujuan` varchar(20) DEFAULT NULL,
  `jarak` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_perjalanan`
--

INSERT INTO `tbl_perjalanan` (`id`, `asal`, `tujuan`, `jarak`) VALUES
(4, 'Cilacap', 'Ciamis', 70);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesanan`
--

CREATE TABLE `tbl_pesanan` (
  `id` int(11) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `id_pemesan` int(11) DEFAULT NULL,
  `id_mobil` int(11) DEFAULT NULL,
  `id_perjalanan` int(11) DEFAULT NULL,
  `id_jenis_bayar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pesanan`
--

INSERT INTO `tbl_pesanan` (`id`, `harga`, `tgl_pinjam`, `tgl_kembali`, `id_pemesan`, `id_mobil`, `id_perjalanan`, `id_jenis_bayar`) VALUES
(1, 1000000, '2020-01-01', '2020-01-04', NULL, 13, NULL, NULL),
(6, 2000000, '2020-01-17', '2020-01-20', NULL, 14, NULL, 3),
(9, 200000, '2021-09-30', '2021-10-05', 8, 14, 4, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_akun`
--
ALTER TABLE `tbl_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jenis_bayar`
--
ALTER TABLE `tbl_jenis_bayar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mobil`
--
ALTER TABLE `tbl_mobil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_mobil_ibfk_2` (`id_merk`);

--
-- Indexes for table `tbl_pemesan`
--
ALTER TABLE `tbl_pemesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_perjalanan`
--
ALTER TABLE `tbl_perjalanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pemesan` (`id_pemesan`),
  ADD KEY `id_mobil` (`id_mobil`),
  ADD KEY `id_perjalanan` (`id_perjalanan`),
  ADD KEY `id_jenis_bayar` (`id_jenis_bayar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_akun`
--
ALTER TABLE `tbl_akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_jenis_bayar`
--
ALTER TABLE `tbl_jenis_bayar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_mobil`
--
ALTER TABLE `tbl_mobil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_pemesan`
--
ALTER TABLE `tbl_pemesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_perjalanan`
--
ALTER TABLE `tbl_perjalanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_mobil`
--
ALTER TABLE `tbl_mobil`
  ADD CONSTRAINT `tbl_mobil_ibfk_2` FOREIGN KEY (`id_merk`) REFERENCES `tbl_merk` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD CONSTRAINT `tbl_pesanan_ibfk_1` FOREIGN KEY (`id_pemesan`) REFERENCES `tbl_pemesan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesanan_ibfk_2` FOREIGN KEY (`id_mobil`) REFERENCES `tbl_mobil` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesanan_ibfk_3` FOREIGN KEY (`id_perjalanan`) REFERENCES `tbl_perjalanan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesanan_ibfk_4` FOREIGN KEY (`id_jenis_bayar`) REFERENCES `tbl_jenis_bayar` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
--
-- Database: `gedung`
--
CREATE DATABASE IF NOT EXISTS `gedung` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `gedung`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `nip` int(4) NOT NULL,
  `nama_admin` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`nip`, `nama_admin`) VALUES
(1111, 'manda'),
(1112, 'riswan'),
(1113, 'tila'),
(1114, 'agoy'),
(1115, 'wayan');

-- --------------------------------------------------------

--
-- Table structure for table `gedung`
--

CREATE TABLE `gedung` (
  `kd_gedung` char(4) NOT NULL,
  `nama_gedung` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gedung`
--

INSERT INTO `gedung` (`kd_gedung`, `nama_gedung`) VALUES
('s', 'sakura'),
('q', 'melati'),
('cb', 'mawar'),
('h', 'anggrek'),
('khd', 'ki hajar dewantara'),
('gkb', 'gedun kuliah bersama');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` int(8) NOT NULL,
  `nama_mahasiswa` varchar(25) NOT NULL,
  `prodi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama_mahasiswa`, `prodi`) VALUES
(23753001, 'agista', 'mi'),
(23753002, 'araca', 'mi'),
(23753003, 'rere', 'mi'),
(23753004, 'rui', 'tri'),
(23753005, 'mei', 'trpl');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_gedung`
--

CREATE TABLE `peminjaman_gedung` (
  `no_peminjam` int(4) NOT NULL,
  `npm` int(8) NOT NULL,
  `kd_gedung` char(4) NOT NULL,
  `id_pjgedung` int(4) NOT NULL,
  `nip` int(4) NOT NULL,
  `tgl_peminjam` date NOT NULL,
  `bulan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman_gedung`
--

INSERT INTO `peminjaman_gedung` (`no_peminjam`, `npm`, `kd_gedung`, `id_pjgedung`, `nip`, `tgl_peminjam`, `bulan`) VALUES
(1, 23753001, 's', 1, 1111, '2024-03-01', 'Maret'),
(2, 23753002, 'cb', 2, 1112, '2024-03-13', 'Maret'),
(3, 23753003, 'q', 3, 1113, '2024-10-03', 'Oktober'),
(4, 23753004, 'khd', 4, 1114, '2024-03-14', 'Maret'),
(5, 23753005, 'gkb', 5, 1115, '2024-04-17', 'April');

-- --------------------------------------------------------

--
-- Table structure for table `pj_gedung`
--

CREATE TABLE `pj_gedung` (
  `id_pjgedung` int(4) NOT NULL,
  `nama_pj` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pj_gedung`
--

INSERT INTO `pj_gedung` (`id_pjgedung`, `nama_pj`) VALUES
(1, 'jono'),
(2, 'budi'),
(3, 'saipul'),
(4, 'rewa'),
(5, 'weda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `peminjaman_gedung`
--
ALTER TABLE `peminjaman_gedung`
  ADD PRIMARY KEY (`no_peminjam`);

--
-- Indexes for table `pj_gedung`
--
ALTER TABLE `pj_gedung`
  ADD PRIMARY KEY (`id_pjgedung`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `nip` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1116;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `npm` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23753006;

--
-- AUTO_INCREMENT for table `peminjaman_gedung`
--
ALTER TABLE `peminjaman_gedung`
  MODIFY `no_peminjam` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pj_gedung`
--
ALTER TABLE `pj_gedung`
  MODIFY `id_pjgedung` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `hotel_db`
--
CREATE DATABASE IF NOT EXISTS `hotel_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hotel_db`;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status` enum('pending','confirmed','cancelled') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `capacity` int(11) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `status` enum('available','maintenance') DEFAULT 'available',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `description`, `price`, `capacity`, `image_url`, `status`, `created_at`) VALUES
(1, 'Standard Room', 'Comfortable room with basic amenities', 800000.00, 2, '/images/standard.jpg', 'available', '2024-10-28 10:55:28'),
(2, 'Deluxe Room', 'Spacious room with city view', 1200000.00, 2, '/images/deluxe.jpg', 'available', '2024-10-28 10:55:28'),
(3, 'Suite Room', 'Luxury suite with separate living area', 2500000.00, 4, '/images/suite.jpg', 'available', '2024-10-28 10:55:28'),
(4, 'Presidential Suite', 'Ultimate luxury experience', 5000000.00, 6, '/images/presidential.jpg', 'available', '2024-10-28 10:55:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'riswan', 'riswan@gmail.com', '123', '2024-10-01 10:59:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
--
-- Database: `latihan12`
--
CREATE DATABASE IF NOT EXISTS `latihan12` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `latihan12`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `npm` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`npm`, `username`, `password`, `level`) VALUES
(23753025, 'riswan', '123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`npm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `npm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23753026;
--
-- Database: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `login`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` int(8) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'irfana', '123'),
(2, 'halim', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `npm` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `mobil`
--
CREATE DATABASE IF NOT EXISTS `mobil` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mobil`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"car-rental\",\"table\":\"users\"},{\"db\":\"car-rental\",\"table\":\"pesanan\"},{\"db\":\"uap-rental\",\"table\":\"users\"},{\"db\":\"rental_mobil\",\"table\":\"user\"},{\"db\":\"uap-bendicar\",\"table\":\"users\"},{\"db\":\"uap-bendicar\",\"table\":\"pinjam\"},{\"db\":\"rental_mobil\",\"table\":\"tbl_pesanan\"},{\"db\":\"rental_mobil\",\"table\":\"tbl_mobil\"},{\"db\":\"rental_mobil\",\"table\":\"tbl_akun\"},{\"db\":\"db_rm\",\"table\":\"tbl_akun\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-12-15 16:21:57', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":154}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `praktikum16`
--
CREATE DATABASE IF NOT EXISTS `praktikum16` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `praktikum16`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `level` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `level`) VALUES
('Mada', 'ahay', '1'),
('Hendra', 'yuhuu', '2');
--
-- Database: `rental_mobil`
--
CREATE DATABASE IF NOT EXISTS `rental_mobil` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rental_mobil`;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `kode_booking` varchar(255) NOT NULL,
  `id_login` int(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `ktp` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `lama_sewa` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `konfirmasi_pembayaran` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `kode_booking`, `id_login`, `id_mobil`, `ktp`, `nama`, `alamat`, `no_tlp`, `tanggal`, `lama_sewa`, `total_harga`, `konfirmasi_pembayaran`, `tgl_input`) VALUES
(1, '1576329294', 3, 5, '231423123', 'Rahulia', 'Bekasi', '08132312321', '2019-12-28', 2, 400000, 'Pembayaran di terima', '2019-12-14'),
(2, '1576671989', 3, 5, '231423', 'Lia', 'Bekasi Ujung Harapan', '082391273127', '2019-12-20', 2, 400525, 'Pembayaran di terima', '2019-12-18'),
(3, '1642998828', 3, 5, '1283821832813', 'Hul', 'Bekasi', '089618173609', '2022-01-26', 4, 800743, 'Pembayaran di terima', '2022-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `infoweb`
--

CREATE TABLE `infoweb` (
  `id` int(11) NOT NULL,
  `nama_rental` varchar(255) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_rek` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `infoweb`
--

INSERT INTO `infoweb` (`id`, `nama_rental`, `telp`, `alamat`, `email`, `no_rek`, `updated_at`) VALUES
(1, 'Rahulia Rental', '081298669897', 'Ujung Harapan Kab. Palsu', 'rahulia12@gmail.com', 'BRI A/N Rahulia 123123213123', '2022-01-24 04:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `nama_pengguna` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `nama_pengguna`, `username`, `password`, `level`) VALUES
(1, 'Rahulia', 'admin', 'fe01ce2a7fbac8fafaed7c982a04e229', 'admin'),
(3, 'Lia', 'demo', 'fe01ce2a7fbac8fafaed7c982a04e229', 'pengguna');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `no_plat` varchar(255) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga` int(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `no_plat`, `merk`, `harga`, `deskripsi`, `status`, `gambar`) VALUES
(5, 'N34234', 'Avanza', 200000, 'Apa aja', 'Tidak Tersedia', '1673593078toyota-all-new-avanza-2015-tangkapan-layar_169.jpeg'),
(6, 'N 1232 BKT', 'New Xenia', 500000, 'Baru', 'Tersedia', 'all-new-xenia-exterior-tampak-perspektif-depan---varian-1.5r-ads.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_booking` int(255) NOT NULL,
  `no_rekening` int(255) NOT NULL,
  `nama_rekening` varchar(255) NOT NULL,
  `nominal` int(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_booking`, `no_rekening`, `nama_rekening`, `nominal`, `tanggal`) VALUES
(3, 1, 2131241, 'Krisna Aldi Waskito', 400000, '2019-12-14'),
(4, 2, 2131241, 'Krisna Aldi Waskito', 400525, '2019-12-18'),
(5, 3, 13213, 'Fauzan Falah', 800743, '2022-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `kode_booking` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `denda` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `uap-rental`
--
CREATE DATABASE IF NOT EXISTS `uap-rental` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `uap-rental`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('customer','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `utspw2`
--
CREATE DATABASE IF NOT EXISTS `utspw2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `utspw2`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `no` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `npm` varchar(20) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `prodi` varchar(100) DEFAULT NULL,
  `angkatan` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `no`, `nama`, `npm`, `jurusan`, `prodi`, `angkatan`) VALUES
(43, 1, 'Agista', '23753002', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(44, 2, 'Allena Zandra Puspita', '237530003', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(45, 3, 'Anastasya Maharani', '237530004', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(46, 4, 'Annisa Afrilia', '237530005', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(47, 5, 'Ari Julianto', '237530006', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(48, 6, 'Atilla Akbar Tawakal', '237530007', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(49, 7, 'Ayu Tri Sary', '237530008', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(50, 8, 'Bayu Pratama', '237530009', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(51, 9, 'Bunga Firstya Luna Ananda', '237530010', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(52, 10, 'Cindy Naysilla Ismail', '237530011', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(53, 11, 'Damar Arif Ghifari', '237530012', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(54, 12, 'Diah Ayu Safitri', '237530013', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(55, 13, 'Diva Triana Murti', '237530014', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(56, 14, 'Dwi Ramadhan', '237530015', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(57, 15, 'Fasni Efwa Juniar', '237530016', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(58, 16, 'Fitri Adi Nugroho', '237530017', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(59, 17, 'Ghaitza Zahira Shofi', '237530018', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(60, 18, 'Herwan Arifal', '237530019', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(61, 19, 'Irfana Dwi Fangga', '237530020', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(62, 20, 'Kresna Abrori', '237530021', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(63, 21, 'M Zidane Andrean', '237530022', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(64, 22, 'Mawan Mahmud', '237530023', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(65, 23, 'Muhammad Arya Fadli', '237530024', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(66, 24, 'Muhammad Riswan Mufid', '237530025', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(67, 25, 'Nadhea Ameylia', '237530026', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(68, 26, 'Naufal Raihan Hanif', '237530027', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(69, 27, 'Ni Komang Yuni Setiari', '237530028', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(70, 28, 'Nyopi Wulandari', '237530029', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(71, 29, 'Putri Anggraeni Safitri', '237530030', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(72, 30, 'Rifa Nabela Putra Sp', '237530031', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(73, 31, 'Ris Larasati', '237530032', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(74, 32, 'Rizka Nabilah Azwa', '237530033', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(75, 33, 'Rizqy Agus Salim', '237530034', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(76, 34, 'Sela Wissi Yani', '237530035', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(77, 35, 'Vina Sahara', '237530036', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(78, 36, 'Wayan Juliana', '237530037', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(79, 37, 'Yoga Pratama', '237530040', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(80, 38, 'Zakkya Nurhadi', '237530041', 'Teknologi Informasi', 'Manajemen Informatika', '2023'),
(83, 39, 'Ronaldo', '23753090', 'Teknologi Informasi', 'Manajemen Informatika', '2024');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(2, 'admin', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
