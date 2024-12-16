<?php
include 'koneksi.php'; // Pastikan Anda sudah membuat koneksi ke database

// Create
if (isset($_POST['tambah'])) {
    $nama_pelanggan = $_POST['nama_pelanggan'];
    $email = $_POST['email'];
    $tipe_mobil = $_POST['tipe_mobil'];
    $tanggal_sewa = $_POST['tanggal_sewa'];
    $durasi = $_POST['durasi'];

    if (!empty($nama_pelanggan) && !empty($email) && !empty($tipe_mobil) && !empty($tanggal_sewa) && $durasi > 0) {
        $sql = "INSERT INTO pesanan (nama_pelanggan, email, tipe_mobil, tanggal_sewa, durasi) VALUES ('$nama_pelanggan', '$email', '$tipe_mobil', '$tanggal_sewa', '$durasi')";
        if ($conn->query($sql) === TRUE) {
            echo "<div class='alert alert-success'>Pesanan berhasil ditambahkan.</div>";
        } else {
            echo "<div class='alert alert-danger'>Error: " . $sql . "<br>" . $conn->error . "</div>";
        }
    } else {
        echo "<div class='alert alert-danger'>Semua field harus diisi dengan benar.</div>";
    }
}
?>
<?php
include_once "header.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Pemesanan Mobil</title>
</head>
<body>
    <div class="container mt-5 shadow-none p-3 mb-5 bg-light rounded">
        <h1 class="text-center">Form Pemesanan Mobil</h1>

        <form method="POST" class="mb-4">
            <div class="form-group">
                <label for="nama_pelanggan">Nama Pelanggan</label>
                <input type="text" name="nama_pelanggan" class="form-control" placeholder="Masukkan Nama Pelanggan" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" class="form-control" placeholder="Masukkan Email Anda" required>
            </div>
            <div class="form-group">
            <label for="tipe_mobil">Tipe Mobil</label>
                <select name="tipe_mobil" class="form-control" required>
                    <option value="">Pilih Tipe Mobil</option>
                    <option value="Sedan">Sedan</option>
                    <option value="SUV">SUV</option>
                    <option value="MPV">MPV</option>
                    <option value="Pickup">Pickup</option>
                    <option value="Crossover">Crossover</option>
                </select>
            </div>
            <div class="form-group">
                <label for="tanggal_sewa">Tanggal Sewa</label>
                <input type="date" name="tanggal_sewa" class="form-control" required>
            </div>
            <div class="form-group">
            <label for="durasi">Durasi Hari</label>
                <select name="durasi" class="form-control" required>
                    <option value="">Durasi Sewa</option>
                    <option value="Sedan">1</option>
                    <option value="SUV">2</option>
                    <option value="MPV">3</option>
                    <option value="MPV">5</option>
                    <option value="Pickup">7</option>
                </select>
            </div>
            <button type="submit" name="tambah" class="btn btn-primary">Pesanan</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

<?php
include_once "footer.php";
?>
