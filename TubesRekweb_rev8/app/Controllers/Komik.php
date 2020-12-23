<?php

namespace App\Controllers;

use App\Models\KomikModel;

class Komik extends BaseController
{
  protected $komikModel;

  public function __construct()
  {
    $this->komikModel = new KomikModel();
  }

  public function index()
  {

    $keyword = $this->request->getVar('keyword');
    if ($keyword) {
      $komik = $this->komikModel->search($keyword);
    } else {
      $komik = $this->komikModel;
    }

    $data = [
      'title' => 'Data Buku',
      'komik' => $komik->getKomik()
    ];
    return view('komik/index', $data);
  }

  public function create()
  {
    $data = [
      'title' => 'Tambah Buku',
      'validation' => \Config\Services::validation()
    ];
    return view('komik/create', $data);
  }

  public function save()
  {
    if (!$this->validate([
      'judul' => [
        'rules' => 'required|is_unique[komik.judul]',
        'errors' => [
          'required' => 'memasukan judul buku.',
          'is_unique' => 'Judul buku "{value}" sudah terdaftar.'
        ]
      ],
      'penulis' => [
        'rules' => 'required',
        'errors' => [
          'required' => 'memasukan penulis buku.'
        ]
      ],
      'penerbit' => [
        'rules' => 'required',
        'errors' => [
          'required' => 'memasukan penerbit buku.'
        ]
      ],
      'sampul' => [
        'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
        'errors' => [
          'max_size' => 'Ukuran gambar hanya dapat <1Mb.',
          'is_image' => 'Anda tidak memasukan gambar.',
          'mime_in' => 'Anda tidak memasukan gambar.'
        ]
      ]
    ])) {
      // $validation = \Config\Services::validation();
      // return redirect()->to('/komik/create')->withInput()->with('validation', $validation);
      return redirect()->to('/komik/create')->withInput();
    }
    $fileSampul = $this->request->getFile('sampul');

    if ($fileSampul->getError() == 4) {
      $namaSampul = 'default.jpg';
    } else {
      $namaSampul = $fileSampul->getRandomName();
      $fileSampul->move('img', $namaSampul);
    }

    $slug = url_title($this->request->getPost('judul'), '-', true);

    $this->komikModel->save([
      'judul' => $this->request->getPost('judul'),
      'slug' => $slug,
      'penulis' => $this->request->getPost('penulis'),
      'penerbit' => $this->request->getPost('penerbit'),
      'sampul' => $namaSampul
    ]);

    session()->setFlashdata('pesan', 'Buku Berhasil Ditambahkan!');

    return redirect()->to('/komik');
  }

  public function detail($slug)
  {
    $komik = $this->komikModel->getKomik($slug);
    if (empty($komik)) {
      throw new \CodeIgniter\Exceptions\PageNotFoundException("Buku dengan judul {$slug}, Tidak ditemukan");
    }
    $data = [
      'title' => "Detail Buku {$komik['judul']}",
      'komik' => $komik
    ];
    return view('komik/detail', $data);
  }

  public function delete($id)
  {
    $komik = $this->komikModel->find($id);
    if ($komik['judul'] != 'default.jpg') {
      unlink('img/' . $komik['sampul']);
    }

    $this->komikModel->delete($id);
    session()->setFlashdata('pesan', 'Buku Berhasil Dihapus!');
    return redirect()->to('/komik');
  }

  public function edit($slug)
  {
    $data = [
      'title' => 'Edit Buku',
      'komik' => $this->komikModel->getKomik($slug),
      'validation' => \Config\Services::validation()
    ];
    return view('komik/edit', $data);
  }

  public function update($id)
  {
    $rule_judul = ($this->komikModel->getKomik($this->request->getVar('slug'))['judul'] == $this->request->getVar('judul')) ? 'required' : 'required|is_unique[komik.judul]';

    if (!$this->validate([
      'judul' => [
        'rules' => $rule_judul,
        'errors' => [
          'required' => 'Anda belum memasukan judul buku.',
          'is_unique' => 'Judul buku "{value}" sudah terdaftar.'
        ]
      ],
      'penulis' => [
        'rules' => 'required',
        'errors' => [
          'required' => 'Anda belum memasukan penulis buku.'
        ]
      ],
      'penerbit' => [
        'rules' => 'required',
        'errors' => [
          'required' => 'Anda belum memasukan penerbit buku.'
        ]
      ],
      'sampul' => [
        'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
        'errors' => [
          'max_size' => 'Ukuran gambar hanya dapat <1Mb.',
          'is_image' => 'Anda tidak memasukan gambar.',
          'mime_in' => 'Anda tidak memasukan gambar.'
        ]
      ]
    ])) {
      // $validation = \Config\Services::validation();
      // return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput()->with('validation', $validation);
      return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput();
    }

    $fileSampul = $this->request->getFile('sampul');
    $sampulLama = $this->komikModel->find($id)['sampul'];
    if ($fileSampul->getError() == 4) {
      $namaSampul = $sampulLama;
    } else {
      $namaSampul = $fileSampul->getRandomName();
      $fileSampul->move('img', $namaSampul);
      unlink('img/' . $sampulLama);
    }

    $this->komikModel->save([
      'id' => $id,
      'judul' => $this->request->getVar('judul'),
      'slug' => $this->request->getVar('slug'),
      'penulis' => $this->request->getVar('penulis'),
      'penerbit' => $this->request->getVar('penerbit'),
      'sampul' => $namaSampul
    ]);

    session()->setFlashdata('pesan', 'Data Berhasil diupdate!');
    return redirect()->to('/komik');
  }
}
