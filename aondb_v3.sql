-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Bulan Mei 2019 pada 14.06
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aondb_v3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absenguru`
--

CREATE TABLE `absenguru` (
  `idAbsenGuru` int(11) NOT NULL,
  `NIK` int(11) DEFAULT NULL,
  `idAbsenUtama` int(11) DEFAULT NULL,
  `dataSurat` text NOT NULL,
  `tanggal` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absenguru`
--

INSERT INTO `absenguru` (`idAbsenGuru`, `NIK`, `idAbsenUtama`, `dataSurat`, `tanggal`, `status`) VALUES
(17, NULL, 22, 'dataReport.php', '2018-11-25', 1),
(18, NULL, 24, '', '2018-11-26', 0),
(19, NULL, 25, '', '2018-11-28', 0),
(20, NULL, 27, '', '2018-11-30', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `absenpiket`
--

CREATE TABLE `absenpiket` (
  `idAbsenPiket` int(11) NOT NULL,
  `idAbsenUtama` int(11) NOT NULL,
  `dataSurat` text NOT NULL,
  `tanggal` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absenpiket`
--

INSERT INTO `absenpiket` (`idAbsenPiket`, `idAbsenUtama`, `dataSurat`, `tanggal`, `status`) VALUES
(16, 21, '', '2018-11-25', 1),
(17, 22, 'dataReport.php', '2018-11-25', 1),
(18, 23, '', '2018-11-26', 1),
(19, 24, '', '2018-11-26', 0),
(20, 25, '', '2018-11-28', 0),
(21, 27, '', '2018-11-30', 0),
(22, 30, '', '2019-05-04', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `absenutama`
--

CREATE TABLE `absenutama` (
  `idAbsenUtama` int(11) NOT NULL,
  `NIS` int(11) DEFAULT NULL,
  `keterangan` char(1) DEFAULT NULL,
  `dataSurat` text,
  `tanggal` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absenutama`
--

INSERT INTO `absenutama` (`idAbsenUtama`, `NIS`, `keterangan`, `dataSurat`, `tanggal`, `status`) VALUES
(21, 2185, 'S', '', '2018-11-25', 3),
(22, 6735, 'A', 'dataReport.php', '2018-11-25', 1),
(23, 6508, 'S', '', '2018-11-26', 3),
(24, 6735, 'S', '', '2018-11-26', 1),
(25, 6740, 'S', '', '2018-11-28', 1),
(26, 6789, 'S', 'V-class-side.png', '2018-11-28', 1),
(27, 6740, 'S', '', '2018-11-30', 1),
(28, 6735, 'S', 'DATA ABSEN NEW.xlsx', '2018-11-30', 1),
(29, 6846, 'S', 'fakyu.xlsx', '2018-11-30', 1),
(30, 2185, 'I', '', '2019-05-04', 3);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `dataabsenguru`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `dataabsenguru` (
`idAbsenGuru` int(11)
,`idAbsenUtama` int(11)
,`NIS` int(11)
,`nama` varchar(30)
,`kodeKelas` varchar(10)
,`tanggal` date
,`keterangan` char(1)
,`dataSurat` text
,`status` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `dataabsenpiket`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `dataabsenpiket` (
`idAbsenPiket` int(11)
,`idAbsenUtama` int(11)
,`NIS` int(11)
,`nama` varchar(30)
,`kodeKelas` varchar(10)
,`tanggal` date
,`keterangan` char(1)
,`dataSurat` text
,`status` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `dataabsenutama`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `dataabsenutama` (
`nis` int(11)
,`siswa` varchar(30)
,`keterangan` char(1)
,`tanggal` date
,`nik` int(11)
,`guru` varchar(30)
,`Kelas` varchar(10)
,`status` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `dataabsenutama_v2`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `dataabsenutama_v2` (
`idAbsenUtama` int(11)
,`NIS` int(11)
,`nama` varchar(30)
,`kodeKelas` varchar(10)
,`tanggal` date
,`keterangan` char(1)
,`dataSurat` text
,`status` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `datareport`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `datareport` (
`ID Absen Utama` int(11)
,`NIS` int(11)
,`NAMA SISWA` varchar(30)
,`KELAS` varchar(10)
,`KETERANGAN` char(1)
,`TANGGAL` date
,`STATUS` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `datareport_v2`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `datareport_v2` (
`idReport` int(11)
,`idAbsenUtama` int(11)
,`NIS` int(11)
,`nama` varchar(30)
,`kodeKelas` varchar(10)
,`tanggal` date
,`keterangan` char(1)
,`dataSurat` text
,`status` int(11)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `NIK` int(11) NOT NULL,
  `kodeKelas` varchar(10) DEFAULT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`NIK`, `kodeKelas`, `nama`) VALUES
(1, '10TBG1', 'Sulistyorini Nurlibrasih'),
(2, '10TBG2', 'Gita Riana Enny H'),
(3, '10TBG3', 'Siti Arina Rahayu'),
(4, '10PH1', 'Nebajot Pilistin Luzikooy'),
(5, '10PH2', 'Nur Siti Kundakimah'),
(6, '10PH3', 'Fahmi Dwi Febrianto'),
(7, '10TBS1', 'Susi Wahyuni'),
(8, '10TBS2', 'Rospita Dewi'),
(9, '10TBS3', 'Junaedi'),
(10, '10RPL1', 'Ismiyatun'),
(11, '10RPL2', 'Wawan Sumarwan'),
(12, '10UPW', 'Elvyarni Gani'),
(13, '11PH1', 'Sri Nuryati'),
(14, '11PH2', 'Titik Sulistiyawati'),
(15, '11PH3', 'Intan Theresia V'),
(16, '11TBG1', 'Eny Elastri'),
(17, '11TBG2', 'Eppi Sihombing'),
(18, '11TBG3', 'Widya Devi'),
(19, '11TBS1', 'Yuana Tumastuti'),
(20, '11TBS2', 'Erni Susilawati'),
(21, '11TBS3', 'Achmad Zulkarnain'),
(22, '11RPL1', 'Rian Pioriandana'),
(23, '11RPL2', 'Gatot Widodo'),
(24, '11UPW', 'Elen Nurdiana'),
(25, '12TBS1', 'Carla'),
(26, '12TBS2', 'Aryani Ambun Sari'),
(27, '12PH1', 'Murtiyati'),
(28, '12PH2', 'Tety Nainggolan'),
(29, '12TBG1', 'Nursinta Nainggolan'),
(30, '12TBG2', 'Rofiqoh'),
(31, '12RPL1', 'Romaida Siallagan'),
(32, '12RPL2', 'Ajisar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `report`
--

CREATE TABLE `report` (
  `idReport` int(11) NOT NULL,
  `idAbsenUtama` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `report`
--

INSERT INTO `report` (`idReport`, `idAbsenUtama`, `tanggal`, `status`) VALUES
(12, 18, '2018-11-25', 1),
(13, 19, '2018-11-25', 1),
(14, 20, '2018-11-25', 1),
(15, 21, '2018-11-25', 1),
(16, 22, '2018-11-25', 1),
(17, 22, '2018-11-27', 1),
(18, 22, '2018-11-28', 1),
(19, 22, '2018-11-29', 1),
(20, 23, '2018-11-26', 1),
(21, 24, '2018-11-26', 0),
(22, 25, '2018-11-28', 0),
(23, 26, '2018-11-28', 1),
(24, 27, '2018-11-30', 0),
(25, 28, '2018-11-30', 1),
(26, 29, '2018-11-30', 1),
(27, 30, '2019-05-04', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangkelas`
--

CREATE TABLE `ruangkelas` (
  `kodeKelas` varchar(10) NOT NULL,
  `kelas` int(11) NOT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `pararel` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ruangkelas`
--

INSERT INTO `ruangkelas` (`kodeKelas`, `kelas`, `jurusan`, `pararel`) VALUES
('10PH1', 10, 'Akomodasi Perhotelan', 1),
('10PH2', 10, 'Akomodasi Perhotelan', 2),
('10PH3', 10, 'Akomodasi Perhotelan', 3),
('10RPL1', 10, 'Rekayasa Perangkat Lunak', 1),
('10RPL2', 10, 'Rekayasa Perangkat Lunak', 2),
('10TBG1', 10, 'Tata Boga', 1),
('10TBG2', 10, 'Tata Boga', 2),
('10TBG3', 10, 'Tata Boga', 3),
('10TBS1', 10, 'Tata Busana', 1),
('10TBS2', 10, 'Tata Busana', 2),
('10TBS3', 10, 'Tata Busana', 3),
('10UPW', 10, 'Usaha Pengantar Wisata', 0),
('11PH1', 11, 'Akomodasi Perhotelan', 1),
('11PH2', 11, 'Akomodasi Perhotelan', 2),
('11PH3', 11, 'Akomodasi Perhotelan', 3),
('11RPL1', 11, 'Rekayasa Perangkat Lunak', 1),
('11RPL2', 11, 'Rekayasa Perangkat Lunak', 2),
('11TBG1', 11, 'Tata Boga', 1),
('11TBG2', 11, 'Tata Boga', 2),
('11TBG3', 11, 'Tata Boga', 3),
('11TBS1', 11, 'Tata Busana', 1),
('11TBS2', 11, 'Tata Busana', 2),
('11TBS3', 11, 'Tata Busana', 3),
('11UPW', 11, 'Usaha Pengantar Wisata', 0),
('12PH1', 12, 'Akomodasi Perhotelan', 1),
('12PH2', 12, 'Akomodasi Perhotelan', 2),
('12RPL1', 12, 'Rekayasa Perangkat Lunak', 1),
('12RPL2', 12, 'Rekayasa Perangkat Lunak', 2),
('12TBG1', 12, 'Tata Boga', 1),
('12TBG2', 12, 'Tata Boga', 2),
('12TBS1', 12, 'Tata Busana', 1),
('12TBS2', 12, 'Tata Busana', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `NIS` int(11) NOT NULL,
  `kodeKelas` varchar(10) DEFAULT NULL,
  `nama` varchar(30) NOT NULL,
  `kelamin` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`NIS`, `kodeKelas`, `nama`, `kelamin`) VALUES
(2185, '11UPW', 'Muhammad Akhbar Ramadhan', 'L'),
(6508, '12PH1', 'Anjas Mara', 'L'),
(6735, '12RPL1', 'Abdulloh', 'L'),
(6736, '12PH2', 'Achmad Fadillah Moeslem', 'L'),
(6737, '12TBG1', 'Achmad Rizky Rhamadan', 'L'),
(6739, '12TBG2', 'Adinda Yulia Dwiyanti', 'P'),
(6740, '12RPL1', 'Adriel Marcel Geraldo', 'L'),
(6741, '12PH1', 'Afifah Ramadhantie', 'P'),
(6742, '12RPL2', 'Ahmad Al Desrahim', 'L'),
(6743, '12RPL2', 'Ahmad Kahfi', 'L'),
(6744, '12RPL2', 'Ahmad Muwaffaq', 'L'),
(6745, '12TBG1', 'Akmal Hidayat Pleyte', 'L'),
(6746, '12RPL1', 'Aldy Syachranie', 'L'),
(6747, '12RPL1', 'Alfa Marchel', 'L'),
(6748, '12TBG1', 'Alivia Asyrifatul Azifah', 'P'),
(6749, '12RPL1', 'Alivia Khusnul Khotimah', 'P'),
(6750, '12TBG1', 'Alviani Dwi Savitri', 'P'),
(6751, '12TBG2', 'Amelia Rinjani', 'P'),
(6752, '12TBG2', 'Ananda Galuh Liani', 'P'),
(6754, '12TBS2', 'Anggi Nur Oktaviani', 'P'),
(6755, '12TBG1', 'Anggita Indriyanti', 'P'),
(6756, '12TBG2', 'Anika Marina Sirtis', 'P'),
(6757, '12PH2', 'Anita Hafila Nugraeni', 'P'),
(6758, '12TBS1', 'Annisa Roro Widyasrini', 'P'),
(6759, '12TBG1', 'Arien Alen Sucahyo', 'P'),
(6760, '12RPL2', 'Arif Pradana', 'L'),
(6761, '12RPL1', 'Aris Ardiyanto', 'L'),
(6762, '12TBS2', 'Arum Setianingrum', 'P'),
(6763, '12RPL1', 'Arya Dharma Dwiputera', 'L'),
(6764, '12TBS1', 'Asahya Fairuz Dhahwah', 'P'),
(6765, '12RPL2', 'Asep Parhan', 'L'),
(6766, '12TBS1', 'Astri Indriani', 'P'),
(6767, '12RPL2', 'Asyam Ahmad Ramadhan', 'L'),
(6768, '12RPL2', 'Augdri Alif Arthavafeda', 'L'),
(6769, '12TBS2', 'Aulia Farra Pratiwi', 'P'),
(6770, '12TBS2', 'Aulia Vebri Clania', 'P'),
(6771, '12TBS1', 'Aurel Salvadila Latansya', 'P'),
(6772, '12PH1', 'Aviliani Septiana', 'P'),
(6773, '12TBS1', 'Ayu Afriani', 'P'),
(6774, '12TBS2', 'Ayu Komala Dewi', 'P'),
(6775, '12PH1', 'Ayu Lestari', 'P'),
(6776, '12PH2', 'Bagas Fajar Pradipta', 'L'),
(6777, '12RPL2', 'Beliza Nurmareta', 'P'),
(6778, '12TBS2', 'Bella Widyawati', 'P'),
(6779, '12TBS2', 'Birry Dinda Rabi\'ah Tsania', 'P'),
(6780, '12PH2', 'Bunga Chintya', 'P'),
(6782, '12TBG2', 'Cahya Wulandari Puspa Ningrum', 'P'),
(6783, '12PH1', 'Chandra Aditiya', 'L'),
(6784, '12TBG2', 'Chastuti Kasanah', 'P'),
(6785, '12TBG2', 'Christi Febry Linawati', 'P'),
(6786, '12TBG1', 'Christoforus Abimanyu Ramadya', 'L'),
(6787, '12PH2', 'Dafina Mawaddah Salsabilla', 'P'),
(6788, '12RPL2', 'Damar Anggoro Hermawan', 'L'),
(6789, '12RPL1', 'Danang Bagus Yuliansyah', 'L'),
(6790, '12RPL1', 'Daniel Nomensen Sidauruk', 'L'),
(6791, '12PH1', 'David Haryo Saputro', 'L'),
(6792, '12RPL2', 'Dendy Sapto Adi', 'L'),
(6793, '12PH2', 'Deniza Dwi Andrea', 'P'),
(6794, '12TBG1', 'Devi Damayanti', 'P'),
(6796, '12TBG2', 'Diah Utami', 'P'),
(6797, '12TBS1', 'Diana Rohmah Larasati', 'P'),
(6798, '12TBG1', 'Diani Arviana Jaya', 'P'),
(6799, '12PH2', 'Dinda Hafifah', 'P'),
(6800, '12TBG1', 'Diyah Cahya Ningrum', 'P'),
(6801, '12PH1', 'Dolce Tromboni', 'P'),
(6802, '12PH1', 'Dosma Sherina Ramawaty', 'P'),
(6803, '11PH2', 'Dwi Liora Vedra', 'P'),
(6804, '12PH2', 'Eka Aulia Putri', 'P'),
(6805, '12TBS2', 'Elena Juniyanti', 'P'),
(6806, '12PH1', 'Elyana Febianingsih', 'P'),
(6807, '12TBS2', 'Erika', 'P'),
(6809, '12TBG1', 'Evi Suryani', 'P'),
(6810, '12RPL2', 'Fadly Dermawan', 'L'),
(6811, '12TBG2', 'Fahri Fathin Muhaimin', 'L'),
(6812, '12RPL1', 'Farid Setiawan', 'L'),
(6813, '12TBS1', 'Fathia Syafa Azzahra', 'P'),
(6814, '12PH1', 'Ferdiansyah', 'L'),
(6816, '12RPL1', 'Fitri Asiska', 'P'),
(6817, '12TBS1', 'Fitri Zahra Ikanov', 'P'),
(6818, '12TBS2', 'Fitriani Hasanah', 'P'),
(6819, '12RPL2', 'Galih Qisthi Aji', 'L'),
(6820, '12PH1', 'Gandasari Al Bilqys', 'P'),
(6821, '12TBG2', 'Garin Qoyyum Amri', 'L'),
(6822, '12RPL2', 'Genandra Arrafhi', 'L'),
(6823, '12TBS2', 'Granita Putri Azizah', 'P'),
(6824, '12PH2', 'Hafizh Satya Wibowo', 'L'),
(6826, '12TBG2', 'Hakimah Attamimi', 'P'),
(6828, '12PH1', 'Hosea Hariyanto', 'L'),
(6829, '12TBS1', 'Hulwah', 'P'),
(6830, '12RPL1', 'Ibnu Aji Pratama', 'L'),
(6831, '12TBS1', 'Ice Helawati', 'P'),
(6832, '11PH1', 'Igo Mercusuargo', 'L'),
(6833, '12TBS1', 'Ika Marwah Maulani', 'P'),
(6834, '12TBS1', 'Iken Yuniar', 'P'),
(6835, '12RPL1', 'Ikhsan Abdillah', 'L'),
(6836, '12RPL1', 'Imanuel Simamora', 'L'),
(6837, '12RPL2', 'Imih Mintarsih', 'P'),
(6838, '12PH1', 'Indriani Putri Asmoro', 'P'),
(6839, '12TBG1', 'Indrianisa', 'P'),
(6840, '12TBG2', 'Inggil Elica Diva Maura', 'P'),
(6841, '12PH1', 'Irma Rusmarhadi', 'P'),
(6842, '12RPL2', 'Irsyad Nayoan', 'L'),
(6845, '12TBS1', 'Iswah Azizah', 'P'),
(6846, '12RPL1', 'Ivan Gabriel ', 'L'),
(6847, '12PH1', 'Ivana Legianesti Febriane', 'P'),
(6848, '11PH2', 'Izhar Ismail Dano Dasim', 'L'),
(6850, '12PH1', 'Jasmine Kharimah Putri', 'P'),
(6851, '12TBG1', 'Jesyifa Prianka Juhanda', 'P'),
(6852, '12PH1', 'Jhon Andre Jhosua Mangiring Na', 'L'),
(6853, '12TBS1', 'Jihan Apriliyani', 'P'),
(6854, '12TBS2', 'Judith Amalia', 'P'),
(6855, '12TBG1', 'Krisanty Indria Rahmayani', 'P'),
(6856, '12TBG2', 'Labay Maajid Arief Muhammad', 'L'),
(6857, '12TBG1', 'Liza Zadyla', 'P'),
(6858, '12PH1', 'Lolita Putri Purbasari', 'P'),
(6859, '12PH2', 'Lora Arista Nadeak', 'P'),
(6860, '12TBG2', 'Lulu Nur Izzatillah', 'P'),
(6861, '12TBG1', 'Lutfi Dwi Yuwono', 'L'),
(6863, '12RPL1', 'Malik Ilman Nafia', 'L'),
(6864, '12TBS2', 'Maradina Tiwi Nursahaya', 'P'),
(6865, '12PH2', 'Maulida Rahma Dyani', 'P'),
(6866, '12TBS1', 'Mega Dwi Arsyi', 'P'),
(6867, '12PH2', 'Miftahul Kariim Ashari', 'L'),
(6868, '12PH1', 'Miftha Aulia Fajriani', 'P'),
(6869, '12TBG2', 'Mochammad Ramdani', 'L'),
(6870, '12RPL2', 'Mohamad Rizky Rezaldi', 'L'),
(6872, '12PH1', 'Muhamad  Aldi Widiyanto', 'L'),
(6873, '12RPL1', 'Muhammad Abdur Rofi Maulidin', 'L'),
(6875, '12PH2', 'Muhammad Alfian Hakim', 'L'),
(6876, '12RPL2', 'Muhammad Dwi Adji Muis', 'L'),
(6877, '12RPL1', 'Muhammad Fadhilah Ramadhan', 'L'),
(6878, '12RPL2', 'Muhammad Fahmi Hidayat', 'L'),
(6879, '12RPL2', 'Muhammad Farhan Adib Naufal', 'L'),
(6880, '11PH2', 'Muhammad Fariz Fairuza Hadi', 'L'),
(6881, '12RPL1', 'Muhammad Januar', 'L'),
(6882, '12RPL1', 'Muhammad Raihan Nabawy', 'L'),
(6883, '12PH2', 'Muhammad Reza Fahlevi', 'L'),
(6884, '12RPL2', 'Muhammad Sya\'ban Maulana', 'L'),
(6885, '11PH1', 'Mukhammad Alif Khadafi', 'L'),
(6886, '12TBS2', 'Mutia Ajeng Safitri', 'P'),
(6887, '12TBG2', 'Nabila Sekar Larasati', 'P'),
(6888, '12PH2', 'Nabillah Putri Oktavia', 'P'),
(6889, '12TBG2', 'Nadia Herdiyanti', 'P'),
(6890, '12TBG1', 'Nadia Octaviani', 'P'),
(6891, '12PH2', 'Nadiah Pusparini', 'P'),
(6893, '12TBS2', 'Neysa Salsa Billah', 'P'),
(6894, '12TBS1', 'Normalinda Nur Indah Meliani', 'P'),
(6895, '12TBS2', 'Novia Nurul Annisa', 'P'),
(6896, '12TBS1', 'Novianti Sisway', 'P'),
(6897, '12TBG2', 'Nur Fadiyah', 'P'),
(6898, '12TBS2', 'Nur Faiza', 'P'),
(6899, '12PH2', 'Nur Fiqih Mary Panggayani', 'P'),
(6900, '12PH1', 'Nur Dalilah', 'P'),
(6901, '12PH1', 'Nurhabib Abdul Jalal', 'L'),
(6902, '12TBG1', 'Nurul Kaunain Fitria', 'P'),
(6903, '12TBS2', 'Nurul Srikandini', 'P'),
(6904, '12TBS2', 'Nuzulul Inayah', 'P'),
(6905, '12TBG1', 'Owen Fernando', 'L'),
(6906, '12RPL1', 'Paksi Tamtomo Aji', 'L'),
(6908, '12RPL2', 'Prahar Dian Laksono', 'L'),
(6909, '12PH2', 'Pinkan Rosdayanti', 'P'),
(6911, '12RPL1', 'Prayugo Mardjono', 'L'),
(6912, '12TBG2', 'Puspita Anggraeni', 'P'),
(6913, '12PH2', 'Putri Allyawati Ayuningtyas', 'P'),
(6914, '12TBS2', 'Putri Eka Pinangsih', 'P'),
(6915, '12TBS2', 'Putri Sendi Sabrina', 'P'),
(6916, '12TBS1', 'Qori Khodijah Faridl', 'P'),
(6918, '12RPL1', 'Rachma Adzima Maulida', 'P'),
(6919, '12RPL2', 'Rafli Aprizal', 'L'),
(6920, '12TBG2', 'Rahmi Fitriani', 'P'),
(6921, '12RPL1', 'Rahul Anwar', 'L'),
(6922, '12TBS2', 'Ranandia Salsabila', 'P'),
(6923, '12TBG1', 'Ranata Silvia', 'P'),
(6924, '12TBG2', 'Ratih Latifah', 'P'),
(6925, '12TBS1', 'Ratna Duhita', 'P'),
(6926, '12TBG1', 'Ratu Hurril Iyn', 'P'),
(6927, '12TBS1', 'Ravita Faris', 'P'),
(6928, '12TBG1', 'Rayya Dwi Puji Fajriany', 'P'),
(6929, '12TBG2', 'Regita Yuliana', 'P'),
(6930, '12TBG2', 'Rendra Dharma Wijaya', 'L'),
(6931, '12PH2', 'Rendra Firjatuloh', 'L'),
(6932, '12RPL2', 'Reni', 'P'),
(6933, '12TBG2', 'Rere Rizky Aryandi', 'L'),
(6934, '12TBS2', 'Resha Dwi Yulianti', 'P'),
(6935, '12TBG1', 'Ribka Mega Putri', 'P'),
(6936, '12TBS1', 'Rikhavierty Anggraini Darmawan', 'P'),
(6937, '12PH1', 'Rio Ahmadi', 'L'),
(6938, '12PH1', 'Riri Dwi Saputri', 'P'),
(6939, '12TBS2', 'Rita Farida Sabatini', 'P'),
(6940, '12RPL2', 'Rizky Fadhilla', 'L'),
(6941, '12RPL1', 'Rizky Ramadhan', 'L'),
(6942, '12RPL2', 'Rizqi Ramadhan', 'L'),
(6943, '12TBS1', 'Roro Ambar Fitrianingsih', 'P'),
(6944, '12TBS1', 'Rosa Nurmala Sari', 'P'),
(6945, '12TBG1', 'Ruth Kezia Seren', 'P'),
(6946, '12TBS2', 'Ruth Septiana', 'P'),
(6947, '12TBG1', 'Salsabillah', 'P'),
(6948, '12TBG2', 'Salsabilla Haniyah', 'P'),
(6949, '12TBG2', 'Sandy Kusuma Wijaya', 'L'),
(6950, '12TBS2', 'Sarah Rachel Rhaditya', 'P'),
(6951, '12RPL1', 'Satrio Pambudhi Ashideanto', 'L'),
(6952, '12TBS1', 'Savira Aby Irtanti', 'P'),
(6953, '12RPL2', 'Sella Aprita Saneti', 'P'),
(6954, '12PH2', 'Sephia Nur Fikria', 'P'),
(6955, '12PH2', 'Setiyo Aji Utomo', 'L'),
(6956, '12PH2', 'Shafa Salsabillah', 'P'),
(6957, '12TBS1', 'Shafara Salsabila', 'P'),
(6958, '12TBG2', 'Shela Rahmawati', 'P'),
(6959, '12TBS2', 'Sherly Gabriela', 'P'),
(6960, '12TBG1', 'Shevira Gita Dewi', 'P'),
(6961, '12RPL1', 'Shinta Damayanti', 'P'),
(6962, '12RPL1', 'Sholahuddin Al Ayyubi', 'L'),
(6963, '12TBG1', 'Siti Maisyara Dilla Pratama', 'P'),
(6964, '12TBS2', 'Siti Nadhilah', 'P'),
(6965, '12TBG2', 'Siti Wahyuningsih', 'P'),
(6966, '12PH1', 'Siti Yunia Nur Fathonah', 'P'),
(6967, '12TBS1', 'Sofwatunnisa', 'P'),
(6968, '12TBG2', 'Sulvia Aisyah Amimi', 'P'),
(6969, '12RPL1', 'Syahrul Sofyan Nurdiansyah', 'L'),
(6970, '12PH2', 'Tarysa Aulia Rachma', 'P'),
(6971, '12PH2', 'Tasya Belinda Putri', 'P'),
(6972, '12TBS2', 'Trie Anjar Prameshti', 'P'),
(6973, '12TBS1', 'Ulya Firdausi Husniyah', 'P'),
(6974, '12TBS1', 'Vierari Amalia Rizki', 'P'),
(6975, '12PH2', 'Wahyu Ari Ramadhani', 'L'),
(6976, '12RPL2', 'Wahyudi Lutfi', 'L'),
(6977, '12TBG2', 'Wardatum Toybah', 'P'),
(6978, '12TBS1', 'Warningsih', 'P'),
(6979, '12PH1', 'Windi Anggraini', 'P'),
(6980, '12PH2', 'Windi Widiana', 'P'),
(6981, '12RPL2', 'Yoga Bayu Samudra', 'L'),
(6982, '12TBG1', 'Yuni Rahayu', 'P'),
(6983, '12RPL2', 'Yusuf Eko Anggoro', 'L'),
(6984, '12PH1', 'Zakaria Indra Hasiholan Purba', 'L'),
(6985, '12RPL1', 'Andreas Maruli Hutajulu', 'L'),
(6986, '11TBG3', 'Adellya Putri Maharani', 'P'),
(6987, '11TBG2', 'Adhisty Zahrahni Adrianto', 'P'),
(6988, '11TBG1', 'Adinda Putri Egi Salsabillah', 'P'),
(6989, '11TBG2', 'Adinda Yulia Rahmawati', 'P'),
(6990, '11TBG2', 'Afifah Ainiyyah', 'P'),
(6991, '11PH1', 'Afyra Ar\'bah Lailany', 'P'),
(6992, '11TBG2', 'Agil Sepviananda Azizah', 'P'),
(6993, '11TBG3', 'Agung Galih Witjaksono', 'L'),
(6994, '11TBS2', 'Aisyah Dzakiyah Amalia', 'P'),
(6995, '11PH2', 'Akbar Umarruari', 'L'),
(6996, '11RPL2', 'Alandra Nazahah', 'L'),
(6997, '11TBG2', 'Alfina Nur Firdaus', 'P'),
(6998, '11TBS1', 'Alfina Septianing', 'P'),
(6999, '11TBG3', 'Alif Ammar Baihaqi', 'L'),
(7000, '11TBS1', 'Alifah Azzahra', 'P'),
(7001, '11TBG1', 'Almujidan ', 'L'),
(7002, '11PH2', 'Alvian Dwi Handika', 'L'),
(7003, '11RPL2', 'Alvin Bintang Adyaksa', 'L'),
(7005, '11TBG1', 'Amalia Marviansyah', 'P'),
(7006, '11PH1', 'Amanda Anindika Febrianti', 'P'),
(7007, '11TBG1', 'Amanda Putri Wibowo', 'P'),
(7008, '11PH2', 'Amelia Nurul Haq', 'P'),
(7009, '11UPW', 'Andreas Enggar Dewanto', 'L'),
(7010, '11UPW', 'Andriyanto', 'L'),
(7012, '11TBG2', 'Anggito Abimayu', 'L'),
(7013, '11TBG3', 'Anggriani Iskandar Putri', 'P'),
(7014, '11PH2', 'Anisa Nuryanti', 'P'),
(7015, '11PH1', 'Anisa Septariani', 'P'),
(7016, '11TBS3', 'Anissa Azzahra', 'P'),
(7017, '11TBS3', 'Anisya Harum Dwi Saputri', 'P'),
(7018, '11TBS2', 'Anjani Putri Ashari', 'P'),
(7019, '11TBS2', 'Annisa Mubarokah', 'P'),
(7020, '11TBS3', 'Annisa Nuraeni', 'P'),
(7021, '11TBS2', 'Annisa Pratama', 'P'),
(7022, '11RPL1', 'Annisa Uswatun Hasanah', 'P'),
(7023, '11TBS1', 'Annisya Larasati Ningrum', 'P'),
(7024, '11PH3', 'Antika Adela', 'P'),
(7025, '11PH3', 'Aprilia Sri', 'P'),
(7026, '11PH1', 'Aprilyani Rasidy', 'P'),
(7027, '11RPL2', 'Ardy Permana Putra', 'L'),
(7029, '11TBS1', 'Arini Nurfadilah', 'P'),
(7030, '11RPL1', 'Ariq Humam Fadilah ', 'L'),
(7031, '11TBS3', 'Arum Fitria', 'P'),
(7032, '11TBG3', 'Astrid Ananda', 'P'),
(7033, '11PH1', 'Aurelia Marcelina', 'P'),
(7034, '11TBG2', 'Avida Nurzara', 'P'),
(7035, '11RPL1', 'Awaludin Taufiq Nurrohman', 'L'),
(7036, '12TBG1', 'Azzahra Nabilla', 'P'),
(7037, '11TBS2', 'Azzahra Nasya Ananda', 'P'),
(7038, '11TBG2', 'Bagas Ilhamsyah', 'L'),
(7039, '11RPL2', 'Bayu Prawira Yudha', 'L'),
(7040, '11RPL1', 'Bayu Samodera ', 'L'),
(7041, '11PH3', 'Bima Aji Saputra', 'L'),
(7043, '11RPL2', 'Bobby Hindratno Pratomo', 'L'),
(7044, '11UPW', 'Bulan Pebi Utami ', 'P'),
(7045, '11UPW', 'Bunga Aira Nandhitia', 'P'),
(7046, '11TBG2', 'Bunga Cantika', 'P'),
(7047, '11TBS2', 'Bunga Delia Anggraeni', 'P'),
(7048, '11TBG1', 'Burhan Nudin', 'L'),
(7049, '11TBS2', 'Cantika Fitrianisa', 'P'),
(7050, '11TBG1', 'Carisa Vilia', 'P'),
(7051, '11PH1', 'Caroline Elva Cahniati', 'P'),
(7052, '11RPL1', 'Christover Deon ', 'L'),
(7053, '11TBS3', 'Cindy Putri Patisari', 'P'),
(7054, '11TBG3', 'Ciquita Medi', 'P'),
(7055, '11UPW', 'Citra Pricylia Ananda Mulya', 'P'),
(7056, '11TBG1', 'Clara Dewi Yusufi ', 'P'),
(7057, '11TBS1', 'Cristine Yuniarta', 'P'),
(7058, '11TBG2', 'Dania Safira ', 'P'),
(7059, '11TBS3', 'Danti Prihatini', 'P'),
(7060, '11TBG1', 'Davinsa Rizqi Alvatonny', 'L'),
(7061, '11PH1', 'Dea Apriliya', 'P'),
(7062, '11TBS2', 'Dea Veramita', 'P'),
(7063, '11PH3', 'Dejan Fadilahsyah', 'L'),
(7064, '11TBS2', 'Della Amelia', 'P'),
(7065, '11RPL1', 'Dennis Fathurahman', 'L'),
(7067, '11TBG1', 'Devi Rahmadini', 'P'),
(7068, '11PH3', 'Dewi Farida', 'P'),
(7069, '11TBS1', 'Dhea Puspitasari', 'P'),
(7070, '11TBS3', 'Diah Ayu Larasati', 'P'),
(7071, '11TBS3', 'Diah Swastika', 'P'),
(7072, '11TBS1', 'Dian Noor Syamsiah', 'P'),
(7073, '11TBG3', 'Diana Yus Hajita', 'P'),
(7074, '10PH3', 'Dicky Al Fahzri', 'L'),
(7075, '11TBG2', 'Dikky Ridho Saputro', 'L'),
(7076, '11RPL1', 'Dimas Triyana', 'L'),
(7077, '11RPL2', 'Dinda Septia Fachrani', 'P'),
(7078, '11PH2', 'Dionisia Ursula Veso', 'P'),
(7079, '11TBG3', 'Dita Rizky Ramadina', 'P'),
(7080, '11PH2', 'Dita Setiani', 'P'),
(7081, '11UPW ', 'Diva Putri Syafila', 'P'),
(7082, '11UPW ', 'Dolven Putri Intan Sari Junaed', 'P'),
(7084, '11TBS2', 'Dwi Retno Hutami', 'P'),
(7085, '11PH3', 'Dzikra Putri Hidayah Siregar', 'P'),
(7086, '11TBG2', 'Dzikry Hisyam Noor ', 'L'),
(7087, '11PH2', 'Eka Elisa Putri', 'P'),
(7088, '11RPL1', 'Eko Wahyudi ', 'L'),
(7089, '11TBG3', 'Elia Frederick Ayal', 'L'),
(7090, '11PH2', 'Eliam Lola Mitasari', 'P'),
(7091, '11TBG1', 'Elis Ermawati', 'P'),
(7092, '11TBG3', 'Elisabet Helenita', 'P'),
(7093, '11TBG3', 'Elisiyah Rahmah', 'P'),
(7094, '11RPL1', 'Eliza Raema Julia', 'P'),
(7095, '11TBG2', 'Elsa Arshanda', 'P'),
(7096, '11PH2', 'Erik Fadillah', 'L'),
(7097, '11PH1', 'Erika Enjeli Nur Bhaiti', 'P'),
(7098, '11PH1', 'Erlina Rahma Wati', 'P'),
(7099, '11RPL1', 'Erzam Juilfa Visandi', 'L'),
(7100, '11TBS3', 'Esti Yulaihah', 'P'),
(7101, '11PH2', 'Evry Giovani', 'L'),
(7102, '11RPL2', 'Fadida Zanetti Junaedy', 'L'),
(7104, '11RPL1', 'Fadli Fadlorrohman', 'L'),
(7105, '11TBS2', 'Fahira Nisa', 'P'),
(7106, '11TBG2', 'Fahrozi Fritama Putra', 'L'),
(7107, '11PH1', 'Faiz Athaullah', 'L'),
(7108, '11RPL2', 'Falah As Shidqi', 'L'),
(7109, '11TBG1', 'Faraditha Kuntari Dewi', 'P'),
(7110, '10TBS1', 'Farah Aulia Zahira', 'P'),
(7111, '11UPW ', 'Fathia Noor Kamilah', 'P'),
(7112, '11TBG3', 'Fatya Oksania', 'P'),
(7114, '11TBS3', 'Faza Amalia', 'P'),
(7115, '11TBS2', 'Febriana Cahyaningrum', 'P'),
(7116, '11TBG2', 'Febrina Permata Sari Regardo', 'P'),
(7117, '11TBS3', 'Febriyanti Ratu Ajeng Arsetya', 'P'),
(7118, '11PH2', 'Ferdinan Nugraha Silaen', 'L'),
(7119, '11PH1', 'Fiiryal Az Zahra', 'P'),
(7120, '11PH1', 'Firda Zahra Indirawati', 'P'),
(7121, '11TBS3', 'Fitridasti Ning Tiyas', 'P'),
(7122, '11PH3', 'Fitriyah Rahmawati', 'P'),
(7124, '11RPL1', 'Gading Rianto Alamsyah', 'L'),
(7125, '11RPL2', 'Ganta Dwi Arya Nugraha', 'L'),
(7126, '11UPW ', 'Gladys Thalia Ricci', 'P'),
(7127, '11TBS1', 'Hanifah Utami Mufidayanti', 'P'),
(7129, '11PH3', 'Hayfa Aliffira Sutiyoso', 'P'),
(7130, '11PH1', 'Heca Fitria Daniaty', 'P'),
(7131, '11TBS2', 'Helin Risma Elvariani', 'P'),
(7132, '11TBG2', 'Helmi Fahri ', 'L'),
(7133, '11PH2', 'Henryco Paul Johanes', 'L'),
(7134, '11TBS1', 'Herlina', 'P'),
(7135, '11RPL2', 'Iim Muhaemin Abdul Azis', 'L'),
(7136, '11TBS3', 'Iin Nuraeni', 'P'),
(7137, '10PH2', 'Ilhan Sukma Manzis', 'L'),
(7138, '11PH3', 'Ilmi Aisyah Ramadhani', 'P'),
(7140, '11TBG3', 'Indah Aprilia Amanda', 'P'),
(7141, '11PH2', 'Indah Febrianti', 'P'),
(7142, '11TBS2', 'Indah Putri Kusuma', 'P'),
(7143, '11TBG1', 'Indah Rajabiah', 'P'),
(7144, '11PH3', 'Indri Nurmasari', 'P'),
(7145, '11TBG2', 'Ines Syifa Kusumawati', 'P'),
(7146, '11TBG1', 'Intan Aidha Putri', 'P'),
(7147, '11TBS1', 'Irene Klesia', 'P'),
(7148, '11TBS1', 'Irma Fitriana', 'P'),
(7149, '11TBG1', 'Irmawati', 'P'),
(7150, '11RPL1', 'Irnanda Rizka Fadhillah', 'L'),
(7151, '11PH1', 'Ismail Fanil', 'L'),
(7153, '11TBS2', 'Jasmine Kania Padmarani', 'P'),
(7154, '11PH3', 'Jihan Yasmin Sy', 'P'),
(7155, '11TBG3', 'Jihan Zakyyah', 'P'),
(7156, '11RPL1', 'Juanysa Wahyu Trisfardha', 'P'),
(7157, '11TBS3', 'Jubaidah', 'P'),
(7159, '11TBS3', 'Kania Dwi Putri', 'P'),
(7160, '11TBG3', 'Karina Handayani', 'P'),
(7161, '11UPW ', 'Karina Putri Nabila', 'P'),
(7162, '11TBS1', 'Karlina Rizqi Lestari', 'P'),
(7163, '11UPW ', 'Karlita Nur Aisyah', 'P'),
(7164, '11TBG1', 'Kayla Shafa Alamtaqwa', 'P'),
(7165, '11RPL1', 'Kevin Naufal Zacky ', 'L'),
(7166, '11PH2', 'Kezia Helen Sthevani Sagala', 'P'),
(7167, '11TBS1', 'Kezia Redicha Dwi Indah Putri', 'P'),
(7168, '11UPW ', 'Khaeriyah', 'P'),
(7169, '11TBG3', 'Khalisha Sarah An-Najmi', 'P'),
(7170, '11TBG1', 'Khoirunnisa Wijaya', 'P'),
(7171, '11PH1', 'Khrismonica Widayanto Putri', 'P'),
(7172, '11RPL1', 'Khusnul Khotimah ', 'P'),
(7173, '11TBS1', 'Lasmiyanti', 'P'),
(7174, '11TBS2', 'Leni Tirta Pratiwi', 'P'),
(7175, '11PH3', 'Lintang Alviandini', 'P'),
(7176, '11TBG3', 'Lintang Ayu Fatimah ', 'P'),
(7177, '11TBS3', 'Lita Sugianti', 'P'),
(7178, '11PH2', 'Lourencia Zefanya', 'P'),
(7179, '11TBS2', 'Lu\'luk Endah Tri Farikha', 'P'),
(7180, '11TBS1', 'Lusiana Maria', 'P'),
(7181, '11PH1', 'Mahendra Kusuma', 'L'),
(7182, '11PH2', 'Margareta Elviana Rona', 'P'),
(7183, '11TBS1', 'Maria Teresia Purnama', 'P'),
(7184, '11UPW ', 'Maria Theresia Waleng Emar ', 'P'),
(7185, '11PH1', 'Marshella Artha Dewani', 'P'),
(7186, '11TBS2', 'Marsya Dela Artanti', 'P'),
(7187, '11TBG2', 'Marsyila Kharisma', 'P'),
(7188, '11TBS1', 'Martha Leony Turnip', 'P'),
(7189, '11UPW', 'Maudi Putri Syalmanda', 'P'),
(7190, '11RPL2', 'Maulana Gani Fasha ', 'L'),
(7191, '11PH3', 'Maulana Hafizh', 'L'),
(7192, '11PH2', 'Maulana Syaiful Anwar', 'L'),
(7193, '11RPL1', 'Maya Maulinda', 'P'),
(7194, '11UPW ', 'Maya Nur Isna', 'P'),
(7195, '11TBS3', 'Maylisa Putri Widya', 'P'),
(7196, '11PH1', 'Meidy Elliana', 'P'),
(7197, '11TBS1', 'Mita Agustin', 'P'),
(7198, '11TBS3', 'Mitha Dwi Fadila', 'P'),
(7199, '11PH1', 'Mohamad Dzidane Pandawa', 'L'),
(7200, '11PH2', 'Monita Mustamu', 'P'),
(7203, '11RPL2', 'Muhamad Fajar Yusuf', 'L'),
(7204, '11PH1', 'Muhamad Fareji', 'L'),
(7205, '11RPL2', 'Muhamad Fikri Surya Adita', 'L'),
(7206, '11RPL2', 'Muhamad Satria Rizdiansyah', 'L'),
(7209, '11UPW ', 'Mohamad Zuhair Firdaus', 'L'),
(7210, '11PH3', 'Muhammad Ashtaf Faathir', 'L'),
(7211, '11RPL1', 'Muhammad Bima Aditya Prabowo', 'L'),
(7212, '11RPL2', 'Muhammad Cahya Prima Bastanta ', 'L'),
(7214, '11PH1', 'Muhammad Faris Abdusami', 'L'),
(7215, '11RPL1', 'Muhammad Fikry', 'L'),
(7216, '11PH2', 'Muhammad Helmi Ramadhan', 'L'),
(7217, '11PH2', 'Muhammad Irham Syah', 'L'),
(7218, '11RPL1', 'Muhammad Raihan', 'L'),
(7219, '11TBG3', 'Muhammad Rendy Pratama', 'L'),
(7222, '11PH3', 'Muhammad Rizky Julianto', 'L'),
(7223, '11TBS2', 'Murdiani Ramadhani', 'P'),
(7224, '11RPL2', 'Musyarofah', 'P'),
(7225, '11TBG2', 'Muthia Aulia Shafiyyah', 'P'),
(7226, '11PH1', 'Mutiara', 'P'),
(7227, '11UPW ', 'Nabila', 'P'),
(7228, '11TBG1', 'Nabila Alya Syaninta', 'P'),
(7229, '11PH2', 'Nabila Caprilia', 'P'),
(7230, '11TBS3', 'Nabila Syahrani', 'P'),
(7231, '11UPW ', 'Nabila Zahra Hirmawan', 'P'),
(7232, '11TBS1', 'Nabilla Muchti Tehuayo', 'P'),
(7233, '11UPW ', 'Nadia Amalia Salsabila', 'P'),
(7234, '11TBG2', 'Nadila Arisanti', 'P'),
(7236, '11TBG1', 'Nadya Azzahra Putri', 'P'),
(7237, '11PH1', 'Nail Aldiaz', 'L'),
(7238, '11UPW ', 'Naldo Kevin', 'L'),
(7239, '11PH3', 'Nanda Ajeng Sekar Ayu', 'P'),
(7240, '11PH1', 'Nanda Putri', 'P'),
(7241, '11PH2', 'Naomi Alissa', 'P'),
(7242, '11TBG2', 'Naufal Rifqi Fairuzamily', 'L'),
(7243, '11PH3', 'Nazla Regina Santoso', 'P'),
(7244, '11TBG2', 'Neesha Aurelia', 'P'),
(7245, '11UPW ', 'Nia Novianti', 'P'),
(7246, '11TBG2', 'Nina Audina', 'P'),
(7248, '11PH3', 'Novia', 'P'),
(7249, '11PH3', 'Novia Shabana Lestari', 'P'),
(7250, '11TBG1', 'Novia Suciyanti', 'P'),
(7251, '11TBG1', 'Noviana Nur Arifah', 'P'),
(7252, '11TBG3', 'Novilia', 'P'),
(7253, '11TBS2', 'Novita Rizki', 'P'),
(7254, '11TBG1', 'Novitasari', 'P'),
(7255, '11PH3', 'Nur Annisa', 'P'),
(7256, '11PH3', 'Nur Aviza Piscellya Riyandini', 'P'),
(7257, '11TBS1', 'Nur Azizah', 'P'),
(7258, '11PH2', 'Nur Fathonah Zahra', 'P'),
(7259, '11TBS3', 'Nur Hafifah', 'P'),
(7260, '11PH1', 'Nur Hamidah', 'P'),
(7262, '11TBG1', 'Nur Rizqi Ramadhony', 'L'),
(7264, '11TBS1', 'Nurhasanah', 'P'),
(7265, '11PH3', 'Nuri Hudawan', 'L'),
(7266, '11TBG2', 'Nurul Rahmah Savitri', 'P'),
(7267, '11UPW ', 'Nurul Tiara Ananda', 'P'),
(7268, '11TBS3', 'Oktafiyana Putri', 'P'),
(7269, '11RPL1', 'Oswald Christian', 'L'),
(7270, '11TBG3', 'Prayoga Aji Pangestu', 'L'),
(7271, '11TBG1', 'Prisa Oktaviana Priatna Putri ', 'P'),
(7272, '11TBS2', 'Puang Nurul Askarani', 'P'),
(7273, '11TBS2', 'Puji Salsabila Sarah', 'P'),
(7274, '11TBG2', 'Puspa Legi Widiyastuti', 'P'),
(7275, '11PH3', 'Putri Aulia Ramaddini', 'P'),
(7276, '11UPW ', 'Putri Ayu Sisilia Augustin', 'P'),
(7277, '11UPW ', 'Putri Sagita', 'P'),
(7278, '11RPL2', 'Putri Septiyani', 'P'),
(7279, '11TBG2', 'Qintan Virlee Rayana', 'P'),
(7280, '11UPW ', 'Qonita Fayza Yusuf', 'P'),
(7281, '11UPW ', 'Rachel Kristina Sitohang ', 'P'),
(7282, '11RPL2', 'Rachmat Hidayat Insani', 'L'),
(7284, '11PH1', 'Rafly Hartoyo', 'L'),
(7285, '11TBG1', 'Rahma Wati', 'P'),
(7286, '11TBS2', 'Rahmawati Dewi', 'P'),
(7287, '11TBS3', 'Rahmawati Mawadah', 'P'),
(7288, '11RPL2', 'Raihan Firmani Nasution', 'L'),
(7289, '11UPW ', 'Raka Alvian', 'L'),
(7290, '11RPL2', 'Rama Saputra', 'L'),
(7291, '11TBG3', 'Ranti Sukma Pratiwi', 'P'),
(7292, '11TBG2', 'Ratri Pramudita', 'P'),
(7293, '11TBG3', 'Reni Setiawati', 'P'),
(7294, '11TBG2', 'Rere Sabrina Sinaed', 'P'),
(7295, '11RPL2', 'Revana Evilia Tandon', 'P'),
(7296, '11PH1', 'Revin Fahreza', 'L'),
(7297, '11RPL2', 'Reynaldi Septian Dwiyanto', 'L'),
(7299, '11RPL2', 'Ridho Bayu Prihatmoko', 'L'),
(7300, '11RPL1', 'Ridho Bhakti Wicaksono', 'L'),
(7301, '11TBG2', 'Rifa\'i Indra Waldhan', 'L'),
(7302, '11TBG3', 'Rifdah Rofifah Marco Putri', 'P'),
(7303, '11TBS3', 'Rifka Alvionita', 'P'),
(7304, '11RPL2', 'Rifqi Irfandi  Caesario', 'L'),
(7305, '11TBS1', 'Rika Amelia', 'P'),
(7306, '11TBG3', 'Rima Putri', 'P'),
(7307, '11TBS3', 'Rindy Antika', 'P'),
(7308, '11TBS1', 'Risma Adistiani', 'P'),
(7309, '11TBS2', 'Risma Maharani', 'P'),
(7310, '11PH3', 'Risvi Novia Putri', 'P'),
(7311, '11TBG3', 'Rizka Nur Cahyani', 'P'),
(7312, '11PH2', 'Rizki Akbar Ramadhan', 'L'),
(7313, '11RPL2', 'Rizki Fathi Ramadhan', 'L'),
(7314, '11RPL2', 'Rizky Pratama Putri Setyoadi', 'P'),
(7315, '11PH2', 'Rohmat Alwi Chaeruddin', 'L'),
(7316, '11RPL1', 'Ronggo Fattah Abdullah', 'L'),
(7317, '11PH2', 'Rully Job Rafael', 'L'),
(7318, '11TBG3', 'Ruth Apriyanti ', 'P'),
(7319, '11PH2', 'Ruth Cahyani Putri Nainggolan', 'P'),
(7320, '11RPL1', 'Ryfan Maulana Putra Hertaryawa', 'L'),
(7321, '11TBS3', 'S. Indah Wasmawati', 'P'),
(7322, '11RPL2', 'Saadillah Fauzan', 'L'),
(7323, '11TBG2', 'Safitri Setyaningrum', 'P'),
(7324, '11UPW ', 'Sal Sabil Sa\'diyah', 'P'),
(7325, '11PH3', 'Salsa Adelia Putri', 'P'),
(7326, '11TBS1', 'Santi Puspitasari', 'P'),
(7327, '11PH1', 'Saskia Mulya Aguatina', 'P'),
(7328, '11PH3', 'Satria Ridho Aji', 'L'),
(7329, '11TBG3', 'Sekar Ayu Gunardi ', 'P'),
(7330, '11PH3', 'Sekar Kusuma Andani', 'P'),
(7331, '11TBS3', 'Selvia Oktaviani', 'P'),
(7332, '11TBG2', 'Septi', 'P'),
(7333, '11TBS1', 'Septi Deviani', 'P'),
(7334, '11PH1', 'Septia Rizky Amalia', 'P'),
(7335, '11TBG1', 'Septianingsih Ayu Pramesti', 'P'),
(7336, '11TBS1', 'Shabrinna Marchelina Roito', 'P'),
(7338, '11TBS2', 'Shafira Nur Fajriyah', 'P'),
(7339, '11TBS2', 'Shala Mitha Namira', 'P'),
(7340, '11PH3', 'Sheila Isfara Saliha', 'P'),
(7342, '11TBS1', 'Shiva Choirunnissa', 'P'),
(7343, '11TBS1', 'Shofiera Devinta Hanjani', 'P'),
(7344, '11PH3', 'Silvia Ningrum', 'P'),
(7345, '11TBG1', 'Sindi Damayanti  ', 'P'),
(7346, '11TBS1', 'Sinta Puspitasari', 'P'),
(7347, '11TBS2', 'Siti Fatimah Rochmah', 'P'),
(7348, '11UPW ', 'Siti Levina Putri', 'P'),
(7349, '11PH3', 'Siti Nadia Styaningsih', 'P'),
(7350, '11TBS2', 'Siti Rahmawati', 'P'),
(7351, '11TBS3', 'Sri Kusumawati', 'P'),
(7352, '11PH2', 'Stella Stephanie Rainatha', 'P'),
(7353, '11RPL1', 'Steven Julian', 'L'),
(7354, '11TBG2', 'Suci Nur Komariah', 'P'),
(7355, '11PH1', 'Suci Rachmawati', 'P'),
(7356, '11RPL1', 'Sumartono', 'L'),
(7357, '11TBG1', 'Susanti Laos Marito', 'P'),
(7358, '11RPL1', 'Syafina Shafa Dianty ', 'P'),
(7359, '11RPL1', 'Syafiq Muhammad', 'L'),
(7360, '11PH3', 'Syahwa Rahmatika', 'P'),
(7361, '11TBS3', 'Syifa', 'P'),
(7362, '11TBS1', 'Tanisha Aprilia Amansyah Kusno', 'P'),
(7363, '11RPL2', 'Tiara Aulia Akbar', 'P'),
(7364, '11TBG3', 'Tiara Melisa', 'P'),
(7365, '11TBS3', 'Tiara Vika Maharani', 'P'),
(7366, '11TBG3', 'Tina Karlina Hermawan', 'P'),
(7367, '11TBG3', 'Tisa Aditya', 'L'),
(7368, '11TBG3', 'Titis Nadila Prameswari', 'P'),
(7369, '11TBG1', 'Tri Hastuti', 'P'),
(7370, '11TBG1', 'Trianah', 'P'),
(7371, '11TBS3', 'Triasmoro Larasistris', 'P'),
(7372, '11TBS2', 'Trisha Hana Maulidya', 'P'),
(7373, '11TBG2', 'Trisna Sukainah', 'P'),
(7374, '11TBS2', 'Ulfah Humairah', 'P'),
(7375, '11PH3', 'Vania Aulia Putriaji', 'P'),
(7376, '11TBG1', 'Vania Kayla Azalia', 'P'),
(7377, '11UPW ', 'Vania Zahra', 'P'),
(7378, '11PH2', 'Vanya Rajwadevy', 'P'),
(7379, '11TBS1', 'Veries Riyanti', 'P'),
(7380, '11PH1', 'Violina Faeza', 'P'),
(7381, '11TBS1', 'Virni Hendri Yani', 'P'),
(7382, '11PH3', 'Vony Yuliani', 'P'),
(7383, '11RPL2', 'Wafiyah Tsabitah', 'P'),
(7384, '11TBG1', 'Wahyu Wasi Ul Hikam ', 'L'),
(7385, '11PH3', 'Wahyu Wibisono', 'L'),
(7386, '11TBS3', 'Wanda Syafira', 'P'),
(7387, '11TBG1', 'Wardah Dewi Salsabilla Hariawa', 'P'),
(7388, '10PH1', 'Wibi Kharis Dinul Hidayat', 'L'),
(7389, '11PH2', 'Widya Syachrani Putri', 'P'),
(7390, '11PH1', 'Widya astuti', 'P'),
(7391, '11TBS3', 'Wiko Anggoro', 'L'),
(7392, '11PH2', 'Wina Veby Triana', 'P'),
(7393, '11TBS1', 'Yollanda Fujiamulia', 'P'),
(7394, '11TBS3', 'Yuda Okta Vianto', 'L'),
(7395, '11UPW ', 'Yuki Amanda', 'P'),
(7396, '11TBG3', 'Yulia Ester ', 'P'),
(7397, '11TBS2', 'Yuliana', 'P'),
(7398, '11TBG1', 'Yuliani', 'P'),
(7399, '11UPW ', 'Yuliesa Lestari', 'P'),
(7400, '11PH3', 'Yuni Alfitri Bellen', 'P'),
(7402, '11PH1', 'Yunita Sari', 'P'),
(7403, '11RPL1', 'Yusuf Baharudin', 'L'),
(7404, '11TBS2', 'Zaeniah Safitri', 'P'),
(7405, '11UPW ', 'Zahra Hanifah', 'P'),
(7407, '11TBS1', 'Zahrah Maharani Putri', 'P'),
(7408, '11RPL2', 'Zedy Adam', 'L'),
(7409, '11TBS2', 'Zera Nofriatama Rayhanningrum', 'P'),
(7410, '11TBS3', 'Zuli Lestari', 'P'),
(7411, '10TBG1', 'Abdurrohman', 'L'),
(7412, '10PH2', 'Achmad Andika Tunas Zafzaf', 'L'),
(7413, '10RPL2', 'Achmad Septian Nabawi', 'L'),
(7414, '10RPL1', 'Achmad Syaiful Bahri', 'L'),
(7415, '10TBS1', 'Adelia Dwi febriayanti', 'P'),
(7416, '10TBG3', 'Adelia Dwi Zalianti', 'P'),
(7417, '10TBG2', 'Adelia Nur Eksanti', 'P'),
(7418, '10TBG3', 'Adelia Rahma Afriliani', 'P'),
(7419, '10TBG3', 'Adelia Syifa Febristin', 'P'),
(7420, '10TBS1', 'Adellyne Dorothy Veronica Opat', 'P'),
(7421, '10UPW', 'Adhinda khairunnisa Syahirah', 'P'),
(7422, '10TBG3', 'Adinda Nur Fatwa', 'P'),
(7423, '10PH2', 'Adinda Syaharani', 'P'),
(7424, '10RPL1', 'Aditya Indratna', 'L'),
(7425, '10PH2', 'Adji Manggala', 'L'),
(7426, '10TBG1', 'Afinda Rino Fadhilah', 'L'),
(7427, '10RPL1', 'Ahasyweros Seftayano', 'L'),
(7428, '10RPL1', 'Ahmad Maulana', 'L'),
(7429, '10RPL2', 'Ahmad Sulthan Habsyi', 'L'),
(7430, '10PH1', 'Aida fitriani', 'P'),
(7431, '10TBS3', 'Aisyah Arbela', 'P'),
(7432, '10TBG3', 'Aisyah Nur Arsyiyah', 'P'),
(7433, '10TBG1', 'Ajeng Iva Elvira', 'P'),
(7434, '10UPW', 'Akkilah Fadilahtun Nisa', 'P'),
(7435, '10RPL2', 'Aldian Dimas Pratama', 'L'),
(7436, '10TBG2', 'Alfian Satria Prayoga', 'L'),
(7438, '10PH2', 'Alfiyyah Wulandari', 'P'),
(7439, '10RPL1', 'Alief Akbar Syachputra', 'L'),
(7440, '10RPL1', 'Alief Trisakti', 'L'),
(7441, '10TBS2', 'Alivia Naila', 'P'),
(7442, '10TBS3', 'Aliyah Kustriani Susilo', 'P'),
(7443, '10TBG1', 'Allanis Tsaniya Adzani', 'P'),
(7444, '10PH3', 'Allie Andustan', 'P'),
(7445, '10TBS2', 'Allyah Kaori Putri', 'P'),
(7446, '10TBG2', 'Alvi Nur Apriliani', 'P'),
(7447, '10TBS2', 'Alvintia Asri Mariskandari', 'P'),
(7448, '10TBG3', 'Alvito Dienova Santosa', 'L'),
(7450, '10TBS2', 'Alya Kinata Batari Lubis', 'P'),
(7451, '10RPL1', 'Amalia Aswar', 'P'),
(7452, '10PH2', 'Amalliah Rahmah Sari', 'P'),
(7453, '10TBS3', 'Amanda Naza Aulia', 'P'),
(7454, '10UPW', 'Amanda Shafira', 'P'),
(7455, '10TBS3', 'Amelia Rahmawati', 'P'),
(7456, '10PH2', 'Amellia Putri', 'P'),
(7457, '10TBS3', 'Ananda Putri Shaleha', 'P'),
(7458, '10RPL2', 'Ananda Saputra Yanwar', 'L'),
(7459, '10TBG1', 'Ananda Savitri', 'P'),
(7460, '10TBS3', 'Anandya Yushara', 'P'),
(7461, '10UPW', 'Andyni Yuthika Risqi', 'P'),
(7462, '10TBG3', 'Angelica Belinda Hartono', 'P'),
(7463, '10UPW', 'Angelysia Kusuma Dewi Rizky', 'P'),
(7464, '10TBS3', 'Anisa Fitri', 'P'),
(7465, '10TBS3', 'Anisa Ulfa Prihatin', 'P'),
(7466, '10PH2', 'Anita Dwi Mulyanti', 'P'),
(7467, '10TBG3', 'Anjar Dwi Lestari', 'P'),
(7468, '10TBS1', 'Anneke Valencia', 'P'),
(7469, '10TBS2', 'Annisa Maharani', 'P'),
(7470, '10PH2', 'Annisa Rahma', 'P'),
(7471, '10RPL1', 'Anugra Muhamad Syarif', 'L'),
(7472, '10PH3', 'Aprilia Ristiyana', 'P'),
(7473, '10TBS1', 'Arcy Mustika Sari', 'P'),
(7474, '10RPL2', 'Ardyan Syahputra', 'L'),
(7475, '10RPL2', 'Arief Marvin Handoko', 'L'),
(7476, '10TBS2', 'Arindita Naura ', 'P'),
(7477, '10TBG2', 'Arya Airlangga', 'L'),
(7478, '10UPW', 'Arya Rasendriya', 'L'),
(7479, '10PH1', 'Arya Sindhu Pratama', 'L'),
(7480, '10PH2', 'Aryani Widya Ningsih', 'P'),
(7481, '10TBG2', 'Asifa Nurhaliza', 'P'),
(7482, '10PH2', 'Asifa Salsabila', 'P'),
(7483, '10TBS1', 'Asprianda', 'P'),
(7484, '10RPL1', 'Athallah Rizaldi', 'L'),
(7485, '10PH2', 'Audy Lia Azahra', 'P'),
(7486, '10TBS2', 'Aulia Daffa Alizza', 'P'),
(7487, '10TBG3', 'Aulia Rizieq', 'P'),
(7488, '10TBS1', 'Aulia Sabina', 'p'),
(7489, '10TBG2', 'Aulia Zahra Saputri', 'P'),
(7490, '10TBG2', 'Ayu Andini Mahesa Putri', 'P'),
(7491, '10PH3', 'Azelia Ghea Putri', 'P'),
(7492, '10RPL2', 'Azhar Bramantio', 'L'),
(7493, '10RPL1', 'Azhar Ramadhan Halim', 'L'),
(7494, '10RPL1', 'Az-zukhrufi Nurjamil', 'L'),
(7495, '10PH2', 'Bagas Dewantoro', 'L'),
(7496, '10RPL2', 'Bagus Prianto', 'L'),
(7497, '10RPL2', 'Bagus Septiady', 'L'),
(7498, '10RPL2', 'Bayu Maulana', 'L'),
(7499, '10TBS1', 'Bayu Yaka putra', 'L'),
(7500, '10TBS2', 'Bella Gabriala Marwoto', 'P'),
(7501, '10PH3', 'Bleswan Siahaan', 'L'),
(7502, '10TBG3', 'Bulan Suci Rohuluna', 'P'),
(7503, '10RPL1', 'Bunga Adinda Ramadhan', 'P'),
(7504, '10TBG3', 'Carin Angelita P', 'P'),
(7505, '10PH1', 'Chesa Rani Alam', 'P'),
(7506, '10PH2', 'Choirinisa Fadilah', 'P'),
(7507, '10TBG3', 'Chris Agustina', 'P'),
(7508, '10TBS1', 'Chyntia Magdalena Situmorang', 'P'),
(7509, '10TBS1', 'Cindi Adelia', 'P'),
(7510, '10PH3', 'Citra Blanca Octafelina', 'P'),
(7511, '10PH2', 'Cyndi Putri Oktafiani', 'P'),
(7512, '10PH1', 'Daffa Raihan Athiq', 'L'),
(7513, '10TBG3', 'Daffa Saputra Widarto', 'L'),
(7514, '11TBG2', 'Daris Andalusia', 'L'),
(7515, '10PH2', 'Dava Syach Al Hufi', 'L'),
(7516, '10RPL2', 'Dea Maulida Faradilah', 'P'),
(7517, '10PH3', 'Dea Sukma Rahmawati', 'P'),
(7518, '10TBG1', 'Dela Safira', 'P'),
(7519, '10TBG1', 'Delfia Aurora', 'P'),
(7520, '10TBS3', 'Delya Fitriyani', 'P'),
(7521, '10TBS3', 'Demia Afifah Nabila', 'P'),
(7522, '10RPL1', 'Deva Yudha', 'L'),
(7523, '10TBS3', 'Devita Rini', 'P'),
(7524, '10TBS2', 'Devitalia Febrianti', 'P'),
(7525, '10UPW', 'Devitri Nuraini', 'P'),
(7526, '10TBS1', 'Dhira Zativa Adelwais Bahariaw', 'P'),
(7527, '10TBG2', 'Dhiya Ummi Ulhaq', 'P'),
(7528, '10PH1', 'Diah Novita', 'P'),
(7529, '10UPW', 'Dian Nur Salsabila', 'P'),
(7530, '10TBG1', 'Diana Fitriani', 'P'),
(7531, '10RPL1', 'Dicky Kurniawan', 'L'),
(7532, '10TBS3', 'Difina Agusti Rahmawati', 'P'),
(7533, '10TBG3', 'Dina Hamda Putriani', 'P'),
(7534, '10TBG3', 'Dina Noviyanti', 'P'),
(7535, '10PH2', 'Dinda Febriyanti', 'P'),
(7536, '10RPL1', 'Dino Priyano', 'L'),
(7537, '10PH2', 'Dita Kusuma Hapsari', 'P'),
(7539, '10TBS2', 'Diva Maharani Octa Wijaya', 'P'),
(7540, '10UPW', 'Diyah Sulistyowati', 'P'),
(7541, '10RPL1', 'Dody Setiawan', 'L'),
(7542, '10TBG3', 'Dwi Indah Pratiwi', 'P'),
(7543, '10RPL1', 'Dwi Kurniawan Rizky', 'L'),
(7544, '10TBG2', 'Dwi Maryam Nur\'Aini', 'P'),
(7545, '10TBS3', 'Dyah Alrifda Hanifah', 'P'),
(7546, '10PH3', 'Dyah Ayu Lestari', 'P'),
(7547, '10PH2', 'Dyandra Kusuma', 'P'),
(7548, '10PH3', 'Dzika Imil Sabillah', 'P'),
(7549, '10PH1', 'Earyana', 'P'),
(7550, '10UPW', 'Eduar Husaf Ghifar', 'L'),
(7551, '10TBS3', 'Ella Dwi Jayanti', 'P'),
(7552, '10UPW', 'Elliana Cintamya Nelwan', 'P'),
(7553, '10TBG3', 'Elsarin Naomi', 'P'),
(7554, '10PH1', 'Ersaniya Jihan Fabiola', 'P'),
(7555, '10RPL2', 'Fadli Haical Gustin', 'L'),
(7556, '10RPL2', 'Fadya Nurulia', 'P'),
(7557, '11PH1', 'Faiz Mathar Nabil', 'L'),
(7558, '10UPW', 'Faiza Rahayu', 'P'),
(7559, '10TBG2', 'Fajar Ferdiansyah', 'L'),
(7560, '10RPL2', 'Falian Gibran Mahesa', 'L'),
(7561, '10TBS1', 'Fanny Efilin Pelletimu', 'P'),
(7562, '10PH3', 'Farah Dhifa Zalianty', 'P'),
(7563, '10TBS3', 'Farah Nurul Izzah', 'P'),
(7564, '10RPL1', 'Farhan Armawan', 'L'),
(7565, '10RPL1', 'Farhan Bhezni', 'L'),
(7566, '10RPL2', 'Farhan Elfaradi Ar', 'L'),
(7567, '10TBS3', 'Fatimah Az Zahro', 'P'),
(7568, '10UPW', 'Faturrahmah', 'P'),
(7569, '10TBG1', 'Fauzan Abdul Salam', 'L'),
(7570, '10TBG3', 'Fauzan Dwi Nugroho', 'L'),
(7571, '10RPL2', 'Fauzi ibrahim', 'L'),
(7572, '10UPW', 'Fauziah Dwi Resya', 'P'),
(7573, '10TBS2', 'Fauzziyah Fadhilah', 'P'),
(7574, '10TBG2', 'Fayza Pingkan Nayla', 'P'),
(7575, '10PH1', 'Febri Dwi Savira', 'P'),
(7576, '10PH3', 'Ferdi Widianto', 'L'),
(7577, '10RPL2', 'Ferdiansyah', 'L'),
(7578, '10TBG1', 'Ferina Widya Prihatini', 'P'),
(7579, '10TBG1', 'Ferlyna Dwi Kartina', 'P'),
(7580, '10PH2', 'Ferry Antasena Banonanto', 'L'),
(7581, '10PH1', 'Fikri Setyawan', 'L'),
(7582, '10RPL2', 'Fikry Arifiansyah', 'L'),
(7583, '10TBG2', 'Firda Fauziyah', 'P'),
(7584, '10PH1', 'Fitri Almayda', 'P'),
(7585, '10TBS1', 'Fitri Khoerinnisa', 'P'),
(7586, '10TBS1', 'Gayatri Putri Kelana', 'P'),
(7587, '10PH1', 'Gihan Fatihah Tumu', 'P'),
(7588, '10TBG3', 'Gina Salma Sabilla', 'P'),
(7589, '10RPL1', 'Haditya Fajri bahri Ramadhan', 'L'),
(7590, '10TBG3', 'Hafizh Dhafa Pratama', 'L'),
(7591, '10TBG1', 'Halimatussadiah', 'P'),
(7592, '10PH1', 'Hanif Muwwafaq Usman', 'L'),
(7593, '10TBG3', 'Hanifah Rizky Ramadhany', 'P'),
(7594, '10UPW', 'Hanna Joestine Simbolon', 'P'),
(7596, '10RPL1', 'Hegar Gumilang', 'L'),
(7597, '10TBG2', 'Helmalia Fitri Atikah', 'P'),
(7598, '10PH3', 'Hendrik permana', 'L'),
(7599, '10TBS3', 'Hikmah Hani Muzaroh', 'P'),
(7600, '10TBG2', 'Husna Khamilah', 'P'),
(7601, '10TBS1', 'Ifana Nur Az Zahra', 'P'),
(7602, '10PH3', 'Ignatius Eka Pratista', 'L'),
(7603, '10PH1', 'Imam Cahya Wijaya', 'L'),
(7604, '10TBS1', 'Inayah', 'P'),
(7605, '10TBS2', 'Indah Wulan Permatasari', 'P'),
(7606, '10PH2', 'Ine Alfiane Febrianti', 'P'),
(7608, '10UPW', 'Intan Ayu Diningtyas', 'P'),
(7609, '10TBS3', 'Intan Berliana', 'P'),
(7610, '10TBS2', 'Iqlima Prasetio', 'P'),
(7611, '10RPL2', 'Isman', 'L'),
(7612, '10PH2', 'Isti Hasna Lestari Boru gintin', 'P'),
(7613, '10PH3', 'Iyyah Komalasari Asmara', 'P'),
(7614, '10RPL2', 'Izzan Khairil Anam', 'L'),
(7615, '10PH1', 'Jaka Amirul Asrori', 'L'),
(7616, '10UPW', 'Jasmine Aprilian Purnama Putri', 'P'),
(7617, '10TBS3', 'Javanda Tiara Vanessa', 'P'),
(7618, '10UPW', 'Jeann Sayka', 'P'),
(7619, '10PH3', 'Josep Samuel Angelo', 'L'),
(7620, '10PH3', 'Julius Pandapotan Sitorus', 'L'),
(7621, '10PH1', 'Kaeisha Faridhina', 'P'),
(7622, '10TBS3', 'Kania Nindita Hapsari', 'P'),
(7623, '10TBS3', 'Khairunisa', 'P'),
(7624, '10TBS3', 'Kiki Mubarokah', 'P'),
(7625, '10TBS2', 'Kikyna Putriana Desta', 'P'),
(7627, '10RPL1', 'krisna Setyo Ramadhan', 'L'),
(7628, '10RPL2', 'Kurniadi Saputra', 'L'),
(7629, '10TBS1', 'Kus Berliana', 'P'),
(7630, '10UPW', 'Laden Rangga', 'L'),
(7631, '10PH2', 'Laela Sabrina', 'P'),
(7632, '10RPL2', 'Laja', 'L'),
(7633, '10UPW', 'Laras OctaViana', 'P'),
(7634, '10TBG3', 'Laura Juniartati Hutabalian', 'P'),
(7635, '10TBG1', 'Liana Dewi Artini', 'P'),
(7636, '11TBG1', 'Lilis Apriyani', 'P'),
(7637, '10TBS1', 'Lola Deanita Norberta', 'P'),
(7638, '10PH2', 'Luis Octavia Maharani', 'P'),
(7640, '10TBG3', 'Luthfia Akbar Ummaroh', 'L'),
(7641, '10UPW', 'Luvita Rosmayanti', 'P'),
(7642, '10RPL2', 'Maolana Malik', 'L'),
(7643, '10TBS2', 'Mardhatilah Suharti', 'P'),
(7644, '10TBS2', 'Mariska Salsabila Azzahra', 'P'),
(7646, '10TBG2', 'Marsela Amanda Putri Azzahra', 'P'),
(7647, '10TBS1', 'Maulina Herawati', 'P'),
(7648, '10TBS1', 'Maulinda Sari', 'P'),
(7649, '10PH1', 'Meisya Dwi Anggraini', 'P'),
(7650, '10TBS1', 'Melisa Nur Sakuroh', 'P'),
(7651, '10TBS3', 'Mellysa Dyah Putri', 'P'),
(7652, '10RPL2', 'Mh. Fajar Riyandi', 'L'),
(7653, '10TBS2', 'Mifta Huljannah', 'P'),
(7654, '10PH3', 'Milyaz Saragih', 'L'),
(7655, '10PH2', 'Mochammad khadafi', 'L'),
(7656, '10PH3', 'Mochammad yusuf Zulkarnaen', 'L'),
(7657, '10RPL2', 'Mohamad Adriano Widodo', 'L'),
(7659, '10RPL2', 'Mu\'ammar Kurniawan', 'L'),
(7660, '10RPL2', 'Muflih Ahmad Fauzan Siregar', 'L'),
(7661, '10PH1', 'Muhamad Alif nurmansyah', 'L'),
(7662, '10TBG2', 'Muhammad Firdaus', 'L'),
(7663, '10TBG1', 'Muhamad Yusuf Nurashari', 'L'),
(7664, '10RPL1', 'Muhammad Alvif Arfin', 'L'),
(7665, '10TBG2', 'Muhammad Daffa Mediansyah', 'L'),
(7666, '10RPL2', 'Muhammad Fahmi Ramadhan', 'L'),
(7667, '10PH2', 'Muhammad Hafizh Ramdhani', 'L'),
(7668, '10RPL1', 'Muhammad Iqbal', 'L'),
(7670, '10TBG1', 'Muhammad Khaezravan Pradana', 'L'),
(7671, '10PH1', 'Muhammad Rafi', 'L'),
(7672, '10RPL2', 'Muhammad Rafli Ramadhan', 'L'),
(7673, '10TBG1', 'Muhammad Rama Fauzan', 'L'),
(7674, '10RPL1', 'Muhammad Reza Alfarezi', 'L'),
(7675, '10TBG1', 'Muhammad Shadam Rizky', 'L'),
(7676, '10PH3', 'Muhammad Shayrul Mayda Saputra', 'L'),
(7677, '10RPL1', 'Muhammad yazid Khoirudin', 'L'),
(7678, '10TBG2', 'Muhammad Zakly Pradiptama', 'L'),
(7679, '10PH3', 'Nabila Khairiyah', 'P'),
(7681, '10TBS2', 'Nabilah Awaliah', 'P'),
(7682, '10TBG2', 'Nabilah Azahrah', 'P'),
(7683, '10PH1', 'Nadila Nur Fitriani', 'P'),
(7684, '10TBS2', 'Nadira Putri Regia', 'P'),
(7685, '10TBG1', 'Nadita zalfa Muhanna', 'P'),
(7686, '10UPW', 'Nadya Nur Fadilah', 'P'),
(7687, '10PH3', 'Naek Budi Perkasa Silitonga', 'L'),
(7688, '10TBG3', 'Naffisah Salwah', 'P'),
(7689, '10TBG1', 'Najla Qanitah Saiful', 'P'),
(7690, '10TBG1', 'Nakumi', 'P'),
(7691, '10TBG2', 'Nasywaa Rachella Putri', 'P'),
(7692, '10TBG1', 'Natasha Savitri', 'P'),
(7693, '10TBS1', 'Nathally Angeline Sianturi', 'P'),
(7694, '10RPL1', 'Naufal Bayu Setiawan', 'L'),
(7695, '10UPW', 'Naufal Diaz Pratama', 'L'),
(7696, '10PH1', 'Navigo Fasa Alfitra', 'L'),
(7697, '10PH1', 'Nia Savitri', 'P'),
(7698, '10RPL1', 'Nicholas Jona Afdan', 'L'),
(7699, '10TBG2', 'Nida Hanifah', 'P'),
(7700, '10TBS2', 'Niken Wulandari', 'P'),
(7701, '10TBG1', 'Nofitri Agustina', 'P'),
(7702, '10RPL2', 'Novan Deva Ramadhan', 'L'),
(7703, '10TBS2', 'Novi Kusmirah', 'P'),
(7705, '10RPL1', 'Nur Cahyo Utomo', 'L'),
(7706, '10PH2', 'Nur Hafsah', 'P'),
(7707, '10PH2', 'Nur Malasari', 'P'),
(7708, '10TBG3', 'Nur Rendy Mustofa', 'L'),
(7709, '10UPW', 'Nurlaela Agustin', 'P'),
(7710, '10PH3', 'Nurul Aflah', 'P'),
(7711, '10TBG1', 'Nurul Fadilah', 'P'),
(7712, '10PH2', 'Oktavia', 'P'),
(7713, '10RPL2', 'Olga Ardhita Pratama', 'L'),
(7714, '10PH3', 'Olga Nathalie Prasdianti', 'P'),
(7715, '10RPL2', 'Panji Ramadhan', 'L'),
(7716, '10TBG3', 'Pedro Antonio Putra Sinurat', 'L'),
(7717, '10TBG1', 'Pradilah Tahta Dhilika', 'P'),
(7718, '10TBG3', 'Pricillia Putri Salsabila', 'P'),
(7719, '10TBS1', 'Prima Diana Investaprilia', 'P'),
(7720, '10PH3', 'Putra Alif Fadillah', 'L'),
(7721, '10TBS3', 'Putri Dwi Julianti', 'P'),
(7722, '10PH1', 'Putri Fariba Azizah', 'P'),
(7723, '10TBS3', 'Putri Nadhila', 'P'),
(7724, '10TBG2', 'Putri Nur\'Aini Zahra', 'P'),
(7725, '10TBS3', 'Putri Saharani Revita Mailani', 'P'),
(7726, '10TBS3', 'Putri Sakinah', 'P'),
(7727, '10TBS3', 'Putri Sundari', 'P'),
(7728, '10TBG3', 'Rachel Chintya Putri', 'P'),
(7729, '10PH2', 'Rafi Hauzan', 'L'),
(7730, '10TBS2', 'Rahma Annisa Sakinah', 'P'),
(7731, '10RPL1', 'Rakha Zahran nurfirmansyah', 'L'),
(7732, '10RPL1', 'Ralf Manuel Maidangkay', 'L'),
(7733, '10PH3', 'Rama Sayyid Aslam', 'L'),
(7734, '10PH2', 'Rani Amelia Putri', 'P'),
(7735, '10TBG1', 'Rantyas Prameswari Halim', 'P'),
(7736, '10TBS1', 'Ratih Sriwidiyanti', 'P'),
(7737, '10PH1', 'Rayhan Pratama', 'L'),
(7738, '10PH1', 'Rayyan Ibnu Sariyyan', 'L'),
(7739, '10PH1', 'Retno Dwi Adhi Endana', 'P'),
(7740, '10PH1', 'Reyhan Alfarizi', 'L'),
(7742, '10TBS3', 'Reyva azhra Sabilla', 'P'),
(7743, '10RPL2', 'Ridho Ariansyah', 'L'),
(7744, '10TBS1', 'Rienjani Kartika Syari', 'P'),
(7745, '10PH2', 'Rifky Abdul Akbar', 'L'),
(7746, '10RPL2', 'Rifky Andira pratama', 'L'),
(7747, '10TBS3', 'Risa Amalia Suryani', 'P'),
(7748, '10TBG3', 'Risma Nur Arsyah', 'P'),
(7749, '10RPL1', 'Riza Asnantowi Hadi', 'L'),
(7750, '10TBS3', 'Rizki Dwi Anggraeni', 'P'),
(7751, '10TBG1', 'Rizkia Putri Maulani', 'P'),
(7752, '10PH1', 'Rizky Jonathan Fatahillah', 'L'),
(7753, '10UPW', 'Rizkya Salsabila Agustian', 'P'),
(7754, '10PH2', 'Robby Rama Illahi', 'L'),
(7755, '10RPL2', 'Rommy Esvaldo bhagaskara', 'L'),
(7756, '10PH1', 'Rosita Dewi', 'P'),
(7757, '10TBG2', 'Sabrina Nidya Prasasty', 'P'),
(7758, '10PH2', 'Saddam Frizqi AlFath', 'L'),
(7759, '10PH3', 'Saeful fahmi Alamsyah', 'L'),
(7760, '10TBS2', 'Safira Delvia', 'P'),
(7761, '10TBG3', 'Salma Aufa Buhory', 'P'),
(7762, '10TBG2', 'Salsa Fintriyaningsih', 'P'),
(7763, '11TBG3', 'Salsa Putri Rahmadina', 'P'),
(7764, '10UPW', 'Salsabila Kharisma', 'P'),
(7765, '10TBG1', 'Salsabillah Anjeli', 'P'),
(7766, '10TBS3', 'Salsia Nabilah', 'P'),
(7767, '10PH3', 'Salzabila', 'P'),
(7768, '10UPW', 'Sandra Aura  Priscilia', 'P'),
(7769, '10TBG2', 'Saphira Zahwa', 'P'),
(7770, '10UPW', 'Sarah Monica Aulia', 'P'),
(7771, '10TBS1', 'Sarsah Tazzkia Ramadhanti', 'P'),
(7772, '10TBG2', 'Satria Ahmad Juliandi', 'L'),
(7773, '10RPL1', 'Satria Fikasih', 'L'),
(7774, '10RPL1', 'Satria Oktapianus', 'L'),
(7775, '10TBS2', 'Septiani Cahyo Utami', 'P'),
(7776, '10TBG3', 'Septiawati', 'P'),
(7777, '10TBG3', 'Sevhianita Dwi Cahya', 'P'),
(7778, '10TBS2', 'Shanty Kusuma Wardhani', 'P'),
(7779, '10TBG2', 'Sharfina', 'P'),
(7780, '10PH3', 'Shavira Kartika Ryaningtyas', 'P'),
(7781, '10UPW', 'Shela Zahraina', 'P'),
(7782, '10TBG1', 'Sheren Virgia Savira', 'P'),
(7783, '10TBS1', 'Sherlina', 'P'),
(7784, '10TBG1', 'Silva Tiara', 'P'),
(7785, '10PH3', 'Silvana Novitasari', 'P'),
(7786, '10UPW', 'Silvia Hasanah', 'P'),
(7787, '10TBS2', 'Silviana Putri Komaria', 'P'),
(7788, '10TBS1', 'Siska Ariyanti', 'P'),
(7789, '10PH3', 'Siti Azahra', 'P'),
(7790, '10TBS3', 'Siti Fatimah Hasibuan', 'P'),
(7791, '10TBG2', 'Siti Mae Juleha', 'P'),
(7792, '10TBS2', 'Siti Masitoh', 'P'),
(7793, '10TBS2', 'Siti Nur Azizah', 'P'),
(7794, '10TBS3', 'Siti Saidah Nasiroh', 'P'),
(7795, '10TBG1', 'Suci putri Andini', 'P'),
(7796, '10TBS1', 'Suci Rahmadani', 'P'),
(7797, '10TBG1', 'Suci wulandari', 'P'),
(7798, '10TBG2', 'Susi Syaidatul Zahra', 'P'),
(7799, '10TBG2', 'Syabilah Putti Qur\'Aini', 'P'),
(7800, '10TBS3', 'Syadine Falmi Paramitha', 'P'),
(7801, '10TBS2', 'Syafa Nabila Kesha Priatna', 'P'),
(7802, '10PH1', 'Syahmalia Syauly', 'P'),
(7803, '10TBS1', 'Syalwa Isnaini Putri', 'P'),
(7804, '10RPL1', 'Syamil Imdad Mahasin', 'L'),
(7805, '10TBS2', 'Syarifah Fadhlun', 'P'),
(7806, '10TBS2', 'Syifa Najwa Putri', 'P'),
(7807, '10TBG1', 'Talitha Shidqi Zahra', 'P'),
(7808, '10UPW', 'Tania Fatma', 'P'),
(7809, '10PH3', 'Tarisah', 'P'),
(7810, '10PH2', 'Thania Rachmayanti Sukma', 'P'),
(7811, '10TBS2', 'Tharisya', 'P'),
(7812, '10TBG1', 'Tia Ibanez Yuniar', 'P'),
(7813, '10PH1', 'Tina Surachman', 'P'),
(7814, '10PH3', 'Torang Anugrah Sinaga', 'L'),
(7815, '10PH3', 'Tri Ramadhan Novianto', 'L'),
(7817, '10TBS1', 'Valentyna Anessya Magdalena', 'P'),
(7818, '10PH3', 'Valiza Alfifa', 'P'),
(7819, '10PH1', 'Venus Casanova Az-Zahra Nurul ', 'P'),
(7820, '10TBG2', 'Via Amara', 'P'),
(7821, '10RPL1', 'Victory Apriardi', 'L'),
(7822, '10PH3', 'Viero Virgiawan Andromedo', 'L'),
(7823, '10UPW', 'Vijay Zefanya Panjaitan', 'L'),
(7824, '10PH1', 'Vika Wahyu Sefiana', 'P'),
(7825, '10RPL2', 'Vina Zahra Fadiyah', 'P'),
(7826, '10TBG1', 'Viola Maharani Putri', 'P'),
(7827, '10PH1', 'Violetta Septyarini Julia Putr', 'P'),
(7828, '10TBG2', 'Virna Cahya Zahrani', 'P'),
(7829, '10PH2', 'Vito Althaf Naufal', 'L'),
(7830, '10TBG2', 'Wahyu Erlangga', 'L'),
(7831, '10TBS1', 'Wulan Febrianti', 'P'),
(7832, '10TBG2', 'Yanti Susanti', 'P'),
(7833, '10UPW', 'Yemima Regina Aurora Angelika ', 'P'),
(7834, '10UPW', 'Yuanda Agung Putra', 'L'),
(7835, '10UPW', 'Yudhistira Dwi Prihantoro', 'L'),
(7836, '10PH3', 'Yumiko Natha Lareina', 'P'),
(7837, '10TBS3', 'yunita Nurlala Rujianti', 'P'),
(7838, '10TBG3', 'Zafira Nuraini', 'P'),
(7839, '10TBG3', 'Zahra Fitri Ramadhan ', 'P'),
(7840, '10TBG2', 'Zalika Saputri Dewi', 'P'),
(7841, '10TBG1', 'Zhafira Salwa Nisrina', 'P'),
(7842, '10TBG2', 'Zulfahmi Fauzan', 'L'),
(7995, '10UPW', 'Haykal Ibnu Sinna', 'L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `kodeKelas` varchar(10) DEFAULT NULL,
  `password` text NOT NULL,
  `role` enum('admin','siswa','guru','piket') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`idUser`, `nama`, `username`, `kodeKelas`, `password`, `role`) VALUES
(4, 'Muhammad Fadhilah Ramadhan', 'fadil', '12RPL1', 'fadil', 'siswa'),
(2, 'Romaida Siallagan', 'romaida', '12RPL1', 'romaida', 'guru'),
(1, 'Admin', 'admin', NULL, 'admin', 'admin'),
(5, 'Dendy Sapto Adi', 'dendy', '12RPL2', 'dendy', 'siswa'),
(3, 'Ajisar', 'ajisar', '12RPL2', 'ajisar', 'guru');

-- --------------------------------------------------------

--
-- Struktur untuk view `dataabsenguru`
--
DROP TABLE IF EXISTS `dataabsenguru`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dataabsenguru`  AS  select `ag`.`idAbsenGuru` AS `idAbsenGuru`,`au`.`idAbsenUtama` AS `idAbsenUtama`,`au`.`NIS` AS `NIS`,`s`.`nama` AS `nama`,`s`.`kodeKelas` AS `kodeKelas`,`au`.`tanggal` AS `tanggal`,`au`.`keterangan` AS `keterangan`,`au`.`dataSurat` AS `dataSurat`,`ag`.`status` AS `status` from ((`absenguru` `ag` join `absenutama` `au` on((`ag`.`idAbsenUtama` = `au`.`idAbsenUtama`))) join `siswa` `s` on((`au`.`NIS` = `s`.`NIS`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `dataabsenpiket`
--
DROP TABLE IF EXISTS `dataabsenpiket`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dataabsenpiket`  AS  select `ap`.`idAbsenPiket` AS `idAbsenPiket`,`au`.`idAbsenUtama` AS `idAbsenUtama`,`au`.`NIS` AS `NIS`,`s`.`nama` AS `nama`,`s`.`kodeKelas` AS `kodeKelas`,`au`.`tanggal` AS `tanggal`,`au`.`keterangan` AS `keterangan`,`au`.`dataSurat` AS `dataSurat`,`ap`.`status` AS `status` from ((`absenpiket` `ap` join `absenutama` `au` on((`ap`.`idAbsenUtama` = `au`.`idAbsenUtama`))) join `siswa` `s` on((`au`.`NIS` = `s`.`NIS`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `dataabsenutama`
--
DROP TABLE IF EXISTS `dataabsenutama`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dataabsenutama`  AS  select `s`.`NIS` AS `nis`,`s`.`nama` AS `siswa`,`au`.`keterangan` AS `keterangan`,`au`.`tanggal` AS `tanggal`,`g`.`NIK` AS `nik`,`g`.`nama` AS `guru`,`s`.`kodeKelas` AS `Kelas`,`au`.`status` AS `status` from ((`absenutama` `au` join `siswa` `s` on((`au`.`NIS` = `s`.`NIS`))) join `guru` `g` on((`s`.`kodeKelas` = `g`.`kodeKelas`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `dataabsenutama_v2`
--
DROP TABLE IF EXISTS `dataabsenutama_v2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dataabsenutama_v2`  AS  select `au`.`idAbsenUtama` AS `idAbsenUtama`,`au`.`NIS` AS `NIS`,`s`.`nama` AS `nama`,`s`.`kodeKelas` AS `kodeKelas`,`au`.`tanggal` AS `tanggal`,`au`.`keterangan` AS `keterangan`,`au`.`dataSurat` AS `dataSurat`,`au`.`status` AS `status` from (`absenutama` `au` join `siswa` `s` on((`au`.`NIS` = `s`.`NIS`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `datareport`
--
DROP TABLE IF EXISTS `datareport`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `datareport`  AS  select `u`.`idAbsenUtama` AS `ID Absen Utama`,`u`.`NIS` AS `NIS`,`s`.`nama` AS `NAMA SISWA`,`r`.`kodeKelas` AS `KELAS`,`u`.`keterangan` AS `KETERANGAN`,`u`.`tanggal` AS `TANGGAL`,`u`.`status` AS `STATUS` from ((`absenutama` `u` join `siswa` `s` on((`s`.`NIS` = `u`.`NIS`))) join `ruangkelas` `r` on((`r`.`kodeKelas` = `s`.`kodeKelas`))) where (`u`.`status` = 1) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `datareport_v2`
--
DROP TABLE IF EXISTS `datareport_v2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `datareport_v2`  AS  select `r`.`idReport` AS `idReport`,`au`.`idAbsenUtama` AS `idAbsenUtama`,`au`.`NIS` AS `NIS`,`s`.`nama` AS `nama`,`s`.`kodeKelas` AS `kodeKelas`,`r`.`tanggal` AS `tanggal`,`au`.`keterangan` AS `keterangan`,`au`.`dataSurat` AS `dataSurat`,`r`.`status` AS `status` from ((`report` `r` join `absenutama` `au` on((`r`.`idAbsenUtama` = `au`.`idAbsenUtama`))) join `siswa` `s` on((`au`.`NIS` = `s`.`NIS`))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absenguru`
--
ALTER TABLE `absenguru`
  ADD PRIMARY KEY (`idAbsenGuru`),
  ADD KEY `idAbsenUtama` (`idAbsenUtama`),
  ADD KEY `NIK` (`NIK`);

--
-- Indeks untuk tabel `absenpiket`
--
ALTER TABLE `absenpiket`
  ADD PRIMARY KEY (`idAbsenPiket`),
  ADD KEY `idAbsenUtama` (`idAbsenUtama`);

--
-- Indeks untuk tabel `absenutama`
--
ALTER TABLE `absenutama`
  ADD PRIMARY KEY (`idAbsenUtama`),
  ADD KEY `NIS` (`NIS`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`NIK`),
  ADD KEY `kodeKelas` (`kodeKelas`);

--
-- Indeks untuk tabel `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`idReport`);

--
-- Indeks untuk tabel `ruangkelas`
--
ALTER TABLE `ruangkelas`
  ADD PRIMARY KEY (`kodeKelas`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`NIS`),
  ADD KEY `kodeKelas` (`kodeKelas`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absenguru`
--
ALTER TABLE `absenguru`
  MODIFY `idAbsenGuru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `absenpiket`
--
ALTER TABLE `absenpiket`
  MODIFY `idAbsenPiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `absenutama`
--
ALTER TABLE `absenutama`
  MODIFY `idAbsenUtama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `report`
--
ALTER TABLE `report`
  MODIFY `idReport` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `absenguru`
--
ALTER TABLE `absenguru`
  ADD CONSTRAINT `absenguru_ibfk_1` FOREIGN KEY (`idAbsenUtama`) REFERENCES `absenutama` (`idAbsenUtama`),
  ADD CONSTRAINT `absenguru_ibfk_2` FOREIGN KEY (`NIK`) REFERENCES `guru` (`NIK`);

--
-- Ketidakleluasaan untuk tabel `absenpiket`
--
ALTER TABLE `absenpiket`
  ADD CONSTRAINT `absenpiket_ibfk_1` FOREIGN KEY (`idAbsenUtama`) REFERENCES `absenutama` (`idAbsenUtama`);

--
-- Ketidakleluasaan untuk tabel `absenutama`
--
ALTER TABLE `absenutama`
  ADD CONSTRAINT `absenutama_ibfk_1` FOREIGN KEY (`NIS`) REFERENCES `siswa` (`NIS`);

--
-- Ketidakleluasaan untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`kodeKelas`) REFERENCES `ruangkelas` (`kodeKelas`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`kodeKelas`) REFERENCES `ruangkelas` (`kodeKelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
