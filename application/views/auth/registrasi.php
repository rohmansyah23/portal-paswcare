<main class="container">
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card card-signin">

                <div class="card-body">
                    <h5 class="card-title text-center">Sign Up</h5>
                    <br><br>
                    <!-- Alert -->

                    <div class="row">
                        <div class="col">
                            <?php if ($this->session->flashdata('pesan')) : ?>
                                <div class="alert alert-warning alert-dismissible fade show text-center" role="alert">
                                    <?= $this->session->flashdata('pesan') ?>
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            <?php endif; ?>
                        </div>
                    </div>

                    <?= form_open('auth/registrasi', ['class' => 'form-signin']); ?>

                    <div class="form-label-group">
                        <input type="text" name="nama" value="<?= set_value('nama') ?>" class="form-control" id="nama" placeholder="Nama" required autofocus>
                        <label for="nama">Nama</label>
                        <?= form_error('nama', '<small class="text-danger">', '</small>'); ?>
                    </div>

                    <div class="form-label-group">
                        <input type="text" name="alamat" value="<?= set_value('alamat') ?>" class="form-control" id="alamat" placeholder="Alamat" required>
                        <label for="alamat">Alamat</label>
                        <?= form_error('alamat', '<small class="text-danger">', '</small>'); ?>
                    </div>

                    <div class="form-label-group">
                        <input type="email" name="email" value="<?= set_value('email') ?>" class="form-control" id="email" placeholder="Email" required>
                        <label for="email">Email</label>
                        <?= form_error('email', '<small class="text-danger">', '</small>'); ?>
                    </div>

                    <div class="form-label-group">
                        <input type="password" name="password1" id="password1" class="form-control" placeholder="Password" required>
                        <label for="password1">Password</label>
                        <?= form_error('password1', '<small class="text-danger">', '</small>'); ?>
                    </div>

                    <div class="form-label-group">
                        <input type="password" name="password2" id="password2" class="form-control" placeholder="Ulangi Password" required>
                        <label for="password2">Ulangi Password</label>
                        <?= form_error('password2', '<small class="text-danger">', '</small>'); ?>
                    </div>

                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" name="accept_policy" value="1" class="custom-control-input" id="accept_policy" required>
                        <label class="custom-control-label" for="accept_policy"><p>Terima Kebijakan Kami</p></label>
                        <?= form_error('accept_policy', '<small class="text-danger">', '</small>'); ?>
                    </div>

                    <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Buat Akun</button>

                    <div class="bawahan col-12 text-center">
                        <a class="col-md-6" href="<?= base_url('auth') ?>">Sign In</a>
                        <a class="col-md-6" href="<?= base_url('home') ?>">Halaman Utama</a>
                    </div>

                    <?= form_close() ?>

                </div>
            </div>
        </div>
    </div>
</main>


