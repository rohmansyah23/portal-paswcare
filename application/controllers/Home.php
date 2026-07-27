<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        $this->load->model('identity_model', 'identity');
        $this->load->model('posting_model', 'posting');
        $this->load->model('category_model', 'category');
        $this->load->model('komunitas_model', 'komunitas');
        $this->load->model('my_model', 'my', true);
        $this->load->model('iklan_model','iklan');
    }

    private function load_common_data(&$data)
    {
        if ($this->session->userdata('email')) {
            $user = $this->my->cekData(['email' => $this->session->userdata('email')])->row_array();
            $data['user'] = $user['nama'];
        } else {
            $data['user'] = 'Pengunjung'; 
        }

        $data['favicon']     = $this->identity->getIdentity();
        $data['featured']    = $this->posting->getFeatured();
        $data['choice']      = $this->posting->getChoice();
        $data['popular']     = $this->posting->getMostPopular();
        $data['trending']    = $this->posting->getThread();
        $data['lastNews']    = $this->posting->getLastNews();
        $data['video_game']  = $this->posting->getVideoGames();
        $data['category']    = $this->category->getCategory();
        $data['iklan1']       = $this->iklan->getIklanById(1);
        $data['iklan2']       = $this->iklan->getIklanById(2);
        $data['datatable']   = 'article/daftar-pertanyaan';
    }

    public function index()
    {   
        $data['title'] = 'Home';
        $this->load_common_data($data);
        $data['page'] = 'home';
        $this->load->view('front/layouts/app', $data);
    }

    public function tentang()
    {
        $data['title'] = 'Tentang';
        $this->load_common_data($data);
        $data['page'] = 'tentang_kami';
        $this->load->view('front/layouts/app', $data);
    }

    public function pertanyaan()
    {
        $data['title']     = 'Daftar Pertanyaan ';
        $data['page']      = 'pertanyaan';
        $this->load_common_data($data);
        $this->load->view('front/layouts/app', $data);
    }

    public function profil()
    {   
        cek_login();
        $user = $this->my->cekData(['email' => $this->session->userdata('email')])->row_array();

        $data['role'] = $user['role_id'];
        $data['nama'] = $user['nama'];
        $data['email'] = $user['email'];
        $data['alamat'] = $user['alamat'];
        $data['tanggal_input'] = $user['tanggal_input'];

        $data['peran'] = $this->my->get_role_name($user['role_id']);

        $data['title'] = 'Profil';
        $data['favicon'] = $this->identity->getIdentity();
        $data['featured'] = $this->posting->getFeatured();
        $data['choice'] = $this->posting->getChoice();
        $data['popular'] = $this->posting->getMostPopular();
        $data['trending'] = $this->posting->getThread();
        $data['lastNews'] = $this->posting->getLastNews();
        $data['video_game'] = $this->posting->getVideoGames();
        $data['category'] = $this->category->getCategory();
        $data['page'] = 'Profil';

        $this->load->view('front/layouts/app', $data);
    }

}
