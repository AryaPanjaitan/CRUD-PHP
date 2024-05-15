-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Bulan Mei 2024 pada 15.54
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbperpustakaan4c`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(8) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `jkl` enum('PRIA','WANITA') NOT NULL,
  `agama` varchar(25) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`, `jkl`, `agama`, `email`, `pwd`, `created_at`, `update_at`) VALUES
('2220193', 'Arya Armando Panjaitan', 'Jln Melinjo', 'PRIA', 'ISLAM', 'aryak@gmail.com', '3333', '2024-05-13 18:48:36', '2024-05-13 18:48:36'),
('22221345', 'Reza Hari', 'Kisaran Barat', 'PRIA', 'HINDU', 'hari@gmail.com', '0098', '2024-05-13 23:12:45', '2024-05-13 23:12:45'),
('22223345', 'Anisa Hutabarat', 'Binjai Timur', 'WANITA', 'KRISTEN KHATOLIK', 'anisa009@gmail.com', '987654', '2024-05-13 23:17:24', '2024-05-13 23:17:24'),
('22228876', 'geri', 'jln tomat', 'PRIA', 'HINDU', 'mimi@gmail.com', '8976', '2024-05-13 23:08:12', '2024-05-13 23:08:12'),
('22229076', 'Putri Anansyah', 'Medan Barat', 'WANITA', 'ISLAM', 'anan34@gmail.com', '1111', '2024-05-13 23:14:48', '2024-05-13 23:14:48');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
