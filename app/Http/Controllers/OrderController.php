<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Produk;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\User;
use Illuminate\Support\Facades\Hash;
use Yajra\DataTables\Facades\DataTables;
use Illuminate\Support\Facades\Validator;


class OrderController extends Controller
{
    protected $costumer;
    protected $produk;

    public function index(Request $request)
    {
        if ($request->ajax()) {
            $aksi = '<div class="btn-group">
            <a href="{{ url("edit_order/$id") }}" type="button" class="btn btn-warning btn-sm modal_xxl"><i class="fa fa-edit" aria-hidden="true"></i></a>
            <a href="{{ url("delete_order/$id") }}" id="delete_order" type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash" aria-hidden="true"></i></a></div>';

            $order = Order::orderBy('id', 'DESC')->get();

            return DataTables::of($order)
                ->addIndexColumn()
                ->addColumn('name', function ($order) {
                    return $order->user->name;
                })
                ->addColumn('nama_produk', function ($order) {
                    return $order->produk->nama_produk;
                })
                ->addColumn('aksi', $aksi)
                ->rawColumns(['name', 'nama_produk', 'aksi'])
                ->toJson();
        }

        $data = ['breadcrumb' => 'Data Sales Order'];
        return view('order.index', $data);
    }

    public function create()
    {
        return view('order.create');
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->input(), [
            'id_user' => 'required',
            'id_produk' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['code' => 0, 'error' => $validator->errors()->toarray()]);
        } else {
            for ($i = 0; $i < count($request->id_produk); $i++) {
                $flight = Order::create([
                    'id_user' => $request->id_user,
                    'id_produk' => $request->id_produk[$i],
                ]);
            }

            if ($flight) {
                return response()->json(['icon' => 'success', 'title' => 'Data berhasil di tambah']);
            }
        }
    }

    public function edit(Request $request)
    {
        $order = Order::findOrFail($request->id);
        return view('order.edit', compact('order'));
    }

    public function update(Request $request)
    {
        $validator = Validator::make($request->input(), [
            'id_user' => 'required',
            'id_produk' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json(['code' => 0, 'error' => $validator->errors()->toarray()]);
        } else {
            $query = Order::where('id', $request->id)->update(['id_user' => $request->id_user, 'id_produk' => $request->id_produk]);

            if ($query) {
                return response()->json(['icon' => 'success', 'title' => 'Data berhasil di update']);
            }
        }
    }

    public function delete(Request $request)
    {
        $query = Order::find($request->id)->delete();
        if ($query) {
            return response()->json(['icon' => 'success', 'title' => 'Data berhasil di hapus']);
        }
    }

    public function getCostumer(Request $request)
    {
        $search = $request->search;

        $this->costumer = User::where('role', 'Costumer')->orderBy('id');

        if ($search) {
            $result = $this->costumer->where('name', 'like', '%' . $search . '%')->get();
        } else {
            $result = $this->costumer->get();
        }

        $json = [];

        foreach ($result as $value) {
            $json[] = ['id' => $value['id'], 'text' => $value['name']];
        }

        return response()->json($json);
    }

    public function getProduk(Request $request)
    {
        $search = $request->search;

        $this->produk = Produk::orderBy('id');

        if ($search) {
            $result = $this->produk->where('nama_produk', 'like', '%' . $search . '%')->get();
        } else {
            $result = $this->produk->get();
        }

        $json = [];

        foreach ($result as $value) {
            $json[] = ['id' => $value['id'], 'text' => $value['nama_produk']];
        }

        return response()->json($json);
    }
}
