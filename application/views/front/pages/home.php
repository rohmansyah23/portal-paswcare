<!--================ Home Banner Area =================-->
<div id="" class="" data-ride="">
   <div class="carousel-inner">
      <?php $no = 0;?>
      <?php foreach($featured as $f) : ?>
         <?php $no++;  ?>
         <div class="carousel-item <?php if($no <= 1) { echo "active"; } ?> ">
            <p></p><BR>
            <div class="row align-items-center my">
               <div class="col-lg-8">
                  <center><img src= "images/header_02.jpg" height="400" width="900"></center>
               </div>
               <div class="col-lg-4">
                  <div class="container">
                     <div class="date text-center">
                        <a href=""><i class="fa fa-calendar" aria-hidden="true"></i><?php echo date('l, d-m-Y'); ?></a>
                     </div>
                     <h1 class="font-weight-light text-center"><b>Apa itu PawsCare?</b></h1><p>
                     Portal Kesehatan Hewan Anabul dan Anubis dengan Pemetaan Lokasi dan Fakta Seru adalah sebuah portal yang menyediakan informasi dan layanan kesehatan hewan, terutama bagi dua jenis hewan yang berbeda, yaitu Anabul dan Anubis. Portal ini mencakup berbagai Penyakit dan solusi hewan, Mulai dari pemeliharaan, solusi, pemetaan lokasi dan fakta seru.</p>
                     <div class="row">
                        <div class="col text-center">
                           <a href="tentang" class="genric-btn danger circle arrow">Baca Selengkapnya<span class="lnr lnr-arrow-right"></span></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      <?php endforeach ?>
   </div>
</div>

<!--================ End Home Banner Area =================-->

<!--================ Subscribe Area =================-->
<div class="card bg-light text-center">
   <div class="card-body">
      <div class="container">
            <div class="row">
               <div class="col-lg-6 col-sm-8">
                  <form action="klinik" class="form-inline">
                     <div class="form-group">
                        <h4 class="float-right my-2 text-dark">Rekomendasi Lokasi Klinik Atau Dokter Hewan <span class="fa fa-hand-o-right"></span>
                  </h4>
                        <button class="genric-btn danger radius ml-2">Klinik Atau Dokter Hewan</button>

                     </div>
                  </form>
               </div>
         </div>
      </div>
   </div>
</div>
<!--================ End Subscribe Area =================-->

<!--================ Choice Area =================-->
<section class="choice_area mt-4">
   <div class="container">
      <div class="f_title">
         <h3 style="color: white;"><ul>Informasi Pilihan Editor</ul></h>
      </div>
      <div class="row choice_inner">
         <?php foreach($choice as $c) : ?>
            <div class="col-lg-3">
               <div class="choice_item">
                  <img class="img-fluid choice" src="<?= base_url("images/posting/small/$c->photo") ?>" alt="">
                  <div class="choice_text">
                     <div class="date">
                        <a class="gad_btn" href="<?= base_url("blog/category/$c->slug") ?>"><?= $c->category_name ?></a>
                        <a href="<?= base_url("blog/read/$c->seo_title") ?>" class="float-right">
                           <i class="fa fa-calendar" aria-hidden="true"></i><?= mediumdate_indo($c->date) ?>
                        </a>
                     </div>
                     <a href="<?= base_url("blog/read/$c->seo_title") ?>"
                        ><h4><?= $c->title ?></h4>
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
                        <img class="img-fluid" src="<?= base_url("images/posting/medium/$ln->photo") ?>" alt="">
                     </div>
                     <div class="media-body">
                        <div class="choice_text">
                           <div class="date">
                              <a class="gad_btn" href="<?= base_url("blog/category/$ln->slug") ?>"><?= $ln->category_name ?></a>
                              <a href="<?= base_url("blog/read/$ln->seo_title") ?>" class="float-right"><i class="fa fa-calendar" aria-hidden="true">
                                 </i><?= mediumdate_indo($ln->date) ?>
                              </a>
                           </div>
                           <a href="<?= base_url("blog/read/$ln->seo_title") ?>">
                              <h4><?= $ln->title ?></h4>
                           </a>
                           <p><?= character_limiter($ln->content, 100) ?></p>
                        </div>
                     </div>
                  </div>
               <?php endforeach ?>
            </div>
            <!-- End of Last News -->

            <div class="tavel_food mt-5">
               <div class="main_title2">
                  <h2>Semua Informasi</h2>
               </div>
               <div class="row">
                  <div class="col-lg-6">
                     <div class="row choice_small_inner">
                        <?php $no = 0;?>
                        <?php foreach($post as $vg) : ?>
                        <?php 
                           $no++ ;
                           if($no < 5) : ?>
                              <div class="col-lg-6 col-sm-6">
                                 <div class="choice_item small">
                                    <img class="img-fluid" src="<?= base_url("images/posting/xsmall/$vg->photo") ?>" alt="">
                                    <div class="choice_text">
                                       <a href="<?= base_url("blog/read/$vg->seo_title") ?>"><h4><?= $vg->title ?></h4></a>
                                       <div class="date">
                                          <a href="#"><i class="fa fa-calendar" aria-hidden="true"></i><?= mediumdate_indo($vg->date) ?></a>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           <?php endif ?>
                        <?php endforeach ?>
                     </div>
                  </div>

                  <div class="col-lg-6">
                     <?php $no = 0; ?>
                     <?php foreach($post as $vg) : ?>
                        <?php 
                           $no++ ;
                           if($no == 5) : ?>
                              <div class="choice_item">
                                 <img class="img-fluid" src="<?= base_url("images/posting/large/$vg->photo") ?>" alt="">
                                 <div class="choice_text">
                                    <div class="date">
                                       <a class="gad_btn" href="<?= base_url("blog/category/$vg->slug") ?>"><?= $vg->category_name ?></a>
                                       <a href="#" class="float-right"><i class="fa fa-calendar" aria-hidden="true"></i><?= mediumdate_indo($vg->date) ?></a>
                                    </div>
                                    <a href="<?= base_url("blog/read/$vg->seo_title") ?>"><h4><?= $vg->title ?></h4></a>
                                    <p><?= character_limiter($vg->content, 150) ?></p>
                                 </div>
                              </div>
                        <?php endif ?>
                     <?php endforeach ?>
                  </div>               
               </div>     
            </div>

            <div class="row mt-5">
               <div class="col text-center">
                  <a href="<?= base_url('blog') ?>" class="genric-btn danger-border circle arrow">Lihat Selengkapnya<span class="lnr lnr-arrow-right"></span></a>
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
