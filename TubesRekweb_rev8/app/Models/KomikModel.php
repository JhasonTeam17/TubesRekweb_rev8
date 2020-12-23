<?php

namespace App\Models;

use CodeIgniter\Model;

class KomikModel extends Model
{
  protected $table = 'komik';
  protected $useTimestamps = true;
  protected $allowedFields = ['judul', 'slug', 'penulis', 'penerbit', 'sampul'];


  public function search($keyword)
  {
    // $builder = $this->table('orang');
    // $builder->like('nama', $keyword);
    // return $builder;

    return $this->table('komik')->like('judul', $keyword);
  }

  public function getKomik($slug = false)
  {
    return $slug == false ? $this->findAll() : $this->where(['slug' => $slug])->first();
  }
}
