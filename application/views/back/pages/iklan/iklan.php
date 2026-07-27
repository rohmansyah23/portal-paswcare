<div class="container">
   <div class="row">
      <div class="col">
         <h3 class="page-header"><?= $title ?></h3>
      </div>
   </div>

   <div class="row mt-3">
      <div class="col">
         <button class="btn btn-outline-secondary btn-sm" onclick="reload_table()">
            <i class="fas fa-sync-alt"></i> Reload
         </button>
      </div>
   </div>

  <br>

   <div class="table-responsive">
      <table id="tableIklan" class="table table-striped table-bordered"  cellspacing="0" width="100%">
         <thead>
         <tr>
            <th>#</th>
            <th>Gambar</th>
            <th>Link</th>
            <th>Status</th>
            <th>Action</th>
         </tr>
         </thead>
         <tbody>
         
         </tbody>
      </table>
   </div>

</div>

<!-- Modal -->
<div class="modal fade" id="modalIklan" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="modal-title">Edit Iklan</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       <form action="#" id="form" class="form-horizontal" enctype="multipart/form-data">
    <input type="hidden" name="id" id="id">

    <div class="form-group row" id="photo-preview">
        <label class="col-sm-3 col-form-label">Photo</label>
        <div class="col-sm-9">
            (No photo)
        </div>
    </div>

    <div class="form-group row">
        <label for="image" class="col-sm-3 col-form-label" id="label-photo">Upload Photo</label>
        <div class="col-sm-9">
            <input type="file" id="image" name="image" accept="image/*">
            <!-- Placeholder for file input -->
            <small class="form-text text-muted">Select an image file (JPEG, PNG, etc.)</small>
        </div>
    </div>

    <div class="form-group row">
        <label for="link" class="col-sm-3 col-form-label">Link Tujuan</label>
        <div class="col-sm-9">
            <input type="text" class="form-control" id="link" name="link">
        </div>
    </div>

    <div class="form-group row">
    <label for="status" class="col-sm-3 col-form-label">Status</label>
    <div class="col-sm-9">
        <select class="form-control" id="status" name="status">
            <option value="aktif">Aktif</option>
            <option value="tidak">Tidak</option>
        </select>
    </div>
</div>

</form>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Tutup</button>
        <button type="button" class="btn btn-sm btn-primary" onclick="save()" id="btn_save">Simpan</button>
      </div>
    </div>
  </div>
</div>
