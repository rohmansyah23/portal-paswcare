<div class="col-lg-4">
   <div class="right_sidebar">

      <aside class="r_widgets news_widgets">
         <div class="main_title2">
            <h2>Informasi Paling Populer</h2>
         </div>
         <div class="choice_item">
            <img class="img-fluid" src="<?= base_url("images/posting/large/$popular->photo") ?>" alt="">
            <div class="choice_text">
               <div class="date">
                  <a class="gad_btn" href="<?= base_url("blog/category/$popular->slug") ?>"><?= $popular->category_name ?></a>
                  <a href="#" class="float-right"><i class="fa fa-calendar" aria-hidden="true"></i><?= mediumdate_indo($popular->date) ?></a>
               </div>
               <a href="<?= base_url("blog/read/$popular->seo_title") ?>"><h4><?= $popular->title ?></h4></a>
               <p><?= character_limiter($popular->content, 150) ?></p>
            </div>
         </div>

         <div class="main_title2 mb-5">
            <h2>Seputar Tips & Trik</h2>
         </div>
         <div class="news_slider owl-carousel">
            <?php foreach($tips as $t) : ?>
               <div class="item">
                  <div class="choice_item">
                     <img src="<?= base_url('images/posting/xsmall/' . $t->photo) ?>" alt="">
                     <div class="choice_text">
                        <a href="<?= base_url("blog/read/$t->seo_title") ?>">
                           <h4><?= $t->title ?></h4>
                        </a>
                        <div class="date">
                           <a href="<?= base_url("blog/read/$t->seo_title") ?>"><i class="fa fa-calendar" aria-hidden="true"></i><?= mediumdate_indo($t->date) ?></a>       
                        </div>
                     </div>
                  </div>
               </div>
            <?php endforeach ?>
         </div>
            <br>
         <div class="main_title2 mb-5">
            <h2>Seputar Kesehatan</h2>
         </div>
         <div class="news_slider owl-carousel">
            <?php foreach($kesehatan as $t) : ?>
               <div class="item">
                  <div class="choice_item">
                     <img src="<?= base_url('images/posting/xsmall/' . $t->photo) ?>" alt="">
                     <div class="choice_text">
                        <a href="<?= base_url("blog/read/$t->seo_title") ?>">
                           <h4><?= $t->title ?></h4>
                        </a>
                        <div class="date">
                           <a href="<?= base_url("blog/read/$t->seo_title") ?>"><i class="fa fa-calendar" aria-hidden="true"></i><?= mediumdate_indo($t->date) ?></a>       
                        </div>
                     </div>
                  </div>
               </div>
            <?php endforeach ?>
         </div>
      </aside>

      <aside class="r_widgets social_widgets mt-5">
         <div class="main_title2">
            <h2>Tautan Langsung</h2>
         </div>
         <ul class="list">
            <li><a href="<?= base_url('tentang') ?>"><i class="fa fa-info-circle"></i>Tentang Kami<span>Lihat</span></a></li>
            <li><a href="<?= base_url('klinik') ?>"><i class="fa fa-ambulance"></i>Klinik Hewan<span>Lihat</span></a></li>
            <li><a href="<?= base_url('tanya') ?>"><i class="fa fa-question-circle"></i>Tanya Kami<span>Tanya Kami</span></a></li>
         </ul>
 </aside>

</div>
</div>