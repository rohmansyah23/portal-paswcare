<!--================News Area =================-->
<section class="news_area mt-9">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="main_title2">
                    <h2>Tanya Kami Melalui Formulir</h2>
                </div>


                <?php if ($notif = $this->session->flashdata('notif')): ?>
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <?= $notif ?>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                <?php endif; ?>


                <div class="formulir-pertanyaan">
                    <div class="judul-form">
                    <a class="back_btn" href="<?=base_url('komunitas')?>"><i class="fa-solid fa-arrow-left"></i> &nbsp; Forum</a>
                    <h4>Pawscare | Formulir Pertanyaan</h4>
                </div>
                <div class="content-formulir">
                    <div class="formulir-form">
                        <form class="form-formulir" action="<?php echo base_url('komunitas/fungsiTambah') ?>" method="post">

                            <div class="formulir">
                                <div class="form-group mt-3 col-md-6">
                                    <h6><label for="nama" class="col-sm-3">Nama</label></h6>
                                    <div class="col-sm-12">
                                        <div class="input-group">
                                            <input outline="none" type="text" class="formulir-control" id="nama" name="nama" placeholder="Nama Lengkap" value="<?=($nama); ?>" required readonly>
                                        </div>
                                    </div>

                                </div>
                                <div class="form-group mt-3 col-md-6">
                                    <h6><label for="judul_pertanyaan" class="col-md-12">Judul Pertanyaan</label></h6>
                                    <div class="col-md-12">
                                        <div class="input-group">
                                            <input type="text" class="formulir-control" id="judul_pertanyaan"
                                            name="judul_pertanyaan" placeholder="Judul Pertanyaan Anda" value=""
                                            required>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="formulir">
                                
                                <div class="form-group col-md-6">
                                    <h6><label for="email" class="col-sm-3">Email</label></h6>
                                    <div class="col-sm-12">
                                        <div class="input-group">
                                            <input type="text" class="formulir-control" id="email"
                                            name="email" placeholder="Email Aktif" value="<?= $email; ?>"
                                            required readonly>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group col-md-6">
                                    <h6><label for="hewan" class="col-md-12">Jenis
                                    Hewan</label></h6>
                                    <div class="col-sm-12">
                                        <div class="input-group">
                                            <select class="formulir-control" name="hewan">
                                                <option value="" disabled selected>Pilih Jenis Hewan
                                                </option>
                                                <option value="Anabul">Anabul</option>
                                                <option value="Anubis">Anubis</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="formulir">
                                <div class="form-group  col-md-12">
                                    <h6><label for="pertanyaan"
                                        class="col-md-12 control-label">Tanya</label></h6>
                                        <div class="col-md-12">
                                            <div class="input-group">
                                                <textarea class="formulir-control" rows="3" name="pertanyaan"
                                                placeholder="Tuliskan Pertanyaan" required></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="formulir mt-2">
                                    <div class="form-group  col-md-12">
                                        <div class="col-md-12">
                                            <button class="kirim kirim-pertanyaan mr-5" id="submit" name="submit" type="submit">Kirim Pertanyaan
                                                 &emsp; <i class="fa-solid fa-arrow-right-from-bracket"></i></button>
                                        </div>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>


                    </div>


                    <div class="col-lg-4">
                        <div class="right_sidebar">
                            <aside class="r_widgets news_widgets">
                                <div class="main_title2">
                                    <h2>Tanya Kami Via WhatsApp</h2>
                                </div>

                                <div class="choice_item">
                                    <img class="img-fluid circle" src="<?= base_url('images/posting/wa1.jpg') ?>" alt="">
                                    <div class="choice_text">
                                        <div class="date">
                                            <a href="https://wa.me/628997785724" class="gad_btn">Admin</a>
                                            <a href="https://wa.me/628997785724" class="float-right"><i class="fa-solid fa-lg fa-circle-dot" style="color:#48C857;"></i>Aktif dari pukul 09.00 - 21.00</a>
                                        </div>
                                        <a href="https://wa.me/628997785724">
                                            <h4>Nomor WhatsApp : +(62) 899-7785-724</h4>
                                        </a>
                                        <p class="mt-1"><b>Admin Roman -</b> Silahkan klik nomor whatsapp diatas jika anda ingin mengetahui
                                            informasi seputar kesehatan anabul dan anubis via whatsapp, Saya akan membantu anda
                                        mengenai informasi atau masalah pada hewan peliharaan anda.</p>
                                    </div>
                                </div>
                            </aside>

                            <aside class="r_widgets news_widgets">
                                <div class="main_title2 mb-5">
                                    <h2>Trending Topik Terkini</h2>
                                </div>
                                <div class="news_slider owl-carousel">
                                    <?php foreach($trending as $t) : ?>
                                        <div class="item">
                                            <div class="choice_item">
                                                <img src="<?= base_url('images/posting/xsmall/' . $t->photo) ?>" alt="">
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!--================End News Area =================-->