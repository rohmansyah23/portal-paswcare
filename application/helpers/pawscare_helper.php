<?php defined('BASEPATH') OR exit('No direct script access allowed');

function cek_login()
{
    $ci = get_instance();

    if (!$ci->session->userdata('email')) {
        $ci->session->set_flashdata('pesan', 'Silahkan Login Terlebih Dahulu.');
        redirect('auth');
    } else {
        $role_id = $ci->session->userdata('role_id');
        $id_user = $ci->session->userdata('id_user');
    }
}

function cek_user()
{
    $ci = get_instance();
    $role_id = $ci->session->userdata('role_id');
    
    if ($role_id != 1 /*&& $role_id != 3*/) {
        $ci->session->set_flashdata('pesan', 'Maaf, Anda Bukan Admin');
        redirect('home');
    }
}

function cek_dokter()
{
    $ci = get_instance();
    $role_id = $ci->session->userdata('role_id');
    
    if ($role_id != 3) {
        $ci->session->set_flashdata('pesan', 'Akses Ditolak Anda Bukan Dokter.</div>');
        redirect('home');
    }
}


function cek_login_user()
{
    $ci = get_instance();

    if (!$ci->session->userdata('email')) {
        $ci->session->set_flashdata('pesan', 'Silahkan login terlebih dahulu untuk dapat memberikan pertanyaan');
        redirect('auth');
    } else {
        $role_id = $ci->session->userdata('role_id');
        $id_user = $ci->session->userdata('id_user');
    }
}

function slugify($text)
{
   $text = preg_replace('~[^\pL\d]+~u', '-', $text);
    $text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);
    $text = preg_replace('~[^-\w]+~', '', $text);
    $text = trim($text, '-');
    $text = preg_replace('~-+~', '-', $text);
    $text = strtolower($text);

    if (empty($text)) {
        return 'n-a';
    }

    return $text;  
}
