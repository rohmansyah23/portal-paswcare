<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Tanya extends CI_Controller {

   var $table = 'tanya';
   var $id = 'id_tanya';
   var $tableJoin = '';
   var $column_order = ['','nama', 'hewan','judul_pertanyaan','pertanyaan', 'nama_dokter', 'tanggapan'];
   var $column_search = ['nama', 'hewan','judul_pertanyaan','pertanyaan', 'nama_dokter', 'tanggapan'];

   public function __construct()
   {
      parent::__construct();
      $this->load->model('my_model', 'my');
      $this->my->init($this);
   }

   public function ajax_list()
   {
      $list = $this->my->get_datatables();
      $data = [];
      $no = $this->input->post('start');

      foreach ($list as $li) {
         $row = [];
         $row[] = ++$no;
         $row[] = $li->nama;
         $row[] = $li->hewan;
         $row[] = $li->judul_pertanyaan;
         $row[] = $li->pertanyaan;
         $row[] = $li->nama_dokter;
         $row[] = $li->tanggapan;
         $row[] = '
         <a class="btn btn-sm btn-warning text-white" href="#" title="Edit" onclick="edit_tanya(\'' . $li->id_tanya . '\')">
         <i class="fa fa-pencil-alt"></i> Jawab
         </a>
         <a class="btn btn-sm btn-danger mt-2" href="#" title="Delete" onclick="delete_tanya(\'' . $li->id_tanya . '\')">
         <i class="fa fa-trash"></i> Hapus 
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
      $data = $this->my->get_by_id($this->input->post('id_tanya', true));
      echo json_encode($data);
   }

   public function action()
   {
      $this->form_validation->set_rules('nama','Tanya','trim|required');

      if($this->form_validation->run() != false){
         $data = [
            'nama'      => $this->input->post('nama', true),
            'hewan'     => $this->input->post('hewan', true),
            'judul_pertanyaan'     => $this->input->post('judul_pertanyaan', true),
            'pertanyaan'=> $this->input->post('pertanyaan', true),
            'nama_dokter' => $this->input->post('nama_dokter', true),
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
