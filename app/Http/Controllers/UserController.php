<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User; // Asumsi ada model User
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    public function userLogin(Request $request)
    {
      // Validasi input request
      $validator = Validator::make($request->all(), [
          'email' => 'required|email',
          'password' => 'required|string',
      ]);

      if ($validator->fails()) {
          return response()->json([
              'status' => 400,
              'message' => 'Data can\'t be empty',
              'errors' => $validator->errors()
          ], 400);
      }

      $email = $request->input('email');
      $password = $request->input('password');

      // Mencari user berdasarkan email
      $user = User::where('email', $email)->first();

      if (!$user || !Hash::check($password, $user->password)) {
          return response()->json([
              'status' => 400,
              'message' => 'Email atau password salah.'
          ], 400);
      }

      // Jika login berhasil, Anda bisa mengembalikan token atau data user
      return response()->json([
          'status' => 200,
          'message' => 'Login berhasil',
          'data' => $user
      ], 200);
    }
}
