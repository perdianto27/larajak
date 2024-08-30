<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WilayahController extends Controller
{
  public function getProvinsi()
  {
    $jsonFilePath = public_path('json/provinsi.json');
    $jsonData = file_get_contents($jsonFilePath);
    $data = json_decode($jsonData, true);
    return response()->json([
        'status' => 200,
        'message' => 'Berhasil mendapatkan data provinsi',
        'data' => $data
    ], 200);
  }

  public function getKabupaten()
  {
    $jsonFilePath = public_path('json/kabupaten.json');
    $jsonData = file_get_contents($jsonFilePath);
    $data = json_decode($jsonData, true);
    return response()->json([
        'status' => 200,
        'message' => 'Berhasil mendapatkan data kabupaten',
        'data' => $data
    ], 200);
  }

  public function getKecamatan()
  {
    $jsonFilePath = public_path('json/kecamatan.json');
    $jsonData = file_get_contents($jsonFilePath);
    $data = json_decode($jsonData, true);
    return response()->json([
        'status' => 200,
        'message' => 'Berhasil mendapatkan data kecamatan',
        'data' => $data
    ], 200);
  }

  public function getKelurahan()
  {
    $jsonFilePath = public_path('json/kelurahan.json');
    $jsonData = file_get_contents($jsonFilePath);
    $data = json_decode($jsonData, true);
    return response()->json([
        'status' => 200,
        'message' => 'Berhasil mendapatkan data kelurahan',
        'data' => $data
    ], 200);
  }
}
