<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends CI_Controller {

   public function __construct()
   {
      parent::__construct();
      $this->load->model('identity_model', 'identity');
      $this->load->model('posting_model', 'posting');
      $this->load->model('category_model', 'category');
      $this->load->model('iklan_model','iklan');
      $this->load->library('pagination');
   }

   public function index($page = null)
   {
      $data['favicon']     = $this->identity->getIdentity();
      $data['title']       = 'Blog';
      $data['navbar']      = $this->category->getCategory();
      $data['category']    = $this->category->getCategory();
      $data['post']        = $this->posting->getAllPosting($page);
      $data['popular']     = $this->posting->getMostPopular();
      $data['trending']    = $this->posting->getThread();
      $data['category']    = $this->category->getCategory();
      $data['iklan1']       = $this->iklan->getIklanById(1);
      $data['iklan2']       = $this->iklan->getIklanById(2);

      $data['total_rows']  = $this->posting->countPosting();
      $data['pagination']  = $this->posting->makePagination(
         base_url('blog'), 2, $data['total_rows']
      );

      $data['video_game']  = $this->posting->getVideoGames();
      $data['page'] = 'blog';
      $this->load->view('front/layouts/app', $data);
   } 

   public function category($category, $page = null)
   {
      $data['favicon']     = $this->identity->getIdentity();
      $data['title']       = 'Blog';
      $data['category']    = $this->category->getCategory();
      $data['post']        = $this->posting->getPostingByCategory($category, $page);
      $data['popular']     = $this->posting->getMostPopular();
      $data['trending']    = $this->posting->getThread();
      $data['category']    = $this->category->getCategory();
      $data['iklan1']       = $this->iklan->getIklanById(1);
      $data['iklan2']       = $this->iklan->getIklanById(2);

      $data['total_rows']  = $this->posting->countPosting($category);
      $data['pagination']  = $this->posting->makePagination(
         base_url("blog/category/$category/"), 4, $data['total_rows']
      );

      $data['video_game']  = $this->posting->getVideoGames();
      $data['page'] = 'blog';
      $this->load->view('front/layouts/app', $data);
   }

   public function read($seo_title)
   {
      $row = $this->posting->getPosting($seo_title);

      if($row){
         $data['posting']     = $row;
         $data['title']       = $row->title;
         $data['favicon']     = $this->identity->getIdentity();
         $data['popular']     = $this->posting->getMostPopular();
         $data['trending']    = $this->posting->getThread();
         $data['category']    = $this->category->getCategory();
         $data['video_game']  = $this->posting->getVideoGames();
         $data['iklan1']       = $this->iklan->getIklanById(1);
         $data['iklan2']       = $this->iklan->getIklanById(2);
         $data['page']        = 'news-detail';
         $this->load->view('front/layouts/app', $data);
      }else{
         redirect(base_url('home'));
      }
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
         $data['post']   = $this->posting->search($keyword, $page, $per_search);
      } else {
         redirect(base_url('blog'));
      }
      $total_rows = $this->posting->countsearch($keyword);
      $data['pagination']  = $this->pagination->create_links();
      $data['video_game']  = $this->posting->getVideoGames();
      $data['page'] = 'blog';
      $this->load->view('front/layouts/app', $data);
   }

}

