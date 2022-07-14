@extends('layout/body')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card card-outline card-primary">
                <div class="card-header">List Produk</div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-striped table-bordered" id="tb_produk">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Kode Produk</th>
                                        <th>Nama Produk</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@push('javascript')
    <script>
        $(document).ready(function() {
            var tb_produk = $('#tb_produk').DataTable({
                processing: true,
                serverSide: true,
                dom: "<'row' <'col-md-4'l> <'#buttons.col-md-4'> <'col-md-4'f>> <'row' <'col-sm-12'tr>> <'row' <'col-md-5'i> <'col-md-7'p>>",
                ajax: "{{ route('produk') }}",
                columns: [{
                        "sWidth": "5%",
                        "className": "text-center",
                        "data": 'DT_RowIndex',
                        "name": 'DT_RowIndex'
                    },
                    {
                        "data": 'kode_produk',
                        "name": 'kode_produk'
                    },
                    {
                        "data": 'nama_produk',
                        "name": 'nama_produk'
                    },
                    {
                        "sWidth": "5%",
                        "className": "text-center",
                        "data": 'aksi',
                        "name": 'aksi'
                    },
                ]
            });

            $('#buttons').html(
                "<div class='text-center'><a href='{{ url('create_produk') }}' class='btn btn-sm btn-info modal_xxl'>Tambah Produk</a></div>"
            );

            form_submit('#store_produk', '#tb_produk', false);

            form_submit('#update_produk', '#tb_produk', false);

            swal_delete('#delete_produk', '#tb_produk', false);
        });
    </script>
@endpush
