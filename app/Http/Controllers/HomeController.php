<?php

namespace App\Http\Controllers;

class HomeController extends Controller
{
    public function index()
    {
        $data = ['breadcrumb' => 'Home'];
        return view('home', $data);
    }
}
