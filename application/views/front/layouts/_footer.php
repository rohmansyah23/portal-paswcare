<!--================ start footer Area  =================-->   
<footer class="footer-area mt-3">
   <div class="container">


      <div class="row f_widgets_inner">

         <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="single-footer-widget ab_widgets">
               <div class="f_title">
                  <h3>Portal Kesehatan PawsCare</h3>
               </div>
               <p>Portal ini mencakup tentang Informasi Anabul & Anubis, Penyakit dan solusi, tips &  trik, rekomendasi klinik  dan fakta menarik.</p>
            </div>
         </div>
         
         <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="single-footer-widget">
               <div class="f_title">
                  <h3>Akses Cepat</h3>
               </div>
               <div class="row">
                  <div class="col-6 bawahan">
                     <h5 style="color: white">Kategori</h5>
                     <ul class="list mt-1 bawahan">
                        <?php foreach($category as $c) : ?>
                           <li><a href="<?= base_url("blog/category/$c->slug") ?>"><?= $c->category_name ?></a></li>
                        <?php endforeach ?>
                     </ul>
                  </div>
                  <div class="col-6 bawahan-kanan">
                     <h5 style="color: white">Tautan Langsung</h5>
                     <ul class="list mt-1 bawahan-kanan">
                        <li><a href="<?= base_url('home') ?>">Beranda</a></li>
                        <li><a href="<?= base_url('home/tentang') ?>">Tentang Kami</a></li>
                        <li><a href="<?= base_url('komunitas') ?>">Tanya Dokter</a></li>
                        <li><a href="https://wa.me/628997785724" target="_blank">Pasang Iklan</a></li>
                     </ul>
                  </div>                              
               </div>                     
            </div>
         </div>

    
         <div class="col-lg-4 col-md-6">
            <div class="single-footer-widget m_news_widgets">
               <div class="f_title">
                  <h3>Latar Belakang</h3>
               </div>
               <div class ="latar-belakang">
                  <p>Perkembangan dan kemajuan teknologi ini mampu memberikan berbagai kemudahan,</p>
                  <p> salah satunya pada bidang teknologi informasi. Teknologi informasi dapat dimanfaatkan untuk pembuatan sistem informasi misalnya portal kesehatan.</p>
               </div>
            </div>
         </div>   


      </div>
      <div class="row footer-bottom d-flex justify-content-between align-items-center">
         <div class="col-lg-12">
            <div class="f_boder"></div>
            <p class="footer text-center mt-3">
               &copy; 2024 PawsCare <i class="fa fa-lg fa-shield-cat" style="color:#ff1857;"></i> | <?= mediumdate_indo('Y-m-d'); ?> </p>
            </div>
         </div>
      </div>
   </footer>
   <!--================ End footer Area  =================-->
