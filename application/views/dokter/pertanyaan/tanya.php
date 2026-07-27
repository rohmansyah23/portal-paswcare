<div class="container">
   <div class="row">
      <div class="col">
         <h3 class="page-header">Manajemen Tanya</h3>
      </div>
   </div>

   <div class="row mt-3">
      <div class="col">
         <button type="buton" class="btn btn-success btn-sm" onclick="add_tanya()">
            <i class="fas fa-plus"></i> Tambah
         </button>

         <button class="btn btn-outline-secondary btn-sm" onclick="reload_table()">
               <i class="fas fa-sync-alt"></i> Reload
         </button>
      </div>
   </div>


  <br>

   <div class="table-responsive">
      <table id="tableTanya" class="table table-striped table-bordered"  cellspacing="0" width="100%">
         <thead>
         <tr>
            <th>#</th>
            <th>Nama</th>
            <th>Hewan</th>
            <th>Judul Pertanyaan</th>
            <th>pertanyaan</th>
            <th>Nama Dokter</th>
            <th>tanggapan</th>
            <th>Action</th>
         </tr>
         </thead>
         <tbody>
         
         </tbody>
      </table>
   </div>

</div>

<!-- Modal -->
<div class="modal fade" id="modalTanya" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-md" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="modal-title">Berikan Tanggapan</h5>
         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
         </button>
         </div>
         <div class="modal-body">
            
            <form action="#" class="form-horizontal" id="form">
            
               <input type="hidden" name="id_tanya" id="id_tanya">

               <div class="form-group row">
                  <label for="nama" class="col-sm-3 col-form-label">Nama</label>
                  <div class="col-sm-9">
                  <input type="text" class="form-control" id="nama" name="nama" readonly>
                  </div>
               </div> 

               <div class="form-group row">
                  <label for="hewan" class="col-sm-3 col-form-label">Jenis Hewan</label>
                  <div class="col-sm-9">
                  <input type="text" class="form-control" id="hewan" name="hewan" readonly>
                  </div>
               </div>

               <div class="form-group row">
                  <label for="judul_pertanyaan" class="col-sm-3 col-form-label">Judul</label>
                  <div class="col-sm-9">
                  <input type="text" class="form-control" id="judul_pertanyaan" name="judul_pertanyaan" readonly>
                  </div>
               </div>

               <div class="form-group row">
                  <label for="pertanyaan" class="col-sm-3 col-form-label">Pertanyaan</label>
                  <div class="col-sm-9">
                     <textarea class="form-control" id="pertanyaan" name="pertanyaan" readonly></textarea>
                  </div>
               </div>

               <div class="form-group row">
                  <label for="nama_dokter" class="col-sm-3 col-form-label">Nama Dokter</label>
                  <div class="col-sm-9">
                  <input type="text" class="form-control" id="nama_dokter" name="nama_dokter" readonly>
                  </div>
               </div>

               <div class="form-group row">
                  <label for="tanggapan" class="col-sm-3 col-form-label">Tanggapan</label>
                  <div class="col-sm-9">
                     <textarea class="form-control" id="tanggapan" name="tanggapan"></textarea>
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
