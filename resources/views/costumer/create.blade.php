<form action="{{ url('store_costumer') }}" method="POST" id="store_costumer">
    @csrf
    <div class="modal-header elevation-1 d-flex justify-content-center py-2">
        <h4><strong>Tambah Costumer</strong></h4>
    </div>

    <div class="modal-body elevation-1">
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="text-muted m-0">Name</label>
                    <input type="text" class="form-control" name="name">
                    <small class="text-danger name"></small>
                </div>

                <div class="form-group">
                    <label class="text-muted m-0">Email</label>
                    <input type="text" class="form-control" name="email">
                    <small class="text-danger email"></small>
                </div>

                <div class="form-group">
                    <label class="text-muted m-0">Password</label>
                    <input type="password" class="form-control" name="password">
                    <small class="text-danger password"></small>
                </div>

                <div class="form-group">
                    <label class="text-muted m-0">Confirmasi Password</label>
                    <input type="password" class="form-control" name="cpassword">
                    <small class="text-danger cpassword"></small>
                </div>
            </div>
        </div>
    </div>

    <div class="modal-footer">
        <button type="submit" class="btn btn-primary btn-block">Simpan</button>
        <button type="button" class="btn btn-danger btn-block" data-dismiss="modal">Kembali</button>
    </div>
</form>
