<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>Berkatsoft | {{ $breadcrumb }}</title>
    <link rel="stylesheet" href="{{ asset('plugins/fontawesome-free/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('dist/css/adminlte.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/select2/css/select2.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/datatables-select/css/select.bootstrap4.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/datatables-bs4/css/dataTables.bootstrap4.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css') }}">
    <script src="{{ asset('plugins/jquery/jquery.min.js') }}"></script>
    @stack('css')
</head>

<body class="hold-transition light-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">

    <div class="wrapper">

        @include('layout.head')
        @include('layout.side')

        <div class="content-wrapper">
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm-6">
                            <h4 class="text-muted m-0">{{ $breadcrumb }}</h4>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">{{ $breadcrumb }}</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>

            <section class="content">
                <div class="container-fluid">

                    @yield('content')

                    <div id="myModal" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content card-outline card-primary"></div>
                        </div>
                    </div>

                </div>
            </section>
        </div>

        @include('layout.foot')
    </div>

    <script src="{{ asset('plugins/select2/js/select2.full.min.js') }}"></script>
    <script src="{{ asset('plugins/sweetalert2/sweetalert2.all.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-bs4/js/dataTables.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('plugins/datatables-select/js/dataTables.select.min.js') }}"></script>
    <script src="{{ asset('plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('dist/js/adminlte.js') }}"></script>

    <script>
        function toasts_success(icons, titles) {
            Swal.fire({
                position: 'top-end',
                icon: icons,
                title: titles,
                showConfirmButton: false,
                timer: 1500
            })
        }

        function form_submit(selector, table, table2 = false) {
            $(document).on('submit', selector, function(e) {
                e.preventDefault();
                var form = this;
                $.ajax({
                    type: $(form).attr('method'),
                    url: $(form).attr('action'),
                    data: new FormData(form),
                    dataType: "json",
                    processData: false,
                    contentType: false,
                    beforeSend: function() {
                        $(form).find('small.text-danger').text();
                    },
                    success: function(res) {
                        if (res.code == 0) {
                            $.each(res.error, function(prefix, val) {
                                $(form).find('small.' + prefix).text(val[0])
                            })
                        } else {
                            if (table2 != false) {
                                $(table2).DataTable().ajax.reload(null, false);
                            }
                            $(table).DataTable().ajax.reload(null, false);
                            $(form)[0].reset();
                            $('#myModal').modal('hide')
                            toasts_success(res.icon, res.title)
                        }
                    }
                });
            })
        }

        function swal_delete(selector, table, table2 = false) {
            $(document).on('click', selector, function(e) {
                e.preventDefault();
                Swal.fire({
                    title: 'Apakah Anda Yakin ?',
                    text: "Anda tidak dapat mengembalikan data ini!",
                    icon: 'warning',
                    showCancelButton: true,
                    cancelButtonColor: '#d33',
                    cancelButtonText: 'Batal',
                    confirmButtonColor: '#3085d6',
                    confirmButtonText: 'Ya, Hapus !'
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            type: "delete",
                            url: $(this).attr('href'),
                            dataType: "JSON",
                            success: function(res) {
                                if (table2 != false) $(table2).DataTable().ajax.reload(null,
                                    false);
                                $(table).DataTable().ajax.reload(null, false);
                                toasts_success(res.icon, res.title)
                            }
                        });
                    }
                })
            })
        }

        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
        });

        $(document).on('click', '#logout', function(e) {
            e.preventDefault();
            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, logout!'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        type: "GET",
                        url: $(this).attr('href'),
                        dataType: "JSON",
                        success: function(res) {
                            if (res.code == 0) {
                                window.location.reload()
                            }
                        }
                    });
                }
            })
        })

        $(document).on('click', '.modal_xl', function(e) {
            e.preventDefault();
            $('.modal-dialog').removeClass('modal-xxl');
            $('.modal-dialog').addClass('modal-xl');
            $('.modal-content').load($(this).attr('href'));
            $('#myModal').modal({
                backdrop: 'static',
                keyboard: false
            });
        })

        $(document).on('click', '.modal_xxl', function(e) {
            e.preventDefault();
            $('.modal-dialog').removeClass('modal-xl');
            $('.modal-dialog').addClass('modal-xxl');
            $('.modal-content').load($(this).attr('href'));
            $('#myModal').modal({
                backdrop: 'static',
                keyboard: false
            });
        });
    </script>
    @stack('javascript')
</body>

</html>
