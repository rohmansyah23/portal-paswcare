<div class="container">
   <div class="row">
      <div class="col">
         <h3 class="page-header">Manajemen Klinik</h3>
      </div>
   </div>

   <div class="row mt-3">
      <div class="col">
         <button type="buton" class="btn btn-success btn-sm" onclick="add_klinik()">
            <i class="fas fa-plus"></i> Tambah
         </button>

         <button class="btn btn-outline-secondary btn-sm" onclick="reload_table()">
               <i class="fas fa-sync-alt"></i> Reload
         </button>
      </div>
   </div>
   <br>
   <div class="table-responsive">
      <table id="tableKlinik" class="table table-striped table-bordered"  cellspacing="" width="100%">
         <thead>
         <tr>
            <th>#</th>
            <th>Wilayah</th>
            <th>Nama</th>
            <th>Alamat</th>
            <th>Jam buka</th>
            <th>Nomor</th>
            <th>Maps</th>
            <th>Action</th>
         </tr>
         </thead>
         <tbody>
         
         </tbody>
      </table>
   </div>

</div>

<!-- Modal -->
<div class="modal fade" id="modalKlinik" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-md" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="modal-title">Edit Klinik</h5>
         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
         </button>
         </div>
         <div class="modal-body">
            <form action="#" class="form-horizontal" id="form">
            
               <input type="hidden" name="id_klinik" id="id_klinik">

               <div class="form-group row">
                  <label for="wilayah" class="col-sm-3 col-form-label">Wilayah</label>
                  <div class="col-sm-9">
                  <input type="text" class="form-control" id="wilayah" name="wilayah">
                  </div>
               </div>

               <div class="form-group row">
                  <label for="nama" class="col-sm-3 col-form-label">Nama Klinik</label>
                  <div class="col-sm-9">
                  <input type="text" class="form-control" id="nama" name="nama">
                  </div>
               </div> 

               <div class="form-group row">
                  <label for="alamat" class="col-sm-3 col-form-label">Alamat</label>
                  <div class="col-sm-9">
                  <input type="text" class="form-control" id="alamat" name="alamat">
                  </div>
               </div>

               <div class="form-group row">
                  <label for="jam_buka" class="col-sm-3 col-form-label">Jam Buka</label>
                  <div class="col-sm-9">
                  <input type="text" class="form-control" id="jam_buka" name="jam_buka">
                  </div>
               </div>

               <div class="form-group row">
                  <label for="nomor" class="col-sm-3 col-form-label">Nomor</label>
                  <div class="col-sm-9">
                  <input type="text" class="form-control" id="nomor" name="nomor">
                  </div>
               </div>

               <div class="form-group row">
                  <label for="maps" class="col-sm-3 col-form-label">Maps</label>
                  <div class="col-sm-9">
                  <input type="text" class="form-control" id="maps" name="maps">
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
