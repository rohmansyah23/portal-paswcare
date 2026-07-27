<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Komunitas extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('my_model', 'my', true);
        $this->load->model('identity_model', 'identity');
        $this->load->model('posting_model', 'posting');
        $this->load->model('category_model', 'category');
        $this->load->model('komunitas_model', 'komunitas');
        $this->load->model('iklan_model','iklan');
        $this->load->library('pagination');
    }

    public function index($page = null) 
    {
        $data['favicon']     = $this->identity->getIdentity();
        $data['title']       = 'Forum Diskusi';
        $data['navbar']      = $this->category->getCategory();
        $data['category']    = $this->category->getCategory();
        $data['popular']     = $this->posting->getMostPopular();
        $data['trending']    = $this->posting->getThread();
        $data['lastNews']    = $this->posting->getLastNews();
        $data['komunitas']   = $this->komunitas->getAllPertanyaan($page);
        $data['sensor']      = $this->komunitas->sensor($page);
        $data['satuhuruf']   = $this->komunitas->satuhuruf($page);
        $data['satunomor']   = $this->komunitas->satunomor($page);
        $data['randomcolor']  = $this->komunitas->randomcolor($page);
        $data['validasi']    = $this->komunitas->validasi($page);
        $data['iklan1']       = $this->iklan->getIklanById(1);
        $data['iklan2']       = $this->iklan->getIklanById(2);

        $data['total_rows']  = $this->komunitas->countPertanyaan(); 
        $config['base_url']  = base_url('komunitas'); 
        $config['total_rows'] = $data['total_rows'];
        $config['per_page'] = 3; 
        $config['use_page_numbers'] = TRUE;

        $config['full_tag_open'] = '<ul class="pagination justify-content-center">';
        $config['full_tag_close'] = '</ul>';
        $config['attributes'] = ['class' => 'page-link text-danger'];
        $config['first_link'] = false;
        $config['last_link'] = false;
        $config['first_tag_open'] = '<li class="page-item">';
        $config['first_tag_close'] = '</li>';
        $config['prev_link'] = '&lt;';
        $config['prev_tag_open'] = '<li class="page-item">';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = '&gt;'; 
        $config['next_tag_open'] = '<li class="page-item">';
        $config['next_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li class="page-item">';
        $config['last_tag_close'] = '</li>'; 
        $config['cur_tag_open'] = '<li class="page-item danger"><a href="#" class="page-link text-white">';
        $config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';
        $config['num_tag_open'] = '<li class="page-item">';
        $config['num_tag_close'] = '</li>';

        $this->pagination->initialize($config);
        $data['pagination']  = $this->pagination->create_links();

        $data['video_game']  = $this->posting->getVideoGames();
        $data['page'] = 'komunitas';
        $this->load->view('front/layouts/app', $data);
    }

    public function search($page = null) 
    {
        $keyword = $this->input->post('keyword');
        $per_search = 3;

        $data['favicon']     = $this->identity->getIdentity();
        $data['title']       = 'search';
        $data['navbar']      = $this->category->getCategory();
        $data['category']    = $this->category->getCategory();
        $data['popular']     = $this->posting->getMostPopular();
        $data['trending']    = $this->posting->getThread();
        $data['lastNews']    = $this->posting->getLastNews();
        $data['iklan1']       = $this->iklan->getIklanById(1);
        $data['iklan2']       = $this->iklan->getIklanById(2);

        $data['komunitas']   = $this->komunitas->search($keyword, $page, $per_search);

        $data['sensor']      = $this->komunitas->sensor($page);
        $data['satuhuruf']   = $this->komunitas->satuhuruf($page);
        $data['satunomor']   = $this->komunitas->satunomor($page);
        $data['randomcolor'] = $this->komunitas->randomcolor($page);
        $data['validasi']    = $this->komunitas->validasi($page);

        $total_rows = $this->komunitas->countsearch($keyword); /*total cari berdasarkan keyword*/

        $config['total_rows'] = $total_rows;
        $config['base_url']   = base_url('komunitas/search');
        $config['per_page'] = $per_search; 
        $config['use_page_numbers'] = TRUE;
        $config['uri_segment'] = 3;
        $config['full_tag_open'] = '<ul class="pagination justify-content-center">';
        $config['full_tag_close'] = '</ul>';
        $config['attributes'] = ['class' => 'page-link text-danger'];
        $config['first_link'] = false;
        $config['last_link'] = false;
        $config['first_tag_open'] = '<li class="page-item">';
        $config['first_tag_close'] = '</li>';
        $config['prev_link'] = '&lt;';
        $config['prev_tag_open'] = '<li class="page-item">';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = '&gt;'; 
        $config['next_tag_open'] = '<li class="page-item">';
        $config['next_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li class="page-item">';
        $config['last_tag_close'] = '</li>'; 
        $config['cur_tag_open'] = '<li class="page-item danger"><a href="#" class="page-link text-white">';
        $config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';
        $config['num_tag_open'] = '<li class="page-item">';
        $config['num_tag_close'] = '</li>';

        $this->pagination->initialize($config);
        $data['pagination']  = $this->pagination->create_links();
        $data['video_game']  = $this->posting->getVideoGames();
        $data['page'] = 'komunitas';
        $this->load->view('front/layouts/app', $data);
    }

    public function lihat_pertanyaan($id_tanya) {
        $row = $this->komunitas->getPertanyaanById($id_tanya);

        if ($row) {
            $data['komunitas']   = $row;
            $data['title']       = $row->judul_pertanyaan;
            $data['favicon']     = $this->identity->getIdentity();
            $data['popular']     = $this->posting->getMostPopular();
            $data['trending']    = $this->posting->getThread();
            $data['category']    = $this->category->getCategory();
            $data['video_game']  = $this->posting->getVideoGames();

            $data['sensor']      = $this->komunitas->sensor($id_tanya);
            $data['satuhuruf']   = $this->komunitas->satuhuruf($id_tanya);
            $data['satunomor']   = $this->komunitas->satunomor($id_tanya);
            $data['validasi']    = $this->komunitas->validasi($id_tanya);
            $data['randomcolor'] = $this->komunitas->randomcolor($id_tanya);

            $data['page']        = 'tanya_detail';
            $this->load->view('front/layouts/app', $data);
        } else {
            redirect(base_url('home'));
        }
    }

    public function tanya()
    {
        cek_login_user();
        $user = $this->my->cekData(['email' => $this->session->userdata('email')])->row_array();

        $data['image'] = $user['image'];
        $data['nama'] = $user['nama'];
        $data['email'] = $user['email'];
        $data['alamat'] = $user['alamat'];
        $data['tanggal_input'] = $user['tanggal_input'];

        $data['title'] = 'Tanya Kami';
        $data['favicon']     = $this->identity->getIdentity();
        $data['featured']    = $this->posting->getFeatured();
        $data['choice']      = $this->posting->getChoice();
        $data['popular']     = $this->posting->getMostPopular();
        $data['trending']    = $this->posting->getThread();
        $data['lastNews']    = $this->posting->getLastNews();
        $data['video_game']  = $this->posting->getVideoGames();
        $data['category']    = $this->category->getCategory();
        $data['page'] = 'tanya_kami';
        $this->load->view('front/layouts/app', $data);
    }

    public function fungsiTambah() {
        $this->komunitas->fungsiTambah($data);
        redirect('komunitas/tanya');
    }
}
