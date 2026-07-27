-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2024 at 07:12 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

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
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `slug`, `is_active`) VALUES
(1, 'Anabul', 'anabul', 'Y'),
(2, 'Anubis', 'anubis', 'Y'),
(3, 'kesehatan', 'kesehatan', 'Y'),
(4, 'Tips & Trik', 'tips-trik', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `identity`
--

CREATE TABLE `identity` (
  `id` int(11) NOT NULL,
  `web_name` varchar(255) NOT NULL,
  `web_address` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identity`
--

INSERT INTO `identity` (`id`, `web_name`, `web_address`, `meta_description`, `meta_keyword`, `photo`) VALUES
(1, 'Pawscare.com', 'Pawscare.com', '-', 'Pawscare.com', '7ef98c811e3e1466c80a2357e0633302.png');

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
--

CREATE TABLE `iklan` (
  `id` int(11) NOT NULL,
  `link` text CHARACTER SET utf8mb4 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iklan`
--

INSERT INTO `iklan` (`id`, `link`, `image`, `status`) VALUES
(1, 'https://youtube.com', 'c7dead7ebb83756509e99c83486f0fc9.png', 'aktif'),
(2, 'https://chatgpt.com', '2263ec8f02b0b0a9d815fe38c572f5b1.png', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `klinik`
--

CREATE TABLE `klinik` (
  `id_klinik` int(11) NOT NULL,
  `wilayah` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 NOT NULL,
  `jam_buka` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `nomor` varchar(30) CHARACTER SET utf8mb4 NOT NULL,
  `maps` varchar(600) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `klinik`
--

INSERT INTO `klinik` (`id_klinik`, `wilayah`, `nama`, `alamat`, `jam_buka`, `nomor`, `maps`) VALUES
(1, 'Jakarta', 'Klinik Hewan Drh. Husnul Hamdi', 'Jl. H. Naman No.10, RT.13/RW.3, Pondok Kelapa, Kecamatan Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13450', 'Buka Pukul 09.00–23.00', '+62 818-711-721', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6620.567234947476!2d106.93757393827579!3d-6.2448465207848205!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e698ce5efa9a6c7:0x16da4cdd5586027c!2sKlinik Drh. Husnul Hamdi!5e1!3m2!1sid!2sid!4v1716961820772!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade'),
(2, 'Jakarta', 'KAHFKAHF Petcare Praktek Drh Reza Sofa', 'Jl. Swakarsa IV No.11, RT.5/RW.2, Pondok Kelapa, Kec. Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13450', 'Buka Pukul 10.00-21.00', '081806511385', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6620.593935561873!2d106.92922987770993!3d-6.242734499999991!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e698d28ce806f89:0xe397558a41c41394!2sKAHFKAHF Petcare Praktek Drh Reza Sofa!5e1!3m2!1sid!2sid!4v1716962408742!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade'),
(3, 'Jakarta', 'Klinik Hewan THB Vet Duren Sawit', 'Blok I14 No.6C, Jl. Pondok Kelapa Raya, Pondok Kelapa, Kecamatan Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13450', 'Buka Pukul 09.00-21.00', '082311211898', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6620.593935561873!2d106.92922987770993!3d-6.242734499999991!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e698da9ee8d3a8f:0xba9b3ea9e1c48c4a!2sKlinik Hewan THB Vet Duren Sawit!5e1!3m2!1sid!2sid!4v1716962528715!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade'),
(4, 'Bekasi', 'MOMi Pet Care 1 Bintara Jaya - Dokter Hewan & Pet Shop', 'Jl. Bintara Jaya No.4, RT.005/RW.3, Bintara Jaya, Kecamatan Bekasi Barat, Kota Bekasi, Jawa Barat 17136', 'Buka Pukul 09.00-22.00', '085260299500', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6620.520992754024!2d106.94653849999999!3d-6.248502600000011!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e698d539d307b63%3A0x3ab0c243f79124f5!2sMOMi%20Pet%20Care%201%20Bintara%20Jaya%20-%20Dokter%20Hewan%20%26%20Pet%20Shop!5e1!3m2!1sid!2sid!4v1717513499051!5m2!1sid!2sid'),
(5, 'Jakarta', 'Petsmile Dok Nyom - Pet Shop dan Dokter Hewan ', 'Jl. Rawa Domba No.60 4, RT.2/RW.16, Duren Sawit, Jakarta, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13440', 'Buka Pukul 10.00-20.00', '02129190567', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6620.553849820362!2d106.90793216245868!3d-6.245905017754897!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e698dac8beb937b:0x897483246e8f3714!2sPetsmile dok nyom!5e1!3m2!1sid!2sid!4v1716963296808!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade'),
(6, 'Bekasi', 'Vetstoria Animal Care (Dokter Hewan, Petshop, Penitipan dan Grooming)', 'Jl. Bintara Jaya, Bintara, Kecamatan Bekasi Barat, Kota Bekasi, Jawa Barat 17134', 'Buka Pukul 09.00-21.00', '(+62) 821-2929-3129', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d6620.747762266767!2d106.94376968786308!3d-6.230552906797833!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e698dc124a09df7:0x58cb61378f19ef4d!2sVetstoria Animal Care (Dokter Hewan, Petshop, Penitipan dan Grooming)!5e1!3m2!1sid!2sid!4v1716963819807!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade'),
(7, 'Bekasi', 'Rebban Praktek Dokter Hewan dan Petshop', 'Komplek, Ruko Grand Galaxy City, Jl. Pulo Sirih Bar. Raya No.003 Blok N, RT.001/RW.020, Jaka Setia, Kec. Bekasi Sel., Kota Bks, Jawa Barat 17147', 'Buka Pukul 09.00–20.000', '+62 812-4106-1434', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6620.309500691642!2d106.9658174534136!3d-6.265196861333905!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e698da5369c9b0b:0x77c6c69af18fa3c5!2sRebban Praktek Dokter Hewan dan Petshop!5e1!3m2!1sid!2sid!4v1716961937149!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 'User Pawscare', '', 'fas fa-fw fa-user', 'Y'),
(2, 'Manajemen Artikel', '', 'fas fa-fw fa-newspaper', 'Y'),
(3, 'Pertanyaan Masuk', '', 'fas fa-fw fa-envelope', 'Y'),
(4, 'Rekomendasi Klinik', '', 'fas fa-fw fa-house-medical-circle-check', 'Y'),
(5, 'Manajemen Iklan', '', 'fas fa-fw fa-rectangle-ad', 'Y'),
(6, 'Setting Menu', '', 'fas fa-fw fa-sliders-h', 'Y'),
(7, 'Halaman Utama', 'home', 'fas fa-fw fa-house-laptop', 'Y'),
(8, 'Setting Web', '', 'fas fa-fw fa-cog', 'N'),
(9, 'Media', '', 'fas fa-fw fa-photo-video', 'N'),
(10, 'Logout', 'auth/logout', '', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `posting`
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
  `is_active` char(1) NOT NULL,
  `date` date NOT NULL,
  `sumber_gambar` varchar(255) NOT NULL,
  `sumber_informasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posting`
--

INSERT INTO `posting` (`id`, `title`, `seo_title`, `content`, `featured`, `choice`, `thread`, `id_category`, `photo`, `is_active`, `date`, `sumber_gambar`, `sumber_informasi`) VALUES
(1, 'Tentang Anabul (Felis silvestris catus)', 'tentang-anabul-felis-silvestris-catus', '<p>Kucing adalah mamalia domestik yang merupakan bagian dari keluarga Felidae dan spesies Felis catus. Kucing adalah salah satu hewan peliharaan paling populer di dunia. Mereka adalah mamalia yang terkenal dengan keanggunan, kecerdasan, dan kemandirian mereka. Ada banyak ras kucing yang berbeda, mulai dari yang berbulu pendek hingga yang berbulu panjang, dengan berbagai warna dan pola.</p>\r\n<p>Secara sejarah, kucing telah menjadi bagian penting dari kehidupan manusia selama ribuan tahun. Mereka awalnya dipercaya menjadi pemburu tikus dan hewan pengerat lainnya di sekitar permukiman manusia kuno, dan akhirnya, mereka menjadi hewan peliharaan yang disayangi.</p>\r\n<p>Kucing dikenal karena kepribadian mereka yang unik. Mereka bisa sangat manja dan menyayangi pemiliknya, tetapi juga bisa menjadi independen dan memiliki kepribadian yang kuat. Kucing juga dikenal sebagai hewan yang sangat bersih, sering menjilati diri mereka sendiri untuk membersihkan bulu mereka.</p>\r\n<p>Selain sebagai hewan peliharaan, kucing juga menjadi subjek dalam banyak mitos, legenda, dan cerita populer di berbagai budaya di seluruh dunia. Mereka sering dianggap sebagai simbol keberuntungan, kebijaksanaan, atau bahkan kejahatan dalam berbagai kepercayaan dan tradisi.</p>\r\n<p>Kucing memiliki kemampuan luar biasa dalam hal keseimbangan, kecepatan, dan kelincahan. Mereka sering kali dilihat melompat tinggi atau merayap di tempat-tempat yang sulit dijangkau.</p>\r\n<h5>Berikut beberapa informasi lebih lanjut tentang kucing:</h5>\r\n<b>Klasifikasi Ilmiah</b>\r\n<p>Kucing adalah bagian dari famili Felidae, yang juga mencakup spesies-spesies kucing besar lainnya seperti singa (Panthera leo), harimau (Panthera tigris), dan cheetah (Acinonyx jubatus). Spesies domestik kucing diberi nama ilmiah Felis catus.</p>\r\n<b>Asal Usul</b>\r\n<p>Kucing merupakan hewan yang telah dijinakkan oleh manusia selama ribuan tahun. Mereka diyakini pertama kali dijinakkan di wilayah Mesir Kuno sekitar 4.000 hingga 9.000 tahun yang lalu.</p>\r\n<b>Perilaku</b>\r\n<p>Kucing adalah hewan yang mandiri dan penjaga. Mereka biasanya sangat bersih, suka tidur, dan memiliki naluri berburu yang kuat. Kucing juga bisa menjadi hewan yang sangat penuh kasih terhadap pemiliknya, meskipun mereka sering menunjukkan kepribadian yang mandiri.</p>\r\n<b>Makanan</b>\r\n<p>Kucing adalah karnivora obligat, yang berarti mereka membutuhkan makanan yang terutama terdiri dari daging. Makanan kucing komersial yang dijual umumnya telah diformulasikan untuk memenuhi kebutuhan nutrisi mereka.</p>\r\n<p>Secara keseluruhan, kucing merupakan hewan yang menarik dan menyenangkan untuk dipelihara. Mereka tidak hanya menyediakan teman yang baik, tetapi juga bisa menjadi bagian integral dari kehidupan manusia dengan menyediakan hiburan, kenyamanan, dan bahkan dukungan emosional.</p>', 'N', 'Y', 'N', 1, 'd6e1d2c0c0895ea05fd2f02aeb4be7c6.jpg', 'Y', '2024-06-05', 'google', 'https://id.wikipedia.org/wiki/Kucing'),
(2, '10 Fakta Menarik pada Anabul yang perlu Kamu Ketahui', '10-fakta-menarik-pada-anabul-yang-perlu-kamu-ketahui', ' <p> Selain karena wajah yang menggemaskan, Kucing juga terlihat menarik karena nampak selalu diselimuti misteri.\r\n Bahkan, terkadang kita tidak mengetahui apa saja yang di lakukan kucing di rumah seharian, kecuali kita memasang benda canggih seperti pet <i>Camera</i> atau kamera untuk mengawasinya. Karena itu, tidak aneh pula jika banyak mitos dan misteri yang muncul soal kucing Kendati demikian, tentu saja pecinta kucing pasti ingin lebih mengenal hewan kesayangannya itu.</p>\r\n<h5>Simak 10 Fakta Seru soal Kucing Berikut ini : </h5></p>\r\n<b>1. Kucing rupanya \"Pemalas\"</b></p>\r\n<p class=\"container-fluid\">Jika kebanyakan hewan lain lebih suka “bekerja” untuk mendapatkan makanannya meski disediakan makanan gratis, kucing justru sebaliknya. Jika kucing diberi pilihan makanan dengan puzzle atau makanan “gratis,” kucing pasti akan memilih mangkuk makanan yang membuatnya tidak perlu berusaha sama sekali.</p>\r\n<b>2. Egyptian Miaw adalah kucing rumahan Tercepat</b></p>\r\n<p class=\"container-fluid\">Egyptian Miaw merupakan kucing rumahan tercepat di dunia dan dapat berlari secepat 48 kilometer per jam.</p>\r\n<b>3. Tidak semua kucing suka <i>Catnip</i></b></p>\r\n<p class=\"container-fluid\">Meski banyak yang berpendapat sebaliknya, rupanya tidak semua kucing menyukai <i>catnip</i> . Banyak ilmuwan yang meyakini bahwa menyukai catnip disebabkan oleh keturunan.</p>\r\n<b>4. Kucing bisa dilatih</b></p>\r\n<p class=\"container-fluid\">Berlawanan dengan anggapan populer, kucing rupanya bisa dilaih dengan metode positive reinforcement alias cara melatih dengan memberikan konsekuensi positif saat kucing melakukan apa yang kita inginkan. Misalnya, dengan memberi camilan setelah melatih kucing. Kucing bahkan bisa mempelajari berbagai hal, mulai dari macam-macam trik dan berjalan dengan leash (tali).</p>\r\n<b>5. Sudah hidup lebih dari 4.000 tahun lalu</b></p>\r\n<p class=\"container-fluid\">Sebuah pemakaman berusia 9.500 tahun yang ditemukan di Cyprus membuktikan bahwa ada manusia yang dikubur bersama kucing peliharaannya. Ini membuktikan bahwa kucing sudah hidup jauh lebih lama, bahkan melebihi karya seni asal Mesir bergambar kucing yang diperkirakan sudah berumur lebih dari 4.000 tahun.</p>\r\n<b>6. Pengelihatan kucing bagus, tapi...</b></p>\r\n<p class=\"container-fluid\">Memiliki pengelihatan jarak jauh yang luar biasa, objek yang ada di dekat kucing justru akan terlihat buram atau <i> blur</i>. Jadi saat bermain dengan kucing, sebaiknya jaga agar mainan tetap berada di jarak yang cukup jauh dengan kucing, sehingga “mangsa” itu terlihat jelas di matanya.</p>\r\n<b>7. Kucing dapat mengeluarkan banyak suara</b></p>\r\n<p class=\"container-fluid\">Banyak pakar perilaku kucing yang meyakinii bahwa kucing dapat mengeluarkan lebih dari 20 suara unik dengan berbagai makna yang berbeda.</p>\r\n<b>8. Memiliki lebih dari 500 otot</b></p>\r\n<p class=\"container-fluid\">Kucing memiliki lebih dari 500 otot dan lebih dari 200 tulang. Di ekornya saja ada sekitar 23 tulang.</p>\r\n<b>9. Mengapa kucing senang \"Memijat\" kita?</b></p>\r\n<p class=\"container-fluid\">Gerakan memijat atau kneading adalah perilaku menenangkan yang dipelajari kucing saat masih bayi. Karena itu, saat mau tidur kucing akan melakukannya. Lalu jika kucing melakukannya pada kita, artinya kucing menempelkan bau dari kakinya pada kita, yang berarti kucing menyukai kita.</p>\r\n<b>10. Kucing bisa melompat tinggi</b></p>\r\n<p class=\"container-fluid\">Rata-rata kucing yang sehat bisa melompat cukup tinggi. Saat ini, pemegang rekor kucing dengan lompatan tertinggi adalah Waffle the Warrior Cat, yang bisa melompat sejauh 2,13 meter.</p>', 'N', 'Y', 'Y', 1, 'b1a0af06009918a4e413a9669ddb7fa6.jpg', 'Y', '2024-06-26', 'olezzo / Adobe Stock', 'https://pemilu.kompas.com/read/2022/12/14/070000620/10-fakta-menarik-soal-kucing-yang-wajib-diketahui-cat-lovers'),
(3, 'Lebih dari Hiasan, Fakta Menarik Kumis Anabul', 'lebih-dari-hiasan-fakta-menarik-kumis-anabul', '<p><b>Sobat Paws - </b>Apakah kamu tahu kalau kucing memiliki kumis yang sangat sensitif? Kumis pada kucing bukan hanya sekadar hiasan, tetapi juga memiliki fungsi yang sangat penting bagi kehidupan mereka. Barangkali kamu pernah melihat kucing yang sedang memperhatikan lingkungannya dengan serius, itu karena kumisnya membantu mereka meraba dan merasakan sekitar.</p>\r\n\r\n<p>Fungsi kumis pada kucing tidak hanya terbatas pada orientasi dan navigasi, tetapi juga membantu dalam mencari makanan dan menghindari bahaya. Kalau dengan bantuan kumisnya, kucing bisa merasakan perubahan di sekitarnya. Kucing juga bisa saling berkomunikasi dengan menggunakan kumis mereka. Nah, kamu sudah tahu kan betapa pentingnya kumis bagi kucing? Jadi, jangan lupa untuk selalu menjaga kesehatan dan kebersihan kucing</p>\r\n<p>Kumis pada kucing terdiri dari rambut panjang dan tebal yang terletak di sekitar hidung, bibir atas, dan pipi. Rambut-rambut ini dilengkapi dengan akar saraf yang sangat sensitif sehingga memungkinkan kucing untuk merasakan getaran dan perubahan udara di sekitarnya.</p>\r\n<p>Dalam hal orientasi dan navigasi, fungsi kumis pada kucing membantu mereka menentukan ukuran dan jarak objek. Karena rambut-rambutnya yang panjang, ketika sebuah objek menyentuh atau memotong salah satu rambut tersebut, informasi akan disampaikan melalui saraf ke otaknya. Dengan demikian, kucing dapat mengetahui ukuran objek tersebut tanpa harus melihatnya secara langsung.</p>\r\n<p>Selain itu, fungsi kumis pada kucing juga membantu dalam mencari makanan. Kalau ada mangsa lewat dekat dengan si kucing, maka akan ada getaran di udara yang dirasakan oleh rambut-rambut di sekitar hidung si kucing. Dengan bantuan informasi tersebut, si kucing dapat mengetahui keberadaan mangsa dan segera menangkapnya.</p>\r\n<p>Tidak hanya itu, fungsi kumis pada kucing juga membantu mereka menghindari bahaya. Kalau si kucing merasa bahwa ada objek yang terlalu dekat dengannya, ia akan merasakan getaran pada rambut-rambut di sekitar hidungnya.</p>\r\n\r\n<p><h5>Pentingnya Kumis pada Kucing</h5></p>\r\n<p><b>Kumis pada kucing sangat penting untuk membantu mereka bergerak di tempat yang gelap.</b></p>\r\n<p>Kumis pada kucing bukan hanya sekadar hiasan atau aksesoris, tapi memiliki fungsi yang sangat penting dalam kehidupan sehari-hari si kucing. Salah satu fungsi utama dari kumis adalah sebagai alat bantu penglihatan saat berada di tempat yang gelap. Kucing memiliki kemampuan untuk melihat di kegelapan, namun dengan adanya kumis, mereka bisa lebih mudah mengetahui letak dan jarak benda-benda di sekitarnya.</p>\r\n<p>Selain itu, kumis juga membantu si kucing dalam menjaga keselamatan dan menghindari bahaya. Dengan adanya kumis, si kucing bisa merasakan getaran atau perubahan udara sehingga dapat menghindari objek atau bahkan mangsa yang tidak terlihat oleh mata telanjang.</p>\r\n<p><h5>Kumis kucing bisa membantu kucing untuk lebih mudah menangkap mangsa.</h5></p>\r\n<p>Fungsi lain dari kumis pada si kucing adalah sebagai alat bantu saat berburu mangsa. Kumis yang panjang dan sensitif ini memungkinkan si kucing untuk mengetahui posisi dan gerakan mangsa sehingga mereka bisa lebih mudah menangkapnya. Bahkan beberapa jenis ikan seperti hiu dan pari juga memiliki \"kumis\" yang mirip dengan milik si kucing untuk membantunya dalam mencari makanan.</p>\r\n<p>Namun perlu diperhatikan bahwa tidak semua jenis kucing menggunakan fungsi ini secara optimal. Beberapa jenis seperti Scottish Fold memiliki struktur telinga dan wajah yang berbeda sehingga kumisnya tidak bisa digunakan dengan baik.</p>\r\n<p><h5>Kucing bisa merasa tidak nyaman jika kumisnya dipotong atau hilang.</h5></p>\r\n<p>Kumis pada si kucing sangatlah penting, dan mereka akan merasa tidak nyaman jika kumisnya dipotong atau hilang. Hal ini akan mempengaruhi kemampuan mereka dalam bergerak di tempat gelap dan juga saat berburu mangsa. Bahkan beberapa kasus menunjukkan bahwa si kucing bisa mengalami stres dan depresi akibat kehilangan kumisnya.</p>\r\n<p>Oleh karena itu, sebagai pemilik kucing, kita harus memperhatikan kondisi kumis si kucing dan jangan sampai melakukan tindakan yang dapat merusak atau menghilangkan fungsi dari kumis tersebut.</p>\r\n<p><h5>Kumis pada kucing memiliki banyak fungsi baik, dan sangat penting untuk si kucing.</h5></p>\r\n<p>Secara keseluruhan, dapat disimpulkan bahwa fungsi dari kumis pada si kucing sangatlah penting dan memiliki banyak manfaat bagi kehidupan sehari-hari mereka. Selain membantu merasakan di tempat gelap dan saat berburu mangsa, juga membantu dalam menjaga keselamatan serta memberikan rasa nyaman bagi si kucing.</p>\r\n<p>Dalam hal ini, sebagai pemilik hewan peliharaan kita harus memahami betul tentang kebutuhan dasar dari hewan peliharaan yang kita miliki agar mereka tetap sehat dan bahagia. Salah satunya adalah dengan memperhatikan kondisi dari bagian tubuh seperti misalnya pada bagian wajah yang terdapat \"kumis\" pada si kucing.</p>', 'Y', 'N', 'Y', 1, 'f8ba617dc3fe7c8379584a7642d51f07.jpg', 'Y', '2024-06-26', 'sumber-gambar', 'sumber-informasi'),
(4, 'Tentang Anubis (Canis lupus familiaris)', 'tentang-anubis-canis-lupus-familiaris', '<p>Anjing (Canis lupus familiaris) adalah hewan mamalia keturunan serigala yang sudah mengalami penjinakkan sejak 15.000 tahun yang lalu. Berdasarkan bukti genetik berupa penemuan fosil dan tes DNA, domestikasi ini mungkin sudah terjadi sejak 100.000 tahun yang lalu.</p>\r\n<p>Hingga saat ini, anjing sudah berkembang menjadi ratusan ras dengan berbagai macam variasi. Warna rambut mereka juga beraneka ragam, mulai dari hitam, abu-abu, coklat, hingga merah dan putih. Selain itu, hewan ini juga memiliki berbagai jenis rambut. Misalnya, lurus atau keriting, bertekstur kasar hingga lembut seperti benang wol.</p>\r\n<p>Hewan satu ini juga melakukan banyak peran untuk manusia, seperti berburu, menggiring (domba), menarik beban, melindungi, membantu polisi dan militer, menjadi sahabat, terapi, dan membantu orang-orang cacat.</p>\r\n<p>Tentang anjing, ada banyak aspek yang menarik untuk dibahas.</p>\r\n<h5>Berikut beberapa informasi tambahan seputar anjing:</h5>\r\n\r\n<b>Klasifikasi Ilmiah</b>\r\n<p>Anjing termasuk dalam spesies Canis lupus familiaris, yang merupakan subspesies dari serigala abu-abu (Canis lupus). Mereka adalah bagian dari keluarga Canidae, yang juga mencakup serigala, rubah, dan jenis-jenis lainnya.</p>\r\n\r\n<b>Perilaku dan Komunikasi</b>\r\n<p>Anjing menggunakan berbagai bentuk komunikasi untuk berinteraksi dengan sesama anjing dan manusia. Ini termasuk gerakan tubuh, ekspresi wajah, suara seperti menggonggong, menggeram, dan melolong, serta sentuhan fisik. Anjing juga memiliki kemampuan untuk membaca ekspresi wajah manusia dan menangkap emosi mereka.</p>\r\n\r\n<b>Makanan</b>\r\n<p>Anjing adalah pemakan daging, tetapi dalam keadaan domestik mereka dapat menerima makanan yang bervariasi termasuk makanan kering, basah, dan makanan mentah. Penting untuk memilih makanan yang sesuai dengan kebutuhan nutrisi dan kesehatan mereka.</p>\r\n\r\n<b>Kemampuan Sosial</b>\r\n<p>Anjing adalah hewan sosial yang cenderung membentuk ikatan yang kuat dengan manusia dan sesama anjing. Mereka memiliki kemampuan yang luar biasa untuk membaca ekspresi wajah manusia dan menanggapi emosi kita.</p>\r\n\r\n<b>Harapan Hidup</b>\r\n<p>Harapan hidup anjing bervariasi tergantung pada ras, ukuran, dan faktor-faktor lainnya. Anjing kecil cenderung hidup lebih lama daripada anjing besar. Rata-rata, anjing biasanya hidup antara 10 hingga 15 tahun, tetapi beberapa bisa hidup lebih lama.</p>\r\n\r\n<p>Secara keseluruhan, anjing merupakan hewan yang mengagumkan dan memiliki hubungan yang istimewa dengan manusia. Keberadaan mereka tidak hanya memberi warna dalam kehidupan kita, tetapi juga membawa manfaat emosional, fisik, dan sosial yang besar bagi kita sebagai manusia.</p>\r\n', 'Y', 'Y', 'Y', 2, '6c4dec577bbc5fff556803f30c73a11f.jpg', 'Y', '2024-06-05', 'pixabay.com/users/huoadg5888-8934889/', 'https://id.wikipedia.org/wiki/Anjing'),
(5, '10 Fakta Menarik pada Anubis yang Harus Kamu Ketahui', '10-fakta-menarik-pada-anubis-yang-harus-kamu-ketahui', ' <p> Memelihara hewan seperti anjing memang menyenangkan dan banyak manfaatnya. Namun sebelumnya, kita perlu memahami anjing, mulai dari asal usul hingga makna di setiap gerakannya Nah, tidak semua orang cukup mengetahui sebenarnya bagaimana seekor anjing beradaptasi, apa yang disukai dan tidak, serta banyak fakta lain tentang anjing yang mungkin menjadi misteri. Untuk memahaminya lebih lanjut, kita bisa melihat fakta seru tentang anjing berikut ini.\r\n<h5>Yuk, langsung saja kita simak sederet Fakta Seru tentang anjing</h5></p>\r\n<b>1. Bermimpi Seperti Manusia </b></p>\r\n<p class=\"container-fluid\">Jika kita pernah memperhatikan anjing peliharaan bergerak-gerak dalam tidurnya, ini mungkin berarti dia sedang bermimpi. Para peneliti menemukan, bahwa anjing memiliki pola tidur dan aktivitas otak yang serupa dengan manusia. Anjing ras kecil cenderung bermimpi lebih banyak daripada yang besar. Psychology Today menunjukkan, anjing mungkin membayangkan aktivitas yang sudah dikenal seperti bermain di luar atau mengejar ekornya.</p>\r\n<b>2. Kibasan Ekornya Memiliki Arti Tersendiri</b></p>\r\n<p class=\"container-fluid\">Anjing yang mengibas-ngibaskan ekornya dengan bersemangat tidak selalu berarti dia sedang merasa senang. Menurut Discovery.com, anjing mengibaskan ekornya ke kanan saat senang dan ke kiri saat ketakutan. Ekor yang bergoyang-goyang berarti anjing merasa tidak aman. Jika ekor bergoyang-goyang dengan cepat, disertai otot yang tegang atau pupil membesar itu dapat menandakan agresi.</p>\r\n<b>3. Memakan Kotorannya Sendiri</b></p>\r\n<p class=\"container-fluid\">Bukan rahasia lagi jika anjing sering kali memakan kotorannya sendiri (dan kotoran lainnya). American Society for the Prevention of Cruelty to Animals (ASPCA) mengatakan, itu adalah hal yang normal yang berasal dari hari-hari pra-domestikasi ribuan tahun lalu. Memakan kotorannya sendiri ini lebih umum terjadi pada anak anjing meskipun beberapa melakukannya hingga dewasa.</p>\r\n<b>4. Anjing Cemburu</b></p>\r\n<p class=\"container-fluid\">Seorang ahli hewan peliharaan di Chewy, Nikki Naser mengatakan, kita mungkin tidak akan mengetahui secara pasti anjing dapat cemburu saat kita memberi perhatian pada anjing lain. Tetapi penelitian menunjukkan, bahwa sikapnya mirip dengan bagaimana seorang bayi mungkin cemburu. Itu tentu saja sejalan dengan kecerdasan anjing yang setara dengan balita. Kecemburuan anjing ini adalah sesuatu yang normal.</p>\r\n<b>5. Tidak Suka Di Peluk Sangat Erat</b></p>\r\n<p class=\"container-fluid\">Anjing sebenarnya tidak suka jika kita memeluknya terlalu erat. \"Cara manusia menunjukkan cinta tidak sama dengan cara anjing menunjukkan cinta atau ingin menerima cinta,\" ungkap Russell Hartstein, CEO perusahaan pelatihan anak anjing di Los Angeles, Fun Paw Care. \"Faktanya, pelukan yang terlalu erat bisa sangat menegangkan,\" sambung dia. Menurut Hartstein, anjing dapat beradaptasi dan merasa nyaman dengan orang yang disayanginya. Maka, kita harus tetap berhati-hati dalam memberikan pelukan kepada anjing yang tidak kita kenal dengan baik.</p>\r\n<b>6. Menguap Bukan Berarti Mengantuk</b></p>\r\n<p class=\"container-fluid\">Saat anjing menguap lebar, kita mungkin hanya berasumsi bahwa dia sedang mengantuk. Memang, hal itu bisa menjadi tanda kelelahan, tetapi anjing juga menguap karena ada alasan lainnya. Anjing bisa menguap untuk menenangkan diri. Jadi, apabila anjing berulang kali menguap, itu adalah tanda bahwa dia sedang merasa cemas atau stres.</p>\r\n<b>7. Tidak Tertarik pada Kucing</b></p>\r\n<p class=\"container-fluid\">Sejak dulu kita sering melihat anjing dan kucing kerap bertengkar, serta saling kejar-kejaran. Namun hal tersebut juga timbul dari naluri berburu yang membuat anjing dan kucing suka mengejar sesuatu yang kecil dengan cepat. Anjing dan kucing sebenarnya bisa rukun, bahkan tinggal di rumah yang sama. Tapi kembali lagi. Itu semua tergantung pada masing-masing hewan dan bagaimana kita memperkenalkan hewan dengan cara yang benar.</p>\r\n<b>8. Lebih Cepat Panas dari Manusia</b></p>\r\n<p class=\"container-fluid\">Suhu tubuh normal anjing sedikit lebih tinggi dari pada manusia yakni sekitar 38°C hingga 39,1°C (101–102,5 F), yang berarti suhu lebih panas dapat memengaruhinya. Inilah sebabnya mengapa kita perlu berhati-hati saat berjalan-jalan dengan anjing di hari yang panas. Selain itu, jangan lupakan trotoar dan tanah yang menjadi panas dengan cepat di bawah sinar matahari, kemudian bisa menyakiti kaki anjing yang tidak dijaga. Jadi, hari yang mungkin tidak terlalu panas bagi kita bisa menjadi hari yang sangat panas bagi anjing. Itulah mengapa kita harus sangat berhati-hati terhadap tanda peringatan sengatan panas pada anjing.</p>\r\n<b>9. Mengulurkan Tangan Bukan cara yang baik untuk Berkenalan</b></p>\r\n<p class=\"container-fluid\">Kita mungkin tumbuh dengan keyakinan lama untuk mengulurkan tangan kepada anjing yang tidak dikenal. Hal itu mungkin masih bisa berhasil, tetapi kita harus berhati-hati tentang bagaimana kita melakukannya. Mendorong tangan ke arah wajah anjing yang baru dikenal dapat membuatnya takut atau terasing. Lebih baik membiarkan anjing mendekati kita terlebih dahulu dan kemudian menawarkan tangan kepada anjing tersebut untuk mencium. Perlu diketahui, kita sebaiknya mendekati anjing itu dari samping, bukan dari depan jika kita harus mendekatinya.</p>\r\n<b>10. Coklat Berakibat Fatal</b></p>\r\n<p class=\"container-fluid\">Sudah menjadi rahasia umum bahwa anjing tidak bisa makan cokelat, tetapi pernahkah kita bertanya-tanya mengapa? Cokelat mengandung bahan yang disebut theobromine, yang tidak dapat dicerna anjing. Konsumsi cokelat dapat menciptakan penumpukan racun yang sangat parah dalam sistem tubuh dan pada akhirnya bisa mematikan.</p>', 'Y', 'Y', 'Y', 2, '57be350535ee5620c63f58578237d5ae.jpg', 'Y', '2024-06-26', 'pixabay/zeogammon', 'https://lifestyle.kompas.com/read/2021/02/25/174536320/15-fakta-menarik-yang-harus-diketahui-tentang-anjing?page=all&jxrecoid=7999bdbb-d345-4d42-942d-0eda4e2893f3~mix_kompas&source=widgetML&engine=V'),
(6, 'Ketahui tentang Virus Parvo yang Bisa Menyerang Anubis dan Anabul', 'ketahui-tentang-virus-parvo-yang-bisa-menyerang-anubis-dan-anabul', '<p><b>Sobat Paws -</b> Virus parvo, disebut juga <i>Canine parvovirus</i> (CPV) adalah salah satu virus paling serius yang bisa menyerang anjing. Virus ini ditemukan pada tahun 1967 dan dengan cepat menjadi ancaman serius bagi kesehatan anjing. Hal ini karena virus ini sulit untuk dibunuh, dapat hidup lama di lingkungan, dan dilepaskan dalam jumlah besar oleh anjing yang terinfeksi.</p>\r\n<p>Pada kucing, infeksi parvovirus dikenal dengan nama feline panleukopenia, yang disebabkan oleh <i>Feline parvovirus</i> (FPV). Virus tersebut terkait erat dengan canine parvovirus, yang biasa menyerang anjing. Saat menginfeksi, virus tersebut hanya akan menyerang sel mitosis atau yang aktif membelah, terutama sel-sel di saluran usus, sumsum tulang, dan kulit, serta menyebabkan kondisi anemia.</p>\r\n\r\n<h5>Gejala Infeksi Virus Parvo pada Anjing dan Kucing</h5>\r\n<p>Infeksi virus parvo pada anjing sangat berbahaya karena menyerang sel yang membelah dengan cepat di sumsum tulang dan usus. Setelah sumsum tulang terpengaruh, jumlah sel darah putih hewan turun, risiko infeksi meningkat, dan sistem kekebalan mulai menurun.</p>\r\n<p>Ketika sel-sel usus terpengaruh, lapisan usus menjadi rusak dan tubuh tidak dapat lagi menyerap nutrisi atau mencerna makanan dengan baik. Akibatnya adalah mual, muntah, dehidrasi, dan diare parah. Virus parvo biasanya menyebabkan diare yang berdarah dengan bau yang jauh lebih buruk daripada kotoran normal anjing.</p>\r\n<p>Saat penyakit tersebut menyerang tubuh, anjing menjadi sangat lemah dan dehidrasi. Selain itu, anjing juga dapat mengalami sepsis, yaitu infeksi pada darah yang dapat terjadi ketika dinding usus tidak dapat bertindak sebagai penghalang terhadap bakteri.</p>\r\n<p>Infeksi virus parvo menyerang kucing juga dapat memunculkan gejala, seperti :</p>\r\n<ul>\r\n <li>Muntah.</li>\r\n <li>Diare/diare berdarah.</li>\r\n <li>Dehidrasi.</li>\r\n <li>Penurunan berat badan.</li>\r\n <li>Demam tinggi.</li>\r\n <li>Anemia (karena penurunan sel darah merah).</li>\r\n <li>Bulu kasar.</li>\r\n <li>Depresi.</li>\r\n <li>Kehilangan selera makan.</li>\r\n <li>Gejala neurologis, misal kurangnya koordinasi.</li>\r\n</ul>\r\n\r\n<h5>Penanganan Umum</h5>\r\n<ul>\r\n <li>\r\n  <b>Perawatan Dukungan:</b> Kucing atau anjing yang terinfeksi parvo perlu dirawat di rumah sakit hewan untuk perawatan intensif. Ini termasuk terapi cairan intravena untuk mencegah dehidrasi dan memperbaiki kondisi elektrolit yang terganggu.\r\n </li>\r\n <li>\r\n  <b>Kontrol Muntah dan Diare:</b> Obat-obatan seperti antiemetik (untuk muntah) dan antidiareal bisa diberikan untuk mengurangi gejala yang parah.\r\n </li>\r\n <li>\r\n  <b>Kontrol Muntah dan Diare:</b> Obat-obatan seperti antiemetik (untuk muntah) dan antidiareal bisa diberikan untuk mengurangi gejala yang parah.\r\n </li>\r\n <li>\r\n  <b>Nutrisi:</b> Penting untuk memberikan nutrisi yang adekuat. Dalam beberapa kasus, hewan mungkin tidak mau makan, sehingga pemberian nutrisi cair melalui infus atau makanan yang mudah diserap bisa dilakukan.\r\n </li>\r\n</ul>\r\n\r\n<h5>Obat-obatan yang Mungkin Digunakan</h5>\r\n<ul>\r\n <li><b>Antibiotik:</b> Diberikan untuk mencegah infeksi bakteri sekunder, yang bisa memperburuk kondisi kucing atau anjing yang sudah lemah akibat virus parvo.</li>\r\n <li><b>Antiemetik:</b> Untuk mengurangi muntah yang dapat menyebabkan dehidrasi lebih lanjut.\r\n\r\n</li>\r\n <li><b>Antidiareal:</b> Untuk mengurangi frekuensi dan keparahan diare, yang merupakan gejala utama dari infeksi parvo.</li>\r\n <li><b>Obat Penahan Nyeri:</b> Kadang-kadang diperlukan untuk mengurangi ketidaknyamanan yang dialami hewan.</li>\r\n</ul>\r\n\r\n<h5>Pencegahan</h5>\r\n<ul>\r\n <li><b>Vaksinasi:</b> Vaksinasi rutin sangat penting untuk mencegah infeksi virus parvo pada kucing dan anjing.</li>\r\n <li><b>Higienis Lingkungan:</b> Membersihkan dan mendesinfeksi lingkungan di mana hewan tinggal sangat penting untuk mencegah penularan virus parvo.</li>\r\n</ul>\r\n\r\n<h5>Perhatian Khusus</h5>\r\n<ul>\r\n <li><b>Konsultasikan dengan Dokter Hewan:</b> Penanganan kasus parvo dapat bervariasi tergantung pada kondisi individu hewan dan tingkat keparahan infeksi. Penting untuk selalu berkonsultasi dengan dokter hewan untuk diagnosis dan perawatan yang tepat.</li>\r\n</ul>\r\n\r\n<p>\r\n Virus parvo dapat sangat berbahaya dan mematikan, terutama pada anak kucing atau anjing yang belum divaksinasi atau sistem kekebalannya lemah. Oleh karena itu, tindakan medis segera dan perawatan intensif sangat penting untuk meningkatkan kesempatan kesembuhan hewan peliharaan Anda.\r\n</p>', 'N', 'N', 'N', 3, '2edefcc238b920c457e801befa9ddce8.jpg', 'Y', '2024-06-26', 'google', 'https://www.halodoc.com/artikel/ketahui-tentang-virus-parvo-yang-bisa-menyerang-anjing-dan-kucing'),
(7, 'Pengertian, Tujuan, dan Manfaat pada Vaksin Anabul', 'pengertian-tujuan-dan-manfaat-pada-vaksin-anabul', '<h5>Pengertian Vaksin Kucing</h5>\r\n<p>Vaksin kucing dapat melindungi hewan ini dari berbagai penyakit yang disebabkan virus atau bakteri. Dokter hewan dapat membantu pemilik hewan peliharaan terkait vaksinasi kucing mana yang terbaik dan seberapa sering kucing harus divaksin. Biasanya tergantung pada usia mereka, kesehatan secara keseluruhan, dan gaya hidup. Dokter hewan juga akan memikirkan berapa lama vaksinasi harus bertahan dan seberapa besar kemungkinan kucing terkena penyakit tertentu.</p>\r\n\r\n<h5>Tujuan Vaksin Kucing</h5>\r\n<p>Selayaknya vaksinasi pada manusia atau imunisasi, vaksinasi pada kucing bertujuan untuk membantu mempersiapkan sistem kekebalan tubuh. Dengan demikian, tubuh kucing dapat memberikan perlindungan ketika terinfeksi virus ataupun bakteri tertentu.</p>\r\n<p>Vaksin kucing mengandung antigen yang terlihat seperti organisme penyakit tersebut. Namun, penyuntikannya tidak akan menyebabkan penyakit, karena hanya mengenalkan penyakit tersebut untuk memicu pertumbuhan antibodi. Ketika penyakit yang sesungguhnya menyerang, sistem kekebalan tubuh kucing sudah mengenali penyakit tersebut dan bisa melawannya.</p>\r\n\r\n<h5>Manfaat Vaksin Kucing</h5>\r\n<p>Secara umum, manfaat utama vaksinasi kucing adalah melindungi hewan tersebut dari berbagai penyakit. Baik yang disebabkan oleh infeksi bakteri, maupun infeksi virus. Namun, tak hanya itu, vaksin kucing juga bermanfaat dalam memperkuat sistem imun hewan tersebut.</p>\r\n<p>Sebagai contoh, salah satu vaksin yang diberikan untuk kucing adalah vaksin untuk mencegah infeksi feline panleukopenia atau feline parvovirus (FPV). Perlu diketahui bahwa infeksi tersebut merupakan penyakit yang sangat menular dengan tingkat kematian yang tinggi pada anak kucing.</p>\r\n<p>Penyakit ini biasanya dimulai dengan penurunan energi dan nafsu makan rendah, berkembang menjadi muntah dan diare. Virus ini juga membunuh sel darah putih, membuat kucing muda lebih rentan terhadap infeksi sekunder.</p>\r\n<p>Melalui pemberian vaksin, kucing akan memiliki sistem kekebalan tubuh yang lebih tinggi terhadap infeksi FPV. Alhasil, risiko penularannya akan rendah, jika kucing terinfeksi virus tersebut pun, gejalanya diharapkan tidak terlalu parah.</p>\r\n\r\n<h5>Kapan Harus Melakukan Vaksin Kucing?</h5>\r\n<p>Secara umum, kucing perlu mendapatkan vaksinasi sedari dini, yaitu ketika masih kitten atau anak kucing. Anak kucing harus mulai mendapatkan vaksinasi ketika mereka berusia enam sampai delapan minggu sampai mereka berusia sekitar 16 minggu.</p>\r\n<p>Kemudian, kucing juga perlu mendapatkan vaksinasi booster (tambahan) setahun kemudian, yang dilakukan secara berurutan setiap tiga hingga empat minggu. Sementara itu, kucing dewasa membutuhkan suntikan lebih jarang.  Biasanya kucing dewasa perlu divaksin setiap tahun atau setiap 3 tahun, tergantung pada berapa lama vaksin dirancang untuk bertahan.</p>\r\n\r\n<h5>Prosedur Vaksin Kucing</h5>\r\n<p>Prosedur vaksinasi kucing biasanya diberikan melalui suntikan di bawah kulit. Kendati demikian, vaksin juga terkadang dapat diberikan sebagai tetes ke mata atau hidung. Prosedur vaksinasi kucing biasanya hanya memakan waktu singkat.</p>\r\n<p>Perlu diketahui bahwa semua vaksin yang akan disuntikan harus menjalani pengujian keamanan dan kemanjuran yang ketat, sebelum dilisensikan untuk digunakan pada kucing oleh pihak berwenang. Bila digunakan dengan tepat dan sesuai anjuran, vaksin aman dan memberikan perlindungan penting bagi kucing terhadap sejumlah penyakit.</p>\r\n\r\n<h5>Tempat Melakukan Vaksin Kucing</h5>\r\n<p>Secara umum, tempat melakukan vaksinasi kucing dapat dilakukan pada klinik dokter hewan atau rumah sakit hewan. Selain itu, petshop juga biasanya menyediakan pelayanan vaksinasi kucing. Melakukan vaksinasi pada hewan peliharaan memang penting. Namun, hal yang tak kalah pentingnya adalah dengan rutin memeriksakan kondisi kesehatan hewan peliharaanmu. Khususnya jika secara tiba-tiba hewan peliharaan terlihat lesu dan tidak mau makan.</p>\r\n', 'N', 'N', 'N', 3, '0d7d110a51e13c9c0f8345ce0aa1f325.jpg', 'Y', '2024-06-05', 'sumber-gambar', 'sumber-informasi'),
(8, 'Pengertian, Tujuan, dan Manfaat Vaksin pada Anubis', 'pengertian-tujuan-dan-manfaat-vaksin-pada-anubis', '<h5>Pengertian Vaksin Anjing</h5>\r\n<p>Vaksin anjing memainkan peran penting dalam melindungi anjing dari banyak penyakit berbahaya dan bahkan fatal. Selain vaksin rabies, ada sejumlah vaksinasi lain yang dapat melindungi anjing dari penyakit serius yang mudah dicegah. Sama seperti vaksinasi pada manusia, vaksin anjing juga dapat memberi anjing antibodi atau kekebalan untuk melindunginya dari penyakit atau infeksi.</p>\r\n\r\n<h5>Tujuan Vaksin Anjing</h5>\r\n<p>Tujuan dari vaksin anjing adalah merangsang sistem kekebalan dengan membuatnya mengenali antigen yang ada. Dengan cara ini, jika seekor anjing terkena penyakit yang sebenarnya, sistem kekebalannya akan mengenalinya, dan karena itu bersiaplah untuk melawannya, atau setidaknya mengurangi dampaknya.</p>\r\n\r\n<h5>Manfaat Vaksin Anjing</h5>\r\n<p>Vaksin bermanfaat untuk membantu mempersiapkan sistem kekebalan anjing untuk mempertahankan diri dari invasi organisme penyebab penyakit. Vaksin mengandung antigen, yang meniru organisme penyebab penyakit dalam sistem kekebalan anjing, tetapi sebenarnya tidak menyebabkan penyakit.</p>\r\n\r\n<h5>Kapan Harus Melakukan Vaksin Anjing?</h5>\r\n<p>Secara umum, anak anjing harus mulai divaksinasi antara 6 dan 8 minggu. Kemudian dilanjut setiap tiga minggu sampai kira-kira berusia empat bulan. Umumnya, jika ibu anak anjing memiliki sistem kekebalan yang sehat, kemungkinan besar ia akan menerima antibodi dalam ASI saat menyusui. Setelah anak anjing disapih dari susu induknya, vaksinasi harus dimulai. Berikut ini jadwal vaksinasi untuk anak anjing:</p>\r\n<ul>\r\n <li>6-10 minggu: DHPP, Batuk Kennel</li>\r\n <li>11-14 minggu: DHPP, Leptospirosis, Canine Influenza, Penyakit Lyme</li>\r\n <li>15-16: DHPP, Leptospirosis, Influenza Anjing, Penyakit Lyme, Rabies</li>\r\n</ul>\r\n<p>Setelah anak anjing mencapai usia dewasa, dan semua vaksin inti anak anjing telah diberikan, dokter hewan dapat mulai menerapkan jadwal vaksinasi anjing dewasa. Jadwal vaksinasi anjing terdiri dari booster dewasa berkala, yang merupakan kombinasi dari jenis vaksin DHPP yang sama yang diberikan kepada anak anjing, bersama dengan beberapa tambahan lainnya. Ketika anjing datang untuk divaksinasi di satu tahun pertama mereka, direkomendasikan untuk mendapatkan vaksin DHPP, leptospirosis, dan rabies serta canine influenza dan lyme, jika gaya hidup anjing membutuhkan vaksin ini.</p>\r\n\r\n<h5>Prosedur Vaksin Anjing</h5>\r\n<p>Dokter hewan biasanya akan memastikan anjing bersih sehingga tidak ada kotoran yang tampak di sekitar kulit yang melar pada leher. Bulu anjing harus dipastikan kering sebelum diberi vaksin. Setelah itu, dokter akan mencubit naik kulit anjing di dekat leher, untuk mendapatkan ruang di bawah kulit tempat menyuntikkan vaksin. Tidak seperti pada manusia, dokter tidak akan mengusapkan kapas beralkohol pada lokasi suntikan sebelumnya. Setelah itu, dokter akan menusukkan jarum suntik berisi cairan vaksin dengan hati-hati dan menekan plunger suntikan secara perlahan hingga semua cairan habis. Jika ada darah di jarum suntik, dokter biasanya akan mencari lokasi penyuntikan lain. Sebab ini berarti jarum mengenai pembuluh darah. Jika semua cairan sudah disuntikkan, dokter akan mencabut jarum dari kulit anjing. Setelah jarum dicabut, dokter akan memberi tekanan pada lokasi penyuntikan selama 30 detik untuk mencegah pendarahan. Setelah vaksinasi selesai, anjing biasanya langsung boleh dibawa pulang dan beraktivitas seperti biasa. Namun, jika ada efek atau gejala yang dialami anjing setelah vaksinasi, segera hubungi dokter hewan yang menangani.</p>\r\n\r\n<h5>Tempat Melakukan Vaksin Anjing</h5>\r\n<p>Vaksinasi anjing bisa dilakukan di klinik hewan yang menyediakan layanan ini. Selain memastikan vaksinasinya lengkap, kamu juga perlu memerhatikan kesehatan anjing peliharaan kamu.</p>\r\n', 'N', 'N', 'N', 3, '009590888e80ac9225d1dee5e7acd27c.jpg', 'Y', '2024-06-06', 'sumber-gambar', 'sumber-informasi'),
(9, 'Mengapa Vaksin Penting untuk Diberikan pada Anabul?', 'mengapa-vaksin-penting-untuk-diberikan-pada-anabul', '<p><b>Sobat Paws - </b>Jika kamu pernah mendengar “kucing punya sembilan nyawa”, maka ini adalah mitos. Jangan sampai hanya karena mitos ini kamu tidak merawat kesehatan kucing dengan baik. Khususnya dalam memberikan vaksin. Pemberian vaksin penting untuk kesehatan dan umur panjang kucing secara keseluruhan.</p>\r\n<p>Vaksin kucing terbukti secara medis untuk memerangi inkubasi dan penularan penyakit kucing yang dapat melumpuhkan dan fatal. Baik kamu memiliki anak kucing atau kucing dewasa, maka kamu perlu memberikannya vaksin. Biasanya vaksin juga tergantung pada usia, kesehatan secara keseluruhan, dan gaya hidup kucing.</p>\r\n\r\n<h5>Alasan Vaksin Penting untuk Kucing</h5>\r\n<p>Perlu disadari bahwa memberi vaksin untuk kucing adalah salah satu tindakan kasih sayang dan bertanggung jawab sebagai pemilik kucing yang menyayangi peliharaannya. Namun, masih ada pemilik kucing yang ragu dan bertanya-tanya apakah vaksin kucing benar-benar diperlukan, terutama untuk kucing yang tidak pernah keluar rumah. Jadi, apa alasan vaksin kucing penting diberikan?</p>\r\n<p>Vaksin penting diberikan untuk mencegah kucing dari berbagai penyakit. Vaksinasi adalah bagian penting dari perawatan kesehatan dan pencegahan penyakit untuk kucing. Kucing yang sehari-harinya hanya di dalam rumah dapat terpapar penyakit serius, karena banyak penyakit yang bisa menyebar melalui udara. Hanya dengan membuka jendela rumah, sudah bisa mengekspos kucing peliharaanmu dari penyakit yang ditularkan melalui udara. Kucing juga mungkin bisa terpapar penyakit saat perjalanan rutin ke dokter hewan atau fasilitas hewan peliharaan lainnya. Dengan menjalani serangkaian vaksinasi kucing, kamu dapat memastikan bahwa kucing kamu terlindungi dan aman.</p>\r\n\r\n<h5>Vaksin Kucing yang Direkomendasikan</h5>\r\n<p>Untuk pemberian vaksin kucing, kamu perlu berdiskusi terlebih dahulu pada dokter hewan melalui aplikasi Halodoc tentang jadwal yang disarankan. Jadwal vaksin juga mempertimbangkan gaya hidup dan kebutuhan khusus kucing.</p>\r\n<p>Kucing dalam ruangan mungkin tidak memerlukan vaksin yang sama dengan kucing luar ruangan, misalnya karena risiko terpapar penyakit tertentu lebih kecil di dalam ruangan. Biasanya anak kucing harus mulai mendapatkan vaksin saat usianya 6 hingga 8 minggu sampai mereka berusia sekitar 16 minggu. Kucing dewasa lebih jarang membutuhkan vaksin, biasanya hanya setiap tahun atau setiap tiga tahun, tergantung pada berapa lama vaksin dirancang untuk bertahan.</p>\r\n<p>Inilah vaksin dasar yang biasanya direkomendasikan untuk semua kucing:</p>\r\n<ul>\r\n <li>\r\n  Panleukopenia: Vaksin ini dikenal sebagai feline parvovirus atau feline distemper. Virus panleukopenia adalah penyakit virus yang mengancam jiwa yang menyebar dengan cepat melalui populasi kucing yang tidak divaksinasi. Penyakit ini mempengaruhi sel-sel yang membelah dengan cepat di dalam tubuh serta dapat menyebabkan muntah dan diare.\r\n </li>\r\n <li>\r\n  Vaksin Herpes Kucing: Infeksi saluran pernapasan atas yang diakibatkan virus. Penyakit herpes kucing sangat menular dan bisa menyebabkan pneumonia, khususnya pada anak kucing.\r\n </li>\r\n <li>\r\n  Calicivirus: Penyakit pernapasan virus lainnya, yang juga mempengaruhi usus dan sistem muskuloskeletal.\r\n </li>\r\n</ul>\r\n<p>Ada juga vaksin tambahan yang mungkin diperlukan, yaitu:</p>\r\n<ul>\r\n <li>Klamidia: Vaksin untuk bakteri, sering menjadi bagian dari suntikan FVRCP.</li>\r\n <li>Leukemia Kucing: Infeksi virus yang serius dapat menyebar melalui banyak cairan tubuh seperti air liur, feses, urine, dan susu. Vaksin ini direkomendasikan untuk kucing yang menghabiskan waktu di luar rumah.</li>\r\n <li>Bordetella: Kucing yang sering ke salon atau tinggal di kandang penitipan harus divaksinasi untuk mencegah infeksi menyebar dengan cepat, terutama di tempat yang banyak hewan lainnya.</li>\r\n</ul>\r\n<p>Meskipun beberapa penyakit kucing tidak fatal, namun dapat dicegah dengan vaksinasi. Sebagai pemilik hewan peliharaan yang bertanggung jawab, kamu bisa membantu kucing menghindari ketidaknyamanan ini dengan mengikuti jadwal vaksinasi yang disarankan.</p>\r\n', 'N', 'N', 'N', 3, 'adfb14d3499027daf3d0a677e4739f98.jpg', 'Y', '2024-06-05', 'sumber-gambar', 'sumber-informasi'),
(10, 'Pentingnya Memberikan Vaksin pada Anubis Peliharaan', 'pentingnya-memberikan-vaksin-pada-anubis-peliharaan', '<p><b>Sobat Paws - </b>Saat kamu memutuskan untuk mengadopsi anak anjing, bukan hanya kebutuhan makanan dan tempat tinggal saja yang harus dipikirkan. Kamu juga perlu memberinya vaksin secara teratur agar ia tumbuh kuat, sehat, dan berumur panjang. Sama halnya dengan memberikan vaksin pada manusia, vaksin pada anjing juga dilakukan dengan memasukkan virus atau bakteri yang telah dimodifikasi.</p>\r\n<p>Hal tersebut dimaksudkan agar vaksin dapat merangsang antibodi untuk melawan dan mencegah saat penyakit di masa mendatang. Vaksin pada anjing merupakan hal yang wajib dilakukan, mengingat ada beberapa virus yang dapat berakibat fatal, yaitu kematian. Lantas, apa yang perlu diperhatikan dalam memberikan vaksin pada anjing peliharaan? Simak ulasannya berikut ini.</p>\r\n', 'N', 'N', 'N', 3, 'a8e8fd1f8a01e4680d5d7e0b84d72b88.jpg', 'Y', '2024-06-05', 'sumber-gambar', 'sumber-informasi'),
(11, 'Empat Tips Bersihkan Bulu Hewan Peliharaan di Rumah', 'empat-tips-bersihkan-bulu-hewan-peliharaan-di-rumah', '<p><b>Sobat Paws - </b>Kesehatan tubuh tidak hanya dijaga dari makanan yang dikonsumsi dan melakukan olahraga.</p>\r\n  <p>Kesehatan tubuh juga bisa dipengaruhi oleh kebersihan tempat tinggal kita. Kalau rumah kotor, maka tubuh juga jadi mudah sakit, misalnya mengalami kulit gatal-gatal, seperti saat alergi kambuh.</p>\r\n  <p>Tahukah kamu? Kambuhnya alergi dan kulit yang jadi gatal-gatal juga bisa disebabkan karena bulu hewan peliharaan.</p>\r\n  <p>Terlebih kalau hewan peliharaan dipelihara di dalam rumah, karena bulunya bisa menempel di berbagai barang yang ada di rumah.</p>\r\n  <p>Sayangnya, bulu hewan pelihara seperti bulu anjing atau bulu kucing ini sulit dibersihkan, karena bisa menempel di manapun dan karena ringan, bisa berterbangan ke mana-mana saat dibersihkan.</p>\r\n <h5>1. Menggunakan Penyedot Debu</h5>\r\n <div class=\"container-fluid\">\r\n   <p>Cara pertama yang bisa dilakukan untuk membersihkan bulu hewan peliharaan di rumah adalah dengan menggunakan penyedot debu.</p>\r\n    <p>Menggunakan penyedot debu bisa menjadi cara yang cepat dan mudah untuk membersihkan bulu hewan yang menempel di permukaan barang-barang yang ada di rumah.</p>\r\n   <p>Penyedot debu akan mengisap berbagai kotoran dengan cepat dan kekuatan penghisapnya juga bisa diatur.</p>\r\n    <p>Selain itu, menggunakan penyedot debu untuk membersihkan bulu hewan juga tidak membuat bulu-bulu dan kotoran lainnya berterbangan, sehingga tidak menempel di barang lainnya.</p>\r\n  </div>\r\n  <h5>2. Menggunakan Selotip</h5>\r\n <div class=\"container-fluid\">\r\n   <p>Kalau di rumah teman-teman tidak ada penyedot debu, cara lain yang bisa digunakan untuk membersihkan bulu hewan adalah dengan menggunakan selotip.</p>\r\n   <p>Lem yang ada di selotip bisa mengangkat bulu-bulu hewan yang menempel di berbagai permukaan barang di rumah. Misalnya seperti di karpet, maupun di bantal.</p>\r\n   <p>Agar cepat bersih, teman-teman bisa menggunakan selotip yang ukurannya besar, sehingga area yang dibersihkan juga lebih luas.</p>\r\n  </div>\r\n  <h5>3. Menggunakan Sarung Tangan Karet</h5>\r\n <div class=\"container-fluid\">\r\n   <p>Sarung tangan karet juga bisa jadi pilihan untuk membersihkan bulu hewan yang menempel di barang-barang yang ada di rumah atau di pakaian, lo.</p>\r\n   <p>Cara menggunakannya juga mudah, kok, teman-teman.</p>\r\n    <p>Kita cukup memakai sarung tangan karet itu, kemudian usap atau gosokkan tangan pada barang-barang yang ada di rumah.</p>\r\n   <p>Nah, nantinya bulu-bulu hewan peliharaan akan menempel pada sarung tangan karet dan permukaan barang di rumah akan bersih.</p>\r\n   <p>Untuk membersihkan bulu hewan dari sarung tangan karet, kita cukup langsung mengambilnya saja, atau mencucinya dengan air panas dan sarung tangan karet bisa kembali digunakan.</p>\r\n  </div>\r\n  <h5>4. Menggunakan Pel Basah</h5>\r\n <div class=\"container-fluid\">\r\n   <p>Kalau banyak bulu hewan peliharaan yang berjatuhan di lantai, sebaiknya jangan disapu, teman-teman.</p>\r\n    <p>Sebab proses menyapu ini akan menyebabkan bulu-bulu berterbangan ke seluruh rumah dan menempel ke barang-barang lain.</p>\r\n    <p>Sebaiknya, gunakan pel yang basah dan lembap untuk membersihkan lantai rumah dari bulu-bulu hewan peliharaan.</p>\r\n    <p>Bulu-bulu hewan peliharaan ini akan menempel di kain pel basah dan lantai jadi bersih.</p>\r\n   <p>Setelah bulu-bulu tadi menempel di kain pel yang basah, segera cuci kainpel dan buang airnya. Jika lantai sudah kering, kita bisa menyapunya, lalu mengulangi mengepel lantai.</p>\r\n </div>', 'N', 'N', 'N', 4, '46f812a9756c0bb87a7f5a3a85f583b2.jpg', 'Y', '2024-05-29', 'sumber-gambar', 'sumber-informasi'),
(12, '6 Tips Membersihkan Telinga Anabul yang Kotor, Jangan Disepelekan', '6-tips-membersihkan-telinga-anabul-yang-kotor-jangan-disepelekan', '<p><b>Kucing - </b>adalah salah satu hewan yang betah berlama-lama membersihkan diri sendiri. Oleh karena itu, sebagian besar kucing tidak membutuhkan bantuan untuk membersihkan tubuh mereka. Kucing bisa terlihat bersih dan terawat meski hanya membersihkan dirinya sendiri tanpa bantuan manusia.</p>\r\n<p>Namun, beberapa kucing tidak mampu membersihkan lubang telinga mereka. Badan mereka bisa terlihat bersih, tetapi kotoran-kotoran masih tersisa dalam telinga. Dalam kasus ini, kucing membutuhkan manusia untuk membersihkan kotoran di telinganya.</p>\r\n<p>Lantas, kapan waktu yang tepat untuk membersihkan telinga kucing kotor? Bagaimana cara membersihkan telinga kucing yang menempel tanpa menyakitinya? Ternyata membersihkan telinga kucing cukup mudah lho.</p>\r\n<h5>Beberapa Tips Membersihkan Telinga Kucing</h5>\r\n<p><b>1. Bersihkan terlebih dahulu area lubang telinga</b></p>\r\n<p>Cara membersihkan kuping kucing yang pertama, dudukkan kucing di atas pangkuan yang sudah dilapisi handuk. Proses pembersihan telinga kucing biasanya membutuhkan waktu sekitar 10 menit. Sebelum membersihkan area dalam telinga kucing, Anda sebaiknya membersihkan terlebih dahulu area luar telinga. Pastikan area sekitar lubang kucing bersih dari kotoran maupun bulu yang menutup lubang.</p>\r\n<p>Anda boleh memotong bulu kucing yang terlalu panjang, sehingga lubang telinga mudah diakses untuk membersihkan kotoran di dalamnya. Bulu-bulu tersebut bisa menghalangi ketika sedang membersihkan kotoran sekaligus menghambat pergerakan kotoran telinga ke luar.</p>\r\n<p><b>2. Sediakan mainan atau cemilan</b></p>\r\n<p>Untuk memastikan kucing tetap tenang saat telinganya dibersihkan, Anda bisa menyiapkan cemilan di sekitar kucing. Jangan membersihkan telinga kucing ketika mereka tidak bisa diam dan tenang di satu tempat. Anda perlu memastikan kucing tenang agar proses pembersihan tidak menyakitinya. Apabila kucing tetap tidak bisa diam, Anda sebaiknya menyiapkan mainan untuk mengalihkan fokusnya.</p>\r\n<p><b>3. Bersihkan menggunakan minyak zaitun</b></p>\r\n<p>Ada beberapa barang yang perlu dipersiapkan untuk membersihkan telinga kucing, di antaranya minyak zaitun, tetes telinga, bola kapas atau cotton bud, dan wadah berisi air hangat. Anda sebaiknya menghangatkan terlebih dahulu minyak zaitun atau tetes telinga sebelum meneteskan ke telinga kucing. Caranya, tempatkan minyak zaitun dan tetes telinga ke dalam panci berisi air hangat, bukan air panas.</p>\r\n<p><b>4. Pijat lembut telinga kucing</b></p>\r\n<p>Selanjutnya, teteskan satu hingga tiga tetes minyak zaitun atau pembersih telinga ke lubang telinga kucing. Teteskan cairan tersebut ke kedua telinga kucing Anda. Apabila cairan sudah masuk, pijat lembut bagian pangkal telinga kucing. Pijatan dilakukan guna membuat minyak zaitun melapisi bagian dalam telinga kucing hingga merata. Kucing biasanya akan menggoyangkan kepalanya secara spontan karena efek pemberian cairan tersebut.</p>\r\n<p><b>5. Bersihkan secara perlahan dengan cotton bud</b></p>\r\n<p>Setelah lima menit, Anda perlu mengeluarkan kotoran dari telinga kucing. Caranya, bersihkan bagian dalam telinga menggunakan cotton bud yang telah dicelupkan ke dalam air hangat. Anda juga bisa menggunakan bola kapas untuk membersihkan minyak dan kotoran dari telinga kucing. Lakukan langkah tersebut secara bergantian pada telinga sisi kiri dan kanan. Jangan lupa untuk mengusap telinga kucing dengan tisu kering apabila masih ada cairan yang menetes.</p>\r\n<p><b>6. Perhatikan hal detail di telinga kucing</b></p>\r\n<p>Terakhir, perhatikan hal-hal detail di telinga kucing ketika membersihkannya. Apabila keluar darah atau aroma tak enak dari telinga, maka itu bisa menandakan terjadi pembengkakan di salah satu bagian telinga. Jika hal itu terjadi pada kucing di rumah, maka segera bawa kucing ke dokter hewan terdekat untuk mendapatkan pengobatan lebih lanjut. Kesehatan telinga menandakan kesehatan tubuh kucing. Apabila terjadi infeksi pada telinga kucing, maka kucing bisa kehilangan indera pendengarannya.</p>\r\n<p>Membersihkan telinga kucing cukup mudah bagi Anda yang sudah berpengalaman. Jangan lupa untuk memberikan hadiah kecil pada kucing ketika ia sudah berhasil bersikap tenang dan diam selama proses pembersihan berlangsung. Semoga beberapa cara membersihkan telinga kucing di atas bisa membantu ya.</p>\r\n', 'N', 'N', 'N', 4, '27e5926406484f2045bdc462de9a8a74.jpg', 'Y', '2024-06-05', 'sumber-gambar', 'sumber-informasi');
INSERT INTO `posting` (`id`, `title`, `seo_title`, `content`, `featured`, `choice`, `thread`, `id_category`, `photo`, `is_active`, `date`, `sumber_gambar`, `sumber_informasi`) VALUES
(13, 'Empat tips untuk membantu hewan peliharaan Anda tetap ramping dan sehat', 'empat-tips-untuk-membantu-hewan-peliharaan-anda-tetap-ramping-dan-sehat', '<p><b>Memberikan camilan ekstra? - </b>Meskipun mereka tampaknya menikmatinya, itu bukan merupakan langkah yang tepat untuk mereka. Sama seperti manusia, hewan peliharaan juga bisa mengalami masalah berat badan. Dan itu menjadi masalah, ketika melihat hewan peliharaan bertambah gemuk. Dalam survei dokter hewan baru-baru ini, 73% mengatakan bahwa obesitas adalah “salah satu kondisi paling umum” yang mereka lihat. Survei menunjukkan setengah dari anjing peliharaan dan 44% kucing membawa kelebihan berat badan.</p>\r\n<p>Ini merupakan trend yang mengkhawatirkan. Meskipun kita menganggap bahwa hewan peliharaan gemuk itu lucu, masalah berat badan bisa mengakibatkan masalah kesehatan yang signifikan dari diabetes hingga masalah kardiorespirasi seperti kesulitan bernafas saat tidur) dan bahkan kemungkinan menderita sengatan panas.</p>\r\n<p>Obesitas – yang didiagnosis ketika hewan peliharaan memiliki berat badan 15% -20% lebih banyak dari berat badan idealnya – juga meningkatkan risiko terkena osteoartritis dan beberapa jenis kanker.</p>\r\n<p>Kita semua ingin hewan peliharaan kita hidup selama mungkin. Jadi, inilah beberapa cara untuk menjaga anjing atau kucing Anda dalam kondisi prima.</p>\r\n<h5>1. Buat mereka tetap aktif</h5>\r\n<div class=\"container-fluid\">\r\n <p>Banyak anjing tidak berolahraga secara teratur – dan terkadang itu disebabkan oleh cuaca buruk, atau mungkin karena masalah perilaku, seperti cemas saat bertemu anjing atau orang lain. Jika kita bandingkan kucing yang berada di luar ruangan umumnya tetap bugar dan aktif, sementara kucing dalam ruangan dapat memiliki lemak tubuh setidaknya 5% lebih tinggi dari kucing luar ruangan, dan jauh lebih rentan terhadap obesitas.</p>\r\n <p>Olahraga adalah kunci untuk menjaga berat badan yang sehat, dan juga untuk menurunkan berat badan. Cobalah untuk melatih anjing Anda setidaknya sekali sehari, karena idealnya lebih dari sekali. Berhati-hatilah untuk memastikan panjang dan jenis latihan sesuai dengan usia dan kemampuan mereka, dan tingkatkan latihan secara perlahan.</p>\r\n <p>Anjing menyukai “aroma” atau “latihan” yang dapat dilakukan di ruang tamu Anda. Dan ada banyak mainan kucing untuk mendorong kucing Anda untuk membakar kalori saat bermain.</p>\r\n <p>Anda juga dapat membuat waktu makan lebih aktif dengan menyebarkan makanan – tempat Anda menyebarkan makanan anjing ke tanah (setelah memastikannya bersih dan aman) – atau memberi umpan, yang mendorong anjing Anda untuk bekerja mencari makanan dan camilan.</p>\r\n <p>Hidroterapi, yang melibatkan kegiatan untuk membuat anjing Anda berenang atau berjalan di kolam renang atau treadmill air, bisa menjadi pilihan yang bagus untuk latihan ringan. Ini terutama berlaku untuk anjing yang lebih tua atau mereka yang baru pulih dari cedera.</p>\r\n <p>Bahkan kucing dapat dilatih untuk berjalan-jalan dengan petunjuk. Tetapi jika kucing Anda tidak mau bekerja sama, Anda dapat mencoba permainan di dalam ruangan atau taman untuk meningkatkan aktivitasnya.</p>\r\n</div>\r\n<h5>2. Perhatikan diet mereka</h5>\r\n<div class=\"container-fluid\">\r\n <p>Beberapa hewan peliharaan sangat menikmati makanan mereka sehingga mereka bisa menjadi sedikit gemuk berapa pun usianya. Atau, sama seperti manusia, “fenomena usia paruh baya” dapat terjadi pada hewan peliharaan yang secara alami melambat seiring bertambahnya usia.</p>\r\n <p>Diet mereka mungkin perlu diubah untuk mempertahankan berat badan yang sehat. Penurunan berat badan harus dilakukan secara bertahap, jadi selalu gunakan pedoman pemberian makan yang direkomendasikan pada kemasan makanan – atau menggunakan kalkulator kalori online – sebagai titik awal untuk mengetahui berapa banyak Anda memberi makan hewan peliharaan.</p>\r\n <p>Cobalah untuk mencatat asupan makan dalam sebuah buku setiap hari. Dan, jangan lupa untuk menimbang makanan hewan peliharaan Anda secara akurat dengan menggunakan timbangan. Sendok sangat tidak akurat dan memungkinkan kita untuk memberi makan berlebihan.</p>\r\n <p>Jika berat badannya terlalu berat – atau bahkan mendekati proporsi obesitas – mungkin yang terbaik adalah memulai program penurunan berat badan hewan peliharaan Anda dengan pergi ke dokter hewan untuk pemeriksaan kesehatan lengkap dan melakukan pemeriksaan kondisi tubuh. Dokter juga akan dapat memberikan target berat badan dan kerangka waktu untuk mencapainya.</p>\r\n</div>\r\n<h5>3. Waspadai risiko lain</h5>\r\n<div class=\"container-fluid\">\r\n <p>Terkadang risiko obesitas ada dalam gen. Beberapa anjing Labrador retriever, misalnya, memiliki mutasi genetik yang membuat mereka cenderung menjadi “pecinta makanan” dan penambahan berat badan. Dan hewan peliharaan yang dikebiri dapat mengurangi kebutuhan kalori harian, jadi jika diet mereka tidak diubah mereka dapat secara tidak sengaja menambah berat badan.</p>\r\n <p>Jadi, penting untuk mengenali berat dan bentuk tubuh yang sehat untuk kucing atau anjing Anda – dan faktor-faktor yang dapat memengaruhinya. Percayai dokter hewan dan profesional lainnya, untuk memudahkan mereka melakukan konsultasi dengan Anda tentang cara terbaik untuk membantu hewan peliharaan Anda menurunkan berat badan.</p>\r\n</div>\r\n<h5>4. Singkirkan camilan berkalori tinggi</h5>\r\n<div class=\"container-fluid\">\r\n <p>Makanan dan camilan berlemak mengandung banyak kalori meski dalam jumlah kecil, sehingga Anda dapat dengan mudah memberi makan hewan peliharaan Anda secara berlebihan tanpa disadari. Dan makanan “manusia” yang menggemukkan, seperti sisa makanan, juga dapat menyebabkan berat badan bertambah, di samping peningkatan risiko pankreatitis – dan berpotensi lebih buruk jika makanan beracun, termasuk bawang dan beberapa pemanis buatan, tertelan.</p>\r\n <p>Tetapi mengelola berat badan hewan peliharaan Anda tidak berarti Anda tidak dapat memberikan makanan yang mereka suka. Kunjungi toko hewan peliharaan terdekat dari rumah Anda untuk carilah alternatif rendah kalori yang sehat.</p>\r\n <p>Atau coba cek lemari es Anda. Banyak anjing menyukai wortel atau mentimun, terutama jika dipotong-potong sebagai makanan untuk melatih mereka. Kucing suka sedikit tuna atau ayam, keduanya tinggi protein tetapi rendah kalori.</p>\r\n <p>Jangan lupa untuk melihat cara lain merawat hewan peliharaan Anda juga – seperti berolahraga, bermain, dan sekadar menghabiskan waktu bersama mereka akan bermanfaat bagi hewan dan manusia.</p>\r\n</div>\r\n<p>Semua tips memang membutuhkan sedikit usaha. Tetapi menjaga tubuh hewan peliharaan Anda tetap ramping dan sehat akan membantu memperpanjang hidup mereka. Dan siapa di antara kita yang tidak ingin menghabiskan waktu lebih lama lagi dengan hewan peliharaan kesayangan kita?</p>\r\n', 'N', 'N', 'N', 4, 'c5d2c5f4dd6698433b90ab9286fceaf0.jpg', 'Y', '2024-05-27', 'sumber-gambar', 'sumber-informasi'),
(14, 'Tips Liburan bersama Hewan Peliharaan', 'tips-liburan-bersama-hewan-peliharaan', '<p><b>Liburan bersama Hewan Peliharaan -</b> Bagi kamu yang memiliki hewan peliharaan, baik anjing, kucing, maupun hewan lainnya, tentu kamu tidak ingin berpisah lama-lama dari mereka. Selain karena rasa rindu, tentu ada perasaan khawatir karena tidak bisa menjaga mereka secara langsung dan mautidak mau, mereka perlu dititipkan di penitipan hewan.</p>\r\n<P>Namun, biaya untuk penitipan hewan peliharaan tidak semuanya terjangkau. Selain itu, di musim liburan, biasanya tempat penitipan hewan juga sudah dipenuhi oleh hewan peliharaan lain yang mana pemiliknya sudah bepergian juga. Maka dari itu, banyak yang lebih memilih untuk membawa hewan peliharaannya saat bepergian.</p>\r\n<p>Jika kamu berencana untuk bepergian bersama hewan peliharaanmu, berikut beberapa tips liburan bersama hewan peliharaan yang perlu diperhatikan.</p>\r\n<h5>Tips Liburan bersama Hewan Peliharaan</h5><br>\r\n<p><b>1. Pastikan Hewan peliharaan nyaman di travel bag atau box</b></p>\r\n<p class=\"container-fluid\">Seperti layaknya manusia yang ingin berada di tempat yang nyaman saat bepergian, maka usahakan untuk menempatkan hewan peliharaan di tempat yang nyaman saat bepergian. Ketika sedang di jalan saat liburan bersama hewan peliharaan, baik di dalam mobil, kereta, maupun pesawat, hewan peliharaanmu perlu berada di tempat yang nyaman pada waktu yang lama. Saat ini, terdapat beberapa pilihan tempat untuk membawa hewan peliharaanmu, baik kandang/travel bag yang disesuaikan dengan ukuran hewan peliharaan dan ruang geraknya.</p>\r\n<p><b>2. Jaga hewan peliharaan agar tetap terhidrasi</b></p>\r\n<p class=\"container-fluid\">Sama seperti kita, hewan juga memerlukan air minum untuk tetap terhidrasi, terutama saat berada di perjalanan panjang. Satu lagi tips berlibur bersama hewan peliharaan yang cukup penting adalah, kamu bisa memasang botol minum untuk peliharaanmu di kandang/travel bag. Namun jika tidak memungkinkan, pastikan kamu dapat berhenti setiap beberapa waktu untuk memberikan minum ke hewan peliharaanmu.</p>\r\n<p><b>3. Mengajak hewan peliharaan ke beberapa tempat pada jarak yang dekat</b></p>\r\n<p class=\"container-fluid\">Jika kamu akan mengajak hewan peliharaan ke luar kota dengan jarak yang jauh, maka sebaiknya dalam beberapa waktu sebelum berlibur bersama hewan peliharaan, kamu sudah mulai mengajak mereka untuk berada di dalam kandang/travel bag agar ia terbiasa berada di dalam mobil. Selain itu, mungkin hewan peliharaanmu akan panik saat berada di suatu tempat yang belum familiar dalam jangka waktu yang lama, dan dapat membuat hewan peliharaanmu stress.</p>\r\n<p><b>4. Bawa mainan kesukaannya</b></p>\r\n<p class=\"container-fluid\">Jika akan melakukan perjalanan untuk waktu yang lama, jangan lupa untuk membawa mainan kesukaan hewan peliharaanmu agar ia tetap terhibur meski berada di dalam sebuah area yang kecil. Tidak hanya manusia, hewan juga dapat merasakan lelah jika tidak bisa berjalan-jalan atau berlari-lari dalam waktu yang lama. Sehingga, hewan peliharaanmu dapat bermain dengan mainannya sambil menghabiskan waktu di dalam kendaraan.</p>\r\n<p><b>5. Persiapkan travel kit hewan peliharaanmu</b></p>\r\n<p class=\"container-fluid\">Biasanya, kita akan mempersiapkan travel kit berupa obat-obatan dan kotak P3K untuk keadaan emergency. Hal tersebut juga diperlukan bagi para hewan peliharaan. Yang perlu kamu persiapkan adalah obat atau vitamin, alat untuk membersihkan kotoran anabul, serta surat imunisasi ataupun riwayat kesehatan hewan peliharaanmu.</p>\r\n<p><b>6. Jangan meninggalkan hewan peliharaan sendirian di dalam mobil</b></p>\r\n<p class=\"container-fluid\">Jika kamu berencana untuk bepergian via jalur darat atau menggunakan mobil, maka kamu sangat tidak dianjurkan untuk meninggalkan hewan peliharaan sendirian di dalam mobil. Selain peliharaanmu bisa kekurangan oksigen, hawa panas juga bisa membuat hewan peliharaan merasa tidak nyaman. Tak hanya itu, hewan peliharaan juga bisa merasa stress bila ditinggalkan sendirian dengan jangka waktu yang panjang di dalam mobil.</p>\r\n<p><b>7. Mengunjungi dokter hewan untuk memeriksa kesehatan hewan peliharaanmu sebelum berangkat bepergian</b></p>\r\n<p class=\"container-fluid\">Untuk memastikan bahwa hewan peliharaanmu sehat untuk bepergian atau membutuhkan perlakuan khusus selama di perjalanan, sebaiknya konsultasikan terlebih dahulu dengan dokter hewan sebelum liburan mu bersama hewan peliharaan mu. Hal tersebut disebabkan karena beberapa jenis hewan peliharaan membutuhkan tempat khusus saat bepergian atau membutuhkan snack setiap beberapa waktu untuk mengurangi tingkat kecemasannya.</p>\r\n<p><b>8. Tahu kapan harus meninggalkan hewan peliharaanmu di rumah</b></p>\r\n<p class=\"container-fluid\">Tips liburan bersama hewan peliharaan selanjutnya adalah tahu kapan kamu dapat meninggalkan hewan peliharaanmu di rumah. Jika kamu bepergian dan akan menginap di rumah keluarga atau rumahmu di kota lain, maka pertimbangkan untuk meninggalkan hewan peliharaan sejenak di rumah. Hal tersebut dikarenakan tempat yang akan kamu datangi di daerah tersebut belum tentu memperbolehkan hewan peliharaan masuk atau bisa membuat hewan peliharaanmu kurang nyaman. Sebagai contoh, kamu akan pergi ke café yang ukurannya tidak begitu luas. Jika kamu membawa hewan peliharaanmu, hal ini bisa mengganggu tamu lain ataupun justru hewan peliharaanmu kurang nyaman karena tidak memiliki banyak ruang gerak. Ingat, kamu perlu mempertimbangkan kenyamanan peliharaanmu dan juga tamu lain yang mengunjungi tempat tersebut.</p>\r\n<p><b>9. Membaca peraturan terkait bepergian bersama hewan peliharaan dari instansi terkait</b></p>\r\n<p class=\"container-fluid\">Di era pandemi ini, kamu perlu banyak mencari tahu mengenai peraturan-peraturan dalam bepergian untuk mencegah terjadinya penularan COVID-19 dari/ke hewan. Apabila kamu berkendara dengan kereta, maka kamu perlu melihat kebijakan dari PT. KAI terkait hewan bepergian bersama peliharaan. Sementara, jika kamu akan bepergian dengan pesawat udara, maka kamu perlu memastikan dengan pihak maskapai terkait apa saja yang perlu diperhatikan dan dipersiapkan.</p>\r\n<p><b>10. Menginap di akomodasi yang memperbolehkan hewan peliharaan</b></p>\r\n<p class=\"container-fluid\">Saat bepergian ke luar kota atau bahkan negeri, tentu kamu perlu merencanakan tempat akomodasi. Salah satu hal penting yang perlu kamu perhatikan adalah bahwa tidak seluruh akomodasi memperbolehkan tamunya membawa hewan peliharaan. Bahkan, kebanyakan dari akomodasi melarang adanya hewan peliharaan sehingga kamu perlu mencari akomodasi dari jauh hari.\r\n<p class=\"container-fluid\">\r\nUntuk memudahkan kamu dalam mencari akomodasi yang memperbolehkan kamu menginap bersama hewan peliharaan, kamu bisa memesan kamar hotel via Traveloka dan melihat checklist fasilitasnya. Traveloka sudah mencantumkan fasilitas-fasilitas yang ditawarkan suatu akomodasi, termasuk izin membawa hewan peliharaan. Selain itu, perhatikan juga bahwa beberapa akomodasi bisa saja meminta biaya tambahan jika tamu membawa hewan peliharaannya.</p>\r\n<p><b>11. Pastikan kamu membawa dokumen yang tepat</b></p>\r\n<p class=\"container-fluid\">Tips liburan bersama hewan peliharaan yang terakhir adalah kamu perlu memastikan dokumen-dokumen yang kamu bawa. Beberapa dokumen-dokumen pendukung mungkin diperlukan saat kamu bepergian dengan hewan peliharaan terutama jika kamu menggunakan pesawat udara. Sebagai contoh, surat-surat yang berhubungan dengan kesehatan hewan peliharaanmu atau syarat-syarat lainnya.</p>\r\n<p>\r\n  Nah, sekarang kamu sudah tahu kan tips liburan bersama hewan peliharaan ?</p>\r\n<p>Pikirkan secara matang terkait liburanmu bersama hewan peliharaan: buat daftar kelebihan dan kekurangan membawa hewan peliharaan saat liburan agar kamu bisa lebih mantap saat menentukan pilihan. Selain itu, kamu juga bisa mencoba melakukan tips nomor 3 yaitu mengajak hewan peliharaan ke beberapa tempat pada jarak yang dekat untuk melihat bagaimana reaksinya saat diajak bepergian.\r\n</p>', 'N', 'N', 'N', 4, '523d3ade47442c30c5873284cd8555ce.jpg', 'Y', '2024-06-23', 'unsplash.com/tranmautritam', 'https://www.traveloka.com/id-id/explore/destination/tips-liburan-bersama-hewan-peliharaan-acc/108089'),
(15, 'Menggemaskan, Anubis Imut Ini Jadi Satpam Keliling di Jalanan Korea', 'menggemaskan-anubis-imut-ini-jadi-satpam-keliling-di-jalanan-korea', '<p><b>Sobat Paws -</b> publik berhasil dicuri oleh seekor anjing Pomeranian kecil yang menggemaskan karena perannya menjadi petugas patroli desa di Distrik Seongdong, Seoul Timur. Anjing mungil yang akrab dipanggil Hodu itu tengah menjalankan tugasnya bagian dari program \'patroli anjing\' sejak 20 April 2024 untuk berkeliling menjaga keamanan sekitar.</p>\r\n                <p>Program ini diluncurkan untuk memotivasi para pemilik hewan peliharaan dan juga anjing peliharaannya untuk berpatroli di lingkungan sekitar sambil berjalan-jalan sehari-hari. Jika terjadi bahaya atau insiden apapun selama berkeliling, maka dapat dengan cepat dilaporkan kepada pihak berwenang. </p>\r\n                <p>Pemilik anjing berusia tiga tahun, Eum Ho-sang mengaku dirinya tertarik untuk berkontribusi dalam program tersebut lantaran berkaitan keselamatannya sebelumnya seperti lubang dan parkir liar. Dengan program inilah Eum Ho-sang ingin memberikan kesempatan Hodu untuk mengabdi kepada masyarakat sambil bermain menikmati jalan-jalan mereka di lingkungan sekitar.</p>\r\n                <p>Program patrol anjing ini tampaknya cukup banyak diminati. Dimulai pada tahun 2022 dengan sebanyak 64 tim, mengalami peningkatkan yang besar dengan memperoleh 1.011 tim yang berpartisipasi dan sebanyak 48.431 laporan diajukan. Sementara itu, tahun ini program ini semakin diperluas dan mencapai angka 1.424 tim berkontribusi dalam patroli setelah upacara proklamasi pada 20 April. Untuk Distrik Seongdong sendiri terdapat sebanyak 46 tim yang berdedikasi, termasuk tim Hodu.</p>\r\n                <p>Dalam program ini diberlakukan beberapa kriteria untuk memenuhi syarat menjadi tim patroli. Beberapa di antaranya adalah sebarapi baik anjing memahami perintah seperti \'tunggu\' dan datang ke sini\', perilaku mereka Ketika dihampiri orang asing, serta apakah mereka dapat melalui hewan peliharaan lain dengan tenang tanpa menggonggong berlebihan.</p>\r\n                <p>Hodu berhasil menarik banyak perhatian di sosial media saat waktu bertugasnya. Foto dan video pendek anjing Pomeranian menggemaskan itu disebarkan oleh kepala Kantor Distrik Seongdong, Chong Won-o di media sosial X.</p>\r\n                <p>Inisiatif patroli anjing, yang dipimpin oleh komisi kepolisian mandiri Pemerintah Metropolitan Seoul, memainkan peran penting dalam menjaga komunitas kita, mengidentifikasi perbaikan fasilitas yang diperlukan dan menawarkan bantuan jika diperlukan,” kata Chong.</p>', 'N', 'N', 'N', 2, '2d85599a54d1af9255ab0481b5a4ba68.jpg', 'Y', '2024-06-23', 'Korea Times', 'https://travel.okezone.com/read/2024/05/15/406/3008640/menggemaskan-anjing-imut-ini-jadi-satpam-keliling-di-jalanan-korea?page=all'),
(16, 'Super Gemas! Nurang Anabul Oren Jadi Selebriti Baru di Bandara Bangkok', 'super-gemas-nurang-anabul-oren-jadi-selebriti-baru-di-bandara-bangkok', '<p><b>Sobat Paws -</b> hewan berbulu halus dan menggemaskan, telah lama menjadi sahabat manusia. Nah, di antara berbagai ras kucing yang ada, kucing oren atau kucing berwarna oranye memiliki tempat istimewa di hati banyak orang. Mereka dikenal sebagai kucing yang penuh energi, suka bermain, jago berkelahi dan memiliki kepribadian yang unik. Kucing oranye juga terkenal dengan tingkah lakunya yang lucu dan terkadang konyol, yang selalu berhasil membuat orang merasa gemas.</p>\r\n                <p>Tengah viral sosok kucing oyen, lewat video yang diunggah oleh akun @mothershipsg, yang sudah mendapatkan lebih dari 324 ribu kali penayangan dan lebih dari 25 ribu like ini, memperlihatkan di tengah sibuknya Bandara Internasional Suvarnabhumi, Bangkok, terdapat seekor kucing oranye menggemaskan yang mendadak menjadi selebriti baru.</p>\r\n                <p>Kucing oranye tersebut diketahui bernama Nurang, seekor kucing jantan berusia sembilan bulan. Nurang berhasil menarik perhatian dari para pengunjung dengan sikapnya yang tenang dan ramah. Sang pemilik, Kanokporn yang berusia 31 tahun, mengungkapkan bahwa dia selalu membawa Nurang bersamanya ketika berkunjung ke bandara untuk membantu pacarnya dalam beberapa urusan, karena kucing tersebut tidak suka ditinggal sendirian di rumah.</p>\r\n                <p>Kanokporn mengungkapkan bahwa ketika ditinggal sendiri, Nurang pernah membuat keributan di kamarnya dan membuatnya menjadi amat berantakan. Sangat berbeda ketika Nurang diajak ikut ke bandara, Nurang tidak pernah menyebabkan masalah di dalam bandara, dan selalu berada dalam pengawasan Kanokporn. Menemukan Nurang di Bandara Suvarnabhumi mungkin tidak mudah, tapi ada satu tempat favoritnya untuk tidur, yaitu kereta dorong bagasi. Selain itu, Nurang mudah dikenali dengan lonceng yang selalu dikalungkan di lehernya.</p>\r\n                ', 'N', 'N', 'N', 1, 'dba5f11b1e2badfab1860a903b3a9752.jpg', 'Y', '2024-06-23', 'TikTok @mothership.sg', 'https://lifestyle.okezone.com/read/2024/05/16/612/3009327/super-gemas-nurang-kucing-oren-jadi-selebriti-baru-di-bandara-bangkok?page=all');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'member'),
(3, 'dokter');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `sub_url` varchar(50) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `id_menu`, `sub_title`, `sub_url`, `is_active`) VALUES
(1, 1, 'Member', 'admin/member', 'Y'),
(2, 8, 'Kontak', 'admin/contact', 'Y'),
(3, 6, 'Menu Utama', 'admin/menu', 'Y'),
(4, 6, 'Sub Menu', 'admin/submenu', 'Y'),
(5, 2, 'Kategori', 'admin/category', 'Y'),
(6, 2, 'Posting', 'admin/posting', 'Y'),
(7, 4, 'Album', 'admin/album', 'N'),
(8, 4, 'Gallery Foto', 'admin/gallery', 'N'),
(9, 3, 'Pertanyaan Masuk', 'admin/tanya', 'Y'),
(10, 4, 'Klinik', 'admin/klinik', 'Y'),
(11, 8, 'Identitas Web', 'admin/identity', 'Y'),
(12, 5, 'Iklan', 'admin/iklan', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tanya`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tanya`
--

INSERT INTO `tanya` (`id_tanya`, `nama`, `email`, `hewan`, `pertanyaan`, `tanggapan`, `date`, `judul_pertanyaan`, `nama_dokter`) VALUES
(1, 'Agung Prasetyo', '', 'Anabul', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2024-06-16', 'Apa Boleh kita mencukur kumis kucing?', 'Rohman Syah'),
(2, 'Miselsa Anisdria', 'admin@gmail.com', 'Anubis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '', '2024-06-20', 'Apa Boleh kita mencukur kumis Anjing?', ''),
(3, 'Adnan Syukur', 'anay@', 'Anubis', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2024-06-16', 'Cara membersihkan kutu pada anjing saya', 'Muhammad Salman Farisi'),
(5, 'Hendra Dwi Yulianto', 'fajar@bagus.com', 'Anabul', 'Assalamualaikum dok. Berikan tips untuk merawat anak kucing ', '', '2024-06-16', 'Merawat anak kucing', ''),
(16, 'Agung', 'agung@gmail.com', 'Anubis', 'test tanya', 'Jawaban telah dikirim', '2024-06-27', 'test', 'Dokter1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(1, 'Admin Pawscare', 'Pondok Kelapa', 'admin@gmail.com', 'pro1716378679.jpg', '$2y$10$7PU7HcVIjNpN1yk22MxoOu82ZkWnx8qIJ6Rg1zUodV2BF2xIqDpKG', 1, 1, 1718763832),
(2, 'Muhammad Rohman Syah', 'Pondok Kelapa', 'syahr642@gmail.com', 'pro1715615687.png', '$2y$10$9XtBZ2JD6u7fezUim0Xzle/xhzoSVkm5Y9rN3pnXMS2I4ElRSvXYa', 2, 1, 1715148235),
(3, 'Miselsa Anisdria Susanto', 'Pulo Gebang', 'miselsaas@gmail.com', 'default.jpg', '$2y$10$8cMiYw6sCz4W/CETpAIH9.Zj.lRZzrDfjPsKXmDLBtpctK6N9pR2S', 2, 1, 1718654109),
(4, 'Dokter1', 'alamat dokter1', 'dokter1@gmail.com', 'dokter1.png', '$2y$10$AxXKuraRoo2MM.HwiP8JzeaJSeGhrQhKxYr/2i87RTp1VCZ3yvrCS', 3, 1, 1718785750),
(5, 'dokter2', 'rahasia', 'dokter2@gmail.com', '', '$2y$10$2HjA7Sb2W5FcZCsDqO9rv.v/88d2gx9iyTwQlYwYZCtD/rCModeNO', 3, 1, 1719261459),
(6, 'Agung', 'bsi kalimalang', 'agung@gmail.com', 'default.jpg', '$2y$10$x8Y/50lwvbv8tx/LfUWcKeBtu9dSSeRtaRRR0F7SptZShhRoG.H8a', 2, 1, 1719453764);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identity`
--
ALTER TABLE `identity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iklan`
--
ALTER TABLE `iklan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `klinik`
--
ALTER TABLE `klinik`
  ADD PRIMARY KEY (`id_klinik`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posting`
--
ALTER TABLE `posting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tanya`
--
ALTER TABLE `tanya`
  ADD PRIMARY KEY (`id_tanya`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `identity`
--
ALTER TABLE `identity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iklan`
--
ALTER TABLE `iklan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `klinik`
--
ALTER TABLE `klinik`
  MODIFY `id_klinik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `posting`
--
ALTER TABLE `posting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tanya`
--
ALTER TABLE `tanya`
  MODIFY `id_tanya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posting`
--
ALTER TABLE `posting`
  ADD CONSTRAINT `posting_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
