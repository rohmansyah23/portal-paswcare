<!--================ start footer Area  =================-->	
<footer class="footer-area mt-5">
   <div class="container">
      <div class="row f_widgets_inner">
         <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="single-footer-widget ab_widgets">
               <div class="f_title">
                  <h3>www.pawscare.co.id</h3>
               </div>
               <p>Pawscare Merupakan portal Kesehatan Anabul dan Anubis</p>
            </div>
         </div>
         <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="single-footer-widget">
               <div class="f_title">
                  <h3>Kategori</h3>
               </div>
               <div class="row">
                  <div class="col-6">
                     <ul class="list">
                        <?php foreach($category as $c) : ?>
                           <li><a href="<?= base_url("blog/category/$c->slug") ?>"><?= $c->category_name ?></a></li>
                        <?php endforeach ?>
                     </ul>
                  </div>
                  									
               </div>							
            </div>
         </div>
         <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="single-footer-widget">
               <div class="f_title">
                  <h3>Tautan Langsung</h3>
               </div>
               <div class="row">
                  
                  <div class="col-6">
                     
                     <ul class="list">
                        <li><a href="<?= base_url('tentang') ?>"><i class="fa fa-info-circle"></i> Tentang Kami </a></li>
                        <li><a href="<?= base_url('tanya') ?>"><i class="fa fa-question-circle"></i> Tanya Kami </a></li>
                        <li><a href="<?= base_url('klinik') ?>"><i class="fa fa-ambulance"></i> Klinik Hewan </a></li>
                     </ul>
                  </div>                              
               </div>                     
            </div>
         </div>
      </div>
      <div class="row footer-bottom d-flex justify-content-between align-items-center">
         <div class="col-lg-12">
            <div class="f_boder"></div>
         </div>
         <p class="col-lg-8 col-md-8 footer-text"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
           www.pawscare.co.id | <?php echo date('l, d-m-Y'); ?> </p>

            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
         </div>
      </div>
   </footer>
   <!--================ End footer Area  =================-->
