<!--================News Area =================-->
<section class="news_area single-post-area mt-9">
   <div class="container">
      <div class="row">
         
         <div class="col-lg-8">
            <div class="main_blog_details">
               <img class="img-fluid" src="<?= base_url("images/posting/$posting->photo") ?>" alt="">
               <div class="sumber-gambar">
                  <p>Sumber Gambar : <?= $posting->sumber_gambar ?></p>
               </div>
               <h4><?= $posting->title ?></h4>
               <div class="user_details">
                  <div class="float-left">
                     <a class="gad_btn" href="<?= base_url("blog/category/$posting->slug") ?>"><?= $posting->category_name ?></a>
                  </div>
                  <div class="float-right">
                     <div class="media">
                        <div class="media-body">
                           <p><?= mediumdate_indo($posting->date) ?></p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="news_details"><p><?= $posting->content ?></p></div>
               <div class="sumber-informasi">
                  <a href="<?= htmlspecialchars($posting->sumber_informasi) ?>" target="_blank">Sumber Informasi </a>
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
	