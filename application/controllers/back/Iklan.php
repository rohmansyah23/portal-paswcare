<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Iklan extends CI_Controller {

    var $table = 'iklan';
    var $id = 'id';
    var $tableJoin = '';
    var $column_search = ['link', 'status'];

    public function __construct()
    {
        parent::__construct();
        $this->load->model('my_model', 'my');
        $this->my->init($this);
        $this->load->model('iklan_model', 'iklan');
        $this->load->library('form_validation'); 
    }

    public function ajax_list()
    {
        $list = $this->my->get_datatables();
        $data = [];
        $no = $_POST['start'];

        foreach($list as $li){
            $row = [];
            $row[] = ++$no;

            if($li->image){
                $row[] = '<a href="' . base_url('images/iklan/' . $li->image) . '" target="_blank"><img src="'.base_url('images/iklan/' . $li->image) . '" class="img-responsive" style="max-height:250px; max-width:650px;"/></a>';
            }else{
                $row[] = '(No photo)';
            }

            $row[] = $li->link;
            $row[] = $li->status;

            $row[] = '<a class="btn btn-sm btn-warning text-white" href="#" title="Edit" onclick="edit_iklan(\'' . $li->id . '\')">
                        <i class="fa fa-pencil-alt mr-1"></i> Edit
                    </a>';
            $data[] = $row;
        }

        $output = [
            'draw'            => $_POST['draw'],
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
        $this->form_validation->set_rules('link', 'Link', 'required');
        $this->form_validation->set_rules('status', 'Status', 'required');

        if($this->form_validation->run() !== FALSE){
            $data = [
                'link' => $this->input->post('link', true),
                'status' => $this->input->post('status', true),
            ];

            // Handle file upload
            if(!empty($_FILES['image']['name'])){
                $upload = $this->iklan->uploadImage();

                // Delete old image if exists
                $iklan = $this->my->get_by_id($this->input->post('id', true));
                if(file_exists('images/iklan/' . $iklan->image) && $iklan->image){
                    unlink('images/iklan/' . $iklan->image);
                }

                $data['image'] = $upload;
            }

            // Handle remove photo
        if ($this->input->post('remove_photo')) {
            if (file_exists('images/posting/' . $this->input->post('remove_photo')) && $this->input->post('remove_photo')) {
                $this->banner->deleteImage($this->input->post('remove_photo'));
            }

            $data['image'] = ''; 
        }

            $this->my->update(['id' => $this->input->post('id', true)], $data);
            $status = true;

            echo json_encode(["status" => $status]);
        } else {
            // Form validation failed
            $status = false;
            echo json_encode(["status" => $status, "errors" => validation_errors()]);
        }
    }

}
