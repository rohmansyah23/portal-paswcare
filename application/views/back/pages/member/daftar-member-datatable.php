<script type="text/javascript">

   let tableMember;
   let base_url = '<?= base_url();?>';

// Show Table
   $(document).ready(function(){

      tableMember = $('#tableMember').DataTable({
         processing: true,
         serverSide: true,
         order: [],
         ajax: {
            'url': "<?= base_url('back/member/ajax_list') ?>",
            'type': "POST"
         },
         columnDefs: [
         { 
            'targets': [ 0, -1 ], 
            'orderable': false, 
         },
         { 'width': '5px', 'targets': 7 }
         ],
      });
   });

   function reload_table(){
      tableMember.ajax.reload(null, false);
   }

   function save(){
      $('#btn_save').text('Saving...');
      $('#btn_save').attr('disabled', true);

      var formData = new FormData($('#form')[0]);

      $.ajax({
         url: '<?= base_url('back/member/action') ?>',
         type: 'post',
         data: formData,
         contentType: false,
         processData: false,
         dataType: 'json',
         success: function(data){
            if(data.status){
               $('#modalMember').modal('hide');
               Swal.fire({
                  icon: 'success',
                  title: 'Success',
                  showConfirmButton: true
               });
               tableMember.draw();
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
            $('#modalMember').modal('hide');
            $('#btn_save').text('Simpan');
            $('#btn_save').attr('disabled', false);
         }
      }); 
   }

// Add Menu
   function add_member(){
      $('#form')[0].reset();
      $('.modal-title').text('Tambah Member');
      $('#modalMember').modal('show');
   } 

// Edit  
   function edit_member(id){
      $.ajax({
         url : '<?= base_url('back/member/get_data/') ?>/',
         data: {id: id},
         type: 'post',
         dataType: 'json',
         success: function(data){
            $('[name="id"]').val(data.id);
            $('[name="nama"]').val(data.nama);
            $('[name="email"]').val(data.email);
            $('[name="password"]').val(data.password);
            $('[name="alamat"]').val(data.alamat);
            $('[name="role_id"]').val(data.role_id);
            $('[name="is_active"]').val(data.is_active);
            $('[name="tanggal_input"]').val(data.tanggal_input);

            $('.modal-title').text('Edit Member');
            $('#modalMember').modal('show');            
         },
      });
   }


// Delete Menu
   function delete_member(id){
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
               url: '<?= base_url('back/member/delete'); ?>',
               data: {
                  id: id
               },
               success: function(data){
                  if(data.status){
                     Swal.fire({
                        icon: 'success',
                        title: 'Success',
                        showConfirmButton: true
                     });
                     tableMember.row( $(this).parents('tr') ).remove().draw();
                     $('#modalMember').modal('hide');
                     tableMember.draw();
                  }
               },
               error: function(){
                  $('#modalMember').modal('hide');
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
