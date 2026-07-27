<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
   
   public function __construct()
   {
      parent::__construct();
      cek_login();
      cek_user();

      $this->load->model('my_model', 'my', true);
      $this->load->model('menu_model', 'menu', true);
      $this->load->model('category_model', 'category', true);
      $this->load->model('iklan_model','iklan');
   }
   
   public function index()
   {
      $data['user'] = $this->my->cekData(['email' => $this->session->userdata('email')])->row_array();
      $data['anggota'] = $this->my->getUserLimit()->result_array();

      $data['title'] = 'Dashboard';
      $data['page'] = 'index';
      $data['total_posting'] = $this->my->countRows('posting');
      $data['total_category'] = $this->my->countRows('category');
      $data['total_klinik'] = $this->my->countRows('klinik');
      $data['total_tanya'] = $this->my->countRows('tanya');

      $data['total_member'] = $this->my->getUserWhereIn([2])->num_rows('user');

      $data['pageChart'] = '_chart';
      $this->load->view('back/layouts/app', $data);
   }

   public function identity()
   {  
      $data['user'] = $this->my->cekData(['email' => $this->session->userdata('email')])->row_array();
      $data['title'] = 'Identitas Web';
      $data['page'] = 'web/identity';
      $data['datatable'] = 'web/identity-datatable';
      $this->load->view('back/layouts/app', $data);
   }

   public function menu()
   {
      $data['user'] = $this->my->cekData(['email' => $this->session->userdata('email')])->row_array();
      $data['title'] = 'Menu';
      $data['page'] = 'menu/menu';
      $data['datatable'] = 'menu/menu-datatable';
      $this->load->view('back/layouts/app', $data);
   }

   public function submenu()
   {  
      $data['user'] = $this->my->cekData(['email' => $this->session->userdata('email')])->row_array();
      $data['title'] = 'Submenu';
      $data['page'] = 'menu/submenu';
      $data['datatable'] = 'menu/submenu-datatable';
      $data['menu'] = $this->menu->getMenu();
      $this->load->view('back/layouts/app', $data);
   }

   public function category()
   {
      $data['user'] = $this->my->cekData(['email' => $this->session->userdata('email')])->row_array();
      $data['title'] = 'Kategori';
      $data['page'] = 'article/category';
      $data['datatable'] = 'article/category-datatable';
      $this->load->view('back/layouts/app', $data);
   }

   public function posting()
   {
      $data['user'] = $this->my->cekData(['email' => $this->session->userdata('email')])->row_array();
      $data['title'] = 'Posting';
      $data['page'] = 'article/posting';
      $data['datatable'] = 'article/posting-datatable';
      $this->load->view('back/layouts/app', $data);
   }

   public function banner()
   {
      $data['user'] = $this->my->cekData(['email' => $this->session->userdata('email')])->row_array();
      $data['title'] = 'Banner';
      $data['page'] = 'media/banner';
      $data['datatable'] = 'media/banner-datatable';
      $this->load->view('back/layouts/app', $data);
   }
   
   public function tanya()
   {
      $data['user'] = $this->my->cekData(['email' => $this->session->userdata('email')])->row_array();
      $data['title'] = 'Pertanyaan';
      $data['page'] = 'article/tanya';
      $data['datatable'] = 'article/tanya-datatable';
      $this->load->view('back/layouts/app', $data);
   }

   public function Klinik()
   {
      $data['user'] = $this->my->cekData(['email' => $this->session->userdata('email')])->row_array();
      $data['title'] = 'Daftar Klinik';
      $data['page'] = 'article/klinik';
      $data['datatable'] = 'article/klinik-datatable';
      $this->load->view('back/layouts/app', $data);
   }

   public function member()
   {
      $data['user'] = $this->my->cekData(['email' => $this->session->userdata('email')])->row_array();
      $data['title'] = 'Member Aktif';
      $data['page'] = 'member/daftar-member';
      $data['datatable'] = 'member/daftar-member-datatable';
      $this->load->view('back/layouts/app', $data);
   }

   public function iklan()
{
      $data['user'] = $this->my->cekData(['email' => $this->session->userdata('email')])->row_array();
      $data['title'] = 'Manajemen Iklan';
      $data['page'] = 'iklan/iklan';
      $data['datatable'] = 'iklan/iklan-datatable';
      $this->load->view('back/layouts/app', $data);
}


}

