<div class="container">
   <div class="row">
      <div class="col">
         <h3 class="page-header">Member Aktif</h3>
      </div>
   </div>

   <div class="row mt-3">
      <div class="col">
         <button type="button" class="btn btn-success btn-sm" onclick="add_member()">
            <i class="fas fa-plus"></i> Tambah
         </button>

         <button type="button" class="btn btn-outline-secondary btn-sm" onclick="reload_table()">
            <i class="fas fa-sync-alt"></i> Reload
         </button>
      </div>
   </div>
   <br>
   <div class="table-responsive">
      <table id="tableMember" class="table table-striped table-bordered" cellspacing="0" width="100%">
         <thead>
            <tr>
               <th>#</th>
               <th>Nama</th>
               <th>Email</th>
               <th>Alamat</th>
               <th>Role ID</th>
               <th>Aktif</th>
               <th>Password</th>
               <th>Tanggal Input</th>
               <th>Action</th>
            </tr>
         </thead>
         <tbody>
         </tbody>
      </table>
   </div>

</div>

<!-- Modal -->
<div class="modal fade" id="modalMember" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-md" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="modal-title">Edit Member</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
         </div>
         <div class="modal-body">
            <form action="#" class="form-horizontal" id="form">

               <input type="hidden" name="id" id="id">

               <div class="form-group row">
                  <label for="nama" class="col-sm-3 col-form-label">Nama Member</label>
                  <div class="col-sm-9">
                     <input type="text" class="form-control" id="nama" name="nama">
                  </div>
               </div>

               <div class="form-group row">
                  <label for="email" class="col-sm-3 col-form-label">Email</label>
                  <div class="col-sm-9">
                     <input type="text" class="form-control" id="email" name="email">
                  </div>
               </div>

               <div class="form-group row">
                  <label for="password" class="col-sm-3 col-form-label">Password</label>
                  <div class="col-sm-9">
                     <input type="password" class="form-control" id="password" name="password">
                     <!-- Hidden input for passing the original password value -->
                     <input type="hidden" name="original_password" value="nilai_password_awal_di_sini">
                  </div>
               </div>

               <div class="form-group row">
                  <label for="alamat" class="col-sm-3 col-form-label">Alamat</label>
                  <div class="col-sm-9">
                     <input type="text" class="form-control" id="alamat" name="alamat">
                  </div>
               </div>

               <div class="form-group row">
                  <label for="role_id" class="col-sm-3 col-form-label">Role ID</label>
                  <div class="col-sm-9">
                     <input type="text" class="form-control" id="role_id" name="role_id">
                  </div>
               </div>

               <div class="form-group row">
                  <label for="is_active" class="col-sm-3 col-form-label">Is Active</label>
                  <div class="col-sm-9">
                     <input type="text" class="form-control" id="is_active" name="is_active">
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
