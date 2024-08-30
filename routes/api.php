<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\NasabahController;
use App\Http\Controllers\WilayahController;
use App\Http\Controllers\PekerjaanController;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('/user/login', [UserController::class, 'userLogin']);

//Nasabah
Route::get('/nasabah', [NasabahController::class, 'index']);
Route::post('/nasabah', [NasabahController::class, 'store']);
Route::get('/nasabah/{id}', [NasabahController::class, 'show']);
Route::post('/nasabah/{id}', [NasabahController::class, 'approve']);
//wilayah
Route::get('/wilayah/provinsi', [WilayahController::class, 'getProvinsi']);
Route::get('/wilayah/kabupaten', [WilayahController::class, 'getKabupaten']);
Route::get('/wilayah/kecamatan', [WilayahController::class, 'getKecamatan']);
Route::get('/wilayah/kelurahan', [WilayahController::class, 'getKelurahan']);
//master pekerjaan
Route::get('/pekerjaan', [PekerjaanController::class, 'index']);
