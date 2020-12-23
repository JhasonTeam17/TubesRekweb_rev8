<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>

<body>
  <div class="container">
    <div id="title" class="center">
      <h1 id="header" class="text-center text-black mt-5">Cari RBook!</h1>
      <div class="row">
        <div id="input" class="input-group mx-auto col-lg-6 col-md-8 col-sm-12">
          <input id="search-box" type="text" class="form-control" placeholder="Cari Buku....">
          <button id="search" class="btn btn-secondary" onclick="">Search</button>
        </div>
      </div>
    </div>
    <div class="book-list">
      <h2 class="text-center text-black">Hasil Cari</h2>
      <div id="list-output" class="">
        <div class="row">
        </div>
      </div>
    </div>
  </div>

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script> -->
  <script src="https://code.jquery.com/jquery-3.1.0.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
  <link rel="stylesheet" href="/css/style.css">
  <script src="/js/buku.js"></script>

</body>
<?= $this->endSection(); ?>