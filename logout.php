<?php
session_start(); // Memulai sesi

// Unset semua variabel sesi
$_SESSION = array();

// Jika diinginkan untuk menghapus sesi, juga hapus cookie sesi.
// Catatan: Ini akan menghancurkan sesi, dan bukan hanya data sesi.
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"], $params["secure"], $params["httponly"]
    );
}

// Akhirnya, hancurkan sesi.
session_destroy();

// Redirect ke halaman login
header("Location: welcome.php"); // Ganti 'login.php' dengan halaman login Anda
exit;
?>