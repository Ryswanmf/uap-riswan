<?php
// Koneksi ke database
$host = 'localhost'; // Ganti dengan host database Anda
$db = 'admin_login'; // Nama database
$user = 'root'; // Username database
$pass = ''; // Password database

$conn = new mysqli($host, $user, $pass, $db);

// Cek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Daftar pengguna yang akan ditambahkan
$users = [
    ['username' => 'admin', 'password' => 'password'],
    ['username' => 'user1', 'password' => 'pass1'],
    ['username' => 'user2', 'password' => 'pass2']
];

// Menambahkan pengguna ke tabel
foreach ($users as $user) {
    $username = $user['username'];
    $password = password_hash($user['password'], PASSWORD_DEFAULT); // Hash password

    $stmt = $conn->prepare("INSERT INTO users (username, password) VALUES (?, ?)");
    $stmt->bind_param("ss", $username, $password);
    $stmt->execute();
}

echo "Pengguna berhasil ditambahkan!";
$stmt->close();
$conn->close();
?>