<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class My_Model extends CI_Model {

   protected $table = '';
   protected $id = 'id';
   protected $tableJoin = '';
   protected $column_order = [];
   protected $column_search = [];
   protected $select = null;
   protected $order = null;

   public function get_role_name($role_id)
   {
      switch ($role_id) {
         case 1:
         return "Administrator";
         case 2:
         return "Member";
         case 3:
         return "Dokter Hewan";
         default:
         return "Undefined Role";
      }
   }

   public function simpanData($data = null)
   {
      $this->db->insert('user', $data);
   }

   public function cekData($where = null)
   {
      return $this->db->get_where('user', $where);
   }

   public function getUserWhere($where = null)
   {
      return $this->db->get_where('', $where);
   }

   public function getUserLimit()
   {
      $this->db->select('*');
      $this->db->from('user');
      return $this->db->get();
   }

   public function getUserWhereIn($role_ids) {
      $this->db->where_in('role_id', $role_ids);
      return $this->db->get('user');
   }

   public function init($controller)
   {
      $props = ['table', 'id', 'tableJoin', 'column_order', 'column_search', 'select', 'order'];
      foreach ($props as $prop) {
         if (property_exists($controller, $prop)) {
            $this->$prop = $controller->$prop;
         }
      }
   }

   /**/

   public function get_datatables_query()
   {
      if($this->tableJoin != ''){
         $this->db->select($this->select);
         $this->db->from($this->table);
         $this->db->join($this->tableJoin, $this->tableJoin . '.id = ' . $this->table . '.id_' . $this->tableJoin);
      }else{
         $this->db->from($this->table);
      }

      $i = 0;

      foreach($this->column_search as $item){
         if(isset($_POST['search']['value']) && $_POST['search']['value']){
            if($i === 0){
               $this->db->group_start();
               $this->db->like($item, $_POST['search']['value']);
            }else{
               $this->db->or_like($item, $_POST['search']['value']);
            }

            if(count($this->column_search) - 1 === $i){
               $this->db->group_end();
            }
         }

         $i++;
      }

      if(isset($_POST['order'])){
         $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
      }else if(isset($this->order)){
         $order = $this->order;
         $this->db->order_by(key($order), $order[key($order)]);
      }
   }

   public function get_datatables()
   {
      $this->get_datatables_query();

      if(isset($_POST['length']) && $_POST['length'] != -1){
         $this->db->limit($_POST['length'], $_POST['start']);
      }

      return $this->db->get()->result();
   }

   public function count_filtered()
   {
      $this->get_datatables_query();
      return $this->db->get()->num_rows();
   }

   public function count_all()
   {
      $this->db->from($this->table);
      return $this->db->count_all_results();
   }

   public function countRows($table)
   {
      return $this->db->get($table)->num_rows();
   }

   public function get_by_id($id)
   {
      $this->db->from($this->table);
      $this->db->where($this->id, $id);
      return $this->db->get()->row();
   }

   public function delete($id){
      $this->db->where($this->id, $id);
      $this->db->delete($this->table);
   }

   public function save($data){
      $this->db->insert($this->table, $data);
   }

   public function update($where, $data){
      $this->db->update($this->table, $data, $where);
      return $this->db->affected_rows();
   }

   public function get_datatables_member()
   {  
      $this->db->from('user');
      $this->db->where('role_id', 2); 
      $query = $this->db->get();
      return $query->result();
   }

}
