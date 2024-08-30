<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Nasabah extends Model
{
    use HasFactory;

    protected $table = 'nasabah';

    protected $fillable = [
    'nomor_identitas',
    'nama',
    'tempat_lahir',
    'tanggal_lahir',
    'jenis_kelamin',
    'pekerjaan',
    'alamat',
    'nominal_setor',
    'status_pengajuan',
    'notes',
    'created_at',
    'updated_at',
    'created_by',
    'updated_by'
  ];
}
