<!--================ Klinik Banner Area =================-->
<div class="carousel-inner">
   <div class="row align-items my-6">

      <div class="col-md-12">
      
        <div class="profil">
            
            <div class="card col-md-4 informasi-Pengguna">
         <div class="container">
            <div class="date">
               <a class="gad_btn" style="color: white;"><?= $peran?></a>
               <a class="float-right"><i class="fa fa-calendar-days" aria-hidden="true"></i><?= mediumdate_indo('Y-m-d'); ?></a>
            </div>
            
            <h1 class="font-weight-light klinik text-center"><b>Detail Informasi User</b></h1>

            <div class="f_boder1"></div>
            <div class="container my-3 mx-1">
               <div class="kontener">
                  <span class="ikon"><i class="fa fa-user"></i></span>
                  <span class="isi_text"><?= $nama; ?></span>
               </div>
            </div>

            <div class="container my-3 mx-1">
               <div class="kontener">
                  <span class="ikon"><i class="fa-regular fa-envelope"></i></span>
                  <span class="isi_text"><?= $email; ?></span>
               </div>
            </div>

            <div class="container my-3 mx-1">
               <div class="kontener">
                  <span class="ikon"><i class="fa-solid fa-map-location-dot"></i></span>
                  <span class="isi_text"><?= $alamat; ?></span>
               </div>
            </div>

            <div class="container my-3 mx-1">
               <div class="kontener">
                  <span class="ikon"><i class="fa-solid fa-users-viewfinder"></i></span>
                  <span class="isi_text">Menjadi Member Sejak <?= date('d F Y', $tanggal_input); ?></span>
               </div>
            </div>

            <div class="float-right mt-2">
                <a href="#" onclick="history.back();" class="genric-btn danger circle mb-3"><i class="lnr lnr-arrow-left mx-2"></i> Kembali</a>
            </div>

         </div>
      </div>    

      </div>

  </div>


      <div class="klinik_kembali">
         
      </div>
      

   </div>
</div>
<!--================ End Klinik Banner Area =================-->





<!-- <div class="container-deku">
    <div class="row justify-content-center">
        <div class="col-lg">
            <?= $this->session->flashdata('pesan'); ?>
        </div>
    </div>
    <div class="row rounded">
        <div class="col-md-5">
            <div class="card rounded">
                <div class="card-body">
                    <h2 class="card-title mt-4" style="color: crimson;">Informasi Profil</h2>
                    <p class="card-text">Nama Member : <?= $nama; ?></p>
                    <p class="card-text">Email : <?= $email ?></p>
                    <p class="card-text">Alamat : <?= $alamat ?></p>
                    <p class="card-text">Menjadi Member Sejak : <?= date('d F Y', $tanggal_input); ?></p>
                    <a class="tombol tombol-booking mr-1" href="<?= base_url('member/ubahprofil');?>"><i class="fas fa-user-edit"></i> Ubah Profil</a>
                <a class="tombol tombol-detail" href="<?= base_url(); ?>"><i class="fas fa-reply"></i>&emsp;Kembali&emsp;</a>
                </div>  
            </div>
        </div>
    </div>
</div> -->