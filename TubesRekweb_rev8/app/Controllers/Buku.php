<?php

namespace App\Controllers;

use App\Models\KomikModel;

class Buku extends BaseController
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
            'title' => 'Daftar Buku',
            'komik' => $komik->getKomik()
        ];
        return view('buku/index', $data);
    }

    //--------------------------------------------------------------------

}
