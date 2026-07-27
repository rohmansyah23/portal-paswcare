<?php
    $url = $this->uri->segment(3);
    if(isset($url)){
        $query = $this->db->where('slug', $url)->get('category')->row();
        if(!empty($query->category_name)) {
            $title = "Tentang " . $query->category_name;
        } else {
            $title = "yang dicari"; // Beri nilai 1 jika category_name kosong
        }
    } else {
        $title = '';
    }
?>

<!--================News Area =================-->
<section class="news_area mt-9">
    <div class="container">

        <div class="row">
            <div class="col-lg-8">
                <div class="main_title2">
                    <h2>Semua Informasi <?= $title ?></h2>
                </div>
                <!-- KOLOM PENCARIAN 
                <div class="search-container">
                    <form action="<?php echo base_url('blog/cari'); ?>" method="post">
                        <input class="mr-1" type="text" placeholder="Cari Informasi.." name="keyword" autocomplete="off">
                        <button type="submit"><i class="fa fa-search"></i> Cari</button>
                    </form>
                </div>
                END KOLOM PENCARIAN -->
                <div class="latest_news">
               <?php foreach($post as $p)  :?>
                  <div class="media">
                     <div class="d-flex">
                        <img class="img-fluid" src="<?= base_url("images/posting/medium/$p->photo") ?>" alt="">
                     </div>
                     <div class="media-body">
                        <div class="home_text">
                           <div class="date">
                              <a class="gad_btn" href="<?= base_url("blog/category/$p->slug") ?>"><?= $p->category_name ?></a>
                              <a href="<?= base_url("blog/read/$p->seo_title") ?>" class="float-right"><i class="fa fa-calendar-days" aria-hidden="true">
                                 </i><?= mediumdate_indo($p->date) ?>
                              </a>
                           </div>
                           <a href="<?= base_url("blog/read/$p->seo_title") ?>">
                              <h4><?= $p->title ?></h4>
                           </a>
                           <p><?= character_limiter($p->content, 140) ?></p>
                        </div>
                     </div>
                  </div>
               <hr>
               <?php endforeach ?>
            </div>
                <!-- Pagination -->
                <div class="row mt-3">
                    <div class="col">
                        <nav aria-label="Page navigation example">
                            <?= $pagination ?>
                        </nav>
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
