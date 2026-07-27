<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Klinik_model extends CI_Model {

   public $perPage = 3;


   public function getAllKlinik($page)
   {
      $offset = $this->calculateRealOffset($page);
      $this->db->from('klinik');
      $this->db->order_by('id_klinik', 'desc');
      $this->db->limit($this->perPage, $offset);
      return $this->db->get()->result();
   }

   public function getKlinikById($id_tanya)
   {
      $this->db->from('klinik');
      $this->db->where('id_klinik', $id_tanya);
      return $this->db->get()->row();
   }

   public function countKlinik($komunitas = null)
   {
      return $this->db->count_all_results('klinik');
   }

   public function calculateRealOffset($page)
   {
      if(is_null($page) || empty($page)){
         $offset = 0;
      }else{
         $offset = ($page * $this->perPage) - $this->perPage;
      }

      return $offset;
   }

/*Cari Klinik*/
   public $perSearch = 100;

   public function search($keyword, $page)
   {
      $this->db->from('klinik');

      $this->db->group_start();
      $this->db->like('wilayah', $keyword);
      $this->db->or_like('nama', $keyword);
      $this->db->group_end();
      $this->db->order_by('klinik.id_klinik', 'desc');
      $offset = $this->calculatesearch($page);
      $this->db->limit($this->perSearch, $offset);

      return $this->db->get()->result();
   }

   public function countsearch($keyword)
   {
      $this->db->from('klinik');
      $this->db->group_start();
      $this->db->like('wilayah', $keyword);
      $this->db->or_like('nama', $keyword);
      $this->db->group_end();
      return $this->db->count_all_results();
   }

   public function calculatesearch($page)
   {
      if (is_null($page) || empty($page)) {
         $offset = 0;
      } else {
         $offset = ($page * $this->perSearch) - $this->perSearch;
      }

      return $offset;
   }

}

