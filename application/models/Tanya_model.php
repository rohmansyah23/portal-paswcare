<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Tanya_model extends CI_Model {

   private $table = 'tanya';
   
   public function getTanya()
   {
      return $this->db->get($this->table)->result();
   }

}