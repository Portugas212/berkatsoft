<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Berkatsoft</title>

    <link rel="stylesheet" href="{{ asset('plugins/fontawesome-free/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('dist/css/adminlte.min.css') }}">
</head>

<body class="hold-transition login-page">
    <div class="login-box">
        <div class="card card-outline card-primary">
            <div class="card-header text-center">
                <a href="#" class="h1"><b>Berkatsoft</b></a>
            </div>
            <form action="{{ route('cek_login') }}" method="post" id="login">
                @csrf
                <div class="card-body elevation-1">
                    @if ($message = Session::get('success'))
                        <div class="alert alert-success alert-block">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <strong>{{ $message }}</strong>
                        </div>
                    @endif

                    @if ($message = Session::get('error'))
                        <div class="alert alert-danger alert-block">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <strong>{{ $message }}</strong>
                        </div>
                    @endif
                    <h4 class="notif_error text-danger text-center"></h4>
                    <div class="row">
                        <div class="col-md-4 d-flex align-items-center justify-content-center">
                            <div class="elevation-1">
                                <img class="image" style="width: 100%; height:120px"
                                    src="{{ asset('dist/img/BerkatSoft.png') }}">
                            </div>
                        </div>

                        <div class="col-md-8">
                            <div class="form-group">
                                <label class="text-muted m-0">Email</label>
                                <input type="email" class="form-control" name="email">
                                <small class="text-danger">{{ $errors->login->first('email') }}</small>
                            </div>

                            <div class="form-group">
                                <label class="text-muted m-0">Password </label>
                                <input type="password" class="form-control" name="password">
                                <small class="text-danger">{{ $errors->login->first('password') }}</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-block">Login</button> <a
                        class="d-flex justify-content-center text-muted" href="{{ route('register') }}"><small>Belum
                            Punya Akun
                            ? Daftar</small></a>
                </div>
            </form>
        </div>
    </div>

    <script src="{{ asset('plugins/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('dist/js/adminlte.js') }}"></script>

</body>

</html>
