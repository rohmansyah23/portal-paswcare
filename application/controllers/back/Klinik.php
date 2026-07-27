<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Klinik extends CI_Controller {

   var $table = 'klinik';
   var $id = 'id_klinik';
   var $tableJoin = '';
   var $column_order = ['','wilayah', 'nama','alamat','jam_buka', 'nomor', 'maps'];
   var $column_search = ['wilayah', 'nama','alamat','jam_buka', 'nomor', 'maps'];

   public function __construct()
   {
      parent::__construct();
      $this->load->model('my_model', 'my');
      $this->my->init($this);
      $this->load->helper('url');
   }

   public function ajax_list()
   {
      $list = $this->my->get_datatables();
      $data = [];
      $no = $this->input->post('start');

      foreach ($list as $li) {
         $row = [];
         $row[] = ++$no;
         $row[] = $li->wilayah;
         $row[] = $li->nama;
         $row[] = $li->alamat;
         $row[] = $li->jam_buka;
         $row[] = $li->nomor;
         $row[] = $li->maps;
         $row[] = '
         <a class="btn btn-sm btn-warning text-white" href="#" title="Edit" onclick="edit_klinik(\'' . $li->id_klinik . '\')">
         <i class="fa fa-pencil-alt mr-1"></i> Edit
         </a>
         <a class="btn btn-sm btn-danger" href="#" title="Delete" onclick="delete_klinik(\'' . $li->id_klinik . '\')">
         <i class="fa fa-trash mr-1"></i> Delete
         </a>';

         $data[] = $row;
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
      $data = $this->my->get_by_id($this->input->post('id_klinik', true));
      echo json_encode($data);
   }

   public function action()
{
    $this->form_validation->set_rules('nama','Klinik','trim|required');

    if($this->form_validation->run() != false){
        $data = [
            'wilayah' => $this->input->post('wilayah', true),
            'nama' => $this->input->post('nama', true),
            'alamat' => $this->input->post('alamat', true),
            'jam_buka' => $this->input->post('jam_buka', true),
            'nomor' => $this->input->post('nomor', true),
            'maps' => $this->input->post('maps', true)
        ];

        $id = $this->input->post('id_klinik', true);

        if(!empty($id)){ // Jika ID klinik tersedia, maka ini adalah proses update
            $this->my->update(['id_klinik' => $id], $data);
            $status = true;
        } else { // Jika ID klinik tidak tersedia, maka ini adalah proses insert baru
            // Tidak perlu menambahkan ID baru di sini karena proses insert akan menangani ID secara otomatis
            $this->my->save($data);
            $status = true;
        }

        echo json_encode(["status" => $status]);
    }
}


   public function delete(){
      $this->my->delete($this->input->post('id_klinik', true));
      echo json_encode(["status" => TRUE]);
   }

}