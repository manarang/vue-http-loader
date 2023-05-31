SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Table structure for table `dipo`
--

CREATE TABLE `dipo` (
  `id` int(3) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `lama` varchar(40) DEFAULT NULL,
  `alamat` varchar(120) DEFAULT NULL,
  `lahir` varchar(12) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `kelas1` varchar(5) DEFAULT NULL,
  `kelas2` varchar(5) DEFAULT NULL,
  `kelas3` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dipo`
--

INSERT INTO `dipo` (`id`, `nama`, `lama`, `alamat`, `lahir`, `phone`, `kelas1`, `kelas2`, `kelas3`) VALUES
(1, 'Imanda Ong', 'Kho Lian Ing', '18489 Buttonwood Lane, California CA 91748 United States', '12 -05-1950', '+1 (626) 991-0609', '1 B', '2 B', '3 A'),
(2, 'Ratna K. Horasio', 'Tjiok Giok Yang', 'Jl. Pulo Nangka Timur III C /No. 1, Pulo Gadung, Jakarta Timur 13260', '13-01-1950', '+62 81315815077', '1A', '2B', '3B'),
(3, 'Jany Sutardio', 'Gouw Kwie Lian', 'Jl.Kelapa Nias 1 Blok PB3 no 12A Kelapa Gading Permai', '28-06-1950', '+62 81384050740', '1 B', '2 C', '3 A'),
(4, 'Yanty Lumanau', 'Oey Giok Han - Hanny', 'Jl Pelepah Hijau I / TB 1 / No.8, Kelapa Gading, Jakarta 14240', '27-05-1950', '+62 85810154331', '1 B', '2 C', '3 A'),
(5, 'Gunawan Budihardjo', 'Liem Soen Gwan', 'Jl Pejaten Mas 8 / E-6, Jakarta 12520', '09-09-1949', '+62 818199949', '1B', '2C', '3B'),
(6, 'Itung', 'Tri Tunggal', 'Jln Mojoarum 9/5 Surabaya Mulyorejo 60285', '07-06-1947', '+62 8179979350', '1A', '2C', '--'),
(7, 'Widowati Hartono', 'Siek Hoey Giok', 'Jl. Widya Chandra V / No.5, Jakarta 12190', '13-04-1951', '+62 818 1113 50', '1 E', '2 E', '3 C'),
(8, 'Petrus Jonatan', 'Tan Tek Hok', 'Bukit Anyelir AE 03/02 Citra Indah Jonggol', '22-07-1950', '+62 896 5128 0747', '1 B', '2 C', '3 A'),
(9, 'Wahyuni Aliasgar', 'Wahyuni Aliasgar', 'Jl.Janur Elok V Blok QB 15/ No.12, Kelapa Gading, Jakarta Utara', '13-02-1950', '+62 816705277', '--', '2 A', '3 C'),
(10, 'Jeannette Rismayanti', 'Jeannette Tjan Han Hwa', 'Jl Tebet Timur Dalam XD/1', '13-05-1950', '+62 81280391112', '1 C', '2 C', '3 A'),
(11, 'Sanny Camelia Prasetio', 'Thio San Nio', 'Jl. Pulo Asem Utara 8 no. 2A Jak.Timur', '15-01-1950', '+62816838359', '1 D', '2 D', '3 C'),
(12, 'Grace Gutari Bratanata', 'Tan Giok Jan', 'Jl. Warga No.7, Rt 11/03, Jakarta Selatan 12510', '16-08-1950', '+62 817108885', '1 E', '2 E', '3 C'),
(13, 'Chris Deddie Hermawan', 'Oey Hin Lee', 'Jl. Tarian Raya Barat U-14, Kelapa Gading Timur', '02-01-1950', '+62 88808028291', '1 B', '2 B', '3 -'),
(14, 'Ronald Ch. W. Eman', 'Ronald Ch. W. Eman', 'Cluster Arimbi Mas, Jl. Arimbi Blok B No.6, Pondok Benda, Pamulang 15146', '29-02-1948', '+62 0818 2902 48', '1 D', '2 D', '-'),
(15, 'Philip D. Sigar', 'Philip D. Sigar', 'Jl. Fiore VI / E-08, Discovery Residence Tangerang Selatan 15227', '20-08-1950', '+62 87889886535', '1', '2', '3'),
(16, 'Rene Eugene Lewarissa', 'Rene Eugene Lewarissa', 'Jl.Delima Timur IIIB/No. G-16 Vila Delima Lebak Bulus Cilandak JakSel 12440', '14-12-1948', '+62 811833866', '1 D', '2 D', '3 C'),
(17, 'Stefan', 'Stefan Looho', 'Jln. Simprug Golf 13 no 18, Senayan, Kebayoran Lama, Jakarta Selatan 12220', '14-02-1951', '+62 816-936-900', '1 B', '2 C', '3 A'),
(18, 'Judimagio Jusuf', 'Judimagio Jusuf', 'Jl. Loka Indah no. 7 Warung Buncit Jakarta Selatan', '14-03-1950', '+62 811 987 070', '1 C', '2 A', '3 C'),
(19, 'Lira Liem', 'Tan Kiok Tjoe', 'L V, Spieringshoek  5  3118- LL Schiedam,  Nederland', '21-11-1949', '+31 6 44508162', '1 B', '2 B', '3 B'),
(20, 'Sunny Soerjaatmadja', 'Sunny Souw Lan Eng', 'Jl. Jawa no. 142 RT02/RW09Beji, Depok 16421', '03-04-1950', '+6281585500730', '1 C', '2 A', '3 A'),
(21, 'Olga Lovita Roengvoraphoj', 'Oey Loan Mei - Olga', '476 Charan Sanit Wong 67, Bangplad, Bangkok 10700', '14-10-1950', '+66 818130622', '1 E', '2 E', '3 C'),
(22, 'Lydiana Indrayanti Lasmana', 'Lauw Beng Gwat', 'Jl. A  4 / No.51, RT 008/03, Cipinang Muara, Jakarta 13420', '14-02-1948', '+62 821-1251-4956', '1 A', '2 C', '3 B'),
(23, 'Iwan Pranatio', 'Tio Soei Goan', '17 Palm street, Fairfield, Melbourne, Australia', '11-04-1950', '+61 0421060732', '1 E', '2 E', '3 C'),
(24, 'Hedy Wiluan', 'Lim Tjoei Hiang - Hedy', 'Jl. Jeruk Purut Baru Kav. 7, Gang Citrus Hystrix, Cilandak Timur, Jakarta 14350', '21-04-1950', '+(62) 811 993 5219', '1 C', '2 A', '3 B'),
(25, 'Melina Lie', 'Melly Lee', '9051 Baywood Park Drive, Seminole, FL. 33777 USA', '23-09-1949', '+1 (727)244-7744', '-', '2 C', '3 B'),
(26, 'Andry', 'Tjio Bok Tjiang', 'Jl. Muria No. 29, Jakarta Selatan', '15-03-1950', '+62 812-9325-166', '1 E', '2 E', '3 C'),
(27, 'Herliana Darmali', 'Lie Giok Lan', 'Jl. Mayang II D / No.9, Kaveling Billy Moon, Pondok Kelapa, Jakarta Timur', '23-11-1950', '+62 87832647707', '1 E', '2 E', '3 C'),
(28, 'Stephen Kian Gie Tee', 'Tee Kian Gie', '22561 Malden St. West Hills CA 91304, USA', '11-02-1949', '+1 818 730 6527', '1 C', '2 C', '3 A'),
(29, 'Marudut Pardede', 'Marudut Pardede', 'Jl.Prof.DR. Hamka, Perum Taman Asri Blok E6 no.4 Ciledug, Tgr', '21-01-1949', '+62 815-8872-634', '1 A', '2 B', '3 C'),
(30, 'Rina Muliawan', 'Lie Giok Hian(Hanne)', 'Jl. Kayu Putih Utara I A No.4', '17-01-1950', '+62 82122762298', '1 A', '2 A', '3 A'),
(31, 'Liana Widyawati Budiwardhana', 'Tan Lian Bwee', '61 Bramwell Road, Noranda  Perth', '04-03-1950', '+61 412184181', '1', '2', '3'),
(32, 'Martha Halim', 'Martha Liem', 'Jl. Haji Naim 3 No.2, Cipete Utara', '15-03-1949', '+62 816883008', '1', '2', '3'),
(33, 'Yanty Tionowidjaja', 'Tjiong Sin Hian', 'Jl. Kawi No. 40, Semarang 50149', '03-05-1949', '+62 816666041', '1 B', '2 C', '3 A'),
(34, 'Victor Tambunan', 'Victor Tambunan', 'Jl. Semarang No.16,Menteng Jakarta 10310 DKI', '20-05-1950', '+62  81218142456', '1', '2 C', '3'),
(35, 'Hennie Rahmat', 'Hennie Loa', 'Zonnedauw85 DeMeern 3453VX Holland', '14-07-1949', '+31  62-166-0679', '1 B', '2 B', '3 A'),
(36, 'Indra Kartawinata', 'Kang Bwan Hok', '21815 Onawa Place,DiamondBar Diamond Bar 91765CA', '10-04-1949', '+1 909-802-0594', '1', '2', '3'),
(37, 'Synthia Theophilus', 'Thio Sin Hoa', 'Jl. Ciater 1 Blok D6/6, Puri Cinere, PangkalanJati Depok 16513', '18-02-1950', '+62  89636700086', '1 B', '2 C', '3 A'),
(38, 'Irawan Kosasih', 'Kho Kian Gie', 'Jl. Kebon Raya3 No.19 Jakarta 11510', '14-06-1951', '+62  81513500959', '1', '2', '3 C'),
(40, 'Eugenie Pelupessy', 'Eugenie Pelupessy', 'Jl. Cibodas I-A2/18,PuriCinere Depok 16514 ', '30-04-1951', '+62  811191626', '1', '2 C', '3'),
(41, 'Jui Chihtra Gani', 'Gan Jui Chih', 'Jl.Mushola(NKF)No.4,Kemang,Pedurenan RT 004/RW 004 Kelurahan Cilandak Timur,Kecamatan Pasar Minggu,Jakarta Selatan 12560', '21-09-1950', '+62816724579', '1', '2', '3'),
(42, 'Erni Zainal Abidin', 'Ernizar', 'Jl. Balai Pustaka VNo.22,Rawamangun Jakarta 13320', '17-09-1950', '+62 8161657389', '1', '2', '3'),
(43, 'Maura', 'Ellen Maura Bosch', 'Bukit Pamulang Indah,BlokB.20/10 Tangerang Selatan 15417', '20-05-1950', '+62  81384490520', '1', '2', '3'),
(44, 'Edward Yunus', 'Lee Oen Gwan', 'Jl. BogorBaruC3/1 Bogor 16144 Jawa Barat 811981711', '23-05-1948', '+62 ', '1', '2', '3'),
(45, 'Savitri Mulia', 'Liauw Hwie Lan', 'Royal Mediterania Garden, Tower Lavender Lt. 28a, unit BN, Jl. S.Parman, Jakarta', '06-06-1950', '+ 62  819 0553 7030', '1 C', '2', '3'),
(46, 'Haryatmo', 'Haryatmo', 'Jl. Walet V Blok I 3 No.4, Bintaro JayaSektor2 Jakarta 12330', '10-12-1949', '+62  816821570', '1', '2', '3'),
(47, 'Rudy Djauhari', 'Djiauw Yoen Houw', 'Jl. Sekolah Kencana 2 / 10,PondokIndah Jakarta 12310', '07-06-1949', '+62   8161863082', '1', '2', '3'),
(48, 'Raetzo Linawati / Lin', 'Tee May/Kian Ling', 'Meienfeldstr. 68.  CH-8645 Jona   Switzerland', '11-02-1950', '+41 79 309 10 23', '1 D', '2 D', '3 C');

-- --------------------------------------------------------

--
-- Table structure for table `foto`
--

CREATE TABLE `foto` (
  `id` int(3) NOT NULL,
  `thumb` varchar(40) DEFAULT NULL,
  `lokasi` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foto`
--

INSERT INTO `foto` (`id`, `thumb`, `lokasi`) VALUES
(1, '../thumb/smp_001.png', '../foto/smp_001.png'),
(2, '../thumb/smp_002.png', '../foto/smp_002.png'),
(3, '../thumb/smp_003.png', '../foto/smp_003.png'),
(4, '../thumb/smp_004.png', '../foto/smp_004.png'),
(5, '../thumb/smp_005.png', '../foto/smp_005.png'),
(6, '../thumb/smp_006.png', '../foto/smp_006.png');

--
-- Indexes for table `dipo`
--
ALTER TABLE `dipo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_g`
--
ALTER TABLE `video_g`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT for table `dipo`
--
ALTER TABLE `dipo`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `foto`
--
ALTER TABLE `foto`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
