<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Berkatsoft</title>

    <link rel="stylesheet" href="{{ asset('plugins/fontawesome-free/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('dist/css/adminlte.min.css') }}">
</head>

<body class="hold-transition register-page">
    <div class="register-box">
        <div class="card card-outline card-primary">
            <div class="card-header text-center">
                <a href="#" class="h1"><b>Berkatsoft</b></a>
            </div>
            <form action="{{ route('cek_register') }}" method="post" id="login">
                @csrf
                <div class="card-body elevation-1">
                    <div class="form-group">
                        <label class="text-muted m-0">Name</label>
                        <input type="text" class="form-control" name="name">
                        <small class="text-danger">{{ $errors->register->first('name') }}</small>
                    </div>

                    <div class="form-group">
                        <label class="text-muted m-0">Email</label>
                        <input type="text" class="form-control" name="email">
                        <small class="text-danger">{{ $errors->register->first('email') }}</small>
                    </div>

                    <div class="form-group">
                        <label class="text-muted m-0">Password</label>
                        <input type="password" class="form-control" name="password">
                        <small class="text-danger">{{ $errors->register->first('password') }}</small>
                    </div>

                    <div class="form-group">
                        <label class="text-muted m-0">Confirmasi Password</label>
                        <input type="password" class="form-control" name="cpassword">
                        <small class="text-danger">{{ $errors->register->first('cpassword') }}</small>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary btn-block">Daftar</button><a
                        class="d-flex justify-content-center text-muted" href="{{ route('login') }}"><small>Sudah
                            Punya Akun
                            ? Login</small></a>
                </div>
            </form>
        </div>
    </div>

    <script src="{{ asset('plugins/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('dist/js/adminlte.js') }}"></script>

</body>

</html>
