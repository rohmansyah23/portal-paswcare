<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Komunitas_model extends CI_Model {

   public $perPage = 3;


   public function getAllPertanyaan($page)
{
    $offset = $this->calculateRealOffset($page);
    $this->db->from('tanya');
    $this->db->order_by('tanya.id_tanya', 'desc');
    $this->db->limit($this->perPage, $offset);
    return $this->db->get()->result();
}


   public function fungsiTambah()
{
    $data = array(
        'judul_pertanyaan' => $this->input->post('judul_pertanyaan'),
        'date' => date('Y-m-d H:i:s'), 
        'nama' => $this->input->post('nama'),
        'email' => $this->input->post('email'),
        'hewan' => $this->input->post('hewan'),
        'pertanyaan' => $this->input->post('pertanyaan')
    );

    $this->db->insert('tanya', $data);

    // Contoh notifikasi flash data untuk memberikan pesan kepada pengguna
    $this->session->set_flashdata('notif', 'Pertanyaan Anda berhasil terkirim. Lihat pertanyaan Anda pada Forum Komunitas.');
}



   public function getPertanyaanById($id_tanya)
   {
      $this->db->from('tanya');
      $this->db->where('id_tanya', $id_tanya);
      return $this->db->get()->row();
   }

   public function countPertanyaan($komunitas = null)
   {
      return $this->db->count_all_results('tanya');
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

/*SEARCH*/
   public $perSearch = 3;

   public function search($keyword, $page)
   {
      $this->db->from('tanya');

      $this->db->group_start();
      $this->db->like('nama', $keyword);
      $this->db->or_like('judul_pertanyaan', $keyword);
      $this->db->or_like('hewan', $keyword);
      $this->db->group_end();
      $this->db->order_by('tanya.id_tanya', 'desc');
      $offset = $this->calculatesearch($page);
      $this->db->limit($this->perSearch, $offset);

      return $this->db->get()->result();
   }

   public function countsearch($keyword)
   {
      $this->db->from('tanya');
      $this->db->group_start();
      $this->db->like('nama', $keyword);
      $this->db->or_like('judul_pertanyaan', $keyword);
      $this->db->or_like('hewan', $keyword);
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

/*TAMBAHAN*/

   public function sensor($page)
   {
      if (!function_exists('sensor_nama')) {
         function sensor_nama($nama)
         {
            $kata_kunci = explode(' ', $nama);
            $sensor = '';
            foreach ($kata_kunci as $kata) {
               if (strlen($kata) >= 3) {
                  $sensor .= substr($kata, 0, 2) . '*' . substr($kata, 3) . ' ';
               } else {
                  $sensor .= $kata . ' ';
               }
            }
            return trim($sensor);
         }
      }
   }

   public function satuhuruf($page)
   {
      if (!function_exists('satuhuruf_nama')) {
         function satuhuruf_nama($nama)
         {
            $kata_kunci = explode(' ', $nama);
            $satuhuruf = '';
            foreach ($kata_kunci as $kata) {
               if (strlen($kata) > 0) {
                  $satuhuruf .= substr($kata, 0, 1) . ' ';
               }
            }
            return trim($satuhuruf);
         }
      }
   }

   public function satunomor($page)
   {
      if (!function_exists('satunomor_tanggapan')) {
         function satunomor_tanggapan($tanggapan)
         {
            if (!empty($tanggapan)) {
               return '1 Balasan';
            } else {
               return '0 Balasan';
            }
         }
      }
   }

   public function randomcolor($page)
   {
      if (!function_exists('randomcolor_nama')) {
         function randomcolor_nama($nama)
         {
            $red = mt_rand(0, 100);
            $green = mt_rand(0, 100);
            $blue = mt_rand(0, 100);

            $color = sprintf("#%01x%01x%01x", $red, $green, $blue);

            return $color;
         }
      }
   }

   public function validasi($page)
   {
      if (!function_exists('validasi_tanggapan')) {
         function validasi_tanggapan($tanggapan)
         {
            if (!empty($tanggapan)) {
               return '<a class="succes_btn float-right mt-3" <!--href="' . base_url('#') . '-->">Sudah Terjawab <i class="fa-regular fa-circle-check"></i></a>';
            } else {
               return '<a class="failed_btn float-right mt-3" <!--href="' . base_url('#') . '-->">Belum Terjawab <i class="fa-regular fa-circle-xmark"></i></a>';
            }
         }
      }
   }


}