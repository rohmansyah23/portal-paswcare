<div class="col-lg-4">
   <div class="right_sidebar">

      <?php if ($iklan2->status == 'aktif'): ?>
            <div class="iklan-home-2">
               <a href="<?= $iklan2->link ?>" target="_blank">
                  <img src="<?= base_url('images/iklan/' . $iklan2->image) ?>" alt="">
               </a>
            </div>
         <?php endif; ?>

      <aside class="r_widgets news_widgets">

         <div class="main_title2">
            <h2>Trending Topik Terkini</h2>
         </div>
         <div class="news_slider owl-carousel">
            <?php foreach($trending as $t) : ?>
               <div class="item">
                  <div class="choice_item">
                     <img src="<?= base_url('images/posting/' . $t->photo) ?>" alt="">
                     <div class="choice_text">
                        <a href="<?= base_url("blog/read/$t->seo_title") ?>">
                           <h4><?= $t->title ?></h4>
                        </a>
                        <div class="date">
                           <a href="<?= base_url("blog/read/$t->seo_title") ?>"><i class="fa fa-calendar-days" aria-hidden="true"></i><?= mediumdate_indo($t->date) ?></a>       
                        </div>
                     </div>
                  </div>
               </div>
            <?php endforeach ?>
         </div>
      </aside>

      <aside class="r_widgets social_widgets mt-5">
         <div class="main_title2">
            <h2>Kategori Informasi</h2>
         </div>
         <ul class="list">
            <li><a href="<?= base_url('blog/category/anabul')?>"><i class="fa fa-cat"></i> Anabul<span>Lihat Informasi</span></a></li>
            <li><a href="<?= base_url('blog/category/anubis')?>"><i class="fa fa-dog"></i> Anubis<span>Lihat Informasi</span></a></li>
            <li><a href="<?= base_url('blog/category/kesehatan')?>"><i class="fa fa-hand-holding-medical"></i> Kesehatan<span>Lihat Informasi</span></a></li>
            <li><a href="<?= base_url('blog/category/tips-trik')?>"><i class="fa-regular fa-lightbulb"></i> Tips & Trik<span>Lihat Informasi</span></a></li>
         </ul>
      </aside>
      
   </div>
</div>