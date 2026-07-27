<!--================News Area =================-->
<section class="news_area mt-9">
   <div class="container">
      <div class="row">
         <div class="col-lg-8">
            <div class="main_blog_details">
               <img class="img-komunitas" src="<?= base_url("images/posting/komunitas.jpg") ?>" alt="">
               <h4 class="judul_halaman">Topik Diskusi</h4>

                  <div class="row topik_diskusi">
                     <a class="back_btn col-mb-6 mt-3 text-dark" href="<?=base_url('komunitas')?>"><i class="fa-solid fa-arrow-left"></i> &nbsp;Kembali</a>
                     <a class="gad_btn col-mb-6 mt-3 ml-3" href="<?=base_url('komunitas/tanya')?>"><i class="fa-regular fa-pen-to-square"></i> Buat Pertanyaan</a>
                     <?= validasi_tanggapan($komunitas->tanggapan);?>
                  </div>


                  <div class="user-topic line-btm mb-4">
                    <div class="user-topic-info">
                         <div id="profileAvatar" class="user-topic-pic" style="background-color:<?= randomcolor_nama ($komunitas->nama); ?>"><?= satuhuruf_nama ($komunitas->nama); ?></div>
                         <div class="user-topic-title">
                              <h4><?= $komunitas->judul_pertanyaan?></h4>
                              <span class="small-text text-light-grey">Pertanyaan dari : <?= sensor_nama($komunitas->nama);?></span>
                         </div>
                         <div class="user-topic-count">
                              <div class="small-text">Hewan yang ditanyakan: <?=($komunitas->hewan)?></div>
                              <div class="small-text"><?= mediumdate_indo($komunitas->date)?></div>
                         </div>

                    </div>
                    <div class="news_details"><p><?= $komunitas->pertanyaan?></p></div>
               </div>  

               <?php if(isset($komunitas->tanggapan) && !empty($komunitas->tanggapan)): ?>
               <div class="doctor-topic">
                  <p><b>Dijawab Oleh :</b></p>
                  <div class="doctor-topic-info">
                     <div id="profileAvatar" class="user-topic-pic" style="background-color:yellowgreen;">
                        <i class="fa-solid fa-2x fa-user-doctor"></i>
                     </div>
                     <div class="user-topic-title">
                        <h4>dr. <?= $komunitas->nama_dokter?></h4>
                        <p class="dokter_hewan">Dokter Hewan</p>
                     </div>
                     <div class="user-topic-count">
                        <!--<div class="small-text">Baca juga : <?= $komunitas->hewan ?></div>-->
                        <div class="small-text"><?= mediumdate_indo($komunitas->date) ?></div>
                     </div>
                     <br>
                  </div>
                  <div class="news_details">
                     <p>Halo, <?= $komunitas->nama?> - <?= $komunitas->tanggapan?></p>
                  </div>
                  <div class="news_details">
                     <p>Semoga dapat membantu yaa.</p>
                  </div>
               </div>
            <?php else: ?>
               
               <p>Pertanyaan anda belum ditanggapi.</p>

               <?php endif; ?>

            </div>
         </div>
            <!-- ================Sidebar================== -->
         <?php $this->load->view('front/layouts/_sidebar', $trending) ?>
         <!-- ================End of Sidebar================== -->
      </div>
   </div>
</section>
<!--================End News Area =================-->
