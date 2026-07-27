<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Member extends CI_Controller {

   var $table = 'user';
   var $id = 'id';
   var $tableJoin = '';
   var $column_order = ['','nama', 'email','password','role_id', 'is_active', 'alamat', 'tanggal_input'];
   var $column_search = ['nama', 'email','password','role_id', 'is_active', 'alamat', 'tanggal_input'];

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
         $row[] = $li->nama;
         $row[] = $li->email;
         $row[] = $li->alamat;
         $row[] = $li->role_id;
         $row[] = $li->is_active;
         $row[] = $li->password;
         $row[] = $li->tanggal_input;
         $row[] = '
         <a class="btn btn-sm btn-warning text-white" href="#" title="Edit" onclick="edit_member(\'' . $li->id . '\')">
         <i class="fa fa-pencil-alt mr-1"></i> Edit
         </a>
         <a class="btn btn-sm btn-danger" href="#" title="Delete" onclick="delete_member(\'' . $li->id . '\')">
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
      $data = $this->my->get_by_id($this->input->post('id', true));
      echo json_encode($data);
   }

   public function action()
{
    $this->form_validation->set_rules('nama','nama','trim|required');
    $this->form_validation->set_rules('password', 'password', 'trim|required|min_length[3]');

    if($this->form_validation->run() != false){
      $data = [
         'nama' => $this->input->post('nama', true),
         'alamat' => $this->input->post('alamat', true),
         'email' => $this->input->post('email', true),
         'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
         'role_id' => $this->input->post('role_id', true),
         'is_active' => $this->input->post('is_active', true),
         'tanggal_input' => time()
      ];


        $id = $this->input->post('id', true);

        if(!empty($id)){ 
            $this->my->update(['id' => $id], $data);
            $status = true;
        } else { 
            $this->my->save($data);
            $status = true;
        }

        echo json_encode(["status" => $status]);
    }
}


   public function delete(){
      $this->my->delete($this->input->post('id', true));
      echo json_encode(["status" => TRUE]);
   }

}