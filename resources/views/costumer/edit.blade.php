<form action="{{ url('update_costumer/' . $costumer->id) }}" method="post" id="update_costumer">
    @csrf
    @method('PUT')
    <div class="modal-header elevation-1 d-flex justify-content-center py-2">
        <h4><strong>Edit Costumer</strong></h4>
    </div>

    <div class="modal-body elevation-1">
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="text-muted m-0">Name</label>
                    <input type="text" class="form-control" name="name" value="{{ $costumer->name }}">
                    <small class="text-danger name"></small>
                </div>

                <div class="form-group">
                    <label class="text-muted m-0">Email</label>
                    <input type="text" class="form-control" name="email" value="{{ $costumer->email }}">
                    <small class="text-danger email"></small>
                </div>

                <div class="form-group">
                    <label class="text-muted m-0">Password <small class="text-danger">*Kosongkan jika tidak
                            dirubah</small></label>
                    <input type="password" class="form-control" name="password">
                    <small class="text-danger password"></small>
                </div>

                <div class="form-group">
                    <label class="text-muted m-0">Confirmasi Password <small class="text-danger">*Kosongkan jika tidak
                            dirubah</small></label>
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
