<!--================News Area =================-->
<section class="news_area p_100">
   <div class="container">
      <div class="row">
         <div class="col-lg-8">
            <div class="main_title2">
               <h2>Rekomendasi Klinik Hewan</h2>
            </div>
            <div class="latest_news">
               <div class="media">
                     <div class="d-flex">
                        <img class="img-fluid" src="images/posting/5f9f3926689e5873e0c3d4385d4a5070.jpg" alt="">
                     </div>
                     <div class="media-body">
                        <div class="choice_text">
                           <div class="date">
                              <p class="gad_btn" href="">Bekasi</p>
                              <a href="" class="float-right"><i class="fa fa-calendar" aria-hidden="true"><?php echo date(' D - M / Y'); ?>
                                 </i>
                              </a>
                           </div>
                           <a href="<?= base_url('klinik1') ?>">
                              <h4>Rebban Praktek Dokter Hewan dan Petshop</h4>
                           </a>
                           <p>Komplek, Ruko Grand Galaxy City, Jl. Pulo Sirih Bar. Raya Blk. N No.003, RT.001/RW.020, Jaka Setia, Kec. Bekasi Sel., Kota Bks, Jawa Barat 17147</p>
                        </div>
                     </div>
                  </div>
            </div>
            <br>
            <br>
            <div class="latest_news">
               <div class="media">
                     <div class="d-flex">
                        <img class="img-fluid" src="images/posting/5f9f3926689e5873e0c3d4385d4a5080.jpg" alt="">
                     </div>
                     <div class="media-body">
                        <div class="choice_text">
                           <div class="date">
                              <p class="gad_btn" href="">Jakarta</p>
                              <a href="" class="float-right"><i class="fa fa-calendar" aria-hidden="true"><?php echo date(' D - M / Y'); ?>
                                 </i>
                              </a>
                           </div>
                           <a href="<?= base_url('klinik2') ?>">
                              <h4>Klinik Hewan Drh. Husnul Hamdi</h4>
                           </a>
                           <p>Jl. H. Naman No.10, RT.13/RW.3, Pd. Klp., Kec. Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13450</p>
                        </div>
                     </div>
                  </div>
            </div>
            <!-- Pagination -->
            <div class="row mt-5">
               <div class="col text-right">
                  <a href="<?= base_url('blog') ?>" class="genric-btn danger-border circle arrow">Kembali<span class="lnr lnr-chevron-left-circle"></span></a>
               </div>
            </div>
            <!-- End of Pagination -->
         </div>
         <!-- ================Sidebar================== -->
         <?php $this->load->view('front/layouts/_sidebar', $trending) ?>
         <!-- ================End of Sidebar================== -->
      </div>
   </div>
</section>
<!--================End News Area =================-->