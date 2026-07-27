<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Klinik extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('identity_model', 'identity');
        $this->load->model('posting_model', 'posting');
        $this->load->model('category_model', 'category');
        $this->load->model('klinik_model', 'klinik');
        $this->load->model('iklan_model','iklan');
        $this->load->library('pagination');
    }

    public function index($page = null) 
    {
        $data['favicon']     = $this->identity->getIdentity();
        $data['title']       = 'Daftar Klinik';
        $data['navbar']      = $this->category->getCategory();
        $data['category']    = $this->category->getCategory();
        $data['popular']     = $this->posting->getMostPopular();
        $data['trending']    = $this->posting->getThread();
        $data['lastNews']    = $this->posting->getLastNews();
        $data['klinik']      = $this->klinik->getAllKlinik($page);
        $data['iklan1']       = $this->iklan->getIklanById(1);
        $data['iklan2']       = $this->iklan->getIklanById(2);

        $data['total_rows']  = $this->klinik->countKlinik(); 
        $config['base_url']  = base_url('klinik'); 
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
        $data['page'] = 'klinik';
        $this->load->view('front/layouts/app', $data);
    }

    public function search($page = null) 
    {
        $keyword = $this->input->post('keyword');
        $per_search = 100;

        $data['favicon']     = $this->identity->getIdentity();
        $data['title']       = 'search';
        $data['navbar']      = $this->category->getCategory();
        $data['category']    = $this->category->getCategory();
        $data['popular']     = $this->posting->getMostPopular();
        $data['trending']    = $this->posting->getThread();
        $data['lastNews']    = $this->posting->getLastNews();
        $data['iklan1']       = $this->iklan->getIklanById(1);
        $data['iklan2']       = $this->iklan->getIklanById(2);

        if (!empty($keyword)) {
            $data['klinik']   = $this->klinik->search($keyword, $page, $per_search);
        } else {
            redirect(base_url('klinik'));
        }

        $total_rows = $this->klinik->countsearch($keyword);
        $config['total_rows'] = $total_rows;
        $config['base_url']   = base_url('klinik/search');
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
        $data['page'] = 'klinik';
        $this->load->view('front/layouts/app', $data);
    }

    public function read($id = null)
    {
        $row = $this->klinik->getKlinikById($id);

        if($row){
            $data['klinik']     = $row;
            $data['title']       = $row->nama;
            $data['favicon']     = $this->identity->getIdentity();
            $data['popular']     = $this->posting->getMostPopular();
            $data['trending']    = $this->posting->getThread();
            $data['category']    = $this->category->getCategory();
            $data['video_game']  = $this->posting->getVideoGames();
            $data['page']        = 'klinik-detail';
            $this->load->view('front/layouts/app', $data);
        } else {
            redirect(base_url('home'));
        }
    }
}
