-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2020 at 09:08 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--
CREATE DATABASE IF NOT EXISTS `chat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `chat`;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `message` text NOT NULL,
  `user_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message`, `user_name`) VALUES
(43, 'hi', 'irenee'),
(44, 'hi 2', 'herve'),
(45, 'how are you', 'irenee'),
(46, 'how are you', 'irenee'),
(47, 'hi??', 'irenee'),
(48, 'hi??', 'irenee'),
(49, 'hi??', 'irenee'),
(50, 'hi??', 'irenee'),
(51, 'hi??', 'irenee'),
(52, 'hi??', 'irenee'),
(53, 'hi??', 'irenee'),
(54, 'hi??', ''),
(55, 'hi??', 'irenee'),
(56, 'hi??', 'irenee'),
(57, 'hi', 'xyz'),
(58, 'hhh', 'herve'),
(59, 'hhh', 'herve');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `user_name`, `password`) VALUES
(1, 'iradukunda ', 'irene', 'irenee', '123'),
(11, 'rrr', 'rrr', 'rrr', 'rrr'),
(12, 'herve', 'herve', 'herve', 'herve'),
(13, 'xyz', 'xyz', 'xyz', 'xyz');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `crud`
--
CREATE DATABASE IF NOT EXISTS `crud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crud`;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `name`, `location`) VALUES
(40, 'irenee', 'bugarama'),
(42, 'uwimana', 'benithe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- Database: `db_berita`
--
CREATE DATABASE IF NOT EXISTS `db_berita` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_berita`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `judul`, `isi`) VALUES
(1, 1, 'ttttttttt', 'irenee 005.jpg'),
(2, 2, 'ertetre5', 'gerterte'),
(3, 2, 'ytttoorret', 'rgtrgr');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(255) NOT NULL,
  `emp_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment1` varchar(255) NOT NULL,
  `comment2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `name`, `comment1`, `comment2`) VALUES
(1, '', '', 'irenee 002.jpg'),
(2, 'irenee 002.jpg', '', ''),
(3, 'irenee 044.jpg', '', ''),
(4, 'irenee 044.jpg', '', ''),
(5, 'irenee 044.jpg', '', ''),
(6, 'irenee 007.jpeg', 'sdnhfk', 'hcsk'),
(7, 'irenee 007.jpeg', 'sdnhfk', 'hcsk'),
(8, 'irenee 056.jpg', 'dhsfk', 'rehtkjrhgkjvhngier');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `title`, `comment`) VALUES
(16, 'irenee 097.jpg', '', ''),
(17, 'irenee 097.jpg', '', ''),
(18, 'irenee 133.jpg', '', ''),
(19, 'irenee 005.jpg', 'ministeri yubuzima kwirinda colonavirus', ' 88'),
(20, 'irenee 118.jpg', 'flvmndfk', ' 		abana bazatangira kwiga bitarenze	'),
(21, 'irenee 066.jpg', 'www', ' sss');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nmkategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nmkategori`) VALUES
(1, 'dsfertf'),
(2, 'tertrr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `del_up.php`
--
CREATE DATABASE IF NOT EXISTS `del_up.php` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `del_up.php`;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `fname`, `lname`) VALUES
(1, 'byiringiro ', 'rague'),
(2, 'rusheshangoga ', 'michael');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `demo`
--
CREATE DATABASE IF NOT EXISTS `demo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `demo`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `E_id` int(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`E_id`, `uname`, `pass`) VALUES
(25, 'admin.esmuganza345678', '23456789'),
(26, 'admin.esmuganza345678', '23456789'),
(28, 'admin.esmuganza345678', '23456789'),
(29, 'admin.esmuganza345678', '23456789'),
(30, 'admin.esmuganza345678', '23456789'),
(32, 'admin.esmuganza345678', '23456789'),
(33, 'admin.esmuganza345678', '23456789'),
(34, 'admin.esmuganza345678', '23456789'),
(35, 'admin.esmuganza345678', '23456789'),
(36, 'admin.esmuganza345678', '23456789'),
(37, 'admin.esmuganza345678', '23456789'),
(38, 'admin.esmuganza345678', '23456789'),
(39, 'admin.esmuganza345678', '23456789'),
(40, '', 'yug');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`E_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `E_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Database: `izubaedu_ccak`
--
CREATE DATABASE IF NOT EXISTS `izubaedu_ccak` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `izubaedu_ccak`;

-- --------------------------------------------------------

--
-- Table structure for table `2019_accomo`
--

CREATE TABLE `2019_accomo` (
  `id` int(11) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `restaurent` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2019_accomo`
--

INSERT INTO `2019_accomo` (`id`, `transport`, `restaurent`) VALUES
(1, '900', '900');

-- --------------------------------------------------------

--
-- Table structure for table `2019_class_fees`
--

CREATE TABLE `2019_class_fees` (
  `id` int(11) NOT NULL,
  `classname` text NOT NULL,
  `term1` varchar(200) NOT NULL,
  `term2` varchar(200) NOT NULL,
  `term3` varchar(200) NOT NULL,
  `cid` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2019_class_fees`
--

INSERT INTO `2019_class_fees` (`id`, `classname`, `term1`, `term2`, `term3`, `cid`) VALUES
(1, 'P1A', '', '', '70000', 11),
(2, 'P1B', '', '', '70000', 12),
(3, 'P2A', '', '', '70000', 10),
(4, 'P2B', '', '', '70000', 9),
(5, 'P3A', '', '', '70000', 7),
(6, 'P3B', '', '', '70000', 8),
(7, 'P4A', '', '', '75000', 5),
(8, 'P4B', '', '', '', 6),
(9, 'P5A', '', '', '', 3),
(10, 'P5B', '', '', '', 4),
(11, 'P6A', '9000', '', '88000', 2),
(12, 'P6B', '', '', '88000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `2019_fees`
--

CREATE TABLE `2019_fees` (
  `id` int(11) NOT NULL,
  `student` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `term1` varchar(200) NOT NULL,
  `term2` varchar(200) NOT NULL,
  `term3` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2019_fees`
--

INSERT INTO `2019_fees` (`id`, `student`, `class`, `term1`, `term2`, `term3`) VALUES
(1, '319624264811', 'P6A', '6200', '', '80000'),
(2, '319888764839', 'P6A', '7000', '', ''),
(3, '319448664821', 'P6A', '', '', ''),
(4, '319411554836', 'P6A', '', '', ''),
(5, '319273884821', 'P6A', '', '', ''),
(6, '319628674826', 'P6A', '', '', ''),
(7, '31946188484', 'P6A', '', '', ''),
(8, '319604424826', 'P6A', '', '', ''),
(9, '319810584832', 'P6A', '', '', ''),
(10, '319598934816', 'P6A', '', '', ''),
(11, '319687624824', 'P6A', '', '', ''),
(12, '319106614813', 'P6A', '', '', ''),
(13, '319877104838', 'P6A', '', '', ''),
(14, '319490454819', 'P6A', '', '', ''),
(15, '319404654814', 'P6A', '', '', ''),
(16, '319822344839', 'P6A', '', '', ''),
(17, '319526754834', 'P6A', '', '', ''),
(18, '31959341488', 'P6A', '', '', ''),
(19, '319293314830', 'P6A', '', '', ''),
(20, '319124874827', 'P6A', '', '', ''),
(21, '319445634811', 'P6A', '', '', ''),
(22, '319111644833', 'P6A', '', '', ''),
(23, '3208546826', 'P6A', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `2019_marks`
--

CREATE TABLE `2019_marks` (
  `mid` int(11) NOT NULL,
  `names` varchar(255) NOT NULL,
  `reg` double NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `term1_quiz` double NOT NULL,
  `term1_exam` double NOT NULL,
  `term2_quiz` double NOT NULL,
  `term2_exam` double NOT NULL,
  `term3_quiz` double NOT NULL,
  `term3_exam` double NOT NULL,
  `term1_tot` double NOT NULL,
  `term2_tot` double NOT NULL,
  `term3_tot` double NOT NULL,
  `gmax` double NOT NULL,
  `gtot` double NOT NULL,
  `gper` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2019_marks`
--

INSERT INTO `2019_marks` (`mid`, `names`, `reg`, `cname`, `class`, `term1_quiz`, `term1_exam`, `term2_quiz`, `term2_exam`, `term3_quiz`, `term3_exam`, `term1_tot`, `term2_tot`, `term3_tot`, `gmax`, `gtot`, `gper`) VALUES
(67, 'BANZUSENGE GHISLAIN', 319599833131, 'GUSOMA', 'P6B', 8, 4, 4, 9, 0, 0, 12, 13, 0, 90, 25, 27.777777777778),
(68, 'DUSENGE HOSEE FRATERNE', 319250673119, 'GUSOMA', 'P6B', 7, 7, 9, 8, 0, 0, 14, 17, 0, 90, 31, 34.444444444444),
(69, 'DUSHIME FRIDA IRENE', 31919795314, 'GUSOMA', 'P6B', 8, 12, 11, 8, 0, 0, 20, 19, 0, 90, 39, 43.333333333333),
(70, 'HITIMANA REPONSE PATIENT', 31977199318, 'GUSOMA', 'P6B', 7, 9, 11, 10, 0, 0, 16, 21, 0, 90, 37, 41.111111111111),
(71, 'IRAKOZE GISELE', 319329913111, 'GUSOMA', 'P6B', 12, 12, 10, 11, 0, 0, 24, 21, 0, 90, 45, 50),
(72, 'IRAKOZE RUTH', 319136433111, 'GUSOMA', 'P6B', 10, 13, 13, 11, 0, 0, 23, 24, 0, 90, 47, 52.222222222222),
(73, 'IRINGIRE IRIHO HUBERT', 319541523132, 'GUSOMA', 'P6B', 4, 7, 8, 11, 0, 0, 11, 19, 0, 90, 30, 33.333333333333),
(74, 'ISHIMWE BONHEUR', 319242503126, 'GUSOMA', 'P6B', 11, 13, 12, 13, 0, 0, 24, 25, 0, 90, 49, 54.444444444444),
(75, 'ISHIMWE HERITIER', 319227303117, 'GUSOMA', 'P6B', 6, 6, 4, 8, 0, 0, 12, 12, 0, 90, 24, 26.666666666667),
(76, 'ISHIMWE UWASE GENTILLE', 31965268319, 'GUSOMA', 'P6B', 4, 5, 7, 5, 0, 0, 9, 12, 0, 90, 21, 23.333333333333),
(77, 'MUGISHAWACU LUCKY CHARMAT', 31975534312, 'GUSOMA', 'P6B', 10, 13, 11, 12, 0, 0, 23, 23, 0, 90, 46, 51.111111111111),
(78, 'MUGWANEZA STEVEN', 319562513128, 'GUSOMA', 'P6B', 3, 5, 3, 6, 0, 0, 8, 9, 0, 90, 17, 18.888888888889),
(79, 'MUNEZERO LANDRY JAMES', 319141623126, 'GUSOMA', 'P6B', 8, 7, 10, 12, 0, 0, 15, 22, 0, 90, 37, 41.111111111111),
(80, 'MWIZERWA ABDOUNURU', 319208483125, 'GUSOMA', 'P6B', 4, 9, 4, 10, 0, 0, 13, 14, 0, 90, 27, 30),
(81, 'NISINGIZWE GEDEON', 319360743122, 'GUSOMA', 'P6B', 4, 3, 8, 10, 0, 0, 7, 18, 0, 90, 25, 27.777777777778),
(82, 'NIYIKOMEYE RUTH', 319577783136, 'GUSOMA', 'P6B', 8, 10, 8, 11, 0, 0, 18, 19, 0, 90, 37, 41.111111111111),
(83, 'NIYOMURINZI PIERRE CARDINAL', 319779373115, 'GUSOMA', 'P6B', 4, 4, 4, 8, 0, 0, 8, 12, 0, 90, 20, 22.222222222222),
(84, 'NIYONKURU JONATHAN', 319614533133, 'GUSOMA', 'P6B', 9, 11, 13, 14, 0, 0, 20, 27, 0, 90, 47, 52.222222222222),
(85, 'RUGIRA STEVEN', 31931467312, 'GUSOMA', 'P6B', 5, 5, 6, 10, 0, 0, 10, 16, 0, 90, 26, 28.888888888889),
(86, 'UMUGISHA EMMANUELLA', 319654403128, 'GUSOMA', 'P6B', 5, 9, 10, 8, 0, 0, 14, 18, 0, 90, 32, 35.555555555556),
(87, 'UWASE KIRABO EMELYNE', 319833233139, 'GUSOMA', 'P6B', 8, 11, 10, 13, 0, 0, 19, 23, 0, 90, 42, 46.666666666667),
(88, 'UWIMANA ALLY HERTIER', 319863753118, 'GUSOMA', 'P6B', 14, 12, 13, 14, 0, 0, 26, 27, 0, 90, 53, 58.888888888889),
(89, 'CHRIS HIRWA', 3193109613, 'GUSOMA', 'P6B', 13, 15, 10, 13, 0, 0, 28, 23, 0, 90, 51, 56.666666666667),
(90, 'BANZUSENGE GHISLAIN', 319599833131, 'GUSOMA', 'P6B', 9, 7, 7, 9, 0, 0, 16, 16, 0, 90, 32, 35.555555555556),
(91, 'DUSENGE HOSEE FRATERNE', 319250673119, 'GUSOMA', 'P6B', 7, 7, 8, 7, 0, 0, 14, 15, 0, 90, 29, 32.222222222222),
(92, 'DUSHIME FRIDA IRENE', 31919795314, 'GUSOMA', 'P6B', 10, 10, 10, 10, 0, 0, 20, 20, 0, 90, 40, 44.444444444444),
(93, 'HITIMANA REPONSE PATIENT', 31977199318, 'GUSOMA', 'P6B', 5, 7, 10, 6, 0, 0, 12, 16, 0, 90, 28, 31.111111111111),
(94, 'IRAKOZE GISELE', 319329913111, 'GUSOMA', 'P6B', 11, 14, 10, 11, 0, 0, 25, 21, 0, 90, 46, 51.111111111111),
(95, 'IRAKOZE RUTH', 319136433111, 'GUSOMA', 'P6B', 13, 13, 11, 12, 0, 0, 26, 23, 0, 90, 49, 54.444444444444),
(96, 'IRINGIRE IRIHO HUBERT', 319541523132, 'GUSOMA', 'P6B', 6, 11, 7, 9, 0, 0, 17, 16, 0, 90, 33, 36.666666666667),
(97, 'ISHIMWE BONHEUR', 319242503126, 'GUSOMA', 'P6B', 12, 12, 12, 13, 0, 0, 24, 25, 0, 90, 49, 54.444444444444),
(98, 'ISHIMWE HERITIER', 319227303117, 'GUSOMA', 'P6B', 3, 6, 5, 7, 0, 0, 9, 12, 0, 90, 21, 23.333333333333),
(99, 'ISHIMWE UWASE GENTILLE', 31965268319, 'GUSOMA', 'P6B', 7, 8, 8, 6, 0, 0, 15, 14, 0, 90, 29, 32.222222222222),
(100, 'MUGISHAWACU LUCKY CHARMAT', 31975534312, 'GUSOMA', 'P6B', 11, 13, 9, 12, 0, 0, 24, 21, 0, 90, 45, 50),
(101, 'MUGWANEZA STEVEN', 319562513128, 'GUSOMA', 'P6B', 4, 2, 4, 4, 0, 0, 6, 8, 0, 90, 14, 15.555555555556),
(102, 'MUNEZERO LANDRY JAMES', 319141623126, 'GUSOMA', 'P6B', 8, 11, 10, 10, 0, 0, 19, 20, 0, 90, 39, 43.333333333333),
(103, 'MWIZERWA ABDOUNURU', 319208483125, 'GUSOMA', 'P6B', 3, 5, 5, 5, 0, 0, 8, 10, 0, 90, 18, 20),
(104, 'NISINGIZWE GEDEON', 319360743122, 'GUSOMA', 'P6B', 6, 6, 7, 5, 0, 0, 12, 12, 0, 90, 24, 26.666666666667),
(105, 'NIYIKOMEYE RUTH', 319577783136, 'GUSOMA', 'P6B', 8, 10, 8, 10, 0, 0, 18, 18, 0, 90, 36, 40),
(106, 'NIYOMURINZI PIERRE CARDINAL', 319779373115, 'GUSOMA', 'P6B', 5, 6, 6, 7, 0, 0, 11, 13, 0, 90, 24, 26.666666666667),
(107, 'NIYONKURU JONATHAN', 319614533133, 'GUSOMA', 'P6B', 10, 13, 12, 12, 0, 0, 23, 24, 0, 90, 47, 52.222222222222),
(108, 'RUGIRA STEVEN', 31931467312, 'GUSOMA', 'P6B', 8, 11, 7, 9, 0, 0, 19, 16, 0, 90, 35, 38.888888888889),
(109, 'UMUGISHA EMMANUELLA', 319654403128, 'GUSOMA', 'P6B', 6, 6, 8, 7, 0, 0, 12, 15, 0, 90, 27, 30),
(110, 'UWASE KIRABO EMELYNE', 319833233139, 'GUSOMA', 'P6B', 9, 8, 9, 11, 0, 0, 17, 20, 0, 90, 37, 41.111111111111),
(111, 'UWIMANA ALLY HERTIER', 319863753118, 'GUSOMA', 'P6B', 14, 13, 14, 13, 0, 0, 27, 27, 0, 90, 54, 60),
(112, 'CHRIS HIRWA', 3193109613, 'GUSOMA', 'P6B', 11, 13, 11, 11, 0, 0, 24, 22, 0, 90, 46, 51.111111111111),
(113, 'BANZUSENGE GHISLAIN', 319599833131, 'GUSOMA', 'P6B', 4, 4, 4, 4, 0, 0, 8, 8, 0, 30, 16, 53.333333333333),
(114, 'DUSENGE HOSEE FRATERNE', 319250673119, 'GUSOMA', 'P6B', 4, 4, 4, 3, 0, 0, 8, 7, 0, 30, 15, 50),
(115, 'DUSHIME FRIDA IRENE', 31919795314, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(116, 'HITIMANA REPONSE PATIENT', 31977199318, 'GUSOMA', 'P6B', 4, 4, 4, 4, 0, 0, 8, 8, 0, 30, 16, 53.333333333333),
(117, 'IRAKOZE GISELE', 319329913111, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(118, 'IRAKOZE RUTH', 319136433111, 'GUSOMA', 'P6B', 4, 4, 3, 4, 0, 0, 8, 7, 0, 30, 15, 50),
(119, 'IRINGIRE IRIHO HUBERT', 319541523132, 'GUSOMA', 'P6B', 4, 4, 4, 4, 0, 0, 8, 8, 0, 30, 16, 53.333333333333),
(120, 'ISHIMWE BONHEUR', 319242503126, 'GUSOMA', 'P6B', 4, 4, 4, 4, 0, 0, 8, 8, 0, 30, 16, 53.333333333333),
(121, 'ISHIMWE HERITIER', 319227303117, 'GUSOMA', 'P6B', 4, 4, 4, 3, 0, 0, 8, 7, 0, 30, 15, 50),
(122, 'ISHIMWE UWASE GENTILLE', 31965268319, 'GUSOMA', 'P6B', 4, 4, 4, 4, 0, 0, 8, 8, 0, 30, 16, 53.333333333333),
(123, 'MUGISHAWACU LUCKY CHARMAT', 31975534312, 'GUSOMA', 'P6B', 3, 3, 4, 4, 0, 0, 6, 8, 0, 30, 14, 46.666666666667),
(124, 'MUGWANEZA STEVEN', 319562513128, 'GUSOMA', 'P6B', 4, 4, 4, 3, 0, 0, 8, 7, 0, 30, 15, 50),
(125, 'MUNEZERO LANDRY JAMES', 319141623126, 'GUSOMA', 'P6B', 4, 4, 4, 5, 0, 0, 8, 9, 0, 30, 17, 56.666666666667),
(126, 'MWIZERWA ABDOUNURU', 319208483125, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(127, 'NISINGIZWE GEDEON', 319360743122, 'GUSOMA', 'P6B', 4, 4, 3, 4, 0, 0, 8, 7, 0, 30, 15, 50),
(128, 'NIYIKOMEYE RUTH', 319577783136, 'GUSOMA', 'P6B', 4, 4, 4, 3, 0, 0, 8, 7, 0, 30, 15, 50),
(129, 'NIYOMURINZI PIERRE CARDINAL', 319779373115, 'GUSOMA', 'P6B', 3, 3, 4, 3, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(130, 'NIYONKURU JONATHAN', 319614533133, 'GUSOMA', 'P6B', 4, 4, 4, 5, 0, 0, 8, 9, 0, 30, 17, 56.666666666667),
(131, 'RUGIRA STEVEN', 31931467312, 'GUSOMA', 'P6B', 4, 4, 3, 4, 0, 0, 8, 7, 0, 30, 15, 50),
(132, 'UMUGISHA EMMANUELLA', 319654403128, 'GUSOMA', 'P6B', 4, 4, 3, 4, 0, 0, 8, 7, 0, 30, 15, 50),
(133, 'UWASE KIRABO EMELYNE', 319833233139, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(134, 'UWIMANA ALLY HERTIER', 319863753118, 'GUSOMA', 'P6B', 4, 4, 3, 4, 0, 0, 8, 7, 0, 30, 15, 50),
(135, 'CHRIS HIRWA', 3193109613, 'GUSOMA', 'P6B', 4, 4, 4, 4, 0, 0, 8, 8, 0, 30, 16, 53.333333333333),
(180, 'BANZUSENGE GHISLAIN', 319599833131, 'GUSOMA', 'P6B', 15, 12, 15, 14, 0, 0, 27, 29, 0, 120, 56, 46.666666666667),
(181, 'DUSENGE HOSEE FRATERNE', 319250673119, 'GUSOMA', 'P6B', 5, 5, 7, 8, 0, 0, 10, 15, 0, 120, 25, 20.833333333333),
(182, 'DUSHIME FRIDA IRENE', 31919795314, 'GUSOMA', 'P6B', 13, 11, 11, 11, 0, 0, 24, 22, 0, 120, 46, 38.333333333333),
(183, 'HITIMANA REPONSE PATIENT', 31977199318, 'GUSOMA', 'P6B', 10, 11, 14, 14, 0, 0, 21, 28, 0, 120, 49, 40.833333333333),
(184, 'IRAKOZE GISELE', 319329913111, 'GUSOMA', 'P6B', 14, 12, 13, 14, 0, 0, 26, 27, 0, 120, 53, 44.166666666667),
(185, 'IRAKOZE RUTH', 319136433111, 'GUSOMA', 'P6B', 8, 9, 9, 10, 0, 0, 17, 19, 0, 120, 36, 30),
(186, 'IRINGIRE IRIHO HUBERT', 319541523132, 'GUSOMA', 'P6B', 12, 13, 12, 14, 0, 0, 25, 26, 0, 120, 51, 42.5),
(187, 'ISHIMWE BONHEUR', 319242503126, 'GUSOMA', 'P6B', 14, 14, 14, 14, 0, 0, 28, 28, 0, 120, 56, 46.666666666667),
(188, 'ISHIMWE HERITIER', 319227303117, 'GUSOMA', 'P6B', 6, 11, 10, 11, 0, 0, 17, 21, 0, 120, 38, 31.666666666667),
(189, 'ISHIMWE UWASE GENTILLE', 31965268319, 'GUSOMA', 'P6B', 9, 10, 10, 12, 0, 0, 19, 22, 0, 120, 41, 34.166666666667),
(190, 'MUGISHAWACU LUCKY CHARMAT', 31975534312, 'GUSOMA', 'P6B', 14, 15, 15, 15, 0, 0, 29, 30, 0, 120, 59, 49.166666666667),
(191, 'MUGWANEZA STEVEN', 319562513128, 'GUSOMA', 'P6B', 8, 9, 10, 10, 0, 0, 17, 20, 0, 120, 37, 30.833333333333),
(192, 'MUNEZERO LANDRY JAMES', 319141623126, 'GUSOMA', 'P6B', 14, 15, 16, 15, 0, 0, 29, 31, 0, 120, 60, 50),
(193, 'MWIZERWA ABDOUNURU', 319208483125, 'GUSOMA', 'P6B', 7, 8, 11, 11, 0, 0, 15, 22, 0, 120, 37, 30.833333333333),
(194, 'NISINGIZWE GEDEON', 319360743122, 'GUSOMA', 'P6B', 7, 8, 11, 9, 0, 0, 15, 20, 0, 120, 35, 29.166666666667),
(195, 'NIYIKOMEYE RUTH', 319577783136, 'GUSOMA', 'P6B', 7, 9, 10, 11, 0, 0, 16, 21, 0, 120, 37, 30.833333333333),
(196, 'NIYOMURINZI PIERRE CARDINAL', 319779373115, 'GUSOMA', 'P6B', 13, 16, 14, 14, 0, 0, 29, 28, 0, 120, 57, 47.5),
(197, 'NIYONKURU JONATHAN', 319614533133, 'GUSOMA', 'P6B', 11, 13, 14, 12, 0, 0, 24, 26, 0, 120, 50, 41.666666666667),
(198, 'RUGIRA STEVEN', 31931467312, 'GUSOMA', 'P6B', 15, 15, 15, 15, 0, 0, 30, 30, 0, 120, 60, 50),
(199, 'UMUGISHA EMMANUELLA', 319654403128, 'GUSOMA', 'P6B', 10, 11, 12, 12, 0, 0, 21, 24, 0, 120, 45, 37.5),
(200, 'UWASE KIRABO EMELYNE', 319833233139, 'GUSOMA', 'P6B', 14, 15, 14, 16, 0, 0, 29, 30, 0, 120, 59, 49.166666666667),
(201, 'UWIMANA ALLY HERTIER', 319863753118, 'GUSOMA', 'P6B', 16, 14, 16, 15, 0, 0, 30, 31, 0, 120, 61, 50.833333333333),
(202, 'CHRIS HIRWA', 3193109613, 'GUSOMA', 'P6B', 6, 12, 10, 12, 0, 0, 18, 22, 0, 120, 40, 33.333333333333),
(247, 'BANZUSENGE GHISLAIN', 319599833131, 'GUSOMA', 'P6B', 3, 4, 3, 3, 0, 0, 7, 6, 0, 30, 13, 43.333333333333),
(248, 'DUSENGE HOSEE FRATERNE', 319250673119, 'GUSOMA', 'P6B', 3, 2, 3, 5, 0, 0, 5, 8, 0, 30, 13, 43.333333333333),
(249, 'DUSHIME FRIDA IRENE', 31919795314, 'GUSOMA', 'P6B', 3, 3, 2, 5, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(250, 'HITIMANA REPONSE PATIENT', 31977199318, 'GUSOMA', 'P6B', 2, 3, 2, 5, 0, 0, 5, 7, 0, 30, 12, 40),
(251, 'IRAKOZE GISELE', 319329913111, 'GUSOMA', 'P6B', 3, 4, 3, 5, 0, 0, 7, 8, 0, 30, 15, 50),
(252, 'IRAKOZE RUTH', 319136433111, 'GUSOMA', 'P6B', 2, 3, 2, 4, 0, 0, 5, 6, 0, 30, 11, 36.666666666667),
(253, 'IRINGIRE IRIHO HUBERT', 319541523132, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(254, 'ISHIMWE BONHEUR', 319242503126, 'GUSOMA', 'P6B', 3, 4, 3, 4, 0, 0, 7, 7, 0, 30, 14, 46.666666666667),
(255, 'ISHIMWE HERITIER', 319227303117, 'GUSOMA', 'P6B', 2, 3, 2, 4, 0, 0, 5, 6, 0, 30, 11, 36.666666666667),
(256, 'ISHIMWE UWASE GENTILLE', 31965268319, 'GUSOMA', 'P6B', 3, 2, 3, 3, 0, 0, 5, 6, 0, 30, 11, 36.666666666667),
(257, 'MUGISHAWACU LUCKY CHARMAT', 31975534312, 'GUSOMA', 'P6B', 2, 3, 3, 3, 0, 0, 5, 6, 0, 30, 11, 36.666666666667),
(258, 'MUGWANEZA STEVEN', 319562513128, 'GUSOMA', 'P6B', 1, 2, 2, 3, 0, 0, 3, 5, 0, 30, 8, 26.666666666667),
(259, 'MUNEZERO LANDRY JAMES', 319141623126, 'GUSOMA', 'P6B', 3, 3, 2, 3, 0, 0, 6, 5, 0, 30, 11, 36.666666666667),
(260, 'MWIZERWA ABDOUNURU', 319208483125, 'GUSOMA', 'P6B', 2, 3, 2, 4, 0, 0, 5, 6, 0, 30, 11, 36.666666666667),
(261, 'NISINGIZWE GEDEON', 319360743122, 'GUSOMA', 'P6B', 3, 3, 2, 4, 0, 0, 6, 6, 0, 30, 12, 40),
(262, 'NIYIKOMEYE RUTH', 319577783136, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(263, 'NIYOMURINZI PIERRE CARDINAL', 319779373115, 'GUSOMA', 'P6B', 2, 3, 4, 3, 0, 0, 5, 7, 0, 30, 12, 40),
(264, 'NIYONKURU JONATHAN', 319614533133, 'GUSOMA', 'P6B', 3, 3, 2, 4, 0, 0, 6, 6, 0, 30, 12, 40),
(265, 'RUGIRA STEVEN', 31931467312, 'GUSOMA', 'P6B', 2, 3, 3, 4, 0, 0, 5, 7, 0, 30, 12, 40),
(266, 'UMUGISHA EMMANUELLA', 319654403128, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(267, 'UWASE KIRABO EMELYNE', 319833233139, 'GUSOMA', 'P6B', 3, 4, 5, 3, 0, 0, 7, 8, 0, 30, 15, 50),
(268, 'UWIMANA ALLY HERTIER', 319863753118, 'GUSOMA', 'P6B', 4, 4, 5, 5, 0, 0, 8, 10, 0, 30, 18, 60),
(269, 'CHRIS HIRWA', 3193109613, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(270, 'BANZUSENGE GHISLAIN', 319599833131, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(271, 'DUSENGE HOSEE FRATERNE', 319250673119, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(272, 'DUSHIME FRIDA IRENE', 31919795314, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(273, 'HITIMANA REPONSE PATIENT', 31977199318, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(274, 'IRAKOZE GISELE', 319329913111, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(275, 'IRAKOZE RUTH', 319136433111, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(276, 'IRINGIRE IRIHO HUBERT', 319541523132, 'GUSOMA', 'P6B', 4, 4, 3, 4, 0, 0, 8, 7, 0, 30, 15, 50),
(277, 'ISHIMWE BONHEUR', 319242503126, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(278, 'ISHIMWE HERITIER', 319227303117, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(279, 'ISHIMWE UWASE GENTILLE', 31965268319, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(280, 'MUGISHAWACU LUCKY CHARMAT', 31975534312, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(281, 'MUGWANEZA STEVEN', 319562513128, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(282, 'MUNEZERO LANDRY JAMES', 319141623126, 'GUSOMA', 'P6B', 3, 3, 4, 4, 0, 0, 6, 8, 0, 30, 14, 46.666666666667),
(283, 'MWIZERWA ABDOUNURU', 319208483125, 'GUSOMA', 'P6B', 3, 3, 4, 4, 0, 0, 6, 8, 0, 30, 14, 46.666666666667),
(284, 'NISINGIZWE GEDEON', 319360743122, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(285, 'NIYIKOMEYE RUTH', 319577783136, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(286, 'NIYOMURINZI PIERRE CARDINAL', 319779373115, 'GUSOMA', 'P6B', 3, 3, 4, 4, 0, 0, 6, 8, 0, 30, 14, 46.666666666667),
(287, 'NIYONKURU JONATHAN', 319614533133, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(288, 'RUGIRA STEVEN', 31931467312, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(289, 'UMUGISHA EMMANUELLA', 319654403128, 'GUSOMA', 'P6B', 3, 3, 4, 3, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(290, 'UWASE KIRABO EMELYNE', 319833233139, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(291, 'UWIMANA ALLY HERTIER', 319863753118, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(292, 'CHRIS HIRWA', 3193109613, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(293, 'BANZUSENGE GHISLAIN', 319599833131, 'GUSOMA', 'P6B', 4, 4, 4, 4, 0, 0, 8, 8, 0, 30, 16, 53.333333333333),
(294, 'DUSENGE HOSEE FRATERNE', 319250673119, 'GUSOMA', 'P6B', 3, 3, 4, 3, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(295, 'DUSHIME FRIDA IRENE', 31919795314, 'GUSOMA', 'P6B', 4, 4, 4, 3, 0, 0, 8, 7, 0, 30, 15, 50),
(296, 'HITIMANA REPONSE PATIENT', 31977199318, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(297, 'IRAKOZE GISELE', 319329913111, 'GUSOMA', 'P6B', 4, 4, 4, 4, 0, 0, 8, 8, 0, 30, 16, 53.333333333333),
(298, 'IRAKOZE RUTH', 319136433111, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(299, 'IRINGIRE IRIHO HUBERT', 319541523132, 'GUSOMA', 'P6B', 3, 4, 4, 3, 0, 0, 7, 7, 0, 30, 14, 46.666666666667),
(300, 'ISHIMWE BONHEUR', 319242503126, 'GUSOMA', 'P6B', 4, 4, 5, 4, 0, 0, 8, 9, 0, 30, 17, 56.666666666667),
(301, 'ISHIMWE HERITIER', 319227303117, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(302, 'ISHIMWE UWASE GENTILLE', 31965268319, 'GUSOMA', 'P6B', 3, 3, 5, 4, 0, 0, 6, 9, 0, 30, 15, 50),
(303, 'MUGISHAWACU LUCKY CHARMAT', 31975534312, 'GUSOMA', 'P6B', 4, 4, 4, 4, 0, 0, 8, 8, 0, 30, 16, 53.333333333333),
(304, 'MUGWANEZA STEVEN', 319562513128, 'GUSOMA', 'P6B', 3, 3, 4, 3, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(305, 'MUNEZERO LANDRY JAMES', 319141623126, 'GUSOMA', 'P6B', 4, 4, 4, 5, 0, 0, 8, 9, 0, 30, 17, 56.666666666667),
(306, 'MWIZERWA ABDOUNURU', 319208483125, 'GUSOMA', 'P6B', 3, 3, 4, 4, 0, 0, 6, 8, 0, 30, 14, 46.666666666667),
(307, 'NISINGIZWE GEDEON', 319360743122, 'GUSOMA', 'P6B', 3, 3, 4, 3, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(308, 'NIYIKOMEYE RUTH', 319577783136, 'GUSOMA', 'P6B', 3, 4, 4, 4, 0, 0, 7, 8, 0, 30, 15, 50),
(309, 'NIYOMURINZI PIERRE CARDINAL', 319779373115, 'GUSOMA', 'P6B', 4, 4, 5, 4, 0, 0, 8, 9, 0, 30, 17, 56.666666666667),
(310, 'NIYONKURU JONATHAN', 319614533133, 'GUSOMA', 'P6B', 3, 4, 4, 4, 0, 0, 7, 8, 0, 30, 15, 50),
(311, 'RUGIRA STEVEN', 31931467312, 'GUSOMA', 'P6B', 4, 4, 4, 4, 0, 0, 8, 8, 0, 30, 16, 53.333333333333),
(312, 'UMUGISHA EMMANUELLA', 319654403128, 'GUSOMA', 'P6B', 4, 4, 4, 5, 0, 0, 8, 9, 0, 30, 17, 56.666666666667),
(313, 'UWASE KIRABO EMELYNE', 319833233139, 'GUSOMA', 'P6B', 4, 3, 4, 4, 0, 0, 7, 8, 0, 30, 15, 50),
(314, 'UWIMANA ALLY HERTIER', 319863753118, 'GUSOMA', 'P6B', 4, 4, 4, 4, 0, 0, 8, 8, 0, 30, 16, 53.333333333333),
(315, 'CHRIS HIRWA', 3193109613, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(360, 'BANZUSENGE GHISLAIN', 319599833131, 'GUSOMA', 'P6B', 10, 14, 14, 12, 0, 0, 24, 26, 0, 120, 50, 41.666666666667),
(361, 'DUSENGE HOSEE FRATERNE', 319250673119, 'GUSOMA', 'P6B', 9, 8, 9, 6, 0, 0, 17, 15, 0, 120, 32, 26.666666666667),
(362, 'DUSHIME FRIDA IRENE', 31919795314, 'GUSOMA', 'P6B', 11, 13, 14, 12, 0, 0, 24, 26, 0, 120, 50, 41.666666666667),
(363, 'HITIMANA REPONSE PATIENT', 31977199318, 'GUSOMA', 'P6B', 8, 9, 11, 9, 0, 0, 17, 20, 0, 120, 37, 30.833333333333),
(364, 'IRAKOZE GISELE', 319329913111, 'GUSOMA', 'P6B', 12, 15, 15, 13, 0, 0, 27, 28, 0, 120, 55, 45.833333333333),
(365, 'IRAKOZE RUTH', 319136433111, 'GUSOMA', 'P6B', 9, 10, 10, 6, 0, 0, 19, 16, 0, 120, 35, 29.166666666667),
(366, 'IRINGIRE IRIHO HUBERT', 319541523132, 'GUSOMA', 'P6B', 10, 12, 13, 5, 0, 0, 22, 18, 0, 120, 40, 33.333333333333),
(367, 'ISHIMWE BONHEUR', 319242503126, 'GUSOMA', 'P6B', 13, 14, 15, 14, 0, 0, 27, 29, 0, 120, 56, 46.666666666667),
(368, 'ISHIMWE HERITIER', 319227303117, 'GUSOMA', 'P6B', 8, 10, 9, 6, 0, 0, 18, 15, 0, 120, 33, 27.5),
(369, 'ISHIMWE UWASE GENTILLE', 31965268319, 'GUSOMA', 'P6B', 11, 9, 12, 6, 0, 0, 20, 18, 0, 120, 38, 31.666666666667),
(370, 'MUGISHAWACU LUCKY CHARMAT', 31975534312, 'GUSOMA', 'P6B', 11, 13, 13, 10, 0, 0, 24, 23, 0, 120, 47, 39.166666666667),
(371, 'MUGWANEZA STEVEN', 319562513128, 'GUSOMA', 'P6B', 8, 8, 10, 6, 0, 0, 16, 16, 0, 120, 32, 26.666666666667),
(372, 'MUNEZERO LANDRY JAMES', 319141623126, 'GUSOMA', 'P6B', 12, 12, 15, 14, 0, 0, 24, 29, 0, 120, 53, 44.166666666667),
(373, 'MWIZERWA ABDOUNURU', 319208483125, 'GUSOMA', 'P6B', 9, 9, 11, 9, 0, 0, 18, 20, 0, 120, 38, 31.666666666667),
(374, 'NISINGIZWE GEDEON', 319360743122, 'GUSOMA', 'P6B', 9, 8, 10, 5, 0, 0, 17, 15, 0, 120, 32, 26.666666666667),
(375, 'NIYIKOMEYE RUTH', 319577783136, 'GUSOMA', 'P6B', 10, 11, 11, 9, 0, 0, 21, 20, 0, 120, 41, 34.166666666667),
(376, 'NIYOMURINZI PIERRE CARDINAL', 319779373115, 'GUSOMA', 'P6B', 12, 15, 15, 12, 0, 0, 27, 27, 0, 120, 54, 45),
(377, 'NIYONKURU JONATHAN', 319614533133, 'GUSOMA', 'P6B', 11, 12, 13, 10, 0, 0, 23, 23, 0, 120, 46, 38.333333333333),
(378, 'RUGIRA STEVEN', 31931467312, 'GUSOMA', 'P6B', 11, 14, 13, 10, 0, 0, 25, 23, 0, 120, 48, 40),
(379, 'UMUGISHA EMMANUELLA', 319654403128, 'GUSOMA', 'P6B', 10, 11, 12, 10, 0, 0, 21, 22, 0, 120, 43, 35.833333333333),
(380, 'UWASE KIRABO EMELYNE', 319833233139, 'GUSOMA', 'P6B', 13, 14, 15, 12, 0, 0, 27, 27, 0, 120, 54, 45),
(381, 'UWIMANA ALLY HERTIER', 319863753118, 'GUSOMA', 'P6B', 13, 15, 11, 9, 0, 0, 28, 20, 0, 120, 48, 40),
(382, 'CHRIS HIRWA', 3193109613, 'GUSOMA', 'P6B', 8, 10, 10, 7, 0, 0, 18, 17, 0, 120, 35, 29.166666666667),
(383, 'BANZUSENGE GHISLAIN', 319599833131, 'GUSOMA', 'P6B', 3, 4, 4, 4, 0, 0, 7, 8, 0, 30, 15, 50),
(384, 'DUSENGE HOSEE FRATERNE', 319250673119, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(385, 'DUSHIME FRIDA IRENE', 31919795314, 'GUSOMA', 'P6B', 2, 3, 3, 3, 0, 0, 5, 6, 0, 30, 11, 36.666666666667),
(386, 'HITIMANA REPONSE PATIENT', 31977199318, 'GUSOMA', 'P6B', 3, 4, 3, 4, 0, 0, 7, 7, 0, 30, 14, 46.666666666667),
(387, 'IRAKOZE GISELE', 319329913111, 'GUSOMA', 'P6B', 3, 3, 4, 3, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(388, 'IRAKOZE RUTH', 319136433111, 'GUSOMA', 'P6B', 3, 2, 3, 2, 0, 0, 5, 5, 0, 30, 10, 33.333333333333),
(389, 'IRINGIRE IRIHO HUBERT', 319541523132, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(390, 'ISHIMWE BONHEUR', 319242503126, 'GUSOMA', 'P6B', 4, 4, 3, 4, 0, 0, 8, 7, 0, 30, 15, 50),
(391, 'ISHIMWE HERITIER', 319227303117, 'GUSOMA', 'P6B', 3, 3, 2, 3, 0, 0, 6, 5, 0, 30, 11, 36.666666666667),
(392, 'ISHIMWE UWASE GENTILLE', 31965268319, 'GUSOMA', 'P6B', 3, 2, 3, 4, 0, 0, 5, 7, 0, 30, 12, 40),
(393, 'MUGISHAWACU LUCKY CHARMAT', 31975534312, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(394, 'MUGWANEZA STEVEN', 319562513128, 'GUSOMA', 'P6B', 3, 3, 3, 2, 0, 0, 6, 5, 0, 30, 11, 36.666666666667),
(395, 'MUNEZERO LANDRY JAMES', 319141623126, 'GUSOMA', 'P6B', 3, 4, 4, 4, 0, 0, 7, 8, 0, 30, 15, 50),
(396, 'MWIZERWA ABDOUNURU', 319208483125, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(397, 'NISINGIZWE GEDEON', 319360743122, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(398, 'NIYIKOMEYE RUTH', 319577783136, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(399, 'NIYOMURINZI PIERRE CARDINAL', 319779373115, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(400, 'NIYONKURU JONATHAN', 319614533133, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(401, 'RUGIRA STEVEN', 31931467312, 'GUSOMA', 'P6B', 3, 3, 4, 4, 0, 0, 6, 8, 0, 30, 14, 46.666666666667),
(402, 'UMUGISHA EMMANUELLA', 319654403128, 'GUSOMA', 'P6B', 3, 3, 3, 3, 0, 0, 6, 6, 0, 30, 12, 40),
(403, 'UWASE KIRABO EMELYNE', 319833233139, 'GUSOMA', 'P6B', 3, 4, 4, 4, 0, 0, 7, 8, 0, 30, 15, 50),
(404, 'UWIMANA ALLY HERTIER', 319863753118, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(405, 'CHRIS HIRWA', 3193109613, 'GUSOMA', 'P6B', 3, 3, 4, 4, 0, 0, 6, 8, 0, 30, 14, 46.666666666667),
(450, 'BANZUSENGE GHISLAIN', 319599833131, 'GUSOMA', 'P6B', 13, 13, 14, 15, 0, 0, 26, 29, 0, 120, 55, 45.833333333333),
(451, 'DUSENGE HOSEE FRATERNE', 319250673119, 'GUSOMA', 'P6B', 14, 13, 14, 14, 0, 0, 27, 28, 0, 120, 55, 45.833333333333),
(452, 'DUSHIME FRIDA IRENE', 31919795314, 'GUSOMA', 'P6B', 10, 10, 11, 13, 0, 0, 20, 24, 0, 120, 44, 36.666666666667),
(453, 'HITIMANA REPONSE PATIENT', 31977199318, 'GUSOMA', 'P6B', 12, 13, 15, 15, 0, 0, 25, 30, 0, 120, 55, 45.833333333333),
(454, 'IRAKOZE GISELE', 319329913111, 'GUSOMA', 'P6B', 14, 14, 16, 16, 0, 0, 28, 32, 0, 120, 60, 50),
(455, 'IRAKOZE RUTH', 319136433111, 'GUSOMA', 'P6B', 12, 14, 14, 14, 0, 0, 26, 28, 0, 120, 54, 45),
(456, 'IRINGIRE IRIHO HUBERT', 319541523132, 'GUSOMA', 'P6B', 11, 11, 13, 15, 0, 0, 22, 28, 0, 120, 50, 41.666666666667),
(457, 'ISHIMWE BONHEUR', 319242503126, 'GUSOMA', 'P6B', 15, 13, 16, 15, 0, 0, 28, 31, 0, 120, 59, 49.166666666667),
(458, 'ISHIMWE HERITIER', 319227303117, 'GUSOMA', 'P6B', 11, 11, 12, 13, 0, 0, 22, 25, 0, 120, 47, 39.166666666667),
(459, 'ISHIMWE UWASE GENTILLE', 31965268319, 'GUSOMA', 'P6B', 14, 13, 14, 15, 0, 0, 27, 29, 0, 120, 56, 46.666666666667),
(460, 'MUGISHAWACU LUCKY CHARMAT', 31975534312, 'GUSOMA', 'P6B', 13, 15, 14, 17, 0, 0, 28, 31, 0, 120, 59, 49.166666666667),
(461, 'MUGWANEZA STEVEN', 319562513128, 'GUSOMA', 'P6B', 13, 12, 11, 12, 0, 0, 25, 23, 0, 120, 48, 40),
(462, 'MUNEZERO LANDRY JAMES', 319141623126, 'GUSOMA', 'P6B', 14, 12, 14, 15, 0, 0, 26, 29, 0, 120, 55, 45.833333333333),
(463, 'MWIZERWA ABDOUNURU', 319208483125, 'GUSOMA', 'P6B', 12, 12, 13, 15, 0, 0, 24, 28, 0, 120, 52, 43.333333333333),
(464, 'NISINGIZWE GEDEON', 319360743122, 'GUSOMA', 'P6B', 13, 13, 14, 16, 0, 0, 26, 30, 0, 120, 56, 46.666666666667),
(465, 'NIYIKOMEYE RUTH', 319577783136, 'GUSOMA', 'P6B', 13, 14, 14, 15, 0, 0, 27, 29, 0, 120, 56, 46.666666666667),
(466, 'NIYOMURINZI PIERRE CARDINAL', 319779373115, 'GUSOMA', 'P6B', 12, 14, 15, 16, 0, 0, 26, 31, 0, 120, 57, 47.5),
(467, 'NIYONKURU JONATHAN', 319614533133, 'GUSOMA', 'P6B', 14, 15, 14, 15, 0, 0, 29, 29, 0, 120, 58, 48.333333333333),
(468, 'RUGIRA STEVEN', 31931467312, 'GUSOMA', 'P6B', 12, 13, 13, 14, 0, 0, 25, 27, 0, 120, 52, 43.333333333333),
(469, 'UMUGISHA EMMANUELLA', 319654403128, 'GUSOMA', 'P6B', 13, 12, 14, 15, 0, 0, 25, 29, 0, 120, 54, 45),
(470, 'UWASE KIRABO EMELYNE', 319833233139, 'GUSOMA', 'P6B', 14, 15, 16, 18, 0, 0, 29, 34, 0, 120, 63, 52.5),
(471, 'UWIMANA ALLY HERTIER', 319863753118, 'GUSOMA', 'P6B', 13, 15, 15, 17, 0, 0, 28, 32, 0, 120, 60, 50),
(472, 'CHRIS HIRWA', 3193109613, 'GUSOMA', 'P6B', 12, 14, 13, 16, 0, 0, 26, 29, 0, 120, 55, 45.833333333333),
(495, 'BANZUSENGE GHISLAIN', 319599833131, 'GUSOMA', 'P6B', 11, 12, 14, 17, 0, 0, 23, 31, 0, 120, 54, 45),
(496, 'DUSENGE HOSEE FRATERNE', 319250673119, 'GUSOMA', 'P6B', 7, 8, 11, 14, 0, 0, 15, 25, 0, 120, 40, 33.333333333333),
(497, 'DUSHIME FRIDA IRENE', 31919795314, 'GUSOMA', 'P6B', 7, 10, 13, 18, 0, 0, 17, 31, 0, 120, 48, 40),
(498, 'HITIMANA REPONSE PATIENT', 31977199318, 'GUSOMA', 'P6B', 8, 11, 14, 15, 0, 0, 19, 29, 0, 120, 48, 40),
(499, 'IRAKOZE GISELE', 319329913111, 'GUSOMA', 'P6B', 12, 15, 13, 18, 0, 0, 27, 31, 0, 120, 58, 48.333333333333),
(500, 'IRAKOZE RUTH', 319136433111, 'GUSOMA', 'P6B', 7, 6, 12, 14, 0, 0, 13, 26, 0, 120, 39, 32.5),
(501, 'IRINGIRE IRIHO HUBERT', 319541523132, 'GUSOMA', 'P6B', 8, 11, 14, 19, 0, 0, 19, 33, 0, 120, 52, 43.333333333333),
(502, 'ISHIMWE BONHEUR', 319242503126, 'GUSOMA', 'P6B', 12, 16, 15, 20, 0, 0, 28, 35, 0, 120, 63, 52.5),
(503, 'ISHIMWE HERITIER', 319227303117, 'GUSOMA', 'P6B', 6, 11, 12, 16, 0, 0, 17, 28, 0, 120, 45, 37.5),
(504, 'ISHIMWE UWASE GENTILLE', 31965268319, 'GUSOMA', 'P6B', 7, 8, 11, 15, 0, 0, 15, 26, 0, 120, 41, 34.166666666667),
(505, 'MUGISHAWACU LUCKY CHARMAT', 31975534312, 'GUSOMA', 'P6B', 11, 13, 15, 17, 0, 0, 24, 32, 0, 120, 56, 46.666666666667),
(506, 'MUGWANEZA STEVEN', 319562513128, 'GUSOMA', 'P6B', 7, 6, 11, 14, 0, 0, 13, 25, 0, 120, 38, 31.666666666667),
(507, 'MUNEZERO LANDRY JAMES', 319141623126, 'GUSOMA', 'P6B', 11, 12, 15, 19, 0, 0, 23, 34, 0, 120, 57, 47.5),
(508, 'MWIZERWA ABDOUNURU', 319208483125, 'GUSOMA', 'P6B', 7, 15, 14, 16, 0, 0, 22, 30, 0, 120, 52, 43.333333333333),
(509, 'NISINGIZWE GEDEON', 319360743122, 'GUSOMA', 'P6B', 7, 11, 12, 18, 0, 0, 18, 30, 0, 120, 48, 40),
(510, 'NIYIKOMEYE RUTH', 319577783136, 'GUSOMA', 'P6B', 9, 14, 15, 17, 0, 0, 23, 32, 0, 120, 55, 45.833333333333),
(511, 'NIYOMURINZI PIERRE CARDINAL', 319779373115, 'GUSOMA', 'P6B', 11, 14, 13, 18, 0, 0, 25, 31, 0, 120, 56, 46.666666666667),
(512, 'NIYONKURU JONATHAN', 319614533133, 'GUSOMA', 'P6B', 8, 8, 11, 14, 0, 0, 16, 25, 0, 120, 41, 34.166666666667),
(513, 'RUGIRA STEVEN', 31931467312, 'GUSOMA', 'P6B', 10, 12, 14, 17, 0, 0, 22, 31, 0, 120, 53, 44.166666666667),
(514, 'UMUGISHA EMMANUELLA', 319654403128, 'GUSOMA', 'P6B', 9, 9, 12, 17, 0, 0, 18, 29, 0, 120, 47, 39.166666666667),
(515, 'UWASE KIRABO EMELYNE', 319833233139, 'GUSOMA', 'P6B', 11, 15, 13, 18, 0, 0, 26, 31, 0, 120, 57, 47.5),
(516, 'UWIMANA ALLY HERTIER', 319863753118, 'GUSOMA', 'P6B', 13, 18, 15, 19, 0, 0, 31, 34, 0, 120, 65, 54.166666666667),
(517, 'CHRIS HIRWA', 3193109613, 'GUSOMA', 'P6B', 9, 15, 12, 14, 0, 0, 24, 26, 0, 120, 50, 41.666666666667),
(518, 'BANZUSENGE GHISLAIN', 319599833131, 'GUSOMA', 'P6B', 4, 4, 5, 4, 0, 0, 8, 9, 0, 30, 17, 56.666666666667),
(519, 'DUSENGE HOSEE FRATERNE', 319250673119, 'GUSOMA', 'P6B', 3, 4, 3, 4, 0, 0, 7, 7, 0, 30, 14, 46.666666666667),
(520, 'DUSHIME FRIDA IRENE', 31919795314, 'GUSOMA', 'P6B', 3, 4, 3, 4, 0, 0, 7, 7, 0, 30, 14, 46.666666666667),
(521, 'HITIMANA REPONSE PATIENT', 31977199318, 'GUSOMA', 'P6B', 4, 3, 4, 4, 0, 0, 7, 8, 0, 30, 15, 50),
(522, 'IRAKOZE GISELE', 319329913111, 'GUSOMA', 'P6B', 4, 4, 5, 4, 0, 0, 8, 9, 0, 30, 17, 56.666666666667),
(523, 'IRAKOZE RUTH', 319136433111, 'GUSOMA', 'P6B', 3, 4, 3, 4, 0, 0, 7, 7, 0, 30, 14, 46.666666666667),
(524, 'IRINGIRE IRIHO HUBERT', 319541523132, 'GUSOMA', 'P6B', 4, 5, 5, 4, 0, 0, 9, 9, 0, 30, 18, 60),
(525, 'ISHIMWE BONHEUR', 319242503126, 'GUSOMA', 'P6B', 3, 4, 4, 4, 0, 0, 7, 8, 0, 30, 15, 50),
(526, 'ISHIMWE HERITIER', 319227303117, 'GUSOMA', 'P6B', 3, 3, 3, 4, 0, 0, 6, 7, 0, 30, 13, 43.333333333333),
(527, 'ISHIMWE UWASE GENTILLE', 31965268319, 'GUSOMA', 'P6B', 3, 4, 5, 4, 0, 0, 7, 9, 0, 30, 16, 53.333333333333),
(528, 'MUGISHAWACU LUCKY CHARMAT', 31975534312, 'GUSOMA', 'P6B', 3, 4, 4, 3, 0, 0, 7, 7, 0, 30, 14, 46.666666666667),
(529, 'MUGWANEZA STEVEN', 319562513128, 'GUSOMA', 'P6B', 3, 4, 3, 4, 0, 0, 7, 7, 0, 30, 14, 46.666666666667),
(530, 'MUNEZERO LANDRY JAMES', 319141623126, 'GUSOMA', 'P6B', 5, 5, 5, 5, 0, 0, 10, 10, 0, 30, 20, 66.666666666667),
(531, 'MWIZERWA ABDOUNURU', 319208483125, 'GUSOMA', 'P6B', 3, 4, 3, 3, 0, 0, 7, 6, 0, 30, 13, 43.333333333333),
(532, 'NISINGIZWE GEDEON', 319360743122, 'GUSOMA', 'P6B', 3, 3, 4, 4, 0, 0, 6, 8, 0, 30, 14, 46.666666666667),
(533, 'NIYIKOMEYE RUTH', 319577783136, 'GUSOMA', 'P6B', 3, 4, 5, 4, 0, 0, 7, 9, 0, 30, 16, 53.333333333333),
(534, 'NIYOMURINZI PIERRE CARDINAL', 319779373115, 'GUSOMA', 'P6B', 4, 3, 5, 4, 0, 0, 7, 9, 0, 30, 16, 53.333333333333),
(535, 'NIYONKURU JONATHAN', 319614533133, 'GUSOMA', 'P6B', 4, 4, 3, 4, 0, 0, 8, 7, 0, 30, 15, 50),
(536, 'RUGIRA STEVEN', 31931467312, 'GUSOMA', 'P6B', 3, 3, 4, 4, 0, 0, 6, 8, 0, 30, 14, 46.666666666667),
(537, 'UMUGISHA EMMANUELLA', 319654403128, 'GUSOMA', 'P6B', 3, 4, 4, 4, 0, 0, 7, 8, 0, 30, 15, 50),
(538, 'UWASE KIRABO EMELYNE', 319833233139, 'GUSOMA', 'P6B', 4, 4, 4, 4, 0, 0, 8, 8, 0, 30, 16, 53.333333333333),
(539, 'UWIMANA ALLY HERTIER', 319863753118, 'GUSOMA', 'P6B', 4, 5, 5, 5, 0, 0, 9, 10, 0, 30, 19, 63.333333333333),
(540, 'CHRIS HIRWA', 3193109613, 'GUSOMA', 'P6B', 3, 4, 4, 3, 0, 0, 7, 7, 0, 30, 14, 46.666666666667),
(585, 'BANZUSENGE GHISLAIN', 319599833131, 'GUSOMA', 'P6B', 5, 4, 5, 3, 0, 0, 9, 8, 0, 60, 17, 28.333333333333),
(586, 'DUSENGE HOSEE FRATERNE', 319250673119, 'GUSOMA', 'P6B', 6, 5, 6, 3, 0, 0, 11, 9, 0, 60, 20, 33.333333333333),
(587, 'DUSHIME FRIDA IRENE', 31919795314, 'GUSOMA', 'P6B', 5, 5, 3, 6, 0, 0, 10, 9, 0, 60, 19, 31.666666666667),
(588, 'HITIMANA REPONSE PATIENT', 31977199318, 'GUSOMA', 'P6B', 6, 5, 5, 6, 0, 0, 11, 11, 0, 60, 22, 36.666666666667),
(589, 'IRAKOZE GISELE', 319329913111, 'GUSOMA', 'P6B', 6, 7, 5, 5, 0, 0, 13, 10, 0, 60, 23, 38.333333333333),
(590, 'IRAKOZE RUTH', 319136433111, 'GUSOMA', 'P6B', 3, 5, 5, 4, 0, 0, 8, 9, 0, 60, 17, 28.333333333333),
(591, 'IRINGIRE IRIHO HUBERT', 319541523132, 'GUSOMA', 'P6B', 7, 6, 5, 9, 0, 0, 13, 14, 0, 60, 27, 45),
(592, 'ISHIMWE BONHEUR', 319242503126, 'GUSOMA', 'P6B', 4, 3, 6, 3, 0, 0, 7, 9, 0, 60, 16, 26.666666666667),
(593, 'ISHIMWE HERITIER', 319227303117, 'GUSOMA', 'P6B', 4, 5, 5, 1, 0, 0, 9, 6, 0, 60, 15, 25),
(594, 'ISHIMWE UWASE GENTILLE', 31965268319, 'GUSOMA', 'P6B', 6, 5, 4, 6, 0, 0, 11, 10, 0, 60, 21, 35),
(595, 'MUGISHAWACU LUCKY CHARMAT', 31975534312, 'GUSOMA', 'P6B', 4, 5, 6, 6, 0, 0, 9, 12, 0, 60, 21, 35),
(596, 'MUGWANEZA STEVEN', 319562513128, 'GUSOMA', 'P6B', 5, 3, 4, 3, 0, 0, 8, 7, 0, 60, 15, 25),
(597, 'MUNEZERO LANDRY JAMES', 319141623126, 'GUSOMA', 'P6B', 9, 8, 8, 9, 0, 0, 17, 17, 0, 60, 34, 56.666666666667),
(598, 'MWIZERWA ABDOUNURU', 319208483125, 'GUSOMA', 'P6B', 4, 3, 4, 3, 0, 0, 7, 7, 0, 60, 14, 23.333333333333),
(599, 'NISINGIZWE GEDEON', 319360743122, 'GUSOMA', 'P6B', 4, 4, 4, 6, 0, 0, 8, 10, 0, 60, 18, 30),
(600, 'NIYIKOMEYE RUTH', 319577783136, 'GUSOMA', 'P6B', 4, 5, 5, 5, 0, 0, 9, 10, 0, 60, 19, 31.666666666667),
(601, 'NIYOMURINZI PIERRE CARDINAL', 319779373115, 'GUSOMA', 'P6B', 6, 6, 5, 4, 0, 0, 12, 9, 0, 60, 21, 35),
(602, 'NIYONKURU JONATHAN', 319614533133, 'GUSOMA', 'P6B', 5, 3, 6, 4, 0, 0, 8, 10, 0, 60, 18, 30),
(603, 'RUGIRA STEVEN', 31931467312, 'GUSOMA', 'P6B', 6, 4, 5, 5, 0, 0, 10, 10, 0, 60, 20, 33.333333333333),
(604, 'UMUGISHA EMMANUELLA', 319654403128, 'GUSOMA', 'P6B', 5, 4, 4, 4, 0, 0, 9, 8, 0, 60, 17, 28.333333333333),
(605, 'UWASE KIRABO EMELYNE', 319833233139, 'GUSOMA', 'P6B', 6, 6, 6, 6, 0, 0, 12, 12, 0, 60, 24, 40),
(606, 'UWIMANA ALLY HERTIER', 319863753118, 'GUSOMA', 'P6B', 7, 8, 7, 7, 0, 0, 15, 14, 0, 60, 29, 48.333333333333),
(607, 'CHRIS HIRWA', 3193109613, 'GUSOMA', 'P6B', 5, 4, 4, 3, 0, 0, 9, 7, 0, 60, 16, 26.666666666667),
(14165, 'DUFITIMANA GUILAINE', 319624264811, 'KWANDIKA', 'P6A', 12, 14, 14, 14, 15, 16, 26, 28, 31, 120, 85, 70.833333333333),
(14166, 'DUSABIMANA NOELLA', 319888764839, 'KWANDIKA', 'P6A', 13, 15, 14, 16, 15, 17, 28, 30, 32, 120, 90, 75),
(14167, 'GWIZA RUGWIRO FABRICE', 319448664821, 'KWANDIKA', 'P6A', 15, 15, 17, 16, 17, 17, 30, 33, 34, 120, 97, 80.833333333333),
(14168, 'IGIRANEZA MAURICE', 319411554836, 'KWANDIKA', 'P6A', 15, 16, 15, 17, 16, 18, 31, 32, 34, 120, 97, 80.833333333333),
(14169, 'INEZA SHIFLA', 319273884821, 'KWANDIKA', 'P6A', 15, 15, 15, 16, 15, 17, 30, 31, 32, 120, 93, 77.5),
(14170, 'IRANEZEZA BUPFURA NELLY CKENEY', 319628674826, 'KWANDIKA', 'P6A', 13, 14, 14, 14, 14, 16, 27, 28, 30, 120, 85, 70.833333333333),
(14171, 'IRERA FABRICE', 31946188484, 'KWANDIKA', 'P6A', 12, 13, 13, 15, 14, 17, 25, 28, 31, 120, 84, 70),
(14172, 'IRIHO MUJAIDU ASLANI', 319604424826, 'KWANDIKA', 'P6A', 12, 13, 14, 14, 14, 16, 25, 28, 30, 120, 83, 69.166666666667),
(14173, 'IRUMVA MUGISHA BLAISE', 319810584832, 'KWANDIKA', 'P6A', 15, 14, 15, 14, 15, 16, 29, 29, 31, 120, 89, 74.166666666667),
(14174, 'KAYEGO NYANGE YVAN', 319598934816, 'KWANDIKA', 'P6A', 14, 15, 15, 15, 15, 17, 29, 30, 32, 120, 91, 75.833333333333),
(14175, 'MANZI LEON CEDRICK', 319687624824, 'KWANDIKA', 'P6A', 11, 13, 11, 12, 12, 15, 24, 23, 27, 120, 74, 61.666666666667),
(14176, 'MUGISHA VALENTIN', 319106614813, 'KWANDIKA', 'P6A', 13, 12, 13, 15, 13, 14, 25, 28, 27, 120, 80, 66.666666666667),
(14177, 'MUHIRWA ENOCK', 319877104838, 'KWANDIKA', 'P6A', 13, 15, 13, 13, 15, 17, 28, 26, 32, 120, 86, 71.666666666667),
(14178, 'NDIKUMANA CREDO ERNEST', 319490454819, 'KWANDIKA', 'P6A', 10, 10, 12, 13, 12, 16, 20, 25, 28, 120, 73, 60.833333333333),
(14179, 'NDIKUMWENAYO GENTIL', 319404654814, 'KWANDIKA', 'P6A', 13, 15, 15, 16, 15, 17, 28, 31, 32, 120, 91, 75.833333333333),
(14180, 'NGABONZIZA MUGISHA SIMPLICE', 319822344839, 'KWANDIKA', 'P6A', 12, 11, 13, 14, 14, 15, 23, 27, 29, 120, 79, 65.833333333333),
(14181, 'NIYIBIZI ALINE', 319526754834, 'KWANDIKA', 'P6A', 13, 12, 12, 15, 13, 16, 25, 27, 29, 120, 81, 67.5),
(14182, 'NIYINGIZE HONORINE', 31959341488, 'KWANDIKA', 'P6A', 14, 14, 14, 15, 15, 15, 28, 29, 30, 120, 87, 72.5),
(14183, 'NIYONGABO BLAISE', 319293314830, 'KWANDIKA', 'P6A', 14, 13, 14, 15, 15, 16, 27, 29, 31, 120, 87, 72.5),
(14184, 'UMUKUNZI NADINE', 319124874827, 'KWANDIKA', 'P6A', 11, 10, 0, 0, 13, 14, 21, 0, 27, 120, 48, 40),
(14185, 'URINZWENIMANA DIVINE', 319445634811, 'KWANDIKA', 'P6A', 12, 12, 13, 16, 13, 14, 24, 29, 27, 120, 80, 66.666666666667),
(14186, 'UWIZEYE UMUKUNDWA JOSEE EMMANUELLA', 319111644833, 'KWANDIKA', 'P6A', 13, 14, 15, 14, 15, 16, 27, 29, 31, 120, 87, 72.5),
(14187, 'DUFITIMANA GUILAINE', 319624264811, 'GUSOMA', 'P6A', 3, 4, 3, 3, 4, 4, 7, 6, 8, 30, 21, 70),
(14188, 'DUSABIMANA NOELLA', 319888764839, 'GUSOMA', 'P6A', 3, 3, 3, 4, 3, 4, 6, 7, 7, 30, 20, 66.666666666667),
(14189, 'GWIZA RUGWIRO FABRICE', 319448664821, 'GUSOMA', 'P6A', 4, 3, 3, 4, 4, 4, 7, 7, 8, 30, 22, 73.333333333333),
(14190, 'IGIRANEZA MAURICE', 319411554836, 'GUSOMA', 'P6A', 4, 4, 4, 4, 4, 4, 8, 8, 8, 30, 24, 80),
(14191, 'INEZA SHIFLA', 319273884821, 'GUSOMA', 'P6A', 3, 3, 4, 4, 4, 4, 6, 8, 8, 30, 22, 73.333333333333),
(14192, 'IRANEZEZA BUPFURA NELLY CKENEY', 319628674826, 'GUSOMA', 'P6A', 4, 4, 4, 4, 4, 4, 8, 8, 8, 30, 24, 80),
(14193, 'IRERA FABRICE', 31946188484, 'GUSOMA', 'P6A', 3, 3, 4, 3, 4, 4, 6, 7, 8, 30, 21, 70),
(14194, 'IRIHO MUJAIDU ASLANI', 319604424826, 'GUSOMA', 'P6A', 3, 4, 3, 4, 4, 3, 7, 7, 7, 30, 21, 70),
(14195, 'IRUMVA MUGISHA BLAISE', 319810584832, 'GUSOMA', 'P6A', 4, 4, 4, 4, 4, 4, 8, 8, 8, 30, 24, 80),
(14196, 'KAYEGO NYANGE YVAN', 319598934816, 'GUSOMA', 'P6A', 3, 3, 3, 4, 4, 4, 6, 7, 8, 30, 21, 70),
(14197, 'MANZI LEON CEDRICK', 319687624824, 'GUSOMA', 'P6A', 3, 3, 3, 3, 4, 4, 6, 6, 8, 30, 20, 66.666666666667),
(14198, 'MUGISHA VALENTIN', 319106614813, 'GUSOMA', 'P6A', 3, 4, 3, 4, 3, 3, 7, 7, 6, 30, 20, 66.666666666667),
(14199, 'MUHIRWA ENOCK', 319877104838, 'GUSOMA', 'P6A', 3, 3, 3, 4, 4, 4, 6, 7, 8, 30, 21, 70),
(15100, 'NDIKUMANA CREDO ERNEST', 319490454819, 'GUSOMA', 'P6A', 2, 3, 2, 3, 3, 4, 5, 5, 7, 30, 17, 56.666666666667),
(15101, 'NDIKUMWENAYO GENTIL', 319404654814, 'GUSOMA', 'P6A', 3, 3, 3, 3, 4, 3, 6, 6, 7, 30, 19, 63.333333333333),
(15102, 'NGABONZIZA MUGISHA SIMPLICE', 319822344839, 'GUSOMA', 'P6A', 3, 2, 3, 3, 3, 4, 5, 6, 7, 30, 18, 60),
(15103, 'NIYIBIZI ALINE', 319526754834, 'GUSOMA', 'P6A', 3, 3, 3, 4, 3, 4, 6, 7, 7, 30, 20, 66.666666666667),
(15104, 'NIYINGIZE HONORINE', 31959341488, 'GUSOMA', 'P6A', 3, 3, 3, 4, 3, 4, 6, 7, 7, 30, 20, 66.666666666667),
(15105, 'NIYONGABO BLAISE', 319293314830, 'GUSOMA', 'P6A', 3, 3, 3, 4, 3, 4, 6, 7, 7, 30, 20, 66.666666666667),
(15106, 'UMUKUNZI NADINE', 319124874827, 'GUSOMA', 'P6A', 3, 3, 0, 0, 3, 4, 6, 0, 7, 30, 13, 43.333333333333),
(15107, 'URINZWENIMANA DIVINE', 319445634811, 'GUSOMA', 'P6A', 3, 4, 3, 4, 4, 4, 7, 7, 8, 30, 22, 73.333333333333),
(15108, 'UWIZEYE UMUKUNDWA JOSEE EMMANUELLA', 319111644833, 'GUSOMA', 'P6A', 3, 3, 3, 4, 3, 4, 6, 7, 7, 30, 20, 66.666666666667),
(15109, 'DUFITIMANA GUILAINE', 319624264811, 'Reading', 'P6A', 4, 4, 4, 4, 2, 4, 8, 8, 6, 30, 22, 73.333333333333),
(15110, 'DUSABIMANA NOELLA', 319888764839, 'Reading', 'P6A', 3, 4, 4, 3, 1.5, 4, 7, 7, 5.5, 30, 19.5, 65),
(15111, 'GWIZA RUGWIRO FABRICE', 319448664821, 'Reading', 'P6A', 4, 4, 4, 5, 2, 4, 8, 9, 6, 30, 23, 76.666666666667),
(15112, 'IGIRANEZA MAURICE', 319411554836, 'Reading', 'P6A', 4, 4, 4, 5, 2.5, 4, 8, 9, 6.5, 30, 23.5, 78.333333333333),
(15113, 'INEZA SHIFLA', 319273884821, 'Reading', 'P6A', 3, 3, 4, 4, 2, 3, 6, 8, 5, 30, 19, 63.333333333333),
(15114, 'IRANEZEZA BUPFURA NELLY CKENEY', 319628674826, 'Reading', 'P6A', 4, 4, 3, 4, 2.5, 4, 8, 7, 6.5, 30, 21.5, 71.666666666667),
(15115, 'IRERA FABRICE', 31946188484, 'Reading', 'P6A', 4, 4, 3, 4, 2, 3, 8, 7, 5, 30, 20, 66.666666666667),
(15116, 'IRIHO MUJAIDU ASLANI', 319604424826, 'Reading', 'P6A', 3, 4, 4, 4, 2.5, 5, 7, 8, 7.5, 30, 22.5, 75),
(15117, 'IRUMVA MUGISHA BLAISE', 319810584832, 'Reading', 'P6A', 4, 4, 4, 5, 2.5, 5, 8, 9, 7.5, 30, 24.5, 81.666666666667),
(15118, 'KAYEGO NYANGE YVAN', 319598934816, 'Reading', 'P6A', 4, 4, 5, 3, 2, 5, 8, 8, 7, 30, 23, 76.666666666667),
(15119, 'MANZI LEON CEDRICK', 319687624824, 'Reading', 'P6A', 4, 3, 3, 3, 2, 3, 7, 6, 5, 30, 18, 60),
(15120, 'MUGISHA VALENTIN', 319106614813, 'Reading', 'P6A', 4, 4, 4, 4, 2, 4, 8, 8, 6, 30, 22, 73.333333333333),
(15121, 'MUHIRWA ENOCK', 319877104838, 'Reading', 'P6A', 4, 4, 4, 5, 2, 4, 8, 9, 6, 30, 23, 76.666666666667),
(15122, 'NDIKUMANA CREDO ERNEST', 319490454819, 'Reading', 'P6A', 4, 3, 3, 3, 1.5, 3, 7, 6, 4.5, 30, 17.5, 58.333333333333),
(15123, 'NDIKUMWENAYO GENTIL', 319404654814, 'Reading', 'P6A', 3, 3, 4, 4, 1.5, 3, 6, 8, 4.5, 30, 18.5, 61.666666666667),
(15124, 'NGABONZIZA MUGISHA SIMPLICE', 319822344839, 'Reading', 'P6A', 4, 4, 4, 4, 2.5, 4, 8, 8, 6.5, 30, 22.5, 75),
(15125, 'NIYIBIZI ALINE', 319526754834, 'Reading', 'P6A', 4, 3, 4, 3, 2, 3, 7, 7, 5, 30, 19, 63.333333333333),
(15126, 'NIYINGIZE HONORINE', 31959341488, 'Reading', 'P6A', 3, 3, 3, 4, 1.5, 3, 6, 7, 4.5, 30, 17.5, 58.333333333333),
(15127, 'NIYONGABO BLAISE', 319293314830, 'Reading', 'P6A', 4, 4, 4, 4, 2.5, 4, 8, 8, 6.5, 30, 22.5, 75),
(15128, 'UMUKUNZI NADINE', 319124874827, 'Reading', 'P6A', 3, 4, 0, 0, 2, 3, 7, 0, 5, 30, 12, 40),
(15129, 'URINZWENIMANA DIVINE', 319445634811, 'Reading', 'P6A', 3, 4, 3, 3, 1.5, 4, 7, 6, 5.5, 30, 18.5, 61.666666666667),
(15130, 'UWIZEYE UMUKUNDWA JOSEE EMMANUELLA', 319111644833, 'Reading', 'P6A', 4, 4, 4, 5, 2, 4, 8, 9, 6, 30, 23, 76.666666666667),
(15131, 'DUFITIMANA GUILAINE', 319624264811, 'Writing', 'P6A', 13, 12, 14, 13, 14, 14, 25, 27, 28, 120, 80, 66.666666666667),
(15132, 'DUSABIMANA NOELLA', 319888764839, 'Writing', 'P6A', 10, 13, 12, 12, 11, 7, 23, 24, 18, 120, 65, 54.166666666667),
(15133, 'GWIZA RUGWIRO FABRICE', 319448664821, 'Writing', 'P6A', 14, 17, 16, 16, 18, 17, 31, 32, 35, 120, 98, 81.666666666667),
(15134, 'IGIRANEZA MAURICE', 319411554836, 'Writing', 'P6A', 13, 14, 17, 14, 16, 15, 27, 31, 31, 120, 89, 74.166666666667),
(15135, 'INEZA SHIFLA', 319273884821, 'Writing', 'P6A', 9, 10, 11, 8, 13, 7, 19, 19, 20, 120, 58, 48.333333333333),
(15136, 'IRANEZEZA BUPFURA NELLY CKENEY', 319628674826, 'Writing', 'P6A', 13, 14, 14, 13, 15, 11, 27, 27, 26, 120, 80, 66.666666666667),
(15137, 'IRERA FABRICE', 31946188484, 'Writing', 'P6A', 13, 15, 14, 15, 16, 14, 28, 29, 30, 120, 87, 72.5),
(15138, 'IRIHO MUJAIDU ASLANI', 319604424826, 'Writing', 'P6A', 11, 15, 13, 11, 13, 12, 26, 24, 25, 120, 75, 62.5),
(15139, 'IRUMVA MUGISHA BLAISE', 319810584832, 'Writing', 'P6A', 14, 16, 16, 15, 16, 15, 30, 31, 31, 120, 92, 76.666666666667),
(15140, 'KAYEGO NYANGE YVAN', 319598934816, 'Writing', 'P6A', 12, 15, 15, 15, 16, 12, 27, 30, 28, 120, 85, 70.833333333333),
(15141, 'MANZI LEON CEDRICK', 319687624824, 'Writing', 'P6A', 9, 11, 11, 8, 9, 11, 20, 19, 20, 120, 59, 49.166666666667),
(15142, 'MUGISHA VALENTIN', 319106614813, 'Writing', 'P6A', 10, 13, 13, 11, 13, 13, 23, 24, 26, 120, 73, 60.833333333333),
(15143, 'MUHIRWA ENOCK', 319877104838, 'Writing', 'P6A', 11, 13, 13, 11, 15, 10, 24, 24, 25, 120, 73, 60.833333333333),
(15144, 'NDIKUMANA CREDO ERNEST', 319490454819, 'Writing', 'P6A', 11, 11, 12, 10, 14, 9, 22, 22, 23, 120, 67, 55.833333333333),
(15145, 'NDIKUMWENAYO GENTIL', 319404654814, 'Writing', 'P6A', 9, 10, 11, 9, 11, 9, 19, 20, 20, 120, 59, 49.166666666667),
(15146, 'NGABONZIZA MUGISHA SIMPLICE', 319822344839, 'Writing', 'P6A', 11, 15, 13, 13, 14, 13, 26, 26, 27, 120, 79, 65.833333333333),
(15147, 'NIYIBIZI ALINE', 319526754834, 'Writing', 'P6A', 8, 12, 10, 8, 9, 8, 20, 18, 17, 120, 55, 45.833333333333),
(15148, 'NIYINGIZE HONORINE', 31959341488, 'Writing', 'P6A', 10, 10, 9, 7, 8, 10, 20, 16, 18, 120, 54, 45),
(15149, 'NIYONGABO BLAISE', 319293314830, 'Writing', 'P6A', 13, 14, 14, 11, 16, 14, 27, 25, 30, 120, 82, 68.333333333333),
(15150, 'UMUKUNZI NADINE', 319124874827, 'Writing', 'P6A', 7, 7, 0, 0, 8, 9, 14, 0, 17, 120, 31, 25.833333333333),
(15151, 'URINZWENIMANA DIVINE', 319445634811, 'Writing', 'P6A', 11, 12, 12, 12, 13, 9, 23, 24, 22, 120, 69, 57.5),
(15152, 'UWIZEYE UMUKUNDWA JOSEE EMMANUELLA', 319111644833, 'Writing', 'P6A', 13, 14, 15, 14, 15, 14, 27, 29, 29, 120, 85, 70.833333333333),
(15153, 'DUFITIMANA GUILAINE', 319624264811, 'Expression Orale', 'P6A', 3, 4, 4, 3, 4, 3, 7, 7, 7, 30, 21, 70),
(15154, 'DUSABIMANA NOELLA', 319888764839, 'Expression Orale', 'P6A', 4, 4, 5, 4, 4, 3, 8, 9, 7, 30, 24, 80),
(15155, 'GWIZA RUGWIRO FABRICE', 319448664821, 'Expression Orale', 'P6A', 4, 4, 5, 4, 4, 5, 8, 9, 9, 30, 26, 86.666666666667),
(15156, 'IGIRANEZA MAURICE', 319411554836, 'Expression Orale', 'P6A', 3, 4, 5, 4, 3, 5, 7, 9, 8, 30, 24, 80),
(15157, 'INEZA SHIFLA', 319273884821, 'Expression Orale', 'P6A', 3, 4, 4, 3, 3, 4, 7, 7, 7, 30, 21, 70),
(15158, 'IRANEZEZA BUPFURA NELLY CKENEY', 319628674826, 'Expression Orale', 'P6A', 4, 4, 5, 4, 4, 4, 8, 9, 8, 30, 25, 83.333333333333),
(15159, 'IRERA FABRICE', 31946188484, 'Expression Orale', 'P6A', 4, 5, 5, 4, 4, 4, 9, 9, 8, 30, 26, 86.666666666667),
(15160, 'IRIHO MUJAIDU ASLANI', 319604424826, 'Expression Orale', 'P6A', 4, 4, 4, 3, 4, 3, 8, 7, 7, 30, 22, 73.333333333333),
(15161, 'IRUMVA MUGISHA BLAISE', 319810584832, 'Expression Orale', 'P6A', 4, 5, 5, 4, 3, 4, 9, 9, 7, 30, 25, 83.333333333333),
(15162, 'KAYEGO NYANGE YVAN', 319598934816, 'Expression Orale', 'P6A', 4, 4, 5, 4, 3, 4, 8, 9, 7, 30, 24, 80),
(15163, 'MANZI LEON CEDRICK', 319687624824, 'Expression Orale', 'P6A', 4, 4, 5, 4, 3, 3, 8, 9, 6, 30, 23, 76.666666666667),
(15164, 'MUGISHA VALENTIN', 319106614813, 'Expression Orale', 'P6A', 3, 4, 3, 3, 3, 3, 7, 6, 6, 30, 19, 63.333333333333),
(15165, 'MUHIRWA ENOCK', 319877104838, 'Expression Orale', 'P6A', 4, 5, 4, 3, 3, 4, 9, 7, 7, 30, 23, 76.666666666667),
(15166, 'NDIKUMANA CREDO ERNEST', 319490454819, 'Expression Orale', 'P6A', 3, 4, 4, 3, 3, 3, 7, 7, 6, 30, 20, 66.666666666667),
(15167, 'NDIKUMWENAYO GENTIL', 319404654814, 'Expression Orale', 'P6A', 3, 4, 4, 3, 3, 3, 7, 7, 6, 30, 20, 66.666666666667),
(15168, 'NGABONZIZA MUGISHA SIMPLICE', 319822344839, 'Expression Orale', 'P6A', 4, 5, 4, 3, 3, 4, 9, 7, 7, 30, 23, 76.666666666667),
(15169, 'NIYIBIZI ALINE', 319526754834, 'Expression Orale', 'P6A', 4, 5, 4, 3, 3, 3, 9, 7, 6, 30, 22, 73.333333333333),
(15170, 'NIYINGIZE HONORINE', 31959341488, 'Expression Orale', 'P6A', 3, 4, 4, 3, 3, 4, 7, 7, 7, 30, 21, 70),
(15171, 'NIYONGABO BLAISE', 319293314830, 'Expression Orale', 'P6A', 4, 5, 4, 3, 4, 5, 9, 7, 9, 30, 25, 83.333333333333),
(15172, 'UMUKUNZI NADINE', 319124874827, 'Expression Orale', 'P6A', 3, 4, 0, 0, 3, 4, 7, 0, 7, 30, 14, 46.666666666667),
(15173, 'URINZWENIMANA DIVINE', 319445634811, 'Expression Orale', 'P6A', 4, 4, 5, 4, 3, 3, 8, 9, 6, 30, 23, 76.666666666667),
(15174, 'UWIZEYE UMUKUNDWA JOSEE EMMANUELLA', 319111644833, 'Expression Orale', 'P6A', 4, 5, 5, 4, 5, 4, 9, 9, 9, 30, 27, 90),
(15175, 'DUFITIMANA GUILAINE', 319624264811, 'Expression Ecrite', 'P6A', 5, 5, 6, 6, 3, 6, 10, 12, 9, 60, 31, 51.666666666667),
(15176, 'DUSABIMANA NOELLA', 319888764839, 'Expression Ecrite', 'P6A', 5, 5, 4, 4, 4, 3, 10, 8, 7, 60, 25, 41.666666666667),
(15177, 'GWIZA RUGWIRO FABRICE', 319448664821, 'Expression Ecrite', 'P6A', 8, 8, 4, 8, 7, 8, 16, 12, 15, 60, 43, 71.666666666667),
(15178, 'IGIRANEZA MAURICE', 319411554836, 'Expression Ecrite', 'P6A', 6, 4, 5, 6, 4, 6, 10, 11, 10, 60, 31, 51.666666666667),
(15179, 'INEZA SHIFLA', 319273884821, 'Expression Ecrite', 'P6A', 2, 4, 3, 3, 2, 5, 6, 6, 7, 60, 19, 31.666666666667),
(15180, 'IRANEZEZA BUPFURA NELLY CKENEY', 319628674826, 'Expression Ecrite', 'P6A', 7, 7, 6, 5, 4, 7, 14, 11, 11, 60, 36, 60),
(15181, 'IRERA FABRICE', 31946188484, 'Expression Ecrite', 'P6A', 5, 5, 6, 6, 3, 5, 10, 12, 8, 60, 30, 50),
(15182, 'IRIHO MUJAIDU ASLANI', 319604424826, 'Expression Ecrite', 'P6A', 5, 4, 5, 5, 2, 6, 9, 10, 8, 60, 27, 45),
(15183, 'IRUMVA MUGISHA BLAISE', 319810584832, 'Expression Ecrite', 'P6A', 7, 7, 6, 5, 4, 5, 14, 11, 9, 60, 34, 56.666666666667),
(15184, 'KAYEGO NYANGE YVAN', 319598934816, 'Expression Ecrite', 'P6A', 5, 5, 5, 5, 2, 7, 10, 10, 9, 60, 29, 48.333333333333),
(15185, 'MANZI LEON CEDRICK', 319687624824, 'Expression Ecrite', 'P6A', 5, 5, 4, 5, 4, 5, 10, 9, 9, 60, 28, 46.666666666667),
(15186, 'MUGISHA VALENTIN', 319106614813, 'Expression Ecrite', 'P6A', 4, 3, 4, 3, 6, 4, 7, 7, 10, 60, 24, 40),
(15187, 'MUHIRWA ENOCK', 319877104838, 'Expression Ecrite', 'P6A', 7, 6, 6, 5, 4, 6, 13, 11, 10, 60, 34, 56.666666666667),
(15188, 'NDIKUMANA CREDO ERNEST', 319490454819, 'Expression Ecrite', 'P6A', 4, 3, 6, 4, 2, 4, 7, 10, 6, 60, 23, 38.333333333333),
(15189, 'NDIKUMWENAYO GENTIL', 319404654814, 'Expression Ecrite', 'P6A', 4, 2, 4, 3, 4, 4, 6, 7, 8, 60, 21, 35),
(15190, 'NGABONZIZA MUGISHA SIMPLICE', 319822344839, 'Expression Ecrite', 'P6A', 6, 7, 5, 5, 5, 6, 13, 10, 11, 60, 34, 56.666666666667),
(15191, 'NIYIBIZI ALINE', 319526754834, 'Expression Ecrite', 'P6A', 5, 5, 5, 4, 3, 5, 10, 9, 8, 60, 27, 45),
(15192, 'NIYINGIZE HONORINE', 31959341488, 'Expression Ecrite', 'P6A', 4, 5, 4, 3, 6, 2, 9, 7, 8, 60, 24, 40),
(15193, 'NIYONGABO BLAISE', 319293314830, 'Expression Ecrite', 'P6A', 5, 5, 5, 3, 4, 5, 10, 8, 9, 60, 27, 45),
(15194, 'UMUKUNZI NADINE', 319124874827, 'Expression Ecrite', 'P6A', 9, 4, 0, 0, 2, 5, 13, 0, 7, 60, 20, 33.333333333333),
(15195, 'URINZWENIMANA DIVINE', 319445634811, 'Expression Ecrite', 'P6A', 7, 5, 3, 3, 3, 5, 12, 6, 8, 60, 26, 43.333333333333),
(15196, 'UWIZEYE UMUKUNDWA JOSEE EMMANUELLA', 319111644833, 'Expression Ecrite', 'P6A', 9, 7, 6, 5, 9, 6, 16, 11, 15, 60, 42, 70),
(15197, 'DUFITIMANA GUILAINE', 319624264811, 'Metric system&Geometry', 'P6A', 7, 8, 8, 6, 9, 8, 15, 14, 17, 90, 46, 51.111111111111),
(15198, 'DUSABIMANA NOELLA', 319888764839, 'Metric system&Geometry', 'P6A', 4, 2, 4, 4, 7, 3, 6, 8, 10, 90, 24, 26.666666666667),
(15199, 'GWIZA RUGWIRO FABRICE', 319448664821, 'Metric system&Geometry', 'P6A', 13, 13, 14, 13, 14, 12, 26, 27, 26, 90, 79, 87.777777777778),
(16100, 'IGIRANEZA MAURICE', 319411554836, 'Metric system&Geometry', 'P6A', 11, 11, 7, 11, 11, 8, 22, 18, 19, 90, 59, 65.555555555556),
(16101, 'INEZA SHIFLA', 319273884821, 'Metric system&Geometry', 'P6A', 6, 6, 5, 9, 8, 6, 12, 14, 14, 90, 40, 44.444444444444),
(16102, 'IRANEZEZA BUPFURA NELLY CKENEY', 319628674826, 'Metric system&Geometry', 'P6A', 11, 13, 7, 11, 10, 8, 24, 18, 18, 90, 60, 66.666666666667),
(16103, 'IRERA FABRICE', 31946188484, 'Metric system&Geometry', 'P6A', 5, 8, 5, 7, 9, 7, 13, 12, 16, 90, 41, 45.555555555556),
(16104, 'IRIHO MUJAIDU ASLANI', 319604424826, 'Metric system&Geometry', 'P6A', 9, 9, 6, 9, 11, 8, 18, 15, 19, 90, 52, 57.777777777778),
(16105, 'IRUMVA MUGISHA BLAISE', 319810584832, 'Metric system&Geometry', 'P6A', 10, 14, 10, 10, 11, 10, 24, 20, 21, 90, 65, 72.222222222222),
(16106, 'KAYEGO NYANGE YVAN', 319598934816, 'Metric system&Geometry', 'P6A', 3, 4, 4, 8, 6, 5, 7, 12, 11, 90, 30, 33.333333333333),
(16107, 'MANZI LEON CEDRICK', 319687624824, 'Metric system&Geometry', 'P6A', 4, 4, 3, 5, 5, 5, 8, 8, 10, 90, 26, 28.888888888889),
(16108, 'MUGISHA VALENTIN', 319106614813, 'Metric system&Geometry', 'P6A', 5, 3, 7, 5, 7, 3, 8, 12, 10, 90, 30, 33.333333333333),
(16109, 'MUHIRWA ENOCK', 319877104838, 'Metric system&Geometry', 'P6A', 5, 8, 5, 9, 7, 6, 13, 14, 13, 90, 40, 44.444444444444),
(16110, 'NDIKUMANA CREDO ERNEST', 319490454819, 'Metric system&Geometry', 'P6A', 11, 7, 7, 8, 11, 10, 18, 15, 21, 90, 54, 60);
INSERT INTO `2019_marks` (`mid`, `names`, `reg`, `cname`, `class`, `term1_quiz`, `term1_exam`, `term2_quiz`, `term2_exam`, `term3_quiz`, `term3_exam`, `term1_tot`, `term2_tot`, `term3_tot`, `gmax`, `gtot`, `gper`) VALUES
(16111, 'NDIKUMWENAYO GENTIL', 319404654814, 'Metric system&Geometry', 'P6A', 2, 3, 5, 8, 8, 6, 5, 13, 14, 90, 32, 35.555555555556),
(16112, 'NGABONZIZA MUGISHA SIMPLICE', 319822344839, 'Metric system&Geometry', 'P6A', 8, 15, 7, 9, 9, 7, 23, 16, 16, 90, 55, 61.111111111111),
(16113, 'NIYIBIZI ALINE', 319526754834, 'Metric system&Geometry', 'P6A', 6, 7, 3, 6, 8, 5, 13, 9, 13, 90, 35, 38.888888888889),
(16114, 'NIYINGIZE HONORINE', 31959341488, 'Metric system&Geometry', 'P6A', 9, 10, 8, 9, 11, 8, 19, 17, 19, 90, 55, 61.111111111111),
(16115, 'NIYONGABO BLAISE', 319293314830, 'Metric system&Geometry', 'P6A', 6, 5, 4, 7, 8, 5, 11, 11, 13, 90, 35, 38.888888888889),
(16116, 'UMUKUNZI NADINE', 319124874827, 'Metric system&Geometry', 'P6A', 5, 7, 0, 0, 4, 5, 12, 0, 9, 90, 21, 23.333333333333),
(16117, 'URINZWENIMANA DIVINE', 319445634811, 'Metric system&Geometry', 'P6A', 7, 10, 9, 8, 8, 6, 17, 17, 14, 90, 48, 53.333333333333),
(16118, 'UWIZEYE UMUKUNDWA JOSEE EMMANUELLA', 319111644833, 'Metric system&Geometry', 'P6A', 13, 14, 13, 13, 14, 11, 27, 26, 25, 90, 78, 86.666666666667),
(16119, 'DUFITIMANA GUILAINE', 319624264811, 'Arthemetic,Algebra&Statistics', 'P6A', 7, 8, 8, 7, 9, 7, 15, 15, 16, 90, 46, 51.111111111111),
(16120, 'DUSABIMANA NOELLA', 319888764839, 'Arthemetic,Algebra&Statistics', 'P6A', 4, 5, 5, 4, 8, 6, 9, 9, 14, 90, 32, 35.555555555556),
(16121, 'GWIZA RUGWIRO FABRICE', 319448664821, 'Arthemetic,Algebra&Statistics', 'P6A', 14, 13, 13, 14, 14, 13, 27, 27, 27, 90, 81, 90),
(16122, 'IGIRANEZA MAURICE', 319411554836, 'Arthemetic,Algebra&Statistics', 'P6A', 7, 10, 8, 10, 11, 7, 17, 18, 18, 90, 53, 58.888888888889),
(16123, 'INEZA SHIFLA', 319273884821, 'Arthemetic,Algebra&Statistics', 'P6A', 5, 6, 5, 5, 8, 8, 11, 10, 16, 90, 37, 41.111111111111),
(16124, 'IRANEZEZA BUPFURA NELLY CKENEY', 319628674826, 'Arthemetic,Algebra&Statistics', 'P6A', 9, 11, 8, 11, 12, 10, 20, 19, 22, 90, 61, 67.777777777778),
(16125, 'IRERA FABRICE', 31946188484, 'Arthemetic,Algebra&Statistics', 'P6A', 7, 8, 6, 8, 10, 8, 15, 14, 18, 90, 47, 52.222222222222),
(16126, 'IRIHO MUJAIDU ASLANI', 319604424826, 'Arthemetic,Algebra&Statistics', 'P6A', 7, 8, 9, 10, 11, 6, 15, 19, 17, 90, 51, 56.666666666667),
(16127, 'IRUMVA MUGISHA BLAISE', 319810584832, 'Arthemetic,Algebra&Statistics', 'P6A', 10, 11, 10, 11, 10, 11, 21, 21, 21, 90, 63, 70),
(16128, 'KAYEGO NYANGE YVAN', 319598934816, 'Arthemetic,Algebra&Statistics', 'P6A', 5, 5, 4, 6, 7, 6, 10, 10, 13, 90, 33, 36.666666666667),
(16129, 'MANZI LEON CEDRICK', 319687624824, 'Arthemetic,Algebra&Statistics', 'P6A', 5, 4, 5, 5, 7, 8, 9, 10, 15, 90, 34, 37.777777777778),
(16130, 'MUGISHA VALENTIN', 319106614813, 'Arthemetic,Algebra&Statistics', 'P6A', 4, 6, 4, 4, 7, 8, 10, 8, 15, 90, 33, 36.666666666667),
(16131, 'MUHIRWA ENOCK', 319877104838, 'Arthemetic,Algebra&Statistics', 'P6A', 6, 7, 6, 7, 9, 8, 13, 13, 17, 90, 43, 47.777777777778),
(16132, 'NDIKUMANA CREDO ERNEST', 319490454819, 'Arthemetic,Algebra&Statistics', 'P6A', 8, 8, 7, 8, 11, 8, 16, 15, 19, 90, 50, 55.555555555556),
(16133, 'NDIKUMWENAYO GENTIL', 319404654814, 'Arthemetic,Algebra&Statistics', 'P6A', 3, 7, 8, 6, 8, 9, 10, 14, 17, 90, 41, 45.555555555556),
(16134, 'NGABONZIZA MUGISHA SIMPLICE', 319822344839, 'Arthemetic,Algebra&Statistics', 'P6A', 8, 6, 6, 8, 9, 9, 14, 14, 18, 90, 46, 51.111111111111),
(16135, 'NIYIBIZI ALINE', 319526754834, 'Arthemetic,Algebra&Statistics', 'P6A', 5, 5, 4, 4, 9, 7, 10, 8, 16, 90, 34, 37.777777777778),
(16136, 'NIYINGIZE HONORINE', 31959341488, 'Arthemetic,Algebra&Statistics', 'P6A', 7, 10, 9, 8, 10, 8, 17, 17, 18, 90, 52, 57.777777777778),
(16137, 'NIYONGABO BLAISE', 319293314830, 'Arthemetic,Algebra&Statistics', 'P6A', 8, 7, 5, 5, 8, 8, 15, 10, 16, 90, 41, 45.555555555556),
(16138, 'UMUKUNZI NADINE', 319124874827, 'Arthemetic,Algebra&Statistics', 'P6A', 4, 4, 0, 0, 7, 2, 8, 0, 9, 90, 17, 18.888888888889),
(16139, 'URINZWENIMANA DIVINE', 319445634811, 'Arthemetic,Algebra&Statistics', 'P6A', 8, 11, 8, 7, 9, 8, 19, 15, 17, 90, 51, 56.666666666667),
(16140, 'UWIZEYE UMUKUNDWA JOSEE EMMANUELLA', 319111644833, 'Arthemetic,Algebra&Statistics', 'P6A', 12, 14, 12, 12, 13, 12, 26, 24, 25, 90, 75, 83.333333333333),
(16141, 'DUFITIMANA GUILAINE', 319624264811, 'SET', 'P6A', 11, 10, 15, 17, 14, 15, 21, 32, 29, 120, 82, 68.333333333333),
(16142, 'DUSABIMANA NOELLA', 319888764839, 'SET', 'P6A', 7, 6, 10, 12, 9, 10, 13, 22, 19, 120, 54, 45),
(16143, 'GWIZA RUGWIRO FABRICE', 319448664821, 'SET', 'P6A', 14, 15, 17, 20, 17, 17, 29, 37, 34, 120, 100, 83.333333333333),
(16144, 'IGIRANEZA MAURICE', 319411554836, 'SET', 'P6A', 14, 15, 16, 18, 15, 15, 29, 34, 30, 120, 93, 77.5),
(16145, 'INEZA SHIFLA', 319273884821, 'SET', 'P6A', 7, 8, 12, 17, 13, 10, 15, 29, 23, 120, 67, 55.833333333333),
(16146, 'IRANEZEZA BUPFURA NELLY CKENEY', 319628674826, 'SET', 'P6A', 12, 14, 12, 17, 13, 12, 26, 29, 25, 120, 80, 66.666666666667),
(16147, 'IRERA FABRICE', 31946188484, 'SET', 'P6A', 10, 16, 15, 18, 16, 15, 26, 33, 31, 120, 90, 75),
(16148, 'IRIHO MUJAIDU ASLANI', 319604424826, 'SET', 'P6A', 11, 13, 13, 18, 17, 16, 24, 31, 33, 120, 88, 73.333333333333),
(16149, 'IRUMVA MUGISHA BLAISE', 319810584832, 'SET', 'P6A', 12, 15, 13, 18, 17, 17, 27, 31, 34, 120, 92, 76.666666666667),
(16150, 'KAYEGO NYANGE YVAN', 319598934816, 'SET', 'P6A', 13, 14, 13, 18, 14, 14, 27, 31, 28, 120, 86, 71.666666666667),
(16151, 'MANZI LEON CEDRICK', 319687624824, 'SET', 'P6A', 6, 6, 14, 18, 18, 13, 12, 32, 31, 120, 75, 62.5),
(16152, 'MUGISHA VALENTIN', 319106614813, 'SET', 'P6A', 10, 13, 14, 19, 17, 15, 23, 33, 32, 120, 88, 73.333333333333),
(16153, 'MUHIRWA ENOCK', 319877104838, 'SET', 'P6A', 11, 14, 13, 19, 11, 14, 25, 32, 25, 120, 82, 68.333333333333),
(16154, 'NDIKUMANA CREDO ERNEST', 319490454819, 'SET', 'P6A', 7, 9, 13, 18, 11, 13, 16, 31, 24, 120, 71, 59.166666666667),
(16155, 'NDIKUMWENAYO GENTIL', 319404654814, 'SET', 'P6A', 7, 12, 12, 16, 17, 14, 19, 28, 31, 120, 78, 65),
(16156, 'NGABONZIZA MUGISHA SIMPLICE', 319822344839, 'SET', 'P6A', 9, 13, 16, 20, 19, 14, 22, 36, 33, 120, 91, 75.833333333333),
(16157, 'NIYIBIZI ALINE', 319526754834, 'SET', 'P6A', 8, 10, 12, 15, 10, 8, 18, 27, 18, 120, 63, 52.5),
(16158, 'NIYINGIZE HONORINE', 31959341488, 'SET', 'P6A', 8, 11, 13, 15, 10, 11, 19, 28, 21, 120, 68, 56.666666666667),
(16159, 'NIYONGABO BLAISE', 319293314830, 'SET', 'P6A', 13, 16, 14, 17, 13, 14, 29, 31, 27, 120, 87, 72.5),
(16160, 'UMUKUNZI NADINE', 319124874827, 'SET', 'P6A', 6, 7, 0, 0, 14, 10, 13, 0, 24, 120, 37, 30.833333333333),
(16161, 'URINZWENIMANA DIVINE', 319445634811, 'SET', 'P6A', 10, 11, 12, 15, 14, 12, 21, 27, 26, 120, 74, 61.666666666667),
(16162, 'UWIZEYE UMUKUNDWA JOSEE EMMANUELLA', 319111644833, 'SET', 'P6A', 9, 16, 13, 16, 17, 12, 25, 29, 29, 120, 83, 69.166666666667),
(16163, 'DUFITIMANA GUILAINE', 319624264811, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 9, 12, 12, 11, 12, 16, 21, 23, 28, 120, 72, 60),
(16164, 'DUSABIMANA NOELLA', 319888764839, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 8, 9, 9, 11, 9, 15, 17, 20, 24, 120, 61, 50.833333333333),
(16165, 'GWIZA RUGWIRO FABRICE', 319448664821, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 18, 17, 17, 17, 17, 19, 35, 34, 36, 120, 105, 87.5),
(16166, 'IGIRANEZA MAURICE', 319411554836, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 15, 14, 15, 15, 17, 18, 29, 30, 35, 120, 94, 78.333333333333),
(16167, 'INEZA SHIFLA', 319273884821, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 11, 12, 11, 12, 13, 16, 23, 23, 29, 120, 75, 62.5),
(16168, 'IRANEZEZA BUPFURA NELLY CKENEY', 319628674826, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 12, 13, 11, 12, 14, 17, 25, 23, 31, 120, 79, 65.833333333333),
(16169, 'IRERA FABRICE', 31946188484, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 14, 12, 12, 14, 16, 16, 26, 26, 32, 120, 84, 70),
(16170, 'IRIHO MUJAIDU ASLANI', 319604424826, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 13, 12, 12, 14, 14, 16, 25, 26, 30, 120, 81, 67.5),
(16171, 'IRUMVA MUGISHA BLAISE', 319810584832, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 16, 15, 14, 15, 16, 18, 31, 29, 34, 120, 94, 78.333333333333),
(16172, 'KAYEGO NYANGE YVAN', 319598934816, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 12, 13, 15, 13, 15, 17, 25, 28, 32, 120, 85, 70.833333333333),
(16173, 'MANZI LEON CEDRICK', 319687624824, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 10, 8, 8, 11, 13, 15, 18, 19, 28, 120, 65, 54.166666666667),
(16174, 'MUGISHA VALENTIN', 319106614813, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 13, 10, 14, 13, 15, 18, 23, 27, 33, 120, 83, 69.166666666667),
(16175, 'MUHIRWA ENOCK', 319877104838, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 10, 13, 15, 14, 14, 18, 23, 29, 32, 120, 84, 70),
(16176, 'NDIKUMANA CREDO ERNEST', 319490454819, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 10, 9, 11, 11, 12, 13, 19, 22, 25, 120, 66, 55),
(16177, 'NDIKUMWENAYO GENTIL', 319404654814, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 9, 11, 12, 15, 14, 15, 20, 27, 29, 120, 76, 63.333333333333),
(16178, 'NGABONZIZA MUGISHA SIMPLICE', 319822344839, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 14, 14, 15, 13, 14, 19, 28, 28, 33, 120, 89, 74.166666666667),
(16179, 'NIYIBIZI ALINE', 319526754834, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 8, 8, 10, 11, 11, 13, 16, 21, 24, 120, 61, 50.833333333333),
(16180, 'NIYINGIZE HONORINE', 31959341488, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 10, 6, 10, 9, 8, 13, 16, 19, 21, 120, 56, 46.666666666667),
(16181, 'NIYONGABO BLAISE', 319293314830, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 15, 13, 14, 13, 14, 18, 28, 27, 32, 120, 87, 72.5),
(16182, 'UMUKUNZI NADINE', 319124874827, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 5, 4, 0, 0, 8, 12, 9, 0, 20, 120, 29, 24.166666666667),
(16183, 'URINZWENIMANA DIVINE', 319445634811, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 8, 12, 12, 11, 12, 14, 20, 23, 26, 120, 69, 57.5),
(16184, 'UWIZEYE UMUKUNDWA JOSEE EMMANUELLA', 319111644833, 'SOCIAL &RELIGIOUS STUDIES', 'P6A', 10, 13, 12, 12, 12, 17, 23, 24, 29, 120, 76, 63.333333333333),
(16185, 'DUFITIMANA GUILAINE', 319624264811, 'COMPUTER STDIES', 'P6A', 2, 3, 3, 5, 5, 5, 5, 8, 10, 30, 23, 76.666666666667),
(16186, 'DUSABIMANA NOELLA', 319888764839, 'COMPUTER STDIES', 'P6A', 3, 3, 2, 3, 4, 2, 6, 5, 6, 30, 17, 56.666666666667),
(16187, 'GWIZA RUGWIRO FABRICE', 319448664821, 'COMPUTER STDIES', 'P6A', 4, 4, 5, 5, 5, 3, 8, 10, 8, 30, 26, 86.666666666667),
(16188, 'IGIRANEZA MAURICE', 319411554836, 'COMPUTER STDIES', 'P6A', 3, 4, 3, 5, 5, 5, 7, 8, 10, 30, 25, 83.333333333333),
(16189, 'INEZA SHIFLA', 319273884821, 'COMPUTER STDIES', 'P6A', 0, 3, 3, 5, 5, 5, 3, 8, 10, 30, 21, 70),
(16190, 'IRANEZEZA BUPFURA NELLY CKENEY', 319628674826, 'COMPUTER STDIES', 'P6A', 3, 3, 3, 5, 5, 5, 6, 8, 10, 30, 24, 80),
(16191, 'IRERA FABRICE', 31946188484, 'COMPUTER STDIES', 'P6A', 4, 4, 3, 4, 5, 4, 8, 7, 9, 30, 24, 80),
(16192, 'IRIHO MUJAIDU ASLANI', 319604424826, 'COMPUTER STDIES', 'P6A', 0, 4, 4, 4, 5, 5, 4, 8, 10, 30, 22, 73.333333333333),
(16193, 'IRUMVA MUGISHA BLAISE', 319810584832, 'COMPUTER STDIES', 'P6A', 3, 3, 2, 4, 5, 5, 6, 6, 10, 30, 22, 73.333333333333),
(16194, 'KAYEGO NYANGE YVAN', 319598934816, 'COMPUTER STDIES', 'P6A', 2, 3, 3, 4, 5, 5, 5, 7, 10, 30, 22, 73.333333333333),
(16195, 'MANZI LEON CEDRICK', 319687624824, 'COMPUTER STDIES', 'P6A', 3, 3, 3, 3, 5, 5, 6, 6, 10, 30, 22, 73.333333333333),
(16196, 'MUGISHA VALENTIN', 319106614813, 'COMPUTER STDIES', 'P6A', 3, 4, 3, 3, 5, 5, 7, 6, 10, 30, 23, 76.666666666667),
(16197, 'MUHIRWA ENOCK', 319877104838, 'COMPUTER STDIES', 'P6A', 3, 4, 2, 3, 5, 5, 7, 5, 10, 30, 22, 73.333333333333),
(16198, 'NDIKUMANA CREDO ERNEST', 319490454819, 'COMPUTER STDIES', 'P6A', 3, 4, 2, 4, 5, 5, 7, 6, 10, 30, 23, 76.666666666667),
(16199, 'NDIKUMWENAYO GENTIL', 319404654814, 'COMPUTER STDIES', 'P6A', 2, 3, 2, 4, 5, 5, 5, 6, 10, 30, 21, 70),
(17100, 'NGABONZIZA MUGISHA SIMPLICE', 319822344839, 'COMPUTER STDIES', 'P6A', 2, 3, 3, 4, 5, 5, 5, 7, 10, 30, 22, 73.333333333333),
(17101, 'NIYIBIZI ALINE', 319526754834, 'COMPUTER STDIES', 'P6A', 3, 3, 3, 4, 5, 5, 6, 7, 10, 30, 23, 76.666666666667),
(17102, 'NIYINGIZE HONORINE', 31959341488, 'COMPUTER STDIES', 'P6A', 0, 3, 2, 4, 5, 4, 3, 6, 9, 30, 18, 60),
(17103, 'NIYONGABO BLAISE', 319293314830, 'COMPUTER STDIES', 'P6A', 0, 4, 3, 4, 5, 5, 4, 7, 10, 30, 21, 70),
(17104, 'UMUKUNZI NADINE', 319124874827, 'COMPUTER STDIES', 'P6A', 3, 3, 0, 0, 5, 2, 6, 0, 7, 30, 13, 43.333333333333),
(17105, 'URINZWENIMANA DIVINE', 319445634811, 'COMPUTER STDIES', 'P6A', 3, 3, 3, 5, 5, 5, 6, 8, 10, 30, 24, 80),
(17106, 'UWIZEYE UMUKUNDWA JOSEE EMMANUELLA', 319111644833, 'COMPUTER STDIES', 'P6A', 3, 4, 3, 5, 5, 5, 7, 8, 10, 30, 25, 83.333333333333),
(17107, 'DUFITIMANA GUILAINE', 319624264811, 'SPORT', 'P6A', 4, 4, 4, 3, 3, 4, 8, 7, 7, 30, 22, 73.333333333333),
(17108, 'DUSABIMANA NOELLA', 319888764839, 'SPORT', 'P6A', 4, 3, 4, 3, 2, 3, 7, 7, 5, 30, 19, 63.333333333333),
(17109, 'GWIZA RUGWIRO FABRICE', 319448664821, 'SPORT', 'P6A', 4, 4, 4, 4, 3, 3, 8, 8, 6, 30, 22, 73.333333333333),
(17110, 'IGIRANEZA MAURICE', 319411554836, 'SPORT', 'P6A', 4, 4, 4, 4, 4, 3, 8, 8, 7, 30, 23, 76.666666666667),
(17111, 'INEZA SHIFLA', 319273884821, 'SPORT', 'P6A', 4, 3, 3, 4, 5, 5, 7, 7, 10, 30, 24, 80),
(17112, 'IRANEZEZA BUPFURA NELLY CKENEY', 319628674826, 'SPORT', 'P6A', 4, 3, 4, 3, 4, 5, 7, 7, 9, 30, 23, 76.666666666667),
(17113, 'IRERA FABRICE', 31946188484, 'SPORT', 'P6A', 3, 4, 4, 5, 3, 4, 7, 9, 7, 30, 23, 76.666666666667),
(17114, 'IRIHO MUJAIDU ASLANI', 319604424826, 'SPORT', 'P6A', 4, 4, 4, 5, 4, 4, 8, 9, 8, 30, 25, 83.333333333333),
(17115, 'IRUMVA MUGISHA BLAISE', 319810584832, 'SPORT', 'P6A', 4, 4, 3, 4, 4, 5, 8, 7, 9, 30, 24, 80),
(17116, 'KAYEGO NYANGE YVAN', 319598934816, 'SPORT', 'P6A', 3, 4, 4, 3, 3, 4, 7, 7, 7, 30, 21, 70),
(17117, 'MANZI LEON CEDRICK', 319687624824, 'SPORT', 'P6A', 4, 4, 4, 3, 3, 4, 8, 7, 7, 30, 22, 73.333333333333),
(17118, 'MUGISHA VALENTIN', 319106614813, 'SPORT', 'P6A', 3, 4, 4, 3, 3, 3, 7, 7, 6, 30, 20, 66.666666666667),
(17119, 'MUHIRWA ENOCK', 319877104838, 'SPORT', 'P6A', 4, 4, 4, 4, 3, 3, 8, 8, 6, 30, 22, 73.333333333333),
(17120, 'NDIKUMANA CREDO ERNEST', 319490454819, 'SPORT', 'P6A', 4, 4, 4, 4, 3, 4, 8, 8, 7, 30, 23, 76.666666666667),
(17121, 'NDIKUMWENAYO GENTIL', 319404654814, 'SPORT', 'P6A', 4, 3, 4, 4, 3, 3, 7, 8, 6, 30, 21, 70),
(17122, 'NGABONZIZA MUGISHA SIMPLICE', 319822344839, 'SPORT', 'P6A', 4, 3, 4, 3, 4, 4, 7, 7, 8, 30, 22, 73.333333333333),
(17123, 'NIYIBIZI ALINE', 319526754834, 'SPORT', 'P6A', 3, 4, 3, 4, 3, 4, 7, 7, 7, 30, 21, 70),
(17124, 'NIYINGIZE HONORINE', 31959341488, 'SPORT', 'P6A', 4, 3, 3, 4, 4, 4, 7, 7, 8, 30, 22, 73.333333333333),
(17125, 'NIYONGABO BLAISE', 319293314830, 'SPORT', 'P6A', 4, 4, 4, 5, 3, 3, 8, 9, 6, 30, 23, 76.666666666667),
(17126, 'UMUKUNZI NADINE', 319124874827, 'SPORT', 'P6A', 4, 3, 0, 0, 2, 2, 7, 0, 4, 30, 11, 36.666666666667),
(17127, 'URINZWENIMANA DIVINE', 319445634811, 'SPORT', 'P6A', 3, 4, 4, 4, 3, 4, 7, 8, 7, 30, 22, 73.333333333333),
(17128, 'UWIZEYE UMUKUNDWA JOSEE EMMANUELLA', 319111644833, 'SPORT', 'P6A', 4, 4, 4, 3, 2, 2, 8, 7, 4, 30, 19, 63.333333333333),
(17129, 'DUFITIMANA GUILAINE', 319624264811, 'CREATIVE ARTS', 'P6A', 3, 4, 3, 4, 3, 4, 7, 7, 7, 30, 21, 70),
(17130, 'DUSABIMANA NOELLA', 319888764839, 'CREATIVE ARTS', 'P6A', 3, 3, 4, 3, 3, 3, 6, 7, 6, 30, 19, 63.333333333333),
(17131, 'GWIZA RUGWIRO FABRICE', 319448664821, 'CREATIVE ARTS', 'P6A', 3, 4, 3, 4, 4, 5, 7, 7, 9, 30, 23, 76.666666666667),
(17132, 'IGIRANEZA MAURICE', 319411554836, 'CREATIVE ARTS', 'P6A', 3, 4, 4, 4, 3, 4, 7, 8, 7, 30, 22, 73.333333333333),
(17133, 'INEZA SHIFLA', 319273884821, 'CREATIVE ARTS', 'P6A', 3, 4, 4, 4, 4, 5, 7, 8, 9, 30, 24, 80),
(17134, 'IRANEZEZA BUPFURA NELLY CKENEY', 319628674826, 'CREATIVE ARTS', 'P6A', 3, 4, 4, 4, 3, 3, 7, 8, 6, 30, 21, 70),
(17135, 'IRERA FABRICE', 31946188484, 'CREATIVE ARTS', 'P6A', 3, 4, 4, 4, 3, 3, 7, 8, 6, 30, 21, 70),
(17136, 'IRIHO MUJAIDU ASLANI', 319604424826, 'CREATIVE ARTS', 'P6A', 3, 4, 3, 4, 3, 3, 7, 7, 6, 30, 20, 66.666666666667),
(17137, 'IRUMVA MUGISHA BLAISE', 319810584832, 'CREATIVE ARTS', 'P6A', 3, 3, 3, 4, 3, 4, 6, 7, 7, 30, 20, 66.666666666667),
(17138, 'KAYEGO NYANGE YVAN', 319598934816, 'CREATIVE ARTS', 'P6A', 3, 4, 3, 4, 3, 3, 7, 7, 6, 30, 20, 66.666666666667),
(17139, 'MANZI LEON CEDRICK', 319687624824, 'CREATIVE ARTS', 'P6A', 3, 4, 3, 4, 3, 3, 7, 7, 6, 30, 20, 66.666666666667),
(17140, 'MUGISHA VALENTIN', 319106614813, 'CREATIVE ARTS', 'P6A', 3, 4, 4, 4, 2, 3, 7, 8, 5, 30, 20, 66.666666666667),
(17141, 'MUHIRWA ENOCK', 319877104838, 'CREATIVE ARTS', 'P6A', 3, 4, 3, 4, 3, 3, 7, 7, 6, 30, 20, 66.666666666667),
(17142, 'NDIKUMANA CREDO ERNEST', 319490454819, 'CREATIVE ARTS', 'P6A', 3, 4, 4, 4, 3, 4, 7, 8, 7, 30, 22, 73.333333333333),
(17143, 'NDIKUMWENAYO GENTIL', 319404654814, 'CREATIVE ARTS', 'P6A', 3, 4, 4, 3, 3, 4, 7, 7, 7, 30, 21, 70),
(17144, 'NGABONZIZA MUGISHA SIMPLICE', 319822344839, 'CREATIVE ARTS', 'P6A', 3, 4, 3, 4, 3, 4, 7, 7, 7, 30, 21, 70),
(17145, 'NIYIBIZI ALINE', 319526754834, 'CREATIVE ARTS', 'P6A', 3, 4, 3, 4, 3, 3, 7, 7, 6, 30, 20, 66.666666666667),
(17146, 'NIYINGIZE HONORINE', 31959341488, 'CREATIVE ARTS', 'P6A', 3, 4, 3, 4, 3, 4, 7, 7, 7, 30, 21, 70),
(17147, 'NIYONGABO BLAISE', 319293314830, 'CREATIVE ARTS', 'P6A', 3, 4, 3, 4, 3, 3, 7, 7, 6, 30, 20, 66.666666666667),
(17148, 'UMUKUNZI NADINE', 319124874827, 'CREATIVE ARTS', 'P6A', 3, 3, 0, 0, 3, 4, 6, 0, 7, 30, 13, 43.333333333333),
(17149, 'URINZWENIMANA DIVINE', 319445634811, 'CREATIVE ARTS', 'P6A', 3, 4, 3, 4, 3, 4, 7, 7, 7, 30, 21, 70),
(17150, 'UWIZEYE UMUKUNDWA JOSEE EMMANUELLA', 319111644833, 'CREATIVE ARTS', 'P6A', 3, 4, 3, 4, 3, 3, 7, 7, 6, 30, 20, 66.666666666667),
(17151, 'BAGIRIMFURA JEAN DE DIEU DIEU', 319128833222, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17152, 'BAHIRE NIKITA', 319271453239, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17153, 'BAHO RUKUNDO ACHILLE', 31943035322, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17154, 'HAVUGIMANA ALAIN CALVIN', 31945061321, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17155, 'HIRWA ELVIS ', 319659913231, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17156, 'HUMURA IRAHARI RAISSA', 31981936326, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17157, 'INGABIRE FLOWER', 319787383219, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17158, 'IRAMBONA ELYSEE', 31959062328, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17159, 'IRIHO MU. SHA. MBASAYEVU', 319416593217, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17160, 'ISHIMWE CARINE', 319519973223, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17161, 'ISHIMWE ELITE', 319753103215, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17162, 'ISHIMWE ESTHER', 319374293231, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17163, 'KAMIKAZI SIERRA', 31934666322, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17164, 'MUKAHIRWA NELLY', 319369163225, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17165, 'MUNEZERO MAHORO JOY', 319385783222, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17166, 'NDIZEYE FORWARD', 319194693234, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17167, 'NIYOGUSHIMWA REGIS  ', 31930657326, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17168, 'NIYOKWIZERWA ISAAC CLEO', 319676223229, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17169, 'NIYOKWIZERWA OLIVIER', 319826573211, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17170, 'NIYOMUGISHA RACHEL', 319352143210, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17171, 'NIYONIRINGIYE DIDIER', 319794883210, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17172, 'NIYONKURU SABIN SALOM0N', 319285293219, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17173, 'NKURUNZIZA SHEM GERVAIS', 31989556324, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17174, 'NSABIMANA JEAN CLAUDE', 31912787327, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17175, 'NSHIMIYIMANA PLACIDE KEVIN', 319622293237, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17176, 'NTEZIRYAYO HIDJA', 319245393224, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17177, 'NYIRAMUGISHA PASCALINE', 31910663325, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17178, 'UJENEZA PEACE BLANDINE', 319221373210, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17179, 'UMURERWA NICE ', 319798293231, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17180, 'UMUTONIWASE RATIFA', 319212573234, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17181, 'UWASE NALADA', 319400453228, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17182, 'UWASE NELLY', 319591663237, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17183, 'UWIMPUHWE ADELINE', 319154663218, 'SOCIAL &RELIGIOUS STUDIES', 'P5A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17184, '', 31948510006, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17185, '', 319643610038, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17186, '', 319817930015, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17187, '', 319427960038, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17188, '', 31981931006, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17189, '', 319193300038, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17190, '', 319216220028, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17191, '', 319618450012, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17192, '', 319232640033, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17193, '', 319213600012, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17194, '', 319506130013, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17195, '', 319616740035, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17196, '', 319563650033, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17197, '', 319851110031, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17198, '', 31979392001, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17199, '', 319102130010, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17200, '', 319852260015, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17201, '', 319599840031, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17202, '', 319825990015, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17203, '', 319671220037, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17204, '', 319105680039, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17205, '', 319346360028, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17206, '', 319242880012, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17207, '', 319883820013, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17208, '', 319696700010, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17209, '', 319703700011, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17210, '', 319891650018, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17211, '', 319390310012, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17212, '', 319200230011, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17213, '', 319495870017, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17214, '', 31943487003, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17215, '', 319403250014, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17216, '', 31914341009, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17217, '', 31937439001, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17218, '', 319621160028, 'GUSOMA1', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17219, 'BAHOZA JOSUE ANELKA', 31948510006, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17220, 'BIZIMANA EVODE', 319643610038, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17221, 'BYISHIMO ZACHEE', 319817930015, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17222, 'GANZA PEACE ACSAH', 319427960038, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17223, 'GANZA VANWISE', 31981931006, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17224, 'GISUBIZO ELIANE', 319193300038, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17225, 'HATEGEKIMANA DAVID BECKHAM ', 319216220028, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17226, 'IGIRANEZA JOTHAM', 319618450012, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17227, 'IGIRANEZA MUGISHA HERITIER', 319232640033, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17228, 'INEZA GULAINE', 319213600012, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17229, 'IRADUKUNDA KEVINE', 319506130013, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17230, 'IRANKUNDA EDISON', 319616740035, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17231, 'IRANKUNDA JUSTIN', 319563650033, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17232, 'IRUMVA UWASE BLANDINE', 319851110031, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17233, 'ITUZE SHIMO LAISSA', 31979392001, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17234, 'KAYITAMBE SABINE MARY ', 319102130010, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17235, 'KAYITARE DIDIER', 319852260015, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17236, 'KAZENEZA AIMEE DOUCE', 319599840031, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17237, 'MUHIGIRWA TETA CYNTHIA ', 319825990015, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17238, 'MUHIGIRWA SANGWA BRUNO', 319671220037, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17239, 'MUHIRWA REMY', 319105680039, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17240, 'MUSHIMIYIMANA GHISLAINE', 319346360028, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17241, 'MUTABAZI HAPPY ', 319242880012, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17242, 'NDAYIKUNDA PRINCE ', 319883820013, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17243, 'NDAYIZEYE JOEL', 319696700010, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17244, 'NDIZEYE BRUCE', 319703700011, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17245, 'NIGANZE NZIZA SHIBU IRENE', 319891650018, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17246, 'NIKUZWE JOSELINE', 319390310012, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17247, 'NINZIZA LINA', 319200230011, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17248, 'NIYOMUNGERI AIME CHRISTIAN', 319495870017, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17249, 'NYIRAMWIZA FRIDAUSSI', 31943487003, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17250, 'TUYISHIME ALINE', 319403250014, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17251, 'UMUHOZAWASE GRACE', 31914341009, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17252, 'UMUTONIWASE BENITHA', 31937439001, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17253, 'UWANYIRIGIRA ADELINE', 319621160028, 'GUSOMA', 'P5B', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `2019_places`
--

CREATE TABLE `2019_places` (
  `id` int(11) NOT NULL,
  `studentid` double NOT NULL,
  `term1` int(11) NOT NULL,
  `term2` int(11) NOT NULL,
  `term3` int(11) NOT NULL,
  `termtot` int(11) NOT NULL,
  `per1` double NOT NULL,
  `per2` double NOT NULL,
  `per3` double NOT NULL,
  `pertot` double NOT NULL,
  `class` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2019_places`
--

INSERT INTO `2019_places` (`id`, `studentid`, `term1`, `term2`, `term3`, `termtot`, `per1`, `per2`, `per3`, `pertot`, `class`) VALUES
(1, 319624264811, 13, 18, 9, 11, 58.333333333333, 64.666666666667, 67.666666666667, 190.66666666667, 'P6A'),
(2, 319888764839, 19, 15, 21, 21, 48.666666666667, 54.333333333333, 53.5, 156.5, 'P6A'),
(3, 319448664821, 1, 1, 1, 1, 80, 84, 84.333333333333, 248.33333333333, 'P6A'),
(4, 319411554836, 4, 2, 4, 4, 70, 74.666666666667, 74.5, 219.16666666667, 'P6A'),
(5, 319273884821, 18, 17, 15, 16, 50.666666666667, 59.333333333333, 63.333333333333, 173.33333333333, 'P6A'),
(6, 319628674826, 5, 5, 6, 5, 69, 67.333333333333, 70.166666666667, 206.5, 'P6A'),
(7, 31946188484, 8, 6, 7, 7, 62.666666666667, 67, 69.666666666667, 199.33333333333, 'P6A'),
(8, 319604424826, 10, 7, 8, 8, 61, 66.333333333333, 69.166666666667, 196.5, 'P6A'),
(9, 319810584832, 2, 17, 2, 2, 73.666666666667, 72.666666666667, 76.5, 222.83333333333, 'P6A'),
(10, 319598934816, 12, 9, 11, 12, 58.666666666667, 65.333333333333, 66, 190, 'P6A'),
(11, 319687624824, 21, 22, 18, 19, 47.666666666667, 53.666666666667, 60.666666666667, 162, 'P6A'),
(12, 319106614813, 15, 20, 13, 14, 54, 60.333333333333, 64, 178.33333333333, 'P6A'),
(13, 319877104838, 9, 16, 12, 10, 61.333333333333, 64, 65.666666666667, 191, 'P6A'),
(14, 319490454819, 16, 14, 16, 15, 53, 60, 62.5, 175.5, 'P6A'),
(15, 319404654814, 20, 14, 14, 17, 48.333333333333, 60.666666666667, 63.833333333333, 172.83333333333, 'P6A'),
(16, 319822344839, 6, 8, 5, 6, 63.333333333333, 66.333333333333, 70.833333333333, 200.5, 'P6A'),
(17, 319526754834, 17, 21, 20, 20, 51.333333333333, 53.666666666667, 55.333333333333, 160.33333333333, 'P6A'),
(18, 31959341488, 14, 19, 19, 18, 54.666666666667, 58, 59.166666666667, 171.83333333333, 'P6A'),
(19, 319293314830, 7, 12, 10, 9, 63, 62, 67.5, 192.5, 'P6A'),
(20, 319124874827, 22, 13, 22, 22, 43, 0, 50, 93, 'P6A'),
(21, 319445634811, 11, 21, 17, 13, 59.333333333333, 62, 61.166666666667, 182.5, 'P6A'),
(22, 319111644833, 3, 3, 3, 3, 72, 73, 75, 220, 'P6A');

-- --------------------------------------------------------

--
-- Table structure for table `2019_quiz`
--

CREATE TABLE `2019_quiz` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `tot` int(11) NOT NULL,
  `date` varchar(2555) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `term` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `testid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2019_quiz`
--

INSERT INTO `2019_quiz` (`id`, `course`, `tot`, `date`, `class`, `term`, `details`, `testid`) VALUES
(1, 'GUSOMA', 10, '1/Feb/2019', 'P3B', 'term1', 'Quiz on:', ''),
(2, 'KWANDIKA', 20, '1/Feb/2019', 'P3B', 'term1', 'Quiz on:', ''),
(3, 'Reading', 10, '1/Feb/2019', 'P3B', 'term1', 'Quiz on:', ''),
(4, 'Writing', 20, '1/Feb/2019', 'P3B', 'term1', 'Quiz on:', ''),
(5, 'Expression Orale', 5, '1/Feb/2019', 'P3B', 'term1', 'Quiz on:', ''),
(6, 'Expression Ecrite', 15, '1/Feb/2019', 'P3B', 'term1', 'Quiz on:', ''),
(7, 'Metric system&Geometry', 10, '1/Feb/2019', 'P3B', 'term1', 'Quiz on:', ''),
(8, 'Arthemetic,Algebra&Statistics', 20, '1/Feb/2019', 'P3B', 'term1', 'Quiz on:', ''),
(9, 'SET', 10, '1/Feb/2019', 'P3B', 'term1', 'Quiz on:', ''),
(10, 'SOCIAL &RELIGIOUS STUDIES', 15, '1/Feb/2019', 'P3B', 'term1', 'Quiz on:', ''),
(11, 'COMPUTER STDIES', 5, '1/Feb/2019', 'P3B', 'term1', 'Quiz on:', ''),
(12, 'SPORT', 5, '1/Feb/2019', 'P3B', 'term1', 'Quiz on:', ''),
(13, 'CREATIVE ARTS', 5, '1/Feb/2019', 'P3B', 'term1', 'Quiz on:', ''),
(40, 'Metric system&Geometry', 15, '1/Feb/2019', 'P6B', 'term1', 'Quiz on:', ''),
(41, 'Metric system&Geometry', 15, '1/Apr/2019', 'P6B', 'term2', 'Quiz on:', ''),
(42, 'Arthemetic,Algebra&Statistics', 15, '1/Feb/2019', 'P6B', 'term1', 'Quiz on:', ''),
(43, 'Arthemetic,Algebra&Statistics', 15, '1/Apr/2019', 'P6B', 'term2', 'Quiz on:', ''),
(44, 'SPORT', 5, '1/Feb/2019', 'P6B', 'term1', 'Quiz on:', ''),
(45, 'SPORT', 5, '1/Apr/2019', 'P6B', 'term2', 'Quiz on:', ''),
(46, 'SOCIAL &RELIGIOUS STUDIES', 20, '1/Feb/2019', 'P6B', 'term1', 'Quiz on:', ''),
(47, 'SOCIAL &RELIGIOUS STUDIES', 20, '1/Apr/2019', 'P6B', 'term2', 'Quiz on:', ''),
(48, 'COMPUTER STDIES', 5, '1/Feb/2019', 'P6B', 'term1', 'Quiz on:', ''),
(49, 'COMPUTER STDIES', 5, '1/Apr/2019', 'P6B', 'term2', 'Quiz on:', ''),
(50, 'CREATIVE ARTS', 5, '1/Feb/2019', 'P6B', 'term1', 'Quiz on:', ''),
(51, 'CREATIVE ARTS', 5, '1/Apr/2019', 'P6B', 'term2', 'Quiz on:', ''),
(52, 'Reading', 5, '1/Feb/2019', 'P6B', 'term1', 'Quiz on:', ''),
(53, 'Reading', 5, '1/Apr/2019', 'P6B', 'term2', 'Quiz on:', ''),
(54, 'Writing', 20, '1/Feb/2019', 'P6B', 'term1', 'Quiz on:', ''),
(55, 'Writing', 20, '1/Apr/2019', 'P6B', 'term2', 'Quiz on:', ''),
(56, 'GUSOMA', 5, '1/Feb/2019', 'P6B', 'term1', 'Quiz on:', ''),
(57, 'GUSOMA', 5, '1/Apr/2019', 'P6B', 'term2', 'Quiz on:', ''),
(58, 'KWANDIKA', 20, '1/Feb/2019', 'P6B', 'term1', 'Quiz on:', ''),
(59, 'KWANDIKA', 20, '1/Apr/2019', 'P6B', 'term2', 'Quiz on:', ''),
(60, 'SET', 20, '1/Feb/2019', 'P6B', 'term1', 'Quiz on:', ''),
(61, 'SET', 20, '1/Apr/2019', 'P6B', 'term2', 'Quiz on:', ''),
(62, 'Expression Ecrite', 10, '1/Feb/2019', 'P6B', 'term1', 'Quiz on:', ''),
(63, 'Expression Ecrite', 10, '1/Apr/2019', 'P6B', 'term2', 'Quiz on:', ''),
(64, 'Expression Orale', 5, '1/Feb/2019', 'P6B', 'term1', 'Quiz on:', ''),
(65, 'Expression Orale', 5, '1/Mar/2019', 'P6B', 'term2', 'Quiz on:', ''),
(140, 'KWANDIKA', 20, '1/Feb/2019', 'P6A', 'term1', 'Quiz on:', ''),
(150, 'GUSOMA', 5, '1/Feb/2019', 'P6A', 'term1', 'Quiz on:', ''),
(160, 'Reading', 5, '1/Feb/2019', 'P6A', 'term1', 'Quiz on:', ''),
(170, 'Writing', 20, '1/Feb/2019', 'P6A', 'term1', 'Quiz on:', ''),
(180, 'Expression Orale', 5, '1/Feb/2019', 'P6A', 'term1', 'Quiz on:', ''),
(190, 'Expression Ecrite', 10, '1/Feb/2019', 'P6A', 'term1', 'Quiz on:', ''),
(200, 'Metric system&Geometry', 15, '1/Feb/2019', 'P6A', 'term1', 'Quiz on:', ''),
(210, 'Arthemetic,Algebra&Statistics', 15, '1/Feb/2019', 'P6A', 'term1', 'Quiz on:', ''),
(220, 'SET', 20, '1/Feb/2019', 'P6A', 'term1', 'Quiz on:', ''),
(230, 'SOCIAL &RELIGIOUS STUDIES', 20, '1/Feb/2019', 'P6A', 'term1', 'Quiz on:', ''),
(240, 'COMPUTER STDIES', 5, '1/Feb/2019', 'P6A', 'term1', 'Quiz on:', ''),
(250, 'SPORT', 5, '1/Feb/2019', 'P6A', 'term1', 'Quiz on:', ''),
(260, 'CREATIVE ARTS', 5, '1/Feb/2019', 'P6A', 'term1', 'Quiz on:', ''),
(270, 'GUSOMA', 5, '15/Apr/2019', 'P6A', 'term2', 'Quiz on:', ''),
(280, 'KWANDIKA', 20, '15/Apr/2019', 'P6A', 'term2', 'Quiz on:', ''),
(290, 'Reading', 5, '15/Apr/2019', 'P6A', 'term2', 'Quiz on:', ''),
(300, 'Writing', 20, '15/Apr/2019', 'P6A', 'term2', 'Quiz on:', ''),
(310, 'Expression Orale', 5, '15/Apr/2019', 'P6A', 'term2', 'Quiz on:', ''),
(320, 'Expression Ecrite', 10, '15/Apr/2019', 'P6A', 'term2', 'Quiz on:', ''),
(330, 'Metric system&Geometry', 15, '15/Apr/2019', 'P6A', 'term2', 'Quiz on:', ''),
(340, 'Arthemetic,Algebra&Statistics', 15, '15/Apr/2019', 'P6A', 'term2', 'Quiz on:', ''),
(350, 'SET', 20, '15/Apr/2019', 'P6A', 'term2', 'Quiz on:', ''),
(360, 'SOCIAL &RELIGIOUS STUDIES', 20, '15/Apr/2019', 'P6A', 'term2', 'Quiz on:', ''),
(370, 'COMPUTER STDIES', 5, '15/Apr/2019', 'P6A', 'term2', 'Quiz on:', ''),
(380, 'SPORT', 5, '15/Apr/2019', 'P6A', 'term2', 'Quiz on:', ''),
(390, 'CREATIVE ARTS', 5, '15/Apr/2019', 'P6A', 'term2', 'Quiz on:', ''),
(391, 'SOCIAL &RELIGIOUS STUDIES', 20, '10/Oct/2019', 'P6A', 'term3', 'Quiz on:', ''),
(392, 'CREATIVE ARTS', 5, '10/Oct/2019', 'P6A', 'term3', 'Quiz on:', ''),
(393, 'COMPUTER STDIES', 5, '10/Oct/2019', 'P6A', 'term3', 'Quiz on:', ''),
(394, 'SPORT', 5, '10/Oct/2019', 'P6A', 'term3', 'Quiz on:', ''),
(395, 'Reading', 5, '10/Oct/2019', 'P6A', 'term3', 'Quiz on:', ''),
(396, 'Reading', 5, '10/Oct/2019', 'P6A', 'term3', 'Quiz on:', ''),
(397, 'Writing', 20, '10/Oct/2019', 'P6A', 'term3', 'Quiz on:', ''),
(398, 'Expression Orale', 5, '10/Oct/2019', 'P6A', 'term3', 'Quiz on:', ''),
(399, 'Expression Ecrite', 10, '10/Oct/2019', 'P6A', 'term3', 'Quiz on:', ''),
(400, 'GUSOMA', 5, '10/Oct/2019', 'P6A', 'term3', 'Quiz on:', ''),
(401, 'KWANDIKA', 20, '10/Oct/2019', 'P6A', 'term3', 'Quiz on:', ''),
(402, 'Metric system&Geometry', 15, '10/Oct/2019', 'P6A', 'term3', 'Quiz on:', ''),
(403, 'Arthemetic,Algebra&Statistics', 15, '10/Oct/2019', 'P6A', 'term3', 'Quiz on:', ''),
(404, 'SET', 20, '10/Oct/2019', 'P6A', 'term3', 'Quiz on:', ''),
(405, 'GUSOMA', 20, '8/Mar/2020', 'P5B', 'term1', 'Quiz on:', '');

-- --------------------------------------------------------

--
-- Table structure for table `2019_quiz_marks`
--

CREATE TABLE `2019_quiz_marks` (
  `qid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `quiz_id` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL,
  `term` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2019_quiz_marks`
--

INSERT INTO `2019_quiz_marks` (`qid`, `cname`, `regno`, `quiz_id`, `marks`, `term`) VALUES
(89, 'Metric system&Geometry', '319599833131', '40', 8, 'term1'),
(90, 'Metric system&Geometry', '3193109613', '40', 13, 'term1'),
(91, 'Metric system&Geometry', '319250673119', '40', 7, 'term1'),
(92, 'Metric system&Geometry', '31919795314', '40', 8, 'term1'),
(93, 'Metric system&Geometry', '31977199318', '40', 7, 'term1'),
(94, 'Metric system&Geometry', '319329913111', '40', 12, 'term1'),
(95, 'Metric system&Geometry', '319136433111', '40', 10, 'term1'),
(96, 'Metric system&Geometry', '319541523132', '40', 4, 'term1'),
(97, 'Metric system&Geometry', '319242503126', '40', 11, 'term1'),
(98, 'Metric system&Geometry', '319227303117', '40', 6, 'term1'),
(99, 'Metric system&Geometry', '31965268319', '40', 4, 'term1'),
(100, 'Metric system&Geometry', '31975534312', '40', 10, 'term1'),
(101, 'Metric system&Geometry', '319562513128', '40', 3, 'term1'),
(102, 'Metric system&Geometry', '319141623126', '40', 8, 'term1'),
(103, 'Metric system&Geometry', '319208483125', '40', 4, 'term1'),
(104, 'Metric system&Geometry', '319360743122', '40', 4, 'term1'),
(105, 'Metric system&Geometry', '319577783136', '40', 8, 'term1'),
(106, 'Metric system&Geometry', '319779373115', '40', 4, 'term1'),
(107, 'Metric system&Geometry', '319614533133', '40', 9, 'term1'),
(108, 'Metric system&Geometry', '31931467312', '40', 5, 'term1'),
(109, 'Metric system&Geometry', '319654403128', '40', 5, 'term1'),
(110, 'Metric system&Geometry', '319833233139', '40', 8, 'term1'),
(111, 'Metric system&Geometry', '319863753118', '40', 14, 'term1'),
(112, 'Metric system&Geometry', '319599833131', '41', 4, 'term2'),
(113, 'Metric system&Geometry', '3193109613', '41', 10, 'term2'),
(114, 'Metric system&Geometry', '319250673119', '41', 9, 'term2'),
(115, 'Metric system&Geometry', '31919795314', '41', 11, 'term2'),
(116, 'Metric system&Geometry', '31977199318', '41', 11, 'term2'),
(117, 'Metric system&Geometry', '319329913111', '41', 10, 'term2'),
(118, 'Metric system&Geometry', '319136433111', '41', 13, 'term2'),
(119, 'Metric system&Geometry', '319541523132', '41', 8, 'term2'),
(120, 'Metric system&Geometry', '319242503126', '41', 12, 'term2'),
(121, 'Metric system&Geometry', '319227303117', '41', 4, 'term2'),
(122, 'Metric system&Geometry', '31965268319', '41', 7, 'term2'),
(123, 'Metric system&Geometry', '31975534312', '41', 11, 'term2'),
(124, 'Metric system&Geometry', '319562513128', '41', 3, 'term2'),
(125, 'Metric system&Geometry', '319141623126', '41', 10, 'term2'),
(126, 'Metric system&Geometry', '319208483125', '41', 4, 'term2'),
(127, 'Metric system&Geometry', '319360743122', '41', 8, 'term2'),
(128, 'Metric system&Geometry', '319577783136', '41', 8, 'term2'),
(129, 'Metric system&Geometry', '319779373115', '41', 4, 'term2'),
(130, 'Metric system&Geometry', '319614533133', '41', 13, 'term2'),
(131, 'Metric system&Geometry', '31931467312', '41', 6, 'term2'),
(132, 'Metric system&Geometry', '319654403128', '41', 10, 'term2'),
(133, 'Metric system&Geometry', '319833233139', '41', 10, 'term2'),
(134, 'Metric system&Geometry', '319863753118', '41', 13, 'term2'),
(135, 'Arthemetic,Algebra&Statistics', '319599833131', '42', 9, 'term1'),
(136, 'Arthemetic,Algebra&Statistics', '3193109613', '42', 11, 'term1'),
(137, 'Arthemetic,Algebra&Statistics', '319250673119', '42', 7, 'term1'),
(138, 'Arthemetic,Algebra&Statistics', '31919795314', '42', 10, 'term1'),
(139, 'Arthemetic,Algebra&Statistics', '31977199318', '42', 5, 'term1'),
(140, 'Arthemetic,Algebra&Statistics', '319329913111', '42', 11, 'term1'),
(141, 'Arthemetic,Algebra&Statistics', '319136433111', '42', 13, 'term1'),
(142, 'Arthemetic,Algebra&Statistics', '319541523132', '42', 6, 'term1'),
(143, 'Arthemetic,Algebra&Statistics', '319242503126', '42', 12, 'term1'),
(144, 'Arthemetic,Algebra&Statistics', '319227303117', '42', 3, 'term1'),
(145, 'Arthemetic,Algebra&Statistics', '31965268319', '42', 7, 'term1'),
(146, 'Arthemetic,Algebra&Statistics', '31975534312', '42', 11, 'term1'),
(147, 'Arthemetic,Algebra&Statistics', '319562513128', '42', 4, 'term1'),
(148, 'Arthemetic,Algebra&Statistics', '319141623126', '42', 8, 'term1'),
(149, 'Arthemetic,Algebra&Statistics', '319208483125', '42', 3, 'term1'),
(150, 'Arthemetic,Algebra&Statistics', '319360743122', '42', 6, 'term1'),
(151, 'Arthemetic,Algebra&Statistics', '319577783136', '42', 8, 'term1'),
(152, 'Arthemetic,Algebra&Statistics', '319779373115', '42', 5, 'term1'),
(153, 'Arthemetic,Algebra&Statistics', '319614533133', '42', 10, 'term1'),
(154, 'Arthemetic,Algebra&Statistics', '31931467312', '42', 8, 'term1'),
(155, 'Arthemetic,Algebra&Statistics', '319654403128', '42', 6, 'term1'),
(156, 'Arthemetic,Algebra&Statistics', '319833233139', '42', 9, 'term1'),
(157, 'Arthemetic,Algebra&Statistics', '319863753118', '42', 14, 'term1'),
(158, 'Arthemetic,Algebra&Statistics', '319599833131', '43', 7, 'term2'),
(159, 'Arthemetic,Algebra&Statistics', '3193109613', '43', 11, 'term2'),
(160, 'Arthemetic,Algebra&Statistics', '319250673119', '43', 8, 'term2'),
(161, 'Arthemetic,Algebra&Statistics', '31919795314', '43', 10, 'term2'),
(162, 'Arthemetic,Algebra&Statistics', '31977199318', '43', 10, 'term2'),
(163, 'Arthemetic,Algebra&Statistics', '319329913111', '43', 10, 'term2'),
(164, 'Arthemetic,Algebra&Statistics', '319136433111', '43', 11, 'term2'),
(165, 'Arthemetic,Algebra&Statistics', '319541523132', '43', 7, 'term2'),
(166, 'Arthemetic,Algebra&Statistics', '319242503126', '43', 12, 'term2'),
(167, 'Arthemetic,Algebra&Statistics', '319227303117', '43', 5, 'term2'),
(168, 'Arthemetic,Algebra&Statistics', '31965268319', '43', 8, 'term2'),
(169, 'Arthemetic,Algebra&Statistics', '31975534312', '43', 9, 'term2'),
(170, 'Arthemetic,Algebra&Statistics', '319562513128', '43', 4, 'term2'),
(171, 'Arthemetic,Algebra&Statistics', '319141623126', '43', 10, 'term2'),
(172, 'Arthemetic,Algebra&Statistics', '319208483125', '43', 5, 'term2'),
(173, 'Arthemetic,Algebra&Statistics', '319360743122', '43', 7, 'term2'),
(174, 'Arthemetic,Algebra&Statistics', '319577783136', '43', 8, 'term2'),
(175, 'Arthemetic,Algebra&Statistics', '319779373115', '43', 6, 'term2'),
(176, 'Arthemetic,Algebra&Statistics', '319614533133', '43', 12, 'term2'),
(177, 'Arthemetic,Algebra&Statistics', '31931467312', '43', 7, 'term2'),
(178, 'Arthemetic,Algebra&Statistics', '319654403128', '43', 8, 'term2'),
(179, 'Arthemetic,Algebra&Statistics', '319833233139', '43', 9, 'term2'),
(180, 'Arthemetic,Algebra&Statistics', '319863753118', '43', 14, 'term2'),
(181, 'SPORT', '319599833131', '44', 4, 'term1'),
(182, 'SPORT', '3193109613', '44', 4, 'term1'),
(183, 'SPORT', '319250673119', '44', 4, 'term1'),
(184, 'SPORT', '31919795314', '44', 3, 'term1'),
(185, 'SPORT', '31977199318', '44', 4, 'term1'),
(186, 'SPORT', '319329913111', '44', 3, 'term1'),
(187, 'SPORT', '319136433111', '44', 4, 'term1'),
(188, 'SPORT', '319541523132', '44', 4, 'term1'),
(189, 'SPORT', '319242503126', '44', 4, 'term1'),
(190, 'SPORT', '319227303117', '44', 4, 'term1'),
(191, 'SPORT', '31965268319', '44', 4, 'term1'),
(192, 'SPORT', '31975534312', '44', 3, 'term1'),
(193, 'SPORT', '319562513128', '44', 4, 'term1'),
(194, 'SPORT', '319141623126', '44', 4, 'term1'),
(195, 'SPORT', '319208483125', '44', 3, 'term1'),
(196, 'SPORT', '319360743122', '44', 4, 'term1'),
(197, 'SPORT', '319577783136', '44', 4, 'term1'),
(198, 'SPORT', '319779373115', '44', 3, 'term1'),
(199, 'SPORT', '319614533133', '44', 4, 'term1'),
(200, 'SPORT', '31931467312', '44', 4, 'term1'),
(201, 'SPORT', '319654403128', '44', 4, 'term1'),
(202, 'SPORT', '319833233139', '44', 3, 'term1'),
(203, 'SPORT', '319863753118', '44', 4, 'term1'),
(204, 'SPORT', '319599833131', '45', 4, 'term2'),
(205, 'SPORT', '3193109613', '45', 4, 'term2'),
(206, 'SPORT', '319250673119', '45', 4, 'term2'),
(207, 'SPORT', '31919795314', '45', 3, 'term2'),
(208, 'SPORT', '31977199318', '45', 4, 'term2'),
(209, 'SPORT', '319329913111', '45', 3, 'term2'),
(210, 'SPORT', '319136433111', '45', 3, 'term2'),
(211, 'SPORT', '319541523132', '45', 4, 'term2'),
(212, 'SPORT', '319242503126', '45', 4, 'term2'),
(213, 'SPORT', '319227303117', '45', 4, 'term2'),
(214, 'SPORT', '31965268319', '45', 4, 'term2'),
(215, 'SPORT', '31975534312', '45', 4, 'term2'),
(216, 'SPORT', '319562513128', '45', 4, 'term2'),
(217, 'SPORT', '319141623126', '45', 4, 'term2'),
(218, 'SPORT', '319208483125', '45', 3, 'term2'),
(219, 'SPORT', '319360743122', '45', 3, 'term2'),
(220, 'SPORT', '319577783136', '45', 4, 'term2'),
(221, 'SPORT', '319779373115', '45', 4, 'term2'),
(222, 'SPORT', '319614533133', '45', 4, 'term2'),
(223, 'SPORT', '31931467312', '45', 3, 'term2'),
(224, 'SPORT', '319654403128', '45', 3, 'term2'),
(225, 'SPORT', '319833233139', '45', 3, 'term2'),
(226, 'SPORT', '319863753118', '45', 3, 'term2'),
(227, 'SOCIAL &RELIGIOUS STUDIES', '319599833131', '46', 15, 'term1'),
(228, 'SOCIAL &RELIGIOUS STUDIES', '3193109613', '46', 6, 'term1'),
(229, 'SOCIAL &RELIGIOUS STUDIES', '319250673119', '46', 5, 'term1'),
(230, 'SOCIAL &RELIGIOUS STUDIES', '31919795314', '46', 13, 'term1'),
(231, 'SOCIAL &RELIGIOUS STUDIES', '31977199318', '46', 10, 'term1'),
(232, 'SOCIAL &RELIGIOUS STUDIES', '319329913111', '46', 14, 'term1'),
(233, 'SOCIAL &RELIGIOUS STUDIES', '319136433111', '46', 8, 'term1'),
(234, 'SOCIAL &RELIGIOUS STUDIES', '319541523132', '46', 12, 'term1'),
(235, 'SOCIAL &RELIGIOUS STUDIES', '319242503126', '46', 14, 'term1'),
(236, 'SOCIAL &RELIGIOUS STUDIES', '319227303117', '46', 6, 'term1'),
(237, 'SOCIAL &RELIGIOUS STUDIES', '31965268319', '46', 9, 'term1'),
(238, 'SOCIAL &RELIGIOUS STUDIES', '31975534312', '46', 14, 'term1'),
(239, 'SOCIAL &RELIGIOUS STUDIES', '319562513128', '46', 8, 'term1'),
(240, 'SOCIAL &RELIGIOUS STUDIES', '319141623126', '46', 14, 'term1'),
(241, 'SOCIAL &RELIGIOUS STUDIES', '319208483125', '46', 7, 'term1'),
(242, 'SOCIAL &RELIGIOUS STUDIES', '319360743122', '46', 7, 'term1'),
(243, 'SOCIAL &RELIGIOUS STUDIES', '319577783136', '46', 7, 'term1'),
(244, 'SOCIAL &RELIGIOUS STUDIES', '319779373115', '46', 13, 'term1'),
(245, 'SOCIAL &RELIGIOUS STUDIES', '319614533133', '46', 11, 'term1'),
(246, 'SOCIAL &RELIGIOUS STUDIES', '31931467312', '46', 15, 'term1'),
(247, 'SOCIAL &RELIGIOUS STUDIES', '319654403128', '46', 10, 'term1'),
(248, 'SOCIAL &RELIGIOUS STUDIES', '319833233139', '46', 14, 'term1'),
(249, 'SOCIAL &RELIGIOUS STUDIES', '319863753118', '46', 16, 'term1'),
(250, 'SOCIAL &RELIGIOUS STUDIES', '319599833131', '47', 15, 'term2'),
(251, 'SOCIAL &RELIGIOUS STUDIES', '3193109613', '47', 10, 'term2'),
(252, 'SOCIAL &RELIGIOUS STUDIES', '319250673119', '47', 7, 'term2'),
(253, 'SOCIAL &RELIGIOUS STUDIES', '31919795314', '47', 11, 'term2'),
(254, 'SOCIAL &RELIGIOUS STUDIES', '31977199318', '47', 14, 'term2'),
(255, 'SOCIAL &RELIGIOUS STUDIES', '319329913111', '47', 13, 'term2'),
(256, 'SOCIAL &RELIGIOUS STUDIES', '319136433111', '47', 9, 'term2'),
(257, 'SOCIAL &RELIGIOUS STUDIES', '319541523132', '47', 12, 'term2'),
(258, 'SOCIAL &RELIGIOUS STUDIES', '319242503126', '47', 14, 'term2'),
(259, 'SOCIAL &RELIGIOUS STUDIES', '319227303117', '47', 10, 'term2'),
(260, 'SOCIAL &RELIGIOUS STUDIES', '31965268319', '47', 10, 'term2'),
(261, 'SOCIAL &RELIGIOUS STUDIES', '31975534312', '47', 15, 'term2'),
(262, 'SOCIAL &RELIGIOUS STUDIES', '319562513128', '47', 10, 'term2'),
(263, 'SOCIAL &RELIGIOUS STUDIES', '319141623126', '47', 16, 'term2'),
(264, 'SOCIAL &RELIGIOUS STUDIES', '319208483125', '47', 11, 'term2'),
(265, 'SOCIAL &RELIGIOUS STUDIES', '319360743122', '47', 11, 'term2'),
(266, 'SOCIAL &RELIGIOUS STUDIES', '319577783136', '47', 10, 'term2'),
(267, 'SOCIAL &RELIGIOUS STUDIES', '319779373115', '47', 14, 'term2'),
(268, 'SOCIAL &RELIGIOUS STUDIES', '319614533133', '47', 14, 'term2'),
(269, 'SOCIAL &RELIGIOUS STUDIES', '31931467312', '47', 15, 'term2'),
(270, 'SOCIAL &RELIGIOUS STUDIES', '319654403128', '47', 12, 'term2'),
(271, 'SOCIAL &RELIGIOUS STUDIES', '319833233139', '47', 14, 'term2'),
(272, 'SOCIAL &RELIGIOUS STUDIES', '319863753118', '47', 16, 'term2'),
(273, 'COMPUTER STDIES', '319599833131', '48', 3, 'term1'),
(274, 'COMPUTER STDIES', '3193109613', '48', 3, 'term1'),
(275, 'COMPUTER STDIES', '319250673119', '48', 3, 'term1'),
(276, 'COMPUTER STDIES', '31919795314', '48', 3, 'term1'),
(277, 'COMPUTER STDIES', '31977199318', '48', 2, 'term1'),
(278, 'COMPUTER STDIES', '319329913111', '48', 3, 'term1'),
(279, 'COMPUTER STDIES', '319136433111', '48', 2, 'term1'),
(280, 'COMPUTER STDIES', '319541523132', '48', 3, 'term1'),
(281, 'COMPUTER STDIES', '319242503126', '48', 3, 'term1'),
(282, 'COMPUTER STDIES', '319227303117', '48', 2, 'term1'),
(283, 'COMPUTER STDIES', '31965268319', '48', 3, 'term1'),
(284, 'COMPUTER STDIES', '31975534312', '48', 2, 'term1'),
(285, 'COMPUTER STDIES', '319562513128', '48', 1, 'term1'),
(286, 'COMPUTER STDIES', '319141623126', '48', 3, 'term1'),
(287, 'COMPUTER STDIES', '319208483125', '48', 2, 'term1'),
(288, 'COMPUTER STDIES', '319360743122', '48', 3, 'term1'),
(289, 'COMPUTER STDIES', '319577783136', '48', 3, 'term1'),
(290, 'COMPUTER STDIES', '319779373115', '48', 2, 'term1'),
(291, 'COMPUTER STDIES', '319614533133', '48', 3, 'term1'),
(292, 'COMPUTER STDIES', '31931467312', '48', 2, 'term1'),
(293, 'COMPUTER STDIES', '319654403128', '48', 3, 'term1'),
(294, 'COMPUTER STDIES', '319833233139', '48', 3, 'term1'),
(295, 'COMPUTER STDIES', '319863753118', '48', 4, 'term1'),
(296, 'COMPUTER STDIES', '319599833131', '49', 3, 'term2'),
(297, 'COMPUTER STDIES', '3193109613', '49', 3, 'term2'),
(298, 'COMPUTER STDIES', '319250673119', '49', 3, 'term2'),
(299, 'COMPUTER STDIES', '31919795314', '49', 2, 'term2'),
(300, 'COMPUTER STDIES', '31977199318', '49', 2, 'term2'),
(301, 'COMPUTER STDIES', '319329913111', '49', 3, 'term2'),
(302, 'COMPUTER STDIES', '319136433111', '49', 2, 'term2'),
(303, 'COMPUTER STDIES', '319541523132', '49', 3, 'term2'),
(304, 'COMPUTER STDIES', '319242503126', '49', 3, 'term2'),
(305, 'COMPUTER STDIES', '319227303117', '49', 2, 'term2'),
(306, 'COMPUTER STDIES', '31965268319', '49', 3, 'term2'),
(307, 'COMPUTER STDIES', '31975534312', '49', 3, 'term2'),
(308, 'COMPUTER STDIES', '319562513128', '49', 2, 'term2'),
(309, 'COMPUTER STDIES', '319141623126', '49', 2, 'term2'),
(310, 'COMPUTER STDIES', '319208483125', '49', 2, 'term2'),
(311, 'COMPUTER STDIES', '319360743122', '49', 2, 'term2'),
(312, 'COMPUTER STDIES', '319577783136', '49', 3, 'term2'),
(313, 'COMPUTER STDIES', '319779373115', '49', 4, 'term2'),
(314, 'COMPUTER STDIES', '319614533133', '49', 2, 'term2'),
(315, 'COMPUTER STDIES', '31931467312', '49', 3, 'term2'),
(316, 'COMPUTER STDIES', '319654403128', '49', 3, 'term2'),
(317, 'COMPUTER STDIES', '319833233139', '49', 5, 'term2'),
(318, 'COMPUTER STDIES', '319863753118', '49', 5, 'term2'),
(319, 'CREATIVE ARTS', '319599833131', '50', 3, 'term1'),
(320, 'CREATIVE ARTS', '3193109613', '50', 3, 'term1'),
(321, 'CREATIVE ARTS', '319250673119', '50', 3, 'term1'),
(322, 'CREATIVE ARTS', '31919795314', '50', 3, 'term1'),
(323, 'CREATIVE ARTS', '31977199318', '50', 3, 'term1'),
(324, 'CREATIVE ARTS', '319329913111', '50', 3, 'term1'),
(325, 'CREATIVE ARTS', '319136433111', '50', 3, 'term1'),
(326, 'CREATIVE ARTS', '319541523132', '50', 4, 'term1'),
(327, 'CREATIVE ARTS', '319242503126', '50', 3, 'term1'),
(328, 'CREATIVE ARTS', '319227303117', '50', 3, 'term1'),
(329, 'CREATIVE ARTS', '31965268319', '50', 3, 'term1'),
(330, 'CREATIVE ARTS', '31975534312', '50', 3, 'term1'),
(331, 'CREATIVE ARTS', '319562513128', '50', 3, 'term1'),
(332, 'CREATIVE ARTS', '319141623126', '50', 3, 'term1'),
(333, 'CREATIVE ARTS', '319208483125', '50', 3, 'term1'),
(334, 'CREATIVE ARTS', '319360743122', '50', 3, 'term1'),
(335, 'CREATIVE ARTS', '319577783136', '50', 3, 'term1'),
(336, 'CREATIVE ARTS', '319779373115', '50', 3, 'term1'),
(337, 'CREATIVE ARTS', '319614533133', '50', 3, 'term1'),
(338, 'CREATIVE ARTS', '31931467312', '50', 3, 'term1'),
(339, 'CREATIVE ARTS', '319654403128', '50', 3, 'term1'),
(340, 'CREATIVE ARTS', '319833233139', '50', 3, 'term1'),
(341, 'CREATIVE ARTS', '319863753118', '50', 3, 'term1'),
(342, 'CREATIVE ARTS', '319599833131', '51', 3, 'term2'),
(343, 'CREATIVE ARTS', '3193109613', '51', 3, 'term2'),
(344, 'CREATIVE ARTS', '319250673119', '51', 3, 'term2'),
(345, 'CREATIVE ARTS', '31919795314', '51', 3, 'term2'),
(346, 'CREATIVE ARTS', '31977199318', '51', 3, 'term2'),
(347, 'CREATIVE ARTS', '319329913111', '51', 3, 'term2'),
(348, 'CREATIVE ARTS', '319136433111', '51', 3, 'term2'),
(349, 'CREATIVE ARTS', '319541523132', '51', 3, 'term2'),
(350, 'CREATIVE ARTS', '319242503126', '51', 3, 'term2'),
(351, 'CREATIVE ARTS', '319227303117', '51', 3, 'term2'),
(352, 'CREATIVE ARTS', '31965268319', '51', 3, 'term2'),
(353, 'CREATIVE ARTS', '31975534312', '51', 3, 'term2'),
(354, 'CREATIVE ARTS', '319562513128', '51', 3, 'term2'),
(355, 'CREATIVE ARTS', '319141623126', '51', 4, 'term2'),
(356, 'CREATIVE ARTS', '319208483125', '51', 4, 'term2'),
(357, 'CREATIVE ARTS', '319360743122', '51', 3, 'term2'),
(358, 'CREATIVE ARTS', '319577783136', '51', 3, 'term2'),
(359, 'CREATIVE ARTS', '319779373115', '51', 4, 'term2'),
(360, 'CREATIVE ARTS', '319614533133', '51', 3, 'term2'),
(361, 'CREATIVE ARTS', '31931467312', '51', 3, 'term2'),
(362, 'CREATIVE ARTS', '319654403128', '51', 4, 'term2'),
(363, 'CREATIVE ARTS', '319833233139', '51', 3, 'term2'),
(364, 'CREATIVE ARTS', '319863753118', '51', 3, 'term2'),
(365, 'Reading', '319599833131', '52', 4, 'term1'),
(366, 'Reading', '3193109613', '52', 3, 'term1'),
(367, 'Reading', '319250673119', '52', 3, 'term1'),
(368, 'Reading', '31919795314', '52', 4, 'term1'),
(369, 'Reading', '31977199318', '52', 3, 'term1'),
(370, 'Reading', '319329913111', '52', 4, 'term1'),
(371, 'Reading', '319136433111', '52', 3, 'term1'),
(372, 'Reading', '319541523132', '52', 3, 'term1'),
(373, 'Reading', '319242503126', '52', 4, 'term1'),
(374, 'Reading', '319227303117', '52', 3, 'term1'),
(375, 'Reading', '31965268319', '52', 3, 'term1'),
(376, 'Reading', '31975534312', '52', 4, 'term1'),
(377, 'Reading', '319562513128', '52', 3, 'term1'),
(378, 'Reading', '319141623126', '52', 4, 'term1'),
(379, 'Reading', '319208483125', '52', 3, 'term1'),
(380, 'Reading', '319360743122', '52', 3, 'term1'),
(381, 'Reading', '319577783136', '52', 3, 'term1'),
(382, 'Reading', '319779373115', '52', 4, 'term1'),
(383, 'Reading', '319614533133', '52', 3, 'term1'),
(384, 'Reading', '31931467312', '52', 4, 'term1'),
(385, 'Reading', '319654403128', '52', 4, 'term1'),
(386, 'Reading', '319833233139', '52', 4, 'term1'),
(387, 'Reading', '319863753118', '52', 4, 'term1'),
(388, 'Reading', '319599833131', '53', 4, 'term2'),
(389, 'Reading', '3193109613', '53', 3, 'term2'),
(390, 'Reading', '319250673119', '53', 4, 'term2'),
(391, 'Reading', '31919795314', '53', 4, 'term2'),
(392, 'Reading', '31977199318', '53', 3, 'term2'),
(393, 'Reading', '319329913111', '53', 4, 'term2'),
(394, 'Reading', '319136433111', '53', 3, 'term2'),
(395, 'Reading', '319541523132', '53', 4, 'term2'),
(396, 'Reading', '319242503126', '53', 5, 'term2'),
(397, 'Reading', '319227303117', '53', 3, 'term2'),
(398, 'Reading', '31965268319', '53', 5, 'term2'),
(399, 'Reading', '31975534312', '53', 4, 'term2'),
(400, 'Reading', '319562513128', '53', 4, 'term2'),
(401, 'Reading', '319141623126', '53', 4, 'term2'),
(402, 'Reading', '319208483125', '53', 4, 'term2'),
(403, 'Reading', '319360743122', '53', 4, 'term2'),
(404, 'Reading', '319577783136', '53', 4, 'term2'),
(405, 'Reading', '319779373115', '53', 5, 'term2'),
(406, 'Reading', '319614533133', '53', 4, 'term2'),
(407, 'Reading', '31931467312', '53', 4, 'term2'),
(408, 'Reading', '319654403128', '53', 4, 'term2'),
(409, 'Reading', '319833233139', '53', 4, 'term2'),
(410, 'Reading', '319863753118', '53', 4, 'term2'),
(411, 'Writing', '319599833131', '54', 10, 'term1'),
(412, 'Writing', '3193109613', '54', 8, 'term1'),
(413, 'Writing', '319250673119', '54', 9, 'term1'),
(414, 'Writing', '31919795314', '54', 11, 'term1'),
(415, 'Writing', '31977199318', '54', 8, 'term1'),
(416, 'Writing', '319329913111', '54', 12, 'term1'),
(417, 'Writing', '319136433111', '54', 9, 'term1'),
(418, 'Writing', '319541523132', '54', 10, 'term1'),
(419, 'Writing', '319242503126', '54', 13, 'term1'),
(420, 'Writing', '319227303117', '54', 8, 'term1'),
(421, 'Writing', '31965268319', '54', 11, 'term1'),
(422, 'Writing', '31975534312', '54', 11, 'term1'),
(423, 'Writing', '319562513128', '54', 8, 'term1'),
(424, 'Writing', '319141623126', '54', 12, 'term1'),
(425, 'Writing', '319208483125', '54', 9, 'term1'),
(426, 'Writing', '319360743122', '54', 9, 'term1'),
(427, 'Writing', '319577783136', '54', 10, 'term1'),
(428, 'Writing', '319779373115', '54', 12, 'term1'),
(429, 'Writing', '319614533133', '54', 11, 'term1'),
(430, 'Writing', '31931467312', '54', 11, 'term1'),
(431, 'Writing', '319654403128', '54', 10, 'term1'),
(432, 'Writing', '319833233139', '54', 13, 'term1'),
(433, 'Writing', '319863753118', '54', 13, 'term1'),
(434, 'Writing', '319599833131', '55', 14, 'term2'),
(435, 'Writing', '3193109613', '55', 10, 'term2'),
(436, 'Writing', '319250673119', '55', 9, 'term2'),
(437, 'Writing', '31919795314', '55', 14, 'term2'),
(438, 'Writing', '31977199318', '55', 11, 'term2'),
(439, 'Writing', '319329913111', '55', 15, 'term2'),
(440, 'Writing', '319136433111', '55', 10, 'term2'),
(441, 'Writing', '319541523132', '55', 13, 'term2'),
(442, 'Writing', '319242503126', '55', 15, 'term2'),
(443, 'Writing', '319227303117', '55', 9, 'term2'),
(444, 'Writing', '31965268319', '55', 12, 'term2'),
(445, 'Writing', '31975534312', '55', 13, 'term2'),
(446, 'Writing', '319562513128', '55', 10, 'term2'),
(447, 'Writing', '319141623126', '55', 15, 'term2'),
(448, 'Writing', '319208483125', '55', 11, 'term2'),
(449, 'Writing', '319360743122', '55', 10, 'term2'),
(450, 'Writing', '319577783136', '55', 11, 'term2'),
(451, 'Writing', '319779373115', '55', 15, 'term2'),
(452, 'Writing', '319614533133', '55', 13, 'term2'),
(453, 'Writing', '31931467312', '55', 13, 'term2'),
(454, 'Writing', '319654403128', '55', 12, 'term2'),
(455, 'Writing', '319833233139', '55', 15, 'term2'),
(456, 'Writing', '319863753118', '55', 11, 'term2'),
(457, 'GUSOMA', '319599833131', '56', 3, 'term1'),
(458, 'GUSOMA', '3193109613', '56', 3, 'term1'),
(459, 'GUSOMA', '319250673119', '56', 3, 'term1'),
(460, 'GUSOMA', '31919795314', '56', 2, 'term1'),
(461, 'GUSOMA', '31977199318', '56', 3, 'term1'),
(462, 'GUSOMA', '319329913111', '56', 3, 'term1'),
(463, 'GUSOMA', '319136433111', '56', 3, 'term1'),
(464, 'GUSOMA', '319541523132', '56', 3, 'term1'),
(465, 'GUSOMA', '319242503126', '56', 4, 'term1'),
(466, 'GUSOMA', '319227303117', '56', 3, 'term1'),
(467, 'GUSOMA', '31965268319', '56', 3, 'term1'),
(468, 'GUSOMA', '31975534312', '56', 3, 'term1'),
(469, 'GUSOMA', '319562513128', '56', 3, 'term1'),
(470, 'GUSOMA', '319141623126', '56', 3, 'term1'),
(471, 'GUSOMA', '319208483125', '56', 3, 'term1'),
(472, 'GUSOMA', '319360743122', '56', 3, 'term1'),
(473, 'GUSOMA', '319577783136', '56', 3, 'term1'),
(474, 'GUSOMA', '319779373115', '56', 3, 'term1'),
(475, 'GUSOMA', '319614533133', '56', 3, 'term1'),
(476, 'GUSOMA', '31931467312', '56', 3, 'term1'),
(477, 'GUSOMA', '319654403128', '56', 3, 'term1'),
(478, 'GUSOMA', '319833233139', '56', 3, 'term1'),
(479, 'GUSOMA', '319863753118', '56', 3, 'term1'),
(480, 'GUSOMA', '319599833131', '57', 4, 'term2'),
(481, 'GUSOMA', '3193109613', '57', 4, 'term2'),
(482, 'GUSOMA', '319250673119', '57', 3, 'term2'),
(483, 'GUSOMA', '31919795314', '57', 3, 'term2'),
(484, 'GUSOMA', '31977199318', '57', 3, 'term2'),
(485, 'GUSOMA', '319329913111', '57', 4, 'term2'),
(486, 'GUSOMA', '319136433111', '57', 3, 'term2'),
(487, 'GUSOMA', '319541523132', '57', 3, 'term2'),
(488, 'GUSOMA', '319242503126', '57', 3, 'term2'),
(489, 'GUSOMA', '319227303117', '57', 2, 'term2'),
(490, 'GUSOMA', '31965268319', '57', 3, 'term2'),
(491, 'GUSOMA', '31975534312', '57', 3, 'term2'),
(492, 'GUSOMA', '319562513128', '57', 3, 'term2'),
(493, 'GUSOMA', '319141623126', '57', 4, 'term2'),
(494, 'GUSOMA', '319208483125', '57', 3, 'term2'),
(495, 'GUSOMA', '319360743122', '57', 3, 'term2'),
(496, 'GUSOMA', '319577783136', '57', 3, 'term2'),
(497, 'GUSOMA', '319779373115', '57', 3, 'term2'),
(498, 'GUSOMA', '319614533133', '57', 3, 'term2'),
(499, 'GUSOMA', '31931467312', '57', 4, 'term2'),
(500, 'GUSOMA', '319654403128', '57', 3, 'term2'),
(501, 'GUSOMA', '319833233139', '57', 4, 'term2'),
(502, 'GUSOMA', '319863753118', '57', 3, 'term2'),
(503, 'KWANDIKA', '319599833131', '58', 13, 'term1'),
(504, 'KWANDIKA', '3193109613', '58', 12, 'term1'),
(505, 'KWANDIKA', '319250673119', '58', 14, 'term1'),
(506, 'KWANDIKA', '31919795314', '58', 10, 'term1'),
(507, 'KWANDIKA', '31977199318', '58', 12, 'term1'),
(508, 'KWANDIKA', '319329913111', '58', 14, 'term1'),
(509, 'KWANDIKA', '319136433111', '58', 12, 'term1'),
(510, 'KWANDIKA', '319541523132', '58', 11, 'term1'),
(511, 'KWANDIKA', '319242503126', '58', 15, 'term1'),
(512, 'KWANDIKA', '319227303117', '58', 11, 'term1'),
(513, 'KWANDIKA', '31965268319', '58', 14, 'term1'),
(514, 'KWANDIKA', '31975534312', '58', 13, 'term1'),
(515, 'KWANDIKA', '319562513128', '58', 13, 'term1'),
(516, 'KWANDIKA', '319141623126', '58', 14, 'term1'),
(517, 'KWANDIKA', '319208483125', '58', 12, 'term1'),
(518, 'KWANDIKA', '319360743122', '58', 13, 'term1'),
(519, 'KWANDIKA', '319577783136', '58', 13, 'term1'),
(520, 'KWANDIKA', '319779373115', '58', 12, 'term1'),
(521, 'KWANDIKA', '319614533133', '58', 14, 'term1'),
(522, 'KWANDIKA', '31931467312', '58', 12, 'term1'),
(523, 'KWANDIKA', '319654403128', '58', 13, 'term1'),
(524, 'KWANDIKA', '319833233139', '58', 14, 'term1'),
(525, 'KWANDIKA', '319863753118', '58', 13, 'term1'),
(526, 'KWANDIKA', '319599833131', '59', 14, 'term2'),
(527, 'KWANDIKA', '3193109613', '59', 13, 'term2'),
(528, 'KWANDIKA', '319250673119', '59', 14, 'term2'),
(529, 'KWANDIKA', '31919795314', '59', 11, 'term2'),
(530, 'KWANDIKA', '31977199318', '59', 15, 'term2'),
(531, 'KWANDIKA', '319329913111', '59', 16, 'term2'),
(532, 'KWANDIKA', '319136433111', '59', 14, 'term2'),
(533, 'KWANDIKA', '319541523132', '59', 13, 'term2'),
(534, 'KWANDIKA', '319242503126', '59', 16, 'term2'),
(535, 'KWANDIKA', '319227303117', '59', 12, 'term2'),
(536, 'KWANDIKA', '31965268319', '59', 14, 'term2'),
(537, 'KWANDIKA', '31975534312', '59', 14, 'term2'),
(538, 'KWANDIKA', '319562513128', '59', 11, 'term2'),
(539, 'KWANDIKA', '319141623126', '59', 14, 'term2'),
(540, 'KWANDIKA', '319208483125', '59', 13, 'term2'),
(541, 'KWANDIKA', '319360743122', '59', 14, 'term2'),
(542, 'KWANDIKA', '319577783136', '59', 14, 'term2'),
(543, 'KWANDIKA', '319779373115', '59', 15, 'term2'),
(544, 'KWANDIKA', '319614533133', '59', 14, 'term2'),
(545, 'KWANDIKA', '31931467312', '59', 13, 'term2'),
(546, 'KWANDIKA', '319654403128', '59', 14, 'term2'),
(547, 'KWANDIKA', '319833233139', '59', 16, 'term2'),
(548, 'KWANDIKA', '319863753118', '59', 15, 'term2'),
(549, 'SET', '319599833131', '60', 11, 'term1'),
(550, 'SET', '3193109613', '60', 9, 'term1'),
(551, 'SET', '319250673119', '60', 7, 'term1'),
(552, 'SET', '31919795314', '60', 7, 'term1'),
(553, 'SET', '31977199318', '60', 8, 'term1'),
(554, 'SET', '319329913111', '60', 12, 'term1'),
(555, 'SET', '319136433111', '60', 7, 'term1'),
(556, 'SET', '319541523132', '60', 8, 'term1'),
(557, 'SET', '319242503126', '60', 12, 'term1'),
(558, 'SET', '319227303117', '60', 6, 'term1'),
(559, 'SET', '31965268319', '60', 7, 'term1'),
(560, 'SET', '31975534312', '60', 11, 'term1'),
(561, 'SET', '319562513128', '60', 7, 'term1'),
(562, 'SET', '319141623126', '60', 11, 'term1'),
(563, 'SET', '319208483125', '60', 7, 'term1'),
(564, 'SET', '319360743122', '60', 7, 'term1'),
(565, 'SET', '319577783136', '60', 9, 'term1'),
(566, 'SET', '319779373115', '60', 11, 'term1'),
(567, 'SET', '319614533133', '60', 8, 'term1'),
(568, 'SET', '31931467312', '60', 10, 'term1'),
(569, 'SET', '319654403128', '60', 9, 'term1'),
(570, 'SET', '319833233139', '60', 11, 'term1'),
(571, 'SET', '319863753118', '60', 13, 'term1'),
(572, 'SET', '319599833131', '61', 14, 'term2'),
(573, 'SET', '3193109613', '61', 12, 'term2'),
(574, 'SET', '319250673119', '61', 11, 'term2'),
(575, 'SET', '31919795314', '61', 13, 'term2'),
(576, 'SET', '31977199318', '61', 14, 'term2'),
(577, 'SET', '319329913111', '61', 13, 'term2'),
(578, 'SET', '319136433111', '61', 12, 'term2'),
(579, 'SET', '319541523132', '61', 14, 'term2'),
(580, 'SET', '319242503126', '61', 15, 'term2'),
(581, 'SET', '319227303117', '61', 12, 'term2'),
(582, 'SET', '31965268319', '61', 11, 'term2'),
(583, 'SET', '31975534312', '61', 15, 'term2'),
(584, 'SET', '319562513128', '61', 11, 'term2'),
(585, 'SET', '319141623126', '61', 15, 'term2'),
(586, 'SET', '319208483125', '61', 14, 'term2'),
(587, 'SET', '319360743122', '61', 12, 'term2'),
(588, 'SET', '319577783136', '61', 15, 'term2'),
(589, 'SET', '319779373115', '61', 13, 'term2'),
(590, 'SET', '319614533133', '61', 11, 'term2'),
(591, 'SET', '31931467312', '61', 14, 'term2'),
(592, 'SET', '319654403128', '61', 12, 'term2'),
(593, 'SET', '319833233139', '61', 13, 'term2'),
(594, 'SET', '319863753118', '61', 15, 'term2'),
(595, 'Expression Orale', '319599833131', '64', 4, 'term1'),
(596, 'Expression Orale', '3193109613', '64', 3, 'term1'),
(597, 'Expression Orale', '319250673119', '64', 3, 'term1'),
(598, 'Expression Orale', '31919795314', '64', 3, 'term1'),
(599, 'Expression Orale', '31977199318', '64', 4, 'term1'),
(600, 'Expression Orale', '319329913111', '64', 4, 'term1'),
(601, 'Expression Orale', '319136433111', '64', 3, 'term1'),
(602, 'Expression Orale', '319541523132', '64', 4, 'term1'),
(603, 'Expression Orale', '319242503126', '64', 3, 'term1'),
(604, 'Expression Orale', '319227303117', '64', 3, 'term1'),
(605, 'Expression Orale', '31965268319', '64', 3, 'term1'),
(606, 'Expression Orale', '31975534312', '64', 3, 'term1'),
(607, 'Expression Orale', '319562513128', '64', 3, 'term1'),
(608, 'Expression Orale', '319141623126', '64', 5, 'term1'),
(609, 'Expression Orale', '319208483125', '64', 3, 'term1'),
(610, 'Expression Orale', '319360743122', '64', 3, 'term1'),
(611, 'Expression Orale', '319577783136', '64', 3, 'term1'),
(612, 'Expression Orale', '319779373115', '64', 4, 'term1'),
(613, 'Expression Orale', '319614533133', '64', 4, 'term1'),
(614, 'Expression Orale', '31931467312', '64', 3, 'term1'),
(615, 'Expression Orale', '319654403128', '64', 3, 'term1'),
(616, 'Expression Orale', '319833233139', '64', 4, 'term1'),
(617, 'Expression Orale', '319863753118', '64', 4, 'term1'),
(618, 'Expression Orale', '319599833131', '65', 5, 'term2'),
(619, 'Expression Orale', '3193109613', '65', 4, 'term2'),
(620, 'Expression Orale', '319250673119', '65', 3, 'term2'),
(621, 'Expression Orale', '31919795314', '65', 3, 'term2'),
(622, 'Expression Orale', '31977199318', '65', 4, 'term2'),
(623, 'Expression Orale', '319329913111', '65', 5, 'term2'),
(624, 'Expression Orale', '319136433111', '65', 3, 'term2'),
(625, 'Expression Orale', '319541523132', '65', 5, 'term2'),
(626, 'Expression Orale', '319242503126', '65', 4, 'term2'),
(627, 'Expression Orale', '319227303117', '65', 3, 'term2'),
(628, 'Expression Orale', '31965268319', '65', 5, 'term2'),
(629, 'Expression Orale', '31975534312', '65', 4, 'term2'),
(630, 'Expression Orale', '319562513128', '65', 3, 'term2'),
(631, 'Expression Orale', '319141623126', '65', 5, 'term2'),
(632, 'Expression Orale', '319208483125', '65', 3, 'term2'),
(633, 'Expression Orale', '319360743122', '65', 4, 'term2'),
(634, 'Expression Orale', '319577783136', '65', 5, 'term2'),
(635, 'Expression Orale', '319779373115', '65', 5, 'term2'),
(636, 'Expression Orale', '319614533133', '65', 3, 'term2'),
(637, 'Expression Orale', '31931467312', '65', 4, 'term2'),
(638, 'Expression Orale', '319654403128', '65', 4, 'term2'),
(639, 'Expression Orale', '319833233139', '65', 4, 'term2'),
(640, 'Expression Orale', '319863753118', '65', 5, 'term2'),
(641, 'Expression Ecrite', '319599833131', '62', 5, 'term1'),
(642, 'Expression Ecrite', '3193109613', '62', 5, 'term1'),
(643, 'Expression Ecrite', '319250673119', '62', 6, 'term1'),
(644, 'Expression Ecrite', '31919795314', '62', 5, 'term1'),
(645, 'Expression Ecrite', '31977199318', '62', 6, 'term1'),
(646, 'Expression Ecrite', '319329913111', '62', 6, 'term1'),
(647, 'Expression Ecrite', '319136433111', '62', 3, 'term1'),
(648, 'Expression Ecrite', '319541523132', '62', 7, 'term1'),
(649, 'Expression Ecrite', '319242503126', '62', 4, 'term1'),
(650, 'Expression Ecrite', '319227303117', '62', 4, 'term1'),
(651, 'Expression Ecrite', '31965268319', '62', 6, 'term1'),
(652, 'Expression Ecrite', '31975534312', '62', 4, 'term1'),
(653, 'Expression Ecrite', '319562513128', '62', 5, 'term1'),
(654, 'Expression Ecrite', '319141623126', '62', 9, 'term1'),
(655, 'Expression Ecrite', '319208483125', '62', 4, 'term1'),
(656, 'Expression Ecrite', '319360743122', '62', 4, 'term1'),
(657, 'Expression Ecrite', '319577783136', '62', 4, 'term1'),
(658, 'Expression Ecrite', '319779373115', '62', 6, 'term1'),
(659, 'Expression Ecrite', '319614533133', '62', 5, 'term1'),
(660, 'Expression Ecrite', '31931467312', '62', 6, 'term1'),
(661, 'Expression Ecrite', '319654403128', '62', 5, 'term1'),
(662, 'Expression Ecrite', '319833233139', '62', 6, 'term1'),
(663, 'Expression Ecrite', '319863753118', '62', 7, 'term1'),
(664, 'Expression Ecrite', '319599833131', '63', 5, 'term2'),
(665, 'Expression Ecrite', '3193109613', '63', 4, 'term2'),
(666, 'Expression Ecrite', '319250673119', '63', 6, 'term2'),
(667, 'Expression Ecrite', '31919795314', '63', 3, 'term2'),
(668, 'Expression Ecrite', '31977199318', '63', 5, 'term2'),
(669, 'Expression Ecrite', '319329913111', '63', 5, 'term2'),
(670, 'Expression Ecrite', '319136433111', '63', 5, 'term2'),
(671, 'Expression Ecrite', '319541523132', '63', 5, 'term2'),
(672, 'Expression Ecrite', '319242503126', '63', 6, 'term2'),
(673, 'Expression Ecrite', '319227303117', '63', 5, 'term2'),
(674, 'Expression Ecrite', '31965268319', '63', 4, 'term2'),
(675, 'Expression Ecrite', '31975534312', '63', 6, 'term2'),
(676, 'Expression Ecrite', '319562513128', '63', 4, 'term2'),
(677, 'Expression Ecrite', '319141623126', '63', 8, 'term2'),
(678, 'Expression Ecrite', '319208483125', '63', 4, 'term2'),
(679, 'Expression Ecrite', '319360743122', '63', 4, 'term2'),
(680, 'Expression Ecrite', '319577783136', '63', 5, 'term2'),
(681, 'Expression Ecrite', '319779373115', '63', 5, 'term2'),
(682, 'Expression Ecrite', '319614533133', '63', 6, 'term2'),
(683, 'Expression Ecrite', '31931467312', '63', 5, 'term2'),
(684, 'Expression Ecrite', '319654403128', '63', 4, 'term2'),
(685, 'Expression Ecrite', '319833233139', '63', 6, 'term2'),
(686, 'Expression Ecrite', '319863753118', '63', 7, 'term2'),
(1001, 'GUSOMA', '319856893830', '1', 6, 'term1'),
(1002, 'GUSOMA', '319871143826', '1', 8, 'term1'),
(1003, 'GUSOMA', '319879973824', '1', 8, 'term1'),
(1004, 'GUSOMA', '31965625385', '1', 7, 'term1'),
(1005, 'GUSOMA', '319222373828', '1', 7, 'term1'),
(1006, 'GUSOMA', '319265533817', '1', 8, 'term1'),
(1007, 'GUSOMA', '31983620387', '1', 6, 'term1'),
(1008, 'GUSOMA', '319900913815', '1', 7, 'term1'),
(1009, 'GUSOMA', '31982791384', '1', 8, 'term1'),
(10010, 'GUSOMA', '319276113817', '1', 7, 'term1'),
(10011, 'GUSOMA', '319529963813', '1', 8, 'term1'),
(10012, 'GUSOMA', '319321923814', '1', 8, 'term1'),
(10013, 'GUSOMA', '319830903813', '1', 6, 'term1'),
(10014, 'GUSOMA', '319509623820', '1', 10, 'term1'),
(10015, 'GUSOMA', '319601763833', '1', 6, 'term1'),
(10016, 'GUSOMA', '319354953812', '1', 7, 'term1'),
(10017, 'GUSOMA', '319680883817', '1', 7, 'term1'),
(10018, 'GUSOMA', '319811883814', '1', 8, 'term1'),
(10019, 'GUSOMA', '319300793810', '1', 6, 'term1'),
(10020, 'GUSOMA', '319379993810', '1', 8, 'term1'),
(10021, 'GUSOMA', '31971857388', '1', 9, 'term1'),
(10022, 'GUSOMA', '31915882385', '1', 8, 'term1'),
(10023, 'GUSOMA', '31943874381', '1', 6, 'term1'),
(10024, 'GUSOMA', '319697303825', '1', 6, 'term1'),
(10025, 'GUSOMA', '319294873814', '1', 6, 'term1'),
(10026, 'GUSOMA', '319140253812', '1', 7, 'term1'),
(10027, 'GUSOMA', '31937690387', '1', 8, 'term1'),
(10028, 'GUSOMA', '31970880381', '1', 7, 'term1'),
(10029, 'GUSOMA', '319168133832', '1', 7, 'term1'),
(10030, 'GUSOMA', '319353443832', '1', 8, 'term1'),
(10031, 'GUSOMA', '319548243814', '1', 8, 'term1'),
(10032, 'GUSOMA', '31970830386', '1', 8, 'term1'),
(10033, 'GUSOMA', '319803683835', '1', 9, 'term1'),
(10034, 'GUSOMA', '31981346384', '1', 3, 'term1'),
(10035, 'KWANDIKA', '319856893830', '2', 15, 'term1'),
(10036, 'KWANDIKA', '319871143826', '2', 19, 'term1'),
(10037, 'KWANDIKA', '319879973824', '2', 16, 'term1'),
(10038, 'KWANDIKA', '31965625385', '2', 17, 'term1'),
(10039, 'KWANDIKA', '319222373828', '2', 17, 'term1'),
(10040, 'KWANDIKA', '319265533817', '2', 16, 'term1'),
(10041, 'KWANDIKA', '31983620387', '2', 16, 'term1'),
(10042, 'KWANDIKA', '319900913815', '2', 16, 'term1'),
(10043, 'KWANDIKA', '31982791384', '2', 17, 'term1'),
(10044, 'KWANDIKA', '319276113817', '2', 17, 'term1'),
(10045, 'KWANDIKA', '319529963813', '2', 14, 'term1'),
(10046, 'KWANDIKA', '319321923814', '2', 16, 'term1'),
(10047, 'KWANDIKA', '319830903813', '2', 14, 'term1'),
(10048, 'KWANDIKA', '319509623820', '2', 19, 'term1'),
(10049, 'KWANDIKA', '319601763833', '2', 13, 'term1'),
(10050, 'KWANDIKA', '319354953812', '2', 14, 'term1'),
(10051, 'KWANDIKA', '319680883817', '2', 14, 'term1'),
(10052, 'KWANDIKA', '319811883814', '2', 14, 'term1'),
(10053, 'KWANDIKA', '319300793810', '2', 13, 'term1'),
(10054, 'KWANDIKA', '319379993810', '2', 16, 'term1'),
(10055, 'KWANDIKA', '31971857388', '2', 18, 'term1'),
(10056, 'KWANDIKA', '31915882385', '2', 19, 'term1'),
(10057, 'KWANDIKA', '31943874381', '2', 13, 'term1'),
(10058, 'KWANDIKA', '319697303825', '2', 10, 'term1'),
(10059, 'KWANDIKA', '319294873814', '2', 15, 'term1'),
(10060, 'KWANDIKA', '319140253812', '2', 15, 'term1'),
(10061, 'KWANDIKA', '31937690387', '2', 16, 'term1'),
(10062, 'KWANDIKA', '31970880381', '2', 15, 'term1'),
(10063, 'KWANDIKA', '319168133832', '2', 14, 'term1'),
(10064, 'KWANDIKA', '319353443832', '2', 15, 'term1'),
(10065, 'KWANDIKA', '319548243814', '2', 15, 'term1'),
(10066, 'KWANDIKA', '31970830386', '2', 17, 'term1'),
(10067, 'KWANDIKA', '319803683835', '2', 17, 'term1'),
(10068, 'KWANDIKA', '31981346384', '2', 10, 'term1'),
(10069, 'Reading', '319856893830', '3', 7, 'term1'),
(10070, 'Reading', '319871143826', '3', 8, 'term1'),
(10071, 'Reading', '319879973824', '3', 8, 'term1'),
(10072, 'Reading', '31965625385', '3', 7, 'term1'),
(10073, 'Reading', '319222373828', '3', 8, 'term1'),
(10074, 'Reading', '319265533817', '3', 7, 'term1'),
(10075, 'Reading', '31983620387', '3', 8, 'term1'),
(10076, 'Reading', '319900913815', '3', 8, 'term1'),
(10077, 'Reading', '31982791384', '3', 7, 'term1'),
(10078, 'Reading', '319276113817', '3', 5, 'term1'),
(10079, 'Reading', '319529963813', '3', 6, 'term1'),
(10080, 'Reading', '319321923814', '3', 7, 'term1'),
(10081, 'Reading', '319830903813', '3', 7, 'term1'),
(10082, 'Reading', '319509623820', '3', 9, 'term1'),
(10083, 'Reading', '319601763833', '3', 4, 'term1'),
(10084, 'Reading', '319354953812', '3', 4, 'term1'),
(10085, 'Reading', '319680883817', '3', 5, 'term1'),
(10086, 'Reading', '319811883814', '3', 5, 'term1'),
(10087, 'Reading', '319300793810', '3', 5, 'term1'),
(10088, 'Reading', '319379993810', '3', 9, 'term1'),
(10089, 'Reading', '31971857388', '3', 8, 'term1'),
(10090, 'Reading', '31915882385', '3', 9, 'term1'),
(10091, 'Reading', '31943874381', '3', 6, 'term1'),
(10092, 'Reading', '319697303825', '3', 4, 'term1'),
(10093, 'Reading', '319294873814', '3', 5, 'term1'),
(10094, 'Reading', '319140253812', '3', 6, 'term1'),
(10095, 'Reading', '31937690387', '3', 8, 'term1'),
(10096, 'Reading', '31970880381', '3', 6, 'term1'),
(10097, 'Reading', '319168133832', '3', 8, 'term1'),
(10098, 'Reading', '319353443832', '3', 4, 'term1'),
(10099, 'Reading', '319548243814', '3', 9, 'term1'),
(100100, 'Reading', '31970830386', '3', 8, 'term1'),
(100101, 'Reading', '319803683835', '3', 8, 'term1'),
(100102, 'Reading', '31981346384', '3', 3, 'term1'),
(100103, 'Writing', '319856893830', '4', 9, 'term1'),
(100104, 'Writing', '319871143826', '4', 17, 'term1'),
(100105, 'Writing', '319879973824', '4', 12, 'term1'),
(100106, 'Writing', '31965625385', '4', 14, 'term1'),
(100107, 'Writing', '319222373828', '4', 14, 'term1'),
(100108, 'Writing', '319265533817', '4', 18, 'term1'),
(100109, 'Writing', '31983620387', '4', 18, 'term1'),
(100110, 'Writing', '319900913815', '4', 19, 'term1'),
(100111, 'Writing', '31982791384', '4', 18, 'term1'),
(100112, 'Writing', '319276113817', '4', 14, 'term1'),
(100113, 'Writing', '319529963813', '4', 19, 'term1'),
(100114, 'Writing', '319321923814', '4', 13, 'term1'),
(100115, 'Writing', '319830903813', '4', 8, 'term1'),
(100116, 'Writing', '319509623820', '4', 18, 'term1'),
(100117, 'Writing', '319601763833', '4', 8, 'term1'),
(100118, 'Writing', '319354953812', '4', 14, 'term1'),
(100119, 'Writing', '319680883817', '4', 10, 'term1'),
(100120, 'Writing', '319811883814', '4', 9, 'term1'),
(100121, 'Writing', '319300793810', '4', 16, 'term1'),
(100122, 'Writing', '319379993810', '4', 18, 'term1'),
(100123, 'Writing', '31971857388', '4', 19, 'term1'),
(100124, 'Writing', '31915882385', '4', 19, 'term1'),
(100125, 'Writing', '31943874381', '4', 7, 'term1'),
(100126, 'Writing', '319697303825', '4', 10, 'term1'),
(100127, 'Writing', '319294873814', '4', 15, 'term1'),
(100128, 'Writing', '319140253812', '4', 8, 'term1'),
(100129, 'Writing', '31937690387', '4', 18, 'term1'),
(100130, 'Writing', '31970880381', '4', 19, 'term1'),
(100131, 'Writing', '319168133832', '4', 16, 'term1'),
(100132, 'Writing', '319353443832', '4', 10, 'term1'),
(100133, 'Writing', '319548243814', '4', 16, 'term1'),
(100134, 'Writing', '31970830386', '4', 15, 'term1'),
(100135, 'Writing', '319803683835', '4', 19, 'term1'),
(100136, 'Writing', '31981346384', '4', 18, 'term1'),
(100137, 'Expression Orale', '319856893830', '5', 3, 'term1'),
(100138, 'Expression Orale', '319871143826', '5', 4, 'term1'),
(100139, 'Expression Orale', '319879973824', '5', 5, 'term1'),
(100140, 'Expression Orale', '31965625385', '5', 2, 'term1'),
(100141, 'Expression Orale', '319222373828', '5', 4, 'term1'),
(100142, 'Expression Orale', '319265533817', '5', 5, 'term1'),
(100143, 'Expression Orale', '31983620387', '5', 4, 'term1'),
(100144, 'Expression Orale', '319900913815', '5', 4, 'term1'),
(100145, 'Expression Orale', '31982791384', '5', 4, 'term1'),
(100146, 'Expression Orale', '319276113817', '5', 3, 'term1'),
(100147, 'Expression Orale', '319529963813', '5', 3, 'term1'),
(100148, 'Expression Orale', '319321923814', '5', 4, 'term1'),
(100149, 'Expression Orale', '319830903813', '5', 3, 'term1'),
(100150, 'Expression Orale', '319509623820', '5', 5, 'term1'),
(100151, 'Expression Orale', '319601763833', '5', 3, 'term1'),
(100152, 'Expression Orale', '319354953812', '5', 3, 'term1'),
(100153, 'Expression Orale', '319680883817', '5', 2, 'term1'),
(100154, 'Expression Orale', '319811883814', '5', 2, 'term1'),
(100155, 'Expression Orale', '319300793810', '5', 3, 'term1'),
(100156, 'Expression Orale', '319379993810', '5', 5, 'term1'),
(100157, 'Expression Orale', '31971857388', '5', 5, 'term1'),
(100158, 'Expression Orale', '31915882385', '5', 4, 'term1'),
(100159, 'Expression Orale', '31943874381', '5', 3, 'term1'),
(100160, 'Expression Orale', '319697303825', '5', 2, 'term1'),
(100161, 'Expression Orale', '319294873814', '5', 3, 'term1'),
(100162, 'Expression Orale', '319140253812', '5', 3, 'term1'),
(100163, 'Expression Orale', '31937690387', '5', 3, 'term1'),
(100164, 'Expression Orale', '31970880381', '5', 2, 'term1'),
(100165, 'Expression Orale', '319168133832', '5', 2, 'term1'),
(100166, 'Expression Orale', '319353443832', '5', 3, 'term1'),
(100167, 'Expression Orale', '319548243814', '5', 4, 'term1'),
(100168, 'Expression Orale', '31970830386', '5', 4, 'term1'),
(100169, 'Expression Orale', '319803683835', '5', 4, 'term1'),
(100170, 'Expression Orale', '31981346384', '5', 3, 'term1'),
(100171, 'Expression Ecrite', '319856893830', '6', 10, 'term1'),
(100172, 'Expression Ecrite', '319871143826', '6', 14, 'term1'),
(100173, 'Expression Ecrite', '319879973824', '6', 14, 'term1'),
(100174, 'Expression Ecrite', '31965625385', '6', 6, 'term1'),
(100175, 'Expression Ecrite', '319222373828', '6', 6, 'term1'),
(100176, 'Expression Ecrite', '319265533817', '6', 10, 'term1'),
(100177, 'Expression Ecrite', '31983620387', '6', 8, 'term1'),
(100178, 'Expression Ecrite', '319900913815', '6', 14, 'term1'),
(100179, 'Expression Ecrite', '31982791384', '6', 9, 'term1'),
(100180, 'Expression Ecrite', '319276113817', '6', 8, 'term1'),
(100181, 'Expression Ecrite', '319529963813', '6', 12, 'term1'),
(100182, 'Expression Ecrite', '319321923814', '6', 11, 'term1'),
(100183, 'Expression Ecrite', '319830903813', '6', 6, 'term1'),
(100184, 'Expression Ecrite', '319509623820', '6', 15, 'term1'),
(100185, 'Expression Ecrite', '319601763833', '6', 3, 'term1'),
(100186, 'Expression Ecrite', '319354953812', '6', 8, 'term1'),
(100187, 'Expression Ecrite', '319680883817', '6', 3, 'term1'),
(100188, 'Expression Ecrite', '319811883814', '6', 5, 'term1'),
(100189, 'Expression Ecrite', '319300793810', '6', 6, 'term1'),
(100190, 'Expression Ecrite', '319379993810', '6', 12, 'term1'),
(100191, 'Expression Ecrite', '31971857388', '6', 14, 'term1'),
(100192, 'Expression Ecrite', '31915882385', '6', 11, 'term1'),
(100193, 'Expression Ecrite', '31943874381', '6', 6, 'term1'),
(100194, 'Expression Ecrite', '319697303825', '6', 3, 'term1'),
(100195, 'Expression Ecrite', '319294873814', '6', 9, 'term1'),
(100196, 'Expression Ecrite', '319140253812', '6', 6, 'term1'),
(100197, 'Expression Ecrite', '31937690387', '6', 8, 'term1'),
(100198, 'Expression Ecrite', '31970880381', '6', 7, 'term1'),
(100199, 'Expression Ecrite', '319168133832', '6', 6, 'term1'),
(100200, 'Expression Ecrite', '319353443832', '6', 9, 'term1'),
(100201, 'Expression Ecrite', '319548243814', '6', 11, 'term1'),
(100202, 'Expression Ecrite', '31970830386', '6', 9, 'term1'),
(100203, 'Expression Ecrite', '319803683835', '6', 14, 'term1'),
(100204, 'Expression Ecrite', '31981346384', '6', 5, 'term1'),
(100205, 'Metric system&Geometry', '319856893830', '7', 4, 'term1'),
(100206, 'Metric system&Geometry', '319871143826', '7', 8, 'term1'),
(100207, 'Metric system&Geometry', '319879973824', '7', 8, 'term1'),
(100208, 'Metric system&Geometry', '31965625385', '7', 7, 'term1'),
(100209, 'Metric system&Geometry', '319222373828', '7', 5, 'term1'),
(100210, 'Metric system&Geometry', '319265533817', '7', 9, 'term1'),
(100211, 'Metric system&Geometry', '31983620387', '7', 6, 'term1'),
(100212, 'Metric system&Geometry', '319900913815', '7', 10, 'term1'),
(100213, 'Metric system&Geometry', '31982791384', '7', 6, 'term1'),
(100214, 'Metric system&Geometry', '319276113817', '7', 6, 'term1'),
(100215, 'Metric system&Geometry', '319529963813', '7', 8, 'term1'),
(100216, 'Metric system&Geometry', '319321923814', '7', 3, 'term1'),
(100217, 'Metric system&Geometry', '319830903813', '7', 4, 'term1'),
(100218, 'Metric system&Geometry', '319509623820', '7', 10, 'term1'),
(100219, 'Metric system&Geometry', '319601763833', '7', 5, 'term1'),
(100220, 'Metric system&Geometry', '319354953812', '7', 10, 'term1'),
(100221, 'Metric system&Geometry', '319680883817', '7', 7, 'term1'),
(100222, 'Metric system&Geometry', '319811883814', '7', 5, 'term1'),
(100223, 'Metric system&Geometry', '319300793810', '7', 7, 'term1'),
(100224, 'Metric system&Geometry', '319379993810', '7', 8, 'term1'),
(100225, 'Metric system&Geometry', '31971857388', '7', 7, 'term1'),
(100226, 'Metric system&Geometry', '31915882385', '7', 5, 'term1'),
(100227, 'Metric system&Geometry', '31943874381', '7', 1, 'term1'),
(100228, 'Metric system&Geometry', '319697303825', '7', 4, 'term1'),
(100229, 'Metric system&Geometry', '319294873814', '7', 9, 'term1'),
(100230, 'Metric system&Geometry', '319140253812', '7', 9, 'term1'),
(100231, 'Metric system&Geometry', '31937690387', '7', 3, 'term1'),
(100232, 'Metric system&Geometry', '31970880381', '7', 1, 'term1'),
(100233, 'Metric system&Geometry', '319168133832', '7', 7, 'term1'),
(100234, 'Metric system&Geometry', '319353443832', '7', 3, 'term1'),
(100235, 'Metric system&Geometry', '319548243814', '7', 6, 'term1'),
(100236, 'Metric system&Geometry', '31970830386', '7', 8, 'term1'),
(100237, 'Metric system&Geometry', '319803683835', '7', 7, 'term1'),
(100238, 'Metric system&Geometry', '31981346384', '7', 4, 'term1'),
(100239, 'Arthemetic,Algebra&Statistics', '319856893830', '8', 11, 'term1'),
(100240, 'Arthemetic,Algebra&Statistics', '319871143826', '8', 14, 'term1'),
(100241, 'Arthemetic,Algebra&Statistics', '319879973824', '8', 12, 'term1'),
(100242, 'Arthemetic,Algebra&Statistics', '31965625385', '8', 7, 'term1'),
(100243, 'Arthemetic,Algebra&Statistics', '319222373828', '8', 6, 'term1'),
(100244, 'Arthemetic,Algebra&Statistics', '319265533817', '8', 14, 'term1'),
(100245, 'Arthemetic,Algebra&Statistics', '31983620387', '8', 8, 'term1'),
(100246, 'Arthemetic,Algebra&Statistics', '319900913815', '8', 10, 'term1'),
(100247, 'Arthemetic,Algebra&Statistics', '31982791384', '8', 10, 'term1'),
(100248, 'Arthemetic,Algebra&Statistics', '319276113817', '8', 8, 'term1'),
(100249, 'Arthemetic,Algebra&Statistics', '319529963813', '8', 10, 'term1'),
(100250, 'Arthemetic,Algebra&Statistics', '319321923814', '8', 6, 'term1'),
(100251, 'Arthemetic,Algebra&Statistics', '319830903813', '8', 8, 'term1'),
(100252, 'Arthemetic,Algebra&Statistics', '319509623820', '8', 19, 'term1'),
(100253, 'Arthemetic,Algebra&Statistics', '319601763833', '8', 6, 'term1'),
(100254, 'Arthemetic,Algebra&Statistics', '319354953812', '8', 7, 'term1'),
(100255, 'Arthemetic,Algebra&Statistics', '319680883817', '8', 9, 'term1'),
(100256, 'Arthemetic,Algebra&Statistics', '319811883814', '8', 5, 'term1'),
(100257, 'Arthemetic,Algebra&Statistics', '319300793810', '8', 8, 'term1'),
(100258, 'Arthemetic,Algebra&Statistics', '319379993810', '8', 17, 'term1'),
(100259, 'Arthemetic,Algebra&Statistics', '31971857388', '8', 10, 'term1'),
(100260, 'Arthemetic,Algebra&Statistics', '31915882385', '8', 6, 'term1'),
(100261, 'Arthemetic,Algebra&Statistics', '31943874381', '8', 9, 'term1'),
(100262, 'Arthemetic,Algebra&Statistics', '319697303825', '8', 5, 'term1'),
(100263, 'Arthemetic,Algebra&Statistics', '319294873814', '8', 6, 'term1'),
(100264, 'Arthemetic,Algebra&Statistics', '319140253812', '8', 14, 'term1'),
(100265, 'Arthemetic,Algebra&Statistics', '31937690387', '8', 6, 'term1'),
(100266, 'Arthemetic,Algebra&Statistics', '31970880381', '8', 5, 'term1'),
(100267, 'Arthemetic,Algebra&Statistics', '319168133832', '8', 10, 'term1'),
(100268, 'Arthemetic,Algebra&Statistics', '319353443832', '8', 6, 'term1'),
(100269, 'Arthemetic,Algebra&Statistics', '319548243814', '8', 6, 'term1'),
(100270, 'Arthemetic,Algebra&Statistics', '31970830386', '8', 8, 'term1'),
(100271, 'Arthemetic,Algebra&Statistics', '319803683835', '8', 12, 'term1'),
(100272, 'Arthemetic,Algebra&Statistics', '31981346384', '8', 10, 'term1'),
(100273, 'SET', '319856893830', '9', 4, 'term1'),
(100274, 'SET', '319871143826', '9', 10, 'term1'),
(100275, 'SET', '319879973824', '9', 9, 'term1'),
(100276, 'SET', '31965625385', '9', 3, 'term1'),
(100277, 'SET', '319222373828', '9', 7, 'term1'),
(100278, 'SET', '319265533817', '9', 9, 'term1');
INSERT INTO `2019_quiz_marks` (`qid`, `cname`, `regno`, `quiz_id`, `marks`, `term`) VALUES
(100279, 'SET', '31983620387', '9', 6, 'term1'),
(100280, 'SET', '319900913815', '9', 8, 'term1'),
(100281, 'SET', '31982791384', '9', 8, 'term1'),
(100282, 'SET', '319276113817', '9', 8, 'term1'),
(100283, 'SET', '319529963813', '9', 8, 'term1'),
(100284, 'SET', '319321923814', '9', 8, 'term1'),
(100285, 'SET', '319830903813', '9', 10, 'term1'),
(100286, 'SET', '319509623820', '9', 10, 'term1'),
(100287, 'SET', '319601763833', '9', 4, 'term1'),
(100288, 'SET', '319354953812', '9', 6, 'term1'),
(100289, 'SET', '319680883817', '9', 3, 'term1'),
(100290, 'SET', '319811883814', '9', 4, 'term1'),
(100291, 'SET', '319300793810', '9', 4, 'term1'),
(100292, 'SET', '319379993810', '9', 7, 'term1'),
(100293, 'SET', '31971857388', '9', 9, 'term1'),
(100294, 'SET', '31915882385', '9', 7, 'term1'),
(100295, 'SET', '31943874381', '9', 4, 'term1'),
(100296, 'SET', '319697303825', '9', 4, 'term1'),
(100297, 'SET', '319294873814', '9', 6, 'term1'),
(100298, 'SET', '319140253812', '9', 5, 'term1'),
(100299, 'SET', '31937690387', '9', 6, 'term1'),
(100300, 'SET', '31970880381', '9', 5, 'term1'),
(100301, 'SET', '319168133832', '9', 8, 'term1'),
(100302, 'SET', '319353443832', '9', 4, 'term1'),
(100303, 'SET', '319548243814', '9', 5, 'term1'),
(100304, 'SET', '31970830386', '9', 7, 'term1'),
(100305, 'SET', '319803683835', '9', 8, 'term1'),
(100306, 'SET', '31981346384', '9', 4, 'term1'),
(100307, 'SOCIAL &RELIGIOUS STUDIES', '319856893830', '10', 8, 'term1'),
(100308, 'SOCIAL &RELIGIOUS STUDIES', '319871143826', '10', 10, 'term1'),
(100309, 'SOCIAL &RELIGIOUS STUDIES', '319879973824', '10', 7, 'term1'),
(100310, 'SOCIAL &RELIGIOUS STUDIES', '31965625385', '10', 6, 'term1'),
(100311, 'SOCIAL &RELIGIOUS STUDIES', '319222373828', '10', 10, 'term1'),
(100312, 'SOCIAL &RELIGIOUS STUDIES', '319265533817', '10', 11, 'term1'),
(100313, 'SOCIAL &RELIGIOUS STUDIES', '31983620387', '10', 7, 'term1'),
(100314, 'SOCIAL &RELIGIOUS STUDIES', '319900913815', '10', 10, 'term1'),
(100315, 'SOCIAL &RELIGIOUS STUDIES', '31982791384', '10', 8, 'term1'),
(100316, 'SOCIAL &RELIGIOUS STUDIES', '319276113817', '10', 7, 'term1'),
(100317, 'SOCIAL &RELIGIOUS STUDIES', '319529963813', '10', 12, 'term1'),
(100318, 'SOCIAL &RELIGIOUS STUDIES', '319321923814', '10', 7, 'term1'),
(100319, 'SOCIAL &RELIGIOUS STUDIES', '319830903813', '10', 6, 'term1'),
(100320, 'SOCIAL &RELIGIOUS STUDIES', '319509623820', '10', 15, 'term1'),
(100321, 'SOCIAL &RELIGIOUS STUDIES', '319601763833', '10', 1, 'term1'),
(100322, 'SOCIAL &RELIGIOUS STUDIES', '319354953812', '10', 5, 'term1'),
(100323, 'SOCIAL &RELIGIOUS STUDIES', '319680883817', '10', 6, 'term1'),
(100324, 'SOCIAL &RELIGIOUS STUDIES', '319811883814', '10', 3, 'term1'),
(100325, 'SOCIAL &RELIGIOUS STUDIES', '319300793810', '10', 3, 'term1'),
(100326, 'SOCIAL &RELIGIOUS STUDIES', '319379993810', '10', 11, 'term1'),
(100327, 'SOCIAL &RELIGIOUS STUDIES', '31971857388', '10', 12, 'term1'),
(100328, 'SOCIAL &RELIGIOUS STUDIES', '31915882385', '10', 9, 'term1'),
(100329, 'SOCIAL &RELIGIOUS STUDIES', '31943874381', '10', 3, 'term1'),
(100330, 'SOCIAL &RELIGIOUS STUDIES', '319697303825', '10', 3, 'term1'),
(100331, 'SOCIAL &RELIGIOUS STUDIES', '319294873814', '10', 9, 'term1'),
(100332, 'SOCIAL &RELIGIOUS STUDIES', '319140253812', '10', 5, 'term1'),
(100333, 'SOCIAL &RELIGIOUS STUDIES', '31937690387', '10', 11, 'term1'),
(100334, 'SOCIAL &RELIGIOUS STUDIES', '31970880381', '10', 6, 'term1'),
(100335, 'SOCIAL &RELIGIOUS STUDIES', '319168133832', '10', 7, 'term1'),
(100336, 'SOCIAL &RELIGIOUS STUDIES', '319353443832', '10', 4, 'term1'),
(100337, 'SOCIAL &RELIGIOUS STUDIES', '319548243814', '10', 10, 'term1'),
(100338, 'SOCIAL &RELIGIOUS STUDIES', '31970830386', '10', 10, 'term1'),
(100339, 'SOCIAL &RELIGIOUS STUDIES', '319803683835', '10', 9, 'term1'),
(100340, 'SOCIAL &RELIGIOUS STUDIES', '31981346384', '10', 3, 'term1'),
(100341, 'COMPUTER STDIES', '319856893830', '11', 2, 'term1'),
(100342, 'COMPUTER STDIES', '319871143826', '11', 5, 'term1'),
(100343, 'COMPUTER STDIES', '319879973824', '11', 1, 'term1'),
(100344, 'COMPUTER STDIES', '31965625385', '11', 3, 'term1'),
(100345, 'COMPUTER STDIES', '319222373828', '11', 4, 'term1'),
(100346, 'COMPUTER STDIES', '319265533817', '11', 4, 'term1'),
(100347, 'COMPUTER STDIES', '31983620387', '11', 2, 'term1'),
(100348, 'COMPUTER STDIES', '319900913815', '11', 0, 'term1'),
(100349, 'COMPUTER STDIES', '31982791384', '11', 3, 'term1'),
(100350, 'COMPUTER STDIES', '319276113817', '11', 3, 'term1'),
(100351, 'COMPUTER STDIES', '319529963813', '11', 3, 'term1'),
(100352, 'COMPUTER STDIES', '319321923814', '11', 3, 'term1'),
(100353, 'COMPUTER STDIES', '319830903813', '11', 3, 'term1'),
(100354, 'COMPUTER STDIES', '319509623820', '11', 4, 'term1'),
(100355, 'COMPUTER STDIES', '319601763833', '11', 3, 'term1'),
(100356, 'COMPUTER STDIES', '319354953812', '11', 3, 'term1'),
(100357, 'COMPUTER STDIES', '319680883817', '11', 3, 'term1'),
(100358, 'COMPUTER STDIES', '319811883814', '11', 0, 'term1'),
(100359, 'COMPUTER STDIES', '319300793810', '11', 2, 'term1'),
(100360, 'COMPUTER STDIES', '319379993810', '11', 3, 'term1'),
(100361, 'COMPUTER STDIES', '31971857388', '11', 3, 'term1'),
(100362, 'COMPUTER STDIES', '31915882385', '11', 4, 'term1'),
(100363, 'COMPUTER STDIES', '31943874381', '11', 3, 'term1'),
(100364, 'COMPUTER STDIES', '319697303825', '11', 2, 'term1'),
(100365, 'COMPUTER STDIES', '319294873814', '11', 3, 'term1'),
(100366, 'COMPUTER STDIES', '319140253812', '11', 1, 'term1'),
(100367, 'COMPUTER STDIES', '31937690387', '11', 2, 'term1'),
(100368, 'COMPUTER STDIES', '31970880381', '11', 2, 'term1'),
(100369, 'COMPUTER STDIES', '319168133832', '11', 3, 'term1'),
(100370, 'COMPUTER STDIES', '319353443832', '11', 2, 'term1'),
(100371, 'COMPUTER STDIES', '319548243814', '11', 0, 'term1'),
(100372, 'COMPUTER STDIES', '31970830386', '11', 3, 'term1'),
(100373, 'COMPUTER STDIES', '319803683835', '11', 4, 'term1'),
(100374, 'COMPUTER STDIES', '31981346384', '11', 3, 'term1'),
(100375, 'SPORT', '319856893830', '12', 4, 'term1'),
(100376, 'SPORT', '319871143826', '12', 3, 'term1'),
(100377, 'SPORT', '319879973824', '12', 3, 'term1'),
(100378, 'SPORT', '31965625385', '12', 3, 'term1'),
(100379, 'SPORT', '319222373828', '12', 3, 'term1'),
(100380, 'SPORT', '319265533817', '12', 3, 'term1'),
(100381, 'SPORT', '31983620387', '12', 3, 'term1'),
(100382, 'SPORT', '319900913815', '12', 4, 'term1'),
(100383, 'SPORT', '31982791384', '12', 4, 'term1'),
(100384, 'SPORT', '319276113817', '12', 4, 'term1'),
(100385, 'SPORT', '319529963813', '12', 4, 'term1'),
(100386, 'SPORT', '319321923814', '12', 4, 'term1'),
(100387, 'SPORT', '319830903813', '12', 3, 'term1'),
(100388, 'SPORT', '319509623820', '12', 4, 'term1'),
(100389, 'SPORT', '319601763833', '12', 4, 'term1'),
(100390, 'SPORT', '319354953812', '12', 3, 'term1'),
(100391, 'SPORT', '319680883817', '12', 3, 'term1'),
(100392, 'SPORT', '319811883814', '12', 3, 'term1'),
(100393, 'SPORT', '319300793810', '12', 4, 'term1'),
(100394, 'SPORT', '319379993810', '12', 4, 'term1'),
(100395, 'SPORT', '31971857388', '12', 4, 'term1'),
(100396, 'SPORT', '31915882385', '12', 4, 'term1'),
(100397, 'SPORT', '31943874381', '12', 3, 'term1'),
(100398, 'SPORT', '319697303825', '12', 3, 'term1'),
(100399, 'SPORT', '319294873814', '12', 3, 'term1'),
(100400, 'SPORT', '319140253812', '12', 3, 'term1'),
(100401, 'SPORT', '31937690387', '12', 4, 'term1'),
(100402, 'SPORT', '31970880381', '12', 3, 'term1'),
(100403, 'SPORT', '319168133832', '12', 3, 'term1'),
(100404, 'SPORT', '319353443832', '12', 3, 'term1'),
(100405, 'SPORT', '319548243814', '12', 4, 'term1'),
(100406, 'SPORT', '31970830386', '12', 4, 'term1'),
(100407, 'SPORT', '319803683835', '12', 4, 'term1'),
(100408, 'SPORT', '31981346384', '12', 4, 'term1'),
(100409, 'CREATIVE ARTS', '319856893830', '13', 3, 'term1'),
(100410, 'CREATIVE ARTS', '319871143826', '13', 4, 'term1'),
(100411, 'CREATIVE ARTS', '319879973824', '13', 2, 'term1'),
(100412, 'CREATIVE ARTS', '31965625385', '13', 3, 'term1'),
(100413, 'CREATIVE ARTS', '319222373828', '13', 3, 'term1'),
(100414, 'CREATIVE ARTS', '319265533817', '13', 4, 'term1'),
(100415, 'CREATIVE ARTS', '31983620387', '13', 3, 'term1'),
(100416, 'CREATIVE ARTS', '319900913815', '13', 3, 'term1'),
(100417, 'CREATIVE ARTS', '31982791384', '13', 2, 'term1'),
(100418, 'CREATIVE ARTS', '319276113817', '13', 2, 'term1'),
(100419, 'CREATIVE ARTS', '319529963813', '13', 3, 'term1'),
(100420, 'CREATIVE ARTS', '319321923814', '13', 3, 'term1'),
(100421, 'CREATIVE ARTS', '319830903813', '13', 3, 'term1'),
(100422, 'CREATIVE ARTS', '319509623820', '13', 3, 'term1'),
(100423, 'CREATIVE ARTS', '319601763833', '13', 3, 'term1'),
(100424, 'CREATIVE ARTS', '319354953812', '13', 3, 'term1'),
(100425, 'CREATIVE ARTS', '319680883817', '13', 2, 'term1'),
(100426, 'CREATIVE ARTS', '319811883814', '13', 2, 'term1'),
(100427, 'CREATIVE ARTS', '319300793810', '13', 3, 'term1'),
(100428, 'CREATIVE ARTS', '319379993810', '13', 3, 'term1'),
(100429, 'CREATIVE ARTS', '31971857388', '13', 4, 'term1'),
(100430, 'CREATIVE ARTS', '31915882385', '13', 4, 'term1'),
(100431, 'CREATIVE ARTS', '31943874381', '13', 2, 'term1'),
(100432, 'CREATIVE ARTS', '319697303825', '13', 3, 'term1'),
(100433, 'CREATIVE ARTS', '319294873814', '13', 3, 'term1'),
(100434, 'CREATIVE ARTS', '319140253812', '13', 4, 'term1'),
(100435, 'CREATIVE ARTS', '31937690387', '13', 3, 'term1'),
(100436, 'CREATIVE ARTS', '31970880381', '13', 3, 'term1'),
(100437, 'CREATIVE ARTS', '319168133832', '13', 3, 'term1'),
(100438, 'CREATIVE ARTS', '319353443832', '13', 1, 'term1'),
(100439, 'CREATIVE ARTS', '319548243814', '13', 3, 'term1'),
(100440, 'CREATIVE ARTS', '31970830386', '13', 4, 'term1'),
(100441, 'CREATIVE ARTS', '319803683835', '13', 4, 'term1'),
(100442, 'CREATIVE ARTS', '31981346384', '13', 3, 'term1'),
(100443, 'GUSOMA', '319624264811', '15', 3, 'term1'),
(100444, 'GUSOMA', '319888764839', '15', 3, 'term1'),
(100445, 'GUSOMA', '319448664821', '15', 4, 'term1'),
(100446, 'GUSOMA', '319411554836', '15', 4, 'term1'),
(100447, 'GUSOMA', '319273884821', '15', 3, 'term1'),
(100448, 'GUSOMA', '319628674826', '15', 4, 'term1'),
(100449, 'GUSOMA', '31946188484', '15', 3, 'term1'),
(100450, 'GUSOMA', '319604424826', '15', 3, 'term1'),
(100451, 'GUSOMA', '319810584832', '15', 4, 'term1'),
(100452, 'GUSOMA', '319598934816', '15', 3, 'term1'),
(100453, 'GUSOMA', '319687624824', '15', 3, 'term1'),
(100454, 'GUSOMA', '319106614813', '15', 3, 'term1'),
(100455, 'GUSOMA', '319877104838', '15', 3, 'term1'),
(100456, 'GUSOMA', '319490454819', '15', 2, 'term1'),
(100457, 'GUSOMA', '319404654814', '15', 3, 'term1'),
(100458, 'GUSOMA', '319822344839', '15', 3, 'term1'),
(100459, 'GUSOMA', '319526754834', '15', 3, 'term1'),
(100460, 'GUSOMA', '31959341488', '15', 3, 'term1'),
(100461, 'GUSOMA', '319293314830', '15', 3, 'term1'),
(100462, 'GUSOMA', '319124874827', '15', 3, 'term1'),
(100463, 'GUSOMA', '319445634811', '15', 3, 'term1'),
(100464, 'GUSOMA', '319111644833', '15', 3, 'term1'),
(100465, 'KWANDIKA', '319624264811', '14', 12, 'term1'),
(100466, 'KWANDIKA', '319888764839', '14', 13, 'term1'),
(100467, 'KWANDIKA', '319448664821', '14', 15, 'term1'),
(100468, 'KWANDIKA', '319411554836', '14', 15, 'term1'),
(100469, 'KWANDIKA', '319273884821', '14', 15, 'term1'),
(100470, 'KWANDIKA', '319628674826', '14', 13, 'term1'),
(100471, 'KWANDIKA', '31946188484', '14', 12, 'term1'),
(100472, 'KWANDIKA', '319604424826', '14', 12, 'term1'),
(100473, 'KWANDIKA', '319810584832', '14', 15, 'term1'),
(100474, 'KWANDIKA', '319598934816', '14', 14, 'term1'),
(100475, 'KWANDIKA', '319687624824', '14', 11, 'term1'),
(100476, 'KWANDIKA', '319106614813', '14', 13, 'term1'),
(100477, 'KWANDIKA', '319877104838', '14', 13, 'term1'),
(100478, 'KWANDIKA', '319490454819', '14', 10, 'term1'),
(100479, 'KWANDIKA', '319404654814', '14', 13, 'term1'),
(100480, 'KWANDIKA', '319822344839', '14', 12, 'term1'),
(100481, 'KWANDIKA', '319526754834', '14', 13, 'term1'),
(100482, 'KWANDIKA', '31959341488', '14', 14, 'term1'),
(100483, 'KWANDIKA', '319293314830', '14', 14, 'term1'),
(100484, 'KWANDIKA', '319124874827', '14', 11, 'term1'),
(100485, 'KWANDIKA', '319445634811', '14', 12, 'term1'),
(100486, 'KWANDIKA', '319111644833', '14', 13, 'term1'),
(100487, 'Reading', '319624264811', '16', 4, 'term1'),
(100488, 'Reading', '319888764839', '16', 3, 'term1'),
(100489, 'Reading', '319448664821', '16', 4, 'term1'),
(100490, 'Reading', '319411554836', '16', 4, 'term1'),
(100491, 'Reading', '319273884821', '16', 3, 'term1'),
(100492, 'Reading', '319628674826', '16', 4, 'term1'),
(100493, 'Reading', '31946188484', '16', 4, 'term1'),
(100494, 'Reading', '319604424826', '16', 3, 'term1'),
(100495, 'Reading', '319810584832', '16', 4, 'term1'),
(100496, 'Reading', '319598934816', '16', 4, 'term1'),
(100497, 'Reading', '319687624824', '16', 4, 'term1'),
(100498, 'Reading', '319106614813', '16', 4, 'term1'),
(100499, 'Reading', '319877104838', '16', 4, 'term1'),
(100500, 'Reading', '319490454819', '16', 4, 'term1'),
(100501, 'Reading', '319404654814', '16', 3, 'term1'),
(100502, 'Reading', '319822344839', '16', 4, 'term1'),
(100503, 'Reading', '319526754834', '16', 4, 'term1'),
(100504, 'Reading', '31959341488', '16', 3, 'term1'),
(100505, 'Reading', '319293314830', '16', 4, 'term1'),
(100506, 'Reading', '319124874827', '16', 3, 'term1'),
(100507, 'Reading', '319445634811', '16', 3, 'term1'),
(100508, 'Reading', '319111644833', '16', 4, 'term1'),
(100509, 'Writing', '319624264811', '17', 13, 'term1'),
(100510, 'Writing', '319888764839', '17', 10, 'term1'),
(100511, 'Writing', '319448664821', '17', 14, 'term1'),
(100512, 'Writing', '319411554836', '17', 13, 'term1'),
(100513, 'Writing', '319273884821', '17', 9, 'term1'),
(100514, 'Writing', '319628674826', '17', 13, 'term1'),
(100515, 'Writing', '31946188484', '17', 13, 'term1'),
(100516, 'Writing', '319604424826', '17', 11, 'term1'),
(100517, 'Writing', '319810584832', '17', 14, 'term1'),
(100518, 'Writing', '319598934816', '17', 12, 'term1'),
(100519, 'Writing', '319687624824', '17', 9, 'term1'),
(100520, 'Writing', '319106614813', '17', 10, 'term1'),
(100521, 'Writing', '319877104838', '17', 11, 'term1'),
(100522, 'Writing', '319490454819', '17', 11, 'term1'),
(100523, 'Writing', '319404654814', '17', 9, 'term1'),
(100524, 'Writing', '319822344839', '17', 11, 'term1'),
(100525, 'Writing', '319526754834', '17', 8, 'term1'),
(100526, 'Writing', '31959341488', '17', 10, 'term1'),
(100527, 'Writing', '319293314830', '17', 13, 'term1'),
(100528, 'Writing', '319124874827', '17', 7, 'term1'),
(100529, 'Writing', '319445634811', '17', 11, 'term1'),
(100530, 'Writing', '319111644833', '17', 13, 'term1'),
(100531, 'Expression Orale', '319624264811', '18', 3, 'term1'),
(100532, 'Expression Orale', '319888764839', '18', 4, 'term1'),
(100533, 'Expression Orale', '319448664821', '18', 4, 'term1'),
(100534, 'Expression Orale', '319411554836', '18', 3, 'term1'),
(100535, 'Expression Orale', '319273884821', '18', 3, 'term1'),
(100536, 'Expression Orale', '319628674826', '18', 4, 'term1'),
(100537, 'Expression Orale', '31946188484', '18', 4, 'term1'),
(100538, 'Expression Orale', '319604424826', '18', 4, 'term1'),
(100539, 'Expression Orale', '319810584832', '18', 4, 'term1'),
(100540, 'Expression Orale', '319598934816', '18', 4, 'term1'),
(100541, 'Expression Orale', '319687624824', '18', 4, 'term1'),
(100542, 'Expression Orale', '319106614813', '18', 3, 'term1'),
(100543, 'Expression Orale', '319877104838', '18', 4, 'term1'),
(100544, 'Expression Orale', '319490454819', '18', 3, 'term1'),
(100545, 'Expression Orale', '319404654814', '18', 3, 'term1'),
(100546, 'Expression Orale', '319822344839', '18', 4, 'term1'),
(100547, 'Expression Orale', '319526754834', '18', 4, 'term1'),
(100548, 'Expression Orale', '31959341488', '18', 3, 'term1'),
(100549, 'Expression Orale', '319293314830', '18', 4, 'term1'),
(100550, 'Expression Orale', '319124874827', '18', 3, 'term1'),
(100551, 'Expression Orale', '319445634811', '18', 4, 'term1'),
(100552, 'Expression Orale', '319111644833', '18', 4, 'term1'),
(100553, 'Expression Ecrite', '319624264811', '19', 5, 'term1'),
(100554, 'Expression Ecrite', '319888764839', '19', 5, 'term1'),
(100555, 'Expression Ecrite', '319448664821', '19', 8, 'term1'),
(100556, 'Expression Ecrite', '319411554836', '19', 6, 'term1'),
(100557, 'Expression Ecrite', '319273884821', '19', 2, 'term1'),
(100558, 'Expression Ecrite', '319628674826', '19', 7, 'term1'),
(100559, 'Expression Ecrite', '31946188484', '19', 5, 'term1'),
(100560, 'Expression Ecrite', '319604424826', '19', 5, 'term1'),
(100561, 'Expression Ecrite', '319810584832', '19', 7, 'term1'),
(100562, 'Expression Ecrite', '319598934816', '19', 5, 'term1'),
(100563, 'Expression Ecrite', '319687624824', '19', 5, 'term1'),
(100564, 'Expression Ecrite', '319106614813', '19', 4, 'term1'),
(100565, 'Expression Ecrite', '319877104838', '19', 7, 'term1'),
(100566, 'Expression Ecrite', '319490454819', '19', 4, 'term1'),
(100567, 'Expression Ecrite', '319404654814', '19', 4, 'term1'),
(100568, 'Expression Ecrite', '319822344839', '19', 6, 'term1'),
(100569, 'Expression Ecrite', '319526754834', '19', 5, 'term1'),
(100570, 'Expression Ecrite', '31959341488', '19', 4, 'term1'),
(100571, 'Expression Ecrite', '319293314830', '19', 5, 'term1'),
(100572, 'Expression Ecrite', '319124874827', '19', 9, 'term1'),
(100573, 'Expression Ecrite', '319445634811', '19', 7, 'term1'),
(100574, 'Expression Ecrite', '319111644833', '19', 9, 'term1'),
(100575, 'Metric system&Geometry', '319624264811', '20', 7, 'term1'),
(100576, 'Metric system&Geometry', '319888764839', '20', 4, 'term1'),
(100577, 'Metric system&Geometry', '319448664821', '20', 13, 'term1'),
(100578, 'Metric system&Geometry', '319411554836', '20', 11, 'term1'),
(100579, 'Metric system&Geometry', '319273884821', '20', 6, 'term1'),
(100580, 'Metric system&Geometry', '319628674826', '20', 11, 'term1'),
(100581, 'Metric system&Geometry', '31946188484', '20', 5, 'term1'),
(100582, 'Metric system&Geometry', '319604424826', '20', 9, 'term1'),
(100583, 'Metric system&Geometry', '319810584832', '20', 10, 'term1'),
(100584, 'Metric system&Geometry', '319598934816', '20', 3, 'term1'),
(100585, 'Metric system&Geometry', '319687624824', '20', 4, 'term1'),
(100586, 'Metric system&Geometry', '319106614813', '20', 5, 'term1'),
(100587, 'Metric system&Geometry', '319877104838', '20', 5, 'term1'),
(100588, 'Metric system&Geometry', '319490454819', '20', 11, 'term1'),
(100589, 'Metric system&Geometry', '319404654814', '20', 2, 'term1'),
(100590, 'Metric system&Geometry', '319822344839', '20', 8, 'term1'),
(100591, 'Metric system&Geometry', '319526754834', '20', 6, 'term1'),
(100592, 'Metric system&Geometry', '31959341488', '20', 9, 'term1'),
(100593, 'Metric system&Geometry', '319293314830', '20', 6, 'term1'),
(100594, 'Metric system&Geometry', '319124874827', '20', 5, 'term1'),
(100595, 'Metric system&Geometry', '319445634811', '20', 7, 'term1'),
(100596, 'Metric system&Geometry', '319111644833', '20', 13, 'term1'),
(100597, 'Arthemetic,Algebra&Statistics', '319624264811', '21', 7, 'term1'),
(100598, 'Arthemetic,Algebra&Statistics', '319888764839', '21', 4, 'term1'),
(100599, 'Arthemetic,Algebra&Statistics', '319448664821', '21', 14, 'term1'),
(100600, 'Arthemetic,Algebra&Statistics', '319411554836', '21', 7, 'term1'),
(100601, 'Arthemetic,Algebra&Statistics', '319273884821', '21', 5, 'term1'),
(100602, 'Arthemetic,Algebra&Statistics', '319628674826', '21', 9, 'term1'),
(100603, 'Arthemetic,Algebra&Statistics', '31946188484', '21', 7, 'term1'),
(100604, 'Arthemetic,Algebra&Statistics', '319604424826', '21', 7, 'term1'),
(100605, 'Arthemetic,Algebra&Statistics', '319810584832', '21', 10, 'term1'),
(100606, 'Arthemetic,Algebra&Statistics', '319598934816', '21', 5, 'term1'),
(100607, 'Arthemetic,Algebra&Statistics', '319687624824', '21', 5, 'term1'),
(100608, 'Arthemetic,Algebra&Statistics', '319106614813', '21', 4, 'term1'),
(100609, 'Arthemetic,Algebra&Statistics', '319877104838', '21', 6, 'term1'),
(100610, 'Arthemetic,Algebra&Statistics', '319490454819', '21', 8, 'term1'),
(100611, 'Arthemetic,Algebra&Statistics', '319404654814', '21', 3, 'term1'),
(100612, 'Arthemetic,Algebra&Statistics', '319822344839', '21', 8, 'term1'),
(100613, 'Arthemetic,Algebra&Statistics', '319526754834', '21', 5, 'term1'),
(100614, 'Arthemetic,Algebra&Statistics', '31959341488', '21', 7, 'term1'),
(100615, 'Arthemetic,Algebra&Statistics', '319293314830', '21', 8, 'term1'),
(100616, 'Arthemetic,Algebra&Statistics', '319124874827', '21', 4, 'term1'),
(100617, 'Arthemetic,Algebra&Statistics', '319445634811', '21', 8, 'term1'),
(100618, 'Arthemetic,Algebra&Statistics', '319111644833', '21', 12, 'term1'),
(100619, 'SET', '319624264811', '22', 11, 'term1'),
(100620, 'SET', '319888764839', '22', 7, 'term1'),
(100621, 'SET', '319448664821', '22', 14, 'term1'),
(100622, 'SET', '319411554836', '22', 14, 'term1'),
(100623, 'SET', '319273884821', '22', 7, 'term1'),
(100624, 'SET', '319628674826', '22', 12, 'term1'),
(100625, 'SET', '31946188484', '22', 10, 'term1'),
(100626, 'SET', '319604424826', '22', 11, 'term1'),
(100627, 'SET', '319810584832', '22', 12, 'term1'),
(100628, 'SET', '319598934816', '22', 13, 'term1'),
(100629, 'SET', '319687624824', '22', 6, 'term1'),
(100630, 'SET', '319106614813', '22', 10, 'term1'),
(100631, 'SET', '319877104838', '22', 11, 'term1'),
(100632, 'SET', '319490454819', '22', 7, 'term1'),
(100633, 'SET', '319404654814', '22', 7, 'term1'),
(100634, 'SET', '319822344839', '22', 9, 'term1'),
(100635, 'SET', '319526754834', '22', 8, 'term1'),
(100636, 'SET', '31959341488', '22', 8, 'term1'),
(100637, 'SET', '319293314830', '22', 13, 'term1'),
(100638, 'SET', '319124874827', '22', 6, 'term1'),
(100639, 'SET', '319445634811', '22', 10, 'term1'),
(100640, 'SET', '319111644833', '22', 9, 'term1'),
(100641, 'SOCIAL &RELIGIOUS STUDIES', '319624264811', '23', 9, 'term1'),
(100642, 'SOCIAL &RELIGIOUS STUDIES', '319888764839', '23', 8, 'term1'),
(100643, 'SOCIAL &RELIGIOUS STUDIES', '319448664821', '23', 18, 'term1'),
(100644, 'SOCIAL &RELIGIOUS STUDIES', '319411554836', '23', 15, 'term1'),
(100645, 'SOCIAL &RELIGIOUS STUDIES', '319273884821', '23', 11, 'term1'),
(100646, 'SOCIAL &RELIGIOUS STUDIES', '319628674826', '23', 12, 'term1'),
(100647, 'SOCIAL &RELIGIOUS STUDIES', '31946188484', '23', 14, 'term1'),
(100648, 'SOCIAL &RELIGIOUS STUDIES', '319604424826', '23', 13, 'term1'),
(100649, 'SOCIAL &RELIGIOUS STUDIES', '319810584832', '23', 16, 'term1'),
(100650, 'SOCIAL &RELIGIOUS STUDIES', '319598934816', '23', 12, 'term1'),
(100651, 'SOCIAL &RELIGIOUS STUDIES', '319687624824', '23', 10, 'term1'),
(100652, 'SOCIAL &RELIGIOUS STUDIES', '319106614813', '23', 13, 'term1'),
(100653, 'SOCIAL &RELIGIOUS STUDIES', '319877104838', '23', 10, 'term1'),
(100654, 'SOCIAL &RELIGIOUS STUDIES', '319490454819', '23', 10, 'term1'),
(100655, 'SOCIAL &RELIGIOUS STUDIES', '319404654814', '23', 9, 'term1'),
(100656, 'SOCIAL &RELIGIOUS STUDIES', '319822344839', '23', 14, 'term1'),
(100657, 'SOCIAL &RELIGIOUS STUDIES', '319526754834', '23', 8, 'term1'),
(100658, 'SOCIAL &RELIGIOUS STUDIES', '31959341488', '23', 10, 'term1'),
(100659, 'SOCIAL &RELIGIOUS STUDIES', '319293314830', '23', 15, 'term1'),
(100660, 'SOCIAL &RELIGIOUS STUDIES', '319124874827', '23', 5, 'term1'),
(100661, 'SOCIAL &RELIGIOUS STUDIES', '319445634811', '23', 8, 'term1'),
(100662, 'SOCIAL &RELIGIOUS STUDIES', '319111644833', '23', 10, 'term1'),
(100663, 'COMPUTER STDIES', '319624264811', '24', 2, 'term1'),
(100664, 'COMPUTER STDIES', '319888764839', '24', 3, 'term1'),
(100665, 'COMPUTER STDIES', '319448664821', '24', 4, 'term1'),
(100666, 'COMPUTER STDIES', '319411554836', '24', 3, 'term1'),
(100667, 'COMPUTER STDIES', '319273884821', '24', 0, 'term1'),
(100668, 'COMPUTER STDIES', '319628674826', '24', 3, 'term1'),
(100669, 'COMPUTER STDIES', '31946188484', '24', 4, 'term1'),
(100670, 'COMPUTER STDIES', '319604424826', '24', 0, 'term1'),
(100671, 'COMPUTER STDIES', '319810584832', '24', 3, 'term1'),
(100672, 'COMPUTER STDIES', '319598934816', '24', 2, 'term1'),
(100673, 'COMPUTER STDIES', '319687624824', '24', 3, 'term1'),
(100674, 'COMPUTER STDIES', '319106614813', '24', 3, 'term1'),
(100675, 'COMPUTER STDIES', '319877104838', '24', 3, 'term1'),
(100676, 'COMPUTER STDIES', '319490454819', '24', 3, 'term1'),
(100677, 'COMPUTER STDIES', '319404654814', '24', 2, 'term1'),
(100678, 'COMPUTER STDIES', '319822344839', '24', 2, 'term1'),
(100679, 'COMPUTER STDIES', '319526754834', '24', 3, 'term1'),
(100680, 'COMPUTER STDIES', '31959341488', '24', 0, 'term1'),
(100681, 'COMPUTER STDIES', '319293314830', '24', 0, 'term1'),
(100682, 'COMPUTER STDIES', '319124874827', '24', 3, 'term1'),
(100683, 'COMPUTER STDIES', '319445634811', '24', 3, 'term1'),
(100684, 'COMPUTER STDIES', '319111644833', '24', 3, 'term1'),
(100685, 'SPORT', '319624264811', '25', 4, 'term1'),
(100686, 'SPORT', '319888764839', '25', 4, 'term1'),
(100687, 'SPORT', '319448664821', '25', 4, 'term1'),
(100688, 'SPORT', '319411554836', '25', 4, 'term1'),
(100689, 'SPORT', '319273884821', '25', 4, 'term1'),
(100690, 'SPORT', '319628674826', '25', 4, 'term1'),
(100691, 'SPORT', '31946188484', '25', 3, 'term1'),
(100692, 'SPORT', '319604424826', '25', 4, 'term1'),
(100693, 'SPORT', '319810584832', '25', 4, 'term1'),
(100694, 'SPORT', '319598934816', '25', 3, 'term1'),
(100695, 'SPORT', '319687624824', '25', 4, 'term1'),
(100696, 'SPORT', '319106614813', '25', 3, 'term1'),
(100697, 'SPORT', '319877104838', '25', 4, 'term1'),
(100698, 'SPORT', '319490454819', '25', 4, 'term1'),
(100699, 'SPORT', '319404654814', '25', 4, 'term1'),
(100700, 'SPORT', '319822344839', '25', 4, 'term1'),
(100701, 'SPORT', '319526754834', '25', 3, 'term1'),
(100702, 'SPORT', '31959341488', '25', 4, 'term1'),
(100703, 'SPORT', '319293314830', '25', 4, 'term1'),
(100704, 'SPORT', '319124874827', '25', 4, 'term1'),
(100705, 'SPORT', '319445634811', '25', 3, 'term1'),
(100706, 'SPORT', '319111644833', '25', 4, 'term1'),
(100707, 'CREATIVE ARTS', '319624264811', '26', 3, 'term1'),
(100708, 'CREATIVE ARTS', '319888764839', '26', 3, 'term1'),
(100709, 'CREATIVE ARTS', '319448664821', '26', 3, 'term1'),
(100710, 'CREATIVE ARTS', '319411554836', '26', 3, 'term1'),
(100711, 'CREATIVE ARTS', '319273884821', '26', 3, 'term1'),
(100712, 'CREATIVE ARTS', '319628674826', '26', 3, 'term1'),
(100713, 'CREATIVE ARTS', '31946188484', '26', 3, 'term1'),
(100714, 'CREATIVE ARTS', '319604424826', '26', 3, 'term1'),
(100715, 'CREATIVE ARTS', '319810584832', '26', 3, 'term1'),
(100716, 'CREATIVE ARTS', '319598934816', '26', 3, 'term1'),
(100717, 'CREATIVE ARTS', '319687624824', '26', 3, 'term1'),
(100718, 'CREATIVE ARTS', '319106614813', '26', 3, 'term1'),
(100719, 'CREATIVE ARTS', '319877104838', '26', 3, 'term1'),
(100720, 'CREATIVE ARTS', '319490454819', '26', 3, 'term1'),
(100721, 'CREATIVE ARTS', '319404654814', '26', 3, 'term1'),
(100722, 'CREATIVE ARTS', '319822344839', '26', 3, 'term1'),
(100723, 'CREATIVE ARTS', '319526754834', '26', 3, 'term1'),
(100724, 'CREATIVE ARTS', '31959341488', '26', 3, 'term1'),
(100725, 'CREATIVE ARTS', '319293314830', '26', 3, 'term1'),
(100726, 'CREATIVE ARTS', '319124874827', '26', 3, 'term1'),
(100727, 'CREATIVE ARTS', '319445634811', '26', 3, 'term1'),
(100728, 'CREATIVE ARTS', '319111644833', '26', 3, 'term1'),
(100729, 'GUSOMA', '319624264811', '27', 3, 'term2'),
(100730, 'GUSOMA', '319888764839', '27', 3, 'term2'),
(100731, 'GUSOMA', '319448664821', '27', 3, 'term2'),
(100732, 'GUSOMA', '319411554836', '27', 4, 'term2'),
(100733, 'GUSOMA', '319273884821', '27', 4, 'term2'),
(100734, 'GUSOMA', '319628674826', '27', 4, 'term2'),
(100735, 'GUSOMA', '31946188484', '27', 4, 'term2'),
(100736, 'GUSOMA', '319604424826', '27', 3, 'term2'),
(100737, 'GUSOMA', '319810584832', '27', 4, 'term2'),
(100738, 'GUSOMA', '319598934816', '27', 3, 'term2'),
(100739, 'GUSOMA', '319687624824', '27', 3, 'term2'),
(100740, 'GUSOMA', '319106614813', '27', 3, 'term2'),
(100741, 'GUSOMA', '319877104838', '27', 3, 'term2'),
(100742, 'GUSOMA', '319490454819', '27', 2, 'term2'),
(100743, 'GUSOMA', '319404654814', '27', 3, 'term2'),
(100744, 'GUSOMA', '319822344839', '27', 3, 'term2'),
(100745, 'GUSOMA', '319526754834', '27', 3, 'term2'),
(100746, 'GUSOMA', '31959341488', '27', 3, 'term2'),
(100747, 'GUSOMA', '319293314830', '27', 3, 'term2'),
(100748, 'GUSOMA', '319124874827', '27', 0, 'term2'),
(100749, 'GUSOMA', '319445634811', '27', 3, 'term2'),
(100750, 'GUSOMA', '319111644833', '27', 3, 'term2'),
(100751, 'KWANDIKA', '319624264811', '28', 14, 'term2'),
(100752, 'KWANDIKA', '319888764839', '28', 14, 'term2'),
(100753, 'KWANDIKA', '319448664821', '28', 17, 'term2'),
(100754, 'KWANDIKA', '319411554836', '28', 15, 'term2'),
(100755, 'KWANDIKA', '319273884821', '28', 15, 'term2'),
(100756, 'KWANDIKA', '319628674826', '28', 14, 'term2'),
(100757, 'KWANDIKA', '31946188484', '28', 13, 'term2'),
(100758, 'KWANDIKA', '319604424826', '28', 14, 'term2'),
(100759, 'KWANDIKA', '319810584832', '28', 15, 'term2'),
(100760, 'KWANDIKA', '319598934816', '28', 15, 'term2'),
(100761, 'KWANDIKA', '319687624824', '28', 11, 'term2'),
(100762, 'KWANDIKA', '319106614813', '28', 13, 'term2'),
(100763, 'KWANDIKA', '319877104838', '28', 13, 'term2'),
(100764, 'KWANDIKA', '319490454819', '28', 12, 'term2'),
(100765, 'KWANDIKA', '319404654814', '28', 15, 'term2'),
(100766, 'KWANDIKA', '319822344839', '28', 13, 'term2'),
(100767, 'KWANDIKA', '319526754834', '28', 12, 'term2'),
(100768, 'KWANDIKA', '31959341488', '28', 14, 'term2'),
(100769, 'KWANDIKA', '319293314830', '28', 14, 'term2'),
(100770, 'KWANDIKA', '319124874827', '28', 0, 'term2'),
(100771, 'KWANDIKA', '319445634811', '28', 13, 'term2'),
(100772, 'KWANDIKA', '319111644833', '28', 15, 'term2'),
(100773, 'Reading', '319624264811', '29', 4, 'term2'),
(100774, 'Reading', '319888764839', '29', 4, 'term2'),
(100775, 'Reading', '319448664821', '29', 4, 'term2'),
(100776, 'Reading', '319411554836', '29', 4, 'term2'),
(100777, 'Reading', '319273884821', '29', 4, 'term2'),
(100778, 'Reading', '319628674826', '29', 3, 'term2'),
(100779, 'Reading', '31946188484', '29', 3, 'term2'),
(100780, 'Reading', '319604424826', '29', 4, 'term2'),
(100781, 'Reading', '319810584832', '29', 4, 'term2'),
(100782, 'Reading', '319598934816', '29', 5, 'term2'),
(100783, 'Reading', '319687624824', '29', 3, 'term2'),
(100784, 'Reading', '319106614813', '29', 4, 'term2'),
(100785, 'Reading', '319877104838', '29', 4, 'term2'),
(100786, 'Reading', '319490454819', '29', 3, 'term2'),
(100787, 'Reading', '319404654814', '29', 4, 'term2'),
(100788, 'Reading', '319822344839', '29', 4, 'term2'),
(100789, 'Reading', '319526754834', '29', 4, 'term2'),
(100790, 'Reading', '31959341488', '29', 3, 'term2'),
(100791, 'Reading', '319293314830', '29', 4, 'term2'),
(100792, 'Reading', '319124874827', '29', 0, 'term2'),
(100793, 'Reading', '319445634811', '29', 3, 'term2'),
(100794, 'Reading', '319111644833', '29', 4, 'term2'),
(100795, 'Writing', '319624264811', '30', 14, 'term2'),
(100796, 'Writing', '319888764839', '30', 12, 'term2'),
(100797, 'Writing', '319448664821', '30', 16, 'term2'),
(100798, 'Writing', '319411554836', '30', 17, 'term2'),
(100799, 'Writing', '319273884821', '30', 11, 'term2'),
(100800, 'Writing', '319628674826', '30', 14, 'term2'),
(100801, 'Writing', '31946188484', '30', 14, 'term2'),
(100802, 'Writing', '319604424826', '30', 13, 'term2'),
(100803, 'Writing', '319810584832', '30', 16, 'term2'),
(100804, 'Writing', '319598934816', '30', 15, 'term2'),
(100805, 'Writing', '319687624824', '30', 11, 'term2'),
(100806, 'Writing', '319106614813', '30', 13, 'term2'),
(100807, 'Writing', '319877104838', '30', 13, 'term2'),
(100808, 'Writing', '319490454819', '30', 12, 'term2'),
(100809, 'Writing', '319404654814', '30', 11, 'term2'),
(100810, 'Writing', '319822344839', '30', 13, 'term2'),
(100811, 'Writing', '319526754834', '30', 10, 'term2'),
(100812, 'Writing', '31959341488', '30', 9, 'term2'),
(100813, 'Writing', '319293314830', '30', 14, 'term2'),
(100814, 'Writing', '319124874827', '30', 0, 'term2'),
(100815, 'Writing', '319445634811', '30', 12, 'term2'),
(100816, 'Writing', '319111644833', '30', 15, 'term2'),
(100817, 'Expression Orale', '319624264811', '31', 4, 'term2'),
(100818, 'Expression Orale', '319888764839', '31', 5, 'term2'),
(100819, 'Expression Orale', '319448664821', '31', 5, 'term2'),
(100820, 'Expression Orale', '319411554836', '31', 5, 'term2'),
(100821, 'Expression Orale', '319273884821', '31', 4, 'term2'),
(100822, 'Expression Orale', '319628674826', '31', 5, 'term2'),
(100823, 'Expression Orale', '31946188484', '31', 5, 'term2'),
(100824, 'Expression Orale', '319604424826', '31', 4, 'term2'),
(100825, 'Expression Orale', '319810584832', '31', 5, 'term2'),
(100826, 'Expression Orale', '319598934816', '31', 5, 'term2'),
(100827, 'Expression Orale', '319687624824', '31', 5, 'term2'),
(100828, 'Expression Orale', '319106614813', '31', 3, 'term2'),
(100829, 'Expression Orale', '319877104838', '31', 4, 'term2'),
(100830, 'Expression Orale', '319490454819', '31', 4, 'term2'),
(100831, 'Expression Orale', '319404654814', '31', 4, 'term2'),
(100832, 'Expression Orale', '319822344839', '31', 4, 'term2'),
(100833, 'Expression Orale', '319526754834', '31', 4, 'term2'),
(100834, 'Expression Orale', '31959341488', '31', 4, 'term2'),
(100835, 'Expression Orale', '319293314830', '31', 4, 'term2'),
(100836, 'Expression Orale', '319124874827', '31', 0, 'term2'),
(100837, 'Expression Orale', '319445634811', '31', 5, 'term2'),
(100838, 'Expression Orale', '319111644833', '31', 5, 'term2'),
(100839, 'Expression Ecrite', '319624264811', '32', 6, 'term2'),
(100840, 'Expression Ecrite', '319888764839', '32', 4, 'term2'),
(100841, 'Expression Ecrite', '319448664821', '32', 4, 'term2'),
(100842, 'Expression Ecrite', '319411554836', '32', 5, 'term2'),
(100843, 'Expression Ecrite', '319273884821', '32', 3, 'term2'),
(100844, 'Expression Ecrite', '319628674826', '32', 6, 'term2'),
(100845, 'Expression Ecrite', '31946188484', '32', 6, 'term2'),
(100846, 'Expression Ecrite', '319604424826', '32', 5, 'term2'),
(100847, 'Expression Ecrite', '319810584832', '32', 6, 'term2'),
(100848, 'Expression Ecrite', '319598934816', '32', 5, 'term2'),
(100849, 'Expression Ecrite', '319687624824', '32', 4, 'term2'),
(100850, 'Expression Ecrite', '319106614813', '32', 4, 'term2'),
(100851, 'Expression Ecrite', '319877104838', '32', 6, 'term2'),
(100852, 'Expression Ecrite', '319490454819', '32', 6, 'term2'),
(100853, 'Expression Ecrite', '319404654814', '32', 4, 'term2'),
(100854, 'Expression Ecrite', '319822344839', '32', 5, 'term2'),
(100855, 'Expression Ecrite', '319526754834', '32', 5, 'term2'),
(100856, 'Expression Ecrite', '31959341488', '32', 4, 'term2'),
(100857, 'Expression Ecrite', '319293314830', '32', 5, 'term2'),
(100858, 'Expression Ecrite', '319124874827', '32', 0, 'term2'),
(100859, 'Expression Ecrite', '319445634811', '32', 3, 'term2'),
(100860, 'Expression Ecrite', '319111644833', '32', 6, 'term2'),
(100861, 'Metric system&Geometry', '319624264811', '33', 8, 'term2'),
(100862, 'Metric system&Geometry', '319888764839', '33', 4, 'term2'),
(100863, 'Metric system&Geometry', '319448664821', '33', 14, 'term2'),
(100864, 'Metric system&Geometry', '319411554836', '33', 7, 'term2'),
(100865, 'Metric system&Geometry', '319273884821', '33', 5, 'term2'),
(100866, 'Metric system&Geometry', '319628674826', '33', 7, 'term2'),
(100867, 'Metric system&Geometry', '31946188484', '33', 5, 'term2'),
(100868, 'Metric system&Geometry', '319604424826', '33', 6, 'term2'),
(100869, 'Metric system&Geometry', '319810584832', '33', 10, 'term2'),
(100870, 'Metric system&Geometry', '319598934816', '33', 4, 'term2'),
(100871, 'Metric system&Geometry', '319687624824', '33', 3, 'term2'),
(100872, 'Metric system&Geometry', '319106614813', '33', 7, 'term2'),
(100873, 'Metric system&Geometry', '319877104838', '33', 5, 'term2'),
(100874, 'Metric system&Geometry', '319490454819', '33', 7, 'term2'),
(100875, 'Metric system&Geometry', '319404654814', '33', 5, 'term2'),
(100876, 'Metric system&Geometry', '319822344839', '33', 7, 'term2'),
(100877, 'Metric system&Geometry', '319526754834', '33', 3, 'term2'),
(100878, 'Metric system&Geometry', '31959341488', '33', 8, 'term2'),
(100879, 'Metric system&Geometry', '319293314830', '33', 4, 'term2'),
(100880, 'Metric system&Geometry', '319124874827', '33', 0, 'term2'),
(100881, 'Metric system&Geometry', '319445634811', '33', 9, 'term2'),
(100882, 'Metric system&Geometry', '319111644833', '33', 13, 'term2'),
(100883, 'Arthemetic,Algebra&Statistics', '319624264811', '34', 8, 'term2'),
(100884, 'Arthemetic,Algebra&Statistics', '319888764839', '34', 5, 'term2'),
(100885, 'Arthemetic,Algebra&Statistics', '319448664821', '34', 13, 'term2'),
(100886, 'Arthemetic,Algebra&Statistics', '319411554836', '34', 8, 'term2'),
(100887, 'Arthemetic,Algebra&Statistics', '319273884821', '34', 5, 'term2'),
(100888, 'Arthemetic,Algebra&Statistics', '319628674826', '34', 8, 'term2'),
(100889, 'Arthemetic,Algebra&Statistics', '31946188484', '34', 6, 'term2'),
(100890, 'Arthemetic,Algebra&Statistics', '319604424826', '34', 9, 'term2'),
(100891, 'Arthemetic,Algebra&Statistics', '319810584832', '34', 10, 'term2'),
(100892, 'Arthemetic,Algebra&Statistics', '319598934816', '34', 4, 'term2'),
(100893, 'Arthemetic,Algebra&Statistics', '319687624824', '34', 5, 'term2'),
(100894, 'Arthemetic,Algebra&Statistics', '319106614813', '34', 4, 'term2'),
(100895, 'Arthemetic,Algebra&Statistics', '319877104838', '34', 6, 'term2'),
(100896, 'Arthemetic,Algebra&Statistics', '319490454819', '34', 7, 'term2'),
(100897, 'Arthemetic,Algebra&Statistics', '319404654814', '34', 8, 'term2'),
(100898, 'Arthemetic,Algebra&Statistics', '319822344839', '34', 6, 'term2'),
(100899, 'Arthemetic,Algebra&Statistics', '319526754834', '34', 4, 'term2'),
(100900, 'Arthemetic,Algebra&Statistics', '31959341488', '34', 9, 'term2'),
(100901, 'Arthemetic,Algebra&Statistics', '319293314830', '34', 5, 'term2'),
(100902, 'Arthemetic,Algebra&Statistics', '319124874827', '34', 0, 'term2'),
(100903, 'Arthemetic,Algebra&Statistics', '319445634811', '34', 8, 'term2'),
(100904, 'Arthemetic,Algebra&Statistics', '319111644833', '34', 12, 'term2'),
(100905, 'SET', '319624264811', '35', 15, 'term2'),
(100906, 'SET', '319888764839', '35', 10, 'term2'),
(100907, 'SET', '319448664821', '35', 17, 'term2'),
(100908, 'SET', '319411554836', '35', 16, 'term2'),
(100909, 'SET', '319273884821', '35', 12, 'term2'),
(100910, 'SET', '319628674826', '35', 12, 'term2'),
(100911, 'SET', '31946188484', '35', 15, 'term2'),
(100912, 'SET', '319604424826', '35', 13, 'term2'),
(100913, 'SET', '319810584832', '35', 13, 'term2'),
(100914, 'SET', '319598934816', '35', 13, 'term2'),
(100915, 'SET', '319687624824', '35', 14, 'term2'),
(100916, 'SET', '319106614813', '35', 14, 'term2'),
(100917, 'SET', '319877104838', '35', 13, 'term2'),
(100918, 'SET', '319490454819', '35', 13, 'term2'),
(100919, 'SET', '319404654814', '35', 12, 'term2'),
(100920, 'SET', '319822344839', '35', 16, 'term2'),
(100921, 'SET', '319526754834', '35', 12, 'term2'),
(100922, 'SET', '31959341488', '35', 13, 'term2'),
(100923, 'SET', '319293314830', '35', 14, 'term2'),
(100924, 'SET', '319124874827', '35', 0, 'term2'),
(100925, 'SET', '319445634811', '35', 12, 'term2'),
(100926, 'SET', '319111644833', '35', 13, 'term2'),
(100927, 'SOCIAL &RELIGIOUS STUDIES', '319624264811', '36', 12, 'term2'),
(100928, 'SOCIAL &RELIGIOUS STUDIES', '319888764839', '36', 9, 'term2'),
(100929, 'SOCIAL &RELIGIOUS STUDIES', '319448664821', '36', 17, 'term2'),
(100930, 'SOCIAL &RELIGIOUS STUDIES', '319411554836', '36', 15, 'term2'),
(100931, 'SOCIAL &RELIGIOUS STUDIES', '319273884821', '36', 11, 'term2'),
(100932, 'SOCIAL &RELIGIOUS STUDIES', '319628674826', '36', 11, 'term2'),
(100933, 'SOCIAL &RELIGIOUS STUDIES', '31946188484', '36', 12, 'term2'),
(100934, 'SOCIAL &RELIGIOUS STUDIES', '319604424826', '36', 12, 'term2'),
(100935, 'SOCIAL &RELIGIOUS STUDIES', '319810584832', '36', 14, 'term2'),
(100936, 'SOCIAL &RELIGIOUS STUDIES', '319598934816', '36', 15, 'term2'),
(100937, 'SOCIAL &RELIGIOUS STUDIES', '319687624824', '36', 8, 'term2'),
(100938, 'SOCIAL &RELIGIOUS STUDIES', '319106614813', '36', 14, 'term2'),
(100939, 'SOCIAL &RELIGIOUS STUDIES', '319877104838', '36', 15, 'term2'),
(100940, 'SOCIAL &RELIGIOUS STUDIES', '319490454819', '36', 11, 'term2'),
(100941, 'SOCIAL &RELIGIOUS STUDIES', '319404654814', '36', 12, 'term2'),
(100942, 'SOCIAL &RELIGIOUS STUDIES', '319822344839', '36', 15, 'term2'),
(100943, 'SOCIAL &RELIGIOUS STUDIES', '319526754834', '36', 10, 'term2'),
(100944, 'SOCIAL &RELIGIOUS STUDIES', '31959341488', '36', 10, 'term2'),
(100945, 'SOCIAL &RELIGIOUS STUDIES', '319293314830', '36', 14, 'term2'),
(100946, 'SOCIAL &RELIGIOUS STUDIES', '319124874827', '36', 0, 'term2'),
(100947, 'SOCIAL &RELIGIOUS STUDIES', '319445634811', '36', 12, 'term2'),
(100948, 'SOCIAL &RELIGIOUS STUDIES', '319111644833', '36', 12, 'term2'),
(100949, 'COMPUTER STDIES', '319624264811', '37', 3, 'term2'),
(100950, 'COMPUTER STDIES', '319888764839', '37', 2, 'term2'),
(100951, 'COMPUTER STDIES', '319448664821', '37', 5, 'term2'),
(100952, 'COMPUTER STDIES', '319411554836', '37', 3, 'term2'),
(100953, 'COMPUTER STDIES', '319273884821', '37', 3, 'term2'),
(100954, 'COMPUTER STDIES', '319628674826', '37', 3, 'term2'),
(100955, 'COMPUTER STDIES', '31946188484', '37', 3, 'term2'),
(100956, 'COMPUTER STDIES', '319604424826', '37', 4, 'term2'),
(100957, 'COMPUTER STDIES', '319810584832', '37', 2, 'term2'),
(100958, 'COMPUTER STDIES', '319598934816', '37', 3, 'term2'),
(100959, 'COMPUTER STDIES', '319687624824', '37', 3, 'term2'),
(100960, 'COMPUTER STDIES', '319106614813', '37', 3, 'term2'),
(100961, 'COMPUTER STDIES', '319877104838', '37', 2, 'term2'),
(100962, 'COMPUTER STDIES', '319490454819', '37', 2, 'term2'),
(100963, 'COMPUTER STDIES', '319404654814', '37', 2, 'term2'),
(100964, 'COMPUTER STDIES', '319822344839', '37', 3, 'term2'),
(100965, 'COMPUTER STDIES', '319526754834', '37', 3, 'term2'),
(100966, 'COMPUTER STDIES', '31959341488', '37', 2, 'term2'),
(100967, 'COMPUTER STDIES', '319293314830', '37', 3, 'term2'),
(100968, 'COMPUTER STDIES', '319124874827', '37', 0, 'term2'),
(100969, 'COMPUTER STDIES', '319445634811', '37', 3, 'term2'),
(100970, 'COMPUTER STDIES', '319111644833', '37', 3, 'term2'),
(100971, 'SPORT', '319624264811', '38', 4, 'term2'),
(100972, 'SPORT', '319888764839', '38', 4, 'term2'),
(100973, 'SPORT', '319448664821', '38', 4, 'term2'),
(100974, 'SPORT', '319411554836', '38', 4, 'term2'),
(100975, 'SPORT', '319273884821', '38', 3, 'term2'),
(100976, 'SPORT', '319628674826', '38', 4, 'term2'),
(100977, 'SPORT', '31946188484', '38', 4, 'term2'),
(100978, 'SPORT', '319604424826', '38', 4, 'term2'),
(100979, 'SPORT', '319810584832', '38', 3, 'term2'),
(100980, 'SPORT', '319598934816', '38', 4, 'term2'),
(100981, 'SPORT', '319687624824', '38', 4, 'term2'),
(100982, 'SPORT', '319106614813', '38', 4, 'term2'),
(100983, 'SPORT', '319877104838', '38', 4, 'term2'),
(100984, 'SPORT', '319490454819', '38', 4, 'term2'),
(100985, 'SPORT', '319404654814', '38', 4, 'term2'),
(100986, 'SPORT', '319822344839', '38', 4, 'term2'),
(100987, 'SPORT', '319526754834', '38', 3, 'term2'),
(100988, 'SPORT', '31959341488', '38', 3, 'term2'),
(100989, 'SPORT', '319293314830', '38', 4, 'term2'),
(100990, 'SPORT', '319124874827', '38', 0, 'term2'),
(100991, 'SPORT', '319445634811', '38', 4, 'term2'),
(100992, 'SPORT', '319111644833', '38', 4, 'term2'),
(100993, 'CREATIVE ARTS', '319624264811', '39', 3, 'term2'),
(100994, 'CREATIVE ARTS', '319888764839', '39', 4, 'term2'),
(100995, 'CREATIVE ARTS', '319448664821', '39', 3, 'term2'),
(100996, 'CREATIVE ARTS', '319411554836', '39', 4, 'term2'),
(100997, 'CREATIVE ARTS', '319273884821', '39', 4, 'term2'),
(100998, 'CREATIVE ARTS', '319628674826', '39', 4, 'term2'),
(100999, 'CREATIVE ARTS', '31946188484', '39', 4, 'term2'),
(1001000, 'CREATIVE ARTS', '319604424826', '39', 3, 'term2'),
(1001001, 'CREATIVE ARTS', '319810584832', '39', 3, 'term2'),
(1001002, 'CREATIVE ARTS', '319598934816', '39', 3, 'term2'),
(1001003, 'CREATIVE ARTS', '319687624824', '39', 3, 'term2'),
(1001004, 'CREATIVE ARTS', '319106614813', '39', 4, 'term2'),
(1001005, 'CREATIVE ARTS', '319877104838', '39', 3, 'term2'),
(1001006, 'CREATIVE ARTS', '319490454819', '39', 4, 'term2'),
(1001007, 'CREATIVE ARTS', '319404654814', '39', 4, 'term2'),
(1001008, 'CREATIVE ARTS', '319822344839', '39', 3, 'term2'),
(1001009, 'CREATIVE ARTS', '319526754834', '39', 3, 'term2'),
(1001010, 'CREATIVE ARTS', '31959341488', '39', 3, 'term2'),
(1001011, 'CREATIVE ARTS', '319293314830', '39', 3, 'term2'),
(1001012, 'CREATIVE ARTS', '319124874827', '39', 0, 'term2'),
(1001013, 'CREATIVE ARTS', '319445634811', '39', 3, 'term2'),
(1001014, 'CREATIVE ARTS', '319111644833', '39', 3, 'term2'),
(1001015, 'SOCIAL &RELIGIOUS STUDIES', '319624264811', '391', 12, 'term3'),
(1001016, 'SOCIAL &RELIGIOUS STUDIES', '319888764839', '391', 9, 'term3'),
(1001017, 'SOCIAL &RELIGIOUS STUDIES', '319448664821', '391', 17, 'term3'),
(1001018, 'SOCIAL &RELIGIOUS STUDIES', '319411554836', '391', 17, 'term3'),
(1001019, 'SOCIAL &RELIGIOUS STUDIES', '319273884821', '391', 13, 'term3'),
(1001020, 'SOCIAL &RELIGIOUS STUDIES', '319628674826', '391', 14, 'term3'),
(1001021, 'SOCIAL &RELIGIOUS STUDIES', '31946188484', '391', 16, 'term3'),
(1001022, 'SOCIAL &RELIGIOUS STUDIES', '319604424826', '391', 14, 'term3'),
(1001023, 'SOCIAL &RELIGIOUS STUDIES', '319810584832', '391', 16, 'term3'),
(1001024, 'SOCIAL &RELIGIOUS STUDIES', '319598934816', '391', 15, 'term3'),
(1001025, 'SOCIAL &RELIGIOUS STUDIES', '319687624824', '391', 13, 'term3'),
(1001026, 'SOCIAL &RELIGIOUS STUDIES', '319106614813', '391', 15, 'term3'),
(1001027, 'SOCIAL &RELIGIOUS STUDIES', '319877104838', '391', 14, 'term3'),
(1001028, 'SOCIAL &RELIGIOUS STUDIES', '319490454819', '391', 12, 'term3'),
(1001029, 'SOCIAL &RELIGIOUS STUDIES', '319404654814', '391', 14, 'term3'),
(1001030, 'SOCIAL &RELIGIOUS STUDIES', '319822344839', '391', 14, 'term3'),
(1001031, 'SOCIAL &RELIGIOUS STUDIES', '319526754834', '391', 11, 'term3'),
(1001032, 'SOCIAL &RELIGIOUS STUDIES', '31959341488', '391', 8, 'term3'),
(1001033, 'SOCIAL &RELIGIOUS STUDIES', '319293314830', '391', 14, 'term3'),
(1001034, 'SOCIAL &RELIGIOUS STUDIES', '319124874827', '391', 8, 'term3'),
(1001035, 'SOCIAL &RELIGIOUS STUDIES', '319445634811', '391', 12, 'term3'),
(1001036, 'SOCIAL &RELIGIOUS STUDIES', '319111644833', '391', 12, 'term3'),
(1001037, 'CREATIVE ARTS', '319624264811', '392', 3, 'term3'),
(1001038, 'CREATIVE ARTS', '319888764839', '392', 3, 'term3'),
(1001039, 'CREATIVE ARTS', '319448664821', '392', 4, 'term3'),
(1001040, 'CREATIVE ARTS', '319411554836', '392', 3, 'term3'),
(1001041, 'CREATIVE ARTS', '319273884821', '392', 4, 'term3'),
(1001042, 'CREATIVE ARTS', '319628674826', '392', 3, 'term3'),
(1001043, 'CREATIVE ARTS', '31946188484', '392', 3, 'term3'),
(1001044, 'CREATIVE ARTS', '319604424826', '392', 3, 'term3'),
(1001045, 'CREATIVE ARTS', '319810584832', '392', 3, 'term3'),
(1001046, 'CREATIVE ARTS', '319598934816', '392', 3, 'term3'),
(1001047, 'CREATIVE ARTS', '319687624824', '392', 3, 'term3'),
(1001048, 'CREATIVE ARTS', '319106614813', '392', 2, 'term3'),
(1001049, 'CREATIVE ARTS', '319877104838', '392', 3, 'term3'),
(1001050, 'CREATIVE ARTS', '319490454819', '392', 3, 'term3'),
(1001051, 'CREATIVE ARTS', '319404654814', '392', 3, 'term3'),
(1001052, 'CREATIVE ARTS', '319822344839', '392', 3, 'term3'),
(1001053, 'CREATIVE ARTS', '319526754834', '392', 3, 'term3'),
(1001054, 'CREATIVE ARTS', '31959341488', '392', 3, 'term3'),
(1001055, 'CREATIVE ARTS', '319293314830', '392', 3, 'term3'),
(1001056, 'CREATIVE ARTS', '319124874827', '392', 3, 'term3'),
(1001057, 'CREATIVE ARTS', '319445634811', '392', 3, 'term3'),
(1001058, 'CREATIVE ARTS', '319111644833', '392', 3, 'term3'),
(1001059, 'COMPUTER STDIES', '319624264811', '393', 5, 'term3'),
(1001060, 'COMPUTER STDIES', '319888764839', '393', 4, 'term3'),
(1001061, 'COMPUTER STDIES', '319448664821', '393', 5, 'term3'),
(1001062, 'COMPUTER STDIES', '319411554836', '393', 5, 'term3'),
(1001063, 'COMPUTER STDIES', '319273884821', '393', 5, 'term3'),
(1001064, 'COMPUTER STDIES', '319628674826', '393', 5, 'term3'),
(1001065, 'COMPUTER STDIES', '31946188484', '393', 5, 'term3'),
(1001066, 'COMPUTER STDIES', '319604424826', '393', 5, 'term3'),
(1001067, 'COMPUTER STDIES', '319810584832', '393', 5, 'term3'),
(1001068, 'COMPUTER STDIES', '319598934816', '393', 5, 'term3'),
(1001069, 'COMPUTER STDIES', '319687624824', '393', 5, 'term3'),
(1001070, 'COMPUTER STDIES', '319106614813', '393', 5, 'term3'),
(1001071, 'COMPUTER STDIES', '319877104838', '393', 5, 'term3'),
(1001072, 'COMPUTER STDIES', '319490454819', '393', 5, 'term3'),
(1001073, 'COMPUTER STDIES', '319404654814', '393', 5, 'term3'),
(1001074, 'COMPUTER STDIES', '319822344839', '393', 5, 'term3'),
(1001075, 'COMPUTER STDIES', '319526754834', '393', 5, 'term3'),
(1001076, 'COMPUTER STDIES', '31959341488', '393', 5, 'term3'),
(1001077, 'COMPUTER STDIES', '319293314830', '393', 5, 'term3'),
(1001078, 'COMPUTER STDIES', '319124874827', '393', 5, 'term3'),
(1001079, 'COMPUTER STDIES', '319445634811', '393', 5, 'term3'),
(1001080, 'COMPUTER STDIES', '319111644833', '393', 5, 'term3'),
(1001081, 'SPORT', '319624264811', '394', 3, 'term3'),
(1001082, 'SPORT', '319888764839', '394', 2, 'term3'),
(1001083, 'SPORT', '319448664821', '394', 3, 'term3'),
(1001084, 'SPORT', '319411554836', '394', 4, 'term3'),
(1001085, 'SPORT', '319273884821', '394', 5, 'term3'),
(1001086, 'SPORT', '319628674826', '394', 4, 'term3'),
(1001087, 'SPORT', '31946188484', '394', 3, 'term3'),
(1001088, 'SPORT', '319604424826', '394', 4, 'term3'),
(1001089, 'SPORT', '319810584832', '394', 4, 'term3'),
(1001090, 'SPORT', '319598934816', '394', 3, 'term3'),
(1001091, 'SPORT', '319687624824', '394', 3, 'term3'),
(1001092, 'SPORT', '319106614813', '394', 3, 'term3'),
(1001093, 'SPORT', '319877104838', '394', 3, 'term3'),
(1001094, 'SPORT', '319490454819', '394', 3, 'term3'),
(1001095, 'SPORT', '319404654814', '394', 3, 'term3'),
(1001096, 'SPORT', '319822344839', '394', 4, 'term3'),
(1001097, 'SPORT', '319526754834', '394', 3, 'term3'),
(1001098, 'SPORT', '31959341488', '394', 4, 'term3'),
(1001099, 'SPORT', '319293314830', '394', 3, 'term3'),
(1001100, 'SPORT', '319124874827', '394', 2, 'term3'),
(1001101, 'SPORT', '319445634811', '394', 3, 'term3'),
(1001102, 'SPORT', '319111644833', '394', 2, 'term3'),
(1001103, 'Reading', '319624264811', '396', 4, 'term3'),
(1001104, 'Reading', '319888764839', '396', 3, 'term3'),
(1001105, 'Reading', '319448664821', '396', 4, 'term3'),
(1001106, 'Reading', '319411554836', '396', 5, 'term3'),
(1001107, 'Reading', '319273884821', '396', 4, 'term3'),
(1001108, 'Reading', '319628674826', '396', 5, 'term3'),
(1001109, 'Reading', '31946188484', '396', 4, 'term3'),
(1001110, 'Reading', '319604424826', '396', 5, 'term3'),
(1001111, 'Reading', '319810584832', '396', 5, 'term3'),
(1001112, 'Reading', '319598934816', '396', 4, 'term3'),
(1001113, 'Reading', '319687624824', '396', 4, 'term3'),
(1001114, 'Reading', '319106614813', '396', 4, 'term3'),
(1001115, 'Reading', '319877104838', '396', 4, 'term3'),
(1001116, 'Reading', '319490454819', '396', 3, 'term3');
INSERT INTO `2019_quiz_marks` (`qid`, `cname`, `regno`, `quiz_id`, `marks`, `term`) VALUES
(1001117, 'Reading', '319404654814', '396', 3, 'term3'),
(1001118, 'Reading', '319822344839', '396', 5, 'term3'),
(1001119, 'Reading', '319526754834', '396', 4, 'term3'),
(1001120, 'Reading', '31959341488', '396', 3, 'term3'),
(1001121, 'Reading', '319293314830', '396', 5, 'term3'),
(1001122, 'Reading', '319124874827', '396', 4, 'term3'),
(1001123, 'Reading', '319445634811', '396', 3, 'term3'),
(1001124, 'Reading', '319111644833', '396', 4, 'term3'),
(1001125, 'Writing', '319624264811', '397', 14, 'term3'),
(1001126, 'Writing', '319888764839', '397', 11, 'term3'),
(1001127, 'Writing', '319448664821', '397', 18, 'term3'),
(1001128, 'Writing', '319411554836', '397', 16, 'term3'),
(1001129, 'Writing', '319273884821', '397', 13, 'term3'),
(1001130, 'Writing', '319628674826', '397', 15, 'term3'),
(1001131, 'Writing', '31946188484', '397', 16, 'term3'),
(1001132, 'Writing', '319604424826', '397', 13, 'term3'),
(1001133, 'Writing', '319810584832', '397', 16, 'term3'),
(1001134, 'Writing', '319598934816', '397', 16, 'term3'),
(1001135, 'Writing', '319687624824', '397', 9, 'term3'),
(1001136, 'Writing', '319106614813', '397', 13, 'term3'),
(1001137, 'Writing', '319877104838', '397', 15, 'term3'),
(1001138, 'Writing', '319490454819', '397', 14, 'term3'),
(1001139, 'Writing', '319404654814', '397', 11, 'term3'),
(1001140, 'Writing', '319822344839', '397', 14, 'term3'),
(1001141, 'Writing', '319526754834', '397', 9, 'term3'),
(1001142, 'Writing', '31959341488', '397', 8, 'term3'),
(1001143, 'Writing', '319293314830', '397', 16, 'term3'),
(1001144, 'Writing', '319124874827', '397', 8, 'term3'),
(1001145, 'Writing', '319445634811', '397', 13, 'term3'),
(1001146, 'Writing', '319111644833', '397', 15, 'term3'),
(1001147, 'Expression Orale', '319624264811', '398', 4, 'term3'),
(1001148, 'Expression Orale', '319888764839', '398', 4, 'term3'),
(1001149, 'Expression Orale', '319448664821', '398', 4, 'term3'),
(1001150, 'Expression Orale', '319411554836', '398', 3, 'term3'),
(1001151, 'Expression Orale', '319273884821', '398', 3, 'term3'),
(1001152, 'Expression Orale', '319628674826', '398', 4, 'term3'),
(1001153, 'Expression Orale', '31946188484', '398', 4, 'term3'),
(1001154, 'Expression Orale', '319604424826', '398', 4, 'term3'),
(1001155, 'Expression Orale', '319810584832', '398', 3, 'term3'),
(1001156, 'Expression Orale', '319598934816', '398', 3, 'term3'),
(1001157, 'Expression Orale', '319687624824', '398', 3, 'term3'),
(1001158, 'Expression Orale', '319106614813', '398', 3, 'term3'),
(1001159, 'Expression Orale', '319877104838', '398', 3, 'term3'),
(1001160, 'Expression Orale', '319490454819', '398', 3, 'term3'),
(1001161, 'Expression Orale', '319404654814', '398', 3, 'term3'),
(1001162, 'Expression Orale', '319822344839', '398', 3, 'term3'),
(1001163, 'Expression Orale', '319526754834', '398', 3, 'term3'),
(1001164, 'Expression Orale', '31959341488', '398', 3, 'term3'),
(1001165, 'Expression Orale', '319293314830', '398', 4, 'term3'),
(1001166, 'Expression Orale', '319124874827', '398', 3, 'term3'),
(1001167, 'Expression Orale', '319445634811', '398', 3, 'term3'),
(1001168, 'Expression Orale', '319111644833', '398', 5, 'term3'),
(1001169, 'Expression Ecrite', '319624264811', '399', 3, 'term3'),
(1001170, 'Expression Ecrite', '319888764839', '399', 4, 'term3'),
(1001171, 'Expression Ecrite', '319448664821', '399', 7, 'term3'),
(1001172, 'Expression Ecrite', '319411554836', '399', 4, 'term3'),
(1001173, 'Expression Ecrite', '319273884821', '399', 2, 'term3'),
(1001174, 'Expression Ecrite', '319628674826', '399', 4, 'term3'),
(1001175, 'Expression Ecrite', '31946188484', '399', 3, 'term3'),
(1001176, 'Expression Ecrite', '319604424826', '399', 2, 'term3'),
(1001177, 'Expression Ecrite', '319810584832', '399', 4, 'term3'),
(1001178, 'Expression Ecrite', '319598934816', '399', 2, 'term3'),
(1001179, 'Expression Ecrite', '319687624824', '399', 4, 'term3'),
(1001180, 'Expression Ecrite', '319106614813', '399', 6, 'term3'),
(1001181, 'Expression Ecrite', '319877104838', '399', 4, 'term3'),
(1001182, 'Expression Ecrite', '319490454819', '399', 2, 'term3'),
(1001183, 'Expression Ecrite', '319404654814', '399', 4, 'term3'),
(1001184, 'Expression Ecrite', '319822344839', '399', 5, 'term3'),
(1001185, 'Expression Ecrite', '319526754834', '399', 3, 'term3'),
(1001186, 'Expression Ecrite', '31959341488', '399', 6, 'term3'),
(1001187, 'Expression Ecrite', '319293314830', '399', 4, 'term3'),
(1001188, 'Expression Ecrite', '319124874827', '399', 2, 'term3'),
(1001189, 'Expression Ecrite', '319445634811', '399', 3, 'term3'),
(1001190, 'Expression Ecrite', '319111644833', '399', 9, 'term3'),
(1001191, 'GUSOMA', '319624264811', '400', 4, 'term3'),
(1001192, 'GUSOMA', '319888764839', '400', 3, 'term3'),
(1001193, 'GUSOMA', '319448664821', '400', 4, 'term3'),
(1001194, 'GUSOMA', '319411554836', '400', 4, 'term3'),
(1001195, 'GUSOMA', '319273884821', '400', 4, 'term3'),
(1001196, 'GUSOMA', '319628674826', '400', 4, 'term3'),
(1001197, 'GUSOMA', '31946188484', '400', 4, 'term3'),
(1001198, 'GUSOMA', '319604424826', '400', 4, 'term3'),
(1001199, 'GUSOMA', '319810584832', '400', 4, 'term3'),
(1001200, 'GUSOMA', '319598934816', '400', 4, 'term3'),
(1001201, 'GUSOMA', '319687624824', '400', 4, 'term3'),
(1001202, 'GUSOMA', '319106614813', '400', 3, 'term3'),
(1001203, 'GUSOMA', '319877104838', '400', 4, 'term3'),
(1001204, 'GUSOMA', '319490454819', '400', 3, 'term3'),
(1001205, 'GUSOMA', '319404654814', '400', 4, 'term3'),
(1001206, 'GUSOMA', '319822344839', '400', 3, 'term3'),
(1001207, 'GUSOMA', '319526754834', '400', 3, 'term3'),
(1001208, 'GUSOMA', '31959341488', '400', 3, 'term3'),
(1001209, 'GUSOMA', '319293314830', '400', 3, 'term3'),
(1001210, 'GUSOMA', '319124874827', '400', 3, 'term3'),
(1001211, 'GUSOMA', '319445634811', '400', 4, 'term3'),
(1001212, 'GUSOMA', '319111644833', '400', 3, 'term3'),
(1001213, 'KWANDIKA', '319624264811', '401', 15, 'term3'),
(1001214, 'KWANDIKA', '319888764839', '401', 15, 'term3'),
(1001215, 'KWANDIKA', '319448664821', '401', 17, 'term3'),
(1001216, 'KWANDIKA', '319411554836', '401', 16, 'term3'),
(1001217, 'KWANDIKA', '319273884821', '401', 15, 'term3'),
(1001218, 'KWANDIKA', '319628674826', '401', 14, 'term3'),
(1001219, 'KWANDIKA', '31946188484', '401', 14, 'term3'),
(1001220, 'KWANDIKA', '319604424826', '401', 14, 'term3'),
(1001221, 'KWANDIKA', '319810584832', '401', 15, 'term3'),
(1001222, 'KWANDIKA', '319598934816', '401', 15, 'term3'),
(1001223, 'KWANDIKA', '319687624824', '401', 12, 'term3'),
(1001224, 'KWANDIKA', '319106614813', '401', 13, 'term3'),
(1001225, 'KWANDIKA', '319877104838', '401', 15, 'term3'),
(1001226, 'KWANDIKA', '319490454819', '401', 12, 'term3'),
(1001227, 'KWANDIKA', '319404654814', '401', 15, 'term3'),
(1001228, 'KWANDIKA', '319822344839', '401', 14, 'term3'),
(1001229, 'KWANDIKA', '319526754834', '401', 13, 'term3'),
(1001230, 'KWANDIKA', '31959341488', '401', 15, 'term3'),
(1001231, 'KWANDIKA', '319293314830', '401', 15, 'term3'),
(1001232, 'KWANDIKA', '319124874827', '401', 13, 'term3'),
(1001233, 'KWANDIKA', '319445634811', '401', 13, 'term3'),
(1001234, 'KWANDIKA', '319111644833', '401', 15, 'term3'),
(1001235, 'Metric system&Geometry', '319624264811', '402', 9, 'term3'),
(1001236, 'Metric system&Geometry', '319888764839', '402', 7, 'term3'),
(1001237, 'Metric system&Geometry', '319448664821', '402', 14, 'term3'),
(1001238, 'Metric system&Geometry', '319411554836', '402', 11, 'term3'),
(1001239, 'Metric system&Geometry', '319273884821', '402', 8, 'term3'),
(1001240, 'Metric system&Geometry', '319628674826', '402', 10, 'term3'),
(1001241, 'Metric system&Geometry', '31946188484', '402', 9, 'term3'),
(1001242, 'Metric system&Geometry', '319604424826', '402', 11, 'term3'),
(1001243, 'Metric system&Geometry', '319810584832', '402', 11, 'term3'),
(1001244, 'Metric system&Geometry', '319598934816', '402', 6, 'term3'),
(1001245, 'Metric system&Geometry', '319687624824', '402', 5, 'term3'),
(1001246, 'Metric system&Geometry', '319106614813', '402', 7, 'term3'),
(1001247, 'Metric system&Geometry', '319877104838', '402', 7, 'term3'),
(1001248, 'Metric system&Geometry', '319490454819', '402', 11, 'term3'),
(1001249, 'Metric system&Geometry', '319404654814', '402', 8, 'term3'),
(1001250, 'Metric system&Geometry', '319822344839', '402', 9, 'term3'),
(1001251, 'Metric system&Geometry', '319526754834', '402', 8, 'term3'),
(1001252, 'Metric system&Geometry', '31959341488', '402', 11, 'term3'),
(1001253, 'Metric system&Geometry', '319293314830', '402', 8, 'term3'),
(1001254, 'Metric system&Geometry', '319124874827', '402', 4, 'term3'),
(1001255, 'Metric system&Geometry', '319445634811', '402', 8, 'term3'),
(1001256, 'Metric system&Geometry', '319111644833', '402', 14, 'term3'),
(1001257, 'Arthemetic,Algebra&Statistics', '319624264811', '403', 9, 'term3'),
(1001258, 'Arthemetic,Algebra&Statistics', '319888764839', '403', 8, 'term3'),
(1001259, 'Arthemetic,Algebra&Statistics', '319448664821', '403', 14, 'term3'),
(1001260, 'Arthemetic,Algebra&Statistics', '319411554836', '403', 11, 'term3'),
(1001261, 'Arthemetic,Algebra&Statistics', '319273884821', '403', 8, 'term3'),
(1001262, 'Arthemetic,Algebra&Statistics', '319628674826', '403', 12, 'term3'),
(1001263, 'Arthemetic,Algebra&Statistics', '31946188484', '403', 10, 'term3'),
(1001264, 'Arthemetic,Algebra&Statistics', '319604424826', '403', 11, 'term3'),
(1001265, 'Arthemetic,Algebra&Statistics', '319810584832', '403', 10, 'term3'),
(1001266, 'Arthemetic,Algebra&Statistics', '319598934816', '403', 7, 'term3'),
(1001267, 'Arthemetic,Algebra&Statistics', '319687624824', '403', 7, 'term3'),
(1001268, 'Arthemetic,Algebra&Statistics', '319106614813', '403', 7, 'term3'),
(1001269, 'Arthemetic,Algebra&Statistics', '319877104838', '403', 9, 'term3'),
(1001270, 'Arthemetic,Algebra&Statistics', '319490454819', '403', 11, 'term3'),
(1001271, 'Arthemetic,Algebra&Statistics', '319404654814', '403', 8, 'term3'),
(1001272, 'Arthemetic,Algebra&Statistics', '319822344839', '403', 9, 'term3'),
(1001273, 'Arthemetic,Algebra&Statistics', '319526754834', '403', 9, 'term3'),
(1001274, 'Arthemetic,Algebra&Statistics', '31959341488', '403', 10, 'term3'),
(1001275, 'Arthemetic,Algebra&Statistics', '319293314830', '403', 8, 'term3'),
(1001276, 'Arthemetic,Algebra&Statistics', '319124874827', '403', 7, 'term3'),
(1001277, 'Arthemetic,Algebra&Statistics', '319445634811', '403', 9, 'term3'),
(1001278, 'Arthemetic,Algebra&Statistics', '319111644833', '403', 13, 'term3'),
(1001279, 'SET', '319624264811', '404', 14, 'term3'),
(1001280, 'SET', '319888764839', '404', 9, 'term3'),
(1001281, 'SET', '319448664821', '404', 17, 'term3'),
(1001282, 'SET', '319411554836', '404', 15, 'term3'),
(1001283, 'SET', '319273884821', '404', 13, 'term3'),
(1001284, 'SET', '319628674826', '404', 13, 'term3'),
(1001285, 'SET', '31946188484', '404', 16, 'term3'),
(1001286, 'SET', '319604424826', '404', 17, 'term3'),
(1001287, 'SET', '319810584832', '404', 17, 'term3'),
(1001288, 'SET', '319598934816', '404', 14, 'term3'),
(1001289, 'SET', '319687624824', '404', 18, 'term3'),
(1001290, 'SET', '319106614813', '404', 17, 'term3'),
(1001291, 'SET', '319877104838', '404', 11, 'term3'),
(1001292, 'SET', '319490454819', '404', 11, 'term3'),
(1001293, 'SET', '319404654814', '404', 17, 'term3'),
(1001294, 'SET', '319822344839', '404', 19, 'term3'),
(1001295, 'SET', '319526754834', '404', 10, 'term3'),
(1001296, 'SET', '31959341488', '404', 10, 'term3'),
(1001297, 'SET', '319293314830', '404', 13, 'term3'),
(1001298, 'SET', '319124874827', '404', 14, 'term3'),
(1001299, 'SET', '319445634811', '404', 14, 'term3'),
(1001300, 'SET', '319111644833', '404', 17, 'term3'),
(1001301, 'Expression Orale', '319624264811', '180', 0, 'term1'),
(1001302, 'Expression Orale', '319888764839', '180', 0, 'term1'),
(1001303, 'Expression Orale', '319448664821', '180', 0, 'term1'),
(1001304, 'Expression Orale', '319411554836', '180', 0, 'term1'),
(1001305, 'Expression Orale', '319273884821', '180', 0, 'term1'),
(1001306, 'Expression Orale', '319628674826', '180', 0, 'term1'),
(1001307, 'Expression Orale', '31946188484', '180', 0, 'term1'),
(1001308, 'Expression Orale', '319604424826', '180', 0, 'term1'),
(1001309, 'Expression Orale', '319810584832', '180', 0, 'term1'),
(1001310, 'Expression Orale', '319598934816', '180', 0, 'term1'),
(1001311, 'Expression Orale', '319687624824', '180', 0, 'term1'),
(1001312, 'Expression Orale', '319106614813', '180', 0, 'term1'),
(1001313, 'Expression Orale', '319877104838', '180', 0, 'term1'),
(1001314, 'Expression Orale', '319490454819', '180', 0, 'term1'),
(1001315, 'Expression Orale', '319404654814', '180', 0, 'term1'),
(1001316, 'Expression Orale', '319822344839', '180', 0, 'term1'),
(1001317, 'Expression Orale', '319526754834', '180', 0, 'term1'),
(1001318, 'Expression Orale', '31959341488', '180', 0, 'term1'),
(1001319, 'Expression Orale', '319293314830', '180', 0, 'term1'),
(1001320, 'Expression Orale', '319124874827', '180', 0, 'term1'),
(1001321, 'Expression Orale', '319445634811', '180', 0, 'term1'),
(1001322, 'Expression Orale', '319111644833', '180', 0, 'term1');

-- --------------------------------------------------------

--
-- Table structure for table `2019_restaurent`
--

CREATE TABLE `2019_restaurent` (
  `id` int(11) NOT NULL,
  `reg` varchar(255) NOT NULL,
  `payed` bigint(20) NOT NULL,
  `rleft` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2019_restaurent`
--

INSERT INTO `2019_restaurent` (`id`, `reg`, `payed`, `rleft`) VALUES
(1, '319624264811', 0, 900),
(2, '319888764839', 0, 900),
(3, '319448664821', 0, 900),
(4, '319411554836', 0, 900),
(5, '319273884821', 0, 900);

-- --------------------------------------------------------

--
-- Table structure for table `2019_students`
--

CREATE TABLE `2019_students` (
  `sid` int(11) NOT NULL,
  `sdms` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `regno` double NOT NULL,
  `fn` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `dof` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `PROVINCE` varchar(255) NOT NULL,
  `DISTRICT` varchar(255) NOT NULL,
  `SECTOR` varchar(255) NOT NULL,
  `CELL` varchar(255) NOT NULL,
  `VIRAGE` varchar(255) NOT NULL,
  `father` varchar(255) NOT NULL,
  `mother` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `tel1` varchar(255) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2019_students`
--

INSERT INTO `2019_students` (`sid`, `sdms`, `class`, `opt`, `regno`, `fn`, `ln`, `dof`, `age`, `gender`, `PROVINCE`, `DISTRICT`, `SECTOR`, `CELL`, `VIRAGE`, `father`, `mother`, `tel`, `tel1`, `photo`) VALUES
(72, '360902190045', 'P6A', 'PRIMARY', 319628674826, 'IRANEZEZA BUPFURA muramba', 'NELLY CKENEY', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/319628674826.jpg'),
(73, '360902200711320160296', 'P6A', 'PRIMARY', 31946188484, 'IRERA', 'FABRICE', '', '', 'MALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/31946188484.jpg'),
(75, '360902190046', 'P6A', 'PRIMARY', 319810584832, 'IRUMVA', 'MUGISHA BLAISE', '', '', 'MALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/319810584832.jpg'),
(76, '360902200811320160195', 'P6A', 'PRIMARY', 319598934816, 'KAYEGO', 'NYANGE YVAN', '', '', 'MALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/319598934816.jpg'),
(77, '360902200711320160283', 'P6A', 'PRIMARY', 319687624824, 'MANZI', 'LEON CEDRICK', '', '', 'MALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/319687624824.jpg'),
(78, '360902190047', 'P6A', 'PRIMARY', 319106614813, 'MUGISHA', 'VALENTIN', '', '', 'MALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/319106614813.jpg'),
(79, '360902200811320160289', 'P6A', 'PRIMARY', 319877104838, 'MUHIRWA', 'ENOCK', '', '', 'MALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/319877104838.jpg'),
(80, '360902190048', 'P6A', 'PRIMARY', 319490454819, 'NDIKUMANA', 'CREDO ERNEST', '', '', 'MALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/319490454819.jpg'),
(81, '360902200411420160142', 'P6A', 'PRIMARY', 319404654814, 'NDIKUMWENAYO', 'GENTIL', '', '', 'MALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/319404654814.jpg'),
(82, '360902190049', 'P6A', 'PRIMARY', 319822344839, 'NGABONZIZA', 'MUGISHA SIMPLICE', '', '', 'MALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/319822344839.jpg'),
(83, '360902200721320160477', 'P6A', 'PRIMARY', 319526754834, 'NIYIBIZI', 'ALINE', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/319526754834.jpg'),
(84, '360902190050', 'P6A', 'PRIMARY', 31959341488, 'NIYINGIZE', 'HONORINE', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/31959341488.jpg'),
(85, '360902190051', 'P6A', 'PRIMARY', 319293314830, 'NIYONGABO', 'BLAISE', '', '', 'MALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/319293314830.jpg'),
(86, '360902200521420160101', 'P6A', 'PRIMARY', 319124874827, 'UMUKUNZI', 'NADINE', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/319124874827.jpg'),
(87, '360902190052', 'P6A', 'PRIMARY', 319445634811, 'URINZWENIMANA', 'DIVINE', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/319445634811.jpg'),
(88, '360902200821320160286', 'P6A', 'PRIMARY', 319111644833, 'UWIZEYE UMUKUNDWA', 'JOSEE EMMANUELLA', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/319111644833.jpg'),
(89, '360902200711320160265', 'P6B', 'PRIMARY', 319599833131, 'BANZUSENGE', 'GHISLAIN', '', '', 'MALE', '', '', '', '', '', '', '', '', '', 'izubaedu_ccak/319599833131.PNG'),
(90, '360902190053', 'P6B', 'PRIMARY', 319250673119, 'DUSENGE', 'HOSEE FRATERNE', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(91, '360902200621420160492', 'P6B', 'PRIMARY', 31919795314, 'DUSHIME', 'FRIDA IRENE', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', ''),
(92, '360902200711320160267', 'P6B', 'PRIMARY', 31977199318, 'HITIMANA', 'REPONSE PATIENT', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(93, '360902200621320160275', 'P6B', 'PRIMARY', 319329913111, 'IRAKOZE', 'GISELE', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', ''),
(94, '360902190054', 'P6B', 'PRIMARY', 319136433111, 'IRAKOZE', 'RUTH', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', ''),
(95, '360902200711320160187', 'P6B', 'PRIMARY', 319541523132, 'IRINGIRE', 'IRIHO HUBERT', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(96, '360902190055', 'P6B', 'PRIMARY', 319242503126, 'ISHIMWE', 'BONHEUR', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(97, '360902190056', 'P6B', 'PRIMARY', 319227303117, 'ISHIMWE', 'HERITIER', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(98, '360902200721420160128', 'P6B', 'PRIMARY', 31965268319, 'ISHIMWE', 'UWASE GENTILLE', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', ''),
(99, '360902200611320160181', 'P6B', 'PRIMARY', 31975534312, 'MUGISHAWACU', 'LUCKY CHARMAT', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(100, '360902200711420160158', 'P6B', 'PRIMARY', 319562513128, 'MUGWANEZA', 'STEVEN', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(101, '360902200711320160278', 'P6B', 'PRIMARY', 319141623126, 'MUNEZERO', 'LANDRY JAMES', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(102, '360902200711320160291', 'P6B', 'PRIMARY', 319208483125, 'MWIZERWA', 'ABDOUNURU', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(103, '360902190057', 'P6B', 'PRIMARY', 319360743122, 'NISINGIZWE', 'GEDEON', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(104, '360902200721320160282', 'P6B', 'PRIMARY', 319577783136, 'NIYIKOMEYE', 'RUTH', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', ''),
(105, '360902200811320160203', 'P6B', 'PRIMARY', 319779373115, 'NIYOMURINZI', 'PIERRE CARDINAL', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(106, '360902200611420160145', 'P6B', 'PRIMARY', 319614533133, 'NIYONKURU', 'JONATHAN', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(107, '360902190058', 'P6B', 'PRIMARY', 31931467312, 'RUGIRA', 'STEVEN', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(108, '360902200721320160300', 'P6B', 'PRIMARY', 319654403128, 'UMUGISHA', 'EMMANUELLA', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', ''),
(109, '360902200721320160177', 'P6B', 'PRIMARY', 319833233139, 'UWASE', 'KIRABO EMELYNE', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', ''),
(110, '360902200711320160287', 'P6B', 'PRIMARY', 319863753118, 'UWIMANA', 'ALLY HERTIER', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(111, '', 'P5A', 'PRIMARY', 319128833222, 'BAGIRIMFURA JEAN', 'DE DIEU DIEU', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(112, '', 'P5A', 'PRIMARY', 319271453239, 'BAHIRE', 'NIKITA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(113, '', 'P5A', 'PRIMARY', 31943035322, 'BAHO', 'RUKUNDO ACHILLE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(114, '', 'P5A', 'PRIMARY', 31945061321, 'HAVUGIMANA', 'ALAIN CALVIN', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(115, '', 'P5A', 'PRIMARY', 319659913231, 'HIRWA', 'ELVIS ', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(116, '', 'P5A', 'PRIMARY', 31981936326, 'HUMURA', 'IRAHARI RAISSA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(117, '', 'P5A', 'PRIMARY', 319787383219, 'INGABIRE', 'FLOWER', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(118, '', 'P5A', 'PRIMARY', 31959062328, 'IRAMBONA', 'ELYSEE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(119, '', 'P5A', 'PRIMARY', 319416593217, 'IRIHO MU.', 'SHA. MBASAYEVU', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(120, '', 'P5A', 'PRIMARY', 319519973223, 'ISHIMWE', 'CARINE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(121, '', 'P5A', 'PRIMARY', 319753103215, 'ISHIMWE', 'ELITE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(122, '', 'P5A', 'PRIMARY', 319374293231, 'ISHIMWE', 'ESTHER', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(123, '', 'P5A', 'PRIMARY', 31934666322, 'KAMIKAZI', 'SIERRA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(124, '', 'P5A', 'PRIMARY', 319369163225, 'MUKAHIRWA', 'NELLY', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(125, '', 'P5A', 'PRIMARY', 319385783222, 'MUNEZERO', 'MAHORO JOY', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(126, '', 'P5A', 'PRIMARY', 319194693234, 'NDIZEYE', 'FORWARD', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(127, '', 'P5A', 'PRIMARY', 31930657326, 'NIYOGUSHIMWA REGIS', ' ', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(128, '', 'P5A', 'PRIMARY', 319676223229, 'NIYOKWIZERWA', 'ISAAC CLEO', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(129, '', 'P5A', 'PRIMARY', 319826573211, 'NIYOKWIZERWA', 'OLIVIER', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(130, '', 'P5A', 'PRIMARY', 319352143210, 'NIYOMUGISHA', 'RACHEL', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(131, '', 'P5A', 'PRIMARY', 319794883210, 'NIYONIRINGIYE', 'DIDIER', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(132, '', 'P5A', 'PRIMARY', 319285293219, 'NIYONKURU', 'SABIN SALOM0N', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(133, '', 'P5A', 'PRIMARY', 31989556324, 'NKURUNZIZA', 'SHEM GERVAIS', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(134, '', 'P5A', 'PRIMARY', 31912787327, 'NSABIMANA', 'JEAN CLAUDE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(135, '', 'P5A', 'PRIMARY', 319622293237, 'NSHIMIYIMANA', 'PLACIDE KEVIN', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(136, '', 'P5A', 'PRIMARY', 319245393224, 'NTEZIRYAYO', 'HIDJA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(137, '', 'P5A', 'PRIMARY', 31910663325, 'NYIRAMUGISHA', 'PASCALINE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(138, '', 'P5A', 'PRIMARY', 319221373210, 'UJENEZA', 'PEACE BLANDINE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(139, '', 'P5A', 'PRIMARY', 319798293231, 'UMURERWA', 'NICE ', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(140, '', 'P5A', 'PRIMARY', 319212573234, 'UMUTONIWASE', 'RATIFA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(141, '', 'P5A', 'PRIMARY', 319400453228, 'UWASE', 'NALADA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(142, '', 'P5A', 'PRIMARY', 319591663237, 'UWASE', 'NELLY', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(143, '', 'P5A', 'PRIMARY', 319154663218, 'UWIMPUHWE', 'ADELINE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(144, '30609040072019', 'P6B', 'PRIMARY', 3193109613, 'HIRWA', 'CHRIS', '2007-08-18', '12', 'Male', 'west', 'Rusizi', 'Kamembe', 'Kamashangi', 'Kadasomwa', 'MUGIRIMANA KAYIJUKA JEAN', 'MUKANKURUNZIZA IRENE', '0788829240', '', ''),
(145, '', 'P5B', 'PRIMARY', 31948510006, 'BAHOZA', 'JOSUE ANELKA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(146, '', 'P5B', 'PRIMARY', 319643610038, 'BIZIMANA', 'EVODE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(147, '', 'P5B', 'PRIMARY', 319817930015, 'BYISHIMO', 'ZACHEE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(148, '', 'P5B', 'PRIMARY', 319427960038, 'GANZA', 'PEACE ACSAH', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(149, '', 'P5B', 'PRIMARY', 31981931006, 'GANZA', 'VANWISE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(150, '', 'P5B', 'PRIMARY', 319193300038, 'GISUBIZO', 'ELIANE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(151, '', 'P5B', 'PRIMARY', 319216220028, 'HATEGEKIMANA DAVID', 'BECKHAM ', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(152, '', 'P5B', 'PRIMARY', 319618450012, 'IGIRANEZA', 'JOTHAM', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(153, '', 'P5B', 'PRIMARY', 319232640033, 'IGIRANEZA', 'MUGISHA HERITIER', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(154, '', 'P5B', 'PRIMARY', 319213600012, 'INEZA', 'GULAINE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(155, '', 'P5B', 'PRIMARY', 319506130013, 'IRADUKUNDA', 'KEVINE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(156, '', 'P5B', 'PRIMARY', 319616740035, 'IRANKUNDA', 'EDISON', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(157, '', 'P5B', 'PRIMARY', 319563650033, 'IRANKUNDA', 'JUSTIN', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(158, '', 'P5B', 'PRIMARY', 319851110031, 'IRUMVA', 'UWASE BLANDINE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(159, '', 'P5B', 'PRIMARY', 31979392001, 'ITUZE', 'SHIMO LAISSA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(160, '', 'P5B', 'PRIMARY', 319102130010, 'KAYITAMBE SABINE', 'MARY ', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(161, '', 'P5B', 'PRIMARY', 319852260015, 'KAYITARE', 'DIDIER', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(162, '', 'P5B', 'PRIMARY', 319599840031, 'KAZENEZA', 'AIMEE DOUCE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(163, '', 'P5B', 'PRIMARY', 319825990015, 'MUHIGIRWA TETA', 'CYNTHIA ', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(164, '', 'P5B', 'PRIMARY', 319671220037, 'MUHIGIRWA', 'SANGWA BRUNO', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(165, '', 'P5B', 'PRIMARY', 319105680039, 'MUHIRWA', 'REMY', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(166, '', 'P5B', 'PRIMARY', 319346360028, 'MUSHIMIYIMANA', 'GHISLAINE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(167, '', 'P5B', 'PRIMARY', 319242880012, 'MUTABAZI', 'HAPPY ', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(168, '', 'P5B', 'PRIMARY', 319883820013, 'NDAYIKUNDA', 'PRINCE ', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(169, '', 'P5B', 'PRIMARY', 319696700010, 'NDAYIZEYE', 'JOEL', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(170, '', 'P5B', 'PRIMARY', 319703700011, 'NDIZEYE', 'BRUCE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(171, '', 'P5B', 'PRIMARY', 319891650018, 'NIGANZE NZIZA', 'SHIBU IRENE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(172, '', 'P5B', 'PRIMARY', 319390310012, 'NIKUZWE', 'JOSELINE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(173, '', 'P5B', 'PRIMARY', 319200230011, 'NINZIZA', 'LINA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(174, '', 'P5B', 'PRIMARY', 319495870017, 'NIYOMUNGERI', 'AIME CHRISTIAN', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(175, '', 'P5B', 'PRIMARY', 31943487003, 'NYIRAMWIZA', 'FRIDAUSSI', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(176, '', 'P5B', 'PRIMARY', 319403250014, 'TUYISHIME', 'ALINE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(177, '', 'P5B', 'PRIMARY', 31914341009, 'UMUHOZAWASE', 'GRACE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(178, '', 'P5B', 'PRIMARY', 31937439001, 'UMUTONIWASE', 'BENITHA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(179, '', 'P5B', 'PRIMARY', 319621160028, 'UWANYIRIGIRA', 'ADELINE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(204, '', 'P3B', 'PRIMARY', 319856893830, 'ABIJURU', 'CHRISTIAN AGNEAU', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(205, '', 'P3B', 'PRIMARY', 319871143826, 'AMANI', 'ELFRIDA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(206, '', 'P3B', 'PRIMARY', 319879973824, 'ASINEZA', 'ANESSA DELICIA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(207, '', 'P3B', 'PRIMARY', 31965625385, 'BERWA', 'JEAN PAUL', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(208, '', 'P3B', 'PRIMARY', 319222373828, 'BINGUYENEZA', 'IRIZA PEACE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(209, '', 'P3B', 'PRIMARY', 319265533817, 'DUSHIMIMANA', 'BELISE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(210, '', 'P3B', 'PRIMARY', 31983620387, 'HIRWA', 'SALOMON', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(211, '', 'P3B', 'PRIMARY', 319900913815, 'IGISUBIZO', 'INGABIRE SOLANGE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(212, '', 'P3B', 'PRIMARY', 31982791384, 'INEZA', 'ANICET HAPPY', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(213, '', 'P3B', 'PRIMARY', 319276113817, 'IRADUKUNDA', 'AKARABO RABIA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(214, '', 'P3B', 'PRIMARY', 319529963813, 'IRAKOZE', 'HONORINE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(215, '', 'P3B', 'PRIMARY', 319321923814, 'IRATWE', 'SHENGE MALO', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(216, '', 'P3B', 'PRIMARY', 319830903813, 'ISHIMWE JEAN', 'D AMOUR', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(217, '', 'P3B', 'PRIMARY', 319509623820, 'IYODUSENGA', 'AUDREY', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(218, '', 'P3B', 'PRIMARY', 319601763833, 'IZIBYOSE', 'KENT', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(219, '', 'P3B', 'PRIMARY', 319354953812, 'MANZI', 'ABOUBAKAR', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(220, '', 'P3B', 'PRIMARY', 319680883817, 'MASEZERANO', 'ELYSEE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(221, '', 'P3B', 'PRIMARY', 319811883814, 'MUGABO', 'AMANI', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(222, '', 'P3B', 'PRIMARY', 319300793810, 'MUGISHA', 'FRANK', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(223, '', 'P3B', 'PRIMARY', 319379993810, 'MUGISHA', 'YVAN SYDNEY', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(224, '', 'P3B', 'PRIMARY', 31971857388, 'MUHIRE', 'CLEVER', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(225, '', 'P3B', 'PRIMARY', 31915882385, 'MUPENZI', 'CHRISTIAN', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(226, '', 'P3B', 'PRIMARY', 31943874381, 'MUTABAZI', 'JUNIOR', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(227, '', 'P3B', 'PRIMARY', 319697303825, 'MWIZERIMANA', 'SANDRINE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(228, '', 'P3B', 'PRIMARY', 319294873814, 'NDUNGUTSE', 'LABAN', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(229, '', 'P3B', 'PRIMARY', 319140253812, 'SHISHIKAYE', 'DIELLA MUGUEL', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(230, '', 'P3B', 'PRIMARY', 31937690387, 'UMUHIIRE', 'SHIMWA BRUCE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(231, '', 'P3B', 'PRIMARY', 31970880381, 'UMUHIRE', 'MUREKEZI HORNELLA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(232, '', 'P3B', 'PRIMARY', 319168133832, 'UMUHOZA', 'FAUSTE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(233, '', 'P3B', 'PRIMARY', 319353443832, 'UMUTONI', 'ASNA FRUIT', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(234, '', 'P3B', 'PRIMARY', 319548243814, 'UWAMAHORO', 'NADJMA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(235, '', 'P3B', 'PRIMARY', 31970830386, 'UWASE', 'PACIFIQUE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(236, '', 'P3B', 'PRIMARY', 319803683835, 'UWINEZA', 'KABERUKA YVETTE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(238, '1900696', 'P6A', 'PRIMARY', 3208546826, 'iradukunda', 'irenee', '26/6/2000', '7', '', 'west', 'rusizi', 'mururu', 'gahinga', 'mutara', 'drtert', 'jjjj', '435548546754676767346734676676767346734343434565744', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `2019_test`
--

CREATE TABLE `2019_test` (
  `id` int(11) NOT NULL,
  `quizid` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `term` varchar(255) NOT NULL,
  `testid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2019_test_marks`
--

CREATE TABLE `2019_test_marks` (
  `qid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `quiz_id` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL,
  `class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2019_test_places`
--

CREATE TABLE `2019_test_places` (
  `id` int(11) NOT NULL,
  `test` varchar(255) NOT NULL,
  `regno` varchar(222) NOT NULL,
  `marks` varchar(222) NOT NULL,
  `place` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2019_transport`
--

CREATE TABLE `2019_transport` (
  `id` int(11) NOT NULL,
  `reg` varchar(255) NOT NULL,
  `payed` double NOT NULL,
  `tleft` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2019_transport`
--

INSERT INTO `2019_transport` (`id`, `reg`, `payed`, `tleft`) VALUES
(1, '319624264811', 884, 16),
(2, '319888764839', 0, 900),
(3, '319448664821', 0, 900),
(4, '319411554836', 0, 900),
(5, '319273884821', 0, 900);

-- --------------------------------------------------------

--
-- Table structure for table `2020_class_fees`
--

CREATE TABLE `2020_class_fees` (
  `id` int(11) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `term1` varchar(11) NOT NULL,
  `term2` varchar(11) NOT NULL,
  `term3` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_fees`
--

CREATE TABLE `2020_fees` (
  `id` int(11) NOT NULL,
  `student` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `term1` varchar(11) NOT NULL,
  `term2` varchar(11) NOT NULL,
  `term3` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_marks`
--

CREATE TABLE `2020_marks` (
  `mid` int(11) NOT NULL,
  `names` varchar(255) NOT NULL,
  `reg` double NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `term1_quiz` double NOT NULL,
  `term1_exam` double NOT NULL,
  `term2_quiz` double NOT NULL,
  `term2_exam` double NOT NULL,
  `term3_quiz` double NOT NULL,
  `term3_exam` double NOT NULL,
  `term1_tot` double NOT NULL,
  `term2_tot` double NOT NULL,
  `term3_tot` double NOT NULL,
  `gmax` double NOT NULL,
  `gtot` double NOT NULL,
  `gper` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_places`
--

CREATE TABLE `2020_places` (
  `id` int(11) NOT NULL,
  `studentid` double NOT NULL,
  `term1` int(11) NOT NULL,
  `term2` int(11) NOT NULL,
  `term3` int(11) NOT NULL,
  `per1` double NOT NULL,
  `per2` double NOT NULL,
  `per3` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_quiz`
--

CREATE TABLE `2020_quiz` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `tot` int(11) NOT NULL,
  `date` varchar(2555) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `term` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_quiz_marks`
--

CREATE TABLE `2020_quiz_marks` (
  `qid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `quiz_id` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL,
  `term` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_students`
--

CREATE TABLE `2020_students` (
  `sid` int(11) NOT NULL,
  `sdms` varchar(255) DEFAULT NULL,
  `class` varchar(255) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `regno` double NOT NULL,
  `fn` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `dof` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `PROVINCE` varchar(255) NOT NULL,
  `DISTRICT` varchar(255) NOT NULL,
  `SECTOR` varchar(255) NOT NULL,
  `CELL` varchar(255) NOT NULL,
  `VIRAGE` varchar(255) NOT NULL,
  `father` varchar(255) NOT NULL,
  `mother` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_test`
--

CREATE TABLE `2020_test` (
  `id` int(11) NOT NULL,
  `quizid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` varchar(11) NOT NULL,
  `class` varchar(11) NOT NULL,
  `term` varchar(11) NOT NULL,
  `testid` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_test_marks`
--

CREATE TABLE `2020_test_marks` (
  `qid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `quiz_id` varchar(11) NOT NULL,
  `marks` varchar(11) NOT NULL,
  `class` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `evt` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `student` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classcourse`
--

CREATE TABLE `classcourse` (
  `ccid` int(11) NOT NULL,
  `coursename` varchar(200) NOT NULL,
  `classname` varchar(200) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `Teacher` varchar(200) NOT NULL,
  `randid` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classcourse`
--

INSERT INTO `classcourse` (`ccid`, `coursename`, `classname`, `opt`, `Teacher`, `randid`) VALUES
(3, 'SPORT', 'P6B', 'PRIMARY', 'Jonathan TUYISENGE', 5559),
(4, 'SPORT', 'P5A', 'PRIMARY', 'Jonathan TUYISENGE', 5559),
(5, 'SPORT', 'P5A', 'PRIMARY', 'Eulad KANYAMURERA', 9981),
(6, 'SPORT', 'P5A', 'PRIMARY', 'JeandeDieu UWAMURENGEYE', 7099),
(7, 'SPORT', 'P5A', 'PRIMARY', 'JeandeDieu UWAMURENGEYE', 7099),
(8, 'SPORT', 'P5A', 'PRIMARY', 'Jonathan TUYISENGE', 5559),
(9, 'SPORT', 'P5B', 'PRIMARY', 'Jonathan TUYISENGE', 5559),
(10, 'SPORT', 'P5B', 'PRIMARY', 'Jonathan TUYISENGE', 5559),
(11, 'SPORT', 'P5B', 'PRIMARY', 'Eulad KANYAMURERA', 9981),
(12, 'SPORT', 'P5B', 'PRIMARY', 'JeandeDieu UWAMURENGEYE', 7099),
(13, 'SPORT', 'P5B', 'PRIMARY', 'JeandeDieu UWAMURENGEYE', 7099),
(14, 'SPORT', 'P5B', 'PRIMARY', 'Charles HITIMANA', 9568),
(15, 'SPORT', 'P5B', 'PRIMARY', 'Charles HITIMANA', 9568),
(16, 'SPORT', 'P6B', 'PRIMARY', 'Jonathan TUYISENGE', 5559),
(17, 'SPORT', 'P6B', 'PRIMARY', 'Eulad KANYAMURERA', 9981),
(18, 'SPORT', 'P6B', 'PRIMARY', 'JeandeDieu UWAMURENGEYE', 7099),
(19, 'SPORT', 'P6B', 'PRIMARY', 'JeandeDieu UWAMURENGEYE', 7099),
(20, 'SPORT', 'P6B', 'PRIMARY', 'Charles HITIMANA', 9568),
(21, 'SPORT', 'P6B', 'PRIMARY', 'Charles HITIMANA', 9568),
(22, 'SPORT', 'P6B', 'PRIMARY', 'BYUMVUHORE JEANBAPTISTE', 7318),
(23, 'SPORT', 'P6B', 'PRIMARY', 'MBARUBUKEYE VEDASTE', 2464),
(24, 'SPORT', 'P6B', 'PRIMARY', 'MBARUBUKEYE VEDASTE', 2464),
(25, 'SPORT', 'P6B', 'PRIMARY', 'Eulad KANYAMURERA', 9981),
(26, 'SPORT', 'P6B', 'PRIMARY', 'Jonathan TUYISENGE', 5559),
(27, 'SPORT', 'P6B', 'PRIMARY', 'Eulad KANYAMURERA', 9981),
(28, 'SPORT', 'P3B', 'PRIMARY', 'BITWAYIKI THEODORE', 9331),
(29, 'SPORT', 'P3B', 'PRIMARY', 'BITWAYIKI THEODORE', 9331),
(30, 'SPORT', 'P3B', 'PRIMARY', 'NSENGUMUREMYI THERESPHORE', 3828),
(31, 'SPORT', 'P3B', 'PRIMARY', 'HABIMANA JAPHET', 178),
(32, 'SPORT', 'P3B', 'PRIMARY', 'HABIMANA JAPHET', 178),
(33, 'SPORT', 'P3B', 'PRIMARY', 'HISHAMUNDA FELIX', 517),
(34, 'SPORT', 'P3B', 'PRIMARY', 'HISHAMUNDA FELIX', 517),
(35, 'SPORT', 'P3B', 'PRIMARY', 'IRADUKUNDA YVONNE', 266),
(36, 'SPORT', 'P3B', 'PRIMARY', 'MBARUBUKEYE VEDASTE', 2464),
(37, 'SPORT', 'P3B', 'PRIMARY', 'MBARUBUKEYE VEDASTE', 2464),
(38, 'SPORT', 'P3B', 'PRIMARY', 'Charles HITIMANA', 9568),
(39, 'SPORT', 'P3B', 'PRIMARY', 'HISHAMUNDA FELIX', 517),
(40, 'SPORT', 'P3B', 'PRIMARY', 'IRADUKUNDA YVONNE', 266),
(41, 'SPORT', 'P6A', 'PRIMARY', 'Jonathan TUYISENGE', 5559),
(42, 'SPORT', 'P6A', 'PRIMARY', 'Jonathan TUYISENGE', 5559),
(43, 'SPORT', 'P6A', 'PRIMARY', 'Eulad KANYAMURERA', 9981),
(44, 'SPORT', 'P6A', 'PRIMARY', 'JeandeDieu UWAMURENGEYE', 7099),
(45, 'SPORT', 'P6A', 'PRIMARY', 'JeandeDieu UWAMURENGEYE', 7099),
(46, 'SPORT', 'P6A', 'PRIMARY', 'Charles HITIMANA', 9568),
(47, 'SPORT', 'P6A', 'PRIMARY', 'Charles HITIMANA', 9568),
(48, 'SPORT', 'P6A', 'PRIMARY', 'BYUMVUHORE JEANBAPTISTE', 7318),
(49, 'SPORT', 'P6A', 'PRIMARY', 'MBARUBUKEYE VEDASTE', 2464),
(50, 'SPORT', 'P6A', 'PRIMARY', 'MBARUBUKEYE VEDASTE', 2464),
(51, 'SPORT', 'P6A', 'PRIMARY', 'Eulad KANYAMURERA', 9981),
(52, 'SPORT', 'P6A', 'PRIMARY', 'Eulad KANYAMURERA', 9981),
(53, 'SPORT', 'P6A', 'PRIMARY', 'Eulad KANYAMURERA', 9981),
(54, 'SPORT', 'P1A', 'PRIMARY', 'NDAYISENGA FRANCOISXAVIER', 4065),
(55, 'SPORT', 'P1A', 'PRIMARY', 'NDAYISENGA FRANCOISXAVIER', 4065),
(56, 'SPORT', 'P1A', 'PRIMARY', 'IRADUKUNDA YVONNE', 266),
(57, 'SPORT', 'P1A', 'PRIMARY', 'BARAYATA JEANCLAUDE', 710),
(58, 'SPORT', 'P1A', 'PRIMARY', 'BARAYATA JEANCLAUDE', 710),
(59, 'SPORT', 'P1A', 'PRIMARY', 'KAYIGIRE SIMON', 9359),
(60, 'SPORT', 'P1A', 'PRIMARY', 'KAYIGIRE SIMON', 9359),
(61, 'SPORT', 'P1A', 'PRIMARY', 'IRADUKUNDA YVONNE', 266),
(62, 'SPORT', 'P1A', 'PRIMARY', 'MBARUBUKEYE VEDASTE', 2464),
(63, 'SPORT', 'P1A', 'PRIMARY', 'MBARUBUKEYE VEDASTE', 2464),
(64, 'SPORT', 'P1A', 'PRIMARY', 'IRADUKUNDA YVONNE', 266),
(65, 'SPORT', 'P1A', 'PRIMARY', 'KAYIGIRE SIMON', 9359),
(66, 'SPORT', 'P1A', 'PRIMARY', 'IRADUKUNDA YVONNE', 266),
(68, 'SPORT', 'P1B', 'PRIMARY', 'NDAYISENGA FRANCOISXAVIER', 4065),
(69, 'SPORT', 'P1B', 'PRIMARY', 'NDAYISENGA FRANCOISXAVIER', 4065),
(70, 'SPORT', 'P1B', 'PRIMARY', 'IRADUKUNDA YVONNE', 266),
(71, 'SPORT', 'P1B', 'PRIMARY', 'BARAYATA JEANCLAUDE', 710),
(72, 'SPORT', 'P1B', 'PRIMARY', 'BARAYATA JEANCLAUDE', 710),
(73, 'SPORT', 'P1B', 'PRIMARY', 'KAYIGIRE SIMON', 9359),
(74, 'SPORT', 'P1B', 'PRIMARY', 'KAYIGIRE SIMON', 9359),
(75, 'SPORT', 'P1B', 'PRIMARY', 'IRADUKUNDA YVONNE', 266),
(76, 'SPORT', 'P1B', 'PRIMARY', 'MBARUBUKEYE VEDASTE', 2464),
(77, 'SPORT', 'P1B', 'PRIMARY', 'MBARUBUKEYE VEDASTE', 2464),
(78, 'SPORT', 'P1B', 'PRIMARY', 'IRADUKUNDA YVONNE', 266),
(79, 'SPORT', 'P1B', 'PRIMARY', 'NDAYISENGA FRANCOISXAVIER', 4065),
(80, 'SPORT', 'P1B', 'PRIMARY', 'IRADUKUNDA YVONNE', 266),
(81, 'SPORT', 'P2A', 'PRIMARY', 'NDAYISENGA FRANCOISXAVIER', 4065),
(82, 'SPORT', 'P2A', 'PRIMARY', 'NDAYISENGA FRANCOISXAVIER', 4065);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `classid` int(11) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `teacher` int(11) NOT NULL,
  `lever` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`classid`, `classname`, `opt`, `teacher`, `lever`) VALUES
(1, 'P6B', 'PRIMARY', 5559, 'upper'),
(2, 'P6A', 'PRIMARY', 9981, 'upper'),
(3, 'P5A', 'PRIMARY', 7099, 'upper'),
(4, 'P5B', 'PRIMARY', 9568, 'upper'),
(5, 'P4A', 'PRIMARY', 0, 'upper'),
(7, 'P3A', 'PRIMARY', 0, 'lower'),
(8, 'P3B', 'PRIMARY', 517, 'lower'),
(9, 'P2B', 'PRIMARY', 0, 'lower'),
(10, 'P2A', 'PRIMARY', 0, 'lower'),
(11, 'P1A', 'PRIMARY', 9359, 'lower'),
(12, 'P1B', 'PRIMARY', 4065, 'lower');

-- --------------------------------------------------------

--
-- Table structure for table `conduct`
--

CREATE TABLE `conduct` (
  `id` int(20) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `conduct` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conduct`
--

INSERT INTO `conduct` (`id`, `regno`, `class`, `conduct`) VALUES
(1, '31975218387', 'P6B', 40),
(2, '319839803840', 'P6B', 40),
(3, '319101213834', 'P6B', 40),
(4, '319320463835', 'P6B', 40),
(5, '319703503831', 'P6B', 40),
(6, '319347463822', 'P6B', 40),
(7, '319449183817', 'P6B', 40),
(8, '319736923815', 'P6B', 40),
(9, '319328453829', 'P6B', 40),
(10, '319834953830', 'P6B', 40),
(11, '319480783834', 'P6B', 40),
(12, '319612713825', 'P6B', 40),
(13, '319596713830', 'P6B', 40),
(14, '31946596386', 'P6B', 40),
(15, '319345743824', 'P6B', 40),
(16, '319163123840', 'P6B', 40),
(17, '31959951384', 'P6B', 40),
(18, '31912233381', 'P6B', 40),
(19, '319407583817', 'P6B', 40),
(20, '319183513815', 'P6B', 40),
(21, '31976494385', 'P6B', 40),
(22, '319624613833', 'P6B', 40),
(23, '319367804120', 'P6A', 40),
(24, '31924395417', 'P6A', 40),
(25, '319747894114', 'P6A', 40),
(26, '319138554136', 'P6A', 40),
(27, '319900944126', 'P6A', 40),
(28, '319874144129', 'P6A', 40),
(29, '319802284128', 'P6A', 40),
(30, '319302944127', 'P6A', 40),
(31, '319224114110', 'P6A', 40),
(32, '319119924138', 'P6A', 40),
(33, '319790324129', 'P6A', 40),
(34, '319379484127', 'P6A', 40),
(35, '319514314122', 'P6A', 40),
(36, '31979435412', 'P6A', 40),
(37, '319711354140', 'P6A', 40),
(38, '31941332412', 'P6A', 40),
(39, '319177214110', 'P6A', 40),
(40, '31972344418', 'P6A', 40),
(41, '31944858418', 'P6A', 40),
(42, '31963560415', 'P6A', 40),
(43, '319579484115', 'P6A', 40),
(44, '319348794132', 'P6A', 40),
(45, '31922445426', 'P6A', 40),
(46, '319532844232', 'P6A', 40),
(47, '319219394213', 'P6A', 40),
(48, '319195324237', 'P6A', 40),
(49, '31972926423', 'P6A', 40),
(50, '319678624240', 'P6A', 40),
(51, '31931920422', 'P6A', 40),
(52, '31958456424', 'P6A', 40),
(53, '319653884236', 'P6A', 40),
(54, '319583164227', 'P6A', 40),
(55, '31979730423', 'P6A', 40),
(56, '319104784236', 'P6A', 40),
(57, '31973292429', 'P6A', 40),
(58, '319185124219', 'P6A', 40),
(59, '319114834227', 'P6A', 40),
(60, '319162584210', 'P6A', 40),
(61, '319154834215', 'P6A', 40),
(62, '319187474236', 'P6A', 40),
(63, '319247204231', 'P6A', 40),
(64, '319159744233', 'P6A', 40),
(65, '31969062422', 'P6A', 40),
(66, '319736634233', 'P6A', 40),
(67, '319624264811', 'P6A', 40),
(68, '319888764839', 'P6A', 40),
(69, '319448664821', 'P6A', 40),
(70, '319411554836', 'P6A', 40),
(71, '319273884821', 'P6A', 40),
(72, '319628674826', 'P6A', 40),
(73, '31946188484', 'P6A', 40),
(74, '319604424826', 'P6A', 40),
(75, '319810584832', 'P6A', 40),
(76, '319598934816', 'P6A', 40),
(77, '319687624824', 'P6A', 40),
(78, '319106614813', 'P6A', 40),
(79, '319877104838', 'P6A', 40),
(80, '319490454819', 'P6A', 40),
(81, '319404654814', 'P6A', 40),
(82, '319822344839', 'P6A', 40),
(83, '319526754834', 'P6A', 40),
(84, '31959341488', 'P6A', 40),
(85, '319293314830', 'P6A', 40),
(86, '319124874827', 'P6A', 40),
(87, '319445634811', 'P6A', 40),
(88, '319111644833', 'P6A', 40),
(89, '319599833131', 'P6B', 40),
(90, '319250673119', 'P6B', 40),
(91, '31919795314', 'P6B', 40),
(92, '31977199318', 'P6B', 40),
(93, '319329913111', 'P6B', 40),
(94, '319136433111', 'P6B', 40),
(95, '319541523132', 'P6B', 40),
(96, '319242503126', 'P6B', 40),
(97, '319227303117', 'P6B', 40),
(98, '31965268319', 'P6B', 40),
(99, '31975534312', 'P6B', 40),
(100, '319562513128', 'P6B', 40),
(101, '319141623126', 'P6B', 40),
(102, '319208483125', 'P6B', 40),
(103, '319360743122', 'P6B', 40),
(104, '319577783136', 'P6B', 40),
(105, '319779373115', 'P6B', 40),
(106, '319614533133', 'P6B', 40),
(107, '31931467312', 'P6B', 40),
(108, '319654403128', 'P6B', 40),
(109, '319833233139', 'P6B', 40),
(110, '319863753118', 'P6B', 40),
(111, '319128833222', 'P5A', 40),
(112, '319271453239', 'P5A', 40),
(113, '31943035322', 'P5A', 40),
(114, '31945061321', 'P5A', 40),
(115, '319659913231', 'P5A', 40),
(116, '31981936326', 'P5A', 40),
(117, '319787383219', 'P5A', 40),
(118, '31959062328', 'P5A', 40),
(119, '319416593217', 'P5A', 40),
(120, '319519973223', 'P5A', 40),
(121, '319753103215', 'P5A', 40),
(122, '319374293231', 'P5A', 40),
(123, '31934666322', 'P5A', 40),
(124, '319369163225', 'P5A', 40),
(125, '319385783222', 'P5A', 40),
(126, '319194693234', 'P5A', 40),
(127, '31930657326', 'P5A', 40),
(128, '319676223229', 'P5A', 40),
(129, '319826573211', 'P5A', 40),
(130, '319352143210', 'P5A', 40),
(131, '319794883210', 'P5A', 40),
(132, '319285293219', 'P5A', 40),
(133, '31989556324', 'P5A', 40),
(134, '31912787327', 'P5A', 40),
(135, '319622293237', 'P5A', 40),
(136, '319245393224', 'P5A', 40),
(137, '31910663325', 'P5A', 40),
(138, '319221373210', 'P5A', 40),
(139, '319798293231', 'P5A', 40),
(140, '319212573234', 'P5A', 40),
(141, '319400453228', 'P5A', 40),
(142, '319591663237', 'P5A', 40),
(143, '319154663218', 'P5A', 40),
(144, '3193109613', 'P6B', 40),
(145, '31948510006', 'P5B', 40),
(146, '319643610038', 'P5B', 40),
(147, '319817930015', 'P5B', 40),
(148, '319427960038', 'P5B', 40),
(149, '31981931006', 'P5B', 40),
(150, '319193300038', 'P5B', 40),
(151, '319216220028', 'P5B', 40),
(152, '319618450012', 'P5B', 40),
(153, '319232640033', 'P5B', 40),
(154, '319213600012', 'P5B', 40),
(155, '319506130013', 'P5B', 40),
(156, '319616740035', 'P5B', 40),
(157, '319563650033', 'P5B', 40),
(158, '319851110031', 'P5B', 40),
(159, '31979392001', 'P5B', 40),
(160, '319102130010', 'P5B', 40),
(161, '319852260015', 'P5B', 40),
(162, '319599840031', 'P5B', 40),
(163, '319825990015', 'P5B', 40),
(164, '319671220037', 'P5B', 40),
(165, '319105680039', 'P5B', 40),
(166, '319346360028', 'P5B', 40),
(167, '319242880012', 'P5B', 40),
(168, '319883820013', 'P5B', 40),
(169, '319696700010', 'P5B', 40),
(170, '319703700011', 'P5B', 40),
(171, '319891650018', 'P5B', 40),
(172, '319390310012', 'P5B', 40),
(173, '319200230011', 'P5B', 40),
(174, '319495870017', 'P5B', 40),
(175, '31943487003', 'P5B', 40),
(176, '319403250014', 'P5B', 40),
(177, '31914341009', 'P5B', 40),
(178, '31937439001', 'P5B', 40),
(179, '319621160028', 'P5B', 40),
(180, '319491743624', 'P3B', 40),
(181, '319804243625', 'P3B', 40),
(182, '31987237362', 'P3B', 40),
(183, '319796463611', 'P3B', 40),
(184, '31915587366', 'P3B', 40),
(185, '319364363617', 'P3B', 40),
(186, '319313793636', 'P3B', 40),
(187, '31922722363', 'P3B', 40),
(188, '319588573627', 'P3B', 40),
(189, '319869183632', 'P3B', 40),
(190, '319796623620', 'P3B', 40),
(191, '319466513627', 'P3B', 40),
(192, '319347310127', 'P3B', 40),
(193, '319702560139', 'P3B', 40),
(194, '319200220124', 'P3B', 40),
(195, '319246480136', 'P3B', 40),
(196, '319576100137', 'P3B', 40),
(197, '319356720123', 'P3B', 40),
(198, '319560720116', 'P3B', 40),
(199, '319700890132', 'P3B', 40),
(200, '319422200118', 'P3B', 40),
(201, '319127960117', 'P3B', 40),
(202, '319879340126', 'P3B', 40),
(203, '31960012017', 'P3B', 40),
(204, '319856893830', 'P3B', 40),
(205, '319871143826', 'P3B', 40),
(206, '319879973824', 'P3B', 40),
(207, '31965625385', 'P3B', 40),
(208, '319222373828', 'P3B', 40),
(209, '319265533817', 'P3B', 40),
(210, '31983620387', 'P3B', 40),
(211, '319900913815', 'P3B', 40),
(212, '31982791384', 'P3B', 40),
(213, '319276113817', 'P3B', 40),
(214, '319529963813', 'P3B', 40),
(215, '319321923814', 'P3B', 40),
(216, '319830903813', 'P3B', 40),
(217, '319509623820', 'P3B', 40),
(218, '319601763833', 'P3B', 40),
(219, '319354953812', 'P3B', 40),
(220, '319680883817', 'P3B', 40),
(221, '319811883814', 'P3B', 40),
(222, '319300793810', 'P3B', 40),
(223, '319379993810', 'P3B', 40),
(224, '31971857388', 'P3B', 40),
(225, '31915882385', 'P3B', 40),
(226, '31943874381', 'P3B', 40),
(227, '319697303825', 'P3B', 40),
(228, '319294873814', 'P3B', 40),
(229, '319140253812', 'P3B', 40),
(230, '31937690387', 'P3B', 40),
(231, '31970880381', 'P3B', 40),
(232, '319168133832', 'P3B', 40),
(233, '319353443832', 'P3B', 40),
(234, '319548243814', 'P3B', 40),
(235, '31970830386', 'P3B', 40),
(236, '319803683835', 'P3B', 40),
(237, '31981346384', 'P3B', 40),
(238, '3208546826', 'P6A', 40);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `cid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `option` varchar(255) NOT NULL,
  `tot` int(200) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'core',
  `cat` text NOT NULL,
  `sub` text NOT NULL,
  `upper` varchar(255) NOT NULL,
  `lower` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`cid`, `name`, `option`, `tot`, `status`, `cat`, `sub`, `upper`, `lower`) VALUES
(1, 'Metric system&Geometry', 'PRIMARY', 0, 'core', 'SCIENCES', 'MATHEMATICS', '15', '10'),
(2, 'Arthemetic,Algebra&Statistics', 'PRIMARY', 0, 'core', 'SCIENCES', 'MATHEMATICS', '15', '20'),
(3, 'SOCIAL &RELIGIOUS STUDIES', 'PRIMARY', 0, 'core', 'SCIENCES', 'SOCIAL &RELIGIOUS STUDIES', '20', '15'),
(4, 'Reading', 'PRIMARY', 0, 'core', 'Languages', 'ENGLISH', '5', '10'),
(5, 'Writing', 'PRIMARY', 0, 'core', 'Languages', 'ENGLISH', '20', '20'),
(6, 'GUSOMA', 'PRIMARY', 0, 'core', 'Languages', 'IKINYARWANDA', '5', '10'),
(7, 'KWANDIKA', 'PRIMARY', 0, 'core', 'Languages', 'IKINYARWANDA', '20', '20'),
(8, 'SET', 'PRIMARY', 0, 'core', 'SCIENCES', 'SET', '20', '10'),
(9, 'Expression Orale', 'PRIMARY', 0, 'core', 'Languages', 'Francais', '5', '5'),
(10, 'Expression Ecrite', 'PRIMARY', 0, 'core', 'Languages', 'Francais', '10', '15'),
(11, 'COMPUTER STDIES', 'PRIMARY', 0, 'core', 'SCIENCES', 'COMPUTER STUDIES', '5', '5'),
(12, 'SPORT', 'PRIMARY', 0, 'core', 'EXTRA  CURRICULUM ACTIVITIES', 'SPORT', '5', '5'),
(13, 'CREATIVE ARTS', 'PRIMARY', 0, 'core', 'EXTRA  CURRICULUM ACTIVITIES', 'CREATIVE ARTS', '5', '5'),
(14, 'Mathematics', 'ECD', 0, 'core', 'Mathematics', 'Mathematics', '', '10');

-- --------------------------------------------------------

--
-- Table structure for table `coursecat`
--

CREATE TABLE `coursecat` (
  `id` int(11) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL,
  `cname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursecat`
--

INSERT INTO `coursecat` (`id`, `cat`, `sub`, `cname`) VALUES
(1, 'Languages', 'IKINYARWANDA', 'GUSOMA'),
(2, 'Languages', 'IKINYARWANDA', 'KWANDIKA'),
(3, 'Languages', 'ENGLISH', 'Reading'),
(4, 'Languages', 'ENGLISH', 'Writing'),
(5, 'Languages', 'Francais', 'Expression Orale'),
(6, 'Languages', 'FRANCAIS', 'Expression Ecrite'),
(7, 'SCIENCES', 'MATHEMATICS', 'Metric system&Geometry'),
(8, 'SCIENCES', 'MATHEMATICS', 'Arthemetic,Algebra&Statistics'),
(9, 'SCIENCES', 'SET', 'SET'),
(10, 'SCIENCES', 'SOCIAL &RELIGIOUS STUDIES', 'SOCIAL &RELIGIOUS STUDIES'),
(11, 'SCIENCES', 'COMPUTER STUDIES', 'COMPUTER STDIES'),
(12, 'EXTRA  CURRICULUM ACTIVITIES', 'SPORT', 'SPORT'),
(13, 'EXTRA  CURRICULUM ACTIVITIES', 'CREATIVE ARTS', 'CREATIVE ARTS');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `province` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `province`, `name`) VALUES
(1, 1, 'Karongi'),
(2, 1, 'Ngororero'),
(3, 1, 'Nyabihu'),
(4, 1, 'Nyamasheke'),
(5, 1, 'Rubavu'),
(6, 1, 'Rusizi'),
(7, 1, 'Rutsiro'),
(8, 3, 'Bugesera'),
(9, 3, 'Gatsibo'),
(10, 3, 'Kayonza'),
(11, 3, 'Kirehe'),
(12, 3, 'Ngoma'),
(13, 3, 'Nyagatare'),
(14, 3, 'Rwamagana'),
(15, 4, 'Gisagara'),
(16, 4, 'Huye'),
(17, 4, 'Kamonyi'),
(18, 4, 'Muhanga'),
(19, 4, 'Nyamagabe'),
(20, 4, 'Nyanza'),
(21, 4, 'Nyaruguru'),
(22, 4, 'Ruhango'),
(23, 5, 'Burera'),
(24, 5, 'Gakenke'),
(25, 5, 'Gicumbi'),
(26, 5, 'Musanze'),
(27, 5, 'Rulindo'),
(28, 2, 'Gasabo'),
(29, 2, 'Kicukiro'),
(30, 2, 'Nyarugenge');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msgid` int(11) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mistakes`
--

CREATE TABLE `mistakes` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `mistake` text NOT NULL,
  `details` text NOT NULL,
  `punishment` text NOT NULL,
  `reg` varchar(255) NOT NULL,
  `student` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `pid` int(11) NOT NULL,
  `opname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`pid`, `opname`) VALUES
(1, 'ECD'),
(2, 'PRIMARY');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `motif` text NOT NULL,
  `returndate` varchar(255) NOT NULL,
  `reg` varchar(200) NOT NULL,
  `student` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
(1, 'west'),
(2, 'kigali city'),
(3, 'east'),
(4, 'south'),
(5, 'north');

-- --------------------------------------------------------

--
-- Table structure for table `schoolinfo`
--

CREATE TABLE `schoolinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `defaultyear` int(11) NOT NULL,
  `sendername` varchar(200) NOT NULL,
  `schoolcode` int(11) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `h1` text NOT NULL,
  `h2` text NOT NULL,
  `report` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolinfo`
--

INSERT INTO `schoolinfo` (`id`, `name`, `logo`, `manager`, `defaultyear`, `sendername`, `schoolcode`, `tel`, `email`, `h1`, `h2`, `report`) VALUES
(1, 'Child Care Academy', 'izubaedu_ccak/cca coat of arms 2.png', 'school manager`s name', 2019, 'CCA', 3, '', '', 'FREE METHODIST CHURCH IN RWANDA', 'KINYAGA CONFERENCE', 'classreport.php');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `district`, `name`) VALUES
(1, 8, 'Gashora'),
(2, 8, 'Juru'),
(3, 8, 'Kamabuye'),
(4, 8, 'Ntarama'),
(5, 8, 'mareba'),
(6, 8, 'Mayange'),
(7, 8, 'Musenyi'),
(8, 8, 'Mwogo'),
(9, 8, 'Ngeruka'),
(10, 8, 'Nyamata'),
(11, 8, 'Nyarugenge'),
(12, 8, 'Rilima'),
(13, 8, 'Ruhuha'),
(14, 8, 'Rweru'),
(15, 8, 'Shyara'),
(16, 9, 'Gasange'),
(17, 9, 'Gatsibo'),
(18, 9, 'Gitoki'),
(19, 9, 'Kabarore'),
(20, 9, 'Kageyo'),
(21, 9, 'Kiramuruzi'),
(22, 9, 'Kiziguro'),
(23, 9, 'Muhura'),
(24, 9, 'Murambi'),
(25, 9, 'Ngarama'),
(26, 9, 'Nyagihanga'),
(27, 9, 'Remera'),
(29, 9, 'Rwimbogo'),
(28, 9, 'Rugarama'),
(30, 10, 'Gahini'),
(31, 10, 'Kabare'),
(32, 10, 'Kabarondo'),
(33, 10, 'Mukarage'),
(34, 10, 'Murama'),
(35, 10, 'Murundi'),
(36, 10, 'Mwiri'),
(37, 10, 'Ndengo'),
(38, 10, 'Nyamirama'),
(39, 10, 'Rukara'),
(40, 10, 'Ruramira'),
(41, 10, 'Rwinkwavu'),
(42, 11, 'Gahara'),
(43, 11, 'Gatore'),
(44, 11, 'Kigina'),
(45, 11, 'Kirehe'),
(46, 11, 'Muhama'),
(47, 11, 'Mpanga'),
(48, 11, 'Musaza'),
(49, 11, 'Mushikiri'),
(50, 11, 'Nasho'),
(51, 11, 'Nyamugari'),
(52, 11, 'Nyarubuye'),
(53, 11, 'Kigarama'),
(54, 12, 'Gashanda'),
(55, 12, 'Jarama'),
(56, 12, 'Karembo'),
(57, 12, 'Kazo'),
(58, 12, 'Kibungo'),
(59, 12, 'Mugesera'),
(60, 12, 'Murama'),
(61, 12, 'Mutenderi'),
(62, 12, 'Remera'),
(63, 12, 'Rukira'),
(64, 12, 'Rukumberi'),
(65, 12, 'Rurenge'),
(66, 12, 'Sake'),
(67, 12, 'Zaza'),
(68, 13, 'Gatunda'),
(69, 13, 'Kiyombe'),
(70, 13, 'Karama'),
(71, 13, 'Karangazi'),
(72, 13, 'Katabagemu'),
(73, 13, 'Matimba'),
(74, 13, 'Mimuli'),
(75, 13, 'Mukama'),
(76, 13, 'Musheri'),
(77, 13, 'Nyagatare'),
(78, 13, 'Rukomo'),
(79, 13, 'Rwempasha'),
(80, 13, 'Rwimiyaga'),
(81, 13, 'Tabagwe'),
(82, 14, 'Fumbwe'),
(83, 14, 'Gahengeri'),
(84, 14, 'Gishari'),
(85, 14, 'Karenge'),
(86, 14, 'Kigabiro'),
(87, 14, 'Muhazi'),
(88, 14, 'Munyanga'),
(89, 14, 'Munyiginya'),
(90, 14, 'Musha'),
(91, 14, 'Muyumbu'),
(92, 14, 'Mwulire'),
(93, 14, 'Nyakariro'),
(94, 14, 'Nzige'),
(95, 14, 'Rubona'),
(96, 28, 'Bumbogo'),
(97, 28, 'Gatsata'),
(98, 28, 'Jali'),
(99, 28, 'Gikomero'),
(100, 28, 'Gisozi'),
(101, 28, 'Jabana'),
(102, 28, 'Kinyinya'),
(103, 28, 'Ndera'),
(104, 28, 'Nduba'),
(105, 28, 'Rusororo'),
(106, 28, 'Rutunga'),
(107, 28, 'Kacyiru'),
(108, 28, 'Kimihurura'),
(109, 28, 'Kimironko'),
(110, 28, 'Remera'),
(111, 29, 'Gahanga'),
(112, 29, 'Gatenga'),
(113, 29, 'Gikondo'),
(114, 29, 'Kagarama'),
(115, 29, 'Kanombe'),
(116, 29, 'Kicukiro'),
(117, 29, 'Kigarama'),
(118, 29, 'Masaka'),
(119, 29, 'Niboye'),
(120, 29, 'Nyarugunga'),
(121, 30, 'Gitega'),
(122, 30, 'Kanyinya'),
(123, 30, 'Kigali'),
(124, 30, 'Kimisagara'),
(125, 30, 'Mageragere'),
(126, 30, 'Muhima'),
(127, 30, 'Nyakabanda'),
(128, 30, 'Nyamirambo'),
(129, 30, 'Rwezamenyo'),
(130, 30, 'Nyarugenge'),
(131, 23, 'Bungwe'),
(132, 23, 'Butaro'),
(133, 23, 'Cyanika'),
(134, 23, 'Cyeru'),
(135, 23, 'Gahunga'),
(136, 23, 'Gatebe'),
(137, 23, 'Gitovu'),
(138, 23, 'Kagogo'),
(139, 23, 'Kinoni'),
(140, 23, 'Kinyababa'),
(141, 23, 'Kivuye'),
(142, 23, 'Nemba'),
(143, 23, 'Rugarama'),
(144, 23, 'Rugendabari'),
(145, 23, 'Ruhunde'),
(146, 23, 'Rusarabuge'),
(147, 23, 'Rwerere'),
(148, 24, 'Busengo'),
(149, 24, 'Coko'),
(150, 24, 'Cyabingo'),
(151, 24, 'Gakenke'),
(152, 24, 'Gashenyi'),
(153, 24, 'Mugunga'),
(154, 24, 'Janja'),
(155, 24, 'Kamubuga'),
(156, 24, 'Karambo'),
(157, 24, 'Kivuruga'),
(158, 24, 'Mataba'),
(159, 24, 'Minazi'),
(160, 24, 'Muhondo'),
(161, 24, 'Muyongwe'),
(162, 24, 'Muzo'),
(163, 24, 'Nemba'),
(164, 24, 'Ruli'),
(165, 24, 'Rusasa'),
(166, 24, 'Rushashi'),
(167, 25, 'Bukure'),
(168, 25, 'Bwisige'),
(169, 25, 'Byumba'),
(170, 25, 'Cyumba'),
(171, 25, 'Giti'),
(172, 25, 'Kaniga'),
(173, 25, 'Manyagiro'),
(174, 25, 'Miyove'),
(175, 25, 'Kageyo'),
(176, 25, 'Mukarange'),
(177, 25, 'Muko'),
(178, 25, 'Mutete'),
(179, 25, 'Nyamiyaga'),
(180, 25, 'Nyankeke'),
(181, 25, 'Rubaya'),
(182, 25, 'Rukomo'),
(183, 25, 'Rushaki'),
(184, 25, 'Rutare'),
(185, 25, 'Ruvune'),
(186, 25, 'Rwamiko'),
(187, 25, 'Shangasha'),
(188, 26, 'Busogo'),
(189, 26, 'Cyuve'),
(190, 26, 'Gacaca'),
(191, 26, 'Gashaki'),
(192, 26, 'Gataraga'),
(193, 26, 'Kimonyi'),
(194, 26, 'Kinigi'),
(195, 26, 'Muhoza'),
(196, 26, 'Muko'),
(197, 26, 'Musanze'),
(198, 26, 'Nkotsi'),
(199, 26, 'Nyange'),
(200, 26, 'Remera'),
(201, 26, 'Rwaza'),
(202, 26, 'Shingiro'),
(203, 27, 'Base'),
(204, 27, 'Burega'),
(205, 27, 'Bushoki'),
(206, 27, 'Buyoga'),
(207, 27, 'Cyinzuzi'),
(208, 27, 'Cyungo'),
(209, 27, 'Kinihira'),
(210, 27, 'Kisaro'),
(211, 27, 'Masoro'),
(212, 27, 'Mbogo'),
(213, 27, 'Murambi'),
(214, 27, 'Ngoma'),
(215, 27, 'Ntarabana'),
(216, 27, 'Rukozo'),
(217, 27, 'Rusiga'),
(218, 27, 'Shyorongi'),
(219, 27, 'Tumba'),
(220, 15, 'Gakonko'),
(221, 15, 'Gishubi'),
(222, 15, 'Kansi'),
(223, 15, 'Kibilizi'),
(224, 15, 'Kigembe'),
(225, 15, 'Mamba'),
(226, 15, 'Muganza'),
(227, 15, 'Mugombwa'),
(228, 15, 'Mukindo'),
(229, 15, 'Musha'),
(230, 15, 'Ndora'),
(231, 15, 'Nyanza'),
(232, 15, 'Save'),
(233, 16, 'Gashamu'),
(234, 16, 'Karama'),
(235, 16, 'Kigoma'),
(236, 16, 'Kinazi'),
(237, 16, 'Maraba'),
(238, 16, 'Mbazi'),
(239, 16, 'Mukura'),
(240, 16, 'Ngoma'),
(241, 16, 'Ruhashya'),
(242, 16, 'Rusatira'),
(243, 16, 'Rwaniro'),
(244, 16, 'Simbi'),
(245, 16, 'Tumba'),
(246, 16, 'Huye'),
(247, 17, 'Gacurabwenge'),
(248, 17, 'Karama'),
(249, 17, 'Kayenzi'),
(250, 17, 'Kayumbu'),
(251, 17, 'Mugina'),
(252, 17, 'Musambira'),
(253, 17, 'Ngamba'),
(254, 17, 'Nyamiyaga'),
(255, 17, 'Nyarubaka'),
(256, 17, 'Rugalika'),
(257, 17, 'Rukoma'),
(258, 17, 'Runda'),
(259, 18, 'Cyeza'),
(260, 18, 'Kabacuzi'),
(261, 18, 'Kibangu'),
(262, 18, 'Kiyumba'),
(263, 18, 'Muhanga'),
(264, 18, 'Mushishiro'),
(265, 18, 'Nyabinoni'),
(266, 18, 'Nyamabuye'),
(267, 18, 'Nyarusange'),
(268, 18, 'Rongi'),
(269, 18, 'Rugendabari'),
(270, 18, 'Shyogwe'),
(272, 19, 'Buruhukiro'),
(273, 19, 'Cyaniko'),
(274, 19, 'Gatare'),
(275, 19, 'Kaduha'),
(276, 19, 'Kamegeli'),
(277, 19, 'Kibirizi'),
(278, 19, 'Kibumbwe'),
(279, 19, 'Kitabi'),
(280, 19, 'Mbazi'),
(281, 19, 'Mugano'),
(282, 19, 'Musange'),
(283, 19, 'Musebeya'),
(284, 19, 'Mushubi'),
(285, 19, 'Nkomane'),
(286, 19, 'Gasaka'),
(287, 19, 'Tare'),
(288, 19, 'Uwinkingi'),
(289, 20, 'Busasamana'),
(290, 20, 'Busoro'),
(291, 20, 'Cyabakamyi'),
(292, 20, 'Kibirizi'),
(293, 20, 'Kigoma'),
(294, 20, 'Mukingo'),
(295, 20, 'Rwabicuma'),
(296, 20, 'Muyira'),
(297, 20, 'Ntyazo'),
(298, 20, 'Nyagisozi'),
(299, 21, 'Cyahinda'),
(300, 21, 'Busanze'),
(301, 21, 'Kibeho'),
(302, 21, 'Mata'),
(303, 21, 'Munini'),
(304, 21, 'Kivu'),
(305, 21, 'Ngera'),
(306, 21, 'Ngoma'),
(307, 21, 'Nyabimata'),
(308, 21, 'Nyagisozi'),
(309, 21, 'Ruheru'),
(310, 21, 'Muganza'),
(311, 21, 'Ruramba'),
(312, 21, 'Rusenge'),
(313, 22, 'Bweramana'),
(314, 22, 'Byimana'),
(315, 22, 'Kabagari'),
(316, 22, 'Kinazi'),
(317, 22, 'Kinihira'),
(318, 22, 'Mbuye'),
(319, 22, 'Mwendo'),
(320, 22, 'Ntongwe'),
(321, 22, 'Ruhango'),
(322, 1, 'Bwishyura'),
(323, 1, 'Gishari'),
(324, 1, 'Gishyita'),
(325, 1, 'Gisovu'),
(326, 1, 'Gitesi'),
(327, 1, 'Murundi'),
(328, 1, 'Murambi'),
(329, 1, 'Mubuga'),
(330, 1, 'Mutuntu'),
(331, 1, 'Rugabano'),
(332, 1, 'Ruganda'),
(333, 1, 'Rwankuba'),
(334, 1, 'Twumba'),
(335, 2, 'Bwira'),
(336, 2, 'Gatumba'),
(337, 2, 'Hindiro'),
(338, 2, 'Kabaya'),
(339, 2, 'Kageyo'),
(340, 2, 'Kavumu'),
(341, 2, 'Matyazo'),
(342, 2, 'Muhanda'),
(343, 2, 'Muhororo'),
(344, 2, 'Ndaro'),
(345, 2, 'Ngororero'),
(346, 2, 'Nyange'),
(347, 2, 'Sovu'),
(348, 3, 'Bigogwe'),
(349, 3, 'Jenda'),
(350, 3, 'Jomba'),
(351, 3, 'Kabatwa'),
(352, 3, 'Karago'),
(353, 3, 'Kintobo'),
(354, 3, 'Mukamira'),
(355, 3, 'Muringa'),
(356, 3, 'Rambura'),
(357, 3, 'Rugera'),
(358, 3, 'Rurembo'),
(359, 3, 'Shyira'),
(360, 4, 'Bushekeri'),
(361, 4, 'Bushenge'),
(362, 4, 'Cyato'),
(363, 4, 'Gihombo'),
(364, 4, 'Kagano'),
(365, 4, 'Kanjongo'),
(366, 4, 'Karambi'),
(367, 4, 'Karengera'),
(368, 4, 'Kirimbi'),
(369, 4, 'Macuba'),
(370, 4, 'Mahembe'),
(371, 4, 'Nyabitekeri'),
(372, 4, 'Rangiro'),
(373, 4, 'Ruharambuga'),
(374, 4, 'Shangi'),
(375, 5, 'Bugeshi'),
(376, 5, 'Busasamana'),
(377, 5, 'Cyanzarwe'),
(378, 5, 'Gisenyi'),
(379, 5, 'Kanama'),
(380, 5, 'Kanzenze'),
(381, 5, 'Mudende'),
(382, 5, 'Nyakiliba'),
(383, 5, 'Nyabyumba'),
(384, 5, 'Nyundo'),
(385, 5, 'Rubavu'),
(386, 5, 'Rugerero'),
(387, 6, 'Bugarama'),
(388, 6, 'Butare'),
(389, 6, 'Bweyeye'),
(390, 6, 'Gikundamvura'),
(391, 6, 'Gashonga'),
(392, 6, 'Giheke'),
(393, 6, 'Gihundwe'),
(394, 6, 'Gitambi'),
(395, 6, 'Kamembe'),
(396, 6, 'Muganza'),
(397, 6, 'Mururu'),
(398, 6, 'Nkanka'),
(399, 6, 'Nkombo'),
(400, 6, 'Nkungu'),
(401, 6, 'Nyakabuye'),
(402, 6, 'Nyakarenzo'),
(403, 6, 'Nzahaha'),
(404, 6, 'Rwimbogo'),
(405, 7, 'Boneza'),
(406, 7, 'Gihango'),
(407, 7, 'Kigeyo'),
(408, 7, 'Kivumu'),
(409, 7, 'Manihira'),
(410, 7, 'Mukura'),
(411, 7, 'Murunda'),
(412, 7, 'Musasa'),
(413, 7, 'Mushonyi'),
(414, 7, 'Mushubati'),
(415, 7, 'Nyabirasa'),
(416, 7, 'Ruhango'),
(417, 7, 'Rusebeya');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `sdms` text NOT NULL,
  `ln` varchar(255) NOT NULL,
  `Fn` text NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tablename`
--

CREATE TABLE `tablename` (
  `id` int(11) NOT NULL,
  `student` varchar(255) NOT NULL,
  `groups` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `Tel` varchar(255) NOT NULL,
  `idno` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `rand_id` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `fname`, `lname`, `sex`, `Tel`, `idno`, `degree`, `rand_id`) VALUES
(1, 'Jonathan', 'TUYISENGE', 'Male', '0788744713', '', 'Teacher', 5559),
(2, 'Eulad', 'KANYAMURERA', 'Male', '0788870445', '', 'Teacher', 9981),
(3, 'JeandeDieu', 'UWAMURENGEYE', 'Male', '0788218176', '', 'Teacher', 7099),
(4, 'Charles', 'HITIMANA', 'Male', '0788677006', '', 'Teacher', 9568),
(5, 'KAYIGIRE', 'SIMON', 'Male', '0784774122', '', 'Teacher', 9359),
(6, 'BARAYATA', 'JEANCLAUDE', 'Male', '0788296895', '', 'Teacher', 710),
(7, 'NSENGUMUREMYI', 'THERESPHORE', 'Male', '0785178969', '', 'Teacher', 3828),
(8, 'HABIMANA', 'JAPHET', 'Male', '0783211004', '', 'Teacher', 178),
(9, 'HISHAMUNDA', 'FELIX', 'Male', '0783131533', '', 'Teacher', 517),
(10, 'BITWAYIKI', 'THEODORE', 'Male', '0788709445', '', 'Teacher', 9331),
(11, 'NDAYISENGA', 'FRANCOISXAVIER', 'Male', '0784078469', '', 'Teacher', 4065),
(12, 'MBARUBUKEYE', 'VEDASTE', 'Male', '0781162845', '', 'Teacher', 2464),
(13, 'IRADUKUNDA', 'YVONNE', 'Male', '0786697460', '', 'Teacher', 266),
(14, 'BYUMVUHORE', 'JEANBAPTISTE', 'Male', '0789857726', '', 'Teacher', 7318);

-- --------------------------------------------------------

--
-- Table structure for table `test_table`
--

CREATE TABLE `test_table` (
  `id` int(11) NOT NULL,
  `testid` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `tot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` int(11) NOT NULL,
  `teacherid` varchar(255) NOT NULL,
  `classid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `rand_id` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `role`, `rand_id`) VALUES
(1, 'Jonathan', 'TUYISENGE', '0788744713', '0788744713', 'teacher', 5559),
(2, 'Eulad', 'KANYAMURERA', '0788870445', '0788870445', 'teacher', 9981),
(3, 'JeandeDieu', 'UWAMURENGEYE', '0788218176', '0788218176', 'teacher', 7099),
(4, 'Charles', 'HITIMANA', '0788677006', '0788677006', 'teacher', 9568),
(5, 'KAYIGIRE', 'SIMON', '0784774122', '0784774122', 'teacher', 9359),
(6, 'BARAYATA', 'JEANCLAUDE', '0788296895', '0788296895', 'teacher', 710),
(7, 'NSENGUMUREMYI', 'THERESPHORE', '0785178969', '0785178969', 'teacher', 3828),
(8, 'HABIMANA', 'JAPHET', '0783211004', '0783211004', 'teacher', 178),
(9, 'HISHAMUNDA', 'FELIX', '0783131533', '0783131533', 'teacher', 517),
(10, 'BITWAYIKI', 'THEODORE', '0788709445', '0788709445', 'teacher', 9331),
(11, 'NDAYISENGA', 'FRANCOISXAVIER', '0784078469', '0784078469', 'teacher', 4065),
(12, 'MBARUBUKEYE', 'VEDASTE', '0781162845', '0781162845', 'teacher', 2464),
(13, 'IRADUKUNDA', 'YVONNE', '0786697460', '0786697460', 'teacher', 266),
(14, 'BYUMVUHORE', 'JEANBAPTISTE', '0789857726', '0789857726', 'teacher', 7318);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `name`) VALUES
(1, 2019),
(3, 2020);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `2019_accomo`
--
ALTER TABLE `2019_accomo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_class_fees`
--
ALTER TABLE `2019_class_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_fees`
--
ALTER TABLE `2019_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_marks`
--
ALTER TABLE `2019_marks`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `2019_places`
--
ALTER TABLE `2019_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_quiz`
--
ALTER TABLE `2019_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_quiz_marks`
--
ALTER TABLE `2019_quiz_marks`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `2019_restaurent`
--
ALTER TABLE `2019_restaurent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_students`
--
ALTER TABLE `2019_students`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Indexes for table `2019_test`
--
ALTER TABLE `2019_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_test_marks`
--
ALTER TABLE `2019_test_marks`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `2019_test_places`
--
ALTER TABLE `2019_test_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_transport`
--
ALTER TABLE `2019_transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_class_fees`
--
ALTER TABLE `2020_class_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_fees`
--
ALTER TABLE `2020_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_marks`
--
ALTER TABLE `2020_marks`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `2020_places`
--
ALTER TABLE `2020_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_quiz`
--
ALTER TABLE `2020_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_quiz_marks`
--
ALTER TABLE `2020_quiz_marks`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `2020_students`
--
ALTER TABLE `2020_students`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Indexes for table `2020_test`
--
ALTER TABLE `2020_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_test_marks`
--
ALTER TABLE `2020_test_marks`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classcourse`
--
ALTER TABLE `classcourse`
  ADD PRIMARY KEY (`ccid`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`classid`),
  ADD UNIQUE KEY `classname` (`classname`);

--
-- Indexes for table `conduct`
--
ALTER TABLE `conduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `coursecat`
--
ALTER TABLE `coursecat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msgid`);

--
-- Indexes for table `mistakes`
--
ALTER TABLE `mistakes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolinfo`
--
ALTER TABLE `schoolinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tablename`
--
ALTER TABLE `tablename`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_table`
--
ALTER TABLE `test_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `2019_accomo`
--
ALTER TABLE `2019_accomo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `2019_class_fees`
--
ALTER TABLE `2019_class_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `2019_fees`
--
ALTER TABLE `2019_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `2019_marks`
--
ALTER TABLE `2019_marks`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17254;

--
-- AUTO_INCREMENT for table `2019_places`
--
ALTER TABLE `2019_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `2019_quiz`
--
ALTER TABLE `2019_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT for table `2019_quiz_marks`
--
ALTER TABLE `2019_quiz_marks`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001323;

--
-- AUTO_INCREMENT for table `2019_restaurent`
--
ALTER TABLE `2019_restaurent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `2019_students`
--
ALTER TABLE `2019_students`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `2019_test`
--
ALTER TABLE `2019_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2019_test_marks`
--
ALTER TABLE `2019_test_marks`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2019_test_places`
--
ALTER TABLE `2019_test_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2019_transport`
--
ALTER TABLE `2019_transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `2020_marks`
--
ALTER TABLE `2020_marks`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_quiz`
--
ALTER TABLE `2020_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_quiz_marks`
--
ALTER TABLE `2020_quiz_marks`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_students`
--
ALTER TABLE `2020_students`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classcourse`
--
ALTER TABLE `classcourse`
  MODIFY `ccid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `conduct`
--
ALTER TABLE `conduct`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `coursecat`
--
ALTER TABLE `coursecat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msgid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mistakes`
--
ALTER TABLE `mistakes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schoolinfo`
--
ALTER TABLE `schoolinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tablename`
--
ALTER TABLE `tablename`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `test_table`
--
ALTER TABLE `test_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `izubaedu_demo`
--
CREATE DATABASE IF NOT EXISTS `izubaedu_demo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `izubaedu_demo`;

-- --------------------------------------------------------

--
-- Table structure for table `2020_accomo`
--

CREATE TABLE `2020_accomo` (
  `id` int(11) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `restaurent` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_class_fees`
--

CREATE TABLE `2020_class_fees` (
  `id` int(11) NOT NULL,
  `classname` text NOT NULL,
  `term1` varchar(200) NOT NULL,
  `term2` varchar(200) NOT NULL,
  `term3` varchar(200) NOT NULL,
  `cid` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_fees`
--

CREATE TABLE `2020_fees` (
  `id` int(11) NOT NULL,
  `student` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `term1` varchar(200) NOT NULL,
  `term2` varchar(200) NOT NULL,
  `term3` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_marks`
--

CREATE TABLE `2020_marks` (
  `mid` int(11) NOT NULL,
  `names` varchar(255) NOT NULL,
  `reg` double NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `term1_quiz` double NOT NULL,
  `term1_exam` double NOT NULL,
  `term2_quiz` double NOT NULL,
  `term2_exam` double NOT NULL,
  `term3_quiz` double NOT NULL,
  `term3_exam` double NOT NULL,
  `term1_tot` double NOT NULL,
  `term2_tot` double NOT NULL,
  `term3_tot` double NOT NULL,
  `gmax` double NOT NULL,
  `gtot` double NOT NULL,
  `gper` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_places`
--

CREATE TABLE `2020_places` (
  `id` int(11) NOT NULL,
  `studentid` double NOT NULL,
  `term1` int(11) NOT NULL,
  `term2` int(11) NOT NULL,
  `term3` int(11) NOT NULL,
  `per1` double NOT NULL,
  `per2` double NOT NULL,
  `per3` double NOT NULL,
  `class` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_quiz`
--

CREATE TABLE `2020_quiz` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `tot` int(11) NOT NULL,
  `date` varchar(2555) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `term` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `testid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_quiz_marks`
--

CREATE TABLE `2020_quiz_marks` (
  `qid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `quiz_id` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL,
  `term` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_restaurent`
--

CREATE TABLE `2020_restaurent` (
  `id` int(11) NOT NULL,
  `reg` varchar(255) NOT NULL,
  `payed` bigint(20) NOT NULL,
  `rleft` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_students`
--

CREATE TABLE `2020_students` (
  `sid` int(11) NOT NULL,
  `sdms` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `regno` double NOT NULL,
  `fn` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `dof` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `PROVINCE` varchar(255) NOT NULL,
  `DISTRICT` varchar(255) NOT NULL,
  `SECTOR` varchar(255) NOT NULL,
  `CELL` varchar(255) NOT NULL,
  `VIRAGE` varchar(255) NOT NULL,
  `father` varchar(255) NOT NULL,
  `mother` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_test`
--

CREATE TABLE `2020_test` (
  `id` int(11) NOT NULL,
  `quizid` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `term` varchar(255) NOT NULL,
  `testid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_test_marks`
--

CREATE TABLE `2020_test_marks` (
  `qid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `quiz_id` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL,
  `class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_test_places`
--

CREATE TABLE `2020_test_places` (
  `id` int(11) NOT NULL,
  `test` varchar(255) NOT NULL,
  `regno` varchar(222) NOT NULL,
  `marks` varchar(222) NOT NULL,
  `place` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_transport`
--

CREATE TABLE `2020_transport` (
  `id` int(11) NOT NULL,
  `reg` varchar(255) NOT NULL,
  `payed` double NOT NULL,
  `tleft` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `evt` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `student` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classcourse`
--

CREATE TABLE `classcourse` (
  `ccid` int(11) NOT NULL,
  `coursename` varchar(200) NOT NULL,
  `classname` varchar(200) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `Teacher` varchar(200) NOT NULL,
  `randid` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `classid` int(11) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `teacher` int(11) NOT NULL,
  `lever` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conduct`
--

CREATE TABLE `conduct` (
  `id` int(20) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `conduct` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `cid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `option` varchar(255) NOT NULL,
  `tot` int(200) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'core',
  `cat` text NOT NULL,
  `sub` text NOT NULL,
  `upper` varchar(255) NOT NULL,
  `lower` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coursecat`
--

CREATE TABLE `coursecat` (
  `id` int(11) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL,
  `cname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `province` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `province`, `name`) VALUES
(1, 1, 'Karongi'),
(2, 1, 'Ngororero'),
(3, 1, 'Nyabihu'),
(4, 1, 'Nyamasheke'),
(5, 1, 'Rubavu'),
(6, 1, 'Rusizi'),
(7, 1, 'Rutsiro'),
(8, 3, 'Bugesera'),
(9, 3, 'Gatsibo'),
(10, 3, 'Kayonza'),
(11, 3, 'Kirehe'),
(12, 3, 'Ngoma'),
(13, 3, 'Nyagatare'),
(14, 3, 'Rwamagana'),
(15, 4, 'Gisagara'),
(16, 4, 'Huye'),
(17, 4, 'Kamonyi'),
(18, 4, 'Muhanga'),
(19, 4, 'Nyamagabe'),
(20, 4, 'Nyanza'),
(21, 4, 'Nyaruguru'),
(22, 4, 'Ruhango'),
(23, 5, 'Burera'),
(24, 5, 'Gakenke'),
(25, 5, 'Gicumbi'),
(26, 5, 'Musanze'),
(27, 5, 'Rulindo'),
(28, 2, 'Gasabo'),
(29, 2, 'Kicukiro'),
(30, 2, 'Nyarugenge');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msgid` int(11) NOT NULL,
  `sentsms` varchar(255) NOT NULL,
  `leftsms` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mistakes`
--

CREATE TABLE `mistakes` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `mistake` text NOT NULL,
  `details` text NOT NULL,
  `punishment` text NOT NULL,
  `reg` varchar(255) NOT NULL,
  `student` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `pid` int(11) NOT NULL,
  `opname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `motif` text NOT NULL,
  `returndate` varchar(255) NOT NULL,
  `reg` varchar(200) NOT NULL,
  `student` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
(1, 'west'),
(2, 'kigali city'),
(3, 'east'),
(4, 'south'),
(5, 'north');

-- --------------------------------------------------------

--
-- Table structure for table `schoolinfo`
--

CREATE TABLE `schoolinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `defaultyear` int(11) NOT NULL,
  `sendername` varchar(200) NOT NULL,
  `schoolcode` int(11) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `h1` text NOT NULL,
  `h2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolinfo`
--

INSERT INTO `schoolinfo` (`id`, `name`, `logo`, `manager`, `defaultyear`, `sendername`, `schoolcode`, `tel`, `email`, `h1`, `h2`) VALUES
(1, 'ECOLE SECONDAIRE MUGANZA', 'izubaedu_demo/izuba.png', 'School Manager\'s Name', 2020, 'EsMuganza', 6, '078888777', '', 'REPUBLIC OF RWANDA', 'MINISTRY OF EDUCATION');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `district`, `name`) VALUES
(1, 8, 'Gashora'),
(2, 8, 'Juru'),
(3, 8, 'Kamabuye'),
(4, 8, 'Ntarama'),
(5, 8, 'mareba'),
(6, 8, 'Mayange'),
(7, 8, 'Musenyi'),
(8, 8, 'Mwogo'),
(9, 8, 'Ngeruka'),
(10, 8, 'Nyamata'),
(11, 8, 'Nyarugenge'),
(12, 8, 'Rilima'),
(13, 8, 'Ruhuha'),
(14, 8, 'Rweru'),
(15, 8, 'Shyara'),
(16, 9, 'Gasange'),
(17, 9, 'Gatsibo'),
(18, 9, 'Gitoki'),
(19, 9, 'Kabarore'),
(20, 9, 'Kageyo'),
(21, 9, 'Kiramuruzi'),
(22, 9, 'Kiziguro'),
(23, 9, 'Muhura'),
(24, 9, 'Murambi'),
(25, 9, 'Ngarama'),
(26, 9, 'Nyagihanga'),
(27, 9, 'Remera'),
(29, 9, 'Rwimbogo'),
(28, 9, 'Rugarama'),
(30, 10, 'Gahini'),
(31, 10, 'Kabare'),
(32, 10, 'Kabarondo'),
(33, 10, 'Mukarage'),
(34, 10, 'Murama'),
(35, 10, 'Murundi'),
(36, 10, 'Mwiri'),
(37, 10, 'Ndengo'),
(38, 10, 'Nyamirama'),
(39, 10, 'Rukara'),
(40, 10, 'Ruramira'),
(41, 10, 'Rwinkwavu'),
(42, 11, 'Gahara'),
(43, 11, 'Gatore'),
(44, 11, 'Kigina'),
(45, 11, 'Kirehe'),
(46, 11, 'Muhama'),
(47, 11, 'Mpanga'),
(48, 11, 'Musaza'),
(49, 11, 'Mushikiri'),
(50, 11, 'Nasho'),
(51, 11, 'Nyamugari'),
(52, 11, 'Nyarubuye'),
(53, 11, 'Kigarama'),
(54, 12, 'Gashanda'),
(55, 12, 'Jarama'),
(56, 12, 'Karembo'),
(57, 12, 'Kazo'),
(58, 12, 'Kibungo'),
(59, 12, 'Mugesera'),
(60, 12, 'Murama'),
(61, 12, 'Mutenderi'),
(62, 12, 'Remera'),
(63, 12, 'Rukira'),
(64, 12, 'Rukumberi'),
(65, 12, 'Rurenge'),
(66, 12, 'Sake'),
(67, 12, 'Zaza'),
(68, 13, 'Gatunda'),
(69, 13, 'Kiyombe'),
(70, 13, 'Karama'),
(71, 13, 'Karangazi'),
(72, 13, 'Katabagemu'),
(73, 13, 'Matimba'),
(74, 13, 'Mimuli'),
(75, 13, 'Mukama'),
(76, 13, 'Musheri'),
(77, 13, 'Nyagatare'),
(78, 13, 'Rukomo'),
(79, 13, 'Rwempasha'),
(80, 13, 'Rwimiyaga'),
(81, 13, 'Tabagwe'),
(82, 14, 'Fumbwe'),
(83, 14, 'Gahengeri'),
(84, 14, 'Gishari'),
(85, 14, 'Karenge'),
(86, 14, 'Kigabiro'),
(87, 14, 'Muhazi'),
(88, 14, 'Munyanga'),
(89, 14, 'Munyiginya'),
(90, 14, 'Musha'),
(91, 14, 'Muyumbu'),
(92, 14, 'Mwulire'),
(93, 14, 'Nyakariro'),
(94, 14, 'Nzige'),
(95, 14, 'Rubona'),
(96, 28, 'Bumbogo'),
(97, 28, 'Gatsata'),
(98, 28, 'Jali'),
(99, 28, 'Gikomero'),
(100, 28, 'Gisozi'),
(101, 28, 'Jabana'),
(102, 28, 'Kinyinya'),
(103, 28, 'Ndera'),
(104, 28, 'Nduba'),
(105, 28, 'Rusororo'),
(106, 28, 'Rutunga'),
(107, 28, 'Kacyiru'),
(108, 28, 'Kimihurura'),
(109, 28, 'Kimironko'),
(110, 28, 'Remera'),
(111, 29, 'Gahanga'),
(112, 29, 'Gatenga'),
(113, 29, 'Gikondo'),
(114, 29, 'Kagarama'),
(115, 29, 'Kanombe'),
(116, 29, 'Kicukiro'),
(117, 29, 'Kigarama'),
(118, 29, 'Masaka'),
(119, 29, 'Niboye'),
(120, 29, 'Nyarugunga'),
(121, 30, 'Gitega'),
(122, 30, 'Kanyinya'),
(123, 30, 'Kigali'),
(124, 30, 'Kimisagara'),
(125, 30, 'Mageragere'),
(126, 30, 'Muhima'),
(127, 30, 'Nyakabanda'),
(128, 30, 'Nyamirambo'),
(129, 30, 'Rwezamenyo'),
(130, 30, 'Nyarugenge'),
(131, 23, 'Bungwe'),
(132, 23, 'Butaro'),
(133, 23, 'Cyanika'),
(134, 23, 'Cyeru'),
(135, 23, 'Gahunga'),
(136, 23, 'Gatebe'),
(137, 23, 'Gitovu'),
(138, 23, 'Kagogo'),
(139, 23, 'Kinoni'),
(140, 23, 'Kinyababa'),
(141, 23, 'Kivuye'),
(142, 23, 'Nemba'),
(143, 23, 'Rugarama'),
(144, 23, 'Rugendabari'),
(145, 23, 'Ruhunde'),
(146, 23, 'Rusarabuge'),
(147, 23, 'Rwerere'),
(148, 24, 'Busengo'),
(149, 24, 'Coko'),
(150, 24, 'Cyabingo'),
(151, 24, 'Gakenke'),
(152, 24, 'Gashenyi'),
(153, 24, 'Mugunga'),
(154, 24, 'Janja'),
(155, 24, 'Kamubuga'),
(156, 24, 'Karambo'),
(157, 24, 'Kivuruga'),
(158, 24, 'Mataba'),
(159, 24, 'Minazi'),
(160, 24, 'Muhondo'),
(161, 24, 'Muyongwe'),
(162, 24, 'Muzo'),
(163, 24, 'Nemba'),
(164, 24, 'Ruli'),
(165, 24, 'Rusasa'),
(166, 24, 'Rushashi'),
(167, 25, 'Bukure'),
(168, 25, 'Bwisige'),
(169, 25, 'Byumba'),
(170, 25, 'Cyumba'),
(171, 25, 'Giti'),
(172, 25, 'Kaniga'),
(173, 25, 'Manyagiro'),
(174, 25, 'Miyove'),
(175, 25, 'Kageyo'),
(176, 25, 'Mukarange'),
(177, 25, 'Muko'),
(178, 25, 'Mutete'),
(179, 25, 'Nyamiyaga'),
(180, 25, 'Nyankeke'),
(181, 25, 'Rubaya'),
(182, 25, 'Rukomo'),
(183, 25, 'Rushaki'),
(184, 25, 'Rutare'),
(185, 25, 'Ruvune'),
(186, 25, 'Rwamiko'),
(187, 25, 'Shangasha'),
(188, 26, 'Busogo'),
(189, 26, 'Cyuve'),
(190, 26, 'Gacaca'),
(191, 26, 'Gashaki'),
(192, 26, 'Gataraga'),
(193, 26, 'Kimonyi'),
(194, 26, 'Kinigi'),
(195, 26, 'Muhoza'),
(196, 26, 'Muko'),
(197, 26, 'Musanze'),
(198, 26, 'Nkotsi'),
(199, 26, 'Nyange'),
(200, 26, 'Remera'),
(201, 26, 'Rwaza'),
(202, 26, 'Shingiro'),
(203, 27, 'Base'),
(204, 27, 'Burega'),
(205, 27, 'Bushoki'),
(206, 27, 'Buyoga'),
(207, 27, 'Cyinzuzi'),
(208, 27, 'Cyungo'),
(209, 27, 'Kinihira'),
(210, 27, 'Kisaro'),
(211, 27, 'Masoro'),
(212, 27, 'Mbogo'),
(213, 27, 'Murambi'),
(214, 27, 'Ngoma'),
(215, 27, 'Ntarabana'),
(216, 27, 'Rukozo'),
(217, 27, 'Rusiga'),
(218, 27, 'Shyorongi'),
(219, 27, 'Tumba'),
(220, 15, 'Gakonko'),
(221, 15, 'Gishubi'),
(222, 15, 'Kansi'),
(223, 15, 'Kibilizi'),
(224, 15, 'Kigembe'),
(225, 15, 'Mamba'),
(226, 15, 'Muganza'),
(227, 15, 'Mugombwa'),
(228, 15, 'Mukindo'),
(229, 15, 'Musha'),
(230, 15, 'Ndora'),
(231, 15, 'Nyanza'),
(232, 15, 'Save'),
(233, 16, 'Gashamu'),
(234, 16, 'Karama'),
(235, 16, 'Kigoma'),
(236, 16, 'Kinazi'),
(237, 16, 'Maraba'),
(238, 16, 'Mbazi'),
(239, 16, 'Mukura'),
(240, 16, 'Ngoma'),
(241, 16, 'Ruhashya'),
(242, 16, 'Rusatira'),
(243, 16, 'Rwaniro'),
(244, 16, 'Simbi'),
(245, 16, 'Tumba'),
(246, 16, 'Huye'),
(247, 17, 'Gacurabwenge'),
(248, 17, 'Karama'),
(249, 17, 'Kayenzi'),
(250, 17, 'Kayumbu'),
(251, 17, 'Mugina'),
(252, 17, 'Musambira'),
(253, 17, 'Ngamba'),
(254, 17, 'Nyamiyaga'),
(255, 17, 'Nyarubaka'),
(256, 17, 'Rugalika'),
(257, 17, 'Rukoma'),
(258, 17, 'Runda'),
(259, 18, 'Cyeza'),
(260, 18, 'Kabacuzi'),
(261, 18, 'Kibangu'),
(262, 18, 'Kiyumba'),
(263, 18, 'Muhanga'),
(264, 18, 'Mushishiro'),
(265, 18, 'Nyabinoni'),
(266, 18, 'Nyamabuye'),
(267, 18, 'Nyarusange'),
(268, 18, 'Rongi'),
(269, 18, 'Rugendabari'),
(270, 18, 'Shyogwe'),
(272, 19, 'Buruhukiro'),
(273, 19, 'Cyaniko'),
(274, 19, 'Gatare'),
(275, 19, 'Kaduha'),
(276, 19, 'Kamegeli'),
(277, 19, 'Kibirizi'),
(278, 19, 'Kibumbwe'),
(279, 19, 'Kitabi'),
(280, 19, 'Mbazi'),
(281, 19, 'Mugano'),
(282, 19, 'Musange'),
(283, 19, 'Musebeya'),
(284, 19, 'Mushubi'),
(285, 19, 'Nkomane'),
(286, 19, 'Gasaka'),
(287, 19, 'Tare'),
(288, 19, 'Uwinkingi'),
(289, 20, 'Busasamana'),
(290, 20, 'Busoro'),
(291, 20, 'Cyabakamyi'),
(292, 20, 'Kibirizi'),
(293, 20, 'Kigoma'),
(294, 20, 'Mukingo'),
(295, 20, 'Rwabicuma'),
(296, 20, 'Muyira'),
(297, 20, 'Ntyazo'),
(298, 20, 'Nyagisozi'),
(299, 21, 'Cyahinda'),
(300, 21, 'Busanze'),
(301, 21, 'Kibeho'),
(302, 21, 'Mata'),
(303, 21, 'Munini'),
(304, 21, 'Kivu'),
(305, 21, 'Ngera'),
(306, 21, 'Ngoma'),
(307, 21, 'Nyabimata'),
(308, 21, 'Nyagisozi'),
(309, 21, 'Ruheru'),
(310, 21, 'Muganza'),
(311, 21, 'Ruramba'),
(312, 21, 'Rusenge'),
(313, 22, 'Bweramana'),
(314, 22, 'Byimana'),
(315, 22, 'Kabagari'),
(316, 22, 'Kinazi'),
(317, 22, 'Kinihira'),
(318, 22, 'Mbuye'),
(319, 22, 'Mwendo'),
(320, 22, 'Ntongwe'),
(321, 22, 'Ruhango'),
(322, 1, 'Bwishyura'),
(323, 1, 'Gishari'),
(324, 1, 'Gishyita'),
(325, 1, 'Gisovu'),
(326, 1, 'Gitesi'),
(327, 1, 'Murundi'),
(328, 1, 'Murambi'),
(329, 1, 'Mubuga'),
(330, 1, 'Mutuntu'),
(331, 1, 'Rugabano'),
(332, 1, 'Ruganda'),
(333, 1, 'Rwankuba'),
(334, 1, 'Twumba'),
(335, 2, 'Bwira'),
(336, 2, 'Gatumba'),
(337, 2, 'Hindiro'),
(338, 2, 'Kabaya'),
(339, 2, 'Kageyo'),
(340, 2, 'Kavumu'),
(341, 2, 'Matyazo'),
(342, 2, 'Muhanda'),
(343, 2, 'Muhororo'),
(344, 2, 'Ndaro'),
(345, 2, 'Ngororero'),
(346, 2, 'Nyange'),
(347, 2, 'Sovu'),
(348, 3, 'Bigogwe'),
(349, 3, 'Jenda'),
(350, 3, 'Jomba'),
(351, 3, 'Kabatwa'),
(352, 3, 'Karago'),
(353, 3, 'Kintobo'),
(354, 3, 'Mukamira'),
(355, 3, 'Muringa'),
(356, 3, 'Rambura'),
(357, 3, 'Rugera'),
(358, 3, 'Rurembo'),
(359, 3, 'Shyira'),
(360, 4, 'Bushekeri'),
(361, 4, 'Bushenge'),
(362, 4, 'Cyato'),
(363, 4, 'Gihombo'),
(364, 4, 'Kagano'),
(365, 4, 'Kanjongo'),
(366, 4, 'Karambi'),
(367, 4, 'Karengera'),
(368, 4, 'Kirimbi'),
(369, 4, 'Macuba'),
(370, 4, 'Mahembe'),
(371, 4, 'Nyabitekeri'),
(372, 4, 'Rangiro'),
(373, 4, 'Ruharambuga'),
(374, 4, 'Shangi'),
(375, 5, 'Bugeshi'),
(376, 5, 'Busasamana'),
(377, 5, 'Cyanzarwe'),
(378, 5, 'Gisenyi'),
(379, 5, 'Kanama'),
(380, 5, 'Kanzenze'),
(381, 5, 'Mudende'),
(382, 5, 'Nyakiliba'),
(383, 5, 'Nyabyumba'),
(384, 5, 'Nyundo'),
(385, 5, 'Rubavu'),
(386, 5, 'Rugerero'),
(387, 6, 'Bugarama'),
(388, 6, 'Butare'),
(389, 6, 'Bweyeye'),
(390, 6, 'Gikundamvura'),
(391, 6, 'Gashonga'),
(392, 6, 'Giheke'),
(393, 6, 'Gihundwe'),
(394, 6, 'Gitambi'),
(395, 6, 'Kamembe'),
(396, 6, 'Muganza'),
(397, 6, 'Mururu'),
(398, 6, 'Nkanka'),
(399, 6, 'Nkombo'),
(400, 6, 'Nkungu'),
(401, 6, 'Nyakabuye'),
(402, 6, 'Nyakarenzo'),
(403, 6, 'Nzahaha'),
(404, 6, 'Rwimbogo'),
(405, 7, 'Boneza'),
(406, 7, 'Gihango'),
(407, 7, 'Kigeyo'),
(408, 7, 'Kivumu'),
(409, 7, 'Manihira'),
(410, 7, 'Mukura'),
(411, 7, 'Murunda'),
(412, 7, 'Musasa'),
(413, 7, 'Mushonyi'),
(414, 7, 'Mushubati'),
(415, 7, 'Nyabirasa'),
(416, 7, 'Ruhango'),
(417, 7, 'Rusebeya');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `sdms` text NOT NULL,
  `ln` varchar(255) NOT NULL,
  `Fn` text NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tablename`
--

CREATE TABLE `tablename` (
  `id` int(11) NOT NULL,
  `student` varchar(255) NOT NULL,
  `groups` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `Tel` varchar(255) NOT NULL,
  `idno` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `rand_id` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_table`
--

CREATE TABLE `test_table` (
  `id` int(11) NOT NULL,
  `testid` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `tot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` int(11) NOT NULL,
  `teacherid` varchar(255) NOT NULL,
  `classid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `rand_id` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `name`) VALUES
(1, 2020);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `2020_accomo`
--
ALTER TABLE `2020_accomo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_class_fees`
--
ALTER TABLE `2020_class_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_fees`
--
ALTER TABLE `2020_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_marks`
--
ALTER TABLE `2020_marks`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `2020_places`
--
ALTER TABLE `2020_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_quiz`
--
ALTER TABLE `2020_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_quiz_marks`
--
ALTER TABLE `2020_quiz_marks`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `2020_restaurent`
--
ALTER TABLE `2020_restaurent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_students`
--
ALTER TABLE `2020_students`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Indexes for table `2020_test`
--
ALTER TABLE `2020_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_test_marks`
--
ALTER TABLE `2020_test_marks`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `2020_test_places`
--
ALTER TABLE `2020_test_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_transport`
--
ALTER TABLE `2020_transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classcourse`
--
ALTER TABLE `classcourse`
  ADD PRIMARY KEY (`ccid`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`classid`),
  ADD UNIQUE KEY `classname` (`classname`);

--
-- Indexes for table `conduct`
--
ALTER TABLE `conduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `coursecat`
--
ALTER TABLE `coursecat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mistakes`
--
ALTER TABLE `mistakes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolinfo`
--
ALTER TABLE `schoolinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tablename`
--
ALTER TABLE `tablename`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_table`
--
ALTER TABLE `test_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `2020_accomo`
--
ALTER TABLE `2020_accomo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_class_fees`
--
ALTER TABLE `2020_class_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_fees`
--
ALTER TABLE `2020_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_marks`
--
ALTER TABLE `2020_marks`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_places`
--
ALTER TABLE `2020_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_quiz`
--
ALTER TABLE `2020_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_quiz_marks`
--
ALTER TABLE `2020_quiz_marks`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_restaurent`
--
ALTER TABLE `2020_restaurent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_students`
--
ALTER TABLE `2020_students`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_test`
--
ALTER TABLE `2020_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_test_marks`
--
ALTER TABLE `2020_test_marks`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_test_places`
--
ALTER TABLE `2020_test_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_transport`
--
ALTER TABLE `2020_transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classcourse`
--
ALTER TABLE `classcourse`
  MODIFY `ccid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conduct`
--
ALTER TABLE `conduct`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coursecat`
--
ALTER TABLE `coursecat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `mistakes`
--
ALTER TABLE `mistakes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schoolinfo`
--
ALTER TABLE `schoolinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tablename`
--
ALTER TABLE `tablename`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_table`
--
ALTER TABLE `test_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `izubaedu_esmuganza`
--
CREATE DATABASE IF NOT EXISTS `izubaedu_esmuganza` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `izubaedu_esmuganza`;

-- --------------------------------------------------------

--
-- Table structure for table `2020_accomo`
--

CREATE TABLE `2020_accomo` (
  `id` int(11) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `restaurent` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_class_fees`
--

CREATE TABLE `2020_class_fees` (
  `id` int(11) NOT NULL,
  `classname` text NOT NULL,
  `term1` varchar(200) NOT NULL,
  `term2` varchar(200) NOT NULL,
  `term3` varchar(200) NOT NULL,
  `cid` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2020_class_fees`
--

INSERT INTO `2020_class_fees` (`id`, `classname`, `term1`, `term2`, `term3`, `cid`) VALUES
(1, 'S1A', '', '', '', 1),
(2, 'S1B', '', '', '', 2),
(3, 'S1C', '', '', '', 3),
(4, 'S2A', '', '', '', 4),
(5, 'S2B', '', '', '', 5),
(6, 'S3A', '', '', '', 6),
(7, 'S3B', '', '', '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `2020_fees`
--

CREATE TABLE `2020_fees` (
  `id` int(11) NOT NULL,
  `student` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `term1` varchar(200) NOT NULL,
  `term2` varchar(200) NOT NULL,
  `term3` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2020_fees`
--

INSERT INTO `2020_fees` (`id`, `student`, `class`, `term1`, `term2`, `term3`) VALUES
(1, '6204615049', 'S1A', '0', '0', '0'),
(2, '6204899836', 'S1A', '0', '0', '0'),
(3, '620392320237', 'S1A', '0', '0', '0'),
(4, '62055780023', 'S1A', '0', '0', '0'),
(5, '620617640215', 'S1A', '0', '0', '0'),
(6, '62085341026', 'S1A', '0', '0', '0'),
(7, '62081422023', 'S1A', '0', '0', '0'),
(8, '620196370226', 'S1A', '0', '0', '0'),
(9, '62047089028', 'S1A', '0', '0', '0'),
(10, '620133420226', 'S1A', '0', '0', '0'),
(11, '620482370227', 'S1A', '0', '0', '0'),
(12, '620470870238', 'S1A', '0', '0', '0'),
(13, '62032730028', 'S1A', '0', '0', '0'),
(14, '620248810239', 'S1A', '0', '0', '0'),
(15, '620303490224', 'S1A', '0', '0', '0'),
(16, '620586440237', 'S1A', '0', '0', '0'),
(17, '62070034023', 'S1A', '0', '0', '0'),
(18, '620744450215', 'S1A', '0', '0', '0'),
(19, '620457870210', 'S1A', '0', '0', '0'),
(20, '620613910225', 'S1A', '0', '0', '0'),
(21, '620317430237', 'S1A', '0', '0', '0'),
(22, '620840850231', 'S1A', '0', '0', '0'),
(23, '620787210240', 'S1A', '0', '0', '0'),
(24, '620130370232', 'S1A', '0', '0', '0'),
(25, '620103600210', 'S1A', '0', '0', '0'),
(26, '620564250225', 'S1A', '0', '0', '0'),
(27, '620504920236', 'S1A', '0', '0', '0'),
(28, '620553750212', 'S1A', '0', '0', '0'),
(29, '62084625027', 'S1A', '0', '0', '0'),
(30, '62024183023', 'S1A', '0', '0', '0'),
(31, '620727170218', 'S1A', '0', '0', '0'),
(32, '620656100211', 'S1A', '0', '0', '0'),
(33, '620472870216', 'S1A', '0', '0', '0'),
(34, '620470910229', 'S1A', '0', '0', '0'),
(35, '620306910211', 'S1A', '0', '0', '0'),
(36, '620497540218', 'S1A', '0', '0', '0'),
(37, '620194990215', 'S1A', '0', '0', '0'),
(38, '62011260024', 'S1A', '0', '0', '0'),
(39, '620347540211', 'S1A', '0', '0', '0'),
(40, '62046870023', 'S1A', '0', '0', '0'),
(41, '62051050026', 'S1A', '0', '0', '0'),
(42, '62085423027', 'S1A', '0', '0', '0'),
(43, '62026965021', 'S1A', '0', '0', '0'),
(44, '620584160238', 'S1A', '0', '0', '0'),
(45, '620346400234', 'S1A', '0', '0', '0'),
(46, '620560840214', 'S1A', '0', '0', '0'),
(47, '620110950213', 'S1A', '0', '0', '0'),
(48, '620397960236', 'S1A', '0', '0', '0'),
(49, '620463340215', 'S1A', '0', '0', '0'),
(50, '62066776022', 'S1A', '0', '0', '0'),
(51, '620719320220', 'S1A', '0', '0', '0'),
(52, '620839260226', 'S1A', '0', '0', '0'),
(53, '620164450211', 'S1A', '0', '0', '0'),
(54, '620182100214', 'S1A', '0', '0', '0'),
(55, '620124380227', 'S1A', '0', '0', '0'),
(56, '620794890320', 'S1A', '0', '0', '0'),
(57, '620253900318', 'S1A', '0', '0', '0'),
(58, '620542631634', 'S1B', '0', '0', '0'),
(59, '62052398168', 'S1B', '0', '0', '0'),
(60, '620337591639', 'S1B', '0', '0', '0'),
(61, '620441801637', 'S1B', '0', '0', '0'),
(62, '620430301623', 'S1B', '0', '0', '0'),
(63, '62017451169', 'S1B', '0', '0', '0'),
(64, '620337921618', 'S1B', '0', '0', '0'),
(65, '620657351631', 'S1B', '0', '0', '0'),
(66, '620554831634', 'S1B', '0', '0', '0'),
(67, '620318341621', 'S1B', '0', '0', '0'),
(68, '62057484165', 'S1B', '0', '0', '0'),
(69, '62045241164', 'S1B', '0', '0', '0'),
(70, '620607681626', 'S1B', '0', '0', '0'),
(71, '620578161617', 'S1B', '0', '0', '0'),
(72, '620499541626', 'S1B', '0', '0', '0'),
(73, '62014162165', 'S1B', '0', '0', '0'),
(74, '62031389161', 'S1B', '0', '0', '0'),
(75, '620672611613', 'S1B', '0', '0', '0'),
(76, '62048022166', 'S1B', '0', '0', '0'),
(77, '620346471617', 'S1B', '0', '0', '0'),
(78, '620755101610', 'S1B', '0', '0', '0'),
(79, '620841501624', 'S1B', '0', '0', '0'),
(80, '620111171610', 'S1B', '0', '0', '0'),
(81, '620621711613', 'S1B', '0', '0', '0'),
(82, '620154251632', 'S1B', '0', '0', '0'),
(83, '620670301616', 'S1B', '0', '0', '0'),
(84, '620758541611', 'S1B', '0', '0', '0'),
(85, '620774291634', 'S1B', '0', '0', '0'),
(86, '620220711639', 'S1B', '0', '0', '0'),
(87, '620324991616', 'S1B', '0', '0', '0'),
(88, '620646831616', 'S1B', '0', '0', '0'),
(89, '620828761634', 'S1B', '0', '0', '0'),
(90, '620493771637', 'S1B', '0', '0', '0'),
(91, '620679461625', 'S1B', '0', '0', '0'),
(92, '620126521632', 'S1B', '0', '0', '0'),
(93, '62076726161', 'S1B', '0', '0', '0'),
(94, '620271101621', 'S1B', '0', '0', '0'),
(95, '620479861629', 'S1B', '0', '0', '0'),
(96, '620345991617', 'S1B', '0', '0', '0'),
(97, '620325351616', 'S1B', '0', '0', '0'),
(98, '62063796169', 'S1B', '0', '0', '0'),
(99, '620152881639', 'S1B', '0', '0', '0'),
(100, '620827421629', 'S1B', '0', '0', '0'),
(101, '62076517165', 'S1B', '0', '0', '0'),
(102, '620446201624', 'S1B', '0', '0', '0'),
(103, '620269951631', 'S1B', '0', '0', '0'),
(104, '620277251632', 'S1B', '0', '0', '0'),
(105, '620681671625', 'S1B', '0', '0', '0'),
(106, '620454951625', 'S1B', '0', '0', '0'),
(107, '620778301637', 'S1B', '0', '0', '0'),
(108, '620297911635', 'S1B', '0', '0', '0'),
(109, '620467961630', 'S1B', '0', '0', '0'),
(110, '62042988165', 'S1B', '0', '0', '0'),
(111, '62019473168', 'S1B', '0', '0', '0'),
(112, '620283221613', 'S1B', '0', '0', '0'),
(113, '620752411611', 'S1B', '0', '0', '0'),
(114, '620567611618', 'S1B', '0', '0', '0'),
(115, '620226660137', 'S1C', '0', '0', '0'),
(116, '620668990118', 'S1C', '0', '0', '0'),
(117, '620491930121', 'S1C', '0', '0', '0'),
(118, '620825400127', 'S1C', '0', '0', '0'),
(119, '62082121019', 'S1C', '0', '0', '0'),
(120, '62031693013', 'S1C', '0', '0', '0'),
(121, '620376920128', 'S1C', '0', '0', '0'),
(122, '620274860137', 'S1C', '0', '0', '0'),
(123, '620610630113', 'S1C', '0', '0', '0'),
(124, '62024050017', 'S1C', '0', '0', '0'),
(125, '620426640132', 'S1C', '0', '0', '0'),
(126, '620362380132', 'S1C', '0', '0', '0'),
(127, '620706820129', 'S1C', '0', '0', '0'),
(128, '62031374013', 'S1C', '0', '0', '0'),
(129, '62084265018', 'S1C', '0', '0', '0'),
(130, '62021889015', 'S1C', '0', '0', '0'),
(131, '62026230012', 'S1C', '0', '0', '0'),
(132, '620803500136', 'S1C', '0', '0', '0'),
(133, '620742170120', 'S1C', '0', '0', '0'),
(134, '620194330138', 'S1C', '0', '0', '0'),
(135, '620328690122', 'S1C', '0', '0', '0'),
(136, '62038736113', 'S2A', '0', '0', '0'),
(137, '62088876111', 'S2A', '0', '0', '0'),
(138, '620586621111', 'S2A', '0', '0', '0'),
(139, '62050884117', 'S2A', '0', '0', '0'),
(140, '62040036115', 'S2A', '0', '0', '0'),
(141, '620190731140', 'S2A', '0', '0', '0'),
(142, '620270831128', 'S2A', '0', '0', '0'),
(143, '620420141134', 'S2A', '0', '0', '0'),
(144, '62066787118', 'S2A', '0', '0', '0'),
(145, '620877501131', 'S2A', '0', '0', '0'),
(146, '62042082113', 'S2A', '0', '0', '0'),
(147, '620478811132', 'S2A', '0', '0', '0'),
(148, '620494451116', 'S2A', '0', '0', '0'),
(149, '62069491119', 'S2A', '0', '0', '0'),
(150, '620815351121', 'S2A', '0', '0', '0'),
(151, '62010945119', 'S2A', '0', '0', '0'),
(152, '62010264112', 'S2A', '0', '0', '0'),
(153, '62066111114', 'S2A', '0', '0', '0'),
(154, '620529741138', 'S2A', '0', '0', '0'),
(155, '620678721116', 'S2A', '0', '0', '0'),
(156, '62048418119', 'S2A', '0', '0', '0'),
(157, '620528601140', 'S2A', '0', '0', '0'),
(158, '620363141116', 'S2A', '0', '0', '0'),
(159, '620670811113', 'S2A', '0', '0', '0'),
(160, '620842721124', 'S2A', '0', '0', '0'),
(161, '620448731140', 'S2A', '0', '0', '0'),
(162, '620617731125', 'S2A', '0', '0', '0'),
(163, '620643461125', 'S2A', '0', '0', '0'),
(164, '620710951114', 'S2A', '0', '0', '0'),
(165, '62067070111', 'S2A', '0', '0', '0'),
(166, '62018723115', 'S2A', '0', '0', '0'),
(167, '620352711128', 'S2A', '0', '0', '0'),
(168, '620350101130', 'S2A', '0', '0', '0'),
(169, '620668751122', 'S2A', '0', '0', '0'),
(170, '62011368119', 'S2A', '0', '0', '0'),
(171, '620587171138', 'S2A', '0', '0', '0'),
(172, '620579751126', 'S2A', '0', '0', '0'),
(173, '62026046112', 'S2A', '0', '0', '0'),
(174, '620750251140', 'S2A', '0', '0', '0'),
(175, '620215891127', 'S2A', '0', '0', '0'),
(176, '620234991133', 'S2A', '0', '0', '0'),
(177, '620325371120', 'S2A', '0', '0', '0'),
(178, '620867651120', 'S2A', '0', '0', '0'),
(179, '62065339119', 'S2A', '0', '0', '0'),
(180, '620277411135', 'S2A', '0', '0', '0'),
(181, '620456951138', 'S2A', '0', '0', '0'),
(182, '620397591128', 'S2A', '0', '0', '0'),
(183, '62010477114', 'S2A', '0', '0', '0'),
(184, '620137601111', 'S2A', '0', '0', '0'),
(185, '62012673116', 'S2A', '0', '0', '0'),
(186, '62064989116', 'S2A', '0', '0', '0'),
(187, '620446353624', 'S2B', '0', '0', '0'),
(188, '620856733632', 'S2B', '0', '0', '0'),
(189, '620699813633', 'S2B', '0', '0', '0'),
(190, '62047647361', 'S2B', '0', '0', '0'),
(191, '620599593632', 'S2B', '0', '0', '0'),
(192, '620402103617', 'S2B', '0', '0', '0'),
(193, '620477543617', 'S2B', '0', '0', '0'),
(194, '620665213635', 'S2B', '0', '0', '0'),
(195, '62068886361', 'S2B', '0', '0', '0'),
(196, '620758513610', 'S2B', '0', '0', '0'),
(197, '620878903621', 'S2B', '0', '0', '0'),
(198, '62053985369', 'S2B', '0', '0', '0'),
(199, '62037663361', 'S2B', '0', '0', '0'),
(200, '620231153617', 'S2B', '0', '0', '0'),
(201, '620249713639', 'S2B', '0', '0', '0'),
(202, '620879153639', 'S2B', '0', '0', '0'),
(203, '620409583619', 'S2B', '0', '0', '0'),
(204, '620736313624', 'S2B', '0', '0', '0'),
(205, '620634973618', 'S2B', '0', '0', '0'),
(206, '620645813636', 'S2B', '0', '0', '0'),
(207, '620827793632', 'S2B', '0', '0', '0'),
(208, '620434383626', 'S2B', '0', '0', '0'),
(209, '620602693610', 'S2B', '0', '0', '0'),
(210, '620605843612', 'S2B', '0', '0', '0'),
(211, '620138113640', 'S2B', '0', '0', '0'),
(212, '62011298362', 'S2B', '0', '0', '0'),
(213, '620891433624', 'S2B', '0', '0', '0'),
(214, '620462253633', 'S2B', '0', '0', '0'),
(215, '620132853632', 'S2B', '0', '0', '0'),
(216, '620478563624', 'S2B', '0', '0', '0'),
(217, '620397483615', 'S2B', '0', '0', '0'),
(218, '620235853628', 'S2B', '0', '0', '0'),
(219, '620749523614', 'S2B', '0', '0', '0'),
(220, '62013419368', 'S2B', '0', '0', '0'),
(221, '62037023368', 'S2B', '0', '0', '0'),
(222, '62035424368', 'S2B', '0', '0', '0'),
(223, '620390233623', 'S2B', '0', '0', '0'),
(224, '620853643629', 'S2B', '0', '0', '0'),
(225, '620709683623', 'S2B', '0', '0', '0'),
(226, '62054620363', 'S2B', '0', '0', '0'),
(227, '620221543621', 'S2B', '0', '0', '0'),
(228, '620512693614', 'S2B', '0', '0', '0'),
(229, '620259523633', 'S2B', '0', '0', '0'),
(230, '620537563637', 'S2B', '0', '0', '0'),
(231, '62067786363', 'S2B', '0', '0', '0'),
(232, '62083025369', 'S2B', '0', '0', '0'),
(233, '620172573616', 'S2B', '0', '0', '0'),
(234, '620615523640', 'S2B', '0', '0', '0'),
(235, '620392303626', 'S2B', '0', '0', '0'),
(236, '620763592838', 'S3A', '0', '0', '0'),
(237, '620624812837', 'S3A', '0', '0', '0'),
(238, '620826472824', 'S3A', '0', '0', '0'),
(239, '620611652828', 'S3A', '0', '0', '0'),
(240, '620702992839', 'S3A', '0', '0', '0'),
(241, '620360932840', 'S3A', '0', '0', '0'),
(242, '62034197286', 'S3A', '0', '0', '0'),
(243, '620106692827', 'S3A', '0', '0', '0'),
(244, '62071224287', 'S3A', '0', '0', '0'),
(245, '620467312815', 'S3A', '0', '0', '0'),
(246, '620198162837', 'S3A', '0', '0', '0'),
(247, '620143742829', 'S3A', '0', '0', '0'),
(248, '62087266285', 'S3A', '0', '0', '0'),
(249, '620539342830', 'S3A', '0', '0', '0'),
(250, '620288112830', 'S3A', '0', '0', '0'),
(251, '620253412827', 'S3A', '0', '0', '0'),
(252, '620234682825', 'S3A', '0', '0', '0'),
(253, '620335682812', 'S3A', '0', '0', '0'),
(254, '620868472818', 'S3A', '0', '0', '0'),
(255, '620199882828', 'S3A', '0', '0', '0'),
(256, '620485992830', 'S3A', '0', '0', '0'),
(257, '620409142819', 'S3A', '0', '0', '0'),
(258, '62017211284', 'S3A', '0', '0', '0'),
(259, '620271612815', 'S3A', '0', '0', '0'),
(260, '620862822816', 'S3A', '0', '0', '0'),
(261, '620643992830', 'S3A', '0', '0', '0'),
(262, '620364242815', 'S3A', '0', '0', '0'),
(263, '62086051282', 'S3A', '0', '0', '0'),
(264, '620279472818', 'S3A', '0', '0', '0'),
(265, '620631582813', 'S3A', '0', '0', '0'),
(266, '620839815330', 'S3B', '0', '0', '0'),
(267, '620899945310', 'S3B', '0', '0', '0'),
(268, '620499515336', 'S3B', '0', '0', '0'),
(269, '620773685315', 'S3B', '0', '0', '0'),
(270, '620623285335', 'S3B', '0', '0', '0'),
(271, '620552935329', 'S3B', '0', '0', '0'),
(272, '620601855336', 'S3B', '0', '0', '0'),
(273, '620781935317', 'S3B', '0', '0', '0'),
(274, '620282615336', 'S3B', '0', '0', '0'),
(275, '62026694536', 'S3B', '0', '0', '0'),
(276, '620768875337', 'S3B', '0', '0', '0'),
(277, '620563875335', 'S3B', '0', '0', '0'),
(278, '620750415313', 'S3B', '0', '0', '0'),
(279, '620665275339', 'S3B', '0', '0', '0'),
(280, '62015486537', 'S3B', '0', '0', '0'),
(281, '62085447534', 'S3B', '0', '0', '0'),
(282, '620633135338', 'S3B', '0', '0', '0'),
(283, '620547905335', 'S3B', '0', '0', '0'),
(284, '620886205317', 'S3B', '0', '0', '0'),
(285, '620802395315', 'S3B', '0', '0', '0'),
(286, '62010324539', 'S3B', '0', '0', '0'),
(287, '62083776533', 'S3B', '0', '0', '0'),
(288, '620724595318', 'S3B', '0', '0', '0'),
(289, '620175335325', 'S3B', '0', '0', '0'),
(290, '620151395319', 'S3B', '0', '0', '0'),
(291, '620288345336', 'S3B', '0', '0', '0'),
(292, '620363945337', 'S3B', '0', '0', '0'),
(293, '620305545333', 'S3B', '0', '0', '0'),
(294, '620188525338', 'S3B', '0', '0', '0'),
(295, '620527415311', 'S3B', '0', '0', '0'),
(296, '6204512634', 'S1A', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `2020_marks`
--

CREATE TABLE `2020_marks` (
  `mid` int(11) NOT NULL,
  `names` varchar(255) NOT NULL,
  `reg` double NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `term1_quiz` double NOT NULL,
  `term1_exam` double NOT NULL,
  `term2_quiz` double NOT NULL,
  `term2_exam` double NOT NULL,
  `term3_quiz` double NOT NULL,
  `term3_exam` double NOT NULL,
  `term1_tot` double NOT NULL,
  `term2_tot` double NOT NULL,
  `term3_tot` double NOT NULL,
  `gmax` double NOT NULL,
  `gtot` double NOT NULL,
  `gper` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2020_marks`
--

INSERT INTO `2020_marks` (`mid`, `names`, `reg`, `cname`, `class`, `term1_quiz`, `term1_exam`, `term2_quiz`, `term2_exam`, `term3_quiz`, `term3_exam`, `term1_tot`, `term2_tot`, `term3_tot`, `gmax`, `gtot`, `gper`) VALUES
(1, '', 620392320237, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '', 62055780023, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '', 620617640215, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, '', 62085341026, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, '', 62081422023, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, '', 620196370226, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, '', 62047089028, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, '', 620133420226, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, '', 620482370227, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, '', 620470870238, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, '', 62032730028, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, '', 620248810239, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, '', 620303490224, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, '', 620586440237, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, '', 62070034023, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, '', 620744450215, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, '', 620457870210, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, '', 620613910225, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, '', 620317430237, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, '', 620840850231, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, '', 620787210240, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, '', 620130370232, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, '', 620103600210, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, '', 620564250225, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, '', 620504920236, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, '', 620553750212, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, '', 62084625027, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, '', 62024183023, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, '', 620727170218, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, '', 620656100211, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, '', 620472870216, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, '', 620470910229, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, '', 620306910211, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, '', 620497540218, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, '', 620194990215, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, '', 62011260024, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, '', 620347540211, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, '', 62046870023, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, '', 62051050026, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, '', 62085423027, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, '', 62026965021, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, '', 620584160238, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, '', 620346400234, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, '', 620560840214, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, '', 620110950213, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, '', 620397960236, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, '', 620463340215, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, '', 62066776022, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, '', 620719320220, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, '', 620839260226, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, '', 620164450211, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, '', 620182100214, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, '', 620124380227, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, '', 620794890320, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, '', 620253900318, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, '', 6204512634, NULL, 'S1A', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `2020_places`
--

CREATE TABLE `2020_places` (
  `id` int(11) NOT NULL,
  `studentid` double NOT NULL,
  `term1` int(11) NOT NULL,
  `term2` int(11) NOT NULL,
  `term3` int(11) NOT NULL,
  `per1` double NOT NULL,
  `per2` double NOT NULL,
  `per3` double NOT NULL,
  `class` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2020_places`
--

INSERT INTO `2020_places` (`id`, `studentid`, `term1`, `term2`, `term3`, `per1`, `per2`, `per3`, `class`) VALUES
(1, 620392320237, 1, 0, 0, 0, 0, 0, 'S1A'),
(2, 62055780023, 2, 0, 0, 0, 0, 0, 'S1A'),
(3, 620617640215, 3, 0, 0, 0, 0, 0, 'S1A'),
(4, 62085341026, 4, 0, 0, 0, 0, 0, 'S1A'),
(5, 62081422023, 5, 0, 0, 0, 0, 0, 'S1A'),
(6, 620196370226, 6, 0, 0, 0, 0, 0, 'S1A'),
(7, 62047089028, 7, 0, 0, 0, 0, 0, 'S1A'),
(8, 620133420226, 8, 0, 0, 0, 0, 0, 'S1A'),
(9, 620482370227, 9, 0, 0, 0, 0, 0, 'S1A'),
(10, 620470870238, 10, 0, 0, 0, 0, 0, 'S1A'),
(11, 62032730028, 11, 0, 0, 0, 0, 0, 'S1A'),
(12, 620248810239, 12, 0, 0, 0, 0, 0, 'S1A'),
(13, 620303490224, 13, 0, 0, 0, 0, 0, 'S1A'),
(14, 620586440237, 14, 0, 0, 0, 0, 0, 'S1A'),
(15, 62070034023, 15, 0, 0, 0, 0, 0, 'S1A'),
(16, 620744450215, 16, 0, 0, 0, 0, 0, 'S1A'),
(17, 620457870210, 17, 0, 0, 0, 0, 0, 'S1A'),
(18, 620613910225, 18, 0, 0, 0, 0, 0, 'S1A'),
(19, 620317430237, 19, 0, 0, 0, 0, 0, 'S1A'),
(20, 620840850231, 20, 0, 0, 0, 0, 0, 'S1A'),
(21, 620787210240, 21, 0, 0, 0, 0, 0, 'S1A'),
(22, 620130370232, 22, 0, 0, 0, 0, 0, 'S1A'),
(23, 620103600210, 23, 0, 0, 0, 0, 0, 'S1A'),
(24, 620564250225, 24, 0, 0, 0, 0, 0, 'S1A'),
(25, 620504920236, 25, 0, 0, 0, 0, 0, 'S1A'),
(26, 620553750212, 26, 0, 0, 0, 0, 0, 'S1A'),
(27, 62084625027, 27, 0, 0, 0, 0, 0, 'S1A'),
(28, 62024183023, 28, 0, 0, 0, 0, 0, 'S1A'),
(29, 620727170218, 29, 0, 0, 0, 0, 0, 'S1A'),
(30, 620656100211, 30, 0, 0, 0, 0, 0, 'S1A'),
(31, 620472870216, 31, 0, 0, 0, 0, 0, 'S1A'),
(32, 620470910229, 32, 0, 0, 0, 0, 0, 'S1A'),
(33, 620306910211, 33, 0, 0, 0, 0, 0, 'S1A'),
(34, 620497540218, 34, 0, 0, 0, 0, 0, 'S1A'),
(35, 620194990215, 35, 0, 0, 0, 0, 0, 'S1A'),
(36, 62011260024, 36, 0, 0, 0, 0, 0, 'S1A'),
(37, 620347540211, 37, 0, 0, 0, 0, 0, 'S1A'),
(38, 62046870023, 38, 0, 0, 0, 0, 0, 'S1A'),
(39, 62051050026, 39, 0, 0, 0, 0, 0, 'S1A'),
(40, 62085423027, 40, 0, 0, 0, 0, 0, 'S1A'),
(41, 62026965021, 41, 0, 0, 0, 0, 0, 'S1A'),
(42, 620584160238, 42, 0, 0, 0, 0, 0, 'S1A'),
(43, 620346400234, 43, 0, 0, 0, 0, 0, 'S1A'),
(44, 620560840214, 44, 0, 0, 0, 0, 0, 'S1A'),
(45, 620110950213, 45, 0, 0, 0, 0, 0, 'S1A'),
(46, 620397960236, 46, 0, 0, 0, 0, 0, 'S1A'),
(47, 620463340215, 47, 0, 0, 0, 0, 0, 'S1A'),
(48, 62066776022, 48, 0, 0, 0, 0, 0, 'S1A'),
(49, 620719320220, 49, 0, 0, 0, 0, 0, 'S1A'),
(50, 620839260226, 50, 0, 0, 0, 0, 0, 'S1A'),
(51, 620164450211, 51, 0, 0, 0, 0, 0, 'S1A'),
(52, 620182100214, 52, 0, 0, 0, 0, 0, 'S1A'),
(53, 620124380227, 53, 0, 0, 0, 0, 0, 'S1A'),
(54, 620794890320, 54, 0, 0, 0, 0, 0, 'S1A'),
(55, 620253900318, 55, 0, 0, 0, 0, 0, 'S1A'),
(56, 6204512634, 56, 0, 0, 0, 0, 0, 'S1A');

-- --------------------------------------------------------

--
-- Table structure for table `2020_quiz`
--

CREATE TABLE `2020_quiz` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `tot` int(11) NOT NULL,
  `date` varchar(2555) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `term` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `testid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_quiz_marks`
--

CREATE TABLE `2020_quiz_marks` (
  `qid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `quiz_id` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL,
  `term` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_restaurent`
--

CREATE TABLE `2020_restaurent` (
  `id` int(11) NOT NULL,
  `reg` varchar(255) NOT NULL,
  `payed` bigint(20) NOT NULL,
  `rleft` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_students`
--

CREATE TABLE `2020_students` (
  `sid` int(11) NOT NULL,
  `sdms` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `regno` double NOT NULL,
  `fn` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `dof` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `PROVINCE` varchar(255) NOT NULL,
  `DISTRICT` varchar(255) NOT NULL,
  `SECTOR` varchar(255) NOT NULL,
  `CELL` varchar(255) NOT NULL,
  `VIRAGE` varchar(255) NOT NULL,
  `father` varchar(255) NOT NULL,
  `mother` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2020_students`
--

INSERT INTO `2020_students` (`sid`, `sdms`, `class`, `opt`, `regno`, `fn`, `ln`, `dof`, `age`, `gender`, `PROVINCE`, `DISTRICT`, `SECTOR`, `CELL`, `VIRAGE`, `father`, `mother`, `tel`, `photo`) VALUES
(3, '', 'S1A', 'O level', 620392320237, 'AHISHAKIYE', 'CLAUDE', '01-08-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGASEKE', 'NGIRIMANA FRANCOIS', 'NYIRANDAYISENGA JOSEPHINE', '', ''),
(4, '', 'S1A', 'O level', 62055780023, 'AHISHAKIYE', 'JEAN CLAUDE', '05-22-05', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'HATEGEKIMANA JEAN BAPTISTE', 'NTAHOBAVUKIYE JULIENNE', '', ''),
(5, '', 'S1A', 'O level', 620617640215, 'DUSABIMANA', 'LUCIE', '10-12-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'GASANA ALOYS', 'NYIRANTEZIRYAYO JACQUELINE', '', ''),
(6, '', 'S1A', 'O level', 62085341026, 'GAHONGAYIRE', 'MEDIATRICE', '09-03-04', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'MUNYANDEKWE THEODORE', 'NIYISHAKA TATIENNE', '', ''),
(7, '', 'S1A', 'O level', 62081422023, 'GASASIRA', 'SETH', '06-05-06', '', 'M', 'SOUTH', 'GISAGARA', 'MUGOMBWA', 'MUGOMBWA', 'IMPINGA', 'NZARAMYIMANA AUGUSTIN', 'MUSABYE VESTINE', '', ''),
(8, '', 'S1A', 'O level', 620196370226, 'HAKIZIMANA', 'MEPHIS', '01-01-05', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'RUTARE', 'SIMPARIKUBWABO ANATOLE', 'NTAKIRUTIMANA JUDITH', '', ''),
(9, '', 'S1A', 'O level', 62047089028, 'IRADUKUNDA', 'JOSEE', '01-01-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'KABERA JEAN BAPTISTE', 'NAMUDU MADELEINE', '', ''),
(10, '', 'S1A', 'O level', 620133420226, 'IRAHARI', 'REBECCA', '06-16-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'BAKINAHE ALOYS', 'BAMURANGE MARIE REGINE', '', ''),
(11, '', 'S1A', 'O level', 620482370227, 'IRAKOZE', 'DIANE', '10-26-05', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'REMERA', 'AGAKURWE', 'SINDAMBIWE PIERRE', 'DUSABIMANA BEATRICE', '', ''),
(12, '', 'S1A', 'O level', 620470870238, 'ISEZERANO', 'ESTHER', '07-01-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGAKURWE', 'KAMANAYO INNOCENT', 'UWITONZE VALERIE', '', ''),
(13, '', 'S1A', 'O level', 62032730028, 'ISHIMWE', 'ESTHER', '11-04-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'HATEGEKIMANA JEAN BAPTISTE', 'UWIMANA CLEMENTINE', '', ''),
(14, '', 'S1A', 'O level', 620248810239, 'IZABAYO', 'THEOPHILE', '02-01-06', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGASEKE', 'SEROMBA JOSEPH', 'NYIRAMANA DATIVE', '', ''),
(15, '', 'S1A', 'O level', 620303490224, 'MANIRAREBA', 'EMMANUEL', '01-01-05', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'RWINKUBA', 'NDAGIJIMANA NARCISSE', 'UWAMARIYA GORETTI', '', ''),
(16, '', 'S1A', 'O level', 620586440237, 'MBANGUKIRA', 'THEOGENE', '06-03-06', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'NKURUNZIZA CELESTIN', 'UWIMANA MARTHE', '', ''),
(17, '', 'S1A', 'O level', 62070034023, 'MFURANZIMA', 'GLORIA', '01-22-06', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'NDACYAYISABA JEAN BAPTISTE', 'NYIRANSHUTI RADEGONDE', '', ''),
(18, '', 'S1A', 'O level', 620744450215, 'MINANI', 'JEAN CLAUDE', '02-12-05', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'NTEGEKURORA ANDRE', 'MWITIREHE ROSE', '', ''),
(19, '', 'S1A', 'O level', 620457870210, 'MISAGO', 'EMMANUEL', '05-05-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'SEBANANI FAUSTIN', 'NZAMUKOSHA BEATA', '', ''),
(20, '', 'S1A', 'O level', 620613910225, 'MUCYO', 'RENATA', '08-15-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'MPAYIMANA ETIENNE', 'MUKESHIMANA JANVIERE', '', ''),
(21, '', 'S1A', 'O level', 620317430237, 'MUHAWENIMANA', 'CARTINE', '01-01-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AMAJURI', 'NSEKANABANGA JEAN BAPTISTE', 'NYANDWI ANCILLA', '', ''),
(22, '', 'S1A', 'O level', 620840850231, 'MUKUNZI', 'ISAAC', '06-21-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'BAKINAHE ALOYS', 'BAMURANGE MARIE REGINE', '', ''),
(23, '', 'S1A', 'O level', 620787210240, 'MUSABYIMANA', 'VESTINE', '10-19-02', '', 'F', 'SOUTH', 'GISAGARA', 'MUGOMBWA', 'MUGOMBWA', 'AKARAMBO', 'NSHIMIYEMUNGU JOSEPH', 'NIKUZE JULIENNE', '', ''),
(24, '', 'S1A', 'O level', 620130370232, 'MUSHUMBA', 'JOSEPH', '07-01-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'TWAGIRUMULKIZA DANIEL', 'UHAWENAYO AGNES', '', ''),
(25, '', 'S1A', 'O level', 620103600210, 'MUTUYIMANA', 'ADELPHINE', '06-03-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'RWAMUGOYI', 'MUTARAMBIRWA FAUSTIN', 'NYIRANEZA JACQUELINE', '', ''),
(26, '', 'S1A', 'O level', 620564250225, 'MUTUYIMANA', 'ESTHER', '08-17-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'RWAMUGOYI', 'NSENGIYUMVA EMMANUEL', 'MUHAYIMANA AGNES', '', ''),
(27, '', 'S1A', 'O level', 620504920236, 'MUTUYIMANA', 'HONORINE', '05-25-02', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'HATEGEKIMANA JEAN BAPTISTE', 'UWIMANA CLEMENTINE', '', ''),
(28, '', 'S1A', 'O level', 620553750212, 'NDIKURYAYO', 'JOSEPH', '03-07-05', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'BIZUMUREMYI THARCISSE', 'NTAWANGAHEZA BERNADETTE', '', ''),
(29, '', 'S1A', 'O level', 62084625027, 'NINDE', 'APPOLO', '05-27-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AKAJYENAMA', 'NZABANDORA EZECHIEL', 'NTAKIRUTIMANA BEATA', '', ''),
(30, '', 'S1A', 'O level', 62024183023, 'NIYIBIZI', 'SAMUEL', '10-10-05', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'AGASHARU', 'NZABANIKIZE FRODUARD', 'NYIRAJYAMBERE VENANTIE', '', ''),
(31, '', 'S1A', 'O level', 620727170218, 'NIYOGISUBIZO', 'JULIENNE', '10-23-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AKAJYENAMA', 'NDAYISABA ALEXIS', 'NTAWUHIGANAYO MARIE JEANNE', '', ''),
(32, '', 'S1A', 'O level', 620656100211, 'NIYOMUGABO', 'EMMANUEL', '01-01-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGAKURWE', 'MBARUBUKEYE AUGUSTIN', 'MUKANTIGANIRA JOSEPHE', '', ''),
(33, '', 'S1A', 'O level', 620472870216, 'NIYOMWUNGERI', 'CLEMENTINE', '01-08-07', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AMAJURI', 'NDAYISABA ZACHARIE', 'UWAMBAJIMANA MARIE CLAIRE', '', ''),
(34, '', 'S1A', 'O level', 620470910229, 'NIYONIZEYE', 'NADINE', '01-01-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'UMUTORERWA', 'NDAYISABA PATRICK', 'MUTUNGIREHE ERNESTINE', '', ''),
(35, '', 'S1A', 'O level', 620306910211, 'NIYONSENGA', 'ELINA', '02-23-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA ', 'AKAJYENAMA', 'NDAYAMBAJE EZECHIEL', 'UYISABYE AGNES', '', ''),
(36, '', 'S1A', 'O level', 620497540218, 'NIZEYIMANA', 'EMMANUEL', '05-01-05', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'BAKINAHE THARCISSE', 'NIYIBESHAHO LEONILLE', '', ''),
(37, '', 'S1A', 'O level', 620194990215, 'NKESHIMANA', 'JEAN BAPTISTE', '07-08-05', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'RWINKUBA', 'NTAZINDA EMMANUEL', 'NSABAYEZU ANASTASIE', '', ''),
(38, '', 'S1A', 'O level', 62011260024, 'NKURUNZIZA', 'EMMANUEL', '04-30-04', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'NYIRISHEMA EMMANUEL', 'NYIRAMINANI MARIE CLAIRE', '', ''),
(39, '', 'S1A', 'O level', 620347540211, 'NSABIMANA', 'CALLIXTE', '07-02-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'MURENGERANTWARI THEONESTE', 'NYIRABARAME CECILE', '', ''),
(40, '', 'S1A', 'O level', 62046870023, 'NSHIMIYIMANA', 'JEAN PIERRE', '01-01-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'HABIMANA DONAT', 'MUKARWEGO DOMINA', '', ''),
(41, '', 'S1A', 'O level', 62051050026, 'NTAKIRUTIMANA', 'JEAN PAUL', '01-01-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'NTAMUGABUMWE CELESTIN', 'NIBAKURE SPECIOSE', '', ''),
(42, '', 'S1A', 'O level', 62085423027, 'NYIRIMANA', 'ELISSA', '09-14-06', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'AGASHARU', 'SIKUBWABO VINCENT', 'UZAMUKUNDA FRANCINE', '', ''),
(43, '', 'S1A', 'O level', 62026965021, 'NZEYIMANA', 'INNOCENT', '11-22-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AKAJYENAMA', 'NZABARINDA PASCAL', 'MUKANDAHINDURWA DONATIENNE', '', ''),
(44, '', 'S1A', 'O level', 620584160238, 'RUKUNDO', 'CELESTIN', '11-05-05', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'SIKUBWABO MAKARE STRATON', 'MANIRAKOZE B', '', ''),
(45, '', 'S1A', 'O level', 620346400234, 'RUKUNDO', 'HERITIER', '08-06-02', '', 'M', 'SOUTH', 'NYAMAGABE', 'MUGOMBWA', 'INKAMBI', 'QUARTIER 8', 'KAMANZI JEREMIE', 'NYIRAMAKUTA KAJIWABO', '', ''),
(46, '', 'S1A', 'O level', 620560840214, 'SIBOMANA JEAN', 'DE DIEU', '03-07-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'RWINKUBA', 'NIZEYIMANA JEAN BAPTISTE', 'NYIRAMISAGO SERAPHINE', '', ''),
(47, '', 'S1A', 'O level', 620110950213, 'TUYIZERE', 'IGNACE', '03-07-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'UMUTORERWA', 'SIBOMANA THARCISSE', 'UWITONZE GERTRUDE', '', ''),
(48, '', 'S1A', 'O level', 620397960236, 'TWIZERIMANA', 'MARTHE', '04-08-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'MAHUKU BONIFACE', 'MUKARUZIMA ANNONCIATA', '', ''),
(49, '', 'S1A', 'O level', 620463340215, 'TWIZEYIMANA', 'JOSEPH', '03-15-05', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGAKURWE', 'SIMPARIKUBWABO ISAIE', 'NYIRABAGENZI FELICITE', '', ''),
(50, '', 'S1A', 'O level', 62066776022, 'UFITEYEZU', 'ESDRAS', '10-29-05', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'NCAMUBANZI DAMAS', 'KANGABE PELAGIE', '', ''),
(51, '', 'S1A', 'O level', 620719320220, 'UWANYIRIJURU', 'SOLANGE', '01-01-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AMAJURI', 'NTIRENGANYA JUVENAL', 'NYABYENDA MARIE JOSEE', '', ''),
(52, '', 'S1A', 'O level', 620839260226, 'UWIHIRWE', 'NAOMIE', '11-10-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'BYIZA', 'SIBOMANA EMMANUEL', 'UYAMBAJE MARIE ASSUMPTA', '', ''),
(53, '', 'S1A', 'O level', 620164450211, 'UWIMANA', 'JACQUELINE', '03-22-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGAKURWE', 'HAKIZIMANA THARCISSE', 'NIYONAGIRA JOSEPHA', '', ''),
(54, '', 'S1A', 'O level', 620182100214, 'UWINGABIRE', 'JOSELINE', '01-01-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'RUTARE', 'NGAYABATAKANWA ALPHONSE', 'NIYISHAKA FRANCOISE', '', ''),
(55, '', 'S1A', 'O level', 620124380227, 'UWIZEYIMANA', 'AMINA', '01-01-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'KAREKEZI SAYIDI', 'UWITONZE FATUMA', '', ''),
(56, '', 'S1A', 'O level', 620794890320, 'VUMILIYA', 'ALPHONSINE', '01-02-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGOMBWA', 'INKAMBI', 'QUARTIER 8', 'MUGABO RUDASESWA', 'NYIRAMANA RUTH', '', ''),
(57, '', 'S1A', 'O level', 620253900318, 'KANKINDI', 'JEANNETTE', '01-01-02', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'SIBOMANA REVERIEN', 'MUKAKIBIBI SERAPHINE', '', ''),
(58, '', 'S1B', 'O level', 620542631634, 'BUYOBOKEBUSHYA', 'BIENVENU', '05-10-06', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA ', 'AMAJURI', 'NDUWUMWE JEAN MARIE VIANNEY', 'MUKESHIMANA FRANCOISE', '', ''),
(59, '', 'S1B', 'O level', 62052398168, 'CYUZUZO JEAN', 'DE DIEU', '07-11-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'UWIMANA JEAN', 'NARAME MATHILDE', '', ''),
(60, '', 'S1B', 'O level', 620337591639, 'CYUZUZO', 'TRESOR', '11-28-06', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'MBUGUJE IGNACE', 'MUKANDANGO ODETTE', '', ''),
(61, '', 'S1B', 'O level', 620441801637, 'HABAGUHIRWA', 'DIVINE', '01-01-04', '', 'F', 'SOUTH', 'GISAGARA', 'CYUMBA', 'MUGANZA', 'UMUTORERWA', 'NSENGIMANA DANIEL', 'MUKAMUSONI FORTUNEE', '', ''),
(62, '', 'S1B', 'O level', 620430301623, 'IRADUKUNDA', 'ADELINE', '08-07-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'NTEGAMAHERERE EMMANUEL', 'KAMIRE JOSEPHINE', '', ''),
(63, '', 'S1B', 'O level', 62017451169, 'IRAGUHA', 'DATIVE', '01-01-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'MAGEZA EMMANUEL', 'MUKANSANGA ASINATI', '', ''),
(64, '', 'S1B', 'O level', 620337921618, 'IRAHARI', 'ELISA', '07-02-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'UUMUTORERWA', 'NIYIKORA ELIE', 'UWIMANA CLAIRE', '', ''),
(65, '', 'S1B', 'O level', 620657351631, 'IRAMBONA', 'FIDELE', '02-12-06', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'MUHIRWA ILDEPHONSE', 'MUKADISI JOSELINE', '', ''),
(66, '', 'S1B', 'O level', 620554831634, 'IYATURINZE', 'DIANE', '06-21-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'HARERIMANA CELESTIN', 'NIYONIZEYE MARIE GRACE', '', ''),
(67, '', 'S1B', 'O level', 620318341621, 'IZABAYO', 'SARAH', '06-20-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'UBUSENYI', 'KANYESHYAMBA ETIENNE', 'NYIRANDIMURWANGO', '', ''),
(68, '', 'S1B', 'O level', 62057484165, 'KAYITESI', 'JOYCE', '08-07-04', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'NDUWUMWE JEAN MARIE VIANNEY', 'MUKANTWARI CHANTAL', '', ''),
(69, '', 'S1B', 'O level', 62045241164, 'KUBWIMANA', 'JEAN PAUL', '07-10-03', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'MWUMVANEZA PASCAL', 'MUKAMANA SPECIOSE', '', ''),
(70, '', 'S1B', 'O level', 620607681626, 'KWIZERA', 'EMMANUEL', '01-01-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'NSHIMIRYAYO MANASSE', 'ABARIHO MELANIE', '', ''),
(71, '', 'S1B', 'O level', 620578161617, 'KWIZERA', 'ERIC', '05-25-05', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'RWAMUGOYI', 'UWARIRAYE JOSEPH', 'UWITONZE MARIE CLEMENTINE', '', ''),
(72, '', 'S1B', 'O level', 620499541626, 'KWIZERA', 'JEAN BOSCO', '01-17-01', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'BIZUMUREMYI THARCISSE', 'NTAWANGAHEZA', '', ''),
(73, '', 'S1B', 'O level', 62014162165, 'KWIZERA', 'NATHAN', '01-01-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'RWAMUGOYI', 'HAKIZIMANA ELYSE', 'NYIRACUMI TATIENNE', '', ''),
(74, '', 'S1B', 'O level', 62031389161, 'MANISHIMWE', 'EMMANUEL', '01-01-06', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'IYAKAREMYE JEAN PAUL', 'NIYONZIMA VESTINE', '', ''),
(75, '', 'S1B', 'O level', 620672611613, 'MBONIGABA', 'JEAN PAUL', '01-01-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'RWINKUBA', 'NZABAKURANA VINCENT', 'MUKESHIMANA VALENTINE', '', ''),
(76, '', 'S1B', 'O level', 62048022166, 'MUHAWENAYO', 'MONIQUE', '01-01-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGOMBWA', 'MUGOMBWA', 'BISHYA', 'UWITIJE EMMANUEL', 'NKUNDIZANA ESPERANCE', '', ''),
(77, '', 'S1B', 'O level', 620346471617, 'MUHAWENIMANA', 'DEMITRIE', '01-04-06', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'RWAMUGOYI', 'NGABIRE MICHEL', 'MUJAWAMARIYA JOSEPHINE', '', ''),
(78, '', 'S1B', 'O level', 620755101610, 'MUHAWENIMANA', 'VEDASTE', '10-10-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGAKURWE', 'KAGIRANEZA AMBROISE', 'MUKANKUSI SERAPHINE', '', ''),
(79, '', 'S1B', 'O level', 620841501624, 'MUHIRWA', 'MARC', '04-25-06', '', 'M', 'SOUTH', 'GISAGARA', 'MUGOMBWA', 'MUGOMBWA', 'BISHYA', 'BYIHOREYE EMMANUEL', 'KAGOYIRE CONCILIE', '', ''),
(80, '', 'S1B', 'O level', 620111171610, 'MUHIRWA', 'RACHEL', '11-15-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGOMBWA', 'MUGOMBWA', 'BISHYA', 'BUREGEYA EMMANUEL', 'UWIMANA EGIDIA', '', ''),
(81, '', 'S1B', 'O level', 620621711613, 'MUKANGABIRE', 'MARIE SOLANGE', '07-27-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'INGABIRE AMZA', 'MUSABYIMANA CHARLOTTE', '', ''),
(82, '', 'S1B', 'O level', 620154251632, 'MUKARUGWIZA', 'DROCELLA', '01-01-05', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'BYAMUNGU EVARISTE', 'NTAWUBIZI MARIE GRACE', '', ''),
(83, '', 'S1B', 'O level', 620670301616, 'MUSABYIMANA', 'EUGENIE', '01-25-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'NZEYIMANA ISIDORE', 'NYIRANEZA VESTINE', '', ''),
(84, '', 'S1B', 'O level', 620758541611, 'MUSABYIMANA', 'MARIE GORETTI', '08-16-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'URUSARO', 'NKUNDIYE AARON', 'MUKARWEGO VENANTIE', '', ''),
(85, '', 'S1B', 'O level', 620774291634, 'MUSHIMIYIMANA', 'EUGENIE', '01-13-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'TABA', 'HARINDINTWARI EMMANUEL', 'TWAGIRAMARIYA CONSOLEE', '', ''),
(86, '', 'S1B', 'O level', 620220711639, 'MUSHIMIYIMANA', 'VIOLETTE', '09-01-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGOMBWA', 'MUGOMBWA', 'BISHYA', 'HITIMANA EMMANUEL', 'NIYONSENGA SERAPHINE', '', ''),
(87, '', 'S1B', 'O level', 620324991616, 'MUYIZERE', 'EMMANUEL', '01-25-05', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'NTIBARUTANA SAMUEL', 'AKIMANA GAUDENCE', '', ''),
(88, '', 'S1B', 'O level', 620646831616, 'NEZERWA', 'CARINE', '', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'RUTARE', 'UWIMANA MATTHIEU', 'HAGENIMANA EPIPHANIE', '', ''),
(89, '', 'S1B', 'O level', 620828761634, 'NIKUZE', 'CLAIRE', '03-23-06', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'MURINDABYUMA CHARLES', 'NYIRAKAMANA ANNONCIATA', '', ''),
(90, '', 'S1B', 'O level', 620493771637, 'NINDEMANA', 'ERIC', '02-02-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'BAGIRUBWIRA ANTOINE', 'MUKANGARAMBE FLORIDA', '', ''),
(91, '', 'S1B', 'O level', 620679461625, 'NIYOGERE', 'DIANE', '05-05-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGAKURWE', 'MWUMVANEZA CLAVER', 'UWIZEYIMANA CHANTAL', '', ''),
(92, '', 'S1B', 'O level', 620126521632, 'NIYOMUGABO', 'CLAUDE', '01-01-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGASEKE', 'KUYAVUGA DAMASCENE', 'KUBWIMANA VESTINE', '', ''),
(93, '', 'S1B', 'O level', 62076726161, 'NIYOMUGENGA', 'INNOCENT', '11-01-06', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'MBARUBUKEYE MATHIAS', 'NIYONAMBAJE ANATOLIE', '', ''),
(94, '', 'S1B', 'O level', 620271101621, 'NIYOMUHOZA', 'TRIPHINE', '09-01-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'UBUSENYI', 'NKUNDUNDA ALOYS', 'MUJAWAYEZU AGNES', '', ''),
(95, '', 'S1B', 'O level', 620479861629, 'NIYOMUKESHA', 'JOSELINE', '01-01-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'UMUTORERWA', 'NTAHONDI ANDRE', 'GUMYUZANE ANNE', '', ''),
(96, '', 'S1B', 'O level', 620345991617, 'NKURUNZIZA', 'PATRICK', '01-05-01', '', 'M', 'SOUTH', 'GISAGARA', 'MUGOMBWA', 'MUGOMBWA', 'IMPINGA', 'GASARABA BIZURU', 'BUSISI RACHEL', '', ''),
(97, '', 'S1B', 'O level', 620325351616, 'NSANZUMUHIRE', 'ENOCK', '10-15-97', '', 'M', 'SOUTH', 'GISAGARA', 'SAVE', 'ZIVU', 'AGAKURWE', 'GAHAMANYI JEAN', 'NIYONSABA ELINA', '', ''),
(98, '', 'S1B', 'O level', 62063796169, 'NSENGIYUMVA', 'ELIPHAZ', '03-15-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGOMBWA', 'BISHYA', 'HAVUGIMANA ETIENNE', 'NYIRAMFURA JEANNETTE', '', ''),
(99, '', 'S1B', 'O level', 620152881639, 'NSENGIYUMVA', 'EMMANUEL', '05-03-01', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'HARINDINTWARI EMMANUEL', 'TWAGIRAMARIYA CONSOLEE', '', ''),
(100, '', 'S1B', 'O level', 620827421629, 'NTAWIMENYA', 'JEAN CLAUDE', '01-01-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'HABUHAZI JEAN ', 'NYIRANSABIMANA ESTHER', '', ''),
(101, '', 'S1B', 'O level', 62076517165, 'NYINAWISHEMA', 'JACQUELINE', '10-22-03', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'NZEYIMANA INNOCENT', 'UWAMARIYA BONIFRIDA', '', ''),
(102, '', 'S1B', 'O level', 620446201624, 'NYIRAMAJYAMBERE', 'FILLETTE', '08-20-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'MUNYEMANZI ZACHARIE', 'NYIRABAKEYE BELANCILLA', '', ''),
(103, '', 'S1B', 'O level', 620269951631, 'NYIRAMINANI', 'CLAUDINE', '01-01-07', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'GAHONDO', 'MINANI FRANCOIS', 'NYIRAMANA TEFANIA', '', ''),
(104, '', 'S1B', 'O level', 620277251632, 'NYIRANSABIMANA', 'CLAUDINE', '01-01-05', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'HABIMANA VENUSTE', 'MUTUMWINKA DONATILLE', '', ''),
(105, '', 'S1B', 'O level', 620681671625, 'TEMBITUZE', 'JAMILLA', '04-03-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'GITWA ', 'MUSABYIMANA JEAN DE DIEU', 'NYIRANHENDAHIMANA CLOTHILDE', '', ''),
(106, '', 'S1B', 'O level', 620454951625, 'TUYISENGE', 'KEVINE', '07-19-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'NKUNDIBIZA GABRIEL', 'NIYONSABA PETRONILLE', '', ''),
(107, '', 'S1B', 'O level', 620778301637, 'TUYISHIMIRE', 'SARAH ', '10-25-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'UMUTORERWA', 'NDIMUBANZI SAMUEL', 'IRIGUKUNDA DONATA', '', ''),
(108, '', 'S1B', 'O level', 620297911635, 'TUYIZERE', 'CLAUDINE', '02-14-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'UMUTORERWA', 'NYANDWI NARCISSE', 'NYIRANSAGUYE JOSEPHA ', '', ''),
(109, '', 'S1B', 'O level', 620467961630, 'TWAGIRUMUKIZA', 'ERIC', '07-03-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'NZASABIMFURA GASPARD', 'NYIRAHABIMANA SERAPHINE', '', ''),
(110, '', 'S1B', 'O level', 62042988165, 'UMUGWANEZA', 'CLEMENTINE', '01-03-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'MURORUNYURWE PETERO', 'MUKESHIMANA JEANNINE', '', ''),
(111, '', 'S1B', 'O level', 62019473168, 'UWAMAHORO', 'CLAUDINE', '09-01-05', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'NSABIMANA FRANCOIS', 'NYINTEGEYIMANA JACQUELINE', '', ''),
(112, '', 'S1B', 'O level', 620283221613, 'UWAMAHORO', 'DIVINE', '02-19-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'NTAHOBAVUKIRA VINCENT', 'UWITIJE SALOME', '', ''),
(113, '', 'S1B', 'O level', 620752411611, 'UWIRAGIYE', 'ESTHER', '01-01-06', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'YAMBABARIYE JEAN DAMASCENE', 'NYIRAMANA THARCILLE', '', ''),
(114, '', 'S1B', 'O level', 620567611618, 'YANKURIJE', 'CLAUDINE', '07-15-05', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'GAKWAYA MATHIAS', 'NYIRANEZA VITALIENNE', '', ''),
(115, '', 'S1C', 'O level', 620226660137, 'BIZUMUREMYI', 'EGIDE', '02-28-06', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA ', 'TABA', 'GAHARABANYI ETIENNE', 'MUKAMANA ANATOLIE', '', ''),
(116, '', 'S1C', 'O level', 620668990118, 'BUGINGO', 'EMMANUEL', '01-01-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AKARAMBO', 'REKERAHO VINCENT', 'MUREKATETE ANGELIQUE', '', ''),
(117, '', 'S1C', 'O level', 620491930121, 'BYIRINGIRO', 'EMMANUEL', '08-19-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'RWAMUGOYI', 'GAHONZIRE CELESTIN', 'UWIMANA VESTINE', '', ''),
(118, '', 'S1C', 'O level', 620825400127, 'BYIRINGIRO', 'ILDEPHONSE', '01-01-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AMAJURI', 'NAHAYO JOSEPH', 'MUKAMANZI CLOTHILDE', '', ''),
(119, '', 'S1C', 'O level', 62082121019, 'BYIRINGIRO', 'JOHN', '01-01-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'NGEZE MARTIN', 'NIKUZE JOSEE', '', ''),
(120, '', 'S1C', 'O level', 62031693013, 'BYUKUSENGE', 'CHANTAL', '11-25-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AMAJURI', 'MUTABAZI BALTHAZAR', 'BANKUNDIYE ESPERANCE', '', ''),
(121, '', 'S1C', 'O level', 620376920128, 'DUKUZEYEZU', 'VALENTINE', '09-24-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'RWAMUGOYI', 'MACUMI VENUSTE', 'NTAKIRUTIMANA JACQUELINE', '', ''),
(122, '', 'S1C', 'O level', 620274860137, 'DUSABIMANA', 'ESTHER', '05-16-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGAKURWE', 'MUNEZA CALLIXTE', 'NYIRABIKARI BEATRICE', '', ''),
(123, '', 'S1C', 'O level', 620610630113, 'DUSINGIZIMANA', 'ELIE', '05-25-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGOMBWA', 'MUGOMBWA', 'BISHYA', 'MASABO APHRODIS', 'MUKAMANA XAVERINE', '', ''),
(124, '', 'S1C', 'O level', 62024050017, 'GAHONZIRE', 'DINAH', '01-11-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'HABIMANA GILBERT', 'VUMILIYA OLIVE', '', ''),
(125, '', 'S1C', 'O level', 620426640132, 'HABUMUGISHA', 'AUGUSTIN', '08-28-07', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'HABYARIMANA MARTIN', 'NYIRANEZA VALERIE', '', ''),
(126, '', 'S1C', 'O level', 620362380132, 'HATANGIMANA', 'JADO FILS', '01-01-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA ', 'AGAKURWE', 'HATUNGIMANA VENUSTE', 'TWIZEYIMANA JUSTINE', '', ''),
(127, '', 'S1C', 'O level', 620706820129, 'IGUE', 'BIENVENU', '09-28-06', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'MANARIYO ETIENNE', 'UWAMARIYA PERPETUE', '', ''),
(128, '', 'S1C', 'O level', 62031374013, 'IMANISHIMWE', 'MARIE EUPHRASIE', '11-14-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'RUTARE', 'MINANI ALOYS', 'NIYONTEZE MARGUERITE', '', ''),
(129, '', 'S1C', 'O level', 62084265018, 'IRADUKUNDA', 'HYACINTHE', '02-01-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGAKURWE', 'MBONIMPAYE JEAN DAMASCENE', 'NYINAWUMUNTU FLORIDA', '', ''),
(130, '', 'S1C', 'O level', 62021889015, 'IRADUKUNDA', 'RACHEL', '04-05-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGASHARU', 'NIYONGANA JEAN PIERRE', 'NTAWUKURIRYAYO FRANCINE', '', ''),
(131, '', 'S1C', 'O level', 62026230012, 'IRAHARI', 'EMMANUEL', '01-01-06', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'RUTARE', 'BIZIMANA EMMANUEL', 'NIBAGWIRE GRACE', '', ''),
(132, '', 'S1C', 'O level', 620803500136, 'ISHIMWE', 'ANGELIQUE', '09-09-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'RWINKUBA', 'NDUNGUTSE JEAN PIERRE', 'NYIRAKURAMA OLIVE', '', ''),
(133, '', 'S1C', 'O level', 620742170120, 'ISHIMWE', 'ISAAC', '01-01-07', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'HATEGEKIMANA JOSEPH', 'GWIZIMPUNDU MONIQUE', '', ''),
(134, '', 'S1C', 'O level', 620194330138, 'ISHIMWE', 'JEAN BAPTISTE', '11-16-03', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'NZABONAKURA JEROME', 'AHISHAKIYE GRACE', '', ''),
(135, '', 'S1C', 'O level', 620328690122, 'ISHIMWE', 'MICHEL', '08-30-06', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'SHYIRAMBERE PASCAL', 'MUKASHYAKA JOSEPHA', '', ''),
(136, '', 'S2A', 'O level', 62038736113, 'AMIZERO', 'Emmanuel', '08-16-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGAKURWE', 'BIZIMANA FAUSTIN', 'MUNGANYINKA JOSEPHINE', '', ''),
(137, '', 'S2A', 'O level', 62088876111, 'BUKURU', 'Adelphine', '07-12-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'HAKIZIMANA ELIAS', 'NIBABYARE FORTUNATA', '', ''),
(138, '', 'S2A', 'O level', 620586621111, 'DUSABIMANA', 'Ancilla', '11-03-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AMAJURI', 'MUTABAZI ANDRE', 'UWITONZE CLAUDINE', '', ''),
(139, '', 'S2A', 'O level', 62050884117, 'DUSENGIMANA', 'Emmanuel', '06-01-01', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AMAJURI', 'NDAYISABA ZACHARIE', 'UWAMBAJIMANA MARIE CLAIRE', '', ''),
(140, '', 'S2A', 'O level', 62040036115, 'IMANISHIMWE', 'Appolo', '07-07-06', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'NDAYISABA ETIENNE', 'MUKASHEMA ANATHALIE', '', ''),
(141, '', 'S2A', 'O level', 620190731140, 'INGABIRE', 'Anne Marie', '05-21-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'UTAZIRUBANDA THEOGENE', 'MUSHIMIYIMANA MARIE GORETTI', '', ''),
(142, '', 'S2A', 'O level', 620270831128, 'IRADUKUNDA', 'Clarisse', '09-30-03', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'HABIYAMBERE FRANCOIS', 'KUBWAYO JOSEPHINE', '', ''),
(143, '', 'S2A', 'O level', 620420141134, 'IRADUKUNDA', 'Hosiane', '12-24-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'UBUSENYI', 'BARAJIGINYWA ISAIE', 'MUKESHIMANA MARIE ROSE', '', ''),
(144, '', 'S2A', 'O level', 62066787118, 'IRAGUHA', 'MARIE Providence', '01-25-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'RWINKUBA', 'MURENZI JEAN BAPTISTE', 'MUTUYIMANA BELANCILLA', '', ''),
(145, '', 'S2A', 'O level', 620877501131, 'IRASUBIZA', 'SHYAKA Samuel', '06-21-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'IYAKAREMYE ISAAC', 'NYIRAKARAGWE JACQUELINE', '', ''),
(146, '', 'S2A', 'O level', 62042082113, 'ISHIMWE', 'Patrick', '01-01-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'NDAYISHIMIYE IGNACE', 'MUKANTAGWABIRA BEATA', '', ''),
(147, '', 'S2A', 'O level', 620478811132, 'ISHIMWE', 'Samuel', '11-25-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'SEBURIKOKO ONESPHORE', 'MUKAMURENZI FRANCINE', '', ''),
(148, '', 'S2A', 'O level', 620494451116, 'IYATURINZE', 'Alice', '07-02-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'SIBOMANA EMMANUEL', 'UYAMBAJE MARIE ASSUMPTA', '', ''),
(149, '', 'S2A', 'O level', 62069491119, 'KARAMBIZI', 'Eric', '09-29-00', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AKAJYENAMA', 'NCAHINYERETSE EMMANUEL', 'UWINGABIRE ANASTASIE', '', ''),
(150, '', 'S2A', 'O level', 620815351121, 'KWIZERA', 'Olivier', '11-27-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'RWAMUGOYI', 'NTIHABOSE FELICIEN', 'NZABONIHIRWE EMERITA', '', ''),
(151, '', 'S2A', 'O level', 62010945119, 'MANIRAKIZA', 'Jonas', '01-31-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'UBUSENYI', 'MVUYEKURE DANIEL', 'NIYONAGIRA DONATA', '', ''),
(152, '', 'S2A', 'O level', 62010264112, 'MBABAZI', 'Denyse', '10-24-05', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'SINGIRANKABO EUGENE', 'NIBARORE JEANNE', '', ''),
(153, '', 'S2A', 'O level', 62066111114, 'MPORWIKI', 'Wellars', '02-13-04', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'AGASHARU', 'MUHIZI DIOGENE', 'UWIRINGIYIMANA VESTINE', '', ''),
(154, '', 'S2A', 'O level', 620529741138, 'MUGISHA', 'Tresor', '02-14-06', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'NGIRUMPATSE THARCISSE', 'UWIMANA ESPERANCE', '', ''),
(155, '', 'S2A', 'O level', 620678721116, 'MUKAGASANA', 'MARIE Claire', '08-02-04', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'NDAMYUMUGABE VENUSTE', 'NYIRABAZUNGU JOSEE', '', ''),
(156, '', 'S2A', 'O level', 62048418119, 'MUKANOHERI', 'MARIE Grace', '12-25-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AKAJYENAMA', 'MBARUSHIMANA SIMEON', 'MUJAWAMARIYA ANNONCIATA', '', ''),
(157, '', 'S2A', 'O level', 620528601140, 'MUNGUYIKO', 'Samuel', '01-01-05', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AMAJURI', 'BIZUMUREMYI AMOS', 'MUKANTABANA LAETITIA', '', ''),
(158, '', 'S2A', 'O level', 620363141116, 'MUTIJIMA', 'Valentin', '01-31-06', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'DAHWE', 'GITWA ', 'NDUWUMWE JEAN MARIE VIANNEY', 'NYIRANGENDAHAYO JOSEE', '', ''),
(159, '', 'S2A', 'O level', 620670811113, 'MUTUYIMANA', 'Jeannette', '08-06-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'HARERIMANA CELESTIN', 'NYIRAHABYARIMANA ESPERANCE', '', ''),
(160, '', 'S2A', 'O level', 620842721124, 'MUTUYIMANA', 'MARIE Faustine', '11-12-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'RWAMUGOYI', 'NSABIMANA ALPHONSE', 'MUKAKABERA MEDIATRICE', '', ''),
(161, '', 'S2A', 'O level', 620448731140, 'MWIZERWA', 'Parfait', '05-17-06', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'BANZIBAKE JONAS', 'MUKANSANGANO SERAPHINE', '', ''),
(162, '', 'S2A', 'O level', 620617731125, 'NAKURE', 'Yvette', '04-26-05', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'RUTAYISIRE CALLIXTE', 'MUKANKURANGA IMMACULEE', '', ''),
(163, '', 'S2A', 'O level', 620643461125, 'NAMBAJE', 'Gilbert', '04-18-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AMAJURI', 'MUSONI ISAIE', 'HAGENIMANA FLORIDA', '', ''),
(164, '', 'S2A', 'O level', 620710951114, 'NIRAGIJIMANA', 'David', '12-08-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'UMUTORERWA', 'DUSABIMANA VENUSTE', 'UWIMANA ALOYSIE', '', ''),
(165, '', 'S2A', 'O level', 62067070111, 'NIYIBIZI', 'Fideline', '03-09-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'SIKUBWABO EVARISTE', 'MUSABYIMANA DONATILL;E', '', ''),
(166, '', 'S2A', 'O level', 62018723115, 'NIYIGENA', 'Rebecca', '12-02-03', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'NCAMUBANZI DAMASCENE', 'KANGABE PASCASIE', '', ''),
(167, '', 'S2A', 'O level', 620352711128, 'NIYOMUKIZA', 'Aline', '04-22-05', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'AGASHARU', 'NZABARANKIZE FRODUALD', 'NYIRAJYAMBERE VENERANDA', '', ''),
(168, '', 'S2A', 'O level', 620350101130, 'NIYONGABO', 'Bertin', '06-04-05', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'HARINDINTWARI JEAN DAMASCENE', 'MUTUYIMANA MARIE JOSEE', '', ''),
(169, '', 'S2A', 'O level', 620668751122, 'NIZEYIMANA', 'Daniel', '04-25-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'BUTARE', 'HARIMENSHI CELESTIN', 'UWIZEYIMANA BEATA', '', ''),
(170, '', 'S2A', 'O level', 62011368119, 'NSENGIYUMVA', 'Elissa', '06-12-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AKAJYENAMA', 'NZIYONIZEYE NAASSON', 'NIRAGIRE ADELINE', '', ''),
(171, '', 'S2A', 'O level', 620587171138, 'NSHIMIYIMANA', 'Jean', '03-14-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGAKURWE', 'VUNABANDI VENANT', 'NYIRAVUGUZIGA MARIE SOLANGE', '', ''),
(172, '', 'S2A', 'O level', 620579751126, 'NSHIMIYIMANA', 'Jean Paul', '01-27-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'MURORUNYURWE PIERRE', 'USABYIMANA ESPERANCE', '', ''),
(173, '', 'S2A', 'O level', 62026046112, 'NYIRAMFURA', 'Esther', '07-10-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'HAKIZIMFURA JEAN BOSCO', 'MUSHIMIYIMANA EPIPHANIE', '', ''),
(174, '', 'S2A', 'O level', 620750251140, 'NYIRANEZA', 'SYLVIE', '10-09-04', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'AGASHARU', 'RUGANINTWARI JOSEPH', 'NIYITEGEKA ANGELIQUE', '', ''),
(175, '', 'S2A', 'O level', 620215891127, 'NYIRARUKUNDO', 'Lea', '02-10-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGOMBWA', 'MUGOMBWA', 'BISHYA', 'NKUNDIMFURA PASCAL', 'NIYOMUSHUMBA ALOYSIE', '', ''),
(176, '', 'S2A', 'O level', 620234991133, 'NZABAMWITA', 'Samuel', '03-05-00', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'SEBANANI FAUSTIN', 'NZAMUKOSHA BEATA', '', ''),
(177, '', 'S2A', 'O level', 620325371120, 'RUHUMURIZA', 'Boniface', '05-03-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'NGEZENUBWO SALOM', 'MUKANDAYISABYE ', '', ''),
(178, '', 'S2A', 'O level', 620867651120, 'TUYISHIMIRE', 'Clarisse', '11-01-04', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'HATEGEKIMANA EMMANUEL', 'MUKAHIGIRO JOSEE', '', ''),
(179, '', 'S2A', 'O level', 62065339119, 'TUYISHIMIRE', 'Grace', '06-30-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'UMUTORERWA', 'HABIMANA DONAT', 'MUKAMANA INES', '', ''),
(180, '', 'S2A', 'O level', 620277411135, 'TUYISHIMIRE', 'Jean Claude', '08-28-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'MBARUSHIMANA OBED', 'NYIRARUKUNDO JOSEPHINE', '', ''),
(181, '', 'S2A', 'O level', 620456951138, 'UMURISA', 'Delphine', '01-15-05', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'AGASHARU', 'MURAGIJIMANA THADEE', 'MUKANDANGA TATIENNE', '', ''),
(182, '', 'S2A', 'O level', 620397591128, 'UWIBITANGAZA', 'MOISE', '07-06-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGAKURWE', 'MUSAMBI IGNACE', 'NIYOMUKESHA DEVOTHA', '', ''),
(183, '', 'S2A', 'O level', 62010477114, 'UWIMANA', 'Philomene', '01-01-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGAKURWE', 'HABIMANA JEAN', 'YANDAGIYE ESPERANCE', '', ''),
(184, '', 'S2A', 'O level', 620137601111, 'UWIRINGIYIMANA', 'Donatha', '', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'EPA', 'GRACE', '', ''),
(185, '', 'S2A', 'O level', 62012673116, 'UWIRINGIYIMANA', 'Joselyne', '05-22-02', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'NZABANDORA JEAN', 'MUSABYEMARIYA AGNES', '', ''),
(186, '', 'S2A', 'O level', 62064989116, 'VUGANEZA', 'AnneMarie', '03-08-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AMAJURI', 'NTIRANDEKURA EUGENE', 'NYIRAMATABARO APPOLONIE', '', ''),
(187, '', 'S2B', 'O level', 620446353624, 'BAMURANGE', 'Divine', '11-15-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'TWAGIRAYEZU DANIEL', 'MUTUYEMUNGU IMMACULEE', '', ''),
(188, '', 'S2B', 'O level', 620856733632, 'BAVUMIRAGIYE', 'EMMANUEL', '01-01-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'SEBAGABO AUGUSTIN', 'NYIRABARERURA FRANCINE', '', ''),
(189, '', 'S2B', 'O level', 620699813633, 'BUTOYI', 'Triphine', '07-13-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'HAKIZIMANA ELIAS', 'NIBABYARE FORTUNATA', '', ''),
(190, '', 'S2B', 'O level', 62047647361, 'BYUKUSENGE', 'Angelique', '12-18-01', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AKAJYENAMA', 'HABIMANA EMMANUEL', 'MUHOZE MARIE GRACE', '', ''),
(191, '', 'S2B', 'O level', 620599593632, 'CYIZA', 'Yvonne', '03-10-04', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'NSENGIYUMVA LEOPOLD', 'MUHIMPUNDU MARIE CLARISSE', '', ''),
(192, '', 'S2B', 'O level', 620402103617, 'Dushime', 'Deborah', '07-25-02', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'RUTARE', 'MANARIYO LADISLAS', 'TWAGIRAYEZU JOSEPHA', '', ''),
(193, '', 'S2B', 'O level', 620477543617, 'GISUBIZO', 'Moise', '10-27-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'MUGEMA SAMUEL', 'NGENDANDUMWE BLANDINE', '', ''),
(194, '', 'S2B', 'O level', 620665213635, 'IBYIMANIKORA', 'Adonie', '01-01-99', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGASEKE', 'MAGEZA SAMSON', 'NIYOYABIGIZE PRISCILLE', '', ''),
(195, '', 'S2B', 'O level', 62068886361, 'Ingabire', 'Delphine', '01-01-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'BIZIMANA BONIFACE', 'MUKANDAHUNGA GENEVIEVE', '', ''),
(196, '', 'S2B', 'O level', 620758513610, 'IRADUKUNDA', 'Delphine', '05-01-06', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'RWINKUBA', 'HABIMANA THEOBALD', 'UWAMARIYA CHANTAL', '', ''),
(197, '', 'S2B', 'O level', 620878903621, 'IRADUKUNDA', 'Francois', '01-01-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AKARAMBO', 'MUSHIMIYIMANA CELESTIN', 'MUKANDAMAGE MARIE GRACE', '', ''),
(198, '', 'S2B', 'O level', 62053985369, 'IRADUKUNDA', 'Kelly', '06-10-06', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AMAJURI', 'NTIHABOSE FELICIEN', 'NZABONIHIRWE EMERITA', '', ''),
(199, '', 'S2B', 'O level', 62037663361, 'IRAHARI', 'Jean Baptiste', '01-01-04', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'TABARO PIERRE', 'MUKAMURARA ESPERANCE', '', ''),
(200, '', 'S2B', 'O level', 620231153617, 'IRAHARI', 'Samuel', '01-01-05', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'BUTARE', 'NDAYIZEYE ALEXANDRE', 'TWAGIRIMANA GRACE', '', ''),
(201, '', 'S2B', 'O level', 620249713639, 'IYAMUDUHAYE', 'Triphonie', '01-01-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'UMUTORERWA', 'NTAMWEMEZI NAASSON', 'MUKAMANA CLARISSE', '', ''),
(202, '', 'S2B', 'O level', 620879153639, 'IZABAYO', 'NOA', '06-16-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AKAJYENAMA', 'BAKUNDUKIZE VENUSTE', 'NYIRANKUNDIMANA CHRISTINE', '', ''),
(203, '', 'S2B', 'O level', 620409583619, 'IZABAYO', 'Pascasie', '04-13-01', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'MUTABAZI JEAN', 'MUKASHEMA PELAGIE', '', ''),
(204, '', 'S2B', 'O level', 620736313624, 'KWIZERA', 'Gad', '02-01-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'MUNYARUKUNDO EMMANUEL', 'MUSHIMIYIMANA JEANNETTE', '', ''),
(205, '', 'S2B', 'O level', 620634973618, 'MUGISHA', 'Marc', '05-08-06', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'MISAGO ELAM', 'MUSABYEMARIYA MARIE CONCILIE', '', ''),
(206, '', 'S2B', 'O level', 620645813636, 'MWITENDE', 'Naasson', '12-30-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'BUTERA NAASSON', 'FURAHA SPECIOSE', '', ''),
(207, '', 'S2B', 'O level', 620827793632, 'NDAGIJIMANA', 'Elie', '09-15-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'HABYARIMANA MARTIN', 'NYIRANEZA VALERIE', '', ''),
(208, '', 'S2B', 'O level', 620434383626, 'NDAYISHIMIYE', 'Emmanuel', '01-01-03', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE ', 'GAHONDO', 'SIBOMANA JEAN DAMASCENE', 'MUKAMUHIRWA ALOYSIE', '', ''),
(209, '', 'S2B', 'O level', 620602693610, 'NIKUZE', 'Divine', '01-01-02', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'AGASHARU', 'NDIKUYEZE CELESTIN', 'MUKAYUHI ANNONCIATA', '', ''),
(210, '', 'S2B', 'O level', 620605843612, 'NINZIZA', 'Rachel', '09-13-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AMAJURI', 'NDUWUMWE JEAN MARIE VIANNEY', 'MUKESHIMANA FRANCOISE', '', ''),
(211, '', 'S2B', 'O level', 620138113640, 'NIYOMUGABO', 'Leandre', '01-01-02', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'NDAMYUGABE VENUSTE', 'NYIRABAZUNGU JOSEE', '', ''),
(212, '', 'S2B', 'O level', 62011298362, 'NIYOMUHOZA', 'Rachel', '06-24-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGAKURWE', 'MACUMU VENUSTE', 'NTAKIRUTIMANA JACQUELINE', '', ''),
(213, '', 'S2B', 'O level', 620891433624, 'NIYONSENGA', 'Laurence', '01-01-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'HABIMANA JOSEPH', 'MUKAGATARE LEOCADIE', '', ''),
(214, '', 'S2B', 'O level', 620462253633, 'NIYONSHUTI', 'Samuel', '01-01-01', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AKAJYENAMA', 'NZIYONIZEYE NAASSON ', 'NIRAGIRE ADELINE', '', ''),
(215, '', 'S2B', 'O level', 620132853632, 'NKUNDIMANA Jean', 'de la la', '06-01-01', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'HAKIZUMWAMI THARCISSE', 'DUSABE GLORIOSE', '', ''),
(216, '', 'S2B', 'O level', 620478563624, 'NTAKIRUTIMANA', 'Claude', '02-01-01', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'UBUSENYI', 'NTAWUHIGANAYO JEAN', 'NIYONIZEYE FORTUNEE', '', ''),
(217, '', 'S2B', 'O level', 620397483615, 'NTAKIRUTIMANA JEAN', 'MARIE VIANNEY', '01-01-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AMAJURI', 'URAYENEZA APHRODIS', 'NYIRASONI CHANTAL', '', ''),
(218, '', 'S2B', 'O level', 620235853628, 'NTAKIRUTIMANA', 'Solange', '01-01-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'HARERIMANA CELESTIN', 'NYIRAHABYARIM ANA ESPERANE', '', ''),
(219, '', 'S2B', 'O level', 620749523614, 'NUBAHIMANA', 'Angelique', '03-04-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AMAJURI', 'NTIRENGANYA JUVENAL', 'NYABYENDA MARIE JOSEE', '', ''),
(220, '', 'S2B', 'O level', 62013419368, 'NYIRAMINANI', 'Grace', '08-18-02', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'MUNYABUGINGO JEAN', 'MUKAMAZIMPAKA PASCASIE', '', ''),
(221, '', 'S2B', 'O level', 62037023368, 'NZEYIMANA', 'Alphonse', '11-22-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'MACUMI DANIEL', 'UWIZEYIMANA MARIE GRACE', '', ''),
(222, '', 'S2B', 'O level', 62035424368, 'SIKUBWABO', 'Pacifique', '11-25-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'NTAKIRUTIMANA PASCAL', 'MUKESHIMANA BEATA', '', ''),
(223, '', 'S2B', 'O level', 620390233623, 'TUYIKUNDE', 'Elie', '01-01-05', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AKAJYENAMA', 'HANGANIMANA ISAIE', 'NYIRAMATABARO MARIE', '', ''),
(224, '', 'S2B', 'O level', 620853643629, 'TUYISABE', 'Gad', '05-20-00', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'BAKINAHE ALOYS', 'BAMURANGE MARIE REGINE', '', ''),
(225, '', 'S2B', 'O level', 620709683623, 'TUYISHIMIRE', 'Jacqueline', '01-01-99', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'BUTARE', 'MURINDA DENYS', 'DUKUZEYEZU CECILE', '', ''),
(226, '', 'S2B', 'O level', 62054620363, 'TUYIZERE', 'Jean Pierre', '01-16-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AKAJYENAMA', 'NGEZAHAYO INNOCENT', 'AHOBANTEGEYE ALPHONSINE', '', ''),
(227, '', 'S2B', 'O level', 620221543621, 'TWAGIRAYEZU', 'Emmanuel', '01-01-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'SIKUBWABO STRATON MAKOMBE', 'MANIRAKOZE AURELIE', '', ''),
(228, '', 'S2B', 'O level', 620512693614, 'UMUGWANEZA', 'Ange', '01-01-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'KABACUZI', 'NTAGANZWA ONESPHORE', 'UWAMAHORO FRANCINE', '', ''),
(229, '', 'S2B', 'O level', 620259523633, 'UWIMBABAZI', 'Appoline', '01-01-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'RUTARE', 'BIZIMANA EMMANUEL', 'NIBAGWIRE GRACE', '', ''),
(230, '', 'S2B', 'O level', 620537563637, 'UWINEZA', 'Esther', '08-24-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGOMBWA', 'MUGOMBWA', 'AGASHARU', 'NZARAMYIMANA AUGUSTIN', 'MUSABYIMANA VESTINE', '', ''),
(231, '', 'S2B', 'O level', 62067786363, 'UWIZEYE', 'Divine', '02-25-05', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'NDAYOBOTSE AUGUSTIN', 'MUSABYIMANA SERAPHINE', '', ''),
(232, '', 'S2B', 'O level', 62083025369, 'UWIZEYIMANA', 'Claudine', '12-15-01', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGASEKE', 'MATABARO CANISIUS', 'UWAMUNGU JOSEE', '', ''),
(233, '', 'S2B', 'O level', 620172573616, 'UWIZEYIMANA', 'Delphine', '01-01-02', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'UBUSENYI', 'IRIHAMYE EMMANUEL', 'MUKANTAGANDA BEATRICE', '', ''),
(234, '', 'S2B', 'O level', 620615523640, 'UWUMUKIZA', 'Faida', '08-04-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'UMUTORERWA', 'PETER JEAN DAMASCENE', 'ICYIMPAYE THERESIE', '', ''),
(235, '', 'S2B', 'O level', 620392303626, 'UYISABYE', 'Delphine', '08-25-02', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'KAMANZI MARTIN', 'NYIRABENDA CHRISTINE', '', ''),
(236, '', 'S3A', 'O level', 620763592838, 'BYIRINGIRO', 'Emmanuel', '05-26-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'MUNYARUKUNDO EMMANUEL', 'MUSHIMIYIMANA JEANNETTE', '', ''),
(237, '', 'S3A', 'O level', 620624812837, 'DUSINGIZIMANA', 'Abel', '09-28-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'GITWA ', 'UHAWENAYO FIDELE', 'NIYONGERE DONATILLE', '', ''),
(238, '', 'S3A', 'O level', 620826472824, 'IRADUKUNDA', 'Fidele', '05-25-05', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'BANDORAYINGWE LOUIS', 'UWIZEYIMANA LIBERATA', '', ''),
(239, '', 'S3A', 'O level', 620611652828, 'IRADUKUNDA', 'Jacqueline', '01-01-02', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'CYUMBA', 'NGIRUWONSANGA JEAN DAMASCENE', 'MUNGANYINKA VENERANDA', '', ''),
(240, '', 'S3A', 'O level', 620702992839, 'IRAGUHA', 'Jean Pierre', '01-01-02', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'TWAGIRAYEZU VINCENT', 'NYIRABAKINAHE THARCILLE', '', ''),
(241, '', 'S3A', 'O level', 620360932840, 'IRAKOZE', 'David', '01-20-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'HAVUGIMANA JEAN BAPTISTE', 'TWAGIRAYEZU BERNADETTE', '', ''),
(242, '', 'S3A', 'O level', 62034197286, 'ISHIMWE', 'David', '05-15-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AKAJYENAMA', 'BIZUMUREMYE FRANCOIS', 'NIYIRORA CATHERINE', '', ''),
(243, '', 'S3A', 'O level', 620106692827, 'KANZIGA', 'Delphine', '09-20-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'BUTARE', 'RWABAHIZI VIANNEY', 'MUKANGENZI SERAPHINE', '', ''),
(244, '', 'S3A', 'O level', 62071224287, 'MANIRAREBA', 'Jean Claude', '11-09-02', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'SIBOMANA JEAN DAMASCENE', 'UWIMANA MARIE', '', ''),
(245, '', 'S3A', 'O level', 620467312815, 'MUJAWAMARIYA', 'Jeannettte', '04-13-04', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'MUTABAZI JEAN', 'MUKASHEMA PELAGIE', '', ''),
(246, '', 'S3A', 'O level', 620198162837, 'MUNYARUKUNDO', 'Emmanuel', '12-30-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AKAJYENAMA', 'HARINDINTWARI CELESTIN', 'CYIZA SPECIOSE', '', ''),
(247, '', 'S3A', 'O level', 620143742829, 'MUSHIMIYIMANA', 'Immaculee', '11-13-01', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AKAJYENAMA', 'NCAHINYERETSE EMMANUEL', 'UWINGABIRE ANASTASIE', '', ''),
(248, '', 'S3A', 'O level', 62087266285, 'MUTABAZI', 'Jean Damascene', '07-15-04', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'MUKERABATARO JEAN PIERRE', 'MUKAMURERA CHRISTINE', '', ''),
(249, '', 'S3A', 'O level', 620539342830, 'MUVUNYI', 'Joel', '03-08-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'MISAGO ELAM', 'MUSABYEMARIYA CONCILIE', '', ''),
(250, '', 'S3A', 'O level', 620288112830, 'NDAYISHIMIYE', 'Patrick', '12-20-00', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'NGEZAHAYO CELESTIN', 'KEMERI SYLVIE', '', ''),
(251, '', 'S3A', 'O level', 620253412827, 'NIRINGIYIMANA', 'Aphonse', '07-03-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'NAHAYO JOSEPH', 'MUKAMANZI CLOTHILDE', '', ''),
(252, '', 'S3A', 'O level', 620234682825, 'NIYIBIZI', 'Emmanuel', '01-01-01', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'NDAYAMBAJE FERDINAND', 'NYIRANZASABIMFURA VERDIANA', '', ''),
(253, '', 'S3A', 'O level', 620335682812, 'NIYITANGA', 'Joseph', '08-02-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'RWAMUGOYI', 'NDAGIJIMANA EMMANUEL', 'KABEGA FRANCINE', '', ''),
(254, '', 'S3A', 'O level', 620868472818, 'NIYOMUBYEYI', 'Diane', '08-24-01', '', 'F', 'SOUTH', 'GISAGARA', 'MUGOMBWA', 'MUGOMBWA', 'BISHYA', 'HABINEZA EUGENE', 'NIYONAGIRA ALPHONSINE', '', ''),
(255, '', 'S3A', 'O level', 620199882828, 'NSHIMIYIMANA', 'Jean Pierre', '05-05-00', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'UBUSENYI', 'BARUTWANAYO LEONIDAS', 'MUKARUGWIZA ANNONCIATA', '', ''),
(256, '', 'S3A', 'O level', 620485992830, 'NTAKIRUTIMANA', 'Joseph', '12-23-99', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'HABYARIMANA JEAN MARIE VIANNEY', 'MUSABYEMARIYA JOSEPHA', '', ''),
(257, '', 'S3A', 'O level', 620409142819, 'NTAKIRUTIMANA', 'MARIE Therese', '11-12-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'SHYIRAMBERE PASCAL', 'MUKASHYAKA MARIE JOSEE', '', ''),
(258, '', 'S3A', 'O level', 62017211284, 'NTIRANDEKURA', 'Samuel', '01-01-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'SERIBANDA AJPHONSE', 'BANKUNDIYE PHILOMENE', '', ''),
(259, '', 'S3A', 'O level', 620271612815, 'TUYISABE', 'MARIE Agnes', '04-28-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AMAJURI', 'NDAYISABA GASPARD', 'NZAMWITAKUZE BEATRICE', '', ''),
(260, '', 'S3A', 'O level', 620862822816, 'TUYISENGE', 'Jean Paul', '08-08-00', '', 'M', 'SOUTH', 'GISAGARA', 'MUKINDO', 'RUNYINYA', 'AGAKOMEYE', 'KAJEMUNDIMWE VIANNEY', 'DUSENGE THARCILLE', '', '');
INSERT INTO `2020_students` (`sid`, `sdms`, `class`, `opt`, `regno`, `fn`, `ln`, `dof`, `age`, `gender`, `PROVINCE`, `DISTRICT`, `SECTOR`, `CELL`, `VIRAGE`, `father`, `mother`, `tel`, `photo`) VALUES
(261, '', 'S3A', 'O level', 620643992830, 'UMUHOZA', 'Divine', '05-12-02', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'NKUNDIBIZA GABRIEL', 'NIYONSABA PETRONILLE', '', ''),
(262, '', 'S3A', 'O level', 620364242815, 'UWIMANA', 'Agnes', '04-01-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGAKURWE', 'SIMPARIKUBWABO ISAIE', 'NYIRABAGENZI FELICITEE', '', ''),
(263, '', 'S3A', 'O level', 62086051282, 'UWINGABIRE', 'Vincentie', '01-01-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'NDAYISABA VINCENT', 'NIYONSABA JOSEPHA', '', ''),
(264, '', 'S3A', 'O level', 620279472818, 'UWIRINGIYIMANA', 'Marthe', '12-20-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'UBUSENYI', 'KANYESHYAMBA ETIENNE', 'NYIRANDIMURWANGO CANDIDA', '', ''),
(265, '', 'S3A', 'O level', 620631582813, 'RUKUNDO', 'BENJAMIN', '12-25-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGOMBWA', 'INKAMBI', 'QUARTIER 8', 'KAMARI BUGONDO', 'NYIRAMPETESHA KESIA', '', ''),
(266, '', 'S3B', 'O level', 620839815330, 'BARAHIRA', 'Innocent', '01-01-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'YIRIRWAHANDI CLAUDE', 'NYIRANEZA SALOME', '', ''),
(267, '', 'S3B', 'O level', 620899945310, 'BAYISENGE', 'Patrick', '07-14-05', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'NKUNDIBIZA GABRIEL', 'UWUZAKUNDA ALPHONSINE', '', ''),
(268, '', 'S3B', 'O level', 620499515336, 'BIZUMUREMYI', 'Emmanuel', '01-01-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'BYIZA', 'NDAYISABA INNOCENT', 'NZAMUKOSHA CHRISTINE', '', ''),
(269, '', 'S3B', 'O level', 620773685315, 'BUKURU', 'Donatha', '04-20-02', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'GASAGO EZECHIEL', 'MUKASE CECILE', '', ''),
(270, '', 'S3B', 'O level', 620623285335, 'BUTOYI', 'Anne ', '01-01-00', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'BUTARE', 'BAKUNDA EZECHIEL', 'UWIMANA VICTOIRE', '', ''),
(271, '', 'S3B', 'O level', 620552935329, 'DUSENGIMANA', 'MARIE Therese', '02-28-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'HABYARIMANA MARTIN', 'NYIRANEZA VALERIE', '', ''),
(272, '', 'S3B', 'O level', 620601855336, 'GIRAMATA', 'JEAN Bosco', '01-13-01', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'NDAYISABA VINCENT', 'NIYONSABA JOSEPHA', '', ''),
(273, '', 'S3B', 'O level', 620781935317, 'IRADUKUNDA', 'MARIE Louise', '04-20-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'NTIRUSHWAMABOKO CASIMIR', 'MUSABYIMANA MARIE THERESE', '', ''),
(274, '', 'S3B', 'O level', 620282615336, 'IRADUKUNDA', 'Pierre', '01-02-00', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AKAJYENAMA', 'HANGANIMANA ISAIE', 'NYIRAMATABARO MARIE', '', ''),
(275, '', 'S3B', 'O level', 62026694536, 'KWIBUKA', 'Patrick', '07-08-01', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'MUSABYIMANA JEAN DAMASCENE', 'NYIRANGENDAHIMANA CLOTHILDE', '', ''),
(276, '', 'S3B', 'O level', 620768875337, 'KWIZERA', 'Philbert', '07-27-03', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'MBUGUJE IGNACE', 'MUKANDANGO ODETTE', '', ''),
(277, '', 'S3B', 'O level', 620563875335, 'MPORENDORE', 'Lambert', '06-14-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AGASEKE', 'SIBOBUGINGO ALPHONSE', 'NTAWANGINEZA BEATA', '', ''),
(278, '', 'S3B', 'O level', 620750415313, 'MUSHIMIYIMANA', 'Agnes', '09-19-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'NGENDAHAYO FRANCOIS', 'MUKANTWARI MARIE LOUISE', '', ''),
(279, '', 'S3B', 'O level', 620665275339, 'MUSHIMIYIMANA', 'Jeannette', '12-17-03', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'DAHWE', 'GITWA ', 'KUBWIMANA THEOPHILE', 'UWIZEYIMANA CASSILDE', '', ''),
(280, '', 'S3B', 'O level', 62015486537, 'MUTUYIMANA', 'Dorothee', '03-01-02', '', 'F', 'SOUTH', 'GISAGARA', 'MUGANZA', 'DAHWE', 'GAHONDO', 'GAKWAYA MATHIAS', 'NYIRANEZA VITALIENNE', '', ''),
(281, '', 'S3B', 'O level', 62085447534, 'NDAGIJIMANA', 'Jean Bosco', '03-03-01', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'BARIHIUTA CELESTIN', 'NTABANGANYIMANA DONATIENNE', '', ''),
(282, '', 'S3B', 'O level', 620633135338, 'NGABONZIZA', 'Aphrodice', '02-06-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'TABA', 'SURWUMWE CELESTIN', 'MUKAMBABAZI DATIVE', '', ''),
(283, '', 'S3B', 'O level', 620547905335, 'NGENDAHAYO', 'Philippe', '11-07-98', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'MINANI FREDERIC', 'NYIRANSABIMANA EUGENIE', '', ''),
(284, '', 'S3B', 'O level', 620886205317, 'NIYOMUFASHA', 'Donatha', '06-30-04', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'INGABIRE MICHEL', 'MUJAWAMARIYA JOSEPHINE', '', ''),
(285, '', 'S3B', 'O level', 620802395315, 'NIYONSENGA', 'Blandine', '09-26-04', '', 'F', 'SOUTH', 'GISAGARA', 'MUGOMBWA', 'MUGOMBWA', 'BISHYA', 'BYIHOREYE EMMANUEL', 'KAGOYIRE CONCILIE', '', ''),
(286, '', 'S3B', 'O level', 62010324539, 'NIYONSENGA', 'Slyvie', '07-29-02', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'NZABANDORA GAMALIEL', 'MUKARWEGO IMMACULEE', '', ''),
(287, '', 'S3B', 'O level', 62083776533, 'NIZEYIMANA', 'Patrick', '09-17-04', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GITWA ', 'GASHUMBA ELIAS', 'MUKANGANGO JEANNETTE', '', ''),
(288, '', 'S3B', 'O level', 620724595318, 'NKUNDIMANA', 'Janvier', '04-01-02', '', 'M', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'AGASHARU', 'NIZEYIMANA EMMANUEL', 'NIKUZE THARCISSIE', '', ''),
(289, '', 'S3B', 'O level', 620175335325, 'NKUNDINEZA', 'Celestin', '01-01-02', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'CYUMBA', 'KAMABANGO', 'NSANZURWIMO VINCENT', 'UWIZEYIMANA DEMITRIE', '', ''),
(290, '', 'S3B', 'O level', 620151395319, 'NSHIMIYIMANA', 'Pascal', '01-01-01', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'RWAMUGOYI', 'NSABIMANA JEAN BAPTISTE', 'NBONSHUTI CESAREE', '', ''),
(291, '', 'S3B', 'O level', 620288345336, 'NTWARI', 'Emmanuel', '12-12-03', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'URUSARO', 'KABERA JEAN BAPTISTE', 'NIYONSABA JACQUELINE', '', ''),
(292, '', 'S3B', 'O level', 620363945337, 'NYIRANEZA', 'MARIE Grace', '08-13-03', '', 'F', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'MUTABAZI VIANNEY', 'MBARUSHIMANA FEBRONIE', '', ''),
(293, '', 'S3B', 'O level', 620305545333, 'TUYIZERE', 'Emmanuel', '09-13-04', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'REMERA', 'AKAJYENAMA', 'NCAHINYERETSE EMMANUEL', 'UWINGABIRE ANASTASIE', '', ''),
(294, '', 'S3B', 'O level', 620188525338, 'TWAGIRUMUKIZA', 'Theophile', '03-08-05', '', 'M', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AMAJURI', 'BIGIRIMANA JEAN BOSCO', 'NYIRANDIKUMANA REGINE', '', ''),
(295, '', 'S3B', 'O level', 620527415311, 'UJENEZA', 'Pacifique', '2005-10-25', '15', 'male', 'SOUTH', 'GISAGARA', 'MUGANZA', 'MUGANZA', 'AGASHARU', 'UTAZIRUBANDA THEOGENE', 'MUSHIMIYIMANA MARIE GORETTI', '', ''),
(296, '1', 'S1A', 'O level', 6204512634, 'ABAYISENGA', 'Ernest', '01/01/2007', '7', 'Male', 'SOUTH', 'GISAGARA', 'NDORA', 'DAHWE', 'GAHONDO', 'NSERUKIYEHE JEAN BOSCO', 'MUREKAYIRE VIANNA', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `2020_test`
--

CREATE TABLE `2020_test` (
  `id` int(11) NOT NULL,
  `quizid` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `term` varchar(255) NOT NULL,
  `testid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_test_marks`
--

CREATE TABLE `2020_test_marks` (
  `qid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `quiz_id` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL,
  `class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_test_places`
--

CREATE TABLE `2020_test_places` (
  `id` int(11) NOT NULL,
  `test` varchar(255) NOT NULL,
  `regno` varchar(222) NOT NULL,
  `marks` varchar(222) NOT NULL,
  `place` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_transport`
--

CREATE TABLE `2020_transport` (
  `id` int(11) NOT NULL,
  `reg` varchar(255) NOT NULL,
  `payed` double NOT NULL,
  `tleft` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `evt` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `student` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classcourse`
--

CREATE TABLE `classcourse` (
  `ccid` int(11) NOT NULL,
  `coursename` varchar(200) NOT NULL,
  `classname` varchar(200) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `Teacher` varchar(200) NOT NULL,
  `randid` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classcourse`
--

INSERT INTO `classcourse` (`ccid`, `coursename`, `classname`, `opt`, `Teacher`, `randid`) VALUES
(4, 'Kinyarwanda', 'S1A', 'O level', 'BANDORAYINGWE Louis', 3123),
(5, 'Kinyarwanda', 'S2A', 'O level', 'BANDORAYINGWE Louis', 3123),
(6, 'Kinyarwanda', 'S2B', 'O level', 'BANDORAYINGWE Louis', 3123),
(7, 'Kinyarwanda', 'S3A', 'O level', 'BANDORAYINGWE Louis', 3123),
(8, 'Kinyarwanda', 'S3B', 'O level', 'BANDORAYINGWE Louis', 3123),
(9, 'English', 'S2A', 'O level', 'BANDORAYINGWE Louis', 7578),
(10, 'English', 'S2B', 'O level', 'BANDORAYINGWE Louis', 7578),
(11, 'English', 'S3A', 'O level', 'BANDORAYINGWE Louis', 7578),
(12, 'English', 'S3B', 'O level', 'BANDORAYINGWE Louis', 7578),
(13, 'Francais', 'S2A', 'O level', 'BAKAKA Yusufu', 9098),
(14, 'Francais', 'S2B', 'O level', 'BAKAKA Yusufu', 9098),
(15, 'Francais', 'S3A', 'O level', 'BAKAKA Yusufu', 9098),
(16, 'Francais', 'S3B', 'O level', 'BAKAKA Yusufu', 9098),
(17, 'ICT', 'S1A', 'O level', 'BANDORAYINGWE Louis', 3123),
(18, 'Geography & Sciences of environment', 'S1B', 'O level', 'BANDORAYINGWE Louis', 3123),
(19, 'Kiswahili', 'S1C', 'O level', 'BANDORAYINGWE Louis', 3123),
(20, 'Mathematics', 'S2A', 'O level', 'BANDORAYINGWE Louis', 3123),
(21, 'Physics', 'S2B', 'O level', 'BANDORAYINGWE Louis', 3123),
(22, 'Biology', 'S3A', 'O level', 'BANDORAYINGWE Louis', 3123),
(23, 'Chemistry', 'S3B', 'O level', 'BANDORAYINGWE Louis', 3123);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `classid` int(11) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `teacher` int(11) NOT NULL,
  `lever` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`classid`, `classname`, `opt`, `teacher`, `lever`) VALUES
(1, 'S1A', 'O level', 0, 'lower'),
(2, 'S1B', 'O level', 0, 'lower'),
(3, 'S1C', 'O level', 0, 'lower'),
(4, 'S2A', 'O level', 0, 'lower'),
(5, 'S2B', 'O level', 0, 'lower'),
(6, 'S3A', 'O level', 0, 'lower'),
(7, 'S3B', 'O level', 0, 'lower');

-- --------------------------------------------------------

--
-- Table structure for table `conduct`
--

CREATE TABLE `conduct` (
  `id` int(20) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `conduct` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conduct`
--

INSERT INTO `conduct` (`id`, `regno`, `class`, `conduct`) VALUES
(1, '6204615049', 'S1A', 40),
(2, '6204899836', 'S1A', 40),
(3, '620392320237', 'S1A', 40),
(4, '62055780023', 'S1A', 40),
(5, '620617640215', 'S1A', 40),
(6, '62085341026', 'S1A', 40),
(7, '62081422023', 'S1A', 40),
(8, '620196370226', 'S1A', 40),
(9, '62047089028', 'S1A', 40),
(10, '620133420226', 'S1A', 40),
(11, '620482370227', 'S1A', 40),
(12, '620470870238', 'S1A', 40),
(13, '62032730028', 'S1A', 40),
(14, '620248810239', 'S1A', 40),
(15, '620303490224', 'S1A', 40),
(16, '620586440237', 'S1A', 40),
(17, '62070034023', 'S1A', 40),
(18, '620744450215', 'S1A', 40),
(19, '620457870210', 'S1A', 40),
(20, '620613910225', 'S1A', 40),
(21, '620317430237', 'S1A', 40),
(22, '620840850231', 'S1A', 40),
(23, '620787210240', 'S1A', 40),
(24, '620130370232', 'S1A', 40),
(25, '620103600210', 'S1A', 40),
(26, '620564250225', 'S1A', 40),
(27, '620504920236', 'S1A', 40),
(28, '620553750212', 'S1A', 40),
(29, '62084625027', 'S1A', 40),
(30, '62024183023', 'S1A', 40),
(31, '620727170218', 'S1A', 40),
(32, '620656100211', 'S1A', 40),
(33, '620472870216', 'S1A', 40),
(34, '620470910229', 'S1A', 40),
(35, '620306910211', 'S1A', 40),
(36, '620497540218', 'S1A', 40),
(37, '620194990215', 'S1A', 40),
(38, '62011260024', 'S1A', 40),
(39, '620347540211', 'S1A', 40),
(40, '62046870023', 'S1A', 40),
(41, '62051050026', 'S1A', 40),
(42, '62085423027', 'S1A', 40),
(43, '62026965021', 'S1A', 40),
(44, '620584160238', 'S1A', 40),
(45, '620346400234', 'S1A', 40),
(46, '620560840214', 'S1A', 40),
(47, '620110950213', 'S1A', 40),
(48, '620397960236', 'S1A', 40),
(49, '620463340215', 'S1A', 40),
(50, '62066776022', 'S1A', 40),
(51, '620719320220', 'S1A', 40),
(52, '620839260226', 'S1A', 40),
(53, '620164450211', 'S1A', 40),
(54, '620182100214', 'S1A', 40),
(55, '620124380227', 'S1A', 40),
(56, '620794890320', 'S1A', 40),
(57, '620253900318', 'S1A', 40),
(58, '620542631634', 'S1B', 40),
(59, '62052398168', 'S1B', 40),
(60, '620337591639', 'S1B', 40),
(61, '620441801637', 'S1B', 40),
(62, '620430301623', 'S1B', 40),
(63, '62017451169', 'S1B', 40),
(64, '620337921618', 'S1B', 40),
(65, '620657351631', 'S1B', 40),
(66, '620554831634', 'S1B', 40),
(67, '620318341621', 'S1B', 40),
(68, '62057484165', 'S1B', 40),
(69, '62045241164', 'S1B', 40),
(70, '620607681626', 'S1B', 40),
(71, '620578161617', 'S1B', 40),
(72, '620499541626', 'S1B', 40),
(73, '62014162165', 'S1B', 40),
(74, '62031389161', 'S1B', 40),
(75, '620672611613', 'S1B', 40),
(76, '62048022166', 'S1B', 40),
(77, '620346471617', 'S1B', 40),
(78, '620755101610', 'S1B', 40),
(79, '620841501624', 'S1B', 40),
(80, '620111171610', 'S1B', 40),
(81, '620621711613', 'S1B', 40),
(82, '620154251632', 'S1B', 40),
(83, '620670301616', 'S1B', 40),
(84, '620758541611', 'S1B', 40),
(85, '620774291634', 'S1B', 40),
(86, '620220711639', 'S1B', 40),
(87, '620324991616', 'S1B', 40),
(88, '620646831616', 'S1B', 40),
(89, '620828761634', 'S1B', 40),
(90, '620493771637', 'S1B', 40),
(91, '620679461625', 'S1B', 40),
(92, '620126521632', 'S1B', 40),
(93, '62076726161', 'S1B', 40),
(94, '620271101621', 'S1B', 40),
(95, '620479861629', 'S1B', 40),
(96, '620345991617', 'S1B', 40),
(97, '620325351616', 'S1B', 40),
(98, '62063796169', 'S1B', 40),
(99, '620152881639', 'S1B', 40),
(100, '620827421629', 'S1B', 40),
(101, '62076517165', 'S1B', 40),
(102, '620446201624', 'S1B', 40),
(103, '620269951631', 'S1B', 40),
(104, '620277251632', 'S1B', 40),
(105, '620681671625', 'S1B', 40),
(106, '620454951625', 'S1B', 40),
(107, '620778301637', 'S1B', 40),
(108, '620297911635', 'S1B', 40),
(109, '620467961630', 'S1B', 40),
(110, '62042988165', 'S1B', 40),
(111, '62019473168', 'S1B', 40),
(112, '620283221613', 'S1B', 40),
(113, '620752411611', 'S1B', 40),
(114, '620567611618', 'S1B', 40),
(115, '620226660137', 'S1C', 40),
(116, '620668990118', 'S1C', 40),
(117, '620491930121', 'S1C', 40),
(118, '620825400127', 'S1C', 40),
(119, '62082121019', 'S1C', 40),
(120, '62031693013', 'S1C', 40),
(121, '620376920128', 'S1C', 40),
(122, '620274860137', 'S1C', 40),
(123, '620610630113', 'S1C', 40),
(124, '62024050017', 'S1C', 40),
(125, '620426640132', 'S1C', 40),
(126, '620362380132', 'S1C', 40),
(127, '620706820129', 'S1C', 40),
(128, '62031374013', 'S1C', 40),
(129, '62084265018', 'S1C', 40),
(130, '62021889015', 'S1C', 40),
(131, '62026230012', 'S1C', 40),
(132, '620803500136', 'S1C', 40),
(133, '620742170120', 'S1C', 40),
(134, '620194330138', 'S1C', 40),
(135, '620328690122', 'S1C', 40),
(136, '62038736113', 'S2A', 40),
(137, '62088876111', 'S2A', 40),
(138, '620586621111', 'S2A', 40),
(139, '62050884117', 'S2A', 40),
(140, '62040036115', 'S2A', 40),
(141, '620190731140', 'S2A', 40),
(142, '620270831128', 'S2A', 40),
(143, '620420141134', 'S2A', 40),
(144, '62066787118', 'S2A', 40),
(145, '620877501131', 'S2A', 40),
(146, '62042082113', 'S2A', 40),
(147, '620478811132', 'S2A', 40),
(148, '620494451116', 'S2A', 40),
(149, '62069491119', 'S2A', 40),
(150, '620815351121', 'S2A', 40),
(151, '62010945119', 'S2A', 40),
(152, '62010264112', 'S2A', 40),
(153, '62066111114', 'S2A', 40),
(154, '620529741138', 'S2A', 40),
(155, '620678721116', 'S2A', 40),
(156, '62048418119', 'S2A', 40),
(157, '620528601140', 'S2A', 40),
(158, '620363141116', 'S2A', 40),
(159, '620670811113', 'S2A', 40),
(160, '620842721124', 'S2A', 40),
(161, '620448731140', 'S2A', 40),
(162, '620617731125', 'S2A', 40),
(163, '620643461125', 'S2A', 40),
(164, '620710951114', 'S2A', 40),
(165, '62067070111', 'S2A', 40),
(166, '62018723115', 'S2A', 40),
(167, '620352711128', 'S2A', 40),
(168, '620350101130', 'S2A', 40),
(169, '620668751122', 'S2A', 40),
(170, '62011368119', 'S2A', 40),
(171, '620587171138', 'S2A', 40),
(172, '620579751126', 'S2A', 40),
(173, '62026046112', 'S2A', 40),
(174, '620750251140', 'S2A', 40),
(175, '620215891127', 'S2A', 40),
(176, '620234991133', 'S2A', 40),
(177, '620325371120', 'S2A', 40),
(178, '620867651120', 'S2A', 40),
(179, '62065339119', 'S2A', 40),
(180, '620277411135', 'S2A', 40),
(181, '620456951138', 'S2A', 40),
(182, '620397591128', 'S2A', 40),
(183, '62010477114', 'S2A', 40),
(184, '620137601111', 'S2A', 40),
(185, '62012673116', 'S2A', 40),
(186, '62064989116', 'S2A', 40),
(187, '620446353624', 'S2B', 40),
(188, '620856733632', 'S2B', 40),
(189, '620699813633', 'S2B', 40),
(190, '62047647361', 'S2B', 40),
(191, '620599593632', 'S2B', 40),
(192, '620402103617', 'S2B', 40),
(193, '620477543617', 'S2B', 40),
(194, '620665213635', 'S2B', 40),
(195, '62068886361', 'S2B', 40),
(196, '620758513610', 'S2B', 40),
(197, '620878903621', 'S2B', 40),
(198, '62053985369', 'S2B', 40),
(199, '62037663361', 'S2B', 40),
(200, '620231153617', 'S2B', 40),
(201, '620249713639', 'S2B', 40),
(202, '620879153639', 'S2B', 40),
(203, '620409583619', 'S2B', 40),
(204, '620736313624', 'S2B', 40),
(205, '620634973618', 'S2B', 40),
(206, '620645813636', 'S2B', 40),
(207, '620827793632', 'S2B', 40),
(208, '620434383626', 'S2B', 40),
(209, '620602693610', 'S2B', 40),
(210, '620605843612', 'S2B', 40),
(211, '620138113640', 'S2B', 40),
(212, '62011298362', 'S2B', 40),
(213, '620891433624', 'S2B', 40),
(214, '620462253633', 'S2B', 40),
(215, '620132853632', 'S2B', 40),
(216, '620478563624', 'S2B', 40),
(217, '620397483615', 'S2B', 40),
(218, '620235853628', 'S2B', 40),
(219, '620749523614', 'S2B', 40),
(220, '62013419368', 'S2B', 40),
(221, '62037023368', 'S2B', 40),
(222, '62035424368', 'S2B', 40),
(223, '620390233623', 'S2B', 40),
(224, '620853643629', 'S2B', 40),
(225, '620709683623', 'S2B', 40),
(226, '62054620363', 'S2B', 40),
(227, '620221543621', 'S2B', 40),
(228, '620512693614', 'S2B', 40),
(229, '620259523633', 'S2B', 40),
(230, '620537563637', 'S2B', 40),
(231, '62067786363', 'S2B', 40),
(232, '62083025369', 'S2B', 40),
(233, '620172573616', 'S2B', 40),
(234, '620615523640', 'S2B', 40),
(235, '620392303626', 'S2B', 40),
(236, '620763592838', 'S3A', 40),
(237, '620624812837', 'S3A', 40),
(238, '620826472824', 'S3A', 40),
(239, '620611652828', 'S3A', 40),
(240, '620702992839', 'S3A', 40),
(241, '620360932840', 'S3A', 40),
(242, '62034197286', 'S3A', 40),
(243, '620106692827', 'S3A', 40),
(244, '62071224287', 'S3A', 40),
(245, '620467312815', 'S3A', 40),
(246, '620198162837', 'S3A', 40),
(247, '620143742829', 'S3A', 40),
(248, '62087266285', 'S3A', 40),
(249, '620539342830', 'S3A', 40),
(250, '620288112830', 'S3A', 40),
(251, '620253412827', 'S3A', 40),
(252, '620234682825', 'S3A', 40),
(253, '620335682812', 'S3A', 40),
(254, '620868472818', 'S3A', 40),
(255, '620199882828', 'S3A', 40),
(256, '620485992830', 'S3A', 40),
(257, '620409142819', 'S3A', 40),
(258, '62017211284', 'S3A', 40),
(259, '620271612815', 'S3A', 40),
(260, '620862822816', 'S3A', 40),
(261, '620643992830', 'S3A', 40),
(262, '620364242815', 'S3A', 40),
(263, '62086051282', 'S3A', 40),
(264, '620279472818', 'S3A', 40),
(265, '620631582813', 'S3A', 40),
(266, '620839815330', 'S3B', 40),
(267, '620899945310', 'S3B', 40),
(268, '620499515336', 'S3B', 40),
(269, '620773685315', 'S3B', 40),
(270, '620623285335', 'S3B', 40),
(271, '620552935329', 'S3B', 40),
(272, '620601855336', 'S3B', 40),
(273, '620781935317', 'S3B', 40),
(274, '620282615336', 'S3B', 40),
(275, '62026694536', 'S3B', 40),
(276, '620768875337', 'S3B', 40),
(277, '620563875335', 'S3B', 40),
(278, '620750415313', 'S3B', 40),
(279, '620665275339', 'S3B', 40),
(280, '62015486537', 'S3B', 40),
(281, '62085447534', 'S3B', 40),
(282, '620633135338', 'S3B', 40),
(283, '620547905335', 'S3B', 40),
(284, '620886205317', 'S3B', 40),
(285, '620802395315', 'S3B', 40),
(286, '62010324539', 'S3B', 40),
(287, '62083776533', 'S3B', 40),
(288, '620724595318', 'S3B', 40),
(289, '620175335325', 'S3B', 40),
(290, '620151395319', 'S3B', 40),
(291, '620288345336', 'S3B', 40),
(292, '620363945337', 'S3B', 40),
(293, '620305545333', 'S3B', 40),
(294, '620188525338', 'S3B', 40),
(295, '620527415311', 'S3B', 40),
(296, '6204512634', 'S1A', 40);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `cid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `option` varchar(255) NOT NULL,
  `tot` int(200) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'core',
  `cat` text NOT NULL,
  `sub` text NOT NULL,
  `upper` varchar(255) NOT NULL,
  `lower` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`cid`, `name`, `option`, `tot`, `status`, `cat`, `sub`, `upper`, `lower`) VALUES
(1, 'Kinyarwanda', 'O level', 0, 'core', 'Kinyarwand', 'Kinyarwand', '60', '60'),
(2, 'English', 'O level', 0, 'core', 'English', 'English', '100', '100'),
(3, 'Kiswahili', 'O level', 0, 'core', 'Kiswahili', 'Kiswahili', '40', '40'),
(6, 'Mathematics', 'O level', 0, 'core', 'Mathematcs', 'Mathematcs', '120', '120'),
(7, 'Physics', 'O level', 0, 'core', 'Physics', 'Physics', '80', '80'),
(8, 'Biology', 'O level', 0, 'core', 'Biology', 'Biology', '80', '80'),
(9, 'Chemistry', 'O level', 0, 'core', 'Chemistry', 'Chemistry', '80', '80'),
(10, 'History& Citizenship', 'O level', 0, 'core', 'History& C', 'History& C', '60', '60'),
(11, 'Geography & Sciences of environment', 'O level', 0, 'core', 'Geography ', 'Geography ', '60', '60'),
(12, 'Entrepreneurship', 'O level', 0, 'core', 'Entreprene', 'Entreprene', '40', '40'),
(13, 'ICT', 'O level', 0, 'core', 'ICT', 'ICT', '40', '40'),
(14, 'Religion', 'O level', 0, 'notcore', 'Religion', 'Religion', '40', '40'),
(15, 'Library & ', 'O level', 0, 'core', 'Library & ', 'Library & ', '20', '20'),
(16, 'Literature in English', 'O level', 0, 'notcore', 'Literature', 'Literature', '20', '20'),
(17, 'Francais', 'O level', 0, 'notcore', 'Francais', 'Francais', '40', '40'),
(18, 'EPS', 'O level', 0, 'notcore', 'EPS', 'EPS', '20', '20');

-- --------------------------------------------------------

--
-- Table structure for table `coursecat`
--

CREATE TABLE `coursecat` (
  `id` int(11) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL,
  `cname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `province` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msgid` int(11) NOT NULL,
  `sentsms` varchar(255) NOT NULL,
  `leftsms` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msgid`, `sentsms`, `leftsms`) VALUES
(1, '0', '50');

-- --------------------------------------------------------

--
-- Table structure for table `mistakes`
--

CREATE TABLE `mistakes` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `mistake` text NOT NULL,
  `details` text NOT NULL,
  `punishment` text NOT NULL,
  `reg` varchar(255) NOT NULL,
  `student` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `pid` int(11) NOT NULL,
  `opname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`pid`, `opname`) VALUES
(1, 'O level');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `motif` text NOT NULL,
  `returndate` varchar(255) NOT NULL,
  `reg` varchar(200) NOT NULL,
  `student` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
(1, 'west'),
(2, 'kigali city'),
(3, 'east'),
(4, 'south'),
(5, 'north');

-- --------------------------------------------------------

--
-- Table structure for table `schoolinfo`
--

CREATE TABLE `schoolinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `defaultyear` int(11) NOT NULL,
  `sendername` varchar(200) NOT NULL,
  `schoolcode` int(11) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `h1` text NOT NULL,
  `h2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolinfo`
--

INSERT INTO `schoolinfo` (`id`, `name`, `logo`, `manager`, `defaultyear`, `sendername`, `schoolcode`, `tel`, `email`, `h1`, `h2`) VALUES
(1, 'ECOLE SECONDAIRE MUGANZA', 'izubaedu_demo/izuba.png', 'NDAGIJIMANA Jean Baptiste', 2020, 'EsMuganza', 6, '078888777', '', 'REPUBLIC  OF RWANDA', 'MINISTRY OF EDUCATION');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `district`, `name`) VALUES
(1, 8, 'Gashora'),
(2, 8, 'Juru'),
(3, 8, 'Kamabuye'),
(4, 8, 'Ntarama'),
(5, 8, 'mareba'),
(6, 8, 'Mayange'),
(7, 8, 'Musenyi'),
(8, 8, 'Mwogo'),
(9, 8, 'Ngeruka'),
(10, 8, 'Nyamata'),
(11, 8, 'Nyarugenge'),
(12, 8, 'Rilima'),
(13, 8, 'Ruhuha'),
(14, 8, 'Rweru'),
(15, 8, 'Shyara'),
(16, 9, 'Gasange'),
(17, 9, 'Gatsibo'),
(18, 9, 'Gitoki'),
(19, 9, 'Kabarore'),
(20, 9, 'Kageyo'),
(21, 9, 'Kiramuruzi'),
(22, 9, 'Kiziguro'),
(23, 9, 'Muhura'),
(24, 9, 'Murambi'),
(25, 9, 'Ngarama'),
(26, 9, 'Nyagihanga'),
(27, 9, 'Remera'),
(29, 9, 'Rwimbogo'),
(28, 9, 'Rugarama'),
(30, 10, 'Gahini'),
(31, 10, 'Kabare'),
(32, 10, 'Kabarondo'),
(33, 10, 'Mukarage'),
(34, 10, 'Murama'),
(35, 10, 'Murundi'),
(36, 10, 'Mwiri'),
(37, 10, 'Ndengo'),
(38, 10, 'Nyamirama'),
(39, 10, 'Rukara'),
(40, 10, 'Ruramira'),
(41, 10, 'Rwinkwavu'),
(42, 11, 'Gahara'),
(43, 11, 'Gatore'),
(44, 11, 'Kigina'),
(45, 11, 'Kirehe'),
(46, 11, 'Muhama'),
(47, 11, 'Mpanga'),
(48, 11, 'Musaza'),
(49, 11, 'Mushikiri'),
(50, 11, 'Nasho'),
(51, 11, 'Nyamugari'),
(52, 11, 'Nyarubuye'),
(53, 11, 'Kigarama'),
(54, 12, 'Gashanda'),
(55, 12, 'Jarama'),
(56, 12, 'Karembo'),
(57, 12, 'Kazo'),
(58, 12, 'Kibungo'),
(59, 12, 'Mugesera'),
(60, 12, 'Murama'),
(61, 12, 'Mutenderi'),
(62, 12, 'Remera'),
(63, 12, 'Rukira'),
(64, 12, 'Rukumberi'),
(65, 12, 'Rurenge'),
(66, 12, 'Sake'),
(67, 12, 'Zaza'),
(68, 13, 'Gatunda'),
(69, 13, 'Kiyombe'),
(70, 13, 'Karama'),
(71, 13, 'Karangazi'),
(72, 13, 'Katabagemu'),
(73, 13, 'Matimba'),
(74, 13, 'Mimuli'),
(75, 13, 'Mukama'),
(76, 13, 'Musheri'),
(77, 13, 'Nyagatare'),
(78, 13, 'Rukomo'),
(79, 13, 'Rwempasha'),
(80, 13, 'Rwimiyaga'),
(81, 13, 'Tabagwe'),
(82, 14, 'Fumbwe'),
(83, 14, 'Gahengeri'),
(84, 14, 'Gishari'),
(85, 14, 'Karenge'),
(86, 14, 'Kigabiro'),
(87, 14, 'Muhazi'),
(88, 14, 'Munyanga'),
(89, 14, 'Munyiginya'),
(90, 14, 'Musha'),
(91, 14, 'Muyumbu'),
(92, 14, 'Mwulire'),
(93, 14, 'Nyakariro'),
(94, 14, 'Nzige'),
(95, 14, 'Rubona'),
(96, 28, 'Bumbogo'),
(97, 28, 'Gatsata'),
(98, 28, 'Jali'),
(99, 28, 'Gikomero'),
(100, 28, 'Gisozi'),
(101, 28, 'Jabana'),
(102, 28, 'Kinyinya'),
(103, 28, 'Ndera'),
(104, 28, 'Nduba'),
(105, 28, 'Rusororo'),
(106, 28, 'Rutunga'),
(107, 28, 'Kacyiru'),
(108, 28, 'Kimihurura'),
(109, 28, 'Kimironko'),
(110, 28, 'Remera'),
(111, 29, 'Gahanga'),
(112, 29, 'Gatenga'),
(113, 29, 'Gikondo'),
(114, 29, 'Kagarama'),
(115, 29, 'Kanombe'),
(116, 29, 'Kicukiro'),
(117, 29, 'Kigarama'),
(118, 29, 'Masaka'),
(119, 29, 'Niboye'),
(120, 29, 'Nyarugunga'),
(121, 30, 'Gitega'),
(122, 30, 'Kanyinya'),
(123, 30, 'Kigali'),
(124, 30, 'Kimisagara'),
(125, 30, 'Mageragere'),
(126, 30, 'Muhima'),
(127, 30, 'Nyakabanda'),
(128, 30, 'Nyamirambo'),
(129, 30, 'Rwezamenyo'),
(130, 30, 'Nyarugenge'),
(131, 23, 'Bungwe'),
(132, 23, 'Butaro'),
(133, 23, 'Cyanika'),
(134, 23, 'Cyeru'),
(135, 23, 'Gahunga'),
(136, 23, 'Gatebe'),
(137, 23, 'Gitovu'),
(138, 23, 'Kagogo'),
(139, 23, 'Kinoni'),
(140, 23, 'Kinyababa'),
(141, 23, 'Kivuye'),
(142, 23, 'Nemba'),
(143, 23, 'Rugarama'),
(144, 23, 'Rugendabari'),
(145, 23, 'Ruhunde'),
(146, 23, 'Rusarabuge'),
(147, 23, 'Rwerere'),
(148, 24, 'Busengo'),
(149, 24, 'Coko'),
(150, 24, 'Cyabingo'),
(151, 24, 'Gakenke'),
(152, 24, 'Gashenyi'),
(153, 24, 'Mugunga'),
(154, 24, 'Janja'),
(155, 24, 'Kamubuga'),
(156, 24, 'Karambo'),
(157, 24, 'Kivuruga'),
(158, 24, 'Mataba'),
(159, 24, 'Minazi'),
(160, 24, 'Muhondo'),
(161, 24, 'Muyongwe'),
(162, 24, 'Muzo'),
(163, 24, 'Nemba'),
(164, 24, 'Ruli'),
(165, 24, 'Rusasa'),
(166, 24, 'Rushashi'),
(167, 25, 'Bukure'),
(168, 25, 'Bwisige'),
(169, 25, 'Byumba'),
(170, 25, 'Cyumba'),
(171, 25, 'Giti'),
(172, 25, 'Kaniga'),
(173, 25, 'Manyagiro'),
(174, 25, 'Miyove'),
(175, 25, 'Kageyo'),
(176, 25, 'Mukarange'),
(177, 25, 'Muko'),
(178, 25, 'Mutete'),
(179, 25, 'Nyamiyaga'),
(180, 25, 'Nyankeke'),
(181, 25, 'Rubaya'),
(182, 25, 'Rukomo'),
(183, 25, 'Rushaki'),
(184, 25, 'Rutare'),
(185, 25, 'Ruvune'),
(186, 25, 'Rwamiko'),
(187, 25, 'Shangasha'),
(188, 26, 'Busogo'),
(189, 26, 'Cyuve'),
(190, 26, 'Gacaca'),
(191, 26, 'Gashaki'),
(192, 26, 'Gataraga'),
(193, 26, 'Kimonyi'),
(194, 26, 'Kinigi'),
(195, 26, 'Muhoza'),
(196, 26, 'Muko'),
(197, 26, 'Musanze'),
(198, 26, 'Nkotsi'),
(199, 26, 'Nyange'),
(200, 26, 'Remera'),
(201, 26, 'Rwaza'),
(202, 26, 'Shingiro'),
(203, 27, 'Base'),
(204, 27, 'Burega'),
(205, 27, 'Bushoki'),
(206, 27, 'Buyoga'),
(207, 27, 'Cyinzuzi'),
(208, 27, 'Cyungo'),
(209, 27, 'Kinihira'),
(210, 27, 'Kisaro'),
(211, 27, 'Masoro'),
(212, 27, 'Mbogo'),
(213, 27, 'Murambi'),
(214, 27, 'Ngoma'),
(215, 27, 'Ntarabana'),
(216, 27, 'Rukozo'),
(217, 27, 'Rusiga'),
(218, 27, 'Shyorongi'),
(219, 27, 'Tumba'),
(220, 15, 'Gakonko'),
(221, 15, 'Gishubi'),
(222, 15, 'Kansi'),
(223, 15, 'Kibilizi'),
(224, 15, 'Kigembe'),
(225, 15, 'Mamba'),
(226, 15, 'Muganza'),
(227, 15, 'Mugombwa'),
(228, 15, 'Mukindo'),
(229, 15, 'Musha'),
(230, 15, 'Ndora'),
(231, 15, 'Nyanza'),
(232, 15, 'Save'),
(233, 16, 'Gashamu'),
(234, 16, 'Karama'),
(235, 16, 'Kigoma'),
(236, 16, 'Kinazi'),
(237, 16, 'Maraba'),
(238, 16, 'Mbazi'),
(239, 16, 'Mukura'),
(240, 16, 'Ngoma'),
(241, 16, 'Ruhashya'),
(242, 16, 'Rusatira'),
(243, 16, 'Rwaniro'),
(244, 16, 'Simbi'),
(245, 16, 'Tumba'),
(246, 16, 'Huye'),
(247, 17, 'Gacurabwenge'),
(248, 17, 'Karama'),
(249, 17, 'Kayenzi'),
(250, 17, 'Kayumbu'),
(251, 17, 'Mugina'),
(252, 17, 'Musambira'),
(253, 17, 'Ngamba'),
(254, 17, 'Nyamiyaga'),
(255, 17, 'Nyarubaka'),
(256, 17, 'Rugalika'),
(257, 17, 'Rukoma'),
(258, 17, 'Runda'),
(259, 18, 'Cyeza'),
(260, 18, 'Kabacuzi'),
(261, 18, 'Kibangu'),
(262, 18, 'Kiyumba'),
(263, 18, 'Muhanga'),
(264, 18, 'Mushishiro'),
(265, 18, 'Nyabinoni'),
(266, 18, 'Nyamabuye'),
(267, 18, 'Nyarusange'),
(268, 18, 'Rongi'),
(269, 18, 'Rugendabari'),
(270, 18, 'Shyogwe'),
(272, 19, 'Buruhukiro'),
(273, 19, 'Cyaniko'),
(274, 19, 'Gatare'),
(275, 19, 'Kaduha'),
(276, 19, 'Kamegeli'),
(277, 19, 'Kibirizi'),
(278, 19, 'Kibumbwe'),
(279, 19, 'Kitabi'),
(280, 19, 'Mbazi'),
(281, 19, 'Mugano'),
(282, 19, 'Musange'),
(283, 19, 'Musebeya'),
(284, 19, 'Mushubi'),
(285, 19, 'Nkomane'),
(286, 19, 'Gasaka'),
(287, 19, 'Tare'),
(288, 19, 'Uwinkingi'),
(289, 20, 'Busasamana'),
(290, 20, 'Busoro'),
(291, 20, 'Cyabakamyi'),
(292, 20, 'Kibirizi'),
(293, 20, 'Kigoma'),
(294, 20, 'Mukingo'),
(295, 20, 'Rwabicuma'),
(296, 20, 'Muyira'),
(297, 20, 'Ntyazo'),
(298, 20, 'Nyagisozi'),
(299, 21, 'Cyahinda'),
(300, 21, 'Busanze'),
(301, 21, 'Kibeho'),
(302, 21, 'Mata'),
(303, 21, 'Munini'),
(304, 21, 'Kivu'),
(305, 21, 'Ngera'),
(306, 21, 'Ngoma'),
(307, 21, 'Nyabimata'),
(308, 21, 'Nyagisozi'),
(309, 21, 'Ruheru'),
(310, 21, 'Muganza'),
(311, 21, 'Ruramba'),
(312, 21, 'Rusenge'),
(313, 22, 'Bweramana'),
(314, 22, 'Byimana'),
(315, 22, 'Kabagari'),
(316, 22, 'Kinazi'),
(317, 22, 'Kinihira'),
(318, 22, 'Mbuye'),
(319, 22, 'Mwendo'),
(320, 22, 'Ntongwe'),
(321, 22, 'Ruhango'),
(322, 1, 'Bwishyura'),
(323, 1, 'Gishari'),
(324, 1, 'Gishyita'),
(325, 1, 'Gisovu'),
(326, 1, 'Gitesi'),
(327, 1, 'Murundi'),
(328, 1, 'Murambi'),
(329, 1, 'Mubuga'),
(330, 1, 'Mutuntu'),
(331, 1, 'Rugabano'),
(332, 1, 'Ruganda'),
(333, 1, 'Rwankuba'),
(334, 1, 'Twumba'),
(335, 2, 'Bwira'),
(336, 2, 'Gatumba'),
(337, 2, 'Hindiro'),
(338, 2, 'Kabaya'),
(339, 2, 'Kageyo'),
(340, 2, 'Kavumu'),
(341, 2, 'Matyazo'),
(342, 2, 'Muhanda'),
(343, 2, 'Muhororo'),
(344, 2, 'Ndaro'),
(345, 2, 'Ngororero'),
(346, 2, 'Nyange'),
(347, 2, 'Sovu'),
(348, 3, 'Bigogwe'),
(349, 3, 'Jenda'),
(350, 3, 'Jomba'),
(351, 3, 'Kabatwa'),
(352, 3, 'Karago'),
(353, 3, 'Kintobo'),
(354, 3, 'Mukamira'),
(355, 3, 'Muringa'),
(356, 3, 'Rambura'),
(357, 3, 'Rugera'),
(358, 3, 'Rurembo'),
(359, 3, 'Shyira'),
(360, 4, 'Bushekeri'),
(361, 4, 'Bushenge'),
(362, 4, 'Cyato'),
(363, 4, 'Gihombo'),
(364, 4, 'Kagano'),
(365, 4, 'Kanjongo'),
(366, 4, 'Karambi'),
(367, 4, 'Karengera'),
(368, 4, 'Kirimbi'),
(369, 4, 'Macuba'),
(370, 4, 'Mahembe'),
(371, 4, 'Nyabitekeri'),
(372, 4, 'Rangiro'),
(373, 4, 'Ruharambuga'),
(374, 4, 'Shangi'),
(375, 5, 'Bugeshi'),
(376, 5, 'Busasamana'),
(377, 5, 'Cyanzarwe'),
(378, 5, 'Gisenyi'),
(379, 5, 'Kanama'),
(380, 5, 'Kanzenze'),
(381, 5, 'Mudende'),
(382, 5, 'Nyakiliba'),
(383, 5, 'Nyabyumba'),
(384, 5, 'Nyundo'),
(385, 5, 'Rubavu'),
(386, 5, 'Rugerero'),
(387, 6, 'Bugarama'),
(388, 6, 'Butare'),
(389, 6, 'Bweyeye'),
(390, 6, 'Gikundamvura'),
(391, 6, 'Gashonga'),
(392, 6, 'Giheke'),
(393, 6, 'Gihundwe'),
(394, 6, 'Gitambi'),
(395, 6, 'Kamembe'),
(396, 6, 'Muganza'),
(397, 6, 'Mururu'),
(398, 6, 'Nkanka'),
(399, 6, 'Nkombo'),
(400, 6, 'Nkungu'),
(401, 6, 'Nyakabuye'),
(402, 6, 'Nyakarenzo'),
(403, 6, 'Nzahaha'),
(404, 6, 'Rwimbogo'),
(405, 7, 'Boneza'),
(406, 7, 'Gihango'),
(407, 7, 'Kigeyo'),
(408, 7, 'Kivumu'),
(409, 7, 'Manihira'),
(410, 7, 'Mukura'),
(411, 7, 'Murunda'),
(412, 7, 'Musasa'),
(413, 7, 'Mushonyi'),
(414, 7, 'Mushubati'),
(415, 7, 'Nyabirasa'),
(416, 7, 'Ruhango'),
(417, 7, 'Rusebeya');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `sdms` text NOT NULL,
  `ln` varchar(255) NOT NULL,
  `Fn` text NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tablename`
--

CREATE TABLE `tablename` (
  `id` int(11) NOT NULL,
  `student` varchar(255) NOT NULL,
  `groups` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `Tel` varchar(255) NOT NULL,
  `idno` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `rand_id` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `fname`, `lname`, `sex`, `Tel`, `idno`, `degree`, `rand_id`) VALUES
(2, 'BANDORAYINGWE', 'Louis', 'Male', '0783177405', '', 'Teacher', 3123),
(3, 'NDAMYUMUGABE', 'JMV', 'Male', '0788632541', '', 'Teacher', 3891),
(4, 'UYISABYE', 'Angelique', 'Female', '0783110919', '1111', 'Teacher', 6468),
(5, 'HABIMANA', 'JPaul', 'Male', '0785099179', '', 'Teacher', 2954),
(6, 'NDAGIJIMANA', 'JBaptiste', 'Male', '0783193881', '', 'Teacher', 1226),
(7, 'NDATIMANA', 'JDamascene', 'Male', '0789048206', '', 'Teacher', 3995),
(8, 'SEBATWARE', 'Silas', 'Male', '0788704993', '', 'Teacher', 1688),
(11, 'BAKAKA', 'Yusufu', 'Male', '0783708710', '', 'Teacher', 9098);

-- --------------------------------------------------------

--
-- Table structure for table `test_table`
--

CREATE TABLE `test_table` (
  `id` int(11) NOT NULL,
  `testid` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `tot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` int(11) NOT NULL,
  `teacherid` varchar(255) NOT NULL,
  `classid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `rand_id` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `role`, `rand_id`) VALUES
(1, 'MUHAMED', 'Adam', '0780023608', '0780023608', 'teacher', 3081),
(2, 'BANDORAYINGWE', 'Louis', '0783177405', '0783177405', 'teacher', 3123),
(3, 'NDAMYUMUGABE', 'JMV', '0788632541', '0788632541', 'teacher', 3891),
(4, 'UYISABYE', 'Angelique', '078311919', '078311919', 'teacher', 6468),
(5, 'HABIMANA', 'JPaul', '0785099179', '0785099179', 'teacher', 2954),
(6, 'NDAGIJIMANA', 'JBaptiste', '0783193881', '0783193881', 'teacher', 1226),
(7, 'NDATIMANA', 'JDamascene', '0789048206', '0789048206', 'teacher', 3995),
(8, 'SEBATWARE', 'Silas', '0788704993', '0788704993', 'teacher', 1688),
(9, 'SEBATWARE', 'Silas', '0788704993', '0788704993', 'teacher', 4744),
(10, 'SEBATWARE', 'Silas', '0788704993', '0788704993', 'teacher', 2211),
(11, 'BAKAKA', 'Yusufu', '0783708710', '0783708710', 'teacher', 9098),
(12, 'BANDORAYINGWE', 'Louis', '0783177405', '0783177405', 'teacher', 7578);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `name`) VALUES
(1, 2020);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `2020_accomo`
--
ALTER TABLE `2020_accomo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_class_fees`
--
ALTER TABLE `2020_class_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_fees`
--
ALTER TABLE `2020_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_marks`
--
ALTER TABLE `2020_marks`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `2020_places`
--
ALTER TABLE `2020_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_quiz`
--
ALTER TABLE `2020_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_quiz_marks`
--
ALTER TABLE `2020_quiz_marks`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `2020_restaurent`
--
ALTER TABLE `2020_restaurent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_students`
--
ALTER TABLE `2020_students`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Indexes for table `2020_test`
--
ALTER TABLE `2020_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_test_marks`
--
ALTER TABLE `2020_test_marks`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `2020_test_places`
--
ALTER TABLE `2020_test_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_transport`
--
ALTER TABLE `2020_transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classcourse`
--
ALTER TABLE `classcourse`
  ADD PRIMARY KEY (`ccid`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`classid`),
  ADD UNIQUE KEY `classname` (`classname`);

--
-- Indexes for table `conduct`
--
ALTER TABLE `conduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `coursecat`
--
ALTER TABLE `coursecat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mistakes`
--
ALTER TABLE `mistakes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolinfo`
--
ALTER TABLE `schoolinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tablename`
--
ALTER TABLE `tablename`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_table`
--
ALTER TABLE `test_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `2020_accomo`
--
ALTER TABLE `2020_accomo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_class_fees`
--
ALTER TABLE `2020_class_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `2020_fees`
--
ALTER TABLE `2020_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `2020_marks`
--
ALTER TABLE `2020_marks`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `2020_places`
--
ALTER TABLE `2020_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `2020_quiz`
--
ALTER TABLE `2020_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_quiz_marks`
--
ALTER TABLE `2020_quiz_marks`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_restaurent`
--
ALTER TABLE `2020_restaurent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_students`
--
ALTER TABLE `2020_students`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `2020_test`
--
ALTER TABLE `2020_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_test_marks`
--
ALTER TABLE `2020_test_marks`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_test_places`
--
ALTER TABLE `2020_test_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_transport`
--
ALTER TABLE `2020_transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classcourse`
--
ALTER TABLE `classcourse`
  MODIFY `ccid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `conduct`
--
ALTER TABLE `conduct`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `coursecat`
--
ALTER TABLE `coursecat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mistakes`
--
ALTER TABLE `mistakes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schoolinfo`
--
ALTER TABLE `schoolinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tablename`
--
ALTER TABLE `tablename`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `test_table`
--
ALTER TABLE `test_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `izubaedu_izuba`
--
CREATE DATABASE IF NOT EXISTS `izubaedu_izuba` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `izubaedu_izuba`;

-- --------------------------------------------------------

--
-- Table structure for table `schoolinfo`
--

CREATE TABLE `schoolinfo` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `manager` text NOT NULL,
  `dbname` varchar(255) NOT NULL,
  `schoolcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolinfo`
--

INSERT INTO `schoolinfo` (`id`, `name`, `manager`, `dbname`, `schoolcode`) VALUES
(1, 'demoschool', '0', 'izubaedu_demo', 2),
(3, 'Child Care Academy of Kamembe', '0', 'izubaedu_ccak', 3),
(4, 'My Demo school', '0', 'izubaedu_ccakk', 5),
(5, 'test  school', '0', 'izubaedu_test', 8),
(6, 'ECOLE SECONDAIRE MUGANZA', '0', 'izubaedu_esmuganza', 6),
(7, '0', '0', '0', 0),
(8, '0', '0', '0', 0),
(9, '1563638679', '0', '0', 0),
(10, 'izuba education demoschool', '0', 'izubaedu_izuba1', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(119) NOT NULL,
  `password` varchar(119) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dbname` varchar(119) NOT NULL,
  `role` varchar(119) NOT NULL,
  `fn` varchar(119) NOT NULL,
  `ln` varchar(119) NOT NULL,
  `rand_id` double NOT NULL,
  `sub` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `otp`, `phone`, `dbname`, `role`, `fn`, `ln`, `rand_id`, `sub`) VALUES
(39, 'Euladekcapt', 'Erasmus2019', '', '0788870445', 'izubaedu_ccak', 'admin', 'KANYAMURERA', 'Eulade', 20191, 'primary'),
(44, 'accountant@ccak', 'Umusaza36', '', '0786910057', 'izubaedu_ccak', 'fees', 'fees', 'fees', 112578, ''),
(52, 'JonTU5559', 'BKO09263653', '', '0788744713', 'izubaedu_ccak', 'teacher', 'Jonathan', 'TUYISENGE', 5559, 'primary'),
(53, 'EulKA9981', 'Erasmus2019', '', '0788870445', 'izubaedu_ccak', 'teacher', 'Eulad', 'KANYAMURERA', 9981, 'primary'),
(54, 'JeaUW7099', 'QWE09271455', '', '0788218176', 'izubaedu_ccak', 'teacher', 'JeandeDieu', 'UWAMURENGEYE', 7099, 'primary'),
(55, 'ChaHI9568', 'RBN09274109', '', '0788677006', 'izubaedu_ccak', 'teacher', 'Charles', 'HITIMANA', 9568, 'primary'),
(56, 'KAYSI9359', 'OTP09274829', '', '0784774122', 'izubaedu_ccak', 'teacher', 'KAYIGIRE', 'SIMON', 9359, 'primary'),
(57, 'BARJE710', 'QWE09274917', '', '0788296895', 'izubaedu_ccak', 'teacher', 'BARAYATA', 'JEANCLAUDE', 710, 'primary'),
(58, 'NSETH3828', 'RBQ09275015', '', '0785178969', 'izubaedu_ccak', 'teacher', 'NSENGUMUREMYI', 'THERESPHORE', 3828, 'primary'),
(59, 'HABJA178', 'OTP09275048', '', '0783211004', 'izubaedu_ccak', 'teacher', 'HABIMANA', 'JAPHET', 178, 'primary'),
(60, 'HISFE517', 'QAZ09275222', '', '0783131533', 'izubaedu_ccak', 'teacher', 'HISHAMUNDA', 'FELIX', 517, 'primary'),
(61, 'BITTH9331', 'BNR09275306', '', '0788709445', 'izubaedu_ccak', 'teacher', 'BITWAYIKI', 'THEODORE', 9331, 'primary'),
(62, 'NDAFR4065', 'EDC09275438', '', '0784078469', 'izubaedu_ccak', 'teacher', 'NDAYISENGA', 'FRANCOISXAVIER', 4065, 'primary'),
(63, 'MBAVE2464', 'EDC09275808', '', '0781162845', 'izubaedu_ccak', 'teacher', 'MBARUBUKEYE', 'VEDASTE', 2464, 'primary'),
(64, 'IRAYV266', 'ZLD09270313', '', '0786697460', 'izubaedu_ccak', 'teacher', 'IRADUKUNDA', 'YVONNE', 266, 'primary'),
(65, 'BYUJE7318', 'RBN09270730', '', '0789857726', 'izubaedu_ccak', 'teacher', 'BYUMVUHORE', 'JEANBAPTISTE', 7318, 'primary'),
(66, 'admin@demoschool', 'Umusaza36', '', '0786910057', 'izubaedu_demo', 'admin', '', '', 574, ''),
(67, 'discipline@demoschool', 'Umusaza36', '', '0786910057', 'izubaedu_demo', 'discipline', 'eulade', 'kagoma', 4057, ''),
(68, 'admin@izuba', 'Umusaza36', '', '0786910057', 'izubaedu_izuba1', 'admin', 'INGABIRE', 'jOSEE', 20192, 'primary'),
(69, 'test@test', 'password123', '', '0788233298', 'izubaedu_test', 'admin', 'iradukundaa', 'ireneeu', 76559, 'primary'),
(70, 'admin@demo', 'BZR065719', '', '0786910057', 'izubaedu_ccakk', 'admin', 'INGABIRE', 'JOSEE', 20195, 'primary'),
(71, 'MUHAD4997', 'QAZ02154909', '', '0780023608', 'izubaedu_test', 'teacher', 'MUHAMED', 'ADAM', 4997, 'primary'),
(72, 'MUHAD2683', 'RNB02154916', '', '0780023608', 'izubaedu_test', 'teacher', 'MUHAMED', 'ADAM', 2683, 'primary'),
(73, 'adoki3235', 'EWQ02192743', '', '0788233298', 'izubaedu_test', 'teacher', 'adolhe', 'kingkiller', 3235, 'primary'),
(74, 'MUHAD9476', 'RNB02195743', '', '0780023608', 'izubaedu_demo', 'teacher', 'MUHAMED', 'ADAM', 9476, 'primary'),
(75, 'MUHAD5219', 'KZW02195749', '', '0780023608', 'izubaedu_demo', 'teacher', 'MUHAMED', 'ADAM', 5219, 'primary'),
(76, 'HagIs4315', 'OTP02195847', '', '0786910057', 'izubaedu_demo', 'teacher', 'Hagenimana', 'Isaac', 4315, 'primary'),
(77, 'accountant@demo', 'Umusaza36', '', '0780023608', 'izubaedu_demo', 'fees', 'fees', 'fees', 12545800, ''),
(78, 'NDAJM3579', 'QWE02195812', '', '0788632541', 'izubaedu_test', 'teacher', 'NDAMYUMUGABE', 'JMV', 3579, 'primary'),
(79, 'NDAJM6931', 'GTL02190028', '', '0788632541', 'izubaedu_demo', 'teacher', 'NDAMYUMUGABE', 'JMV', 6931, 'primary'),
(80, 'uwair1855', 'RBN02190717', '', '0786910057', 'izubaedu_test', 'teacher', 'uwao', 'irenee', 1855, 'primary'),
(81, 'uwair1119', 'BKO02190737', '', '0786910057', 'izubaedu_test', 'teacher', 'uwao', 'irenee', 1119, 'primary'),
(82, 'uwair6787', 'ZLD02190749', '', '0786910057', 'izubaedu_test', 'teacher', 'uwao', 'irenee', 6787, 'primary'),
(83, 'uwair4959', 'ZLD02191354', '', '0786910057', 'izubaedu_demo', 'teacher', 'uwao', 'irenee', 4959, 'primary'),
(84, 'uwair1528', 'POI02191630', '', '0786910057', 'izubaedu_demo', 'teacher', 'uwao', 'irenee', 1528, 'primary'),
(85, 'uwair4565', 'KZW02191721', '', '0786910057', 'izubaedu_demo', 'teacher', 'uwao', 'irenee', 4565, 'primary'),
(86, 'uwair913', 'JLD02191905', '', '0786910057', 'izubaedu_demo', 'teacher', 'uwao', 'irenee', 913, 'primary'),
(87, 'uwair3450', 'EDC02191939', '', '0786910057', 'izubaedu_demo', 'teacher', 'uwao', 'irenee', 3450, 'primary'),
(88, 'uwaem7143', 'PHX02192642', '', '0786910057', 'izubaedu_demo', 'teacher', 'uwayo', 'emmanuel', 7143, 'primary'),
(89, 'AdaMo1555', 'KZW02193557', '', '0780023608', 'izubaedu_demo', 'teacher', 'Adams', 'Mohamed', 1555, 'primary'),
(90, 'KanIs915', 'POI02200132', '', '0734363944', 'izubaedu_demo', 'teacher', 'Kanani', 'Isaac', 915, 'primary'),
(91, 'UWIEl7395', 'QAZ02204125', '', '0786910057', 'izubaedu_demo', 'teacher', 'UWIMANA', 'Elissa', 7395, 'primary'),
(92, 'KanPa2163', 'QAZ02213617', '', '0780023608', 'izubaedu_demo', 'teacher', 'Kanani', 'Papias', 2163, 'primary'),
(93, 'IraIr3379', 'RBN02224824', '', '0786910067', 'izubaedu_demo', 'teacher', 'Iradukunda', 'Irenee', 3379, 'primary'),
(94, 'UmuHe788', 'BNT02244133', '', '0786910057', 'izubaedu_demo', 'teacher', 'Umuhire', 'Heritier', 788, 'primary'),
(95, 'IraIr3476', '123', '', '0787486966', 'izubaedu_demo', 'teacher', 'Iradukunda', 'Irenee', 3476, 'primary'),
(96, 'BANlO1340', 'IOP02240110', '', '0783177405', 'izubaedu_demo', 'teacher', 'BANDORA', 'lOUIS', 1340, 'primary'),
(97, 'admin.Esmuganza', 'esmuganza2020', 'Otp', '07888', 'izubaedu_esmuganza', 'admin', 'ok', 'ok', 10202, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `schoolinfo`
--
ALTER TABLE `schoolinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `schoolinfo`
--
ALTER TABLE `schoolinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- Database: `izubaedu_test`
--
CREATE DATABASE IF NOT EXISTS `izubaedu_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `izubaedu_test`;

-- --------------------------------------------------------

--
-- Table structure for table `2018_accomo`
--

CREATE TABLE `2018_accomo` (
  `id` int(11) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `restaurent` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2018_class_fees`
--

CREATE TABLE `2018_class_fees` (
  `id` int(11) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `term1` varchar(11) NOT NULL,
  `term2` varchar(11) NOT NULL,
  `term3` varchar(11) NOT NULL,
  `cid` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2018_fees`
--

CREATE TABLE `2018_fees` (
  `id` int(11) NOT NULL,
  `student` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `term1` varchar(11) NOT NULL,
  `term2` varchar(11) NOT NULL,
  `term3` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2018_marks`
--

CREATE TABLE `2018_marks` (
  `mid` int(11) NOT NULL,
  `names` varchar(255) NOT NULL,
  `reg` double NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `term1_quiz` double NOT NULL,
  `term1_exam` double NOT NULL,
  `term2_quiz` double NOT NULL,
  `term2_exam` double NOT NULL,
  `term3_quiz` double NOT NULL,
  `term3_exam` double NOT NULL,
  `term1_tot` double NOT NULL,
  `term2_tot` double NOT NULL,
  `term3_tot` double NOT NULL,
  `gmax` double NOT NULL,
  `gtot` double NOT NULL,
  `gper` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2018_places`
--

CREATE TABLE `2018_places` (
  `id` int(11) NOT NULL,
  `studentid` double NOT NULL,
  `term1` int(11) NOT NULL,
  `term2` int(11) NOT NULL,
  `term3` int(11) NOT NULL,
  `per1` double NOT NULL,
  `per2` double NOT NULL,
  `per3` double NOT NULL,
  `class` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2018_quiz`
--

CREATE TABLE `2018_quiz` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `tot` int(11) NOT NULL,
  `date` varchar(2555) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `term` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `testid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2018_quiz_marks`
--

CREATE TABLE `2018_quiz_marks` (
  `qid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `quiz_id` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL,
  `term` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2018_students`
--

CREATE TABLE `2018_students` (
  `sid` int(11) NOT NULL,
  `sdms` varchar(255) DEFAULT NULL,
  `class` varchar(255) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `regno` double NOT NULL,
  `fn` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `dof` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `PROVINCE` varchar(255) NOT NULL,
  `DISTRICT` varchar(255) NOT NULL,
  `SECTOR` varchar(255) NOT NULL,
  `CELL` varchar(255) NOT NULL,
  `VIRAGE` varchar(255) NOT NULL,
  `father` varchar(255) NOT NULL,
  `mother` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2018_test`
--

CREATE TABLE `2018_test` (
  `id` int(11) NOT NULL,
  `quizid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` varchar(11) NOT NULL,
  `class` varchar(11) NOT NULL,
  `term` varchar(11) NOT NULL,
  `testid` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2018_test_marks`
--

CREATE TABLE `2018_test_marks` (
  `qid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `quiz_id` varchar(11) NOT NULL,
  `marks` varchar(11) NOT NULL,
  `class` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2018_test_places`
--

CREATE TABLE `2018_test_places` (
  `id` int(11) NOT NULL,
  `test` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `marks` varchar(11) NOT NULL,
  `place` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2019_accomo`
--

CREATE TABLE `2019_accomo` (
  `id` int(11) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `restaurent` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2019_class_fees`
--

CREATE TABLE `2019_class_fees` (
  `id` int(11) NOT NULL,
  `classname` text NOT NULL,
  `term1` varchar(200) NOT NULL,
  `term2` varchar(200) NOT NULL,
  `term3` varchar(200) NOT NULL,
  `cid` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2019_fees`
--

CREATE TABLE `2019_fees` (
  `id` int(11) NOT NULL,
  `student` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `term1` varchar(200) NOT NULL,
  `term2` varchar(200) NOT NULL,
  `term3` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2019_fees`
--

INSERT INTO `2019_fees` (`id`, `student`, `class`, `term1`, `term2`, `term3`) VALUES
(1, '820686133712', 'p6c', '0', '0', '0'),
(2, '820255433713', 'p6c', '0', '0', '0'),
(3, '820155743736', 'p6c', '0', '0', '0'),
(4, '82084676371', 'p6c', '0', '0', '0'),
(5, '820777793828', 'p6c', '0', '0', '0'),
(6, '820644643839', 'p6c', '0', '0', '0'),
(7, '82082874385', 'p6c', '0', '0', '0'),
(8, '820597223822', 'p6c', '0', '0', '0'),
(9, '82028426382', 'p6c', '0', '0', '0'),
(10, '820468733923', 'p6c', '0', '0', '0'),
(11, '82084466398', 'p6c', '0', '0', '0'),
(12, '820886513922', 'p6c', '0', '0', '0'),
(13, '82054637391', 'p6c', '0', '0', '0'),
(14, '820588743923', 'p6c', '0', '0', '0'),
(15, '820756823938', 'p6c', '0', '0', '0'),
(16, '820625963930', 'p6c', '0', '0', '0'),
(17, '820692304035', 'p6c', '0', '0', '0'),
(18, '820467444017', 'p6c', '0', '0', '0'),
(19, '820630944039', 'p6c', '0', '0', '0'),
(20, '820172104020', 'p6c', '0', '0', '0'),
(21, '820203574035', 'p6c', '0', '0', '0'),
(22, '820665314028', 'p6c', '0', '0', '0'),
(23, '820724104030', 'p1a', '0', '0', '0'),
(24, '820365704012', 'p1a', '0', '0', '0'),
(25, '820152744112', 'p1a', '0', '0', '0'),
(26, '820286354116', 'p1a', '0', '0', '0'),
(27, '82026094099', 'p1a', '0', '0', '0'),
(28, '820195250933', 'p1a', '0', '0', '0'),
(29, '820835560915', 'p1a', '0', '0', '0'),
(30, '820381561016', 'p1a', '0', '0', '0'),
(31, '820551881038', 'p1a', '0', '0', '0'),
(32, '82072923106', 'p1a', '0', '0', '0'),
(33, '820238351038', 'p1a', '0', '0', '0'),
(34, '82016979105', 'p1a', '0', '0', '0'),
(35, '820287821027', 'p1a', '0', '0', '0'),
(36, '820465131140', 'p1a', '0', '0', '0'),
(37, '820535901136', 'p1a', '0', '0', '0'),
(38, '820169461110', 'p1a', '0', '0', '0'),
(39, '82089341113', 'p1a', '0', '0', '0'),
(40, '820391901133', 'p1a', '0', '0', '0'),
(41, '820657801123', 'p1a', '0', '0', '0'),
(42, '82056425121', 'p1a', '0', '0', '0'),
(43, '820147791213', 'p1a', '0', '0', '0'),
(44, '82086322122', 'p1a', '0', '0', '0'),
(45, '820779231240', 'p1a', '0', '0', '0'),
(46, '820315471232', 'p1a', '0', '0', '0'),
(47, '820640171239', 'p1a', '0', '0', '0'),
(48, '820351231222', 'p1a', '0', '0', '0'),
(49, '82041671134', 'p1a', '0', '0', '0'),
(50, '820779231319', 'p1a', '0', '0', '0'),
(51, '820837461319', 'p1a', '0', '0', '0'),
(52, '820438551326', 'p1a', '0', '0', '0'),
(53, '820304851313', 'p1a', '0', '0', '0'),
(54, '820482511328', 'p1a', '0', '0', '0'),
(55, '820303491326', 'p1a', '0', '0', '0'),
(56, '820494851333', 'p1a', '0', '0', '0'),
(57, '820769931421', 'p1a', '0', '0', '0'),
(58, '820235551410', 'p1a', '0', '0', '0'),
(59, '820799451426', 'p1a', '0', '0', '0'),
(60, '82057416146', 'p1a', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `2019_marks`
--

CREATE TABLE `2019_marks` (
  `mid` int(11) NOT NULL,
  `names` varchar(255) NOT NULL,
  `reg` double NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `term1_quiz` double NOT NULL,
  `term1_exam` double NOT NULL,
  `term2_quiz` double NOT NULL,
  `term2_exam` double NOT NULL,
  `term3_quiz` double NOT NULL,
  `term3_exam` double NOT NULL,
  `term1_tot` double NOT NULL,
  `term2_tot` double NOT NULL,
  `term3_tot` double NOT NULL,
  `gmax` double NOT NULL,
  `gtot` double NOT NULL,
  `gper` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2019_marks`
--

INSERT INTO `2019_marks` (`mid`, `names`, `reg`, `cname`, `class`, `term1_quiz`, `term1_exam`, `term2_quiz`, `term2_exam`, `term3_quiz`, `term3_exam`, `term1_tot`, `term2_tot`, `term3_tot`, `gmax`, `gtot`, `gper`) VALUES
(1, 'DUFITIMANA GUILAINE', 820686133712, 'COMPUTER STUDIES', 'p6c', 19.3, 0, 0, 0, 0, 0, 19.3, 0, 0, 120, 19.3, 16.083333333333),
(2, 'DUSABIMANA NOELLA', 820255433713, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(3, 'GWIZA RUGWIRO FABRICE', 820155743736, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(4, 'IGIRANEZA MAURICE', 82084676371, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(5, 'INEZA SHIFLA', 820777793828, 'COMPUTER STUDIES', 'p6c', 16.5, 0, 0, 0, 0, 0, 16.5, 0, 0, 120, 16.5, 13.75),
(6, 'IRANEZEZA BUPFURA NELLY CKENEY', 820644643839, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(7, 'IRERA FABRICE', 82082874385, 'COMPUTER STUDIES', 'p6c', 12.5, 0, 0, 0, 0, 0, 12.5, 0, 0, 120, 12.5, 10.416666666667),
(8, 'IRIHO MUJAIDU ASLANI', 820597223822, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(9, 'IRUMVA MUGISHA BLAISE', 82028426382, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(10, 'KAYEGO NYANGE YVAN', 820468733923, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(11, 'MANZI LEON CEDRICK', 82084466398, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(12, 'MUGISHA VALENTIN', 820886513922, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(13, 'MUHIRWA ENOCK', 82054637391, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(14, 'NDIKUMANA CREDO ERNEST', 820588743923, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(15, 'NDIKUMWENAYO GENTIL', 820756823938, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(16, 'NGABONZIZA MUGISHA SIMPLICE', 820625963930, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(17, 'NIYIBIZI ALINE', 820692304035, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(18, 'NIYINGIZE HONORINE', 820467444017, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(19, 'NIYONGABO BLAISE', 820630944039, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(20, 'UMUKUNZI NADINE', 820172104020, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(21, 'URINZWENIMANA DIVINE', 820203574035, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(22, 'UWIZEYE UMUKUNDWA JOSEE EMMANUELLA', 820665314028, 'COMPUTER STUDIES', 'p6c', 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0),
(23, '', 82026094099, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, '', 820195250933, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, '', 820835560915, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, '', 820381561016, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, '', 820551881038, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, '', 82072923106, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, '', 820238351038, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, '', 82016979105, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, '', 820287821027, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, '', 820465131140, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, '', 820535901136, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, '', 820169461110, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, '', 82089341113, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, '', 820391901133, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, '', 820657801123, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, '', 82056425121, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, '', 820147791213, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, '', 82086322122, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, '', 820779231240, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, '', 820315471232, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, '', 820640171239, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, '', 820351231222, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(45, '', 82041671134, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(46, '', 820779231319, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(47, '', 820837461319, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(48, '', 820438551326, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(49, '', 820304851313, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(50, '', 820482511328, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(51, '', 820303491326, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(52, '', 820494851333, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(53, '', 820769931421, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(54, '', 820235551410, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(55, '', 820799451426, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(56, '', 82057416146, NULL, 'p1a', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `2019_places`
--

CREATE TABLE `2019_places` (
  `id` int(11) NOT NULL,
  `studentid` double NOT NULL,
  `term1` int(11) NOT NULL,
  `term2` int(11) NOT NULL,
  `term3` int(11) NOT NULL,
  `termtot` int(11) NOT NULL,
  `per1` double NOT NULL,
  `per2` double NOT NULL,
  `per3` double NOT NULL,
  `pertot` double NOT NULL,
  `class` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2019_places`
--

INSERT INTO `2019_places` (`id`, `studentid`, `term1`, `term2`, `term3`, `termtot`, `per1`, `per2`, `per3`, `pertot`, `class`) VALUES
(1, 820686133712, 1, 1, 0, 0, 6.4333333333333, 0, 0, 0, 'p6c'),
(2, 820255433713, 4, 2, 0, 0, 0, 0, 0, 0, 'p6c'),
(3, 82084676371, 5, 3, 0, 0, 0, 0, 0, 0, 'p6c'),
(4, 820777793828, 2, 4, 0, 0, 5.5, 0, 0, 0, 'p6c'),
(5, 820644643839, 6, 5, 0, 0, 0, 0, 0, 0, 'p6c'),
(6, 82082874385, 3, 6, 0, 0, 4.1666666666667, 0, 0, 0, 'p6c'),
(7, 820597223822, 7, 7, 0, 0, 0, 0, 0, 0, 'p6c'),
(8, 82028426382, 8, 8, 0, 0, 0, 0, 0, 0, 'p6c'),
(9, 820468733923, 9, 9, 0, 0, 0, 0, 0, 0, 'p6c'),
(10, 82084466398, 10, 10, 0, 0, 0, 0, 0, 0, 'p6c'),
(11, 820886513922, 11, 11, 0, 0, 0, 0, 0, 0, 'p6c'),
(12, 82054637391, 12, 12, 0, 0, 0, 0, 0, 0, 'p6c'),
(13, 820588743923, 13, 13, 0, 0, 0, 0, 0, 0, 'p6c'),
(14, 820756823938, 14, 14, 0, 0, 0, 0, 0, 0, 'p6c'),
(15, 820625963930, 15, 15, 0, 0, 0, 0, 0, 0, 'p6c'),
(16, 820692304035, 16, 16, 0, 0, 0, 0, 0, 0, 'p6c'),
(17, 820467444017, 17, 17, 0, 0, 0, 0, 0, 0, 'p6c'),
(18, 820630944039, 18, 18, 0, 0, 0, 0, 0, 0, 'p6c'),
(19, 820172104020, 19, 19, 0, 0, 0, 0, 0, 0, 'p6c'),
(20, 820203574035, 20, 20, 0, 0, 0, 0, 0, 0, 'p6c'),
(21, 820665314028, 21, 21, 0, 0, 0, 0, 0, 0, 'p6c'),
(22, 82026094099, 1, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(23, 820195250933, 2, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(24, 820835560915, 3, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(25, 820381561016, 4, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(26, 820551881038, 5, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(27, 82072923106, 6, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(28, 820238351038, 7, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(29, 82016979105, 8, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(30, 820287821027, 9, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(31, 820465131140, 10, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(32, 820535901136, 11, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(33, 820169461110, 12, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(34, 82089341113, 13, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(35, 820391901133, 14, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(36, 820657801123, 15, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(37, 82056425121, 16, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(38, 820147791213, 17, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(39, 82086322122, 18, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(40, 820779231240, 19, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(41, 820315471232, 20, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(42, 820640171239, 21, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(43, 820351231222, 22, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(44, 82041671134, 23, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(45, 820779231319, 24, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(46, 820837461319, 25, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(47, 820438551326, 26, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(48, 820304851313, 27, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(49, 820482511328, 28, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(50, 820303491326, 29, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(51, 820494851333, 30, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(52, 820769931421, 31, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(53, 820235551410, 32, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(54, 820799451426, 33, 0, 0, 0, 0, 0, 0, 0, 'p1a'),
(55, 82057416146, 34, 0, 0, 0, 0, 0, 0, 0, 'p1a');

-- --------------------------------------------------------

--
-- Table structure for table `2019_quiz`
--

CREATE TABLE `2019_quiz` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `tot` int(11) NOT NULL,
  `date` varchar(2555) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `term` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `testid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2019_quiz`
--

INSERT INTO `2019_quiz` (`id`, `course`, `tot`, `date`, `class`, `term`, `details`, `testid`) VALUES
(1, 'SOCIAL &RELIGIOUS STUDIES', 80, '14/Feb/2020', 'p6c', 'term1', 'Quiz on:', '');

-- --------------------------------------------------------

--
-- Table structure for table `2019_quiz_marks`
--

CREATE TABLE `2019_quiz_marks` (
  `qid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `quiz_id` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL,
  `term` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2019_quiz_marks`
--

INSERT INTO `2019_quiz_marks` (`qid`, `cname`, `regno`, `quiz_id`, `marks`, `term`) VALUES
(1, 'SOCIAL &RELIGIOUS STUDIES', '820686133712', '1', 77, 'term1'),
(2, 'SOCIAL &RELIGIOUS STUDIES', '820255433713', '1', 0, 'term1'),
(3, 'SOCIAL &RELIGIOUS STUDIES', '820155743736', '1', 0, 'term1'),
(4, 'SOCIAL &RELIGIOUS STUDIES', '82084676371', '1', 0, 'term1'),
(5, 'SOCIAL &RELIGIOUS STUDIES', '820777793828', '1', 66, 'term1'),
(6, 'SOCIAL &RELIGIOUS STUDIES', '820644643839', '1', 0, 'term1'),
(7, 'SOCIAL &RELIGIOUS STUDIES', '82082874385', '1', 50, 'term1'),
(8, 'SOCIAL &RELIGIOUS STUDIES', '820597223822', '1', 0, 'term1'),
(9, 'SOCIAL &RELIGIOUS STUDIES', '82028426382', '1', 0, 'term1'),
(10, 'SOCIAL &RELIGIOUS STUDIES', '820468733923', '1', 0, 'term1'),
(11, 'SOCIAL &RELIGIOUS STUDIES', '82084466398', '1', 0, 'term1'),
(12, 'SOCIAL &RELIGIOUS STUDIES', '820886513922', '1', 0, 'term1'),
(13, 'SOCIAL &RELIGIOUS STUDIES', '82054637391', '1', 0, 'term1'),
(14, 'SOCIAL &RELIGIOUS STUDIES', '820588743923', '1', 0, 'term1'),
(15, 'SOCIAL &RELIGIOUS STUDIES', '820756823938', '1', 0, 'term1'),
(16, 'SOCIAL &RELIGIOUS STUDIES', '820625963930', '1', 0, 'term1'),
(17, 'SOCIAL &RELIGIOUS STUDIES', '820692304035', '1', 0, 'term1'),
(18, 'SOCIAL &RELIGIOUS STUDIES', '820467444017', '1', 0, 'term1'),
(19, 'SOCIAL &RELIGIOUS STUDIES', '820630944039', '1', 0, 'term1'),
(20, 'SOCIAL &RELIGIOUS STUDIES', '820172104020', '1', 0, 'term1'),
(21, 'SOCIAL &RELIGIOUS STUDIES', '820203574035', '1', 0, 'term1'),
(22, 'SOCIAL &RELIGIOUS STUDIES', '820665314028', '1', 0, 'term1');

-- --------------------------------------------------------

--
-- Table structure for table `2019_restaurent`
--

CREATE TABLE `2019_restaurent` (
  `id` int(11) NOT NULL,
  `reg` varchar(255) NOT NULL,
  `payed` bigint(20) NOT NULL,
  `rleft` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2019_students`
--

CREATE TABLE `2019_students` (
  `sid` int(11) NOT NULL,
  `sdms` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `regno` double NOT NULL,
  `fn` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `dof` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `PROVINCE` varchar(255) NOT NULL,
  `DISTRICT` varchar(255) NOT NULL,
  `SECTOR` varchar(255) NOT NULL,
  `CELL` varchar(255) NOT NULL,
  `VIRAGE` varchar(255) NOT NULL,
  `father` varchar(255) NOT NULL,
  `mother` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `tel1` varchar(2555) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2019_students`
--

INSERT INTO `2019_students` (`sid`, `sdms`, `class`, `opt`, `regno`, `fn`, `ln`, `dof`, `age`, `gender`, `PROVINCE`, `DISTRICT`, `SECTOR`, `CELL`, `VIRAGE`, `father`, `mother`, `tel`, `tel1`, `photo`) VALUES
(1, '360902200711320160185', 'p6c', 'PRIMARY', 820686133712, 'DUFITIMANA', 'GUILAINE', '', '', 'male', '', 'rusizi', 'kamb', '', '', 'pap', 'mmm', '0788233298', '', 'izubaedu_test/820686133712.JPG'),
(2, '360902200621320160180', 'p6c', 'PRIMARY', 820255433713, 'DUSABIMANA', 'NOELLA', '', '', 'female', '', '', '', '', '', '', '', '0784351702', '', ''),
(4, '360902200811320160288', 'p6c', 'PRIMARY', 82084676371, 'IGIRANEZA', 'MAURICE', '', '', 'male', '', '', '', '', '', '', '', '0786910057', '', ''),
(5, '360902200421320160295', 'p6c', 'PRIMARY', 820777793828, 'INEZA', 'SHIFLA', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', ''),
(6, '360902190045', 'p6c', 'PRIMARY', 820644643839, 'IRANEZEZA BUPFURA', 'NELLY CKENEY', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', ''),
(7, '360902200711320160296', 'p6c', 'PRIMARY', 82082874385, 'IRERA', 'FABRICE', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(8, '360902200711320160302', 'p6c', 'PRIMARY', 820597223822, 'IRIHO', 'MUJAIDU ASLANI', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(9, '360902190046', 'p6c', 'PRIMARY', 82028426382, 'IRUMVA', 'MUGISHA BLAISE', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(10, '360902200811320160195', 'p6c', 'PRIMARY', 820468733923, 'KAYEGO', 'NYANGE YVAN', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(11, '360902200711320160283', 'p6c', 'PRIMARY', 82084466398, 'MANZI', 'LEON CEDRICK', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(12, '360902190047', 'p6c', 'PRIMARY', 820886513922, 'MUGISHA', 'VALENTIN', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(13, '360902200811320160289', 'p6c', 'PRIMARY', 82054637391, 'MUHIRWA', 'ENOCK', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(14, '360902190048', 'p6c', 'PRIMARY', 820588743923, 'NDIKUMANA', 'CREDO ERNEST', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(15, '360902200411420160142', 'p6c', 'PRIMARY', 820756823938, 'NDIKUMWENAYO', 'GENTIL', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(16, '360902190049', 'p6c', 'PRIMARY', 820625963930, 'NGABONZIZA', 'MUGISHA SIMPLICE', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(17, '360902200721320160477', 'p6c', 'PRIMARY', 820692304035, 'NIYIBIZI', 'ALINE', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', ''),
(18, '360902190050', 'p6c', 'PRIMARY', 820467444017, 'NIYINGIZE', 'HONORINE', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', ''),
(19, '360902190051', 'p6c', 'PRIMARY', 820630944039, 'NIYONGABO', 'BLAISE', '', '', 'MALE', '', '', '', '', '', '', '', '', '', ''),
(20, '360902200521420160101', 'p6c', 'PRIMARY', 820172104020, 'UMUKUNZI', 'NADINE', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', ''),
(21, '360902190052', 'p6c', 'PRIMARY', 820203574035, 'URINZWENIMANA', 'DIVINE', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', ''),
(22, '360902200821320160286', 'p6c', 'PRIMARY', 820665314028, 'UWIZEYE UMUKUNDWA', 'JOSEE EMMANUELLA', '', '', 'FEMALE', '', '', '', '', '', '', '', '', '', ''),
(27, '', 'p1a', 'PRIMARY', 82026094099, 'ABIJURU', 'CHRISTIAN AGNEAU', '', '', 'male', '', '', '', '', '', '', '', '07888888', '88888888888', 'izubaedu_test/82026094099.jpg'),
(28, '', 'p1a', 'PRIMARY', 820195250933, 'AMANI', 'ELFRIDA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, '', 'p1a', 'PRIMARY', 820835560915, 'ASINEZA', 'ANESSA DELICIA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, '', 'p1a', 'PRIMARY', 820381561016, 'BERWA', 'JEAN PAUL', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, '', 'p1a', 'PRIMARY', 820551881038, 'BINGUYENEZA', 'IRIZA PEACE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, '', 'p1a', 'PRIMARY', 82072923106, 'DUSHIMIMANA', 'BELISE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, '', 'p1a', 'PRIMARY', 820238351038, 'HIRWA', 'SALOMON', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, '', 'p1a', 'PRIMARY', 82016979105, 'IGISUBIZO', 'INGABIRE SOLANGE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, '', 'p1a', 'PRIMARY', 820287821027, 'INEZA', 'ANICET HAPPY', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, '', 'p1a', 'PRIMARY', 820465131140, 'IRADUKUNDA', 'AKARABO RABIA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, '', 'p1a', 'PRIMARY', 820535901136, 'IRAKOZE', 'HONORINE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, '', 'p1a', 'PRIMARY', 820169461110, 'IRATWE', 'SHENGE MALO', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, '', 'p1a', 'PRIMARY', 82089341113, 'ISHIMWE JEAN', 'D AMOUR', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, '', 'p1a', 'PRIMARY', 820391901133, 'IYODUSENGA', 'AUDREY', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, '', 'p1a', 'PRIMARY', 820657801123, 'IZIBYOSE', 'KENT', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, '', 'p1a', 'PRIMARY', 82056425121, 'MANZI', 'ABOUBAKAR', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, '', 'p1a', 'PRIMARY', 820147791213, 'MASEZERANO', 'ELYSEE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, '', 'p1a', 'PRIMARY', 82086322122, 'MUGABO', 'AMANI', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, '', 'p1a', 'PRIMARY', 820779231240, 'MUGISHA', 'FRANK', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, '', 'p1a', 'PRIMARY', 820315471232, 'MUGISHA', 'YVAN SYDNEY', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, '', 'p1a', 'PRIMARY', 820640171239, 'MUHIRE', 'CLEVER', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(48, '', 'p1a', 'PRIMARY', 820351231222, 'MUPENZI', 'CHRISTIAN', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(49, '', 'p1a', 'PRIMARY', 82041671134, 'MUTABAZI', 'JUNIOR', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(50, '', 'p1a', 'PRIMARY', 820779231319, 'MWIZERIMANA', 'SANDRINE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(51, '', 'p1a', 'PRIMARY', 820837461319, 'NDUNGUTSE', 'LABAN', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(52, '', 'p1a', 'PRIMARY', 820438551326, 'SHISHIKAYE', 'DIELLA MUGUEL', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, '', 'p1a', 'PRIMARY', 820304851313, 'UMUHIIRE', 'SHIMWA BRUCE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, '', 'p1a', 'PRIMARY', 820482511328, 'UMUHIRE', 'MUREKEZI HORNELLA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(55, '', 'p1a', 'PRIMARY', 820303491326, 'UMUHOZA', 'FAUSTE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, '', 'p1a', 'PRIMARY', 820494851333, 'UMUTONI', 'ASNA FRUIT', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, '', 'p1a', 'PRIMARY', 820769931421, 'UWAMAHORO', 'NADJMA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, '', 'p1a', 'PRIMARY', 820235551410, 'UWASE', 'PACIFIQUE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, '', 'p1a', 'PRIMARY', 820799451426, 'UWINEZA', 'KABERUKA YVETTE', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, '', 'p1a', 'PRIMARY', 82057416146, 'UWINEZA', 'LAURENCE', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `2019_test`
--

CREATE TABLE `2019_test` (
  `id` int(11) NOT NULL,
  `quizid` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `term` varchar(255) NOT NULL,
  `testid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2019_test_marks`
--

CREATE TABLE `2019_test_marks` (
  `qid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `quiz_id` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL,
  `class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2019_test_places`
--

CREATE TABLE `2019_test_places` (
  `id` int(11) NOT NULL,
  `test` varchar(255) NOT NULL,
  `regno` varchar(222) NOT NULL,
  `marks` varchar(222) NOT NULL,
  `place` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2019_transport`
--

CREATE TABLE `2019_transport` (
  `id` int(11) NOT NULL,
  `reg` varchar(255) NOT NULL,
  `payed` double NOT NULL,
  `tleft` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_class_fees`
--

CREATE TABLE `2020_class_fees` (
  `id` int(11) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `term1` varchar(11) NOT NULL,
  `term2` varchar(11) NOT NULL,
  `term3` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_fees`
--

CREATE TABLE `2020_fees` (
  `id` int(11) NOT NULL,
  `student` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `term1` varchar(11) NOT NULL,
  `term2` varchar(11) NOT NULL,
  `term3` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_marks`
--

CREATE TABLE `2020_marks` (
  `mid` int(11) NOT NULL,
  `names` varchar(255) NOT NULL,
  `reg` double NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `term1_quiz` double NOT NULL,
  `term1_exam` double NOT NULL,
  `term2_quiz` double NOT NULL,
  `term2_exam` double NOT NULL,
  `term3_quiz` double NOT NULL,
  `term3_exam` double NOT NULL,
  `term1_tot` double NOT NULL,
  `term2_tot` double NOT NULL,
  `term3_tot` double NOT NULL,
  `gmax` double NOT NULL,
  `gtot` double NOT NULL,
  `gper` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_places`
--

CREATE TABLE `2020_places` (
  `id` int(11) NOT NULL,
  `studentid` double NOT NULL,
  `term1` int(11) NOT NULL,
  `term2` int(11) NOT NULL,
  `term3` int(11) NOT NULL,
  `per1` double NOT NULL,
  `per2` double NOT NULL,
  `per3` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_quiz`
--

CREATE TABLE `2020_quiz` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `tot` int(11) NOT NULL,
  `date` varchar(2555) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `term` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_quiz_marks`
--

CREATE TABLE `2020_quiz_marks` (
  `qid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `quiz_id` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL,
  `term` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_students`
--

CREATE TABLE `2020_students` (
  `sid` int(11) NOT NULL,
  `sdms` varchar(255) DEFAULT NULL,
  `class` varchar(255) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `regno` double NOT NULL,
  `fn` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `dof` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `PROVINCE` varchar(255) NOT NULL,
  `DISTRICT` varchar(255) NOT NULL,
  `SECTOR` varchar(255) NOT NULL,
  `CELL` varchar(255) NOT NULL,
  `VIRAGE` varchar(255) NOT NULL,
  `father` varchar(255) NOT NULL,
  `mother` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2020_students`
--

INSERT INTO `2020_students` (`sid`, `sdms`, `class`, `opt`, `regno`, `fn`, `ln`, `dof`, `age`, `gender`, `PROVINCE`, `DISTRICT`, `SECTOR`, `CELL`, `VIRAGE`, `father`, `mother`, `tel`, `photo`) VALUES
(27, '', 'p2a', 'PRIMARY', 82026094099, 'ABIJURU', 'CHRISTIAN AGNEAU', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, '', 'p2a', 'PRIMARY', 820195250933, 'AMANI', 'ELFRIDA', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, '', 'p2a', 'PRIMARY', 820835560915, 'ASINEZA', 'ANESSA DELICIA', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, '', 'p2a', 'PRIMARY', 820381561016, 'BERWA', 'JEAN PAUL', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, '', 'p2a', 'PRIMARY', 820551881038, 'BINGUYENEZA', 'IRIZA PEACE', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, '', 'p2a', 'PRIMARY', 82072923106, 'DUSHIMIMANA', 'BELISE', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, '', 'p2a', 'PRIMARY', 820238351038, 'HIRWA', 'SALOMON', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, '', 'p2b', 'PRIMARY', 82016979105, 'IGISUBIZO', 'INGABIRE SOLANGE', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, '', 'p2b', 'PRIMARY', 820287821027, 'INEZA', 'ANICET HAPPY', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, '', 'p1a', 'PRIMARY', 820465131140, 'IRADUKUNDA', 'AKARABO RABIA', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, '', 'p2b', 'PRIMARY', 820535901136, 'IRAKOZE', 'HONORINE', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, '', 'p2b', 'PRIMARY', 820169461110, 'IRATWE', 'SHENGE MALO', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, '', 'p2b', 'PRIMARY', 82089341113, 'ISHIMWE JEAN', 'D AMOUR', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, '', 'p2b', 'PRIMARY', 820391901133, 'IYODUSENGA', 'AUDREY', '', '', '', '', '', '', '', '', '', '', '', ''),
(41, '', 'p2b', 'PRIMARY', 820657801123, 'IZIBYOSE', 'KENT', '', '', '', '', '', '', '', '', '', '', '', ''),
(42, '', 'p2b', 'PRIMARY', 82056425121, 'MANZI', 'ABOUBAKAR', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, '', 'p2b', 'PRIMARY', 820147791213, 'MASEZERANO', 'ELYSEE', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, '', 'p2b', 'PRIMARY', 82086322122, 'MUGABO', 'AMANI', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, '', 'p2b', 'PRIMARY', 820779231240, 'MUGISHA', 'FRANK', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, '', 'p2b', 'PRIMARY', 820315471232, 'MUGISHA', 'YVAN SYDNEY', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, '', 'p2b', 'PRIMARY', 820640171239, 'MUHIRE', 'CLEVER', '', '', '', '', '', '', '', '', '', '', '', ''),
(48, '', 'p2b', 'PRIMARY', 820351231222, 'MUPENZI', 'CHRISTIAN', '', '', '', '', '', '', '', '', '', '', '', ''),
(49, '', 'p2b', 'PRIMARY', 82041671134, 'MUTABAZI', 'JUNIOR', '', '', '', '', '', '', '', '', '', '', '', ''),
(50, '', 'p2b', 'PRIMARY', 820779231319, 'MWIZERIMANA', 'SANDRINE', '', '', '', '', '', '', '', '', '', '', '', ''),
(51, '', 'p2b', 'PRIMARY', 820837461319, 'NDUNGUTSE', 'LABAN', '', '', '', '', '', '', '', '', '', '', '', ''),
(52, '', 'p2b', 'PRIMARY', 820438551326, 'SHISHIKAYE', 'DIELLA MUGUEL', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, '', 'p2b', 'PRIMARY', 820304851313, 'UMUHIIRE', 'SHIMWA BRUCE', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, '', 'p2b', 'PRIMARY', 820482511328, 'UMUHIRE', 'MUREKEZI HORNELLA', '', '', '', '', '', '', '', '', '', '', '', ''),
(55, '', 'p2b', 'PRIMARY', 820303491326, 'UMUHOZA', 'FAUSTE', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, '', 'p2b', 'PRIMARY', 820494851333, 'UMUTONI', 'ASNA FRUIT', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, '', 'p2b', 'PRIMARY', 820769931421, 'UWAMAHORO', 'NADJMA', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, '', 'p2b', 'PRIMARY', 820235551410, 'UWASE', 'PACIFIQUE', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, '', 'p2b', 'PRIMARY', 820799451426, 'UWINEZA', 'KABERUKA YVETTE', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, '', 'p2b', 'PRIMARY', 82057416146, 'UWINEZA', 'LAURENCE', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `2020_test`
--

CREATE TABLE `2020_test` (
  `id` int(11) NOT NULL,
  `quizid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` varchar(11) NOT NULL,
  `class` varchar(11) NOT NULL,
  `term` varchar(11) NOT NULL,
  `testid` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_test_marks`
--

CREATE TABLE `2020_test_marks` (
  `qid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `quiz_id` varchar(11) NOT NULL,
  `marks` varchar(11) NOT NULL,
  `class` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `evt` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `student` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classcourse`
--

CREATE TABLE `classcourse` (
  `ccid` int(11) NOT NULL,
  `coursename` varchar(200) NOT NULL,
  `classname` varchar(200) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `Teacher` varchar(200) NOT NULL,
  `randid` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classcourse`
--

INSERT INTO `classcourse` (`ccid`, `coursename`, `classname`, `opt`, `Teacher`, `randid`) VALUES
(1, 'Metric system&Geometry', 'p6c', 'PRIMARY', 'IBYIKORA ADOLPHE', 6217),
(2, 'Metric system&Geometry', 'p6c', 'PRIMARY', 'UMUHIRE heritier', 5487),
(3, 'Metric system&Geometry', 'p6c', 'PRIMARY', 'IBYIKORA ADOLPHE', 6217),
(4, 'Metric system&Geometry', 'p1a', 'PRIMARY', 'UMUHIRE heritier', 5487);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `classid` int(11) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `teacher` int(11) NOT NULL,
  `lever` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`classid`, `classname`, `opt`, `teacher`, `lever`) VALUES
(1, 'p1a', 'PRIMARY', 5487, 'lower'),
(2, 'p6c', 'PRIMARY', 6217, 'upper'),
(3, 'p2a', 'PRIMARY', 0, 'lower'),
(4, 'p2b', 'PRIMARY', 0, 'lower');

-- --------------------------------------------------------

--
-- Table structure for table `conduct`
--

CREATE TABLE `conduct` (
  `id` int(20) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `conduct` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conduct`
--

INSERT INTO `conduct` (`id`, `regno`, `class`, `conduct`) VALUES
(1, '31975218387', 'P6B', 40),
(2, '319839803840', 'P6B', 40),
(3, '319101213834', 'P6B', 40),
(4, '319320463835', 'P6B', 40),
(5, '319703503831', 'P6B', 40),
(6, '319347463822', 'P6B', 40),
(7, '319449183817', 'P6B', 40),
(8, '319736923815', 'P6B', 40),
(9, '319328453829', 'P6B', 40),
(10, '319834953830', 'P6B', 40),
(11, '319480783834', 'P6B', 40),
(12, '319612713825', 'P6B', 40),
(13, '319596713830', 'P6B', 40),
(14, '31946596386', 'P6B', 40),
(15, '319345743824', 'P6B', 40),
(16, '319163123840', 'P6B', 40),
(17, '31959951384', 'P6B', 40),
(18, '31912233381', 'P6B', 40),
(19, '319407583817', 'P6B', 40),
(20, '319183513815', 'P6B', 40),
(21, '31976494385', 'P6B', 40),
(22, '319624613833', 'P6B', 40),
(23, '319367804120', 'P6A', 40),
(24, '31924395417', 'P6A', 40),
(25, '319747894114', 'P6A', 40),
(26, '319138554136', 'P6A', 40),
(27, '319900944126', 'P6A', 40),
(28, '319874144129', 'P6A', 40),
(29, '319802284128', 'P6A', 40),
(30, '319302944127', 'P6A', 40),
(31, '319224114110', 'P6A', 40),
(32, '319119924138', 'P6A', 40),
(33, '319790324129', 'P6A', 40),
(34, '319379484127', 'P6A', 40),
(35, '319514314122', 'P6A', 40),
(36, '31979435412', 'P6A', 40),
(37, '319711354140', 'P6A', 40),
(38, '31941332412', 'P6A', 40),
(39, '319177214110', 'P6A', 40),
(40, '31972344418', 'P6A', 40),
(41, '31944858418', 'P6A', 40),
(42, '31963560415', 'P6A', 40),
(43, '319579484115', 'P6A', 40),
(44, '319348794132', 'P6A', 40),
(45, '31922445426', 'P6A', 40),
(46, '319532844232', 'P6A', 40),
(47, '319219394213', 'P6A', 40),
(48, '319195324237', 'P6A', 40),
(49, '31972926423', 'P6A', 40),
(50, '319678624240', 'P6A', 40),
(51, '31931920422', 'P6A', 40),
(52, '31958456424', 'P6A', 40),
(53, '319653884236', 'P6A', 40),
(54, '319583164227', 'P6A', 40),
(55, '31979730423', 'P6A', 40),
(56, '319104784236', 'P6A', 40),
(57, '31973292429', 'P6A', 40),
(58, '319185124219', 'P6A', 40),
(59, '319114834227', 'P6A', 40),
(60, '319162584210', 'P6A', 40),
(61, '319154834215', 'P6A', 40),
(62, '319187474236', 'P6A', 40),
(63, '319247204231', 'P6A', 40),
(64, '319159744233', 'P6A', 40),
(65, '31969062422', 'P6A', 40),
(66, '319736634233', 'P6A', 40),
(67, '319624264811', 'P6A', 40),
(68, '319888764839', 'P6A', 40),
(69, '319448664821', 'P6A', 40),
(70, '319411554836', 'P6A', 40),
(71, '319273884821', 'P6A', 40),
(72, '319628674826', 'P6A', 40),
(73, '31946188484', 'P6A', 40),
(74, '319604424826', 'P6A', 40),
(75, '319810584832', 'P6A', 40),
(76, '319598934816', 'P6A', 40),
(77, '319687624824', 'P6A', 40),
(78, '319106614813', 'P6A', 40),
(79, '319877104838', 'P6A', 40),
(80, '319490454819', 'P6A', 40),
(81, '319404654814', 'P6A', 40),
(82, '319822344839', 'P6A', 40),
(83, '319526754834', 'P6A', 40),
(84, '31959341488', 'P6A', 40),
(85, '319293314830', 'P6A', 40),
(86, '319124874827', 'P6A', 40),
(87, '319445634811', 'P6A', 40),
(88, '319111644833', 'P6A', 40),
(89, '319599833131', 'P6B', 40),
(90, '319250673119', 'P6B', 40),
(91, '31919795314', 'P6B', 40),
(92, '31977199318', 'P6B', 40),
(93, '319329913111', 'P6B', 40),
(94, '319136433111', 'P6B', 40),
(95, '319541523132', 'P6B', 40),
(96, '319242503126', 'P6B', 40),
(97, '319227303117', 'P6B', 40),
(98, '31965268319', 'P6B', 40),
(99, '31975534312', 'P6B', 40),
(100, '319562513128', 'P6B', 40),
(101, '319141623126', 'P6B', 40),
(102, '319208483125', 'P6B', 40),
(103, '319360743122', 'P6B', 40),
(104, '319577783136', 'P6B', 40),
(105, '319779373115', 'P6B', 40),
(106, '319614533133', 'P6B', 40),
(107, '31931467312', 'P6B', 40),
(108, '319654403128', 'P6B', 40),
(109, '319833233139', 'P6B', 40),
(110, '319863753118', 'P6B', 40),
(111, '319128833222', 'P5A', 40),
(112, '319271453239', 'P5A', 40),
(113, '31943035322', 'P5A', 40),
(114, '31945061321', 'P5A', 40),
(115, '319659913231', 'P5A', 40),
(116, '31981936326', 'P5A', 40),
(117, '319787383219', 'P5A', 40),
(118, '31959062328', 'P5A', 40),
(119, '319416593217', 'P5A', 40),
(120, '319519973223', 'P5A', 40),
(121, '319753103215', 'P5A', 40),
(122, '319374293231', 'P5A', 40),
(123, '31934666322', 'P5A', 40),
(124, '319369163225', 'P5A', 40),
(125, '319385783222', 'P5A', 40),
(126, '319194693234', 'P5A', 40),
(127, '31930657326', 'P5A', 40),
(128, '319676223229', 'P5A', 40),
(129, '319826573211', 'P5A', 40),
(130, '319352143210', 'P5A', 40),
(131, '319794883210', 'P5A', 40),
(132, '319285293219', 'P5A', 40),
(133, '31989556324', 'P5A', 40),
(134, '31912787327', 'P5A', 40),
(135, '319622293237', 'P5A', 40),
(136, '319245393224', 'P5A', 40),
(137, '31910663325', 'P5A', 40),
(138, '319221373210', 'P5A', 40),
(139, '319798293231', 'P5A', 40),
(140, '319212573234', 'P5A', 40),
(141, '319400453228', 'P5A', 40),
(142, '319591663237', 'P5A', 40),
(143, '319154663218', 'P5A', 40),
(144, '3193109613', 'P6B', 40),
(145, '31948510006', 'P5B', 40),
(146, '319643610038', 'P5B', 40),
(147, '319817930015', 'P5B', 40),
(148, '319427960038', 'P5B', 40),
(149, '31981931006', 'P5B', 40),
(150, '319193300038', 'P5B', 40),
(151, '319216220028', 'P5B', 40),
(152, '319618450012', 'P5B', 40),
(153, '319232640033', 'P5B', 40),
(154, '319213600012', 'P5B', 40),
(155, '319506130013', 'P5B', 40),
(156, '319616740035', 'P5B', 40),
(157, '319563650033', 'P5B', 40),
(158, '319851110031', 'P5B', 40),
(159, '31979392001', 'P5B', 40),
(160, '319102130010', 'P5B', 40),
(161, '319852260015', 'P5B', 40),
(162, '319599840031', 'P5B', 40),
(163, '319825990015', 'P5B', 40),
(164, '319671220037', 'P5B', 40),
(165, '319105680039', 'P5B', 40),
(166, '319346360028', 'P5B', 40),
(167, '319242880012', 'P5B', 40),
(168, '319883820013', 'P5B', 40),
(169, '319696700010', 'P5B', 40),
(170, '319703700011', 'P5B', 40),
(171, '319891650018', 'P5B', 40),
(172, '319390310012', 'P5B', 40),
(173, '319200230011', 'P5B', 40),
(174, '319495870017', 'P5B', 40),
(175, '31943487003', 'P5B', 40),
(176, '319403250014', 'P5B', 40),
(177, '31914341009', 'P5B', 40),
(178, '31937439001', 'P5B', 40),
(179, '319621160028', 'P5B', 40),
(180, '319491743624', 'P3B', 40),
(181, '319804243625', 'P3B', 40),
(182, '31987237362', 'P3B', 40),
(183, '319796463611', 'P3B', 40),
(184, '31915587366', 'P3B', 40),
(185, '319364363617', 'P3B', 40),
(186, '319313793636', 'P3B', 40),
(187, '31922722363', 'P3B', 40),
(188, '319588573627', 'P3B', 40),
(189, '319869183632', 'P3B', 40),
(190, '319796623620', 'P3B', 40),
(191, '319466513627', 'P3B', 40),
(192, '319347310127', 'P3B', 40),
(193, '319702560139', 'P3B', 40),
(194, '319200220124', 'P3B', 40),
(195, '319246480136', 'P3B', 40),
(196, '319576100137', 'P3B', 40),
(197, '319356720123', 'P3B', 40),
(198, '319560720116', 'P3B', 40),
(199, '319700890132', 'P3B', 40),
(200, '319422200118', 'P3B', 40),
(201, '319127960117', 'P3B', 40),
(202, '319879340126', 'P3B', 40),
(203, '31960012017', 'P3B', 40),
(204, '319856893830', 'P3B', 40),
(205, '319871143826', 'P3B', 40),
(206, '319879973824', 'P3B', 40),
(207, '31965625385', 'P3B', 40),
(208, '319222373828', 'P3B', 40),
(209, '319265533817', 'P3B', 40),
(210, '31983620387', 'P3B', 40),
(211, '319900913815', 'P3B', 40),
(212, '31982791384', 'P3B', 40),
(213, '319276113817', 'P3B', 40),
(214, '319529963813', 'P3B', 40),
(215, '319321923814', 'P3B', 40),
(216, '319830903813', 'P3B', 40),
(217, '319509623820', 'P3B', 40),
(218, '319601763833', 'P3B', 40),
(219, '319354953812', 'P3B', 40),
(220, '319680883817', 'P3B', 40),
(221, '319811883814', 'P3B', 40),
(222, '319300793810', 'P3B', 40),
(223, '319379993810', 'P3B', 40),
(224, '31971857388', 'P3B', 40),
(225, '31915882385', 'P3B', 40),
(226, '31943874381', 'P3B', 40),
(227, '319697303825', 'P3B', 40),
(228, '319294873814', 'P3B', 40),
(229, '319140253812', 'P3B', 40),
(230, '31937690387', 'P3B', 40),
(231, '31970880381', 'P3B', 40),
(232, '319168133832', 'P3B', 40),
(233, '319353443832', 'P3B', 40),
(234, '319548243814', 'P3B', 40),
(235, '31970830386', 'P3B', 40),
(236, '319803683835', 'P3B', 40),
(237, '31981346384', 'P3B', 40),
(238, '8204214204', 'p6c', 40),
(239, '820686133712', 'p6c', 40),
(240, '820255433713', 'p6c', 40),
(241, '820155743736', 'p6c', 40),
(242, '82084676371', 'p6c', 40),
(243, '820777793828', 'p6c', 40),
(244, '820644643839', 'p6c', 40),
(245, '82082874385', 'p6c', 40),
(246, '820597223822', 'p6c', 40),
(247, '82028426382', 'p6c', 40),
(248, '820468733923', 'p6c', 40),
(249, '82084466398', 'p6c', 40),
(250, '820886513922', 'p6c', 40),
(251, '82054637391', 'p6c', 40),
(252, '820588743923', 'p6c', 40),
(253, '820756823938', 'p6c', 40),
(254, '820625963930', 'p6c', 40),
(255, '820692304035', 'p6c', 40),
(256, '820467444017', 'p6c', 40),
(257, '820630944039', 'p6c', 40),
(258, '820172104020', 'p6c', 40),
(259, '820203574035', 'p6c', 40),
(260, '820665314028', 'p6c', 40),
(261, '820724104030', 'p1a', 40),
(262, '820365704012', 'p1a', 40),
(263, '820152744112', 'p1a', 40),
(264, '820286354116', 'p1a', 40),
(265, '82026094099', 'p1a', 40),
(266, '820195250933', 'p1a', 40),
(267, '820835560915', 'p1a', 40),
(268, '820381561016', 'p1a', 40),
(269, '820551881038', 'p1a', 40),
(270, '82072923106', 'p1a', 40),
(271, '820238351038', 'p1a', 40),
(272, '82016979105', 'p1a', 40),
(273, '820287821027', 'p1a', 40),
(274, '820465131140', 'p1a', 40),
(275, '820535901136', 'p1a', 40),
(276, '820169461110', 'p1a', 40),
(277, '82089341113', 'p1a', 40),
(278, '820391901133', 'p1a', 40),
(279, '820657801123', 'p1a', 40),
(280, '82056425121', 'p1a', 40),
(281, '820147791213', 'p1a', 40),
(282, '82086322122', 'p1a', 40),
(283, '820779231240', 'p1a', 40),
(284, '820315471232', 'p1a', 40),
(285, '820640171239', 'p1a', 40),
(286, '820351231222', 'p1a', 40),
(287, '82041671134', 'p1a', 40),
(288, '820779231319', 'p1a', 40),
(289, '820837461319', 'p1a', 40),
(290, '820438551326', 'p1a', 40),
(291, '820304851313', 'p1a', 40),
(292, '820482511328', 'p1a', 40),
(293, '820303491326', 'p1a', 40),
(294, '820494851333', 'p1a', 40),
(295, '820769931421', 'p1a', 40),
(296, '820235551410', 'p1a', 40),
(297, '820799451426', 'p1a', 40),
(298, '82057416146', 'p1a', 40);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `cid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `option` varchar(255) NOT NULL,
  `tot` int(200) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'core',
  `cat` text NOT NULL,
  `sub` text NOT NULL,
  `upper` varchar(255) NOT NULL,
  `lower` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`cid`, `name`, `option`, `tot`, `status`, `cat`, `sub`, `upper`, `lower`) VALUES
(1, 'Metric system&Geometry', 'PRIMARY', 0, 'core', 'SCIENCES', 'MATHEMATICS', '15', '10'),
(2, 'Arthemetic,Algebra&Statistics', 'PRIMARY', 0, 'core', 'SCIENCES', 'MATHEMATICS', '15', '20'),
(3, 'SOCIAL &RELIGIOUS STUDIES', 'PRIMARY', 0, 'core', 'SCIENCES', 'SOCIAL &RELIGIOUS STUDIES', '20', '15'),
(4, 'Reading', 'PRIMARY', 0, 'core', 'Languages', 'ENGLISH', '5', '10'),
(5, 'Writing', 'PRIMARY', 0, 'core', 'Languages', 'ENGLISH', '20', '20'),
(6, 'GUSOMA', 'PRIMARY', 0, 'core', 'Languages', 'IKINYARWANDA', '5', '10'),
(7, 'KWANDIKA', 'PRIMARY', 0, 'core', 'Languages', 'IKINYARWANDA', '20', '20'),
(8, 'SET', 'PRIMARY', 0, 'core', 'SCIENCES', 'SET', '20', '10'),
(9, 'Expression Orale', 'PRIMARY', 0, 'core', 'Languages', 'Francais', '5', '5'),
(10, 'Expression Ecrite', 'PRIMARY', 0, 'core', 'Languages', 'Francais', '10', '15'),
(11, 'COMPUTER STUDIES', 'PRIMARY', 0, 'core', 'SCIENCES', 'COMPUTER STUDIES', '5', '5'),
(12, 'SPORT', 'PRIMARY', 0, 'core', 'EXTRA  CURRICULUM ACTIVITIES', 'SPORT', '5', '5'),
(13, 'CREATIVE ARTS', 'PRIMARY', 0, 'core', 'EXTRA  CURRICULUM ACTIVITIES', 'CREATIVE ARTS', '5', '5');

-- --------------------------------------------------------

--
-- Table structure for table `coursecat`
--

CREATE TABLE `coursecat` (
  `id` int(11) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL,
  `cname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursecat`
--

INSERT INTO `coursecat` (`id`, `cat`, `sub`, `cname`) VALUES
(1, 'Languages', 'IKINYARWANDA', 'GUSOMA'),
(2, 'Languages', 'IKINYARWANDA', 'KWANDIKA'),
(3, 'Languages', 'ENGLISH', 'Reading'),
(4, 'Languages', 'ENGLISH', 'Writing'),
(5, 'Languages', 'Francais', 'Expression Orale'),
(6, 'Languages', 'FRANCAIS', 'Expression Ecrite'),
(7, 'SCIENCES', 'MATHEMATICS', 'Metric system&Geometry'),
(8, 'SCIENCES', 'MATHEMATICS', 'Arthemetic,Algebra&Statistics'),
(9, 'SCIENCES', 'SET', 'SET'),
(10, 'SCIENCES', 'SOCIAL &RELIGIOUS STUDIES', 'SOCIAL &RELIGIOUS STUDIES'),
(11, 'SCIENCES', 'COMPUTER STUDIES', 'COMPUTER STDIES'),
(12, 'EXTRA  CURRICULUM ACTIVITIES', 'SPORT', 'SPORT'),
(13, 'EXTRA  CURRICULUM ACTIVITIES', 'CREATIVE ARTS', 'CREATIVE ARTS');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `province` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `province`, `name`) VALUES
(1, 1, 'Karongi'),
(2, 1, 'Ngororero'),
(3, 1, 'Nyabihu'),
(4, 1, 'Nyamasheke'),
(5, 1, 'Rubavu'),
(6, 1, 'Rusizi'),
(7, 1, 'Rutsiro'),
(8, 3, 'Bugesera'),
(9, 3, 'Gatsibo'),
(10, 3, 'Kayonza'),
(11, 3, 'Kirehe'),
(12, 3, 'Ngoma'),
(13, 3, 'Nyagatare'),
(14, 3, 'Rwamagana'),
(15, 4, 'Gisagara'),
(16, 4, 'Huye'),
(17, 4, 'Kamonyi'),
(18, 4, 'Muhanga'),
(19, 4, 'Nyamagabe'),
(20, 4, 'Nyanza'),
(21, 4, 'Nyaruguru'),
(22, 4, 'Ruhango'),
(23, 5, 'Burera'),
(24, 5, 'Gakenke'),
(25, 5, 'Gicumbi'),
(26, 5, 'Musanze'),
(27, 5, 'Rulindo'),
(28, 2, 'Gasabo'),
(29, 2, 'Kicukiro'),
(30, 2, 'Nyarugenge');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msgid` int(11) NOT NULL,
  `sentsms` varchar(255) NOT NULL,
  `leftsms` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msgid`, `sentsms`, `leftsms`) VALUES
(1, '1', '49');

-- --------------------------------------------------------

--
-- Table structure for table `mistakes`
--

CREATE TABLE `mistakes` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `mistake` text NOT NULL,
  `details` text NOT NULL,
  `punishment` text NOT NULL,
  `reg` varchar(255) NOT NULL,
  `student` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `pid` int(11) NOT NULL,
  `opname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`pid`, `opname`) VALUES
(1, 'ECD'),
(2, 'PRIMARY');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `motif` text NOT NULL,
  `returndate` varchar(255) NOT NULL,
  `reg` varchar(200) NOT NULL,
  `student` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
(1, 'west'),
(2, 'kigali city'),
(3, 'east'),
(4, 'south'),
(5, 'north');

-- --------------------------------------------------------

--
-- Table structure for table `schoolinfo`
--

CREATE TABLE `schoolinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `defaultyear` int(11) NOT NULL,
  `sendername` varchar(200) NOT NULL,
  `schoolcode` int(11) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `report` varchar(255) NOT NULL,
  `h1` text NOT NULL,
  `h2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolinfo`
--

INSERT INTO `schoolinfo` (`id`, `name`, `logo`, `manager`, `defaultyear`, `sendername`, `schoolcode`, `tel`, `email`, `report`, `h1`, `h2`) VALUES
(1, 'CHILD CARE ACADEMY(CCA)', 'izubaedu_test/cca coat of arms 2.png', '', 2019, 'cca', 8, '07877777', 'test@test.com', 'booklet.php', 'FREE METHODIST CHURCH IN RWANDA', 'KINYAGA CONFERENCE');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `district`, `name`) VALUES
(1, 8, 'Gashora'),
(2, 8, 'Juru'),
(3, 8, 'Kamabuye'),
(4, 8, 'Ntarama'),
(5, 8, 'mareba'),
(6, 8, 'Mayange'),
(7, 8, 'Musenyi'),
(8, 8, 'Mwogo'),
(9, 8, 'Ngeruka'),
(10, 8, 'Nyamata'),
(11, 8, 'Nyarugenge'),
(12, 8, 'Rilima'),
(13, 8, 'Ruhuha'),
(14, 8, 'Rweru'),
(15, 8, 'Shyara'),
(16, 9, 'Gasange'),
(17, 9, 'Gatsibo'),
(18, 9, 'Gitoki'),
(19, 9, 'Kabarore'),
(20, 9, 'Kageyo'),
(21, 9, 'Kiramuruzi'),
(22, 9, 'Kiziguro'),
(23, 9, 'Muhura'),
(24, 9, 'Murambi'),
(25, 9, 'Ngarama'),
(26, 9, 'Nyagihanga'),
(27, 9, 'Remera'),
(29, 9, 'Rwimbogo'),
(28, 9, 'Rugarama'),
(30, 10, 'Gahini'),
(31, 10, 'Kabare'),
(32, 10, 'Kabarondo'),
(33, 10, 'Mukarage'),
(34, 10, 'Murama'),
(35, 10, 'Murundi'),
(36, 10, 'Mwiri'),
(37, 10, 'Ndengo'),
(38, 10, 'Nyamirama'),
(39, 10, 'Rukara'),
(40, 10, 'Ruramira'),
(41, 10, 'Rwinkwavu'),
(42, 11, 'Gahara'),
(43, 11, 'Gatore'),
(44, 11, 'Kigina'),
(45, 11, 'Kirehe'),
(46, 11, 'Muhama'),
(47, 11, 'Mpanga'),
(48, 11, 'Musaza'),
(49, 11, 'Mushikiri'),
(50, 11, 'Nasho'),
(51, 11, 'Nyamugari'),
(52, 11, 'Nyarubuye'),
(53, 11, 'Kigarama'),
(54, 12, 'Gashanda'),
(55, 12, 'Jarama'),
(56, 12, 'Karembo'),
(57, 12, 'Kazo'),
(58, 12, 'Kibungo'),
(59, 12, 'Mugesera'),
(60, 12, 'Murama'),
(61, 12, 'Mutenderi'),
(62, 12, 'Remera'),
(63, 12, 'Rukira'),
(64, 12, 'Rukumberi'),
(65, 12, 'Rurenge'),
(66, 12, 'Sake'),
(67, 12, 'Zaza'),
(68, 13, 'Gatunda'),
(69, 13, 'Kiyombe'),
(70, 13, 'Karama'),
(71, 13, 'Karangazi'),
(72, 13, 'Katabagemu'),
(73, 13, 'Matimba'),
(74, 13, 'Mimuli'),
(75, 13, 'Mukama'),
(76, 13, 'Musheri'),
(77, 13, 'Nyagatare'),
(78, 13, 'Rukomo'),
(79, 13, 'Rwempasha'),
(80, 13, 'Rwimiyaga'),
(81, 13, 'Tabagwe'),
(82, 14, 'Fumbwe'),
(83, 14, 'Gahengeri'),
(84, 14, 'Gishari'),
(85, 14, 'Karenge'),
(86, 14, 'Kigabiro'),
(87, 14, 'Muhazi'),
(88, 14, 'Munyanga'),
(89, 14, 'Munyiginya'),
(90, 14, 'Musha'),
(91, 14, 'Muyumbu'),
(92, 14, 'Mwulire'),
(93, 14, 'Nyakariro'),
(94, 14, 'Nzige'),
(95, 14, 'Rubona'),
(96, 28, 'Bumbogo'),
(97, 28, 'Gatsata'),
(98, 28, 'Jali'),
(99, 28, 'Gikomero'),
(100, 28, 'Gisozi'),
(101, 28, 'Jabana'),
(102, 28, 'Kinyinya'),
(103, 28, 'Ndera'),
(104, 28, 'Nduba'),
(105, 28, 'Rusororo'),
(106, 28, 'Rutunga'),
(107, 28, 'Kacyiru'),
(108, 28, 'Kimihurura'),
(109, 28, 'Kimironko'),
(110, 28, 'Remera'),
(111, 29, 'Gahanga'),
(112, 29, 'Gatenga'),
(113, 29, 'Gikondo'),
(114, 29, 'Kagarama'),
(115, 29, 'Kanombe'),
(116, 29, 'Kicukiro'),
(117, 29, 'Kigarama'),
(118, 29, 'Masaka'),
(119, 29, 'Niboye'),
(120, 29, 'Nyarugunga'),
(121, 30, 'Gitega'),
(122, 30, 'Kanyinya'),
(123, 30, 'Kigali'),
(124, 30, 'Kimisagara'),
(125, 30, 'Mageragere'),
(126, 30, 'Muhima'),
(127, 30, 'Nyakabanda'),
(128, 30, 'Nyamirambo'),
(129, 30, 'Rwezamenyo'),
(130, 30, 'Nyarugenge'),
(131, 23, 'Bungwe'),
(132, 23, 'Butaro'),
(133, 23, 'Cyanika'),
(134, 23, 'Cyeru'),
(135, 23, 'Gahunga'),
(136, 23, 'Gatebe'),
(137, 23, 'Gitovu'),
(138, 23, 'Kagogo'),
(139, 23, 'Kinoni'),
(140, 23, 'Kinyababa'),
(141, 23, 'Kivuye'),
(142, 23, 'Nemba'),
(143, 23, 'Rugarama'),
(144, 23, 'Rugendabari'),
(145, 23, 'Ruhunde'),
(146, 23, 'Rusarabuge'),
(147, 23, 'Rwerere'),
(148, 24, 'Busengo'),
(149, 24, 'Coko'),
(150, 24, 'Cyabingo'),
(151, 24, 'Gakenke'),
(152, 24, 'Gashenyi'),
(153, 24, 'Mugunga'),
(154, 24, 'Janja'),
(155, 24, 'Kamubuga'),
(156, 24, 'Karambo'),
(157, 24, 'Kivuruga'),
(158, 24, 'Mataba'),
(159, 24, 'Minazi'),
(160, 24, 'Muhondo'),
(161, 24, 'Muyongwe'),
(162, 24, 'Muzo'),
(163, 24, 'Nemba'),
(164, 24, 'Ruli'),
(165, 24, 'Rusasa'),
(166, 24, 'Rushashi'),
(167, 25, 'Bukure'),
(168, 25, 'Bwisige'),
(169, 25, 'Byumba'),
(170, 25, 'Cyumba'),
(171, 25, 'Giti'),
(172, 25, 'Kaniga'),
(173, 25, 'Manyagiro'),
(174, 25, 'Miyove'),
(175, 25, 'Kageyo'),
(176, 25, 'Mukarange'),
(177, 25, 'Muko'),
(178, 25, 'Mutete'),
(179, 25, 'Nyamiyaga'),
(180, 25, 'Nyankeke'),
(181, 25, 'Rubaya'),
(182, 25, 'Rukomo'),
(183, 25, 'Rushaki'),
(184, 25, 'Rutare'),
(185, 25, 'Ruvune'),
(186, 25, 'Rwamiko'),
(187, 25, 'Shangasha'),
(188, 26, 'Busogo'),
(189, 26, 'Cyuve'),
(190, 26, 'Gacaca'),
(191, 26, 'Gashaki'),
(192, 26, 'Gataraga'),
(193, 26, 'Kimonyi'),
(194, 26, 'Kinigi'),
(195, 26, 'Muhoza'),
(196, 26, 'Muko'),
(197, 26, 'Musanze'),
(198, 26, 'Nkotsi'),
(199, 26, 'Nyange'),
(200, 26, 'Remera'),
(201, 26, 'Rwaza'),
(202, 26, 'Shingiro'),
(203, 27, 'Base'),
(204, 27, 'Burega'),
(205, 27, 'Bushoki'),
(206, 27, 'Buyoga'),
(207, 27, 'Cyinzuzi'),
(208, 27, 'Cyungo'),
(209, 27, 'Kinihira'),
(210, 27, 'Kisaro'),
(211, 27, 'Masoro'),
(212, 27, 'Mbogo'),
(213, 27, 'Murambi'),
(214, 27, 'Ngoma'),
(215, 27, 'Ntarabana'),
(216, 27, 'Rukozo'),
(217, 27, 'Rusiga'),
(218, 27, 'Shyorongi'),
(219, 27, 'Tumba'),
(220, 15, 'Gakonko'),
(221, 15, 'Gishubi'),
(222, 15, 'Kansi'),
(223, 15, 'Kibilizi'),
(224, 15, 'Kigembe'),
(225, 15, 'Mamba'),
(226, 15, 'Muganza'),
(227, 15, 'Mugombwa'),
(228, 15, 'Mukindo'),
(229, 15, 'Musha'),
(230, 15, 'Ndora'),
(231, 15, 'Nyanza'),
(232, 15, 'Save'),
(233, 16, 'Gashamu'),
(234, 16, 'Karama'),
(235, 16, 'Kigoma'),
(236, 16, 'Kinazi'),
(237, 16, 'Maraba'),
(238, 16, 'Mbazi'),
(239, 16, 'Mukura'),
(240, 16, 'Ngoma'),
(241, 16, 'Ruhashya'),
(242, 16, 'Rusatira'),
(243, 16, 'Rwaniro'),
(244, 16, 'Simbi'),
(245, 16, 'Tumba'),
(246, 16, 'Huye'),
(247, 17, 'Gacurabwenge'),
(248, 17, 'Karama'),
(249, 17, 'Kayenzi'),
(250, 17, 'Kayumbu'),
(251, 17, 'Mugina'),
(252, 17, 'Musambira'),
(253, 17, 'Ngamba'),
(254, 17, 'Nyamiyaga'),
(255, 17, 'Nyarubaka'),
(256, 17, 'Rugalika'),
(257, 17, 'Rukoma'),
(258, 17, 'Runda'),
(259, 18, 'Cyeza'),
(260, 18, 'Kabacuzi'),
(261, 18, 'Kibangu'),
(262, 18, 'Kiyumba'),
(263, 18, 'Muhanga'),
(264, 18, 'Mushishiro'),
(265, 18, 'Nyabinoni'),
(266, 18, 'Nyamabuye'),
(267, 18, 'Nyarusange'),
(268, 18, 'Rongi'),
(269, 18, 'Rugendabari'),
(270, 18, 'Shyogwe'),
(272, 19, 'Buruhukiro'),
(273, 19, 'Cyaniko'),
(274, 19, 'Gatare'),
(275, 19, 'Kaduha'),
(276, 19, 'Kamegeli'),
(277, 19, 'Kibirizi'),
(278, 19, 'Kibumbwe'),
(279, 19, 'Kitabi'),
(280, 19, 'Mbazi'),
(281, 19, 'Mugano'),
(282, 19, 'Musange'),
(283, 19, 'Musebeya'),
(284, 19, 'Mushubi'),
(285, 19, 'Nkomane'),
(286, 19, 'Gasaka'),
(287, 19, 'Tare'),
(288, 19, 'Uwinkingi'),
(289, 20, 'Busasamana'),
(290, 20, 'Busoro'),
(291, 20, 'Cyabakamyi'),
(292, 20, 'Kibirizi'),
(293, 20, 'Kigoma'),
(294, 20, 'Mukingo'),
(295, 20, 'Rwabicuma'),
(296, 20, 'Muyira'),
(297, 20, 'Ntyazo'),
(298, 20, 'Nyagisozi'),
(299, 21, 'Cyahinda'),
(300, 21, 'Busanze'),
(301, 21, 'Kibeho'),
(302, 21, 'Mata'),
(303, 21, 'Munini'),
(304, 21, 'Kivu'),
(305, 21, 'Ngera'),
(306, 21, 'Ngoma'),
(307, 21, 'Nyabimata'),
(308, 21, 'Nyagisozi'),
(309, 21, 'Ruheru'),
(310, 21, 'Muganza'),
(311, 21, 'Ruramba'),
(312, 21, 'Rusenge'),
(313, 22, 'Bweramana'),
(314, 22, 'Byimana'),
(315, 22, 'Kabagari'),
(316, 22, 'Kinazi'),
(317, 22, 'Kinihira'),
(318, 22, 'Mbuye'),
(319, 22, 'Mwendo'),
(320, 22, 'Ntongwe'),
(321, 22, 'Ruhango'),
(322, 1, 'Bwishyura'),
(323, 1, 'Gishari'),
(324, 1, 'Gishyita'),
(325, 1, 'Gisovu'),
(326, 1, 'Gitesi'),
(327, 1, 'Murundi'),
(328, 1, 'Murambi'),
(329, 1, 'Mubuga'),
(330, 1, 'Mutuntu'),
(331, 1, 'Rugabano'),
(332, 1, 'Ruganda'),
(333, 1, 'Rwankuba'),
(334, 1, 'Twumba'),
(335, 2, 'Bwira'),
(336, 2, 'Gatumba'),
(337, 2, 'Hindiro'),
(338, 2, 'Kabaya'),
(339, 2, 'Kageyo'),
(340, 2, 'Kavumu'),
(341, 2, 'Matyazo'),
(342, 2, 'Muhanda'),
(343, 2, 'Muhororo'),
(344, 2, 'Ndaro'),
(345, 2, 'Ngororero'),
(346, 2, 'Nyange'),
(347, 2, 'Sovu'),
(348, 3, 'Bigogwe'),
(349, 3, 'Jenda'),
(350, 3, 'Jomba'),
(351, 3, 'Kabatwa'),
(352, 3, 'Karago'),
(353, 3, 'Kintobo'),
(354, 3, 'Mukamira'),
(355, 3, 'Muringa'),
(356, 3, 'Rambura'),
(357, 3, 'Rugera'),
(358, 3, 'Rurembo'),
(359, 3, 'Shyira'),
(360, 4, 'Bushekeri'),
(361, 4, 'Bushenge'),
(362, 4, 'Cyato'),
(363, 4, 'Gihombo'),
(364, 4, 'Kagano'),
(365, 4, 'Kanjongo'),
(366, 4, 'Karambi'),
(367, 4, 'Karengera'),
(368, 4, 'Kirimbi'),
(369, 4, 'Macuba'),
(370, 4, 'Mahembe'),
(371, 4, 'Nyabitekeri'),
(372, 4, 'Rangiro'),
(373, 4, 'Ruharambuga'),
(374, 4, 'Shangi'),
(375, 5, 'Bugeshi'),
(376, 5, 'Busasamana'),
(377, 5, 'Cyanzarwe'),
(378, 5, 'Gisenyi'),
(379, 5, 'Kanama'),
(380, 5, 'Kanzenze'),
(381, 5, 'Mudende'),
(382, 5, 'Nyakiliba'),
(383, 5, 'Nyabyumba'),
(384, 5, 'Nyundo'),
(385, 5, 'Rubavu'),
(386, 5, 'Rugerero'),
(387, 6, 'Bugarama'),
(388, 6, 'Butare'),
(389, 6, 'Bweyeye'),
(390, 6, 'Gikundamvura'),
(391, 6, 'Gashonga'),
(392, 6, 'Giheke'),
(393, 6, 'Gihundwe'),
(394, 6, 'Gitambi'),
(395, 6, 'Kamembe'),
(396, 6, 'Muganza'),
(397, 6, 'Mururu'),
(398, 6, 'Nkanka'),
(399, 6, 'Nkombo'),
(400, 6, 'Nkungu'),
(401, 6, 'Nyakabuye'),
(402, 6, 'Nyakarenzo'),
(403, 6, 'Nzahaha'),
(404, 6, 'Rwimbogo'),
(405, 7, 'Boneza'),
(406, 7, 'Gihango'),
(407, 7, 'Kigeyo'),
(408, 7, 'Kivumu'),
(409, 7, 'Manihira'),
(410, 7, 'Mukura'),
(411, 7, 'Murunda'),
(412, 7, 'Musasa'),
(413, 7, 'Mushonyi'),
(414, 7, 'Mushubati'),
(415, 7, 'Nyabirasa'),
(416, 7, 'Ruhango'),
(417, 7, 'Rusebeya');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `sdms` text NOT NULL,
  `ln` varchar(255) NOT NULL,
  `Fn` text NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tablename`
--

CREATE TABLE `tablename` (
  `id` int(11) NOT NULL,
  `student` varchar(255) NOT NULL,
  `groups` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `Tel` varchar(255) NOT NULL,
  `idno` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `rand_id` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `fname`, `lname`, `sex`, `Tel`, `idno`, `degree`, `rand_id`) VALUES
(1, 'UMUHIRE', 'heritier', 'Male', '0786910057', '', 'Teacher', 5487),
(2, 'IBYIKORA', 'ADOLPHE', 'Male', '0788233298', '', 'Teacher', 6217),
(3, 'MUHAMED', 'ADAM', 'Male', '0780023608', '11111111', 'Teacher', 4997),
(6, 'NDAMYUMUGABE', 'JMV', 'Male', '0788632541', '', 'Teacher', 3579);

-- --------------------------------------------------------

--
-- Table structure for table `test_table`
--

CREATE TABLE `test_table` (
  `id` int(11) NOT NULL,
  `testid` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `tot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` int(11) NOT NULL,
  `teacherid` varchar(255) NOT NULL,
  `classid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `rand_id` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `role`, `rand_id`) VALUES
(1, 'UMUHIRE', 'heritier', '0786910057', '0786910057', 'teacher', 5487),
(2, 'IBYIKORA', 'ADOLPHE', '0788233298', '0788233298', 'teacher', 6217),
(3, 'MUHAMED', 'ADAM', '0780023608', '0780023608', 'teacher', 4997),
(4, 'MUHAMED', 'ADAM', '0780023608', '0780023608', 'teacher', 2683),
(5, 'adolhe', 'kingkiller', '0788233298', '0788233298', 'teacher', 3235),
(6, 'NDAMYUMUGABE', 'JMV', '0788632541', '0788632541', 'teacher', 3579),
(7, 'uwao', 'irenee', '0786910057', '0786910057', 'teacher', 1855),
(8, 'uwao', 'irenee', '0786910057', '0786910057', 'teacher', 1119),
(9, 'uwao', 'irenee', '0786910057', '0786910057', 'teacher', 6787);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `name`) VALUES
(1, 2019),
(2, 2020),
(4, 2018),
(5, 2018);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `2018_accomo`
--
ALTER TABLE `2018_accomo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2018_class_fees`
--
ALTER TABLE `2018_class_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2018_fees`
--
ALTER TABLE `2018_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2018_marks`
--
ALTER TABLE `2018_marks`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `2018_places`
--
ALTER TABLE `2018_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2018_quiz`
--
ALTER TABLE `2018_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2018_quiz_marks`
--
ALTER TABLE `2018_quiz_marks`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `2018_students`
--
ALTER TABLE `2018_students`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Indexes for table `2018_test`
--
ALTER TABLE `2018_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2018_test_marks`
--
ALTER TABLE `2018_test_marks`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `2018_test_places`
--
ALTER TABLE `2018_test_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_accomo`
--
ALTER TABLE `2019_accomo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_class_fees`
--
ALTER TABLE `2019_class_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_fees`
--
ALTER TABLE `2019_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_marks`
--
ALTER TABLE `2019_marks`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `2019_places`
--
ALTER TABLE `2019_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_quiz`
--
ALTER TABLE `2019_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_quiz_marks`
--
ALTER TABLE `2019_quiz_marks`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `2019_restaurent`
--
ALTER TABLE `2019_restaurent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_students`
--
ALTER TABLE `2019_students`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Indexes for table `2019_test`
--
ALTER TABLE `2019_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_test_marks`
--
ALTER TABLE `2019_test_marks`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `2019_test_places`
--
ALTER TABLE `2019_test_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2019_transport`
--
ALTER TABLE `2019_transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_class_fees`
--
ALTER TABLE `2020_class_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_fees`
--
ALTER TABLE `2020_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_marks`
--
ALTER TABLE `2020_marks`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `2020_places`
--
ALTER TABLE `2020_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_quiz`
--
ALTER TABLE `2020_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_quiz_marks`
--
ALTER TABLE `2020_quiz_marks`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `2020_students`
--
ALTER TABLE `2020_students`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Indexes for table `2020_test`
--
ALTER TABLE `2020_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_test_marks`
--
ALTER TABLE `2020_test_marks`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classcourse`
--
ALTER TABLE `classcourse`
  ADD PRIMARY KEY (`ccid`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`classid`),
  ADD UNIQUE KEY `classname` (`classname`);

--
-- Indexes for table `conduct`
--
ALTER TABLE `conduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `coursecat`
--
ALTER TABLE `coursecat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mistakes`
--
ALTER TABLE `mistakes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolinfo`
--
ALTER TABLE `schoolinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tablename`
--
ALTER TABLE `tablename`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_table`
--
ALTER TABLE `test_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `2018_accomo`
--
ALTER TABLE `2018_accomo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2018_marks`
--
ALTER TABLE `2018_marks`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2018_quiz`
--
ALTER TABLE `2018_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2018_quiz_marks`
--
ALTER TABLE `2018_quiz_marks`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2018_students`
--
ALTER TABLE `2018_students`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2018_test`
--
ALTER TABLE `2018_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2018_test_places`
--
ALTER TABLE `2018_test_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2019_accomo`
--
ALTER TABLE `2019_accomo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2019_class_fees`
--
ALTER TABLE `2019_class_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2019_fees`
--
ALTER TABLE `2019_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `2019_marks`
--
ALTER TABLE `2019_marks`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `2019_places`
--
ALTER TABLE `2019_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `2019_quiz`
--
ALTER TABLE `2019_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `2019_quiz_marks`
--
ALTER TABLE `2019_quiz_marks`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `2019_restaurent`
--
ALTER TABLE `2019_restaurent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2019_students`
--
ALTER TABLE `2019_students`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `2019_test`
--
ALTER TABLE `2019_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2019_test_marks`
--
ALTER TABLE `2019_test_marks`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2019_test_places`
--
ALTER TABLE `2019_test_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2019_transport`
--
ALTER TABLE `2019_transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_marks`
--
ALTER TABLE `2020_marks`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_quiz`
--
ALTER TABLE `2020_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_quiz_marks`
--
ALTER TABLE `2020_quiz_marks`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_students`
--
ALTER TABLE `2020_students`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classcourse`
--
ALTER TABLE `classcourse`
  MODIFY `ccid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `conduct`
--
ALTER TABLE `conduct`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `coursecat`
--
ALTER TABLE `coursecat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `mistakes`
--
ALTER TABLE `mistakes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schoolinfo`
--
ALTER TABLE `schoolinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tablename`
--
ALTER TABLE `tablename`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `test_table`
--
ALTER TABLE `test_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `kinyaga`
--
CREATE DATABASE IF NOT EXISTS `kinyaga` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kinyaga`;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `phonenumber` varchar(12) NOT NULL,
  `password` varchar(50) NOT NULL,
  `confirm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `firstname`, `lastname`, `Email`, `phonenumber`, `password`, `confirm`) VALUES
(1, 'fhjfdhj', 'ghdfsdfsyu', 'hdf@gmail.com', '80956879', 'dfss', ''),
(4, 'iradukunda', 'irenee', 'iradukundairenee9@gmail.com', '07833072786', '1234567899o999098787987987878896987', ''),
(5, 'eiuoet', 'ererer', 'yueryueryuer@gmail.com', '1234567899o9', 'ertety', ''),
(6, 'ertfhyuj', 'fghjkl', 'euladekcapt@yggfg', '45678', 'erasmus2019', ''),
(7, 'ertfhyuj', 'fghjkl', 'euladekcapt@yggfg', '45678', 'erasmus2019', ''),
(8, 'ertfhyuj', 'fghjkl', 'euladekcapt@fgds', '45678', 'erasmus2019', ''),
(9, 'ertfhyuj', 'fghjkl', 'euladekcapt@fgds', '45678', 'erasmus2019', ''),
(10, 'iradukunda ', 'irenee', 'iradukundairenee9@gmail.com', '078888888888', '8888888888', ''),
(11, 'ertfhyuj', 'fghjkl', 'euladekcapt@hgf', '5454', 'erasmus2019', ''),
(12, 'sdfgh', 'werty', 'werr@gmail.com', '09876', '123', '123'),
(13, 'sdfgh', 'werty', 'werr@gmail.com', '09876', '123', '123'),
(14, 'sdfgh', 'werty', 'werr@gmail.com', '09876', '123', '123'),
(15, 'sdfgh', 'werty', 'werr@gmail.com', '09876', '123', '123'),
(16, 'sdfgh', 'werty', 'werr@gmail.com', '09876', '123', '123'),
(17, 'dsfgds', 'dsfdsfdf', 'iradukundairenee12@gmail.com', '87956854', '123', '123'),
(18, 'ytkju', 'bv', 'dsfghj@gmail.com', '09876', '123', '123'),
(20, 'irenee', 'irenee', 'irenee@gmail.com', '123', '123', '123'),
(21, 'irenee', 'irenee', 'irenee@gmail.com', '45678', '123', '123'),
(22, 'irenee', 'irenee', 'euladekcapt@kj', '45678', '12345', '12345'),
(23, 'etw', 'gfdc', 'euladekcapt@ghhfv', '078888888888', '000000', '0'),
(24, 'irenee', 'irenee', 'test@test', 'dfghjk,m.n,.', '123', '123'),
(25, 'umuhire', 'benithe', 'beniheir@gmail.com', '0788692924', '123', '123'),
(26, 'serge', 'regis', 'serge@gmail.com', '123123', '1234', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `name`) VALUES
(20, 'Python Tutorials for Beginners - Learn Python Online.mp4'),
(21, 'AGASOBANUYE 2020 (JISM EP 2) KA ROCKY KIRABIRANYA.mp4'),
(24, 'Login Form in PHP With Session And MySQL.mp4'),
(25, 'AGASOBANUYE 2020 (JISM EP 2 B) BY ROCKY KIRABIRANYA.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_09_143015_create_services_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test@test4444444', 'test@test4444444', NULL, '554545dgfdcdfdfdfd', NULL, NULL, NULL),
(2, 'test@test4444444', 'test@test4444444', NULL, '554545dgfdcdfdfdfd', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `country`, `currency`, `code`, `symbol`) VALUES
(1, 'Albania', 'Leke', 'ALL', 'Lek'),
(2, 'America', 'Dollars', 'USD', '$'),
(3, 'Afghanistan', 'Afghanis', 'AFN', '؋'),
(4, 'Argentina', 'Pesos', 'ARS', '$'),
(5, 'Aruba', 'Guilders', 'AWG', 'ƒ'),
(6, 'Australia', 'Dollars', 'AUD', '$'),
(7, 'Azerbaijan', 'New Manats', 'AZN', 'ман'),
(8, 'Bahamas', 'Dollars', 'BSD', '$'),
(9, 'Barbados', 'Dollars', 'BBD', '$'),
(10, 'Belarus', 'Rubles', 'BYR', 'p.'),
(11, 'Belgium', 'Euro', 'EUR', '€'),
(12, 'Beliz', 'Dollars', 'BZD', 'BZ$'),
(13, 'Bermuda', 'Dollars', 'BMD', '$'),
(14, 'Bolivia', 'Bolivianos', 'BOB', '$b'),
(15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM'),
(16, 'Botswana', 'Pula', 'BWP', 'P'),
(17, 'Bulgaria', 'Leva', 'BGN', 'лв'),
(18, 'Brazil', 'Reais', 'BRL', 'R$'),
(19, 'Britain (United Kingdom)', 'Pounds', 'GBP', '£'),
(20, 'Brunei Darussalam', 'Dollars', 'BND', '$'),
(21, 'Cambodia', 'Riels', 'KHR', '៛'),
(22, 'Canada', 'Dollars', 'CAD', '$'),
(23, 'Cayman Islands', 'Dollars', 'KYD', '$'),
(24, 'Chile', 'Pesos', 'CLP', '$'),
(25, 'China', 'Yuan Renminbi', 'CNY', '¥'),
(26, 'Colombia', 'Pesos', 'COP', '$'),
(27, 'Costa Rica', 'Colón', 'CRC', '₡'),
(28, 'Croatia', 'Kuna', 'HRK', 'kn'),
(29, 'Cuba', 'Pesos', 'CUP', '₱'),
(30, 'Cyprus', 'Euro', 'EUR', '€'),
(31, 'Czech Republic', 'Koruny', 'CZK', 'Kč'),
(32, 'Denmark', 'Kroner', 'DKK', 'kr'),
(33, 'Dominican Republic', 'Pesos', 'DOP ', 'RD$'),
(34, 'East Caribbean', 'Dollars', 'XCD', '$'),
(35, 'Egypt', 'Pounds', 'EGP', '£'),
(36, 'El Salvador', 'Colones', 'SVC', '$'),
(37, 'England (United Kingdom)', 'Pounds', 'GBP', '£'),
(38, 'Euro', 'Euro', 'EUR', '€'),
(39, 'Falkland Islands', 'Pounds', 'FKP', '£'),
(40, 'Fiji', 'Dollars', 'FJD', '$'),
(41, 'France', 'Euro', 'EUR', '€'),
(42, 'Ghana', 'Cedis', 'GHC', '¢'),
(43, 'Gibraltar', 'Pounds', 'GIP', '£'),
(44, 'Greece', 'Euro', 'EUR', '€'),
(45, 'Guatemala', 'Quetzales', 'GTQ', 'Q'),
(46, 'Guernsey', 'Pounds', 'GGP', '£'),
(47, 'Guyana', 'Dollars', 'GYD', '$'),
(48, 'Holland (Netherlands)', 'Euro', 'EUR', '€'),
(49, 'Honduras', 'Lempiras', 'HNL', 'L'),
(50, 'Hong Kong', 'Dollars', 'HKD', '$'),
(51, 'Hungary', 'Forint', 'HUF', 'Ft'),
(52, 'Iceland', 'Kronur', 'ISK', 'kr'),
(53, 'India', 'Rupees', 'INR', 'Rp'),
(54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp'),
(55, 'Iran', 'Rials', 'IRR', '﷼'),
(56, 'Ireland', 'Euro', 'EUR', '€'),
(57, 'Isle of Man', 'Pounds', 'IMP', '£'),
(58, 'Israel', 'New Shekels', 'ILS', '₪'),
(59, 'Italy', 'Euro', 'EUR', '€'),
(60, 'Jamaica', 'Dollars', 'JMD', 'J$'),
(61, 'Japan', 'Yen', 'JPY', '¥'),
(62, 'Jersey', 'Pounds', 'JEP', '£'),
(63, 'Kazakhstan', 'Tenge', 'KZT', 'лв'),
(64, 'Korea (North)', 'Won', 'KPW', '₩'),
(65, 'Korea (South)', 'Won', 'KRW', '₩'),
(66, 'Kyrgyzstan', 'Soms', 'KGS', 'лв'),
(67, 'Laos', 'Kips', 'LAK', '₭'),
(68, 'Latvia', 'Lati', 'LVL', 'Ls'),
(69, 'Lebanon', 'Pounds', 'LBP', '£'),
(70, 'Liberia', 'Dollars', 'LRD', '$'),
(71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF'),
(72, 'Lithuania', 'Litai', 'LTL', 'Lt'),
(73, 'Luxembourg', 'Euro', 'EUR', '€'),
(74, 'Macedonia', 'Denars', 'MKD', 'ден'),
(75, 'Malaysia', 'Ringgits', 'MYR', 'RM'),
(76, 'Malta', 'Euro', 'EUR', '€'),
(77, 'Mauritius', 'Rupees', 'MUR', '₨'),
(78, 'Mexico', 'Pesos', 'MXN', '$'),
(79, 'Mongolia', 'Tugriks', 'MNT', '₮'),
(80, 'Mozambique', 'Meticais', 'MZN', 'MT'),
(81, 'Namibia', 'Dollars', 'NAD', '$'),
(82, 'Nepal', 'Rupees', 'NPR', '₨'),
(83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ƒ'),
(84, 'Netherlands', 'Euro', 'EUR', '€'),
(85, 'New Zealand', 'Dollars', 'NZD', '$'),
(86, 'Nicaragua', 'Cordobas', 'NIO', 'C$'),
(87, 'Nigeria', 'Nairas', 'NGN', '₦'),
(88, 'North Korea', 'Won', 'KPW', '₩'),
(89, 'Norway', 'Krone', 'NOK', 'kr'),
(90, 'Oman', 'Rials', 'OMR', '﷼'),
(91, 'Pakistan', 'Rupees', 'PKR', '₨'),
(92, 'Panama', 'Balboa', 'PAB', 'B/.'),
(93, 'Paraguay', 'Guarani', 'PYG', 'Gs'),
(94, 'Peru', 'Nuevos Soles', 'PEN', 'S/.'),
(95, 'Philippines', 'Pesos', 'PHP', 'Php'),
(96, 'Poland', 'Zlotych', 'PLN', 'zł'),
(97, 'Qatar', 'Rials', 'QAR', '﷼'),
(98, 'Romania', 'New Lei', 'RON', 'lei'),
(99, 'Russia', 'Rubles', 'RUB', 'руб'),
(100, 'Saint Helena', 'Pounds', 'SHP', '£'),
(101, 'Saudi Arabia', 'Riyals', 'SAR', '﷼'),
(102, 'Serbia', 'Dinars', 'RSD', 'Дин.'),
(103, 'Seychelles', 'Rupees', 'SCR', '₨'),
(104, 'Singapore', 'Dollars', 'SGD', '$'),
(105, 'Slovenia', 'Euro', 'EUR', '€'),
(106, 'Solomon Islands', 'Dollars', 'SBD', '$'),
(107, 'Somalia', 'Shillings', 'SOS', 'S'),
(108, 'South Africa', 'Rand', 'ZAR', 'R'),
(109, 'South Korea', 'Won', 'KRW', '₩'),
(110, 'Spain', 'Euro', 'EUR', '€'),
(111, 'Sri Lanka', 'Rupees', 'LKR', '₨'),
(112, 'Sweden', 'Kronor', 'SEK', 'kr'),
(113, 'Switzerland', 'Francs', 'CHF', 'CHF'),
(114, 'Suriname', 'Dollars', 'SRD', '$'),
(115, 'Syria', 'Pounds', 'SYP', '£'),
(116, 'Taiwan', 'New Dollars', 'TWD', 'NT$'),
(117, 'Thailand', 'Baht', 'THB', '฿'),
(118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$'),
(119, 'Turkey', 'Lira', 'TRY', 'TL'),
(120, 'Turkey', 'Liras', 'TRL', '£'),
(121, 'Tuvalu', 'Dollars', 'TVD', '$'),
(122, 'Ukraine', 'Hryvnia', 'UAH', '₴'),
(123, 'United Kingdom', 'Pounds', 'GBP', '£'),
(124, 'United States of America', 'Dollars', 'USD', '$'),
(125, 'Uruguay', 'Pesos', 'UYU', '$U'),
(126, 'Uzbekistan', 'Sums', 'UZS', 'лв'),
(127, 'Vatican City', 'Euro', 'EUR', '€'),
(128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs'),
(129, 'Vietnam', 'Dong', 'VND', '₫'),
(130, 'Yemen', 'Rials', 'YER', '﷼'),
(131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$');

-- --------------------------------------------------------

--
-- Table structure for table `measurement`
--

CREATE TABLE `measurement` (
  `measurement_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `measurement`
--

INSERT INTO `measurement` (`measurement_id`, `name`, `timestamp`) VALUES
(1, 'NEW', '2020-03-04 12:48:39'),
(2, 'OLD', '2020-03-04 12:48:39'),
(3, 'SECOND HAND', '2020-03-04 12:48:47');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `measurement_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `name`, `measurement_id`, `timestamp`) VALUES
(11, 'POSITIVO', 1, '2020-03-04 15:07:20'),
(12, 'MARAPHONE', 1, '2020-03-04 15:07:25'),
(13, 'RUGABIRE', 1, '2020-03-04 15:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_price`
--

CREATE TABLE `product_price` (
  `product_price_id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `curency` int(11) NOT NULL,
  `region` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_price`
--

INSERT INTO `product_price` (`product_price_id`, `product_id`, `user_id`, `curency`, `region`, `price`) VALUES
(8, 11, 13, 11, 37, 600),
(9, 12, 13, 2, 42, 80),
(10, 13, 13, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `region_id` int(20) NOT NULL,
  `region_level_id` int(11) NOT NULL,
  `region_name` varchar(200) NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `timestrap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_level_id`, `region_name`, `parent_id`, `timestrap`) VALUES
(3, 1, 'kbbb', 1, '0000-00-00'),
(4, 0, 'kigali', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `regional_level`
--

CREATE TABLE `regional_level` (
  `regional_level_id` int(11) NOT NULL,
  `level_name` varchar(100) NOT NULL DEFAULT '',
  `timestarp` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regional_level`
--

INSERT INTO `regional_level` (`regional_level_id`, `level_name`, `timestarp`) VALUES
(1, 'Afghanistan', '0000-00-00'),
(2, 'Albania', '0000-00-00'),
(3, 'Algeria', '0000-00-00'),
(4, 'American Samoa', '0000-00-00'),
(5, 'Andorra', '0000-00-00'),
(6, 'Angola', '0000-00-00'),
(7, 'Anguilla', '0000-00-00'),
(8, 'Antarctica', '0000-00-00'),
(9, 'Antigua and Barbuda', '0000-00-00'),
(10, 'Argentina', '0000-00-00'),
(11, 'Armenia', '0000-00-00'),
(12, 'Aruba', '0000-00-00'),
(13, 'Australia', '0000-00-00'),
(14, 'Austria', '0000-00-00'),
(15, 'Azerbaijan', '0000-00-00'),
(16, 'Bahamas', '0000-00-00'),
(17, 'Bahrain', '0000-00-00'),
(18, 'Bangladesh', '0000-00-00'),
(19, 'Barbados', '0000-00-00'),
(20, 'Belarus', '0000-00-00'),
(21, 'Belgium', '0000-00-00'),
(22, 'Belize', '0000-00-00'),
(23, 'Benin', '0000-00-00'),
(24, 'Bermuda', '0000-00-00'),
(25, 'Bhutan', '0000-00-00'),
(26, 'Bolivia', '0000-00-00'),
(27, 'Bosnia and Herzegovina', '0000-00-00'),
(28, 'Botswana', '0000-00-00'),
(29, 'Bouvet Island', '0000-00-00'),
(30, 'Brazil', '0000-00-00'),
(31, 'British Indian Ocean Territory', '0000-00-00'),
(32, 'Brunei Darussalam', '0000-00-00'),
(33, 'Bulgaria', '0000-00-00'),
(34, 'Burkina Faso', '0000-00-00'),
(35, 'Burundi', '0000-00-00'),
(36, 'Cambodia', '0000-00-00'),
(37, 'Cameroon', '0000-00-00'),
(38, 'Canada', '0000-00-00'),
(39, 'Cape Verde', '0000-00-00'),
(40, 'Cayman Islands', '0000-00-00'),
(41, 'Central African Republic', '0000-00-00'),
(42, 'Chad', '0000-00-00'),
(43, 'Chile', '0000-00-00'),
(44, 'China', '0000-00-00'),
(45, 'Christmas Island', '0000-00-00'),
(46, 'Cocos (Keeling) Islands', '0000-00-00'),
(47, 'Colombia', '0000-00-00'),
(48, 'Comoros', '0000-00-00'),
(49, 'Democratic Republic of the Congo', '0000-00-00'),
(50, 'Republic of Congo', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `region_id` bigint(20) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `other_names` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(200) NOT NULL,
  `timestrap` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `region_id`, `first_name`, `other_names`, `email`, `phone`, `username`, `password`, `timestrap`) VALUES
(4, 0, 'umuhire', 'heritier', 'muhire@gmail.com', '250786910057', 'mheir299', '9ff0ceaa0343bf0c05ca9d51273b46aa', '2020-03-04 10:02:46'),
(5, 184, 'iradukunda', 'ireneee', 'myemauil@ll.com', '08999999', 'irenee', 'b73fdaa1fb7669da760b49600c45d9be', '2020-03-04 10:14:34'),
(13, 1, 'uwimana', 'jeanne', 'test@test', '0000', 'test', '098f6bcd4621d373cade4e832627b4f6', '2020-03-04 11:57:24'),
(14, 0, 'irenee', 'irenee', 'muhire416@gmail.com', '07885756746', '123', '202cb962ac59075b964b07152d234b70', '2020-03-04 16:27:16'),
(15, 0, 'irenee', 'irenee', 'muhire416@gmail.com', '07885756746', '123', '202cb962ac59075b964b07152d234b70', '2020-03-04 16:27:22'),
(16, 0, 'irenee', 'irenee', 'muhire416@gmail.com', '07885756746', 'irenee', '202cb962ac59075b964b07152d234b70', '2020-03-04 16:27:34'),
(17, 0, 'irenee', 'irenee', 'muhire416@gmail.com', '07885756746', 'irenee3', '907c173c31365d36d58e52e4ad02ef9b', '2020-04-01 08:09:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `measurement`
--
ALTER TABLE `measurement`
  ADD PRIMARY KEY (`measurement_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_price`
--
ALTER TABLE `product_price`
  ADD PRIMARY KEY (`product_price_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `regional_level`
--
ALTER TABLE `regional_level`
  ADD PRIMARY KEY (`regional_level_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `measurement`
--
ALTER TABLE `measurement`
  MODIFY `measurement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_price`
--
ALTER TABLE `product_price`
  MODIFY `product_price_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `regional_level`
--
ALTER TABLE `regional_level`
  MODIFY `regional_level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Database: `new`
--
CREATE DATABASE IF NOT EXISTS `new` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `new`;

-- --------------------------------------------------------

--
-- Table structure for table `2020_accomo`
--

CREATE TABLE `2020_accomo` (
  `id` int(11) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `restaurent` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_class_fees`
--

CREATE TABLE `2020_class_fees` (
  `id` int(11) NOT NULL,
  `classname` text NOT NULL,
  `term1` varchar(200) NOT NULL,
  `term2` varchar(200) NOT NULL,
  `term3` varchar(200) NOT NULL,
  `cid` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_fees`
--

CREATE TABLE `2020_fees` (
  `id` int(11) NOT NULL,
  `student` varchar(200) NOT NULL,
  `class` varchar(200) NOT NULL,
  `term1` varchar(200) NOT NULL,
  `term2` varchar(200) NOT NULL,
  `term3` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_marks`
--

CREATE TABLE `2020_marks` (
  `mid` int(11) NOT NULL,
  `names` varchar(255) NOT NULL,
  `reg` double NOT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `term1_quiz` double NOT NULL,
  `term1_exam` double NOT NULL,
  `term2_quiz` double NOT NULL,
  `term2_exam` double NOT NULL,
  `term3_quiz` double NOT NULL,
  `term3_exam` double NOT NULL,
  `term1_tot` double NOT NULL,
  `term2_tot` double NOT NULL,
  `term3_tot` double NOT NULL,
  `gmax` double NOT NULL,
  `gtot` double NOT NULL,
  `gper` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_places`
--

CREATE TABLE `2020_places` (
  `id` int(11) NOT NULL,
  `studentid` double NOT NULL,
  `term1` int(11) NOT NULL,
  `term2` int(11) NOT NULL,
  `term3` int(11) NOT NULL,
  `per1` double NOT NULL,
  `per2` double NOT NULL,
  `per3` double NOT NULL,
  `class` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_quiz`
--

CREATE TABLE `2020_quiz` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `tot` int(11) NOT NULL,
  `date` varchar(2555) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `term` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `testid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_quiz_marks`
--

CREATE TABLE `2020_quiz_marks` (
  `qid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `quiz_id` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL,
  `term` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_restaurent`
--

CREATE TABLE `2020_restaurent` (
  `id` int(11) NOT NULL,
  `reg` varchar(255) NOT NULL,
  `payed` bigint(20) NOT NULL,
  `rleft` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_students`
--

CREATE TABLE `2020_students` (
  `sid` int(11) NOT NULL,
  `sdms` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `regno` double NOT NULL,
  `fn` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `dof` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `PROVINCE` varchar(255) NOT NULL,
  `DISTRICT` varchar(255) NOT NULL,
  `SECTOR` varchar(255) NOT NULL,
  `CELL` varchar(255) NOT NULL,
  `VIRAGE` varchar(255) NOT NULL,
  `father` varchar(255) NOT NULL,
  `mother` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_test`
--

CREATE TABLE `2020_test` (
  `id` int(11) NOT NULL,
  `quizid` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `term` varchar(255) NOT NULL,
  `testid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_test_marks`
--

CREATE TABLE `2020_test_marks` (
  `qid` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `quiz_id` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL,
  `class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_test_places`
--

CREATE TABLE `2020_test_places` (
  `id` int(11) NOT NULL,
  `test` varchar(255) NOT NULL,
  `regno` varchar(222) NOT NULL,
  `marks` varchar(222) NOT NULL,
  `place` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `2020_transport`
--

CREATE TABLE `2020_transport` (
  `id` int(11) NOT NULL,
  `reg` varchar(255) NOT NULL,
  `payed` double NOT NULL,
  `tleft` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `evt` varchar(255) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `student` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classcourse`
--

CREATE TABLE `classcourse` (
  `ccid` int(11) NOT NULL,
  `coursename` varchar(200) NOT NULL,
  `classname` varchar(200) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `Teacher` varchar(200) NOT NULL,
  `randid` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `classid` int(11) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `opt` varchar(255) NOT NULL,
  `teacher` int(11) NOT NULL,
  `lever` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `conduct`
--

CREATE TABLE `conduct` (
  `id` int(20) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `conduct` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `cid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `option` varchar(255) NOT NULL,
  `tot` int(200) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'core',
  `cat` text NOT NULL,
  `sub` text NOT NULL,
  `upper` varchar(255) NOT NULL,
  `lower` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `coursecat`
--

CREATE TABLE `coursecat` (
  `id` int(11) NOT NULL,
  `cat` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL,
  `cname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `province` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msgid` int(11) NOT NULL,
  `sentsms` varchar(255) NOT NULL,
  `leftsms` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msgid`, `sentsms`, `leftsms`) VALUES
(1, '0', '50');

-- --------------------------------------------------------

--
-- Table structure for table `mistakes`
--

CREATE TABLE `mistakes` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `mistake` text NOT NULL,
  `details` text NOT NULL,
  `punishment` text NOT NULL,
  `reg` varchar(255) NOT NULL,
  `student` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `pid` int(11) NOT NULL,
  `opname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`pid`, `opname`) VALUES
(1, 'amakuru'),
(2, 'b'),
(3, 'rmuhire heritier'),
(4, 'mucyo');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `motif` text NOT NULL,
  `returndate` varchar(255) NOT NULL,
  `reg` varchar(200) NOT NULL,
  `student` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`) VALUES
(1, 'west'),
(2, 'kigali city'),
(3, 'east'),
(4, 'south'),
(5, 'north');

-- --------------------------------------------------------

--
-- Table structure for table `schoolinfo`
--

CREATE TABLE `schoolinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `manager` varchar(255) NOT NULL,
  `defaultyear` int(11) NOT NULL,
  `sendername` varchar(200) NOT NULL,
  `schoolcode` int(11) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `h1` text NOT NULL,
  `h2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolinfo`
--

INSERT INTO `schoolinfo` (`id`, `name`, `logo`, `manager`, `defaultyear`, `sendername`, `schoolcode`, `tel`, `email`, `h1`, `h2`) VALUES
(1, 'ECOLE SECONDAIRE MUGANZA', 'izubaedu_demo/izuba.png', 'NDAGIJIMANA Jean Baptiste', 2020, 'EsMuganza', 6, '078888777', '', 'REPUBLIC  OF RWANDA', 'MINISTRY OF EDUCATION');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `district`, `name`) VALUES
(1, 8, 'Gashora'),
(2, 8, 'Juru'),
(3, 8, 'Kamabuye'),
(4, 8, 'Ntarama'),
(5, 8, 'mareba'),
(6, 8, 'Mayange'),
(7, 8, 'Musenyi'),
(8, 8, 'Mwogo'),
(9, 8, 'Ngeruka'),
(10, 8, 'Nyamata'),
(11, 8, 'Nyarugenge'),
(12, 8, 'Rilima'),
(13, 8, 'Ruhuha'),
(14, 8, 'Rweru'),
(15, 8, 'Shyara'),
(16, 9, 'Gasange'),
(17, 9, 'Gatsibo'),
(18, 9, 'Gitoki'),
(19, 9, 'Kabarore'),
(20, 9, 'Kageyo'),
(21, 9, 'Kiramuruzi'),
(22, 9, 'Kiziguro'),
(23, 9, 'Muhura'),
(24, 9, 'Murambi'),
(25, 9, 'Ngarama'),
(26, 9, 'Nyagihanga'),
(27, 9, 'Remera'),
(29, 9, 'Rwimbogo'),
(28, 9, 'Rugarama'),
(30, 10, 'Gahini'),
(31, 10, 'Kabare'),
(32, 10, 'Kabarondo'),
(33, 10, 'Mukarage'),
(34, 10, 'Murama'),
(35, 10, 'Murundi'),
(36, 10, 'Mwiri'),
(37, 10, 'Ndengo'),
(38, 10, 'Nyamirama'),
(39, 10, 'Rukara'),
(40, 10, 'Ruramira'),
(41, 10, 'Rwinkwavu'),
(42, 11, 'Gahara'),
(43, 11, 'Gatore'),
(44, 11, 'Kigina'),
(45, 11, 'Kirehe'),
(46, 11, 'Muhama'),
(47, 11, 'Mpanga'),
(48, 11, 'Musaza'),
(49, 11, 'Mushikiri'),
(50, 11, 'Nasho'),
(51, 11, 'Nyamugari'),
(52, 11, 'Nyarubuye'),
(53, 11, 'Kigarama'),
(54, 12, 'Gashanda'),
(55, 12, 'Jarama'),
(56, 12, 'Karembo'),
(57, 12, 'Kazo'),
(58, 12, 'Kibungo'),
(59, 12, 'Mugesera'),
(60, 12, 'Murama'),
(61, 12, 'Mutenderi'),
(62, 12, 'Remera'),
(63, 12, 'Rukira'),
(64, 12, 'Rukumberi'),
(65, 12, 'Rurenge'),
(66, 12, 'Sake'),
(67, 12, 'Zaza'),
(68, 13, 'Gatunda'),
(69, 13, 'Kiyombe'),
(70, 13, 'Karama'),
(71, 13, 'Karangazi'),
(72, 13, 'Katabagemu'),
(73, 13, 'Matimba'),
(74, 13, 'Mimuli'),
(75, 13, 'Mukama'),
(76, 13, 'Musheri'),
(77, 13, 'Nyagatare'),
(78, 13, 'Rukomo'),
(79, 13, 'Rwempasha'),
(80, 13, 'Rwimiyaga'),
(81, 13, 'Tabagwe'),
(82, 14, 'Fumbwe'),
(83, 14, 'Gahengeri'),
(84, 14, 'Gishari'),
(85, 14, 'Karenge'),
(86, 14, 'Kigabiro'),
(87, 14, 'Muhazi'),
(88, 14, 'Munyanga'),
(89, 14, 'Munyiginya'),
(90, 14, 'Musha'),
(91, 14, 'Muyumbu'),
(92, 14, 'Mwulire'),
(93, 14, 'Nyakariro'),
(94, 14, 'Nzige'),
(95, 14, 'Rubona'),
(96, 28, 'Bumbogo'),
(97, 28, 'Gatsata'),
(98, 28, 'Jali'),
(99, 28, 'Gikomero'),
(100, 28, 'Gisozi'),
(101, 28, 'Jabana'),
(102, 28, 'Kinyinya'),
(103, 28, 'Ndera'),
(104, 28, 'Nduba'),
(105, 28, 'Rusororo'),
(106, 28, 'Rutunga'),
(107, 28, 'Kacyiru'),
(108, 28, 'Kimihurura'),
(109, 28, 'Kimironko'),
(110, 28, 'Remera'),
(111, 29, 'Gahanga'),
(112, 29, 'Gatenga'),
(113, 29, 'Gikondo'),
(114, 29, 'Kagarama'),
(115, 29, 'Kanombe'),
(116, 29, 'Kicukiro'),
(117, 29, 'Kigarama'),
(118, 29, 'Masaka'),
(119, 29, 'Niboye'),
(120, 29, 'Nyarugunga'),
(121, 30, 'Gitega'),
(122, 30, 'Kanyinya'),
(123, 30, 'Kigali'),
(124, 30, 'Kimisagara'),
(125, 30, 'Mageragere'),
(126, 30, 'Muhima'),
(127, 30, 'Nyakabanda'),
(128, 30, 'Nyamirambo'),
(129, 30, 'Rwezamenyo'),
(130, 30, 'Nyarugenge'),
(131, 23, 'Bungwe'),
(132, 23, 'Butaro'),
(133, 23, 'Cyanika'),
(134, 23, 'Cyeru'),
(135, 23, 'Gahunga'),
(136, 23, 'Gatebe'),
(137, 23, 'Gitovu'),
(138, 23, 'Kagogo'),
(139, 23, 'Kinoni'),
(140, 23, 'Kinyababa'),
(141, 23, 'Kivuye'),
(142, 23, 'Nemba'),
(143, 23, 'Rugarama'),
(144, 23, 'Rugendabari'),
(145, 23, 'Ruhunde'),
(146, 23, 'Rusarabuge'),
(147, 23, 'Rwerere'),
(148, 24, 'Busengo'),
(149, 24, 'Coko'),
(150, 24, 'Cyabingo'),
(151, 24, 'Gakenke'),
(152, 24, 'Gashenyi'),
(153, 24, 'Mugunga'),
(154, 24, 'Janja'),
(155, 24, 'Kamubuga'),
(156, 24, 'Karambo'),
(157, 24, 'Kivuruga'),
(158, 24, 'Mataba'),
(159, 24, 'Minazi'),
(160, 24, 'Muhondo'),
(161, 24, 'Muyongwe'),
(162, 24, 'Muzo'),
(163, 24, 'Nemba'),
(164, 24, 'Ruli'),
(165, 24, 'Rusasa'),
(166, 24, 'Rushashi'),
(167, 25, 'Bukure'),
(168, 25, 'Bwisige'),
(169, 25, 'Byumba'),
(170, 25, 'Cyumba'),
(171, 25, 'Giti'),
(172, 25, 'Kaniga'),
(173, 25, 'Manyagiro'),
(174, 25, 'Miyove'),
(175, 25, 'Kageyo'),
(176, 25, 'Mukarange'),
(177, 25, 'Muko'),
(178, 25, 'Mutete'),
(179, 25, 'Nyamiyaga'),
(180, 25, 'Nyankeke'),
(181, 25, 'Rubaya'),
(182, 25, 'Rukomo'),
(183, 25, 'Rushaki'),
(184, 25, 'Rutare'),
(185, 25, 'Ruvune'),
(186, 25, 'Rwamiko'),
(187, 25, 'Shangasha'),
(188, 26, 'Busogo'),
(189, 26, 'Cyuve'),
(190, 26, 'Gacaca'),
(191, 26, 'Gashaki'),
(192, 26, 'Gataraga'),
(193, 26, 'Kimonyi'),
(194, 26, 'Kinigi'),
(195, 26, 'Muhoza'),
(196, 26, 'Muko'),
(197, 26, 'Musanze'),
(198, 26, 'Nkotsi'),
(199, 26, 'Nyange'),
(200, 26, 'Remera'),
(201, 26, 'Rwaza'),
(202, 26, 'Shingiro'),
(203, 27, 'Base'),
(204, 27, 'Burega'),
(205, 27, 'Bushoki'),
(206, 27, 'Buyoga'),
(207, 27, 'Cyinzuzi'),
(208, 27, 'Cyungo'),
(209, 27, 'Kinihira'),
(210, 27, 'Kisaro'),
(211, 27, 'Masoro'),
(212, 27, 'Mbogo'),
(213, 27, 'Murambi'),
(214, 27, 'Ngoma'),
(215, 27, 'Ntarabana'),
(216, 27, 'Rukozo'),
(217, 27, 'Rusiga'),
(218, 27, 'Shyorongi'),
(219, 27, 'Tumba'),
(220, 15, 'Gakonko'),
(221, 15, 'Gishubi'),
(222, 15, 'Kansi'),
(223, 15, 'Kibilizi'),
(224, 15, 'Kigembe'),
(225, 15, 'Mamba'),
(226, 15, 'Muganza'),
(227, 15, 'Mugombwa'),
(228, 15, 'Mukindo'),
(229, 15, 'Musha'),
(230, 15, 'Ndora'),
(231, 15, 'Nyanza'),
(232, 15, 'Save'),
(233, 16, 'Gashamu'),
(234, 16, 'Karama'),
(235, 16, 'Kigoma'),
(236, 16, 'Kinazi'),
(237, 16, 'Maraba'),
(238, 16, 'Mbazi'),
(239, 16, 'Mukura'),
(240, 16, 'Ngoma'),
(241, 16, 'Ruhashya'),
(242, 16, 'Rusatira'),
(243, 16, 'Rwaniro'),
(244, 16, 'Simbi'),
(245, 16, 'Tumba'),
(246, 16, 'Huye'),
(247, 17, 'Gacurabwenge'),
(248, 17, 'Karama'),
(249, 17, 'Kayenzi'),
(250, 17, 'Kayumbu'),
(251, 17, 'Mugina'),
(252, 17, 'Musambira'),
(253, 17, 'Ngamba'),
(254, 17, 'Nyamiyaga'),
(255, 17, 'Nyarubaka'),
(256, 17, 'Rugalika'),
(257, 17, 'Rukoma'),
(258, 17, 'Runda'),
(259, 18, 'Cyeza'),
(260, 18, 'Kabacuzi'),
(261, 18, 'Kibangu'),
(262, 18, 'Kiyumba'),
(263, 18, 'Muhanga'),
(264, 18, 'Mushishiro'),
(265, 18, 'Nyabinoni'),
(266, 18, 'Nyamabuye'),
(267, 18, 'Nyarusange'),
(268, 18, 'Rongi'),
(269, 18, 'Rugendabari'),
(270, 18, 'Shyogwe'),
(272, 19, 'Buruhukiro'),
(273, 19, 'Cyaniko'),
(274, 19, 'Gatare'),
(275, 19, 'Kaduha'),
(276, 19, 'Kamegeli'),
(277, 19, 'Kibirizi'),
(278, 19, 'Kibumbwe'),
(279, 19, 'Kitabi'),
(280, 19, 'Mbazi'),
(281, 19, 'Mugano'),
(282, 19, 'Musange'),
(283, 19, 'Musebeya'),
(284, 19, 'Mushubi'),
(285, 19, 'Nkomane'),
(286, 19, 'Gasaka'),
(287, 19, 'Tare'),
(288, 19, 'Uwinkingi'),
(289, 20, 'Busasamana'),
(290, 20, 'Busoro'),
(291, 20, 'Cyabakamyi'),
(292, 20, 'Kibirizi'),
(293, 20, 'Kigoma'),
(294, 20, 'Mukingo'),
(295, 20, 'Rwabicuma'),
(296, 20, 'Muyira'),
(297, 20, 'Ntyazo'),
(298, 20, 'Nyagisozi'),
(299, 21, 'Cyahinda'),
(300, 21, 'Busanze'),
(301, 21, 'Kibeho'),
(302, 21, 'Mata'),
(303, 21, 'Munini'),
(304, 21, 'Kivu'),
(305, 21, 'Ngera'),
(306, 21, 'Ngoma'),
(307, 21, 'Nyabimata'),
(308, 21, 'Nyagisozi'),
(309, 21, 'Ruheru'),
(310, 21, 'Muganza'),
(311, 21, 'Ruramba'),
(312, 21, 'Rusenge'),
(313, 22, 'Bweramana'),
(314, 22, 'Byimana'),
(315, 22, 'Kabagari'),
(316, 22, 'Kinazi'),
(317, 22, 'Kinihira'),
(318, 22, 'Mbuye'),
(319, 22, 'Mwendo'),
(320, 22, 'Ntongwe'),
(321, 22, 'Ruhango'),
(322, 1, 'Bwishyura'),
(323, 1, 'Gishari'),
(324, 1, 'Gishyita'),
(325, 1, 'Gisovu'),
(326, 1, 'Gitesi'),
(327, 1, 'Murundi'),
(328, 1, 'Murambi'),
(329, 1, 'Mubuga'),
(330, 1, 'Mutuntu'),
(331, 1, 'Rugabano'),
(332, 1, 'Ruganda'),
(333, 1, 'Rwankuba'),
(334, 1, 'Twumba'),
(335, 2, 'Bwira'),
(336, 2, 'Gatumba'),
(337, 2, 'Hindiro'),
(338, 2, 'Kabaya'),
(339, 2, 'Kageyo'),
(340, 2, 'Kavumu'),
(341, 2, 'Matyazo'),
(342, 2, 'Muhanda'),
(343, 2, 'Muhororo'),
(344, 2, 'Ndaro'),
(345, 2, 'Ngororero'),
(346, 2, 'Nyange'),
(347, 2, 'Sovu'),
(348, 3, 'Bigogwe'),
(349, 3, 'Jenda'),
(350, 3, 'Jomba'),
(351, 3, 'Kabatwa'),
(352, 3, 'Karago'),
(353, 3, 'Kintobo'),
(354, 3, 'Mukamira'),
(355, 3, 'Muringa'),
(356, 3, 'Rambura'),
(357, 3, 'Rugera'),
(358, 3, 'Rurembo'),
(359, 3, 'Shyira'),
(360, 4, 'Bushekeri'),
(361, 4, 'Bushenge'),
(362, 4, 'Cyato'),
(363, 4, 'Gihombo'),
(364, 4, 'Kagano'),
(365, 4, 'Kanjongo'),
(366, 4, 'Karambi'),
(367, 4, 'Karengera'),
(368, 4, 'Kirimbi'),
(369, 4, 'Macuba'),
(370, 4, 'Mahembe'),
(371, 4, 'Nyabitekeri'),
(372, 4, 'Rangiro'),
(373, 4, 'Ruharambuga'),
(374, 4, 'Shangi'),
(375, 5, 'Bugeshi'),
(376, 5, 'Busasamana'),
(377, 5, 'Cyanzarwe'),
(378, 5, 'Gisenyi'),
(379, 5, 'Kanama'),
(380, 5, 'Kanzenze'),
(381, 5, 'Mudende'),
(382, 5, 'Nyakiliba'),
(383, 5, 'Nyabyumba'),
(384, 5, 'Nyundo'),
(385, 5, 'Rubavu'),
(386, 5, 'Rugerero'),
(387, 6, 'Bugarama'),
(388, 6, 'Butare'),
(389, 6, 'Bweyeye'),
(390, 6, 'Gikundamvura'),
(391, 6, 'Gashonga'),
(392, 6, 'Giheke'),
(393, 6, 'Gihundwe'),
(394, 6, 'Gitambi'),
(395, 6, 'Kamembe'),
(396, 6, 'Muganza'),
(397, 6, 'Mururu'),
(398, 6, 'Nkanka'),
(399, 6, 'Nkombo'),
(400, 6, 'Nkungu'),
(401, 6, 'Nyakabuye'),
(402, 6, 'Nyakarenzo'),
(403, 6, 'Nzahaha'),
(404, 6, 'Rwimbogo'),
(405, 7, 'Boneza'),
(406, 7, 'Gihango'),
(407, 7, 'Kigeyo'),
(408, 7, 'Kivumu'),
(409, 7, 'Manihira'),
(410, 7, 'Mukura'),
(411, 7, 'Murunda'),
(412, 7, 'Musasa'),
(413, 7, 'Mushonyi'),
(414, 7, 'Mushubati'),
(415, 7, 'Nyabirasa'),
(416, 7, 'Ruhango'),
(417, 7, 'Rusebeya');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `sdms` text NOT NULL,
  `ln` varchar(255) NOT NULL,
  `Fn` text NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tablename`
--

CREATE TABLE `tablename` (
  `id` int(11) NOT NULL,
  `student` varchar(255) NOT NULL,
  `groups` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `Tel` varchar(255) NOT NULL,
  `idno` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `rand_id` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `test_table`
--

CREATE TABLE `test_table` (
  `id` int(11) NOT NULL,
  `testid` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `tot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` int(11) NOT NULL,
  `teacherid` varchar(255) NOT NULL,
  `classid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `rand_id` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`id`, `name`) VALUES
(1, 2020);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `2020_accomo`
--
ALTER TABLE `2020_accomo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_class_fees`
--
ALTER TABLE `2020_class_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_fees`
--
ALTER TABLE `2020_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_marks`
--
ALTER TABLE `2020_marks`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `2020_places`
--
ALTER TABLE `2020_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_quiz`
--
ALTER TABLE `2020_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_quiz_marks`
--
ALTER TABLE `2020_quiz_marks`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `2020_restaurent`
--
ALTER TABLE `2020_restaurent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_students`
--
ALTER TABLE `2020_students`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Indexes for table `2020_test`
--
ALTER TABLE `2020_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_test_marks`
--
ALTER TABLE `2020_test_marks`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `2020_test_places`
--
ALTER TABLE `2020_test_places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2020_transport`
--
ALTER TABLE `2020_transport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classcourse`
--
ALTER TABLE `classcourse`
  ADD PRIMARY KEY (`ccid`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`classid`),
  ADD UNIQUE KEY `classname` (`classname`);

--
-- Indexes for table `conduct`
--
ALTER TABLE `conduct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `coursecat`
--
ALTER TABLE `coursecat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mistakes`
--
ALTER TABLE `mistakes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolinfo`
--
ALTER TABLE `schoolinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tablename`
--
ALTER TABLE `tablename`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_table`
--
ALTER TABLE `test_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `2020_accomo`
--
ALTER TABLE `2020_accomo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_class_fees`
--
ALTER TABLE `2020_class_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_fees`
--
ALTER TABLE `2020_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_marks`
--
ALTER TABLE `2020_marks`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_places`
--
ALTER TABLE `2020_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_quiz`
--
ALTER TABLE `2020_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_quiz_marks`
--
ALTER TABLE `2020_quiz_marks`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_restaurent`
--
ALTER TABLE `2020_restaurent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_students`
--
ALTER TABLE `2020_students`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_test`
--
ALTER TABLE `2020_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_test_marks`
--
ALTER TABLE `2020_test_marks`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_test_places`
--
ALTER TABLE `2020_test_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `2020_transport`
--
ALTER TABLE `2020_transport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classcourse`
--
ALTER TABLE `classcourse`
  MODIFY `ccid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conduct`
--
ALTER TABLE `conduct`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coursecat`
--
ALTER TABLE `coursecat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mistakes`
--
ALTER TABLE `mistakes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schoolinfo`
--
ALTER TABLE `schoolinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tablename`
--
ALTER TABLE `tablename`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test_table`
--
ALTER TABLE `test_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `ninja_pizza`
--
CREATE DATABASE IF NOT EXISTS `ninja_pizza` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ninja_pizza`;

-- --------------------------------------------------------

--
-- Table structure for table `pizzas`
--

CREATE TABLE `pizzas` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `ingredients` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pizzas`
--

INSERT INTO `pizzas` (`id`, `title`, `ingredients`, `email`, `created`) VALUES
(1, 'ninja supreme', 'tomato,cheese,mushroom', 'mario@thenet ninja.co.uk', '2020-04-19 14:19:50'),
(2, 'hgfghfsfsgfsgsh', 'gfgfdjjjjjjjjjj', 'sdfg@dfkjs.com', '2020-04-20 07:52:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pizzas`
--
ALTER TABLE `pizzas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: ` onlinecourse`
--
CREATE DATABASE IF NOT EXISTS ` onlinecourse` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE ` onlinecourse`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-05-2018 03:31:37 PM');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(1, 'PHP01', 'Core PHP', '1-5', 10, '2017-02-11 17:39:10', '21-05-2018 03:33:37 PM'),
(2, 'WP01', 'Wordpress', '1-6', 1, '2017-02-11 17:52:25', '12-02-2017 12:23:35 AM'),
(4, 'MYSQL23', 'MYSQL', '1-8', 20, '2017-02-11 18:47:25', '25-08-2018 11:20:22 AM');

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(4, '10806121', '715948', 4, 7, 6, 5, 2, '2018-05-21 10:19:41'),
(5, '12345', '131863', 4, 7, 6, 6, 1, '2018-08-25 05:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(1, 'Account', '2017-02-09 18:52:00'),
(2, 'HR', '2017-02-09 18:52:04'),
(3, 'Admin', '2017-02-09 18:52:08'),
(5, 'Test', '2017-02-09 18:55:08'),
(7, 'IT', '2018-05-21 10:03:15');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(5, 'Level 1', '2017-02-09 19:04:04'),
(6, 'level 2', '2017-02-09 19:04:12'),
(7, 'level 4', '2017-02-09 19:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(4, 'Second sem', '2017-02-09 18:47:59', ''),
(5, 'Third Sem', '2017-02-09 18:48:04', ''),
(6, 'Fourth Sem', '2018-05-21 10:02:56', '');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(1, '2015', '2017-02-09 18:16:51'),
(2, '2016', '2017-02-09 18:27:41'),
(3, '2017', '2018-05-21 10:01:54'),
(4, '2018', '2018-05-21 10:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
('10806121', 'logo.jpg', 'f925916e2754e5e03f75dd58a5733251', 'Anuj Kumar', '715948', '', '', '', '7.25', '2017-02-11 19:38:32', '21-05-2018 03:20:40 PM'),
('12345', NULL, 'f925916e2754e5e03f75dd58a5733251', 'John', '131863', '', '', '', '0.00', '2018-08-25 05:50:51', ''),
('125966', '', 'f925916e2754e5e03f75dd58a5733251', 'Test user', '385864', '', '', '', '0.00', '2017-02-11 19:48:03', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:05:58', '', 1),
(2, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:07:18', '', 1),
(3, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:08:46', '', 1),
(4, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:26:15', '', 1),
(5, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:27:11', '', 1),
(6, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:28:19', '', 1),
(7, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:29:30', '', 1),
(8, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:30:39', '12-02-2017 02:00:40 AM', 1),
(9, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:32:12', '12-02-2017 02:21:40 AM', 1),
(10, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:51:50', '12-02-2017 05:14:45 AM', 1),
(11, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-12 05:41:24', '12-02-2017 11:49:58 AM', 1),
(12, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-12 06:20:05', '', 1),
(13, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-12 06:20:23', '12-02-2017 12:09:59 PM', 1),
(14, '10806121', 0x3a3a3100000000000000000000000000, '2018-05-21 09:49:06', '21-05-2018 03:30:53 PM', 1),
(15, '10806121', 0x3a3a3100000000000000000000000000, '2018-05-21 10:19:15', '', 1),
(16, '12345', 0x3a3a3100000000000000000000000000, '2018-08-25 05:51:42', '25-08-2018 11:23:02 AM', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
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
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"srms\",\"table\":\"admin\"},{\"db\":\"ttcmururu\",\"table\":\"gallery\"},{\"db\":\" onlinecourse\",\"table\":\"students\"},{\"db\":\" onlinecourse\",\"table\":\"userlog\"},{\"db\":\"chat\",\"table\":\"message\"},{\"db\":\"kinyaga\",\"table\":\"register\"},{\"db\":\"chat\",\"table\":\"user\"},{\"db\":\"chat\",\"table\":\"registration\"},{\"db\":\"todo\",\"table\":\"user\"},{\"db\":\"todo\",\"table\":\"icyowakoze\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Dumping data for table `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('db_berita', 'berita', 'id_kategori', 'db_berita', 'kategori', 'id_kategori'),
('umuryango', 'images', 'id_ahabanza', 'umuryango', 'ahabanza', 'id_ahabanza');

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('db_berita', 'berita', 'judul'),
('tables', 'country', 'cname'),
('umuryango', 'images', 'id_ahabanza');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-02-29 11:33:35', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `session`
--
CREATE DATABASE IF NOT EXISTS `session` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `session`;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(5) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `uname`, `pwd`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `srms`
--
CREATE DATABASE IF NOT EXISTS `srms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `srms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'admin', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'First', 1, 'C', '2017-06-06 16:52:33', '2017-06-07 05:53:47'),
(2, 'Second', 2, 'A', '2017-06-06 17:21:20', '2017-06-06 17:21:38'),
(4, 'Fourth', 4, 'C', '2017-06-07 09:20:23', '0000-00-00 00:00:00'),
(5, 'Sixth', 6, 'A', '2017-06-07 09:35:08', '0000-00-00 00:00:00'),
(6, 'Sixth', 6, 'B', '2017-08-28 18:42:41', '2017-08-28 18:43:02'),
(7, 'Seventh', 7, 'B', '2017-08-28 18:52:00', '2017-08-28 18:52:15'),
(8, 'Eight', 8, 'A', '2017-08-28 19:21:05', '2017-08-28 19:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(2, 1, 1, 2, 100, '2017-08-24 17:54:09', '2017-08-28 18:34:32'),
(3, 1, 1, 1, 80, '2017-08-24 17:54:09', '2017-08-28 18:34:25'),
(4, 1, 1, 5, 78, '2017-08-24 17:54:09', '2017-08-28 18:34:26'),
(5, 1, 1, 4, 60, '2017-08-24 17:54:09', '2017-08-28 18:34:26'),
(6, 2, 4, 2, 90, '2017-08-28 18:38:18', NULL),
(7, 2, 4, 1, 75, '2017-08-28 18:38:18', NULL),
(8, 2, 4, 5, 56, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(9, 2, 4, 4, 80, '2017-08-28 18:38:18', '2017-08-28 19:26:42'),
(10, 4, 7, 2, 54, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(11, 4, 7, 1, 85, '2017-08-28 18:56:21', NULL),
(12, 4, 7, 5, 55, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(13, 4, 7, 7, 65, '2017-08-28 18:56:21', '2017-08-28 19:03:10'),
(14, 5, 8, 2, 75, '2017-08-28 19:25:07', NULL),
(15, 5, 8, 1, 56, '2017-08-28 19:25:07', NULL),
(16, 5, 8, 5, 52, '2017-08-28 19:25:07', NULL),
(17, 5, 8, 4, 80, '2017-08-28 19:25:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Sarita', '46456', 'info@phpgurukul.com', 'Female', '1995-03-03', 1, '2017-06-12 10:30:57', '2017-08-26 04:36:37', 1),
(2, 'iradukunda irenee', '10861', 'iradukundairenee9@gmail.com', 'Male', '1995-02-02', 4, '2017-08-19 19:18:28', '2017-08-26 04:59:17', 0),
(3, 'amit kumar', '2626', 'amit@gmail.com', 'Male', '2014-08-06', 6, '2017-08-28 18:45:31', '2017-08-28 18:46:02', 1),
(4, 'rahul kumar', '990', 'rahul01@gmail.com', 'Male', '2001-02-03', 7, '2017-08-28 18:54:58', '2017-08-28 18:55:20', 1),
(5, 'sanjeev singh', '122', 'sanjeev01@gmail.com', 'Male', '2002-02-03', 8, '2017-08-28 19:23:53', '2017-08-28 19:24:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 2, 5, 1, '2017-06-07 11:16:56', '2017-06-07 11:16:56'),
(4, 1, 2, 1, '2017-06-12 06:46:32', '2017-06-12 06:46:32'),
(5, 1, 4, 1, '2017-06-12 06:46:35', '2017-06-12 06:46:35'),
(6, 1, 5, 1, '2017-06-12 06:46:40', '2017-06-12 06:46:40'),
(8, 4, 4, 1, '2017-08-26 03:21:27', '2017-08-26 03:21:27'),
(10, 4, 1, 1, '2017-08-26 03:22:05', '2017-08-26 03:22:05'),
(12, 4, 2, 1, '2017-08-26 03:22:15', '2017-08-26 03:22:15'),
(13, 4, 5, 1, '2017-08-26 03:22:20', '2017-08-26 03:22:20'),
(14, 6, 1, 1, '2017-08-28 18:44:06', '2017-08-28 18:44:06'),
(15, 6, 2, 1, '2017-08-28 18:44:12', '2017-08-28 18:44:12'),
(16, 6, 4, 1, '2017-08-28 18:44:18', '2017-08-28 18:44:18'),
(17, 6, 6, 1, '2017-08-28 18:44:23', '2017-08-28 18:44:23'),
(18, 7, 1, 1, '2017-08-28 18:53:12', '2017-08-28 18:53:12'),
(19, 7, 7, 1, '2017-08-28 18:53:19', '2017-08-28 18:53:19'),
(20, 7, 2, 1, '2017-08-28 18:53:38', '2017-08-28 18:53:38'),
(21, 7, 6, 1, '2017-08-28 18:53:44', '2017-08-28 18:53:44'),
(22, 7, 5, 0, '2017-08-28 18:53:50', '2017-08-28 18:53:50'),
(23, 8, 1, 1, '2017-08-28 19:22:25', '2017-08-28 19:22:25'),
(24, 8, 2, 1, '2017-08-28 19:22:31', '2017-08-28 19:22:31'),
(25, 8, 4, 1, '2017-08-28 19:22:36', '2017-08-28 19:22:36'),
(26, 8, 6, 1, '2017-08-28 19:22:42', '2017-08-28 19:22:42'),
(27, 8, 5, 0, '2017-08-28 19:22:47', '2017-08-28 19:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Maths', 'MTH01', '2017-06-07 09:23:57', '2017-06-07 09:46:54'),
(2, 'English', 'ENG11', '2017-06-07 09:24:25', '0000-00-00 00:00:00'),
(4, 'Science', 'SC1', '2017-06-07 09:36:15', '0000-00-00 00:00:00'),
(5, 'Music', 'MS', '2017-06-07 09:36:23', '0000-00-00 00:00:00'),
(6, 'Social Studies', 'SS08', '2017-08-28 18:43:29', '2017-08-28 18:43:45'),
(7, 'Physics', 'PH03', '2017-08-28 18:52:41', '2017-08-28 18:52:55'),
(8, 'Chemistry', 'CH65', '2017-08-28 19:21:46', '2017-08-28 19:22:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
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
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `tables`
--
CREATE DATABASE IF NOT EXISTS `tables` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tables`;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `cityid` int(255) NOT NULL,
  `cityname` varchar(255) NOT NULL,
  `sid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cityid`, `cityname`, `sid`) VALUES
(1, 'qqqqqq', 1),
(2, 'jjjjjj', 2);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `cid` int(255) NOT NULL,
  `cname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`cid`, `cname`) VALUES
(1, 'india'),
(2, 'usa'),
(3, 'austraria');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `sid` int(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `cid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`sid`, `sname`, `cid`) VALUES
(3, 'hhhhhhh', 1),
(4, 'kkkk', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cityid`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `cityid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `cid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `sid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `test_db`
--
CREATE DATABASE IF NOT EXISTS `test_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test_db`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `age` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `age`) VALUES
(1, 'umuhire ', 'benithe', 12),
(2, 'eric ', 'nshimiyimana', 50),
(3, 'byirirngiro', 'rague', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `todo`
--
CREATE DATABASE IF NOT EXISTS `todo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `todo`;

-- --------------------------------------------------------

--
-- Table structure for table `icyowakoze`
--

CREATE TABLE `icyowakoze` (
  `id` int(255) NOT NULL,
  `date` date NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `icyowakoze`
--

INSERT INTO `icyowakoze` (`id`, `date`, `comment`) VALUES
(2, '2020-04-27', '    	\r\n    none nagiye ikamemebe nibiasdhgshkdff'),
(24, '2020-04-23', '    	\r\n    sbfesesfhj'),
(25, '2020-04-23', '    	\r\n    sbfesesfhj');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass1` varchar(255) NOT NULL,
  `pass2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `username`, `pass1`, `pass2`) VALUES
(1, '', ' ', ' ', 'ty', ' ty'),
(2, '', ' ', ' sdfgh', 'frdghjk', ' frdghjk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `icyowakoze`
--
ALTER TABLE `icyowakoze`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `icyowakoze`
--
ALTER TABLE `icyowakoze`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `ttcmururu`
--
CREATE DATABASE IF NOT EXISTS `ttcmururu` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ttcmururu`;

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(5) NOT NULL,
  `mission` varchar(255) NOT NULL,
  `vision` varchar(255) NOT NULL,
  `history` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `mission`, `vision`, `history`) VALUES
(3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 			consequat. Duis aute iru', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 			consequat. Duis aute iru', '	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n			consequat. Duis aute');

-- --------------------------------------------------------

--
-- Table structure for table `academic`
--

CREATE TABLE `academic` (
  `id` int(5) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `program` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `academic`
--

INSERT INTO `academic` (`id`, `subject`, `program`) VALUES
(4, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(5) NOT NULL,
  `postal` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phonenumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `postal`, `email`, `phonenumber`) VALUES
(3, '	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 			consequat. Duis aute ir', 'ttcmururu@gamil.com', '07875673565856');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `comment`) VALUES
(30, '2Q==.jpeg', ''),
(34, 'Z (1).jpeg', ''),
(38, 'Z.jpeg', ''),
(44, 'IMG_20200220_080701_1.jpg', ''),
(45, 'IMG_20200220_080716_8.jpg', ''),
(47, 'IMG_20200220_080803_3.jpg', ''),
(54, 'IMG_20200220_080836_8.jpg', ''),
(56, 'IMG_20200219_131431_882.jpg', ''),
(57, 'IMG_20200218_144334_262.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `name`, `comment1`) VALUES
(17, 'logo.PNG', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor '),
(20, 'Capture.PNG', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(5) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `academic`
--
ALTER TABLE `academic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `academic`
--
ALTER TABLE `academic`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- Database: `umuryango`
--
CREATE DATABASE IF NOT EXISTS `umuryango` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `umuryango`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(5) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `pass1`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `ahabanza`
--

CREATE TABLE `ahabanza` (
  `id_ahabanza` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ahabanza`
--

INSERT INTO `ahabanza` (`id_ahabanza`, `name`, `title`, `comment`) VALUES
(74, 'irenee 152.jpg', 'ministeri yubuzima kwirinda colonavirus', '		wertyuiop[]wertyiop[]\r\n		'),
(75, 'irenee 152.jpg', 'ministeri yubuzima kwirinda colonavirus', '		wertyuiop[]wertyiop[]\r\n		'),
(76, 'Capture1.PNG', 'njkj', '		\r\ndxcgfvbh'),
(77, 'Capture1.PNG', 'njkj', '		\r\ndxcgfvbh');

-- --------------------------------------------------------

--
-- Table structure for table `amatangazo`
--

CREATE TABLE `amatangazo` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amatangazo`
--

INSERT INTO `amatangazo` (`id`, `title`, `comment`) VALUES
(15, 'ministeri yingabo', '         	ministry wingabo aramenyesha abanyarwanda bifuza kujay mungabo zigihugu ko kwiyandikisha bizaba muburyo bukurikira:\r\n1.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. '),
(17, 'itangazo rya cyamunara', '      	 	ashingiye kwiteka rya perezida wa repuburika yu rwanda abereyemo umwenda,banki ya kigali BK irateza cyamunara ibi bikurikira :\r\n	         '),
(18, 'ministeri yubuzima kwirinda colonavirus', '	 	uhgdkjgheroiuofhgeeigfvehjgbvhenjdfbhv\r\n	 '),
(19, 'nbdjfkh', '	 	\r\n	 nkhb'),
(20, 'bvhjgh', '   	 bnv	\r\n	     ');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(5) NOT NULL,
  `id_ahabanza` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `id_ahabanza`, `name`) VALUES
(1, 0, 'irenee 005.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `imikino`
--

CREATE TABLE `imikino` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imikino`
--

INSERT INTO `imikino` (`id`, `name`, `title`, `text`) VALUES
(1, 'sdfsdf', 'dfewfew', 'wer'),
(2, 'elclassico', 'irenee 184.jpg', '		ikipe ya real madrid yatsinze fc barcelone 2-0 frederic varverde yabaye umukinnyi wumukino\r\n		'),
(3, 'elclassico', 'irenee 184.jpg', '		ikipe ya real madrid yatsinze fc barcelone 2-0 frederic varverde yabaye umukinnyi wumukino\r\n		'),
(4, 'eweqw', 'irenee 011.jpg', '	fewf	\r\n		'),
(5, 'eweqw', 'irenee 011.jpg', '	fewf	\r\n		');

-- --------------------------------------------------------

--
-- Table structure for table `imyidagaduro`
--

CREATE TABLE `imyidagaduro` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imyidagaduro`
--

INSERT INTO `imyidagaduro` (`id`, `title`, `name`, `comment`) VALUES
(1, 'ministeri yubuzima kwirinda colonavirus', 'irenee 006.jpeg', ''),
(2, 'ministeri yubuzima kwirinda colonavirus', 'irenee 006.jpeg', ''),
(4, 'yertueritjiirehgpasfer', 'irenee 181.jpg', ''),
(5, 'ministeri yubuzima kwirinda colonavirus', 'irenee 002.jpg', ''),
(6, 'ministeri yubuzima kwirinda colonavirus', 'irenee 002.jpg', ''),
(7, 'ministeri yubuzima kwirinda colonavirus', 'irenee 002.jpg', ''),
(8, 'ministeri yubuzima kwirinda colonavirus', 'irenee 002.jpg', ''),
(10, 'ministeri yubuzima kwirinda colonavirus', 'irenee 143.jpg', ''),
(11, 'ministeri yubuzima kwirinda colonavirus', 'irenee 143.jpg', ''),
(13, 'xjzc', 'irenee 005.jpg', '		ghfjgh\r\n		'),
(14, 'xjzc', 'irenee 005.jpg', '		ghfjgh\r\n		'),
(16, 'ministeri yubuzima kwirinda colonavirus', 'irenee 006.jpeg', 'murwanda hamaze kuagaragara abantu bangana 3	murwanda hamaze kuagaragara abantu bangana 3	murwanda hamaze kuagaragara abantu bangana 36	murwanda hamaze kuagaragara abantu bangana 89		'),
(17, 'ministeri yubuzima kwirinda colonavirus', 'irenee 006.jpeg', '		\r\n		hjcbsdakljdkjldw'),
(19, 'ministeri yubuzima kwirinda colonavirus', 'irenee 005.jpg', ''),
(20, 'ministeri yubuzima kwirinda colonavirus', 'irenee 447.jpg', 'yriuytiuybhfhjdkssjdhfiuiwpowjapmepdnpkywwpxfndkdbdfjdfbdknnhjeinf  ndmnfghfbdkidf kdfvafcnpsffrioqwif jirherpsohfkijds nfjhewj  niugfh  jhjfin  		\r\n		'),
(21, 'ministeri yubuzima kwirinda colonavirus', 'irenee 447.jpg', 'yriuytiuybhfhjdkssjdhfiuiwpowjapmepdnpkywwpxfndkdbdfjdfbdknnhjeinf  ndmnfghfbdkidf kdfvafcnpsffrioqwif jirherpsohfkijds nfjhewj  niugfh  jhjfin  		\r\n		'),
(22, '12323', 'irenee 009.jpg', '		erwunvkncbtfhukjlswhuijerjbgtyuhijdefjgyuhgfdyehjfkgnbyhurhgyugrghhfeyfgergihefbghfnbjfuyujhhfhdgdfkjdhshxdjf dfdufhdfjdfdhjdhfgsbb   hghfsjfyesvnfgfurgdfjdgeryurhgfyrhfdfyfg dhfgbghgvfhgdfgdhyfyfgdhfjfgddbdejfvcind hjdgfjghjrbdhudbdfjmdfhdhdfbdjfgjdudh'),
(23, '12323', 'irenee 009.jpg', '		abana bazatangira kwiga bitarenze	');

-- --------------------------------------------------------

--
-- Table structure for table `urukundo`
--

CREATE TABLE `urukundo` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ahabanza`
--
ALTER TABLE `ahabanza`
  ADD PRIMARY KEY (`id_ahabanza`);

--
-- Indexes for table `amatangazo`
--
ALTER TABLE `amatangazo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imikino`
--
ALTER TABLE `imikino`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imyidagaduro`
--
ALTER TABLE `imyidagaduro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `urukundo`
--
ALTER TABLE `urukundo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ahabanza`
--
ALTER TABLE `ahabanza`
  MODIFY `id_ahabanza` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `amatangazo`
--
ALTER TABLE `amatangazo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `imikino`
--
ALTER TABLE `imikino`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `imyidagaduro`
--
ALTER TABLE `imyidagaduro`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `urukundo`
--
ALTER TABLE `urukundo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- Database: `work`
--
CREATE DATABASE IF NOT EXISTS `work` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `work`;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `firstname`, `lastname`, `location`) VALUES
(5, 'ishimwe', 'irenee', 'mururu');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
