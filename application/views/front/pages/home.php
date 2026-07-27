<!--================ Home Banner Area =================-->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
   <div class="carousel-inner">
      <div class="row align-items-center mt-5">
         <div class="col-lg-8">
            <img class="img-fluid" src="images/posting/pawscare.jpg" alt="">
         </div>
         <div class="col-lg-4 mt-2">
            <div class="container">
               <div class="date text-center">
                  <a href="#"><i class="fa fa-user" aria-hidden="true"></i><?= $user; ?> | <i class="fa fa-calendar-days" aria-hidden="true"></i><?= mediumdate_indo('Y-m-d'); ?></a>
               </div>
               <h1 class="font-weight-light text-center"><b>Apa itu PawsCare?</b></h1>
               <p>Portal Kesehatan Hewan Anabul dan Anubis dengan Pemetaan Lokasi dan Fakta Seru adalah sebuah portal
                  yang menyediakan informasi dan layanan kesehatan hewan, terutama bagi dua jenis hewan yang berbeda,
                  yaitu Anabul dan Anubis. Portal ini mencakup berbagai Penyakit dan solusi hewan, Mulai dari
                  pemeliharaan, solusi, pemetaan lokasi dan fakta seru...</p>
               <div class="row">
                  <div class="col text-center mb-3">
                     <a href="<?= base_url('home/tentang') ?>" class="genric-btn danger circle arrow">Baca
                        Selengkapnya<span class="lnr lnr-arrow-right"></span></a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<!--================ End Home Banner Area =================-->

<!--================ Subscribe Area =================-->
<div class="beranda text-center">
   <div class="isiberanda">
      <div class="container">
         <div class="col-lg-12">
            <h4 class="text-center">Daftar Rekomendasi Lokasi Klinik dan Dokter Hewan untuk <a href="<?= base_url('klinik') ?>"class="genric-btn tombol circle my-1 ml-1 mr-1"><i class="fa-solid fa-lg fa-cat"></i> Anabul atau Anubis <i class="fa-solid fa-lg fa-dog" style="transform: scaleX(-1);"></i></a> Peliharaan Kesayangan Anda </h4>
            </div>

            <div class="row col-lg-12 text-center hilang">
            <h4>Rekomendasi Lokasi <a href="<?= base_url('klinik') ?>"class="klinik-btn danger my-1"> Klinik & Dokter Hewan <i class="fa-solid fa-lg fa-cat"></i></a>
               </h4>
            </div>
         </div>
      </div>
   </div>


<!--================ End Subscribe Area =================-->

<!--================ Choice Area =================-->
<section class="choice_area mt-4">
   <div class="container">
      <div class="main_title2">
         <h2>Informasi Pilihan Pawscare</h2>
      </div>
      <div class="row choice_inner">
         <?php foreach ($choice as $c): ?>
            <div class="col-lg-3">
               <div class="choice_item">
                  <img class="img-fluid" src="<?= base_url("images/posting/large/$c->photo") ?>" alt="">
                  <div class="choice_text">
                     <div class="date">
                        <a class="gad_btn" href="<?= base_url("blog/category/$c->slug") ?>"><?= $c->category_name ?></a>
                        <a href="<?= base_url("blog/read/$c->seo_title") ?>" class="float-right">
                           <i class="fa fa-calendar-days" aria-hidden="true"></i><?= mediumdate_indo($c->date) ?>
                        </a>
                     </div>
                     <a href="<?= base_url("blog/read/$c->seo_title") ?>">
                        <h4><?= $c->title ?></h4>
                     </a>
                     <p><?= character_limiter($c->content, 70) ?></p>
                  </div>
               </div>
            </div>
         <?php endforeach ?>
      </div>
   </div>
</section>
<!--================End Choice Area =================-->

<!--================ Iklan Area =================-->
<section class="col-md-12">
   <div class="container">
      <div class="papan-iklan">

         <?php if ($iklan1->status == 'aktif'): ?>
            <div class="iklan-home-1">
               <a href="<?= $iklan1->link ?>" target="_blank">
                  <img src="<?= base_url('images/iklan/' . $iklan1->image) ?>" alt="">
               </a>
            </div>
         <?php endif; ?>

         <?php if ($iklan2->status == 'aktif'): ?>
            <div class="iklan-home-2">
               <a href="<?= $iklan2->link ?>" target="_blank">
                  <img src="<?= base_url('images/iklan/' . $iklan2->image) ?>" alt="">
               </a>
            </div>
         <?php endif; ?>

      </div>
   </div>
