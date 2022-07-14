<form action="{{ url('store_produk') }}" method="POST" id="store_produk">
    @csrf
    <div class="modal-header elevation-1 d-flex justify-content-center py-2">
        <h4><strong>Tambah Produk</strong></h4>
    </div>

    <div class="modal-body elevation-1">
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="text-muted m-0">Kode Produk</label>
                    <input type="text" class="form-control" name="kode_produk">
                    <small class="text-danger kode_produk"></small>
                </div>

                <div class="form-group">
                    <label class="text-muted m-0">Nama Produk</label>
                    <input type="text" class="form-control" name="nama_produk">
                    <small class="text-danger nama_produk"></small>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="submit" class="btn btn-primary btn-block">Simpan</button>
        <button type="button" class="btn btn-danger btn-block" data-dismiss="modal">Kembali</button>
    </div>
</form>
