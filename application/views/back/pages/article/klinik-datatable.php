<script type="text/javascript">

   let tableKlinik;
   let base_url = '<?= base_url();?>';

// Show Table
   $(document).ready(function(){

      tableKlinik = $('#tableKlinik').DataTable({
         processing: true,
         serverSide: true,
         order: [],
         ajax: {
            'url': "<?= base_url('back/klinik/ajax_list') ?>",
            'type': "POST"
         },
         columnDefs: [
         { 
            'targets': [ 0, -1 ], 
            'orderable': false, 
         },
         { 'width': '5px', 'targets': 6 }
         ],
      });
   });

   function reload_table(){
      tableKlinik.ajax.reload(null, false);
   }

   function save(){
      $('#btn_save').text('Saving...');
      $('#btn_save').attr('disabled', true);

      var formData = new FormData($('#form')[0]);

      $.ajax({
         url: '<?= base_url('back/klinik/action') ?>',
         type: 'post',
         data: formData,
         contentType: false,
         processData: false,
         dataType: 'json',
         success: function(data){
            if(data.status){
               $('#modalKlinik').modal('hide');
               Swal.fire({
                  icon: 'success',
                  title: 'Success',
                  showConfirmButton: true
               });
               tableKlinik.draw();
            }
            $('#btn_save').text('Simpan');
            $('#btn_save').attr('disabled', false);
         },  
         error: function(){
            Swal.fire({
               icon: 'error',
               title: 'Oops...',
               text: 'Terjadi Suatu Kesalahan!',
               showConfirmButton: true
            });
            $('#modalKlinik').modal('hide');
            $('#btn_save').text('Simpan');
            $('#btn_save').attr('disabled', false);
         }
      }); 
   }

// Add Menu
   function add_klinik(){
      $('#form')[0].reset();
      $('.modal-title').text('Tambah Klinik');
      $('#modalKlinik').modal('show');
   } 

// Edit  
   function edit_klinik(id_klinik){
      $.ajax({
         url : '<?= base_url('back/klinik/get_data/') ?>/',
         data: {id_klinik: id_klinik},
         type: 'post',
         dataType: 'json',
         success: function(data){
            $('[name="id_klinik"]').val(data.id_klinik);
            $('[name="wilayah"]').val(data.wilayah);
            $('[name="nama"]').val(data.nama);
            $('[name="alamat"]').val(data.alamat);
            $('[name="jam_buka"]').val(data.jam_buka);
            $('[name="nomor"]').val(data.nomor);
            $('[name="maps"]').val(data.maps);

            $('.modal-title').text('Edit Klinik');
            $('#modalKlinik').modal('show');            
         },
      });
   }


// Delete Menu
   function delete_klinik(id_klinik){
      Swal.fire({
         title: 'Apakah anda yakin?',
         icon: 'warning',
         showCancelButton: true,
         confirmButtonColor: '#3085d6',
         cancelButtonColor: '#d33',
         confirmButtonText: 'Hapus!'
      }).then((result) => {
         if (result.value) {
            $.ajax({
               type: 'post',
               dataType: 'json',
               url: '<?= base_url('back/klinik/delete'); ?>',
               data: {
                  id_klinik: id_klinik
               },
               success: function(data){
                  if(data.status){
                     Swal.fire({
                        icon: 'success',
                        title: 'Success',
                        showConfirmButton: true
                     });
                     tableKlinik.row( $(this).parents('tr') ).remove().draw();
                     $('#modalKlinik').modal('hide');
                     tableKlinik.draw();
                  }
               },
               error: function(){
                  $('#modalKlinik').modal('hide');
                  Swal.fire({
                     icon: 'error',
                     title: 'Oops...',
                     text: 'Terjadi Suatu Kesalahan!',
                     showConfirmButton: true
                  });
               }
            });
         }
      });
   }

</script>
