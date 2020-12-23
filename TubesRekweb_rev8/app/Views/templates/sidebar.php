<ul class="navbar-nav bg-gradient-dark sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-book"></i>
        </div>
        <div class="sidebar-brand-text mx-3">RBook</div>
    </a>

    <?php if (in_groups('admin')) : ?>
        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            User Management
        </div>


        <!-- Nav Item - edit Profile -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('komik'); ?>">
                <i class="fas fa-book-open"></i>
                <span>Data Buku</span></a>
        </li>


        <!-- Nav Item - Daftar Pengguna -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('admin'); ?>">
                <i class="fas fa-users"></i>
                <span>Daftar Pengguna</span></a>
        </li>

    <?php endif; ?>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
        Profil Pengguna
    </div>

    <!-- Nav Item - Profil Pengguna -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('user'); ?>">
            <i class="fas fa-user"></i>
            <span>Profil Saya</span></a>
    </li>

    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('buku'); ?>">
            <i class="fas fa-book"></i>
            <span>Daftar Buku</span></a>
    </li>
    <?php if (in_groups('user')) : ?>
        <!-- Nav Item - Profil Pengguna -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('pages'); ?>">
                <i class="fas fa-home"></i>
                <span>Home</span></a>
        </li>
    <?php endif; ?>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Nav Item - Logout -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('logout'); ?>">
            <i class="fas fa-sign-out-alt"></i>
            <span>Logout</span></a>
    </li>


    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>