<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Validator;

class CostumerController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $aksi = '<div class="btn-group">
            <a href="{{ url("edit_costumer/$id") }}" type="button" class="btn btn-warning btn-sm modal_xxl"><i class="fa fa-edit" aria-hidden="true"></i></a>
            <a href="{{ url("delete_costumer/$id") }}" id="delete_costumer" type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash" aria-hidden="true"></i></a></div>';

            return DataTables::of(User::orderBy('name', 'DESC')->where('role', 'Costumer')->get())
                ->addIndexColumn()
                ->addColumn('aksi', $aksi)
                ->rawColumns(['aksi'])
                ->toJson();
        }

        $data = ['breadcrumb' => 'Data costumer'];
        return view('costumer.index', $data);
    }

    public function create()
    {
        return view('costumer.create');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->input(), [
            'name' => 'required|min:2|unique:users,name',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:5',
            'cpassword' => 'same:password',
        ]);

        if ($validator->fails()) {
            return response()->json(['code' => 0, 'error' => $validator->errors()->toarray()]);
        } else {
            $flight = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'role' => 2,
                'password' => Hash::make($request->password),
            ]);

            if ($flight) {
                return response()->json(['icon' => 'success', 'title' => 'Data berhasil di tambah']);
            }
        }
    }

    public function edit(Request $request)
    {
        $costumer = User::findOrFail($request->id);
        return view('costumer.edit', compact('costumer'));
    }

    public function update(Request $request)
    {
        $field = ['name' => 'required|min:2', 'email' => 'required|email'];

        $datapost = ['name' => $request->name, 'email' => $request->email];

        if ($request->password != NULL) {
            $datapost += ['password' => $request->password];
            $field += ['password' => 'required|min:5', 'cpassword' => 'same:password'];
        }

        $validator = Validator::make($request->input(), $field);

        if ($validator->fails()) {
            return response()->json(['code' => 0, 'error' => $validator->errors()->toarray()]);
        } else {
            $query = User::where('id', $request->id)->update($datapost);

            if ($query) {
                return response()->json(['icon' => 'success', 'title' => 'Data berhasil di update']);
            }
        }
    }

    public function delete(Request $request)
    {
        $query = User::find($request->id)->delete();
        if ($query) {
            return response()->json(['icon' => 'success', 'title' => 'Data berhasil di hapus']);
        }
    }
}
