<?php
include 'koneksi.php'; // Pastikan Anda sudah membuat koneksi ke database

// Read
$sql = "SELECT * FROM pesanan";
$result = $conn->query($sql);
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
    <title>Cetak Pesanan Rental Mobil</title>
    <style>
        @media print {
            .no-print {
                display: none;
            }
        }
    </style>
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
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $result->fetch_assoc()): ?>
                <tr>
                    <td><?php echo $row['id']; ?></td>
                    <td><?php echo $row['nama_pelanggan']; ?></td>
                    <td><?php echo $row['email']; ?></td>
                    <td><?php echo $row['tipe_mobil']; ?></td>
                    <td><?php echo $row['tanggal_sewa']; ?></td>
                    <td><?php echo $row['durasi']; ?></td>
                    <td><?php echo $row['total_harga']; ?></td>
                </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
        <button class="btn btn-success no-print" onclick="window.print()">Print</button>
        <a href="index.php" class="btn btn-secondary no-print">Kembali</a>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

<?php
$conn->close();
?>