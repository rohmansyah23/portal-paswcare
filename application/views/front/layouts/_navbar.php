<?php
$this->load->model('category_model', 'category', true);
$navbar   = $this->category->getCategory();

$category = $this->uri->segment(3);
?>


<nav class="navbar navbar-light navbar-expand-lg navbar-light bg-light fixed-top home justify-content-center">
   <div class="container">
      <div class="navbar-brand d-flex w-20 mr-auto">
         <a href="<?= base_url() ?>"><img src="<?= base_url('images/posting/logo.png') ?>" alt=""></a>
      </div>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsingNavbar3">
         <span class="fa-solid fa-list"></span>
      </button>
      <div class="navbar-collapse collapse w-100" id="collapsingNavbar3">
         <ul class="navbar-nav w-100 justify-content-center">

            <li class="nav-item <?php if($page === 'home') { echo "active"; } ?>">
               <a class="nav-link" href="<?= base_url('home') ?>">Beranda</a>
            </li>

            <li class="nav-item dropdown <?php if($page === 'category') { echo "active"; } ?>">
               <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Informasi
               </a>
               <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                  <?php foreach($navbar as $n) : ?>
                     <a class="nav-item" href="<?= base_url("blog/category/$n->slug") ?>"><?= $n->category_name ?></a>
                  <?php endforeach ?>
               </div>
            </li>

            <li class="nav-item <?php if($page === 'klinik') { echo "active"; } ?>">
               <a class="nav-link" href="<?= base_url('klinik') ?>">Klinik Hewan</a>
            </li>

            <li class="nav-item <?php if($page === 'komunitas') { echo "active"; } ?>">
               <a class="nav-link" href="<?= base_url('komunitas') ?>">Tanya Dokter</a>
            </li>
         </ul> 
         <ul class="navbar-nav justify-content-center">
            <form action="<?php echo base_url('blog/search'); ?>" method="post">
               <div class="search-navbar">
                  <input type="text" placeholder="Cari Informasi.." name="keyword" autocomplete="off"><i class="fa fa-search"></i>
               </div>
            </form>
         </ul>
         <ul class="navbar-nav auto justify-content-end">
            <?php if (!empty($this->session->userdata('email'))) { ?>
               <a class="nav-end" href="<?= base_url('home/profil'); ?>">Profile <i class="fa-regular fa-user"></i></a>
               <a class="nav-end" href="<?= base_url('auth/logout_member'); ?>">Sign out <i class="fa-solid fa-arrow-right-from-bracket"></i> </a>
            <?php } else { ?>
               <a class="nav-end" href="<?= base_url('auth'); ?>"> Sign in <i class="fa-solid fa-arrow-right-to-bracket"></i></a>
               <a class="nav-end" href="<?= base_url('auth/registrasi'); ?>"> Sign up <i class="fa-regular fa-pen-to-square"></i></a>
            <?php } ?>
         </ul>
      </div>
   </div>
</nav>


<div class="tempat-alert col-md-12 mt-6">
   <?php if ($pesanlogout = $this->session->flashdata('pesanlogout')): ?>
      <div class="alert alert-success alert-dismissible fade show" role="alert">
         <?= $pesanlogout ?>
      </div>
   <?php endif; ?>
</div>

<div class="tempat-alert col-md-12 mt-6">
   <?php if ($login_member = $this->session->flashdata('login_member')): ?>
      <div class="alert alert-success alert-dismissible fade show" role="alert">
         <?= $login_member ?>
      </div>
   <?php endif; ?>
</div>

<div class="tempat-alert col-md-12 mt-6">
   <?php if ($pesan = $this->session->flashdata('pesan')): ?>
      <div class="alert alert-success alert-dismissible fade show" role="alert">
         <?= $pesan ?>
      </div>
   <?php endif; ?>
</div>



<!-- <div class="tempat-alert col-md-12 mt-6">
<div class="alert alert-danger">
Anda Berhasil Login
</div>
</div> -->

<!-- <?php foreach($navbar as $n) : ?>
<li class="nav-item <?php if($n->slug === $category ) { echo "active"; } ?> ">
<a class="nav-link" href="<?= base_url("blog/category/$n->slug") ?>"><?= $n->category_name ?></a>
</li>
<?php endforeach ?> -->

<!-- <div class="navbar-tombol ml-auto">
<?php if (!empty($this->session->userdata('email'))) { ?>
<a class="tombol tombol-booking mr-1" href="<?= base_url('member/myprofil'); ?>"><i class="fas fa-fw fa-user-alt"></i> My Profile</a>
<a class="tombol tombol-daftar" href="<?= base_url('auth/logout_member'); ?>"><i class="fas fa-fw fa-sign-out-alt"></i> Sign out</a>
<?php } else { ?>
<a class="tombol tombol-booking mr-1" href="<?= base_url('auth'); ?>"><i class="fas fa-fw fa-sign-in-alt"></i> Sign in</a>
<a class="tombol tombol-daftar" data-toggle="modal" data-target="#daftarModal" href="#"><i class="fas fa-fw fa-regular fa-pen-to-square"></i> Register</a>
<?php } ?>
</div> -->