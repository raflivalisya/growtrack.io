<?php
$host = "localhost";  // Ganti dengan host database jika online
$user = "root";       // Username MySQL Anda
$pass = "";           // Password MySQL Anda (kosongkan jika pakai XAMPP)
$dbname = "panen_db"; // Nama database

$conn = new mysqli($host, $user, $pass, $dbname);

// Cek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
?>
