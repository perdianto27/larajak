<?php

namespace App\Http\Controllers;

use App\Models\Nasabah;
use Illuminate\Http\Request;

use Carbon\Carbon;
use Mail;
use App\Mail\NasabahEmail;

class NasabahController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $nasabah= Nasabah::all();

      return response()->json([
        'status' => 200,
        'message' => 'Berhasil mendapatkan data',
        'data' => $nasabah
      ], 200);
    }
  
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $alamatLengkap = $request->alamat;
      if (!empty($request->alamat) && !empty($request->provinsi)) {
          $alamatLengkap .= ', ' . $request->provinsi;
      } elseif (!empty($request->provinsi)) {
          $alamatLengkap = $request->provinsi;
      }

      $nasabah = new Nasabah();
      $nasabah->nomor_identitas = $request->nomor_identitas;
      $nasabah->nama = $request->nama;
      $nasabah->tempat_lahir = $request->tempat_lahir;
      $nasabah->tanggal_lahir = $request->tanggal_lahir;
      $nasabah->jenis_kelamin = $request->jenis_kelamin;
      $nasabah->pekerjaan = $request->pekerjaan;
      $nasabah->alamat = $alamatLengkap;
      $nasabah->nominal_setor = $request->nominal_setor;
      $nasabah->status_pengajuan = 'MENUNGGU_APPROVAL';
      $nasabah->created_at = now();
      $nasabah->updated_at = now();

      $nasabah->save();

      return response()->json([
          'status' => 201,
          'message' => 'Nasabah berhasil ditambahkan',
          'data' => $nasabah
      ], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Nasabah  $nasabah
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $nasabah = Nasabah::find($id);

      if (!$nasabah) {
          return response()->json([
              'status' => 404,
              'message' => 'Nasabah tidak ditemukan',
              'data' => null
          ], 404);
      }

      return response()->json([
          'status' => 200,
          'message' => 'Berhasil mendapatkan data',
          'data' => $nasabah
      ], 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Nasabah  $nasabah
     * @return \Illuminate\Http\Response
     */
    public function approve(Request $request, $id)
    {
        $nasabah = Nasabah::find($id);

        if (!$nasabah) {
            return response()->json([
                'status' => 404,
                'message' => 'Nasabah tidak ditemukan',
                'data' => null
            ], 404);
        }

        // Data tambahan yang ingin ditambahkan
        $additionalData = [
          'status_pengajuan' => 'DISETUJUI',
          'updated_at' => Carbon::now()
        ];

        // Gabungkan data dari request dengan data tambahan
        $dataToUpdate = array_merge($request->all(), $additionalData);

        $nasabah->update($dataToUpdate);
        $content = [
          'subject' => 'Vue Jak Notifikasi Approval',
          'body' => 'Approve has been success'];

        Mail::to('cs@gmail.com')->send(new NasabahEmail($content));

        return response()->json([
            'status' => 200,
            'message' => 'Data nasabah berhasil diperbarui',
            'data' => $nasabah
        ], 200);
    }

}
