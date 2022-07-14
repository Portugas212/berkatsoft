@extends('layout/body')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card card-outline card-primary">
                <div class="card-header">List Sales Order</div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-striped table-bordered" id="tb_order">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Costumer</th>
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
            var tb_order = $('#tb_order').DataTable({
                processing: true,
                serverSide: true,
                dom: "<'row' <'col-md-4'l> <'#buttons.col-md-4'> <'col-md-4'f>> <'row' <'col-sm-12'tr>> <'row' <'col-md-5'i> <'col-md-7'p>>",
                ajax: "{{ route('order') }}",
                columns: [{
                        "sWidth": "5%",
                        "className": "text-center",
                        "data": 'DT_RowIndex',
                        "name": 'DT_RowIndex'
                    },
                    {
                        "data": 'name',
                        "name": 'name'
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
                "<div class='text-center'><a href='{{ url('create_order') }}' class='btn btn-sm btn-info modal_xxl'>Tambah Order</a></div>"
            );

            form_submit('#store_order', '#tb_order', false);

            form_submit('#update_order', '#tb_order', false);

            swal_delete('#delete_order', '#tb_order', false);
        });
    </script>
@endpush
