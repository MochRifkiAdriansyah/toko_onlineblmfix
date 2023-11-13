-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2023 at 01:44 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sk`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$AIy0X1Ep6alaHDTofiChGeqq7k/d1Kc8vKQf1JZo0mKrzkkj6M626');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `kode_customer` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`kode_customer`, `nama`, `email`, `username`, `password`, `telp`) VALUES
('C0001', 'rifki', 'adriansyah27@gmail.com', 'rifki', '$2y$10$cnnAX/acEaAsuh.OmN/gfOcp/KHpfNCbaj46Oax5eB8p5neNMy6Um', '+62895332754847');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `kode_customer` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kode_produk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kode_produk`, `nama`, `image`, `deskripsi`, `harga`) VALUES
('P0001', 'Komputer LENOVO', '654e2be091bdd.jpg', 'Intel Core i3 3.3 GHz, 18.5″ LED, 500GB HDD, 2GB RAM DDR3, VGA Intel HD Grafhics, DVD, Bluetooth, WiFi, USB, HDMI, LAN, Card Reader, DOS\r\n			', 6100000),
('P0002', 'Laptop', '654e2c2f2692d.png', 'Intel Pentium Dual Core G870 3 Ghz, 15.6″ inch, 500GB HDD, 2GB RAM, Intel GMA HD, DVD, Bluetooth, WiFi, USB, HDMI, LAN, Card Reader, DOS', 5000000),
('P0003', 'LG 43 Inch Smart TV LED 43LM5700PTC', '654e3ce8b3706.jpg', 'Ukuran: 43\",Resolusi: 1920 × 1080 Active HDR 2.0 Ch. / 20W, Dolby Audio ,Konektivitas: USB/HDMI,Unit Utama ,Kartu Garansi', 2500000),
('P0004', 'AC LG - Hercules Mini S-05LPBX-R-2', '654e3d765d2b1.jpg', '½ PK, Hemat listrik dengan daya listrik ,260 Watt, Fitur Energi Saving, Penggunaan awet dengan teknologi Gold Fin Anti-Corrosion, Teknologi Jet Cool dan Anti-Virus, Filter.\r\n			', 2975000),
('P0005', 'COSMOS Kipas Angin 16 inch 16WFO', '654e3e0811752.jpg', 'Kipas Angin ,Baling Lebih Besar ,3 Pilihan Kecepatan,16 inch ,Unit Utama', 260000),
('P0006', 'OPPO A77s', '654e3ed4900ac.jpg', 'OS Version	Android 12\r\nUkuran Layar	6.56 inch\r\nScreen Resolution	720 x 1612 Pixel\r\nDetail Prosesor	SM6225 Snapdragon 680 4G (6 nm)\r\nRAM	8 GB\r\nMemori Internal	128 GB\r\nResolusi Kamera Belakang	50 MP\r\nResolusi Kamera Utama Lainnya	2 MP\r\nResolusi Kamera Depan	8 MP\r\nUSB	Type-C, USB OTG\r\nKapasitas Baterai	5000 mAh\r\n			', 2300000),
('P0007', 'iPhone 15 Pro Max', '654e4054623b7.jpg', 'Utama 48 MP: 24 mm, bukaan ƒ/1.78, penstabilan gambar optik sensor bergerak generasi kedua, 100% Focus Pixels, dukungan untuk foto resolusi super tinggi (24 MP dan 48 MP)', 19000000),
('P0008', 'Kulkas Side by Side dengan Food Showcase dan Dispenser, 669L', '654e41ed9160c.jpg', 'Mulai dari Rp 918.750/bln. Kalkulator Finansial\r\nFood Showcase\r\nSpaceMax™ Technology\r\nAll-around cooling\r\n			', 22050000),
('P0009', 'RICE COOKER SANKEN SJ-150', '654e42d66b0fa.jpeg', 'Rice Cooker Rice Cooker SANKEN SJ-150 SuperCom (Penanak Nasi Serbaguna) yang menggunakan material stainless untuk body dan panci. Penampilan SuperCom SANKEN terlihat elegan dan mewah. Panci stainless nya juga terlihat cantik tersaji di meja makan.', 526000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kode_customer`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
