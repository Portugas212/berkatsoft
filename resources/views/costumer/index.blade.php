@extends('layout/body')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card card-outline card-primary">
                <div class="card-header">List Costumer</div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-striped table-bordered" id="tb_costumer">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Costumer</th>
                                        <th>Email</th>
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
            var tb_costumer = $('#tb_costumer').DataTable({
                processing: true,
                serverSide: true,
                dom: "<'row' <'col-md-4'l> <'#buttons.col-md-4'> <'col-md-4'f>> <'row' <'col-sm-12'tr>> <'row' <'col-md-5'i> <'col-md-7'p>>",
                ajax: "{{ route('costumer') }}",
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
                        "data": 'email',
                        "name": 'email'
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
                "<div class='text-center'><a href='{{ url('create_costumer') }}' class='btn btn-sm btn-info modal_xxl'>Tambah Costumer</a></div>"
            );

            form_submit('#store_costumer', '#tb_costumer', false);

            form_submit('#update_costumer', '#tb_costumer', false);

            swal_delete('#delete_costumer', '#tb_costumer', false);
        });
    </script>
@endpush
