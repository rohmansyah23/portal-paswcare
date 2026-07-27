<!doctype html>
<html lang="en">
<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" href="<?= base_url("images/favicon/$favicon->photo") ?>" type="image/png">
	<title><?= $title ?> - Pawscare</title>
	<!-- Bootstrap CSS -->
	<link href="<?= base_url() ?>assets/front/css/bootstrap.css" rel="stylesheet">
	<link href="<?= base_url() ?>assets/front/vendors/linericon/style.css" rel="stylesheet">
	<link href="<?= base_url() ?>assets/vendor/fontawesome-free-6.5.2-web/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="<?= base_url() ?>assets/front/vendors/owl-carousel/owl.carousel.min.css" rel="stylesheet">
	<link href="<?= base_url() ?>assets/front/vendors/lightbox/simpleLightbox.css" rel="stylesheet">
	<link href="<?= base_url() ?>assets/front/vendors/nice-select/css/nice-select.css" rel="stylesheet">
	<link href="<?= base_url() ?>assets/front/vendors/animate-css/animate.css" rel="stylesheet">
	<link href="<?= base_url() ?>assets/front/vendors/jquery-ui/jquery-ui.css" rel="stylesheet">
	<link href="<?= base_url("assets/back/vendors/datatables/dataTables.bootstrap4.min.css") ?>" rel="stylesheet">
	<!-- main css -->
	<link href="<?= base_url() ?>assets/front/css/style.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<link href="<?= base_url("assets/back/vendors/datatables/dataTables.bootstrap4.min.css") ?>" rel="stylesheet">
</head>
<body>

	<!--================ Navigation ================-->
	<?php $this->load->view('front/layouts/_navbar') ?>
	<!--================ End of Navigation ================-->

	<!--================ Content =================-->
	<?php $this->load->view('front/pages/' . $page) ?>
	<!--================ End Content =================-->

	<!--================ start footer Area  =================-->	
	<?php $this->load->view('front/layouts/_footer') ?>
	<!--================ End footer Area  =================-->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src=" <?= base_url() ?>assets/front/js/jquery-3.2.1.min.js"></script>
	<script src=" <?= base_url() ?>assets/front/js/popper.js"></script>
	<script src=" <?= base_url() ?>assets/front/js/bootstrap.min.js"></script>
	<script src=" <?= base_url() ?>assets/front/js/stellar.js"></script>
	<script src=" <?= base_url() ?>assets/front/vendors/lightbox/simpleLightbox.min.js"></script>
	<script src=" <?= base_url() ?>assets/front/vendors/nice-select/js/jquery.nice-select.min.js"></script>
	<script src=" <?= base_url() ?>assets/front/vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script src=" <?= base_url() ?>assets/front/vendors/isotope/isotope-min.js"></script>
	<script src=" <?= base_url() ?>assets/front/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src=" <?= base_url() ?>assets/front/vendors/jquery-ui/jquery-ui.js"></script>
	<script src=" <?= base_url() ?>assets/front/js/jquery.ajaxchimp.min.js"></script>
	<script src=" <?= base_url() ?>assets/front/js/mail-script.js"></script>
	<script src=" <?= base_url() ?>assets/front/js/theme.js"></script>
	<script>$(document).ready(function() {$('.alert').alert().delay(3000).slideUp('slow');});</script>
	<!-- Datatables -->
	<script src="<?= base_url("assets/back/vendors/datatables/jquery.dataTables.min.js") ?>"></script>
	<script src="<?= base_url("assets/back/vendors/datatables/dataTables.bootstrap4.min.js") ?>"></script>
    <script src="<?= base_url("assets/back/vendors/sweetalert2/sweetalert2.js") ?>"></script>
	<!-- For Datatable -->
	<?php if(isset($datatable)){$this->load->view('back/pages/'. $datatable);	}?>
	<!-- For Chart in Dashboard -->
	<?php if(isset($pageChart)){$this->load->view('back/layouts/'. $pageChart);}?>
</body>
</html>