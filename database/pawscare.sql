-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jul 2026 pada 14.52
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pawscare`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `album_seo` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id`, `album_name`, `album_seo`, `photo`, `is_active`) VALUES
(17, 'Album 1', 'album-1', 'album-1-1581343722711.jpg', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id`, `title`, `photo`) VALUES
(5, 'Home', '5ad69227804e36465f5ccdfe30274544.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `category_name`, `slug`, `is_active`) VALUES
(6, 'Anabul', 'anabul', 'Y'),
(7, 'Anubis', 'anubis', 'Y'),
(8, 'Kesehatan', 'kesehatan', 'Y'),
(9, 'Tips & Trik', 'tips-trik', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id`, `contact_name`, `description`) VALUES
(1, 'Tentang Kami', 'Portal Kesehatan Hewan Anabul dan Anubis dengan Pemetaan Lokasi dan Fakta Seru adalah sebuah portal yang menyediakan informasi dan layanan kesehatan hewan, terutama bagi dua jenis hewan yang berbeda, yaitu Anabul dan Anubis. Portal ini mencakup berbagai Penyakit dan solusi hewan, Mulai dari pemeliharaan, solusi, pemetaan lokasi dan fakta seru.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `gallery_name` varchar(100) NOT NULL,
  `gallery_seo` varchar(100) NOT NULL,
  `information` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id`, `id_album`, `gallery_name`, `gallery_seo`, `information`, `photo`, `is_active`) VALUES
(9, 17, 'Galeri 2', 'galeri-2', 'LIfe is Strange', 'galeri-2-15815614412.jpg', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identity`
--

CREATE TABLE `identity` (
  `id` int(11) NOT NULL,
  `web_name` varchar(255) NOT NULL,
  `web_address` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `identity`
--

INSERT INTO `identity` (`id`, `web_name`, `web_address`, `meta_description`, `meta_keyword`, `photo`) VALUES
(1, 'PawsCare', 'PawsCare', 'Latest Indonesia and World News Today, the Latest Most Complete Daily News Regarding Politics, Economy, Travel, Technology, Automotive, ...', 'pawscare.com', 'c551664b65bad27d6b56ac71bfdd016f.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `iklan`
--

CREATE TABLE `iklan` (
  `id` int(11) NOT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `iklan`
--

INSERT INTO `iklan` (`id`, `link`, `image`, `status`) VALUES
(1, 'https://youtube.com', 'c7dead7ebb83756509e99c83486f0fc9.png', 'aktif'),
(2, 'https://chatgpt.com', '2263ec8f02b0b0a9d815fe38c572f5b1.png', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `klinik`
--

CREATE TABLE `klinik` (
  `id_klinik` int(11) NOT NULL,
  `wilayah` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jam_buka` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nomor` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `maps` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `klinik`
--

INSERT INTO `klinik` (`id_klinik`, `wilayah`, `nama`, `alamat`, `jam_buka`, `nomor`, `maps`) VALUES
(1, 'Jakarta', 'Klinik Hewan Drh. Husnul Hamdi', 'Jl. H. Naman No.10, RT.13/RW.3, Pondok Kelapa, Kecamatan Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13450', 'Buka Pukul 09.00-23.00', '+62 818-711-721', ''),
(2, 'Jakarta', 'KAHFKAHF Petcare Praktek Drh Reza Sofa', 'Jl. Swakarsa IV No.11, RT.5/RW.2, Pondok Kelapa, Kec. Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13450', 'Buka Pukul 10.00-21.00', '081806511385', ''),
(3, 'Jakarta', 'Klinik Hewan THB Vet Duren Sawit', 'Blok I14 No.6C, Jl. Pondok Kelapa Raya, Pondok Kelapa, Kecamatan Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13450', 'Buka Pukul 09.00-21.00', '082311211898', ''),
(4, 'Bekasi', 'MOMi Pet Care 1 Bintara Jaya', 'Jl. Bintara Jaya No.4, RT.005/RW.3, Bintara Jaya, Kecamatan Bekasi Barat, Kota Bekasi, Jawa Barat 17136', 'Buka Pukul 09.00-22.00', '085260299500', ''),
(5, 'Jakarta', 'Petsmile Dok Nyom', 'Jl. Rawa Domba No.60 4, RT.2/RW.16, Duren Sawit, Jakarta, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13440', 'Buka Pukul 10.00-20.00', '02129190567', ''),
(6, 'Bekasi', 'Vetstoria Animal Care', 'Jl. Bintara Jaya, Bintara, Kecamatan Bekasi Barat, Kota Bekasi, Jawa Barat 17134', 'Buka Pukul 09.00-21.00', '(+62) 821-2929-3129', ''),
(7, 'Bekasi', 'Rebban Praktek Dokter Hewan dan Petshop', 'Komplek, Ruko Grand Galaxy City, Jl. Pulo Sirih Bar. Raya No.003 Blok N, RT.001/RW.020, Jaka Setia, Kec. Bekasi Sel., Kota Bks, Jawa Barat 17147', 'Buka Pukul 09.00-20.00', '+62 812-4106-1434', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 'Setting Web', '', 'fas fa-fw fa-cog', 'Y'),
(2, 'Setting Menu', '', 'fas fa-fw fa-sliders-h', 'Y'),
(3, 'Manajemen Artikel', '', 'fas fa-fw fa-newspaper', 'Y'),
(4, 'Media', '', 'fas fa-fw fa-photo-video', 'Y'),
(5, 'Profile', 'home', 'fas fa-fw fa-home', 'Y'),
(6, 'Logout', 'auth/logout', '', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posting`
--

CREATE TABLE `posting` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `featured` char(1) NOT NULL,
  `choice` char(1) NOT NULL,
  `thread` char(1) NOT NULL,
  `id_category` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `sumber_gambar` varchar(255) NOT NULL DEFAULT '',
  `sumber_informasi` varchar(255) NOT NULL DEFAULT '',
  `is_active` char(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `posting`
--

INSERT INTO `posting` (`id`, `title`, `seo_title`, `content`, `featured`, `choice`, `thread`, `id_category`, `photo`, `sumber_gambar`, `sumber_informasi`, `is_active`, `date`) VALUES
(69, 'Tentang Kucing (Felis silvestris catus)', 'tentang-kucing-felis-silvestris-catus', '<p>Kucing adalah mamalia domestik yang merupakan bagian dari keluarga Felidae dan spesies Felis catus.</p>Kucing adalah salah satu hewan peliharaan paling populer di dunia. Mereka adalah mamalia yang terkenal dengan keanggunan, kecerdasan, dan kemandirian mereka. Ada banyak ras kucing yang berbeda, mulai dari yang berbulu pendek hingga yang berbulu panjang, dengan berbagai warna dan pola.\r\n\r\nSecara sejarah, kucing telah menjadi bagian penting dari kehidupan manusia selama ribuan tahun. Mereka awalnya dipercaya menjadi pemburu tikus dan hewan pengerat lainnya di sekitar permukiman manusia kuno, dan akhirnya, mereka menjadi hewan peliharaan yang disayangi.</p>\r\n\r\nKucing dikenal karena kepribadian mereka yang unik. Mereka bisa sangat manja dan menyayangi pemiliknya, tetapi juga bisa menjadi independen dan memiliki kepribadian yang kuat. Kucing juga dikenal sebagai hewan yang sangat bersih, sering menjilati diri mereka sendiri untuk membersihkan bulu mereka.</p>\r\n\r\nSelain sebagai hewan peliharaan, kucing juga menjadi subjek dalam banyak mitos, legenda, dan cerita populer di berbagai budaya di seluruh dunia. Mereka sering dianggap sebagai simbol keberuntungan, kebijaksanaan, atau bahkan kejahatan dalam berbagai kepercayaan dan tradisi.</p>\r\n\r\nKucing memiliki kemampuan luar biasa dalam hal keseimbangan, kecepatan, dan kelincahan. Mereka sering kali dilihat melompat tinggi atau merayap di tempat-tempat yang sulit dijangkau.</p>\r\n<h5>Berikut beberapa informasi lebih lanjut tentang kucing : </h5></p>\r\n\r\n<b>Klasifikasi Ilmiah  </b>\r\n<p class=\"\">Kucing adalah bagian dari famili Felidae, yang juga mencakup spesies-spesies kucing besar lainnya seperti singa (Panthera leo), harimau (Panthera tigris), dan cheetah (Acinonyx jubatus). Spesies domestik kucing diberi nama ilmiah Felis catus.</p>\r\n<b>Asal Usul</b>\r\n<p class=\"\">Kucing merupakan hewan yang telah dijinakkan oleh manusia selama ribuan tahun. Mereka diyakini pertama kali dijinakkan di wilayah Mesir Kuno sekitar 4.000 hingga 9.000 tahun yang lalu.</p>\r\n<b>Perilaku</b>\r\n<p class=\"\">Kucing adalah hewan yang mandiri dan penjaga. Mereka biasanya sangat bersih, suka tidur, dan memiliki naluri berburu yang kuat. Kucing juga bisa menjadi hewan yang sangat penuh kasih terhadap pemiliknya, meskipun mereka sering menunjukkan kepribadian yang mandiri.</p>\r\n<b>Makanan</b>\r\n<p class=\"\">Kucing adalah karnivora obligat, yang berarti mereka membutuhkan makanan yang terutama terdiri dari daging. Makanan kucing komersial yang dijual umumnya telah diformulasikan untuk memenuhi kebutuhan nutrisi mereka.</p>\r\n\r\n<p>Secara keseluruhan, kucing merupakan hewan yang menarik dan menyenangkan untuk dipelihara. Mereka tidak hanya menyediakan teman yang baik, tetapi juga bisa menjadi bagian integral dari kehidupan manusia dengan menyediakan hiburan, kenyamanan, dan bahkan dukungan emosional.</p>', 'N', 'Y', 'Y', 6, 'd6e1d2c0c0895ea05fd2f02aeb4be7c6.jpg', '', '', 'Y', '2024-04-16'),
(70, 'Tentang Anjing (Canis lupus familiaris)', 'tentang-anjing-canis-lupus-familiaris', '<p>Anjing (Canis lupus familiaris) adalah hewan mamalia keturunan serigala yang sudah mengalami penjinakkan sejak 15.000 tahun yang lalu. Berdasarkan bukti genetik berupa penemuan fosil dan tes DNA, domestikasi ini mungkin sudah terjadi sejak 100.0000 tahun yang lalu.</p>Hingga saat ini, anjing sudah berkembang menjadi ratusan ras dengan berbagai macam variasi. Warna rambut mereka juga beraneka ragam, mulai dari hitam, abu-abu, coklat, hingga merah dan putih. Selain itu, hewan ini juga memiliki berbagai jenis rambut. Misalnya, lurus atau keriting, bertekstur kasar hingga lembut seperti benang wol.</p>Hewan satu ini juga melakukan banyak peran untuk manusia, seperti berburu, menggiring (domba), menarik beban, melindungi, membantu polisi dan militer, menjadi sahabat, terapi, dan membantu orang-orang cacat.</p>\r\nTentang anjing, ada banyak aspek yang menarik untuk dibahas. </p>\r\n<h5>Berikut beberapa informasi tambahan seputar anjing : </h5></p>\r\n\r\n<b>Klasifikasi Ilmiah</b>\r\n<p>Anjing termasuk dalam spesies Canis lupus familiaris, yang merupakan subspesies dari serigala abu-abu<br> (Canis lupus). Mereka adalah bagian dari keluarga Canidae, yang juga mencakup serigala, rubah, dan jenis-jenis lainnya.</p>\r\n<b>Perilaku dan Komunikasi</b>\r\n<p>Anjing menggunakan berbagai bentuk komunikasi untuk berinteraksi dengan sesama anjing dan manusia. Ini termasuk gerakan tubuh, ekspresi wajah, suara seperti menggonggong, menggeram, dan melolong, serta sentuhan fisik. Anjing juga memiliki kemampuan untuk membaca ekspresi wajah manusia dan menangkap emosi mereka.</p>\r\n<b>Makanan</b>\r\n<p>Anjing adalah pemakan daging, tetapi dalam keadaan domestik mereka dapat menerima makanan yang bervariasi termasuk makanan kering, basah, dan makanan mentah. Penting untuk memilih makanan yang sesuai dengan kebutuhan nutrisi dan kesehatan mereka.</p>\r\n<b>Kemampuan Sosial</b>\r\n<p>Anjing adalah hewan sosial yang cenderung membentuk ikatan yang kuat dengan manusia dan sesama anjing. Mereka memiliki kemampuan yang luar biasa untuk membaca ekspresi wajah manusia dan menanggapi emosi kita.</p>\r\n<b>Harapan Hidup</b>\r\n<p>Harapan hidup anjing bervariasi tergantung pada ras, ukuran, dan faktor-faktor lainnya. Anjing kecil cenderung hidup lebih lama daripada anjing besar. Rata-rata, anjing biasanya hidup antara 10 hingga 15 tahun, tetapi beberapa bisa hidup lebih lama.</p>\r\n\r\n<p>Secara keseluruhan, anjing merupakan hewan yang mengagumkan dan memiliki hubungan yang istimewa dengan manusia. Keberadaan mereka tidak hanya memberi warna dalam kehidupan kita, tetapi juga membawa manfaat emosional, fisik, dan sosial yang besar bagi kita sebagai manusia.<p>', 'Y', 'Y', 'Y', 7, '6c4dec577bbc5fff556803f30c73a11f.jpg', '', '', 'Y', '2024-04-16'),
(71, 'Ketahui tentang Virus Parvo yang Bisa Menyerang Anjing dan Kucing', 'ketahui-tentang-virus-parvo-yang-bisa-menyerang-anjing-dan-kucing', '<p><b>Sobat Paws - </b>Virus parvo, disebut juga <i>Canine parvovirus</i> (CPV) adalah salah satu virus paling serius yang bisa menyerang anjing. Virus ini ditemukan pada tahun 1967 dan dengan cepat menjadi ancaman serius bagi kesehatan anjing. Hal ini karena virus ini sulit untuk dibunuh, dapat hidup lama di lingkungan, dan dilepaskan dalam jumlah besar oleh anjing yang terinfeksi.</p>Pada kucing, infeksi parvovirus dikenal dengan nama feline panleukopenia, yang disebabkan oleh <i>Feline parvovirus</i> (FPV). Virus tersebut terkait erat dengan canine parvovirus, yang biasa menyerang anjing. Saat menginfeksi, virus tersebut hanya akan menyerang sel mitosis atau yang aktif membelah, terutama sel-sel di saluran usus, sumsum tulang, dan kulit, serta menyebabkan kondisi anemia.</p>\r\n<h5>Gejala Infeksi Virus Parvo pada Anjing dan Kucing</h5></p>\r\n<p>Infeksi virus parvo pada anjing sangat berbahaya karena menyerang sel yang membelah dengan cepat di sumsum tulang dan usus. Setelah sumsum tulang terpengaruh, jumlah sel darah putih hewan turun, risiko infeksi meningkat, dan sistem kekebalan mulai menurun. </p>Ketika sel-sel usus terpengaruh, lapisan usus menjadi rusak dan tubuh tidak dapat lagi menyerap nutrisi atau mencerna makanan dengan baik. Akibatnya adalah mual, muntah, dehidrasi, dan diare parah. Virus parvo biasanya menyebabkan diare yang berdarah dengan bau yang jauh lebih buruk daripada kotoran normal anjing.</p>Saat penyakit tersebut menyerang tubuh, anjing menjadi sangat lemah dan dehidrasi. Selain itu, anjing juga dapat mengalami sepsis, yaitu infeksi pada darah yang dapat terjadi ketika dinding usus tidak dapat bertindak sebagai penghalang terhadap bakteri.</p>Infeksi virus parvo menyerang kucing juga dapat memunculkan gejala, seperti :</p>\r\n<ul>\r\n <li>Muntah.</li>\r\n <li>Diare/diare berdarah.</li>\r\n <li>Dehidrasi.</li>\r\n <li>Penurunan berat badan.</li>\r\n <li>Demam tinggi.</li>\r\n <li>Anemia (karena penurunan sel darah merah).</li>\r\n <li>Bulu kasar.</li>\r\n <li>Depresi.</li>\r\n <li>Kehilangan selera makan.</li>\r\n <li>Gejala neurologis, misal kurangnya koordinasi.</li>\r\n</ul>\r\n<h5>Cara Penularan Virus Parvo pada Anjing dan Kucing</h5></p>\r\n<p>Virus parvo paling sering menyerang anak anjing, tetapi anjing dewasa juga dapat tertular penyakit ini jika tidak divaksinasi. Seekor anjing yang sistem kekebalannya terganggu (karena kondisi medis lain) juga berisiko mengalami infeksi <i>Canine parvovirus</i> (CPV).</p>Seekor anjing dapat terinfeksi virus parvo setelah bersentuhan, mencium, atau memakan dengan partikel mikroskopis virus dari kotoran anjing yang terkontaminasi. Virus memasuki sistem tubuh anjing melalui mulut atau hidung. Kemudian, dibutuhkan sekitar tiga hingga tujuh hari hingga penyakit menjadi aktif di dalam tubuh.</p>Dalam beberapa hari, virus akan ditemukan di kotoran anjing yang sakit. Pada titik inilah hal itu dapat memengaruhi anjing lain. Gejala umumnya tidak muncul lagi selama beberapa hari. Virus terus berada di kotoran selama anjing sakit dan beberapa minggu setelah sembuh.</p>Partikel virus parvo juga dapat hidup di tanah atau lingkungan luar ruangan lainnya selama lima hingga tujuh bulan dan bahkan lebih lama di iklim dingin, karena virus dapat bertahan pada suhu beku. Jika partikel tersebut mengenai kaki atau bulu anjing dan kemudian tertelan, anjing tersebut dapat terinfeksi.</p>Sementara itu, pada kucing, Feline parvovirus (FPV) dapat ditularkan ke kucing lain saat bersentuhan dengan darah, kotoran, urine, atau cairan tubuh lainnya yang terinfeksi. Virus ini juga dapat menetap di banyak permukaan benda. Selain itu, anak kucing dapat tertular penyakit ini dalam kandungan atau melalui ASI jika ibu hamil atau menyusui terinfeksi. </p>Meskipun anjing tidak dapat tertular FPV dari kucing, kucing dapat terinfeksi CPV dari anjing. Kucing biasanya memiliki gejala CPV yang jauh lebih ringan daripada anjing. Terkadang, CPV pada anjing juga dapat menyebabkan penyakit parah pada kucing.</p>Baik pada anjing atau kucing, infeksi virus parvo perlu segera diobati. Jika kamu menjumpai berbagai gejala infeksi virus ini pada anjing atau kucing kamu, sebaiknya segera bawa ke dokter hewan untuk diperiksa dan ditangani, sesuai kondisinya.</p>', 'N', 'N', 'N', 8, '2edefcc238b920c457e801befa9ddce8.jpg', '', '', 'Y', '2024-04-19'),
(72, 'Tips Liburan bersama Hewan Peliharaan', 'tips-liburan-bersama-hewan-peliharaan', '<p><b>Liburan bersama Hewan Peliharaan -</b> Bagi kamu yang memiliki hewan peliharaan, baik anjing, kucing, maupun hewan lainnya, tentu kamu tidak ingin berpisah lama-lama dari mereka. Selain karena rasa rindu, tentu ada perasaan khawatir karena tidak bisa menjaga mereka secara langsung dan mautidak mau, mereka perlu dititipkan di penitipan hewan.</p>Namun, biaya untuk penitipan hewan peliharaan tidak semuanya terjangkau. Selain itu, di musim liburan, biasanya tempat penitipan hewan juga sudah dipenuhi oleh hewan peliharaan lain yang mana pemiliknya sudah bepergian juga. Maka dari itu, banyak yang lebih memilih untuk membawa hewan peliharaannya saat bepergian.</p>Jika kamu berencana untuk bepergian bersama hewan peliharaanmu, berikut beberapa tips liburan bersama hewan peliharaan yang perlu diperhatikan.</p>\r\n<h5>Tips Liburan bersama Hewan Peliharaan</h5><br>\r\n<p><b>1. Pastikan Hewan peliharaan nyaman di travel bag atau box</b></p>\r\n<p class=\"container-fluid\">Seperti layaknya manusia yang ingin berada di tempat yang nyaman saat bepergian, maka usahakan untuk menempatkan hewan peliharaan di tempat yang nyaman saat bepergian. Ketika sedang di jalan saat liburan bersama hewan peliharaan, baik di dalam mobil, kereta, maupun pesawat, hewan peliharaanmu perlu berada di tempat yang nyaman pada waktu yang lama. Saat ini, terdapat beberapa pilihan tempat untuk membawa hewan peliharaanmu, baik kandang/travel bag yang disesuaikan dengan ukuran hewan peliharaan dan ruang geraknya.</p>\r\n<p><b>2. Jaga hewan peliharaan agar tetap terhidrasi</b></p>\r\n<p class=\"container-fluid\">Sama seperti kita, hewan juga memerlukan air minum untuk tetap terhidrasi, terutama saat berada di perjalanan panjang. Satu lagi tips berlibur bersama hewan peliharaan yang cukup penting adalah, kamu bisa memasang botol minum untuk peliharaanmu di kandang/travel bag. Namun jika tidak memungkinkan, pastikan kamu dapat berhenti setiap beberapa waktu untuk memberikan minum ke hewan peliharaanmu.</p>\r\n<p><b>3. Mengajak hewan peliharaan ke beberapa tempat pada jarak yang dekat</b></p>\r\n<p class=\"container-fluid\">Jika kamu akan mengajak hewan peliharaan ke luar kota dengan jarak yang jauh, maka sebaiknya dalam beberapa waktu sebelum berlibur bersama hewan peliharaan, kamu sudah mulai mengajak mereka untuk berada di dalam kandang/travel bag agar ia terbiasa berada di dalam mobil. Selain itu, mungkin hewan peliharaanmu akan panik saat berada di suatu tempat yang belum familiar dalam jangka waktu yang lama, dan dapat membuat hewan peliharaanmu stress.</p>\r\n<p><b>4. Bawa mainan kesukaannya</b></p>\r\n<p class=\"container-fluid\">Jika akan melakukan perjalanan untuk waktu yang lama, jangan lupa untuk membawa mainan kesukaan hewan peliharaanmu agar ia tetap terhibur meski berada di dalam sebuah area yang kecil. Tidak hanya manusia, hewan juga dapat merasakan lelah jika tidak bisa berjalan-jalan atau berlari-lari dalam waktu yang lama. Sehingga, hewan peliharaanmu dapat bermain dengan mainannya sambil menghabiskan waktu di dalam kendaraan.</p>\r\n<p><b>5. Persiapkan travel kit hewan peliharaanmu</b></p>\r\n<p class=\"container-fluid\">Biasanya, kita akan mempersiapkan travel kit berupa obat-obatan dan kotak P3K untuk keadaan emergency. Hal tersebut juga diperlukan bagi para hewan peliharaan. Yang perlu kamu persiapkan adalah obat atau vitamin, alat untuk membersihkan kotoran anabul, serta surat imunisasi ataupun riwayat kesehatan hewan peliharaanmu.</p>\r\n<p><b>6. Jangan meninggalkan hewan peliharaan sendirian di dalam mobil</b></p>\r\n<p class=\"container-fluid\">Jika kamu berencana untuk bepergian via jalur darat atau menggunakan mobil, maka kamu sangat tidak dianjurkan untuk meninggalkan hewan peliharaan sendirian di dalam mobil. Selain peliharaanmu bisa kekurangan oksigen, hawa panas juga bisa membuat hewan peliharaan merasa tidak nyaman. Tak hanya itu, hewan peliharaan juga bisa merasa stress bila ditinggalkan sendirian dengan jangka waktu yang panjang di dalam mobil.</p>\r\n<p><b>7. Mengunjungi dokter hewan untuk memeriksa kesehatan hewan peliharaanmu sebelum berangkat bepergian</b></p>\r\n<p class=\"container-fluid\">Untuk memastikan bahwa hewan peliharaanmu sehat untuk bepergian atau membutuhkan perlakuan khusus selama di perjalanan, sebaiknya konsultasikan terlebih dahulu dengan dokter hewan sebelum liburan mu bersama hewan peliharaan mu. Hal tersebut disebabkan karena beberapa jenis hewan peliharaan membutuhkan tempat khusus saat bepergian atau membutuhkan snack setiap beberapa waktu untuk mengurangi tingkat kecemasannya.</p>\r\n<p><b>8. Tahu kapan harus meninggalkan hewan peliharaanmu di rumah</b></p>\r\n<p class=\"container-fluid\">Tips liburan bersama hewan peliharaan selanjutnya adalah tahu kapan kamu dapat meninggalkan hewan peliharaanmu di rumah. Jika kamu bepergian dan akan menginap di rumah keluarga atau rumahmu di kota lain, maka pertimbangkan untuk meninggalkan hewan peliharaan sejenak di rumah. Hal tersebut dikarenakan tempat yang akan kamu datangi di daerah tersebut belum tentu memperbolehkan hewan peliharaan masuk atau bisa membuat hewan peliharaanmu kurang nyaman. Sebagai contoh, kamu akan pergi ke café yang ukurannya tidak begitu luas. Jika kamu membawa hewan peliharaanmu, hal ini bisa mengganggu tamu lain ataupun justru hewan peliharaanmu kurang nyaman karena tidak memiliki banyak ruang gerak. Ingat, kamu perlu mempertimbangkan kenyamanan peliharaanmu dan juga tamu lain yang mengunjungi tempat tersebut.</p>\r\n<p><b>9. Membaca peraturan terkait bepergian bersama hewan peliharaan dari instansi terkait</b></p>\r\n<p class=\"container-fluid\">Di era pandemi ini, kamu perlu banyak mencari tahu mengenai peraturan-peraturan dalam bepergian untuk mencegah terjadinya penularan COVID-19 dari/ke hewan. Apabila kamu berkendara dengan kereta, maka kamu perlu melihat kebijakan dari PT. KAI terkait hewan bepergian bersama peliharaan. Sementara, jika kamu akan bepergian dengan pesawat udara, maka kamu perlu memastikan dengan pihak maskapai terkait apa saja yang perlu diperhatikan dan dipersiapkan.</p>\r\n<p><b>10. Menginap di akomodasi yang memperbolehkan hewan peliharaan</b></p>\r\n<p class=\"container-fluid\">Saat bepergian ke luar kota atau bahkan negeri, tentu kamu perlu merencanakan tempat akomodasi. Salah satu hal penting yang perlu kamu perhatikan adalah bahwa tidak seluruh akomodasi memperbolehkan tamunya membawa hewan peliharaan. Bahkan, kebanyakan dari akomodasi melarang adanya hewan peliharaan sehingga kamu perlu mencari akomodasi dari jauh hari.\r\n<p class=\"container-fluid\">\r\nUntuk memudahkan kamu dalam mencari akomodasi yang memperbolehkan kamu menginap bersama hewan peliharaan, kamu bisa memesan kamar hotel via Traveloka dan melihat checklist fasilitasnya. Traveloka sudah mencantumkan fasilitas-fasilitas yang ditawarkan suatu akomodasi, termasuk izin membawa hewan peliharaan. Selain itu, perhatikan juga bahwa beberapa akomodasi bisa saja meminta biaya tambahan jika tamu membawa hewan peliharaannya.</p>\r\n<p><b>11. Pastikan kamu membawa dokumen yang tepat</b></p>\r\n<p class=\"container-fluid\">Tips liburan bersama hewan peliharaan yang terakhir adalah kamu perlu memastikan dokumen-dokumen yang kamu bawa. Beberapa dokumen-dokumen pendukung mungkin diperlukan saat kamu bepergian dengan hewan peliharaan terutama jika kamu menggunakan pesawat udara. Sebagai contoh, surat-surat yang berhubungan dengan kesehatan hewan peliharaanmu atau syarat-syarat lainnya.</p>\r\n<p>\r\n	Nah, sekarang kamu sudah tahu kan tips liburan bersama hewan peliharaan ?</p>Pikirkan secara matang terkait liburanmu bersama hewan peliharaan: buat daftar kelebihan dan kekurangan membawa hewan peliharaan saat liburan agar kamu bisa lebih mantap saat menentukan pilihan. Selain itu, kamu juga bisa mencoba melakukan tips nomor 3 yaitu mengajak hewan peliharaan ke beberapa tempat pada jarak yang dekat untuk melihat bagaimana reaksinya saat diajak bepergian.\r\n</p>', 'N', 'N', 'N', 9, '523d3ade47442c30c5873284cd8555ce.jpg', '', '', 'Y', '2024-04-16'),
(73, '10 Fakta Seru Kucing yang Harus Kamu Ketahui', '10-fakta-seru-kucing-yang-harus-kamu-ketahui', ' <p> Selain karena wajah yang menggemaskan, Kucing juga terlihat menarik karena nampak selalu diselimuti misteri.\r\n Bahkan, terkadang kita tidak mengetahui apa saja yang di lakukan kucing di rumah seharian, kecuali kita memasang benda canggih seperti pet <i>Camera</i> atau kamera untuk mengawasinya. Karena itu, tidak aneh pula jika banyak mitos dan misteri yang muncul soal kucing Kendati demikian, tentu saja pecinta kucing pasti ingin lebih mengenal hewan kesayangannya itu.</p>\r\n<h5>Simak 10 Fakta Seru soal Kucing Berikut ini : </h5></p>\r\n<b>1. Kucing rupanya \"Pemalas\"</b></p>\r\n<p class=\"container-fluid\">Jika kebanyakan hewan lain lebih suka “bekerja” untuk mendapatkan makanannya meski disediakan makanan gratis, kucing justru sebaliknya. Jika kucing diberi pilihan makanan dengan puzzle atau makanan “gratis,” kucing pasti akan memilih mangkuk makanan yang membuatnya tidak perlu berusaha sama sekali.</p>\r\n<b>2. Egyptian Miaw adalah kucing rumahan Tercepat</b></p>\r\n<p class=\"container-fluid\">Egyptian Miaw merupakan kucing rumahan tercepat di dunia dan dapat berlari secepat 48 kilometer per jam.</p>\r\n<b>3. Tidak semua kucing suka <i>Catnip</i></b></p>\r\n<p class=\"container-fluid\">Meski banyak yang berpendapat sebaliknya, rupanya tidak semua kucing menyukai <i>catnip</i> . Banyak ilmuwan yang meyakini bahwa menyukai catnip disebabkan oleh keturunan.</p>\r\n<b>4. Kucing bisa dilatih</b></p>\r\n<p class=\"container-fluid\">Berlawanan dengan anggapan populer, kucing rupanya bisa dilaih dengan metode positive reinforcement alias cara melatih dengan memberikan konsekuensi positif saat kucing melakukan apa yang kita inginkan. Misalnya, dengan memberi camilan setelah melatih kucing. Kucing bahkan bisa mempelajari berbagai hal, mulai dari macam-macam trik dan berjalan dengan leash (tali).</p>\r\n<b>5. Sudah hidup lebih dari 4.000 tahun lalu</b></p>\r\n<p class=\"container-fluid\">Sebuah pemakaman berusia 9.500 tahun yang ditemukan di Cyprus membuktikan bahwa ada manusia yang dikubur bersama kucing peliharaannya. Ini membuktikan bahwa kucing sudah hidup jauh lebih lama, bahkan melebihi karya seni asal Mesir bergambar kucing yang diperkirakan sudah berumur lebih dari 4.000 tahun.</p>\r\n<b>6. Pengelihatan kucing bagus, tapi...</b></p>\r\n<p class=\"container-fluid\">Memiliki pengelihatan jarak jauh yang luar biasa, objek yang ada di dekat kucing justru akan terlihat buram atau <i> blur</i>. Jadi saat bermain dengan kucing, sebaiknya jaga agar mainan tetap berada di jarak yang cukup jauh dengan kucing, sehingga “mangsa” itu terlihat jelas di matanya.</p>\r\n<b>7. Kucing dapat mengeluarkan banyak suara</b></p>\r\n<p class=\"container-fluid\">Banyak pakar perilaku kucing yang meyakinii bahwa kucing dapat mengeluarkan lebih dari 20 suara unik dengan berbagai makna yang berbeda.</p>\r\n<b>8. Memiliki lebih dari 500 otot</b></p>\r\n<p class=\"container-fluid\">Kucing memiliki lebih dari 500 otot dan lebih dari 200 tulang. Di ekornya saja ada sekitar 23 tulang.</p>\r\n<b>9. Mengapa kucing senang \"Memijat\" kita?</b></p>\r\n<p class=\"container-fluid\">Gerakan memijat atau kneading adalah perilaku menenangkan yang dipelajari kucing saat masih bayi. Karena itu, saat mau tidur kucing akan melakukannya. Lalu jika kucing melakukannya pada kita, artinya kucing menempelkan bau dari kakinya pada kita, yang berarti kucing menyukai kita.</p>\r\n<b>10. Kucing bisa melompat tinggi</b></p>\r\n<p class=\"container-fluid\">Rata-rata kucing yang sehat bisa melompat cukup tinggi. Saat ini, pemegang rekor kucing dengan lompatan tertinggi adalah Waffle the Warrior Cat, yang bisa melompat sejauh 2,13 meter.</p>', 'N', 'Y', 'Y', 6, 'b1a0af06009918a4e413a9669ddb7fa6.jpg', '', '', 'Y', '2024-04-16'),
(74, '10 Fakta Seru tentang Anjing yang Harus Kamu Ketahui', '10-fakta-seru-tentang-anjing-yang-harus-kamu-ketahui', ' <p> Memelihara hewan seperti anjing memang menyenangkan dan banyak manfaatnya. Namun sebelumnya, kita perlu memahami anjing, mulai dari asal usul hingga makna di setiap gerakannya Nah, tidak semua orang cukup mengetahui sebenarnya bagaimana seekor anjing beradaptasi, apa yang disukai dan tidak, serta banyak fakta lain tentang anjing yang mungkin menjadi misteri. Untuk memahaminya lebih lanjut, kita bisa melihat fakta seru tentang anjing berikut ini.\r\n<h5>Yuk, langsung saja kita simak sederet Fakta Seru tentang anjing</h5></p>\r\n<b>1. Bermimpi Seperti Manusia </b></p>\r\n<p class=\"container-fluid\">Jika kita pernah memperhatikan anjing peliharaan bergerak-gerak dalam tidurnya, ini mungkin berarti dia sedang bermimpi. Para peneliti menemukan, bahwa anjing memiliki pola tidur dan aktivitas otak yang serupa dengan manusia. Anjing ras kecil cenderung bermimpi lebih banyak daripada yang besar. Psychology Today menunjukkan, anjing mungkin membayangkan aktivitas yang sudah dikenal seperti bermain di luar atau mengejar ekornya.</p>\r\n<b>2. Kibasan Ekornya Memiliki Arti Tersendiri</b></p>\r\n<p class=\"container-fluid\">Anjing yang mengibas-ngibaskan ekornya dengan bersemangat tidak selalu berarti dia sedang merasa senang. Menurut Discovery.com, anjing mengibaskan ekornya ke kanan saat senang dan ke kiri saat ketakutan. Ekor yang bergoyang-goyang berarti anjing merasa tidak aman. Jika ekor bergoyang-goyang dengan cepat, disertai otot yang tegang atau pupil membesar itu dapat menandakan agresi.</p>\r\n<b>3. Memakan Kotorannya Sendiri</b></p>\r\n<p class=\"container-fluid\">Bukan rahasia lagi jika anjing sering kali memakan kotorannya sendiri (dan kotoran lainnya). American Society for the Prevention of Cruelty to Animals (ASPCA) mengatakan, itu adalah hal yang normal yang berasal dari hari-hari pra-domestikasi ribuan tahun lalu. Memakan kotorannya sendiri ini lebih umum terjadi pada anak anjing meskipun beberapa melakukannya hingga dewasa.</p>\r\n<b>4. Anjing Cemburu</b></p>\r\n<p class=\"container-fluid\">Seorang ahli hewan peliharaan di Chewy, Nikki Naser mengatakan, kita mungkin tidak akan mengetahui secara pasti anjing dapat cemburu saat kita memberi perhatian pada anjing lain. Tetapi penelitian menunjukkan, bahwa sikapnya mirip dengan bagaimana seorang bayi mungkin cemburu. Itu tentu saja sejalan dengan kecerdasan anjing yang setara dengan balita. Kecemburuan anjing ini adalah sesuatu yang normal.</p>\r\n<b>5. Tidak Suka Di Peluk Sangat Erat</b></p>\r\n<p class=\"container-fluid\">Anjing sebenarnya tidak suka jika kita memeluknya terlalu erat. \"Cara manusia menunjukkan cinta tidak sama dengan cara anjing menunjukkan cinta atau ingin menerima cinta,\" ungkap Russell Hartstein, CEO perusahaan pelatihan anak anjing di Los Angeles, Fun Paw Care. \"Faktanya, pelukan yang terlalu erat bisa sangat menegangkan,\" sambung dia. Menurut Hartstein, anjing dapat beradaptasi dan merasa nyaman dengan orang yang disayanginya. Maka, kita harus tetap berhati-hati dalam memberikan pelukan kepada anjing yang tidak kita kenal dengan baik.</p>\r\n<b>6. Menguap Bukan Berarti Mengantuk</b></p>\r\n<p class=\"container-fluid\">Saat anjing menguap lebar, kita mungkin hanya berasumsi bahwa dia sedang mengantuk. Memang, hal itu bisa menjadi tanda kelelahan, tetapi anjing juga menguap karena ada alasan lainnya. Anjing bisa menguap untuk menenangkan diri. Jadi, apabila anjing berulang kali menguap, itu adalah tanda bahwa dia sedang merasa cemas atau stres.</p>\r\n<b>7. Tidak Tertarik pada Kucing</b></p>\r\n<p class=\"container-fluid\">Sejak dulu kita sering melihat anjing dan kucing kerap bertengkar, serta saling kejar-kejaran. Namun hal tersebut juga timbul dari naluri berburu yang membuat anjing dan kucing suka mengejar sesuatu yang kecil dengan cepat. Anjing dan kucing sebenarnya bisa rukun, bahkan tinggal di rumah yang sama. Tapi kembali lagi. Itu semua tergantung pada masing-masing hewan dan bagaimana kita memperkenalkan hewan dengan cara yang benar.</p>\r\n<b>8. Lebih Cepat Panas dari Manusia</b></p>\r\n<p class=\"container-fluid\">Suhu tubuh normal anjing sedikit lebih tinggi dari pada manusia yakni sekitar 38°C hingga 39,1°C (101–102,5 F), yang berarti suhu lebih panas dapat memengaruhinya. Inilah sebabnya mengapa kita perlu berhati-hati saat berjalan-jalan dengan anjing di hari yang panas. Selain itu, jangan lupakan trotoar dan tanah yang menjadi panas dengan cepat di bawah sinar matahari, kemudian bisa menyakiti kaki anjing yang tidak dijaga. Jadi, hari yang mungkin tidak terlalu panas bagi kita bisa menjadi hari yang sangat panas bagi anjing. Itulah mengapa kita harus sangat berhati-hati terhadap tanda peringatan sengatan panas pada anjing.</p>\r\n<b>9. Mengulurkan Tangan Bukan cara yang baik untuk Berkenalan</b></p>\r\n<p class=\"container-fluid\">Kita mungkin tumbuh dengan keyakinan lama untuk mengulurkan tangan kepada anjing yang tidak dikenal. Hal itu mungkin masih bisa berhasil, tetapi kita harus berhati-hati tentang bagaimana kita melakukannya. Mendorong tangan ke arah wajah anjing yang baru dikenal dapat membuatnya takut atau terasing. Lebih baik membiarkan anjing mendekati kita terlebih dahulu dan kemudian menawarkan tangan kepada anjing tersebut untuk mencium. Perlu diketahui, kita sebaiknya mendekati anjing itu dari samping, bukan dari depan jika kita harus mendekatinya.</p>\r\n<b>10. Coklat Berakibat Fatal</b></p>\r\n<p class=\"container-fluid\">Sudah menjadi rahasia umum bahwa anjing tidak bisa makan cokelat, tetapi pernahkah kita bertanya-tanya mengapa? Cokelat mengandung bahan yang disebut theobromine, yang tidak dapat dicerna anjing. Konsumsi cokelat dapat menciptakan penumpukan racun yang sangat parah dalam sistem tubuh dan pada akhirnya bisa mematikan.</p>', 'Y', 'Y', 'Y', 7, '57be350535ee5620c63f58578237d5ae.jpg', '', '', 'Y', '2024-04-16'),
(94, 'Pengertian, Tujuan, Manfaat dari Vaksin Kucing', 'pengertian-tujuan-manfaat-dari-vaksin-kucing', '<h5>Pengertian Vaksin Kucing</h5></p>\r\n<p>Vaksin kucing dapat melindungi hewan ini dari berbagai penyakit yang disebabkan virus atau bakteri. Dokter hewan dapat membantu pemilik hewan peliharaan terkait vaksinasi kucing mana yang terbaik dan seberapa sering kucing harus divaksin. Biasanya tergantung pada usia mereka, kesehatan secara keseluruhan, dan gaya hidup. Dokter hewan juga akan memikirkan berapa lama vaksinasi harus bertahan dan seberapa besar kemungkinan kucing terkena penyakit tertentu. </p>\r\n<h5>Tujuan Vaksin Kucing</h5></p>\r\n<p>Selayaknya vaksinasi pada manusia atau imunisasi, vaksinasi pada kucing bertujuan untuk membantu mempersiapkan sistem kekebalan tubuh. Dengan demikian, tubuh kucing dapat memberikan perlindungan ketika terinfeksi virus ataupun bakteri tertentu. </p>Vaksin kucing mengandung antigen yang terlihat seperti organisme penyakit tersebut. Namun, penyuntikannya tidak akan menyebabkan penyakit, karena hanya mengenalkan penyakit tersebut untuk memicu pertumbuhan antibodi.  Ketika penyakit yang sesungguhnya menyerang, sistem kekebalan tubuh kucing sudah mengenali penyakit tersebut dan bisa melawannya.</p>\r\n<h5>Manfaat Vaksin Kucing</h5></p>\r\n<p>Secara umum, manfaat utama vaksinasi kucing adalah melindungi hewan tersebut dari berbagai penyakit. Baik yang disebabkan oleh infeksi bakteri, maupun infeksi virus. Namun, tak hanya itu, vaksin kucing juga bermanfaat dalam memperkuat sistem imun hewan tersebut. </p>Sebagai contoh, salah satu vaksin yang diberikan untuk kucing adalah vaksin untuk mencegah infeksi feline panleukopenia atau feline parvovirus (FPV). Perlu diketahui bahwa infeksi tersebut merupakan penyakit yang sangat menular dengan tingkat kematian yang tinggi pada anak kucing.</p>Penyakit ini biasanya dimulai dengan penurunan energi dan nafsu makan rendah, berkembang menjadi muntah dan diare. Virus ini juga membunuh sel darah putih, membuat kucing muda lebih rentan terhadap infeksi sekunder.</p>Melalui pemberian vaksin, kucing akan memiliki sistem kekebalan tubuh yang lebih tinggi terhadap infeksi FPV. Alhasil, risiko penularannya akan rendah, jika kucing terinfeksi virus tersebut pun, gejalanya diharapkan tidak terlalu parah. </p>\r\n<h5>Kapan Harus Melakukan Vaksin Kucing?</h5></p>\r\n<p>Secara umum, kucing perlu mendapatkan vaksinasi sedari dini, yaitu ketika masih kitten atau anak kucing. Anak kucing harus mulai mendapatkan vaksinasi ketika mereka berusia enam sampai delapan minggu sampai mereka berusia sekitar 16 minggu. </p>Kemudian, kucing juga perlu mendapatkan vaksinasi booster (tambahan) setahun kemudian, yang dilakukan secara berurutan setiap tiga hingga empat minggu. Sementara itu, kucing dewasa membutuhkan suntikan lebih jarang.  Biasanya kucing dewasa perlu divaksin setiap tahun atau setiap 3 tahun, tergantung pada berapa lama vaksin dirancang untuk bertahan.</p>\r\n<h5>Prosedur Vaksin Kucing</h5></p>\r\n<p>Prosedur vaksinasi kucing biasanya diberikan melalui suntikan di bawah kulit. Kendati demikian, vaksin juga terkadang dapat diberikan sebagai tetes ke mata atau hidung. Prosedur vaksinasi kucing biasanya hanya memakan waktu singkat. Perlu diketahui bahwa semua vaksin yang akan disuntikan harus menjalani pengujian keamanan dan kemanjuran yang ketat, sebelum dilisensikan untuk digunakan pada kucing oleh pihak berwenang. Bila digunakan dengan tepat dan sesuai anjuran, vaksin aman dan memberikan perlindungan penting bagi kucing terhadap sejumlah penyakit.</p>\r\n<h5>Tempat Melakukan Vaksin Kucing</h5></p>\r\n<p>Secara umum, tempat melakukan vaksinasi kucing dapat dilakukan pada klinik dokter hewan atau rumah sakit hewan. Selain itu, petshop juga biasanya menyediakan pelayanan vaksinasi kucing. Melakukan vaksinasi pada hewan peliharaan memang penting. Namun, hal yang tak kalah pentingnya adalah dengan rutin memeriksakan kondisi kesehatan hewan peliharaanmu. Khususnya jika secara tiba-tiba hewan peliharaan terlihat lesu dan tidak mau makan. </p>', 'N', 'N', 'N', 8, '0d7d110a51e13c9c0f8345ce0aa1f325.jpg', '', '', 'Y', '2024-04-19'),
(95, 'Pengertian, Tujuan, Manfaat dari Vaksin Anjing', 'pengertian-tujuan-manfaat-dari-vaksin-anjing', '<h5>Pengertian Vaksin Anjing</h5></p>\r\n<p>Vaksin anjing memainkan peran penting dalam melindungi anjing dari banyak penyakit berbahaya dan bahkan fatal. Selain vaksin rabies, ada sejumlah vaksinasi lain yang dapat melindungi anjing dari penyakit serius yang mudah dicegah.</p>Sama seperti vaksinasi pada manusia, vaksin anjing juga dapat memberi anjing antibodi atau kekebalan untuk melindunginya dari penyakit atau infeksi. </p>\r\n<h5>Tujuan Vaksin Anjing</h5></p>\r\n<p>Tujuan dari vaksin anjing adalah merangsang sistem kekebalan dengan membuatnya mengenali antigen yang ada. Dengan cara ini, jika seekor anjing terkena penyakit yang sebenarnya, sistem kekebalannya akan mengenalinya, dan karena itu bersiaplah untuk melawannya, atau setidaknya mengurangi dampaknya.</p>\r\n<h5>Manfaat Vaksin Anjing</h5></p>\r\n<p>Vaksin bermanfaat untuk membantu mempersiapkan sistem kekebalan anjing untuk mempertahankan diri dari invasi organisme penyebab penyakit. Vaksin mengandung antigen, yang meniru organisme penyebab penyakit dalam sistem kekebalan anjing, tetapi sebenarnya tidak menyebabkan penyakit.</p>\r\n<h5>Kapan Harus Melakukan Vaksin Anjing?</h5></p>\r\n<p>Secara umum, anak anjing harus mulai divaksinasi antara 6 dan 8 minggu. Kemudian dilanjut setiap tiga minggu sampai kira-kira berusia empat bulan. Umumnya, jika ibu anak anjing memiliki sistem kekebalan yang sehat, kemungkinan besar ia akan menerima antibodi dalam ASI saat menyusui. Setelah anak anjing disapih dari susu induknya, vaksinasi harus dimulai.</p>Berikut ini jadwal vaksinasi untuk anak anjing:</p>\r\n<ul>\r\n <li>6-10 minggu: DHPP, Batuk Kennel</li>\r\n <li>11-14 minggu: DHPP, Leptospirosis, Canine Influenza, Penyakit Lyme</li>\r\n <li>15-16: DHPP, Leptospirosis, Influenza Anjing, Penyakit Lyme, Rabies</li>\r\n</ul>\r\n<p>Setelah anak anjing mencapai usia dewasa, dan semua vaksin inti anak anjing telah diberikan, dokter hewan dapat mulai menerapkan jadwal vaksinasi anjing dewasa. Jadwal vaksinasi anjing terdiri dari booster dewasa berkala, yang merupakan kombinasi dari jenis vaksin DHPP yang sama yang diberikan kepada anak anjing, bersama dengan beberapa tambahan lainnya.</p>Ketika anjing datang untuk divaksinasi di  satu tahun pertama mereka, direkomendasikan untuk mendapatkan vaksin DHPP, leptospirosis, dan rabies serta canine influenza dan lyme, jika gaya hidup anjing membutuhkan vaksin ini. </p>\r\n<h5>Prosedur Vaksin Anjing</h5></p>\r\n<p>Dokter hewan biasanya akan memastikan anjing bersih sehingga tidak ada kotoran yang tampak di sekitar kulit yang melar pada leher. Bulu anjing harus dipastikan kering sebelum diberi vaksin. </p>Setelah itu, dokter akan mencubit naik kulit anjing di dekat leher, untuk mendapatkan ruang di bawah kulit tempat menyuntikkan vaksin. Tidak seperti pada manusia, dokter tidak akan mengusapkan kapas beralkohol pada lokasi suntikan sebelumnya.</p>Setelah itu, dokter akan menusukkan jarum suntik berisi cairan vaksin dengan hati-hati dan menekan plunger suntikan secara perlahan hingga semua cairan habis. Jika ada darah di jarum suntik, dokter biasanya akan mencari lokasi penyuntikan lain. Sebab ini berarti jarum mengenai pembuluh darah.</p>Jika semua cairan sudah disuntikkan, dokter akan mencabut jarum dari kulit anjing. Setelah jarum dicabut, dokter akan memberi tekanan pada lokasi penyuntikan selama 30 detik untuk mencegah pendarahan. </p>Setelah vaksinasi selesai, anjing biasanya langsung boleh dibawa pulang dan beraktivitas seperti biasa. Namun, jika ada efek atau gejala yang dialami anjing setelah vaksinasi, segera hubungi dokter hewan yang menangani.</p>\r\n<h5>Tempat Melakukan Vaksin Anjing</h5></p>\r\n<p>Vaksinasi anjing bisa dilakukan di klinik hewan yang menyediakan layanan ini. Selain memastikan vaksinasinya lengkap, kamu juga perlu memerhatikan kesehatan anjing peliharaan kamu.</p>', 'N', 'N', 'N', 8, '009590888e80ac9225d1dee5e7acd27c.jpg', '', '', 'Y', '2024-04-19'),
(96, 'Empat Tips Bersihkan Bulu Hewan Peliharaan di Rumah', 'empat-tips-bersihkan-bulu-hewan-peliharaan-di-rumah', '<p><b>Sobat Paws - </b>Kesehatan tubuh tidak hanya dijaga dari makanan yang dikonsumsi dan melakukan olahraga.</p>Kesehatan tubuh juga bisa dipengaruhi oleh kebersihan tempat tinggal kita. Kalau rumah kotor, maka tubuh juga jadi mudah sakit, misalnya mengalami kulit gatal-gatal, seperti saat alergi kambuh.</p>Tahukah kamu? Kambuhnya alergi dan kulit yang jadi gatal-gatal juga bisa disebabkan karena bulu hewan peliharaan.</p>Terlebih kalau hewan peliharaan dipelihara di dalam rumah, karena bulunya bisa menempel di berbagai barang yang ada di rumah.</p>Sayangnya, bulu hewan peliharaa seperti bulu anjing atau bulu kucing ini sulit dibersihkan, karena bisa menempel di manapun dan karena ringan, bisa berterbangan ke mana-mana saat dibersihkan.</p>Agar mudah membersihkan bulu hewan dari barang-barang yang ada di rumah, coba pakai cara-cara berikut ini, yuk!</p>\r\n<h5>1. Menggunakan Penyedot Debu</h5></p>\r\n<div class=\"container-fluid\">\r\n <p>Cara pertama yang bisa dilakukan untuk membersihkan bulu hewan peliharaan di rumah adalah dengan menggunakan penyedot debu.</p>Menggunakan penyedot debu bisa menjadi cara yang cepat dan mudah untuk membersihkan bulu hewan yang menempel di permukaan barang-barang yang ada di rumah.</p>Penyedot debu akan mengisap berbagai kotoran dengan cepat dan kekuatan penghisapnya juga bisa diatur.</p>Selain itu, menggunakan penyedot debu untuk membersihkan bulu hewan juga tidak membuat bulu-bulu dan kotoran lainnya berterbangan, sehingga tidak menempel di barang lainnya.</p>\r\n</div>\r\n<h5>2. Menggunakan Selotip</h5></p>\r\n<div class=\"container-fluid\">\r\n <p>Kalau di rumah teman-teman tidak ada penyedot debu, cara lain yang bisa digunakan untuk membersihkan bulu hewan adalah dengan menggunakan selotip.</p>Lem yang ada di selotip bisa mengangkat bulu-bulu hewan yang menempel di berbagai permukaan barang di rumah. Misalnya seperti di karpet, maupun di bantal.</p>Agar cepat bersih, teman-teman bisa menggunakan selotip yang ukurannya besar, sehingga area yang dibersihkan juga lebih luas.</p>\r\n</div>\r\n<h5>3. Menggunakan Sarung Tangan Karet</h5></p>\r\n<div class=\"container-fluid\">\r\n <p>Sarung tangan karet juga bisa jadi pilihan untuk membersihkan bulu hewan yang menempel di barang-barang yang ada di rumah atau di pakaian, lo.</p>Cara menggunakannya juga mudah, kok, teman-teman.</p>Kita cukup memakai sarung tangan karet itu, kemudian usap atau gosokkan tangan pada barang-barang yang ada di rumah.</p>Nah, nantinya bulu-bulu hewan peliharaan akan menempel pada sarung tangan karet dan permukaan barang di rumah akan bersih.</p>Untuk membersihkan bulu hewan dari sarung tangan karet, kita cukup langsung mengambilnya saja, atau mencucinya dengan air panas dan sarung tangan karet bisa kembali digunakan.</p>\r\n</div>\r\n<h5>4. Menggunakan Pel Basah</h5></p>\r\n<div class=\"container-fluid\">\r\n <p>Kalau banyak bulu hewan peliharaan yang berjatuhan di lantai, sebaiknya jangan disapu, teman-teman.</p>Sebab proses menyapu ini akan menyebabkan bulu-bulu berterbangan ke seluruh rumah dan menempel ke barang-barang lain.</p>Sebaiknya, gunakan pel yang basah dan lembap untuk membersihkan lantai rumah dari bulu-bulu hewan peliharaan.</p>Bulu-bulu hewan peliharaan ini akan menempel di kain pel basah dan lantai jadi bersih.</p>Setelah bulu-bulu tadi menempel di kain pel yang basah, segera cuci kainpel dan buang airnya. Jika lantai sudah kering, kita bisa menyapunya, lalu mengulangi mengepel lantai.</p>\r\n</div>', 'N', 'N', 'N', 9, '46f812a9756c0bb87a7f5a3a85f583b2.jpg', '', '', 'Y', '2024-04-19'),
(97, '6 Tips Membersihkan Telinga Kucing yang Kotor, Jangan Disepelekan', '6-tips-membersihkan-telinga-kucing-yang-kotor-jangan-disepelekan', '<p><b>Kucing - </b>adalah salah satu hewan yang betah berlama-lama membersihkan diri sendiri. Oleh karena itu, sebagian besar kucing tidak membutuhkan bantuan untuk membersihkan tubuh mereka. Kucing bisa terlihat bersih dan terawat meski hanya membersihkan dirinya sendiri tanpa bantuan manusia.</p>Namun, beberapa kucing tidak mampu membersihkan lubang telinga mereka. Badan mereka bisa terlihat bersih, tetapi kotoran-kotoran masih tersisa dalam telinga. Dalam kasus ini, kucing membutuhkan manusia untuk membersihkan kotoran di telinganya.</p>Lantas, kapan waktu yang tepat untuk membersihkan telinga kucing kotor? Bagaimana cara membersihkan telinga kucing yang menempel tanpa menyakitinya? Ternyata membersihkan telinga kucing cukup mudah lho</p>\r\n<h5>Beberapa Tips Membersihkan Telinga Kucing</h5></p>\r\n<p><b>1. Bersihkan terlebih dahulu area lubang telinga</b></p>\r\n<p class=\"container-fluid\">Cara membersihkan kuping kucing yang pertama, dudukkan kucing di atas pangkuan yang sudah dilapisi handuk. Proses pembersihan telinga kucing biasanya membutuhkan waktu sekitar 10 menit. Sebelum membersihkan area dalam telinga kucing, Anda sebaiknya membersihkan terlebih dahulu area luar telinga. Pastikan area sekitar lubang kucing bersih dari kotoran maupun bulu yang menutup lubang.</br>\r\nAnda boleh memotong bulu kucing yang terlalu panjang, sehingga lubang telinga mudah diakses untuk membersihkan kotoran di dalamnya. Bulu-bulu tersebut bisa menghalangi ketika sedang membersihkan kotoran sekaligus menghambat pergerakan kotoran telinga ke luar.\r\n<p><b>2. Sediakan mainan atau cemilan</b></p>\r\n<p class=\"container-fluid\">Untuk memastikan kucing tetap tenang saat telinganya dibersihkan, anda bisa menyiapkan cemilan di sekitar kucing. Jangan membersihkan telinga kucing ketika mereka tidak bisa diam dan tenang di satu tempat.</br>anda perlu memastikan kucing tenang agar proses pembersihan tidak menyakitinya. Apabila kucing tetap tidak bisa diam, anda sebaiknya menyiapkan mainan untuk mengalihkan fokusnya.</p>\r\n<p><b>3. Bersihkan menggunakan minyak zaitun</b></p>\r\n<p class=\"container-fluid\">Ada beberapa barang yang perlu dipersiapkan untuk membersihkan telinga kucing, di antaranya minyak zaitun, tetes telinga, bola kapas atau cotton bud, dan wadah berisi air hangat.</br>anda sebaiknya menghangatkan terlebih dahulu minyak zaitun atau tetes telinga sebelum meneteskan ke telinga kucing. Caranya, yakni tempatkan minyak zaitun dan tetes telinga ke dalam panci berisi air hangat, bukan air panas.</p>\r\n<p><b>4. Pijat lembut telinga kucing</b></p>\r\n<p class=\"container-fluid\">Selanjutnya, teteskan satu hingga tiga tetes minyak zaitun atau pembersih telinga ke lubang telinga kucing. Teteskan cairan tersebut ke kedua telinga kucing anda. Apabila cairan sudah masuk, pijat lembut bagian pangkal telinga kucing.</br>Pijatan dilakukan guna membuat minyak zaitun melapisi bagian dalam telinga kucing hingga merata. Kucing biasanya akan menggoyangkan kepalanya secara spontan karena efek pemberian cairan tersebut.</p>\r\n<p><b>5. Bersihkan secara perlahan dengan cotton bud</b></p>\r\n<p class=\"container-fluid\">Setelah lima menit, anda perlu mengeluarkan kotoran dari telinga kucing. Caranya, bersihkan bagian dalam telinga menggunakan cotton bud yang telah dicelupkan ke dalam air hangat.</br>anda juga bisa menggunakan bola kapas untuk membersihkan minyak dan kotoran dari telinga kucing. Lakukan langkah tersebut secara bergantian pada telinga sisi kiri dan kanan. Jangan lupa untuk mengusap telinga kucing dengan tisu kering apabila masih ada cairan yang menetes.</p>\r\n<p><b>6. Perhatikan hal detail di telinga kucing</b></p>\r\n<p class=\"container-fluid\">Terakhir, perhatikan hal-hal detail di telinga kucing ketika membersihkannya. Apabila keluar darah atau aroma tak enak dari telinga, maka itu bisa menandakan terjadi pembengkakan di salah satu bagian telinga.</br>Jika hal itu terjadi pada kucing di rumah, maka segera bawa kucing ke dokter hewan terdekat untuk mendapatkan pengobatan lebih lanjut. Kesehatan telinga menandakan kesehatan tubuh kucing. Apabila terjadi infeksi pada telinga kucing, maka kucing bisa kehilangan indera pendengarannya.</p>\r\n<p>Membersihkan telinga kucing cukup mudah bagi anda yang sudah berpengalaman. Jangan lupa untuk memberikan hadiah kecil pada kucing ketika ia sudah berhasil bersikap tenang dan diam selama proses pembersihan berlangsung.</p>Semoga beberapa cara membersihkan telinga kucing di atas bisa membantu ya.</p>', 'N', 'N', 'N', 9, '27e5926406484f2045bdc462de9a8a74.jpg', '', '', 'Y', '2024-04-18');
INSERT INTO `posting` (`id`, `title`, `seo_title`, `content`, `featured`, `choice`, `thread`, `id_category`, `photo`, `sumber_gambar`, `sumber_informasi`, `is_active`, `date`) VALUES
(98, 'Empat tips untuk membantu hewan peliharaan Anda tetap ramping dan sehat', 'empat-tips-untuk-membantu-hewan-peliharaan-anda-tetap-ramping-dan-sehat', '<p><b>Memberikan camilan ekstra? - </b>Meskipun mereka tampaknya menikmatinya, itu bukan merupakan langkah yang tepat untuk mereka.</p>Sama seperti manusia, hewan peliharaan juga bisa mengalami masalah berat badan. Dan itu menjadi masalah, ketika melihat hewan peliharaan bertambah gemuk. Dalam survei dokter hewan baru-baru ini, 73% mengatakan bahwa obesitas adalah “salah satu kondisi paling umum” yang mereka lihat. Survei menunjukkan setengah dari anjing peliharaan dan 44% kucing membawa kelebihan berat badan.</p>Ini merupakan trend yang mengkhawatirkan. Meskipun kita menganggap bahwa hewan peliharaan gemuk itu lucu, masalah berat badan bisa mengakibatkan masalah kesehatan yang signifikan dari diabetes hingga masalah kardio respirasi seperti kesulitan bernafas saat tidur) dan bahkan kemungkinan menderita sengatan panas.</p>Obesitas – yang didiagnosis ketika hewan peliharaan memiliki berat badan 15% -20% lebih banyak dari berat badan idealnya – juga meningkatkan risiko terkena osteoartritis dan beberapa jenis kanker</p>Kita semua ingin hewan peliharaan kita hidup selama mungkin. Jadi, inilah beberapa cara untuk menjaga anjing atau kucing Anda dalam kondisi prima.</p>\r\n<h5>1. Buat mereka tetap aktif</h5></p>\r\n<div class=\"container-fluid\">\r\n <p>Banyak anjing tidak berolahraga secara teratur – dan terkadang itu disebabkan oleh cuaca buruk, atau mungkin karena masalah perilaku, seperti cemas saat bertemu anjing atau orang lain. Jika kita bandingkan kucing yang berada di luar ruangan umumnya tetap bugar dan aktif, sementara kucing dalam ruangan dapat memiliki lemak tubuh setidaknya 5% lebih tinggi dari kucing luar ruangan, dan jauh lebih rentan terhadap obesitas.</p>Olahraga adalah kunci untuk menjaga berat badan yang sehat, dan juga untuk menurunkan berat badan. Cobalah untuk melatih anjing Anda setidaknya sekali sehari, karena idealnya lebih dari sekali. Berhati-hatilah untuk memastikan panjang dan jenis latihan sesuai dengan usia dan kemampuan mereka, dan tingkatkan latihan secara perlahan.</p>Anjing menyukai “aroma” atau “latihan” yang dapat dilakukan di ruang tamu Anda. Dan ada banyak mainan kucing untuk mendorong kucing Anda untuk membakar kalori saat bermain.</p>Anda juga dapat membuat waktu makan lebih aktif dengan menyebarkan makanan – tempat Anda menyebarkan makanan anjing ke tanah (setelah memastikannya bersih dan aman) – atau  memberi umpan, yang mendorong anjing Anda untuk bekerja mencari makanan dan camilan.</p>Hidroterapi, yang melibatkan kegiatan untuk membuat anjing Anda berenang atau berjalan di kolam renang atau treadmill air, bisa menjadi pilihan yang bagus untuk latihan riingan. Ini terutama berlaku untuk anjing yang lebih tua atau mereka yang baru pulih dari cedera.</p>Bahkan kucing dapat dilatih untuk berjalan-jalan dengan petunjuk. Tetapi jika kucing Anda tidak mau bekerja sama, Anda dapat mencoba permainan di dalam ruangan atau taman untuk meningkatkan aktivitasnya.</p>\r\n</div>\r\n<h5>2. Perhatikan diet mereka</h5></p>\r\n<div class=\"container-fluid\">\r\n <p>Beberapa hewan peliharaan sangat menikmati makanan mereka sehingga mereka bisa menjadi sedikit gemuk berapa pun usianya. Atau, sama seperti manusia, “fenomena usia paruh baya” dapat terjadi pada hewan peliharaan yang secara alami melambat seiring bertambahnya usia.</p>Diet mereka mungkin perlu diubah untuk mempertahankan berat badan yang sehat. Penurunan berat badan harus dilakukan secara bertahap, jadi selalu gunakan pedoman pemberian makan yang direkomendasikan pada kemasan makanan – atau menggunakan kalkulator kalori online – sebagai titik awal untuk mengetahui berapa banyak Anda memberi makan hewan peliharaan.</p>Cobalah untuk mencatat asupan makan dalam sebuah buku setiap hari. Dan, jangan lupa untuk menimbang makanan hewan peliharaan Anda secara akurat dengan menggunakan timbangan. Sendok sangat tidak akurat dan memungkinkan kita untuk memberi makan berlebihan.</p>Jika berat badannya terlalu berat – atau bahkan mendekati proporsi obesitas – mungkin yang terbaik adalah memulai program penurunan berat badan hewan peliharaan Anda dengan pergi ke dokter hewan untuk pemeriksaan kesehatan lengkap dan melakukanpemeriksaan kondisi tubuh. Dokter juga akan dapat memberikan target berat badan dan kerangka waktu untuk mencapainya.</p>\r\n</div>\r\n<h5>3. Waspadai risiko lain</h5></p>\r\n<div class=\"container-fluid\">\r\n <p>Terkadang risiko obesitas ada dalam gen. Beberapa anjing Labrador retriever, misalnya, memiliki mutasi genetik yang membuat mereka cenderung menjadi “pecinta makanan” dan penambahan berat badan. Dan hewan peliharaan yang dikebiri dapat mengurangi kebutuhan kalori harian, jadi jika diet mereka tidak diubah mereka dapat secara tidak sengaja menambah berat badan.</p>Jadi, penting untuk mengenali berat dan bentuk tubuh yang sehat untuk kucing atau anjing Anda – dan faktor-faktor yang dapat memengaruhinya. Percayai dokter hewan dan profesional lainnya, untuk memudahkan mereka melakukan konsultasi dengan Anda tentang cara terbaik untuk membantu hewan peliharaan Anda menurunkan berat badan.</p>\r\n</div>\r\n<h5>4. Singkirkan camilan berkalori tinggi</h5></p>\r\n<div class=\"container-fluid\">\r\n <p>Makanan dan camilan berlemak mengandung banyak kalori meski dalam jumlah kecil, sehingga Anda dapat dengan mudah memberi makan hewan peliharaan Anda secara berlebihan tanpa disadari. Dan makanan “manusia” yang menggemukkan, seperti sisa makanan, juga dapat menyebabkan berat badan bertambah, di samping peningkatan risiko pankreatitis – dan berpotensi lebih buruk jika makanan beracun, termasuk bawang dan beberapa pemanis buatan, tertelan.</p>Tetapi mengelola berat badan hewan peliharaan Anda tidak berarti Anda tidak dapat memberikan makanan yang mereka suka. Kunjungi toko hewan peliharaan terdekat dari rumah Anda untuk carilah alternatif rendah kalori yang sehat.</p>Atau coba cek lemari es Anda. Banyak anjing menyukai wortel atau mentimun, terutama jika dipotong-potong sebagai makanan untuk melatih mereka. Kucing suka sedikit tuna atau ayam, keduanya tinggi protein tetapi rendah kalori.</p>Jangan lupa untuk melihat cara lain merawat hewan peliharaan Anda juga – seperti berolahraga, bermain, dan sekadar menghabiskan waktu bersama mereka akan bermanfaat bagi hewan dan manusia.\r\n</div><br>\r\n<p>Semua tips memang membutuhkan sedikit usaha. Tetapi menjaga tubuh hewan peliharaan Anda tetap ramping dan sehat akan membantu memperpanjang hidup mereka. Dan siapa di antara kita yang tidak ingin menghabiskan waktu lebih lama lagi dengan hewan peliharaan kesayangan kita?</p>', 'N', 'N', 'N', 9, 'c5d2c5f4dd6698433b90ab9286fceaf0.jpg', '', '', 'Y', '2024-04-19'),
(99, 'Mengapa Vaksin Penting untuk Diberikan pada Kucing?', 'mengapa-vaksin-penting-untuk-diberikan-pada-kucing', '<p><b>Sobat Paws - </b>Jika kamu pernah mendengar “kucing punya sembilan nyawa”, maka ini adalah mitos. Jangan sampai hanya karena mitos ini kamu tidak merawat kesehatan kucing dengan baik. Khususnya dalam memberikan vaksin. Pemberian vaksin penting untuk kesehatan dan umur panjang kucing secara keseluruhan.</p>Vaksin kucing terbukti secara medis untuk memerangi inkubasi dan penularan penyakit kucing yang dapat melumpuhkan dan fatal. Baik kamu memiliki anak kucing atau kucing dewasa, maka kamu perlu memberikannya vaksin. Biasanya vaksin juga tergantung pada usia, kesehatan secara keseluruhan dan gaya hidup kucing. </p>\r\n<h5>Alasan Vaksin Penting untuk Kucing</h5></p>\r\n<p>Perlu disadari bahwa memberi vaksin untuk kucing adalah salah satu tindakan kasih sayang dan bertanggung jawab sebagai pemilik kucing yang menyayanginya peliharaannya. Namun, masih ada pemilik kucing yang ragu dan bertanya-tanya apakah vaksin kucing benar-benar diperlukan. Terutama untuk kucing yang tidak pernah keluar rumah. Jadi, apa alasan vaksin kucing penting diberikan?</p>Vaksin penting diberikan untuk mencegah kucing dari berbagai penyakit. Vaksinasi adalah bagian penting dari perawatan kesehatan dan pencegahan penyakit untuk kucing. Kucing yang sehari-harinya hanya di dalam rumah dapat terpapar penyakit serius, karena banyak penyakit yang bisa menyebar melalui udara. </p>Hanya dengan membuka jendela rumah, sudah bisa mengekspos kucing peliharaan kamu dari penyakit yang ditularkan melalui udara. Kucing mungkin bisa terpapar penyakit saat perjalanan rutin ke dokter hewan atau fasilitas hewan peliharaan lainnya. Dengan menjalani serangkaian vaksinasi kucing, kamu dapat memastikan bahwa kucing kamu terlindungi dan aman. </p>\r\n<h5>Vaksin Kucing yang Direkomendasikan</h5></p>\r\n<p>Untuk pemberian vaksin kucing, kamu perlu berdiskusi terlebih dulu pada dokter hewan melalui aplikasi Halodoc tentang jadwal yang disarankan. Jadwal vaksin juga mempertimbangkan gaya hidup dan kebutuhan khusus kucing.</p>Kucing dalam ruangan mungkin tidak memerlukan vaksin yang sama dengan kucing luar ruangan, misalnya karena risiko terpapar penyakit tertentu lebih kecil di dalam ruangan. </p>Biasanya anak kucing harus mulai mendapatkan vaksin saat usianya 6 hingga 8 minggu sampai mereka berusia sekitar 16 minggu. Kucing dewasa lebih jarang membutuhkan vaksin, biasanya hanya setiap tahun atau setiap tiga tahun, tergantung pada berapa lama vaksin dirancang untuk bertahan. </p>Inilah vaksin dasar yang biasanya direkomendasikan untuk semua kucing : </p>\r\n<ul>\r\n <li>\r\n  Panleukopenia. Vaksin ini dikenal sebagai feline parvovirus atau feline distemper. Virus panleukopenia adalah penyakit virus yang mengancam jiwa yang menyebar dengan cepat melalui populasi kucing yang tidak divaksinasi. Penyakit ini mempengaruhi sel-sel yang membelah dengan cepat di dalam tubuh serta dapat menyebabkan muntah dan diare.\r\n </li>\r\n <li>\r\n  Vaksin Herpes Kucing. Ini adalah infeksi saluran pernapasan atas yang diakibatkan virus. Penyakit herpes kucing sangat menular dan bisa menyebabkan pneumonia, khususnya pada anak kucing. \r\n </li>\r\n <li>\r\n  Calicivirus. Ini adalah penyakit pernapasan virus lainnya, yang juga mempengaruhi usus dan sistem muskuloskeletal. \r\n </li>\r\n</ul>\r\n<p>Ada juga vaksin tambahan yang mungkin diperlukan, yaitu :</p>\r\n<ul>\r\n <li>Klamidia: Vaksin untuk bakteri, sering menjadi bagian dari suntikan FVRCP.</li>\r\n <li>Leukemia Kucing: Infeksi virus yang serius dapat menyebar melalui banyak cairan tubuh seperti air liur, feses, urine, dan susu. Vaksin ini direkomendasikan untuk kucing yang menghabiskan waktu di luar rumah. </li>\r\n <li>Bordetella: Kucing yang sering ke salon atau tinggal di kandang penitipan harus divaksinasi untuk mencegah infeksi menyebar dengan cepat, terutama di tempat yang banyak hewan lainnya. </li>\r\n</ul>\r\n<p>Meskipun beberapa dari penyakit kucing tidak fatal, namun dapat dicegah dengan vaksinasi. Sebagai pemilik hewan peliharaan yang bertanggung jawab, kamu bisa membantu kucing menghindari ketidaknyamanan ini dengan mengikuti jadwal vaksinasi yang disarankan. </p>', 'N', 'N', 'N', 8, 'adfb14d3499027daf3d0a677e4739f98.jpg', '', '', 'Y', '2024-04-19'),
(100, 'Pentingnya Memberikan Vaksin pada Anjing Peliharaan', 'pentingnya-memberikan-vaksin-pada-anjing-peliharaan', '<p><b>Sobat Paws - </b>Saat kamu memutuskan untuk mengadopsi anak anjing, bukan hanya kebutuhan makan dan tempat tinggal saja yang harus dipikirkan. Kamu juga perlu memberinya vaksin secara teratur agar ia tumbuh kuat, sehat, dan berumur panjang. Sama halnya dengan memberikan vaksin pada manusia, vaksin pada anjing juga dilakukan dengan memasukkan virus atau bakteri yang telah dimodifikasi.</p>Hal tersebut dimaksudkan agar vaksin dapat merangsang antibodi untuk melawan dan mencegah saat penyakit di masa mendatang. Vaksin pada anjing merupakan hal yang wajib dilakukan, mengingat ada beberapa virus yang dapat berakibat fatal, yaitu kematian. Lantas, apa yang perlu diperhatikan dalam memberikan vaksin pada anjing peliharaan? Simak ulasannya berikut ini.</p>\r\n<h5>Usia Tepat Anjing untuk Diberikan Vaksin</h5></p>\r\n<p>Anak anjing sudah seharusnya diberikan vaksin setiap 2–4 minggu, saat usianya menginjak 6–16 minggu. Vaksin efektif diberikan saat mereka sudah mulai mengenal makanan. Sebagai pemelihara, kamu tidak boleh malas untuk memberikannya vaksin. Pasalnya, biaya merawat hewan yang sakit akan lebih besar ketimbang harus merogoh kocek untuk vaksinasi.</p>Vaksin berguna untuk mengurangi infeksi virus yang belum ditemukan obatnya. Begini urutan vaksin untuk anjing yang wajib dilakukan:</p>\r\n<ul>\r\n <li>Saat usia 2 bulan, disarankan untuk vaksinasi Parvo.</li>\r\n <li>Saat usia 3 bulan, disarankan untuk vaksinasi Parvo, Distemper, Parainfluenza, Hepatitis.</li>\r\n <li>Saat usia 4 bulan, disarankan untuk vaksinasi Parvo, Distemper, Parainfluenza, Hepatitis, Leptospira, Corona.</li>\r\n <li>Saat usia 5 bulan, disarankan untuk vaksinasi Parvo, Distemper, Parainfluenza, Hepatitis, Leptospira, Corona, Rabies.\r\n</li>\r\n <li>Vaksin pengulangan 1 tahun sekali atau pada anjing yang belum pernah di vaksin saat berusia di atas 6 bulan. Vaksin tersebut adalah Parvo, Distemper, Parainfluenza, Hepatitis, Leptospira, Corona, Rabies.</li>\r\n</ul>\r\n<p>Untuk waktu yang tepat, kapan harus melakukan vaksinasi pada anjing peliharaan, kamu bisa bertanya langsung dengan dokter. Perhatikan juga kondisi peliharaan saat ingin divaksin, jangan datang ke vet saat kondisi anjing tidak benar-benar sehat. Pastikan agar anjing tidak sedang demam, diare, atau bersin-bersin, ya.</p>\r\n<h5>Jenis Vaksin Wajib yang Harus Diberikan pada Anjing</h5></p>\r\n<p>Sebaiknya kenali terlebih dulu beberapa jenis vaksin yang wajib disuntikkan, sebelum diberikan pada anjing peliharaan. Berikut ini sejumlah vaksin wajib yang harus diberikan pada anjing:</p>\r\n<ul>\r\n <li><b>Vaksin DP (distemper dan parvovirus).</b> Vaksin ini diberikan untuk perlindungan terhadap penyakit distemper dan parvovirus. Distemper merupakan penyakit yang menyerang saluran pernapasan dan memicu infeksi kulit. Sedangkan parvovirus, merupakan penyakit yang menyerang saluran pencernaan.</li></p>\r\n <li><b>Vaksin PiBr.</b> Vaksin ini diberikan untuk perlindungan terhadap penyakit bordetella dan parainfluenza. Sebaiknya vaksin ini diberikan saat anjing menginjak usia 10–12 minggu.</li></p>\r\n <li><b>Vaksin DHLPI.</b> Vaksin ini diberikan untuk perlindungan terhadap penyakit distemper, leptospirosis, hepatitis, dan parvovirus. Sebaiknya vaksin ini diberikan saat anjing menginjak usia 14–16 minggu.</li></p>\r\n <li><b>Vaksin DHLPII+R.</b> Vaksin ini diberikan untuk perlindungan terhadap penyakit distemper, hepatitis, leptospirosis, dan rabies. Sebaiknya vaksin ini diberikan saat anjing menginjak usia 20 minggu.</li></p>\r\n <li><b>Vaksin Rabies.</b> Vaksin rabies diberikan untuk perlindungan terhadap penyakit rabies. Penyakit ini cukup mematikan, karena menyerang sistem saraf pusat. Sebaiknya vaksin ini diberikan saat anjing menginjak usia 4–6 bulan.</li></p>\r\n</ul>', 'N', 'N', 'N', 8, 'a8e8fd1f8a01e4680d5d7e0b84d72b88.jpg', '', '', 'Y', '2024-04-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'member'),
(3, 'dokter');

-- --------------------------------------------------------

--
-- Struktur dari tabel `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `sub_url` varchar(50) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `submenu`
--

INSERT INTO `submenu` (`id`, `id_menu`, `sub_title`, `sub_url`, `is_active`) VALUES
(1, 1, 'Identitas Web', 'admin/identity', 'Y'),
(2, 1, 'Kontak', 'admin/contact', 'Y'),
(3, 2, 'Menu Utama', 'admin/menu', 'Y'),
(4, 2, 'Sub Menu', 'admin/submenu', 'Y'),
(5, 3, 'Kategori', 'admin/category', 'Y'),
(6, 3, 'Posting', 'admin/posting', 'Y'),
(7, 4, 'Album', 'admin/album', 'N'),
(8, 4, 'Gallery Foto', 'admin/gallery', 'N'),
(10, 4, 'Banner', 'admin/banner', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanya`
--

CREATE TABLE `tanya` (
  `id_tanya` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hewan` varchar(100) NOT NULL,
  `pertanyaan` text NOT NULL,
  `tanggapan` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `judul_pertanyaan` varchar(100) NOT NULL,
  `nama_dokter` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tanya`
--

INSERT INTO `tanya` (`id_tanya`, `nama`, `email`, `hewan`, `pertanyaan`, `tanggapan`, `date`, `judul_pertanyaan`, `nama_dokter`) VALUES
(1, 'Agung Prasetyo', '', 'Anabul', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2024-06-16', 'Apa Boleh kita mencukur kumis kucing?', 'Rohman Syah'),
(2, 'Miselsa Anisdria', 'admin@gmail.com', 'Anubis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '', '2024-06-20', 'Apa Boleh kita mencukur kumis Anjing?', ''),
(3, 'Adnan Syukur', 'anay@', 'Anubis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2024-06-16', 'Cara membersihkan kutu pada anjing saya', 'Muhammad Salman Farisi'),
(5, 'Hendra Dwi Yulianto', 'fajar@bagus.com', 'Anabul', 'Assalamualaikum dok. Berikan tips untuk merawat anak kucing', '', '2024-06-16', 'Merawat anak kucing', ''),
(16, 'Agung', 'agung@gmail.com', 'Anubis', 'test tanya', 'Jawaban telah dikirim', '2024-06-27', 'test', 'Dokter1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(1, 'Admin Pawscare', 'Pondok Kelapa', 'admin@gmail.com', 'pro1716378679.jpg', '$2y$10$7PU7HcVIjNpN1yk22MxoOu82ZkWnx8qIJ6Rg1zUodV2BF2xIqDpKG', 1, 1, 1718763832),
(2, 'Muhammad Rohman Syah', 'Pondok Kelapa', 'syahr642@gmail.com', 'pro1715615687.png', '$2y$10$9XtBZ2JD6u7fezUim0Xzle/xhzoSVkm5Y9rN3pnXMS2I4ElRSvXYa', 2, 1, 1715148235),
(3, 'Miselsa Anisdria Susanto', 'Pulo Gebang', 'miselsaas@gmail.com', 'default.jpg', '$2y$10$8cMiYw6sCz4W/CETpAIH9.Zj.lRZzrDfjPsKXmDLBtpctK6N9pR2S', 2, 1, 1718654109),
(4, 'Dokter1', 'alamat dokter1', 'dokter1@gmail.com', 'dokter1.png', '$2y$10$AxXKuraRoo2MM.HwiP8JzeaJSeGhrQhKxYr/2i87RTp1VCZ3yvrCS', 3, 1, 1718785750),
(5, 'dokter2', 'rahasia', 'dokter2@gmail.com', '', '$2y$10$2HjA7Sb2W5FcZCsDqO9rv.v/88d2gx9iyTwQlYwYZCtD/rCModeNO', 3, 1, 1719261459),
(6, 'Agung', 'bsi kalimalang', 'agung@gmail.com', 'default.jpg', '$2y$10$x8Y/50lwvbv8tx/LfUWcKeBtu9dSSeRtaRRR0F7SptZShhRoG.H8a', 2, 1, 1719453764);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$8RKqd6pmm6L65JHq5NKdFOJrEFxqiHyofG/AfusX0iL8Cltfk/UJO', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1713504451, 1, 'Muhammad Rohman', 'Syah', NULL, '08997785724');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(39, 1, 1),
(40, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `identity`
--
ALTER TABLE `identity`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `iklan`
--
ALTER TABLE `iklan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `klinik`
--
ALTER TABLE `klinik`
  ADD PRIMARY KEY (`id_klinik`);

--
-- Indeks untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posting`
--
ALTER TABLE `posting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tanya`
--
ALTER TABLE `tanya`
  ADD PRIMARY KEY (`id_tanya`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indeks untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `identity`
--
ALTER TABLE `identity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `iklan`
--
ALTER TABLE `iklan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `klinik`
--
ALTER TABLE `klinik`
  MODIFY `id_klinik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `posting`
--
ALTER TABLE `posting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tanya`
--
ALTER TABLE `tanya`
  MODIFY `id_tanya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
