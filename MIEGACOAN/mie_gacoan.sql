-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 09:15 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mie_gacoan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'admin@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `short_desc` varchar(250) NOT NULL,
  `long_desc` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `short_desc`, `long_desc`) VALUES
(7, 'MIE', 'Mie Gacoan punya banyak macam loh! Apaan aja tuh?', 'Sepiring kelezatan mie yang dipadukan dengan bumbu rahasia, ditambah taburan ayam cincang dan pangsit goreng. Hmmm... Dijamin mankyus abis!'),
(8, 'DIMSUM', 'Perlu temen makan mie gacoan? Disini ada dimsum banyak banget cocok buat nemenin harimu!', 'Resto Mie Gacoan menyediakan berbagai side-dish cielah, yang siap menemani kalian! Kalo disebutin tuh ada pangsit goreng, siomay, udang keju, udang rambutan, ceker, lumpia goreng! Penasaran? Buruan beli!'),
(9, 'ES GENDERUWO', 'Panas banget gak sih bun? Butuh minum gak? Cek sini yuk...', 'Resto Mie Gacoan juga menyediakan berbagai minuman yang unik-unik loh! Salah satunya Es Genderuwo, eits jangan takut dulu! Aman diminum kok serius...');


-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `cat_id`, `fname`, `description`) VALUES
(1, 7, 'Mie Angel', 'semangkuk kelezatan mie dipadukan dgn bumbu racikan rahasia yg super nikmat. ditemani taburan ayam cincang dan pangsit goreng yang maknyus abizzz'),
(2, 7, 'Mie Setan', 'semangkuk mie dengan rasa pedas asin yang bakal membuat mulut kamu meledak !!!. Tentunya dengan topping ayam cincang dan krupuk pansit yang gurih dan kresssshh!'),
(3, 7, 'Mie Iblis', 'untuk yang suka manis wajib cobain mie yang satu ini. mie dengan rasa pedas manis buat kamu yang ingin mencoba sensasi pedas manis yang cocok banget!'),
(4, 8, 'Pangsit Goreng', 'dimsum goreng yang berisi daging ayam cincang didalamnya dan dibalut dengan kulit pangsit diluarnya yang renyah dan kriukkk abiezzz!'),
(5, 8, 'Siomay', 'dimsum kukus isi ayam dicampur sedikit udang dibalut dengan kulit siomay yang MANTUULLLL!'),
(6, 8, 'Udang Keju', 'dimsum imut nan gendud ini berisi potongan keju di dalamnya dibalut dengan tepung roti yang crispy dan yummy abiezzz'),
(7, 8, 'Udang Rambutan', 'bola daging udang yang diselimuti dengan surai naga, juicy didalam dan kriuk diluar menjadikan side dish ini punya tekstur yang unik!'),
(8, 8, 'Ceker', '3 ceker ayam yang dilumuri bumbu sambal yang membakar lidah, DIJAMIN HOT!'),
(9, 8, 'Lumpia Udang', 'dimsum dengan isi daging ayam dan udang kemudian dibalut dengan kulit tahu yang dijamin TOP MARKOTOPPP!'),
(10, 9, 'Es Genderuwo', 'segelas es buah-buahan ditambah dengan cincau versi premium dengan rasa manis dan ditambah dengan susu yang membuat mulutmu segar!'),
(11, 9, 'Es Tuyul', 'segelas minuman yang membuat kamu COOL setelah panas-panasan yang dilengkapi dengan buah-buahan dan dipadukan dengan cincau sejuta umat yang pastinya cool'),
(12, 9, 'Es Pocong', 'es penyemangat dengan rasa tropical segar yang membuat harimu lebih fresh dan bersemangat!'),
(13, 9, 'Es Sundel Bolong', 'minuman es susu ditambah sirup mocca yang smooth yang cocok untuk kamu yang maniezz');


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `food_id` varchar(10) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `timestamp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `food_id`, `user_name`, `timestamp`) VALUES
(3, 'RSTGF384345', '3', '1', 'Samprit', '04:09:2019 12:02:06am');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `timestamp` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `timestamp`) VALUES
(3, 'fadila', 'larasati@gmail.com', '12345', '06:06:2021 01:40:08am');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
