<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AuthController extends Controller
{
    public function cek_login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required|min:5',
        ]);

        if (!$validator->fails()) {
            if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
                $request->session()->regenerate();
                return redirect('home')->with('success', 'Hallo !');
            } else {
                return redirect('/')->with('error', 'Email atau Password salah !');
            }
        } else {
            return redirect('/')->withErrors($validator, 'login')->withInput();
        }
    }

    public function cek_register(Request $request)
    {
        $validator = Validator::make($request->input(), [
            'name' => 'required|min:2|unique:users,name',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:5',
            'cpassword' => 'same:password',
        ]);

        if ($validator->fails()) {
            return redirect('register')->withErrors($validator, 'register')->withInput();
        } else {
            $flight = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'role' => 2,
                'password' => Hash::make($request->password),
            ]);

            if ($flight) {
                return redirect('/')->with('success', 'Registrasi Berhasil,Silahkan Login !');
            }
        }
    }

    public function logout(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/')->with('success', 'Anda telah logout !');
    }
}
