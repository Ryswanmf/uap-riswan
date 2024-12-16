<?php
include 'koneksi.php'; // Pastikan Anda sudah membuat koneksi ke database

// Pastikan durasi terisi dan konversi ke integer
if (isset($_POST['durasi'])) {
    $durasi = (int)$_POST['durasi']; // Mengonversi ke integer
} else {
    $durasi = 0; // Atau bisa juga mengembalikan error
}

// Harga per hari
$harga_per_hari = 100000; // 100 ribu
$total_harga = $durasi * $harga_per_hari; // Menghitung total harga

// Create
if (isset($_POST['tambah'])) {
    $nama_pelanggan = $_POST['nama_pelanggan'];
    $tipe_mobil = $_POST['tipe_mobil'];
    $tanggal_sewa = $_POST['tanggal_sewa'];

    // Pastikan total_harga sudah dihitung sebelum menyimpan ke database
    $sql = "INSERT INTO pesanan (nama_pelanggan, tipe_mobil, tanggal_sewa, durasi, total_harga) VALUES ('$nama_pelanggan', '$tipe_mobil', '$tanggal_sewa', '$durasi', '$total_harga')";
    if ($conn->query($sql) === TRUE) {
        echo "Pesanan berhasil ditambahkan.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Read
$sql = "SELECT * FROM pesanan";
$result = $conn->query($sql);

// Update
if (isset($_POST['update'])) {
    $id = $_POST['id'];
    $nama_pelanggan = $_POST['nama_pelanggan'];
    $tipe_mobil = $_POST['tipe_mobil'];
    $tanggal_sewa = $_POST['tanggal_sewa'];
    $durasi = $_POST['durasi'];
    $total_harga = $durasi * $harga_per_hari; // Hitung total harga untuk update

    $sql = "UPDATE pesanan SET nama_pelanggan='$nama_pelanggan', tipe_mobil='$tipe_mobil', tanggal_sewa='$tanggal_sewa', durasi='$durasi', total_harga='$total_harga' WHERE id=$id";
    if ($conn->query($sql) === TRUE) {
        echo "Pesanan berhasil diperbarui.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Delete
if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $sql = "DELETE FROM pesanan WHERE id=$id";
    if ($conn->query($sql) === TRUE) {
        echo "Pesanan berhasil dihapus.";
    } else {
        echo "Error: " . $conn->error;
    }
}

// Edit
$edit = null;
if (isset($_GET['edit'])) {
    $id = $_GET['edit'];
    $edit = $conn->query("SELECT * FROM pesanan WHERE id=$id")->fetch_assoc();
}
?>

<?php 
include_once "dashboard.php"
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Pesanan Rental Mobil</title>
</head>
<body>
    <div class="container mt-5">

        <h2>Daftar Pesanan</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nama Pelanggan</th>
                    <th>Email</th>
                    <th>Tipe Mobil</th>
                    <th>Tanggal Sewa</th>
                    <th>Durasi (hari)</th>
                    <th>Total Harga</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $result->fetch_assoc()): ?>
                <tr>
                    < <td><?php echo $row['id']; ?></td>
                    <td><?php echo $row['nama_pelanggan']; ?></td>
                    <td><?php echo $row['email']; ?></td>
                    <td><?php echo $row['tipe_mobil']; ?></td>
                    <td><?php echo $row['tanggal_sewa']; ?></td>
                    <td><?php echo $row['durasi']; ?></td>
                    <td><?php echo $row['total_harga']; ?></td>
                    <td>
                        <a href="edit-pesanan.php?edit=<?php echo $row['id']; ?>" class="btn btn-warning btn-sm">Edit</a>
                        <a href="?delete=<?php echo $row['id']; ?>" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda yakin ingin menghapus?');">Hapus</a>
                    </td>
                </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

<?php
$conn->close();
?>