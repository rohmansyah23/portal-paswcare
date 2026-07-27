<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url('dokter'); ?>">
        <div class="sidebar-brand-icon">
            <i class="fas fa-shield-cat"></i>
        </div>
        <div class="sidebar-brand-text mx-1">Dokter PawsC</div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Looping Menu -->
    <div class="sidebar-heading">Home</div>
    <li class="nav-item <?php if($page === 'index') { echo 'active'; } ?>">
        <a class="nav-link pb-0" href="<?= base_url('dokter'); ?>">
            <i class="fas fa-fw fa-bars-progress"></i>
            <span>Dashboard</span>
        </a>
    </li>

    <hr class="sidebar-divider mt-3">

    <div class="sidebar-heading">Manajemen Dokter</div>

    <ul class="navbar-nav">
        <li class="nav-item <?php if($page === 'tanya') { echo 'active'; } ?>">
            <a class="nav-link pb-0" href="<?= base_url('dokter/tanya'); ?>">
                <i class="fas fa-fw fa-envelope"></i>
                <span>Jawab Pertanyaan</span>
            </a>
        </li>

        <li class="nav-item <?php if($page === 'home') { echo 'active'; } ?>">
            <a class="nav-link pb-0" href="<?= base_url('home'); ?>">
                <i class="fa-solid fa-house-user"></i>
                <span>Halaman Utama</span>
            </a>
        </li>
    </ul>

    <!-- Divider -->
    <hr class="sidebar-divider mt-3">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
   
    <!-- Divider -->
    <hr class="sidebar-divider mt-3">
</ul>