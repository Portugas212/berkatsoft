<form action="{{ url('update_order/' . $order->id) }}" method="POST" id="update_order">
    @csrf
    @method('PUT')
    <div class="modal-header elevation-1 d-flex justify-content-center py-2">
        <h4><strong>Tambah Sales Order</strong></h4>
    </div>

    <div class="modal-body elevation-1">
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label class="text-muted m-0">Nama Costumer</label>
                    <select class="form-control" name="id_user" id="id_user">
                        <option selected value="{{ $order->user->id }}">{{ $order->user->name }}</option>
                    </select>
                    <small class="text-danger name"></small>
                </div>

                <div class="form-group">
                    <label class="text-muted m-0">Nama Produk</label>
                    <select class="form-control" name="id_produk" id="id_produk">
                        <option selected value="{{ $order->produk->id }}">{{ $order->produk->nama_produk }}</option>
                    </select>
                    <small class="text-danger id_produk"></small>
                </div>
            </div>
        </div>
    </div>

    <div class="modal-footer">
        <button type="submit" class="btn btn-primary btn-block">Simpan</button>
        <button type="button" class="btn btn-danger btn-block" data-dismiss="modal">Kembali</button>
    </div>
</form>

<script>
    $(document).ready(function() {
        $('#id_user').select2({
            theme: "bootstrap4",
            dropdownParent: $("#myModal"),
            placeholder: 'Pilih Costumer',
            ajax: {
                url: '{{ url('getCostumer') }}',
                dataType: 'json',
                delay: 250,
                data: function(params) {
                    return {
                        search: params.term
                    }
                },
                processResults: function(response) {
                    return {
                        results: response
                    };
                },
                cache: true
            }
        });

        $('#id_produk').select2({
            theme: "bootstrap4",
            dropdownParent: $("#myModal"),
            placeholder: 'Pilih Produk',
            ajax: {
                url: '{{ url('getProduk') }}',
                dataType: 'json',
                delay: 250,
                data: function(params) {
                    return {
                        search: params.term
                    }
                },
                processResults: function(response) {
                    return {
                        results: response
                    };
                },
                cache: true
            }
        });
    });
</script>
