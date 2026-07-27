<!--================ Klinik Banner Area =================-->
<div class="carousel-inner">
   <div class="row align-items my-6">
      <div class="col-lg-4">
         <div class="container">
            <div class="date">
               <a class="gad_btn" style="color: white;">Klinik Hewan</a>
               <a class="float-right"><i class="fa fa-calendar-days" aria-hidden="true"></i><?= mediumdate_indo('Y-m-d'); ?></a>
            </div>
            <h1 class="font-weight-light klinik"><b><?php echo $klinik->nama; ?></b></h1>
            <div class="f_boder1"></div>
            <div class="container my-3 mx-1">
               <div class="kontener">
                  <span class="ikon"><i class="fa fa-location-dot"></i></span>
                  <span class="isi_text"><?php echo $klinik->alamat; ?></span>
               </div>
            </div>

            <div class="container my-3 mx-1">
               <div class="kontener">
                  <span class="ikon"><i class="fa fa-clock"></i></span>
                  <span class="isi_text"><?php echo $klinik->jam_buka; ?></span>
               </div>
            </div>

            <div class="container my-3 mx-1">
               <div class="kontener">
                  <span class="ikon"><i class="fa fa-phone"></i></span>
                  <span class="isi_text"><?php echo $klinik->nomor; ?></span>
               </div>
            </div>
         </div>
      </div>


      <div class="klinik_kembali">
         <a href="<?= base_url('klinik') ?>" class="genric-btn danger circle mb-3"><i class="lnr lnr-arrow-left mx-2"></i> Kembali
         </a>
      </div>
      <div class="klinik_maps">
         <div class="iframe-container">
            <iframe src="<?php echo $klinik->maps; ?>"></iframe>
         </div>
      </div>

   </div>
</div>
<!--================ End Klinik Banner Area =================-->

