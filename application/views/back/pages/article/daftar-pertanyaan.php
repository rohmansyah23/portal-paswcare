<script type="text/javascript">

   let tableDaftar;
   const base_url = '<?= base_url();?>'; // Menggunakan const untuk variabel yang tidak berubah

   // Menunggu dokumen siap
   $(document).ready(function(){

      // Inisialisasi DataTable
      tableDaftar = $('#tableDaftar').DataTable({
         processing: true,
         serverSide: true,
         order: [],
         ajax: {
            url: "<?= base_url('back/daftar_tanya/ajax_list') ?>",
            "type": "POST"
         },
         "columns": [
            { "data": "0" },
            { "data": "1" },
            { "data": "2" },
            { "data": "3" },
            { "data": "4" },
            { "data": "5" }
         ],
         lengthMenu: [[1, 5, 25, -1], [1, 5, 25, "All"]],
         columnDefs: [
            { width: '0%', targets: 0 },
            { width: '6%', targets: 1 },
            { width: '0%', targets: 2 },
            { width: '0%', targets: 3 },
            { width: '9%', targets: 4 },
            { width: '11%', targets: 5 }
         ]
      });
   });

</script>
