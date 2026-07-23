# PawsCare

Portal Kesehatan Hewan Anabul dan Anubis dengan Pemetaan Lokasi dan Fakta Seru.

## Tech Stack

- **Backend**: CodeIgniter 3
- **Frontend**: Bootstrap 4
- **Database**: MySQL (MariaDB)
- **Auth**: Ion Auth
- **Libraries**: jQuery DataTables, SweetAlert2, Summernote (WYSIWYG Editor)

## Features

### Public
- Artikel kesehatan hewan (Anabul & Anjing)
- Kategori: Kesehatan, Tips & Trik, Anabul, Anubis
- Galeri foto
- Halaman Klinik
- Halaman Tentang & Kontak
- Pencarian artikel

### Admin (CMS)
- Dashboard statistik
- Manajemen artikel (posting, kategori)
- Manajemen media (album, galeri, banner)
- Manajemen menu & submenu
- Pengaturan identitas web & kontak
- Autentikasi & manajemen user (Ion Auth)

## Requirements

- PHP >= 5.3.7
- MySQL >= 5.7 / MariaDB >= 10.4
- Apache / Nginx dengan modul `mod_rewrite`
- Composer (optional)

## Installation

1. **Clone repository**

   ```bash
   git clone https://github.com/rohmansyah23/portal-paswcare.git
   ```

2. **Buat database**

   Buat database baru bernama `portal-pawscare` di phpMyAdmin atau MySQL CLI:

   ```sql
   CREATE DATABASE portal-pawscare;
   ```

3. **Import database**

   Import file SQL yang tersedia:

   ```
   database/portal-pawscare.sql
   ```

4. **Konfigurasi database**

   Buka `application/config/database.php` dan sesuaikan kredensial:

   ```php
   $db['default'] = array(
       'hostname' => 'localhost',
       'username' => 'root',
       'password' => '',
       'database' => 'portal-pawscare',
       'dbdriver' => 'mysqli',
       // ...
   );
   ```

5. **Konfigurasi base_url**

   Buka `application/config/config.php` dan atur base URL:

   ```php
   $config['base_url'] = 'http://localhost/portal-paswcare/';
   ```

6. **Pastikan mod_rewrite aktif**

   Pastikan file `.htaccess` di root berfungsi untuk menghapus `index.php` dari URL.

## Default Admin

Akses halaman admin dengan menambahkan `/admin` di URL:

```
http://localhost/portal-paswcare/admin
```

| Field    | Value              |
|----------|--------------------|
| Email    | `admin@admin.com`  |
| Password | `password`         |

> **Penting**: Segera ubah password default setelah login pertama kali!

## Project Structure

```
portal-paswcare/
├── application/
│   ├── controllers/      # Controller (Home, Admin, Auth, Blog, dll)
│   ├── models/           # Model (Posting, Category, Gallery, dll)
│   ├── views/
│   │   ├── front/        # Tampilan publik
│   │   └── back/         # Tampilan admin
│   ├── config/           # Konfigurasi CI
│   ├── helpers/          # Custom helper (ciblog, dateindo)
│   └── libraries/        # Custom library
├── assets/
│   ├── front/            # Aset frontend (CSS, JS, images)
│   └── back/             # Aset admin
├── database/
│   └── portal-pawscare.sql
├── images/               # Upload images
├── system/               # CodeIgniter core (jangan diedit)
└── index.php             # Front controller
```

## Database Schema

| Tabel           | Deskripsi                          |
|-----------------|------------------------------------|
| `posting`       | Artikel / postingan                |
| `category`      | Kategori artikel                   |
| `banner`        | Banner gambar                      |
| `album`         | Album galeri                       |
| `gallery`       | Foto dalam galeri                  |
| `identity`      | Identitas / pengaturan website     |
| `contact`       | Informasi kontak                   |
| `menu`          | Menu navigasi admin                |
| `submenu`       | Sub menu admin                     |
| `users`         | User terdaftar (Ion Auth)          |
| `users_groups`  | Relasi user dan group              |
| `groups`        | Grup user (admin, members)         |
| `login_attempts`| Catatan percobaan login            |

## License

MIT License

## Author

**Muhammad Rohman Syah** - [GitHub](https://github.com/rohmansyah23)
