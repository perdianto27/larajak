<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      User::insert([
        [
          'name' => 'SPV Jakarta I',
          'email' => 'spvjak@gmail.com',
          'role_id' => 'SPV',
          'password' => Hash::make('P455w0rd!'),
          'created_at' => now(),
          'updated_at' => now(),
        ],
        [
          'name' => 'CS Jakarta I',
          'email' => 'csjak@gmail.com',
          'role_id' => 'CS',
          'password' => Hash::make('P455w0rd!'),
          'created_at' => now(),
          'updated_at' => now(),
        ]
    ]);
    }
}
