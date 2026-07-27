<script type="text/javascript">

   let tableTanya;
   let base_url = '<?= base_url();?>';

// Show Table
   $(document).ready(function(){

      tableTanya = $('#tableTanya').DataTable({
         processing: true,
         serverSide: true,
         order: [],
         ajax: {
            'url': "<?= base_url('back/tanya/ajax_list') ?>",
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

// Reload Table
   function reload_table(){
      tableTanya.ajax.reload(null, false);
   }

// Save Button Modal
   function save(){
      $('#btn_save').text('Saving...');
      $('#btn_save').attr('disabled', true);

      var formData = new FormData($('#form')[0]);

      $.ajax({
         url: '<?= base_url('back/tanya/action') ?>',
         type: 'post',
         data: formData,
         contentType: false,
         processData: false,
         dataType: 'json',
         success: function(data){
            if(data.status){
               $('#modalTanya').modal('hide');
               Swal.fire({
                  icon: 'sukes',
                  title: 'Sukes, Tanggapan Anda Berhasil Terkirim',
                  showConfirmButton: true
               });
               tableTanya.draw();
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
            $('#modalTanya').modal('hide');
            $('#btn_save').text('Simpan');
            $('#btn_save').attr('disabled', false);
         }
      }); 
   }

// Add Menu
   function add_tanya(){
      $('#form')[0].reset();
      $('.modal-title').text('Tambah Tanya');
      $('#modalTanya').modal('show');
   } 

//Edit  
   function edit_tanya(id_tanya){
      $.ajax({
         url : '<?= base_url('back/tanya/get_data/') ?>/',
         data: {id_tanya: id_tanya},
         type: 'post',
         dataType: 'json',
         success: function(data){
            $('[name="id_tanya"]').val(data.id_tanya);
            $('[name="nama"]').val(data.nama);
            $('[name="hewan"]').val(data.hewan);
            $('[name="judul_pertanyaan"]').val(data.judul_pertanyaan);
            $('[name="pertanyaan"]').val(data.pertanyaan);
            var nama_dokter_value = data.nama_dokter !== '' ? data.nama_dokter : '<?= htmlspecialchars($user['nama']); ?>';
            $('[name="nama_dokter"]').val(nama_dokter_value);

            $('[name="tanggapan"]').val(data.tanggapan);

            $('.modal-title').text('Jawab Pertanyaan');
            $('#modalTanya').modal('show');            
         },
      });
   }

// Delete Menu
   function delete_tanya(id_tanya){
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
               url: '<?= base_url('back/tanya/delete'); ?>',
               data: {
                  id_tanya: id_tanya
               },
               success: function(data){
                  if(data.status){
                     Swal.fire({
                        icon: 'success',
                        title: 'Success',
                        showConfirmButton: true
                     });
                     tableTanya.row( $(this).parents('tr') ).remove().draw();
                     $('#modalTanya').modal('hide');
                     tableTanya.draw();
                  }
               },
               error: function(){
                  $('#modalTanya').modal('hide');
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