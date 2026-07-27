# PawsCare

Portal informasi seputar hewan peliharaan (kucing & anjing), dilengkapi dengan rekomendasi klinik hewan, forum komunitas, dan manajemen artikel.

## Spesifikasi

| Teknologi | Keterangan |
|-----------|------------|
| CodeIgniter 3 | PHP Framework |
| PHP 8.x | Backend |
| MySQL / MariaDB | Database |
| Bootstrap 4 | Frontend Framework |
| jQuery DataTables | Tabel interaktif |
| Ion Auth | Autentikasi admin |
| SweetAlert2 | Notifikasi popup |
| Summernote | Rich Text Editor |

## Konfigurasi

1. Jalankan **Apache** & **MySQL** dari XAMPP
2. Buat database bernama `pawscare`
3. Import file `pawscare.sql` ke phpMyAdmin
4. Akses aplikasi di `http://localhost/pawscare`

## Login Admin

| Field | Value |
|-------|-------|
| URL | `http://localhost/pawscare/admin` |
| Email | `admin@gmail.com` |
| Password | `password` |

## Fitur

- **Halaman Utama** — Artikel pilihan, trending, dan berita terbaru
- **Blog** — Kategori artikel (Anabul, Anubis, Kesehatan, Tips & Trik)
- **Klinik Hewan** — Daftar rekomendasi klinik hewan di Jakarta & Bekasi
- **Komunitas** — Forum tanya jawab seputar hewan peliharaan
- **Admin Panel** — Manajemen artikel, kategori, klinik, iklan, banner, galeri, menu, member, identity, dan pertanyaan

## Struktur Folder

```
pawscare/
├── application/
│   ├── controllers/
│   │   ├── front/          # Frontend controllers
│   │   └── back/           # Admin panel controllers
│   ├── models/             # Models (My_model, Identity_model, dll)
│   ├── views/
│   │   ├── front/          # Tampilan user
│   │   └── back/           # Tampilan admin
│   └── config/             # Konfigurasi database, autoload, dll
├── system/                 # CodeIgniter 3 core
├── assets/                 # CSS, JS, gambar
├── images/                 # Upload gambar (favicon, banner, klinik)
└── pawscare.sql            # Database dump
```

## Catatan Developer

- **PHP 8.x Compatibility**: Beberapa patch diterapkan untuk kompatibilitas PHP 8.x:
  - `Session_files_driver.php` — `#[\ReturnTypeWillChange]` untuk metode session
  - `system/core/Output.php` — Null coalescing pada `str_replace()` untuk mencegah deprecation warning
- **My_model**: Model generik untuk CRUD & DataTables, menggunakan `init($controller)` untuk property dinamis
- **Database Tables**: `identity`, `posting`, `klinik`, `tanya`, `iklan`, `banner`, `album`, `gallery`, `category`, `submenu`, `menu`, `contact`, `user`, `role`
