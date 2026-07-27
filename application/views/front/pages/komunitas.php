<!--================News Area =================-->
<section class="news_area mt-9">
    <div class="container">
        
        <div class="row">
            <div class="col-lg-8">
                <div class="main_title2">
                   <h2> Forum Pertanyaan </h2>
               </div>

                <!-- KOLOM PENCARIAN -->
                <div class="row container-button">
                    <div class="search-container col-lg-6 justify-content-start">
                        <a href="<?=base_url('komunitas/tanya')?>"><i class="fa-regular fa-lg fa-pen-to-square"></i> Buat Pertanyaan</a>
                    </div>
                    <div class="search-container col-lg-6">
                        <form action="<?php echo base_url('komunitas/search'); ?>" method="post">
                            <input type="text" placeholder="Cari Pertanyaan" name="keyword" autocomplete="off">
                            <button class="ml-1" type="submit"><i class="fa fa-search"></i> Cari</button>
                        </form>

                    </div>
                </div>
                <!-- END KOLOM PENCARIAN -->

                <?php foreach ($komunitas as $t) { ?>
                    <div class="related-topic-card">
                        <div class="topic-info">
                            <div class="reply-time">
                                <span><?= mediumdate_indo ($t->date); ?></span>
                            </div>
                            <div class="total-reply">
                                <span><?= satunomor_tanggapan ($t->tanggapan); ?> </span>
                                <i class="fa fa-comment"></i>
                            </div>
                        </div>
                        <div class="topic-container">
                            <a href="#">
                                <div class="profile-avatar" style="background-color: <?= randomcolor_nama ($t->nama); ?>"><?= satuhuruf_nama ($t->nama); ?></div>

                            </a>
                            <div class="topic-title">
                                <h4 class="title">
                                    <a href="<?= base_url('komunitas/lihat_pertanyaan/' . $t->id_tanya); ?>"><?= $t->judul_pertanyaan; ?><span class="notification hide"></span></a>
                                </h4>
                                <div class="topic-by"><a href="#">Pertanyaan Dari: <?= sensor_nama ($t->nama); ?>
                            </a>
                        </div>

                        <?php if(isset($t->nama_dokter) && !empty($t->nama_dokter)): ?>
                        <div class="answer-by">
                            <span><?= "Dijawab oleh dr. " . $t->nama_dokter; ?></span>
                        </div>
                        <?php endif; ?>

                    </div>
                </div>
                <div class="topic-detail">
                    <p><a>
                    </a></p><div><p><?= character_limiter($t->pertanyaan,150); ?></p></div><a>
                    </a><p></p>
                </div>
            </div>
        <?php } ?>

<!--================ End pagination =================-->
            <div class="t mt-3">
                <div class="col">
                    <nav aria-label="Page navigation example"><?= $pagination ?></nav>
                </div>
            </div>
<!--================ End pagination =================-->

<!-- ================Sidebar================== -->
        </div>
    <?php $this->load->view('front/layouts/_sidebar2', $trending) ?>
<!-- ================End of Sidebar================== -->

    </div>
</div>
</section>
<!--================End News Area =================-->
