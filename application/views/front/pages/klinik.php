<!--================News Area =================-->
<section class="news_area mt-9">
    <div class="container">

        <div class="row">
            <div class="col-lg-8">
                <div class="main_title2">
                    <h2>Rekomendasi Klinik dan Dokter Hewan</h2>
                </div>
                <!-- KOLOM PENCARIAN -->
                <div class="search-container">
                    <form action="<?php echo base_url('klinik/search'); ?>" method="post">
                        <input type="text" placeholder="Cari klinik..." name="keyword" autocomplete="off">
                        <button class="ml-1" type="submit"><i class="fa fa-search"></i> Cari</button>
                    </form>
                </div>
                <!-- END KOLOM PENCARIAN -->

                <div class="choice_item">
                    <?php foreach ($klinik as $k) { ?>
                        <div class="choice_text">
                            <div class="date">
                                <a class="gad_btn" href="<?= base_url('klinik/read/' . $k->id_klinik); ?>"><?= $k->wilayah; ?></a>
                                <a href="<?= base_url('klinik/read/' . $k->id_klinik); ?>" class="float-right"><i class="fa fa-lg fa-clock" aria-hidden="true"></i><?= $k->jam_buka; ?></a>
                            </div>
                            <a href="<?= base_url('klinik/read/' . $k->id_klinik); ?>">
                                <h4><?= $k->nama; ?></h4>
                            </a>
                            <div class="alamat-klinik">
                                <p><?= $k->alamat; ?></p>
                            </div>
                        </div>
                        <hr>
                    <?php } ?>
                </div>

                <!-- Pagination -->
                <div class="dk mt-5">
                    <div class="col">
                        <nav aria-label="Page navigation example"><?= $pagination ?></nav>
                    </div>
                </div>
                <!-- End of Pagination -->
            </div>
            <!-- ================Sidebar================== -->
            <?php $this->load->view('front/layouts/_sidebar2', $trending) ?>
            <!-- ================End of Sidebar================== -->
        </div>
    </div>
</section>
<!--================End News Area =================-->