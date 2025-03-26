CREATE DATABASE panen_db;
USE panen_db;

-- Tabel pengguna untuk login
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Tabel untuk mencatat hasil panen
CREATE TABLE panen (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tanggal DATE NOT NULL,
    jenis_tanaman VARCHAR(100) NOT NULL,
    jumlah_panen INT NOT NULL, -- Dalam kg
    lokasi VARCHAR(100) NOT NULL
);

-- Tabel untuk mencatat transaksi keuangan & penjualan
CREATE TABLE transaksi_keuangan (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tanggal DATE NOT NULL,
    jenis_transaksi ENUM('Pemasukan', 'Pengeluaran') NOT NULL,
    keterangan VARCHAR(255) NOT NULL,
    jumlah INT NOT NULL
);

-- Tabel untuk mencatat penjualan hasil panen
CREATE TABLE penjualan (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tanggal DATE NOT NULL,
    produk VARCHAR(100)
