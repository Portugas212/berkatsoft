<?php

use Illuminate\Foundation\Auth\User;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ProdukController;
use App\Http\Controllers\CostumerController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('login');
})->name('login');

Route::get('register', function () {
    return view('register');
})->name('register');

Route::post('cek_login', [AuthController::class, 'cek_login'])->name('cek_login');

Route::post('cek_register', [AuthController::class, 'cek_register'])->name('cek_register');

Route::get('logout', [AuthController::class, 'logout'])->name('logout');

Route::get('home', [HomeController::class, 'index'])->name('home');

Route::controller(ProdukController::class)->group(function () {
    Route::get('produk', 'index')->name('produk');
    Route::get('create_produk', 'create');
    Route::post('store_produk', 'store');
    Route::get('edit_produk/{id}', 'edit');
    Route::put('update_produk/{id}', 'update');
    Route::delete('delete_produk/{id}', 'delete');
});

Route::controller(CostumerController::class)->group(function () {
    Route::get('costumer', 'index')->name('costumer');
    Route::get('create_costumer', 'create');
    Route::post('store_costumer', 'store');
    Route::get('edit_costumer/{id}', 'edit');
    Route::put('update_costumer/{id}', 'update');
    Route::delete('delete_costumer/{id}', 'delete');
});

Route::controller(OrderController::class)->group(function () {
    Route::get('order', 'index')->name('order');
    Route::get('create_order', 'create');
    Route::post('store_order', 'store');
    Route::get('edit_order/{id}', 'edit');
    Route::put('update_order/{id}', 'update');
    Route::delete('delete_order/{id}', 'delete');

    Route::get('getCostumer', 'getCostumer')->name('getCostumer');
    Route::get('getProduk', 'getProduk')->name('getProduk');
});
