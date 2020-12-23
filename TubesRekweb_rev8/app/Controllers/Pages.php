<?php

namespace App\Controllers;

class Pages extends BaseController
{
  public function index()
  {
    $data = [
      'title' => "JhasonTeam"
    ];
    return view('pages/home', $data);
  }
  public function cariBuku()
  {
    $data = [
      'title' => 'Cari RBook!'
    ];
    return view('pages/cariBuku', $data);
  }
}
