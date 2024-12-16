<?php
include 'koneksi.php'; // Pastikan Anda sudah membuat koneksi ke database

// Update
if (isset($_POST['update'])) {
    $id = $_POST['id'];
    $nama_pelanggan = $_POST['nama_pelanggan'];
    $tipe_mobil = $_POST['tipe_mobil'];
    $tanggal_sewa = $_POST['tanggal_sewa'];
    $durasi = $_POST['durasi'];
    $total_harga = $_POST['total_harga'];

    $sql = "UPDATE pesanan SET nama_pelanggan='$nama_pelanggan', tipe_mobil='$tipe_mobil', tanggal_sewa='$tanggal_sewa', durasi='$durasi', total_harga='$total_harga' WHERE id=$id";
    if ($conn->query($sql) === TRUE) {
        echo "<div class='alert alert-success'>Pesanan berhasil diperbarui.</div>";
    } else {
        echo "<div class='alert alert-danger'>Error: " . $sql . "<br>" . $conn->error . "</div>";
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
    <title>Edit Pesanan Mobil</title>
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center">Edit Pesanan Mobil</h1>

        <?php if ($edit): ?>
        <form method="POST" class="mb-4">
            <input type="hidden" name="id" value="<?php echo $edit['id']; ?>">
            <div class="form-group">
                <label for="nama_pelanggan">Nama Pelanggan</label>
                <input type="text" name="nama_pelanggan" class="form-control" placeholder="Masukkan Nama Pelanggan" required value="<?php echo $edit['nama_pelanggan']; ?>">
            </div>
            <div class="form-group">
                <label for="tipe_mobil">Tipe Mobil</label>
                <input type="text" name="tipe_mobil" class="form-control" placeholder="Masukkan Tipe Mobil" required value="<?php echo $edit['tipe_mobil']; ?>">
            </div>
            <div class="form-group">
                <label for="tanggal_sewa">Tanggal Sewa</label>
                <input type="date" name="tanggal_sewa" class="form-control" required value="<?php echo $edit['tanggal_sewa']; ?>">
            </div>
            <div class="form-group">
                <label for="durasi">Durasi (hari)</label>
                <input type="number" name="durasi" class="form-control" placeholder="Masukkan Durasi Sewa" required value="<?php echo $edit['durasi']; ?>">
            </div>
            <div class="form-group">
                <label for="total_harga">Total Harga</label>
                <input type="number" name="total_harga" class="form-control" placeholder="Masukkan Total Harga" required value="<?php echo $edit['total_harga']; ?>">
            </div>
            <button type="submit" name="update" class="btn btn-primary" onclick="return confirm('Apakah anda yakin ingin mengubah pesanan');" >Update Pesanan</button>
        </form>
        <?php else: ?>
        <div class="alert alert-danger">Pesanan tidak ditemukan.</div>
        <?php endif; ?>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

<?php
$conn->close();
?>