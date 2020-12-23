<?php

namespace App\Controllers;

class Cari extends BaseController
{
    public function cariBuku()
    {
        $data = [
            'title' => 'Cari RBook!'
        ];
        return view('buku/cariBuku', $data);
    }
}
