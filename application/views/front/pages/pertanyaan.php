[<!--================News Area =================-->
<section class="news_area mt-9">
    <div class="container">
        <div class="banner_content text-center">
            <h2><span class="fa fa-lg fa-paw"></span></h2>
            <h2>Daftar Pertanyaan</h2>
            <p>www.pawscare.co.id | <?= mediumdate_indo('Y-m-d'); ?></p>
            <hr style="border:1px solid rgb(207, 2, 57); ">
        </div>

        <div class="md-12">
            <!-- Last News -->

            <div class="choice_item">
                <div class="newsdetails">
                <p><b>Tabel daftar pertanyaan Pawscare - </b>Sistem kami secara otomatis akan menampilkan pertanyaan pengguna yang telah mengisi formulir pertanyaan. Jika Anda mengalami kesulitan menemukan pertanyaan yang Anda ajukan, silakan gunakan fitur pencarian dengan memasukkan nama atau email yang Anda gunakan pada kolom pencarian.</p>
                <p> Admin kami akan segera memproses pertanyaan Anda sesegera mungkin. Tanggapan yang kami berikan akan tersedia pada kolom tanggapan.</p>
                </div>
                <div class="container table-bordered" style="background-color: rgba(75, 75, 75, 0.020);">
                    <div class="table-responsive mt-3 mb-3">
                        <table id="tableDaftar" class="table table-striped table-bordered" width="100%" aria-describedby="table-caption">
                            <caption id="table-caption">Daftar Pertanyaan Pengguna</caption>
                            <thead>
                                <tr>
                                    <th scope="col">No</th>
                                    <th scope="col">Nama</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Hewan</th>
                                    <th scope="col">Pertanyaan</th>
                                    <th scope="col">Tanggapan</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Isi tabel akan dimasukkan di sini -->
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row mb-3 mt-3">
                    <div class="col text-center">
                        <a href="<?= base_url('home/tanya') ?>" class="genric-btn danger circle"><span class="lnr lnr-arrow-left"></span>&nbsp; Formulir Pertanyaan</a>
                    </div>
                </div>
            </section>
            <!--================End News Area =================-->]