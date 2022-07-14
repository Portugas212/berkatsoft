<?php

namespace App\Http\Controllers;

use App\Models\produk;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Validator;

class ProdukController extends Controller
{
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $aksi = '<div class="btn-group">
            <a href="{{ url("edit_produk/$id") }}" type="button" class="btn btn-warning btn-sm modal_xxl"><i class="fa fa-edit" aria-hidden="true"></i></a>
            <a href="{{ url("delete_produk/$id") }}" id="delete_produk" type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash" aria-hidden="true"></i></a></div>';

            return DataTables::of(produk::all())
                ->addIndexColumn()
                ->addColumn('aksi', $aksi)
                ->rawColumns(['aksi'])
                ->toJson();
        }

        $data = ['breadcrumb' => 'Data Produk'];
        return view('produk.index', $data);
    }

    public function create()
    {
        return view('produk.create');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->input(), [
            'kode_produk' => 'required|unique:produk,kode_produk',
            'nama_produk' => 'required|unique:produk,nama_produk',
        ]);

        if ($validator->fails()) {
            return response()->json(['code' => 0, 'error' => $validator->errors()->toarray()]);
        } else {
            $query = produk::create($request->input());

            if ($query) {
                return response()->json(['icon' => 'success', 'title' => 'Data berhasil di tambahkan']);
            }
        }
    }

    public function edit(Request $request)
    {
        $produk = produk::findOrFail($request->id);
        return view('produk.edit', compact('produk'));
    }

    public function update(Request $request)
    {
        $validator = Validator::make($request->input(), [
            'kode_produk' => 'required',
            'nama_produk' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['code' => 0, 'error' => $validator->errors()->toarray()]);
        } else {
            $query = produk::where('id', $request->id)->update(['kode_produk' => $request->kode_produk, 'nama_produk' => $request->nama_produk]);

            if ($query) {
                return response()->json(['icon' => 'success', 'title' => 'Data berhasil di update']);
            }
        }
    }

    public function delete(Request $request)
    {
        $query = produk::find($request->id)->delete();
        if ($query) {
            return response()->json(['icon' => 'success', 'title' => 'Data berhasil di hapus']);
        }
    }
}
