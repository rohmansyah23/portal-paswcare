<main class="container">
    <div class="row">
        <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
            <div class="card card-signin">

                <div class="card-body">
                    <h5 class="card-title text-center">Sign In</h5>
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


                    <?= form_open('auth', ['class' => 'form-signin']); ?>
                    <div class="form-label-group">
                        <input type="email" name="email" value="<?= set_value('email') ?>" class="form-control" id="email" placeholder="Email" required autofocus>
                        <label for="email">Email</label>
                        <?= form_error('email', '<small class="text-danger">', '</small>'); ?>
                    </div>

                    <div class="form-label-group">
                        <input type="password" name="password" id="password" class="form-control" placeholder="Password" required>
                        <label for="password">Password</label>
                        <?= form_error('password', '<small class="text-danger">', '</small>'); ?>
                    </div>

                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" name="remember" value="1" class="custom-control-input" id="remember">
                        <label class="custom-control-label" for="remember"><p>Ingatkan Saya</p></label>
                    </div>

                    <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Sign In</button>

                    <div class="bawahan col-12 text-center">
                        <a class="col-md-6" href="<?= base_url('auth/registrasi') ?>">Buat Akun</a>
                        <a class="col-md-6" href="<?= base_url('home') ?>">Halaman Utama</a>
                    </div>
                    <?= form_close() ?>


                </div>
            </div>
        </div>
    </div>
</main>


