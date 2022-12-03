-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2022 at 06:29 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ap_mobi`
--

-- --------------------------------------------------------

--
-- Table structure for table `baiviet`
--

CREATE TABLE `baiviet` (
  `id_baiviet` int(11) NOT NULL,
  `noidung` varchar(200) NOT NULL,
  `id_nguoiviet` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `baiviet`
--

INSERT INTO `baiviet` (`id_baiviet`, `noidung`, `id_nguoiviet`, `date`) VALUES
(1, 'hello', 0, '2022-11-11'),
(19, 'hello everyone. to day I coding', 1, '2022-11-08'),
(47, 'mother', 1, '2022-11-23'),
(48, 'father', 1, '2022-11-23'),
(57, 'hello my team.', 1, '2022-11-23'),
(62, 'ow old is you?', 1, '2022-11-25'),
(63, 'how is you', 1, '2022-11-25'),
(64, 'To day I leaning English.', 1, '2022-11-25'),
(65, 'I.go to shool in the morning.', 1, '2022-11-25');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(8) NOT NULL,
  `quyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `username`, `email`, `password`, `quyen`) VALUES
(1, 'quang', '', '123', 1),
(2, 'thang', '', '123', 1),
(10, 'quang', '123@gmail.com', '123', 1),
(13, 'quang123', '123@gmail.com', '123', 1),
(14, 'quang123', '123@gmail.com', '123', 1),
(15, 'quang123', '123@gmail.com', '123', 1),
(16, 'quang123', '123@gmail.com', '123', 1),
(17, 'quang123', '123@gmail.com', '123', 1),
(18, '1', '1', '1', 1),
(19, 'xquang', 'q@gmail.com', '123', 1),
(25, 'quang', '123', '1', 1),
(26, 'quang', '0', '0', 1),
(32, 'diepxuanquang', 'quang@gmail.com', '123', 1),
(38, 'quang', '@gmail.com', '123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
