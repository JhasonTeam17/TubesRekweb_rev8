<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>


<!-- Page Heading -->
<div class="container">
    <div class="row mt-3 justify-content-center">
        <h1 class=" h3 mb-4 text-gray-800 text-center">Daftar Buku</h1>
    </div>
    <div class="row justify-content-center">
        <?php foreach ($komik as $k) : ?>
            <div class="col-md-4 col-sm-12 mb-3">
                <div class="card" style="width: 18rem;">
                    <img src="/img/<?= $k['sampul'] ?>" width="120" class="card-img-top">
                    <div class="card-body">
                        <h5 class="card-title"><?= $k['judul'] ?></h5>
                        <p>Penulis: <?= $k['penulis'] ?></p>
                        <p>Penulis: <?= $k['penerbit'] ?></p>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</div>


<?= $this->endSection(); ?>