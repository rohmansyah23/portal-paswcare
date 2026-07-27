<script type="text/javascript">

   let tableIklan;
   let base_url = '<?= base_url();?>';

   // Show Table
   $(document).ready(function(){
      tableIklan = $('#tableIklan').DataTable({
         processing: true,
         serverSide: true,
         order: [],
         ajax: {
            'url': "<?= base_url('back/iklan/ajax_list') ?>",
            'type': "POST"
         },
         columnDefs: [
            { 
               'targets': [ 0, 1, 2, 3, 4 ], 
               'orderable': false, 
            },
         ],
      });
   });

   // Reload Button
   function reload_table(){
      tableIklan.ajax.reload(null, false);
   }

   // Save Button Modal
   function save(){
      $('#btn_save').text('Saving...');
      $('#btn_save').attr('disabled', true);
      
      var formData = new FormData($('#form')[0]);

      $.ajax({
         url: '<?= base_url('back/iklan/action') ?>',
         type: 'post',
         data: formData,
         contentType: false,
         processData: false,
         dataType: 'json',
         success: function(data){
            if(data.status){
               $('#modalIklan').modal('hide');
               Swal.fire({
                  icon: 'success',
                  title: 'Success',
                  showConfirmButton: true
               });
               tableIklan.draw();
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
            $('#modalIklan').modal('hide');
            $('#btn_save').text('Simpan');
            $('#btn_save').attr('disabled', false);
         }
      }); 
   }

   //Edit  
   function edit_iklan(id) {
    $.ajax({
        url: '<?= base_url('back/iklan/get_data/') ?>',
        data: { id: id },
        type: 'post',
        dataType: 'json',
        success: function(data) {
            console.log(data);
            $('[name="id"]').val(data.id);
            $('[name="link"]').val(data.link);
            $('[name="status"]').val(data.status);

            $('.modal-title').text('Edit Iklan');
            $('#photo-preview').show();
            $('#modalIklan').modal('show');

            if (data.image) {
                $('#label-photo').text('Change Photo');

                $('#photo-preview div').html(`
                    <img src="${base_url}/images/iklan/${data.image}" class="img-responsive" style="max-height:150px; max-width:550px;">
                    <br><br> 
                    <input type="checkbox" name="remove_photo" value="${data.image}"/> Delete Photo`); 
            } else {
                $('#photo-preview div').html('(No photo)');
            }
        }
    });
}



</script>