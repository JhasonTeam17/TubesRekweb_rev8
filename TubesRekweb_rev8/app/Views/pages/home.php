<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" height="90" width="100%">
      <div class="carousel-item active">
        <img src="../img/c1.jpg" width="100%" height="700">
        <div class=" container">
          <div class="carousel-caption text-left">
            <h1>Buku adalah.</h1>
            <p>Bagian terpenting bagi mereka yang belajar membaca untuk membangun pengetahuan</p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <img src="../img/c2.jpg" width="100%" height="700">
        <div class="container">
          <div class="carousel-caption text-center">
            <h1>Buku bagaikan cermin</h1>
            <p>"Jika orang bodoh melihat ke dalam, tidak dapat mengharap seorang jenius melihat keluar kamu hanya melihat di dalamnya apa yang sudah kamu miliki di dalam dirimu"</p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <img src="../img/c3.jpg" width="100%" height="700">
        <div class=" container">
          <div class="carousel-caption text-right">
            <h1>Buku lama adalah.</h1>
            <p>Buku baru bagi mereka yang belum membacanya</p>
          </div>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<!-- Informasi -->
<section class="informasi" id="infromasi">
  <div class="container ">
    <div class="row mt-3 justify-content-center">
      <div class="col">
        <h1 class="text-center">Selamat Datang di, RBook!</h1>
      </div>
    </div>
  </div>
  <br>

  <div class="container ">
    <div class="row mt-3 justify-content-center">
      <div class="col-md-4">
        <img src="../img/search.png" class="rounded mx-auto d-block" width="100" height="100">
        <h2 class="text-center">Apa itu RBook?</h2>
        <p class="text-center">RBook adalah web aplikasi untuk membaca buku, dan mencari buku bagi sobat yang ingin membaca buku, jadi ayo cari dan baca buku, karena buku adalah ilmu</p>
      </div>
      <div class="col-md-4">
        <img src="../img/information.png" class="rounded mx-auto d-block" width="100" height="100">
        <h2 class="text-center">Menggunakan RBook?</h2>
        <p class="text-center">Caranya sobat tinggal klik link diatas "Cari RBook" untuk mencari buku atau bisa klik tombol di baner halaman home</p>
      </div>
    </div>
  </div>
</section>

<!-- Card Buku -->
<section class="kartu bg-light" id="kartu">
  <div class="container ">
    <div class="row justify-content-center">
      <div class="col">
        <h1 class="text-center">Daftar Buku</h1>
      </div>
    </div>
  </div>
  <br>

  <div class="container ">
    <div class="row justify-content-center">
      <div class="col-md-4">
        <div class="card" style="width: 18rem;">
          <img src="../img/Dilan.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Dilan</h5>
            <p class="card-text"></p>
            <a href="/buku/index.php" class="btn btn-outline-dark">Banyak Lagi</a>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="card" style="width: 18rem;">
          <img src="../img/PHPdanMySQL.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">PHP dan MysSQL Secara Otodidak</h5>
            <p class="card-text"></p>
            <a href="/buku/index.php" class="btn btn-outline-dark">Banyak Lagi</a>
          </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="card" style="width: 18rem;">
          <img src="../img/Harry Potter and the deathly hallows.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title">Harry Potter and the deathly hallows</h5>
            <p class="card-text"></p>
            <a href="/buku/index.php" class="btn btn-outline-dark">Banyak Lagi</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
  </div>
</section>
<br>

<!-- Baner untuk link pencarian Rbook -->
<section class="baner" id="baner">
  <div class="container">
    <div class="row">
      <div class="col">
        <div class="jumbotron bg-dark">
          <h1 class="display-4 text-light">Halo, Sobat RBook!</h1>
          <p class="lead text-light">Ini adalah home baner untuk mencari buku yaang sobat cari :)</p>
          <hr class="my-4 hr-light">
          <p class="text-light">Ketuk/Klik link di bawah ini untuk mencari Rbook</p>
          <a class="btn btn-outline-light" href="/pages/cariBuku" role="button">Cari Rbook</a>
        </div>

      </div>
    </div>
  </div>

  <!-- Contac -->
  <section class="contact bg-light" id="contact">
    <div class="container">
      <div class="row pt-4 mb-4">
        <div class="col text-center">
          <h2>Contact</h2>
        </div>
      </div>

      <div class="row justify-content-center">
        <div class="col-lg-4">
          <div class="card bg-dark text-white mb-4 text-center">
            <div class="card-body">
              <h5 class="card-title">Kontak Kami</h5>
              <p class="card-text">Hallo sobat RBook perkenalkan kami dari JhasonTeam senang bisa membantu anda untuk mencari buku.</p>
            </div>
          </div>

          <ul class="list-group mb-4">
            <li class="list-group-item">
              <h3>Location</h3>
            </li>
            <li class="list-group-item">Universitas Pasundan</li>
            <li class="list-group-item">Jl. Setiabudhi No 193, Kec Sukasari Bandung</li>
            <li class="list-group-item">West Java, Indonesia</li>
          </ul>
        </div>

        <div class="col-lg-6">
          <div class="row">
            <div class="col-md-4">
              <img src="../img/ghaida.jpg" width="120" class="rounded-circle img-thumbnail">
            </div>
            <div class="col-md-8">
              <h5>Ghaida Dwi Febriyanti</h5>
              <p>183040085</p>
              <p><a href="https://www.instagram.com/ghaidadwi/?hl=id"><img src="../img/instagram.png" width="30">@ghaidadwi</a></p>
            </div>
            <br>
            <div class="col-md-4">
              <img src="../img/fikran.jpg" width="120" class="rounded-circle img-thumbnail">
            </div>
            <div class="col-md-8">
              <h5>M Fikran Rakadifa Ramadhan</h5>
              <p>183040063</p>
              <p><a href="https://www.instagram.com/fikranrr/?hl=id"><img src="../img/instagram.png" width="30">@fikranrr</a></p>
            </div>
            <br>
            <div class="col-md-4">
              <img src="../img/anas.jpeg" width="120" class="rounded-circle img-thumbnail">
            </div>
            <div class="col-md-8">
              <h5>Tamzid Anas Yudistira</h5>
              <p>183040055</p>
              <p><a href="https://www.instagram.com/__anasszz/?hl=id"><img src="../img/instagram.png" width="30">@__anasszz</a></p>
            </div>
            <div class="col-md-4">
              <img src="../img/user.png" width="120" class="rounded-circle img-thumbnail">
            </div>
            <div class="col-md-8">
              <h5>M.Rifqi R</h5>
              <p>173040033</p>
              <p><a href="https://www.instagram.com//?hl=id"><img src="../img/instagram.png" width="30"></a></p>
            </div>

          </div>
        </div>
  </section>




  <!-- footer -->
  <footer class="bg-dark text-white mt-5">
    <div class="container py-5">
      <div class="row">
        <div class="col-12 col-md">
        </div>
        <div class="col-6 col-md">
          <h5>JhasonTeam</h5>
          <ul class="list-unstyled text-small">
            <li>M fikran Rakadifa Ramadhan 183040063</li>
            <li>Ghaida Dwi Febriyanti 183040085</li>
            <li>Tamzid Anas Yudistira 183040055</li>
            <li>M.Rifqi R 173040033</li>
          </ul>
        </div>
        <div class="col-6 col-md">
          <h5>Tugas Besar Rekayasa Web 2020/2021</h5>
          <ul class="list-unstyled text-small">
            <li>Copyright &copy; 2020.</li>
            <li>Kelompok 17 RBook</li>
          </ul>
        </div>
      </div>
    </div>
  </footer>

  <?= $this->endSection(); ?>