</section>
<!--================End Iklan Area =================-->

<!--================News Area =================-->
<section class="news_area mt-5">
   <div class="container">
      <div class="row">
         <div class="col-lg-8">

            <!-- Last News -->
            <div class="main_title2">
               <h2>Informasi Paling Terbaru</h2>
            </div>
            <div class="latest_news">
               <?php foreach($lastNews as $ln)  :?>
                  <div class="media">
                     <div class="d-flex">
                        <img class="img-fluid" src="<?= base_url("images/posting/$ln->photo") ?>" alt="">
                     </div>
                     <div class="media-body">
                        <div class="home_text">
                           <div class="date">
                              <a class="gad_btn" href="<?= base_url("blog/category/$ln->slug") ?>"><?= $ln->category_name ?></a>
                              <a href="<?= base_url("blog/read/$ln->seo_title") ?>" class="float-right"><i class="fa fa-calendar-days" aria-hidden="true">
                                 </i><?= mediumdate_indo($ln->date) ?>
                              </a>
                           </div>
                           <a href="<?= base_url("blog/read/$ln->seo_title") ?>">
                              <h4><?= $ln->title ?></h4>
                           </a>
                           <p><?= character_limiter($ln->content, 150) ?></p>
                        </div>
                     </div>
                  </div>
                  <hr>
               <?php endforeach ?>
            </div>

            <div class="row mt-4">
               <div class="col text-center">
                  <a href="<?= base_url('blog') ?>" class="genric-btn danger-border circle arrow">Lihat
                     Selengkapnya<span class="lnr lnr-arrow-right"></span></a>
               </div>
            </div>
            <!-- End of Last News -->

            <div class="tavel_food mt-4">
               <div class="main_title2">
                  <h2>Informasi Seputar Kesehatan</h2>
               </div>
               <div class="row">
                  <div class="col-lg-6">
                     <div class="row choice_small_inner">
                        <?php $no = 0; ?>
                        <?php foreach ($video_game as $vg): ?>
                           <?php
                           $no++;
                           if ($no < 5): ?>
                              <div class="col-lg-6 ">
                                 <div class="choice_item small">
                                    <img class="img-fluid" src="<?= base_url("images/posting/$vg->photo") ?>" alt="">
                                    <div class="choice_text">
                                       <a href="<?= base_url("blog/read/$vg->seo_title") ?>">
                                          <h4><?= $vg->title ?></h4>
                                       </a>
                                    </div>
                                 </div>
                              </div>
                           <?php endif ?>
                        <?php endforeach ?>
                     </div>
                  </div>

                  <div class="col-lg-6">
                     <?php $no = 0; ?>
                     <?php foreach ($video_game as $vg): ?>
                        <?php
                        $no++;
                        if ($no == 5): ?>
                           <div class="choice_item">
                              <img class="img-fluid" src="<?= base_url("images/posting/$vg->photo") ?>" alt="">
                              <div class="choice_text">
                                 <div class="date">
                                    <a class="gad_btn"
                                       href="<?= base_url("blog/category/$vg->slug") ?>"><?= $vg->category_name ?></a>
                                    <a href="#" class="float-right"><i class="fa fa-calendar-days"
                                          aria-hidden="true"></i><?= mediumdate_indo($vg->date) ?></a>
                                 </div>
                                 <a href="<?= base_url("blog/read/$vg->seo_title") ?>">
                                    <h4><?= $vg->title ?></h4>
                                 </a>
                                 <p><?= character_limiter($vg->content, 150) ?></p>
                              </div>
                           </div>
                        <?php endif ?>
                     <?php endforeach ?>
                  </div>
               </div>
            </div>

         </div>

         <!-- ================Sidebar================== -->
         <?php $this->load->view('front/layouts/_sidebar', $trending) ?>
         <!-- ================End of Sidebar================== -->

      </div>
   </div>
</section>
<!--================End News Area =================-->