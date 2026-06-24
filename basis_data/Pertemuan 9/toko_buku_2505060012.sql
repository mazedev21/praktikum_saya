-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 24, 2026 at 09:37 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_buku`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah_transaksi` (`t_id_pelanggan` INT, `t_id_buku` INT, `t_jumlah` INT)   BEGIN
    -- 1. Deklarasi variabel
    DECLARE v_harga INT;
    DECLARE v_stok_sekarang INT;
    DECLARE new_total_harga INT;
    DECLARE new_stok INT;

    -- 2. Query ambil harga dan stok dari tabel buku
    SELECT harga, stok 
    INTO v_harga, v_stok_sekarang
    FROM buku 
    WHERE id_buku = t_id_buku;

    -- 3. LOGIKA VALIDASI: Cek apakah stok mencukupi
    IF v_stok_sekarang < t_jumlah THEN
        -- Jika stok kurang, batalkan proses dan lemparkan pesan error
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Transaksi Gagal! Stok buku tidak mencukupi.';
    ELSE
        -- Jika stok aman, lanjutkan proses perhitungan
        SET new_total_harga = v_harga * t_jumlah;
        SET new_stok = v_stok_sekarang - t_jumlah;

        -- 4. Insert ke tabel transaksi
        INSERT INTO transaksi (id_pelanggan, id_buku, jumlah, total_harga) 
        VALUES (t_id_pelanggan, t_id_buku, t_jumlah, new_total_harga);

        -- 5. Update stok buku
        UPDATE buku 
        SET stok = new_stok 
        WHERE id_buku = t_id_buku;
        
        -- 6. Akumulasikan total_harga ke total_belanja di tabel pelanggan
        UPDATE pelanggan 
        SET total_belanja = total_belanja + new_total_harga 
        WHERE id_pelanggan = t_id_pelanggan;
        
        -- 7. Tampilkan pesan berhasil
        SELECT 'Transaksi Berhasil dilakukan!' AS status_transaksi;
    END IF;
    
END$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `hitung_diskon` (`total_belanja` DECIMAL(10,2)) RETURNS DECIMAL(5,2) DETERMINISTIC BEGIN
    DECLARE diskon DECIMAL(5,2);

    IF total_belanja < 1000000 THEN
        SET diskon = 0.00;
    ELSEIF total_belanja < 5000000 THEN
        SET diskon = 5.00;
    ELSE
        SET diskon = 10.00;
    END IF;

    RETURN diskon;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `stok` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `penulis`, `harga`, `stok`) VALUES
(1, 'Cara Menikmati Momen Brace Pildun', 'Lionel Scaloni', 500000.00, 18),
(2, 'Cara Hatrick Pildun', 'Lionel Messi', 700000.00, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `total_belanja` decimal(10,2) DEFAULT '0.00',
  `status_member` enum('REGULER','GOLD','PLATINUM') DEFAULT 'REGULER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `total_belanja`, `status_member`) VALUES
(1, 'Lionel Messi', 1000000.00, 'GOLD'),
(2, 'Haaland', 0.00, 'REGULER');

--
-- Triggers `pelanggan`
--
DELIMITER $$
CREATE TRIGGER `status_member_auto` BEFORE UPDATE ON `pelanggan` FOR EACH ROW BEGIN
    IF NEW.total_belanja >= 5000000 THEN
        SET NEW.status_member = 'PLATINUM';
    ELSEIF NEW.total_belanja >= 1000000 THEN
        SET NEW.status_member = 'GOLD';
    ELSE
        SET NEW.status_member = 'REGULER';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int NOT NULL,
  `id_pelanggan` int DEFAULT NULL,
  `id_buku` int DEFAULT NULL,
  `jumlah` int DEFAULT NULL,
  `total_harga` decimal(10,2) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `id_buku`, `jumlah`, `total_harga`, `tanggal_transaksi`) VALUES
(2, 1, 1, 2, 1000000.00, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_buku` (`id_buku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
