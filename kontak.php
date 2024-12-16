<?php 
include_once "header.php"
?>

<br>
<div class="container">
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-header bg-primary text-white"><i class="fa fa-envelope"></i> Kontak
                </div>
                <div class="card-body">
                    <form>
                        <div class="form-group">
                            <label for="name">Nama</label>
                            <input type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="Enter name" required>
                        </div>
                        <br>
                        <div class="form-group">
                            <label for="email">Email address</label>
                            <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email" required>
                        </div>
                        <br>
                        <div class="form-group">
                            <label for="message">Pesan</label>
                            <textarea class="form-control" id="message" rows="6" required></textarea>
                        </div>
                        <br>
                        <div class="mx-auto">
                        <button type="submit" class="btn btn-primary text-right">Kirim</button></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<br>
<br>

<?php 
include_once "footer.php"
?>