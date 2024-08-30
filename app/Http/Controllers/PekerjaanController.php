<?php

namespace App\Http\Controllers;

use App\Models\MasterPekerjaan;
use Illuminate\Http\Request;

class PekerjaanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $data= MasterPekerjaan::all();

      return response()->json([
        'status' => 200,
        'message' => 'Berhasil mendapatkan data',
        'data' => $data
      ], 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\MasterPekerjaan  $masterPekerjaan
     * @return \Illuminate\Http\Response
     */
    public function show(MasterPekerjaan $masterPekerjaan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\MasterPekerjaan  $masterPekerjaan
     * @return \Illuminate\Http\Response
     */
    public function edit(MasterPekerjaan $masterPekerjaan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\MasterPekerjaan  $masterPekerjaan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, MasterPekerjaan $masterPekerjaan)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\MasterPekerjaan  $masterPekerjaan
     * @return \Illuminate\Http\Response
     */
    public function destroy(MasterPekerjaan $masterPekerjaan)
    {
        //
    }
}
