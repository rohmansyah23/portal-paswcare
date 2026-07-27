<?php

function mediumdate_indo($tgl, $tambah_hari = 0){
   // Mengubah tanggal saat ini sesuai format yang diinginkan
   $ubah = gmdate($tgl, time()+60*60*8);
   // Menambahkan jumlah hari yang diinginkan
   $ubah = date('Y-m-d', strtotime("+$tambah_hari days", strtotime($ubah)));
   // Mendapatkan nama hari
   $nama_hari = medium_hari(date('N', strtotime($ubah)));
   // Membagi tanggal menjadi bagian-bagian (tanggal, bulan, tahun)
   $pecah = explode("-",$ubah);
   // Mengambil bagian-bagian tanggal
   $tanggal = $pecah[2];
   // Mengonversi angka bulan menjadi nama bulan pendek (Bahasa Indonesia)
   $bulan = medium_bulan($pecah[1]);
   // Mengambil tahun
   $tahun = $pecah[0];
   // Menghasilkan format tanggal yang diinginkan
   return $nama_hari . ', ' . $tanggal . ' ' . $bulan . ' ' . $tahun;
}

function medium_hari($hari){
   switch ($hari)
   {
      case 1:
         return "Senin";
         break;
      case 2:
         return "Selasa";
         break;
      case 3:
         return "Rabu";
         break;
      case 4:
         return "Kamis";
         break;
      case 5:
         return "Jumat";
         break;
      case 6:
         return "Sabtu";
         break;
      case 7:
         return "Minggu";
         break;
   }
}

function medium_bulan($bln){
   switch ($bln)
   {
      case 1:
         return "Jan";
         break;
      case 2:
         return "Feb";
         break;
      case 3:
         return "Mar";
         break;
      case 4:
         return "Apr";
         break;
      case 5:
         return "Mei";
         break;
      case 6:
         return "Jun";
         break;
      case 7:
         return "Jul";
         break;
      case 8:
         return "Ags";
         break;
      case 9:
         return "Sep";
         break;
      case 10:
         return "Okt";
         break;
      case 11:
         return "Nov";
         break;
      case 12:
         return "Des";
         break;
   }
}
