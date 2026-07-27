<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Daftar_tanya extends CI_Controller {

   var $table = 'tanya';
   var $id = 'id_tanya';
   var $tableJoin = '';
   var $column_order = ['','nama', 'email','hewan','pertanyaan', 'tanggapan'];
   var $column_search = ['nama', 'email','hewan','pertanyaan', 'tanggapan'];

   public function __construct()
   {
      parent::__construct();
      $this->load->model('my_model', 'my');
      $this->my->init($this);
   }

   public function ajax_list() {
    $list = $this->my->get_datatables();
    $data = [];
    $startNo = $this->input->post('start'); // Menggunakan nama variabel yang lebih deskriptif

    foreach ($list as $index => $item) { // Menggunakan nama variabel yang lebih deskriptif
        $row = [
            ++$startNo, // Nomor urutan
            $item->nama,
            $item->email,
            $item->hewan,
            $item->pertanyaan,
            $item->tanggapan
        ];

        $data[] = $row; // Menambahkan baris data ke array data
    }

    $output = [
        'draw'            => $this->input->post('draw'),
        'recordsTotal'    => $this->my->count_all(),
        'recordsFiltered' => $this->my->count_filtered(),
        'data'            => $data
    ];

    echo json_encode($output);
}


   public function get_data()
   {
      $data = $this->my->get_by_id($this->input->post('id_tanya', true));
      echo json_encode($data);
   }

   public function action()
   {
      $this->form_validation->set_rules('nama','Daftar_tanya','trim|required');

      if($this->form_validation->run() != false){
         $data = [
            'nama'      => $this->input->post('nama', true),
            'email'     => $this->input->post('email', true),
            'hewan'     => $this->input->post('hewan', true),
            'pertanyaan'=> $this->input->post('pertanyaan', true),
            'tanggapan' => $this->input->post('tanggapan', true)
         ];

         $id = $this->input->post('id_tanya', true);

// For Update
         if(!empty($id)){
            $this->my->update(['id_tanya' => $id], $data);
            $status = true;
         }
// For Insert
         else{
            $this->my->save($data);
            $status = true;
         }

         echo json_encode(["status" => $status]);
      }
   }

   public function delete(){
      $this->my->delete($this->input->post('id_tanya', true));
      echo json_encode(["status" => TRUE]);
   }

}

/* End of file Tanya.php */
