<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>
<div class="container mt-4">
  <div class="row">
    <div class="col">
      <h2 class="text-center">Data Buku</h2>
      <a href="/komik/create" class="btn btn-primary my-3">
        <i class="fas fa-plus"></i>
        <span>Tambah Data</span></a>
      <div class="row">
        <div class="col-12">
          <form action="" method="post">
            <div class="input-group mb-3">
              <input type="text" class="form-control" placeholder="Cari Buku.." name="keyword">
              <div class="input-group-append">
                <button class="btn btn-outline-dark" type="submit" name="submit">Search</button>
              </div>
            </div>
          </form>
        </div>
      </div>
      <?php if (session()->getFlashdata('pesan')) : ?>
        <div class="alert alert-success" role="alert"><?= session()->getFlashdata('pesan') ?></div>
      <?php endif; ?>
      <table class="table">
        <thead class="thead-dark">
          <tr>
            <th scope="col">No.</th>
            <th scope="col">Sampul</th>
            <th scope="col">Judul</th>
            <th scope="col">Aksi</th>
          </tr>
        </thead>
        <tbody>
          <?php $i = 1; ?>
          <?php foreach ($komik as $k) : ?>
            <tr>
              <th class="align-middle"><?= $i++ ?></th>
              <td class="align-middle"><img src="/img/<?= $k['sampul'] ?>" alt="<?= $k['slug'] ?>" width="125"></td>
              <td class="align-middle"><?= $k['judul'] ?></td>
              <td class="align-middle"><a href="/komik/<?= $k['slug'] ?>" class="btn btn-success">Detail</a></td>
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
    </div>
  </div>
</div>
<?= $this->endSection() ?>