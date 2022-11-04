-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2022 at 03:48 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sd_208`
--

-- --------------------------------------------------------

--
-- Table structure for table `animetitle`
--

CREATE TABLE `animetitle` (
  `animetitle_id` int(11) NOT NULL,
  `animetitle_category` int(11) NOT NULL,
  `animetitle_text` varchar(135) NOT NULL,
  `animetitle_date` date NOT NULL,
  `animetitle_watched` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animetitle`
--

INSERT INTO `animetitle` (`animetitle_id`, `animetitle_category`, `animetitle_text`, `animetitle_date`, `animetitle_watched`) VALUES
(1, 0, 'Black Clover Season 2', '2022-12-30', 0),
(2, 0, 'Rising of the Shield Hero Season 2', '2022-02-12', 1),
(3, 1, 'Chivalry Knight', '2022-01-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(36) NOT NULL,
  `lastname` varchar(36) NOT NULL,
  `email` varchar(130) NOT NULL,
  `address` varchar(130) NOT NULL,
  `password` varchar(25) NOT NULL,
  `confirmpassword` varchar(25) NOT NULL,
  `user_type` varchar(36) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `email`, `address`, `password`, `confirmpassword`, `user_type`) VALUES
(1, 'Keenan Paul', 'Mendiola', 'kpmendiola@usc.edu.ph', 'Cebu City', 'sirgwapo', 'sirgwapo', 'admin'),
(2, 'Alyssa', 'Cazarte', '21103760@usc.edu.ph', 'Talamban, Cebu City', 'girlspower', 'girlspower', 'user'),
(3, 'Mary Grace', 'Elias', '21103887@usc.edu.ph', 'Talamban, Cebu City', 'girlspower1', 'girlspower1', 'user'),
(4, 'Priscilla', 'Pable', '21103805@usc.edu.ph', 'Talamban, Cebu City', 'girlspower2', 'girlspower2', 'user'),
(5, 'Mary Joy', 'Reambonanza', '21104046@usc.edu.ph', 'Talamban, Cebu City', 'girlspower3', 'girlspower3', 'user'),
(6, 'Rowena', 'Pial', '21103866@usc.edu.ph', 'Talamban, Cebu City', 'coscholar', 'coscholar', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animetitle`
--
ALTER TABLE `animetitle`
  ADD PRIMARY KEY (`animetitle_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animetitle`
--
ALTER TABLE `animetitle`
  MODIFY `animetitle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
