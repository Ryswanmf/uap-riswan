<?php 
include_once "dashboard.php"
?>

<div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Dashboard Admin</h6>
        </div>
    <div class="card-body">
        Selamat datang, <?php echo htmlspecialchars($_SESSION['username']); ?>!
    </div>
</div>
