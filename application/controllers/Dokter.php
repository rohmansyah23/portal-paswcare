<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Dokter extends CI_Controller {
   
   public function __construct()
   {
      parent::__construct();
      cek_login();
      cek_dokter();

      $this->load->model('my_model', 'my', true);
      $this->load->model('menu_model', 'menu', true);
      $this->load->model('category_model', 'category', true);
      $this->load->model('komunitas_model', 'komunitas');
   }
   
   public function index()
   {
      $data['user'] = $this->my->cekData(['email' => $this->session->userdata('email')])->row_array();
      $data['anggota'] = $this->my->getUserLimit()->result_array();

      $data['title'] = 'Dashboard';
      $data['page'] = 'index';

      $data['total_tanya'] = $this->my->countRows('tanya');

      $data['pageChart'] = '_chart';
      $this->load->view('dokter/layouts/app', $data);
   }
   
   public function tanya()
   {
      $data['user'] = $this->my->cekData(['email' => $this->session->userdata('email')])->row_array();

      $data['title'] = 'Pertanyaan Masuk';
      $data['page'] = 'tanya';
      $data['datatable'] = 'tanya-datatable';
      $this->load->view('dokter/layouts/app', $data);
   }

}

