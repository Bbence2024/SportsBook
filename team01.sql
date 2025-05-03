-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 03, 2025 at 05:13 PM
-- Server version: 10.11.11-MariaDB-0ubuntu0.24.04.2
-- PHP Version: 8.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `team01`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `type` varchar(1000) NOT NULL,
  `size` int(100) NOT NULL,
  `private` int(1) NOT NULL,
  `code` int(4) NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `type`, `size`, `private`, `code`, `create_date`) VALUES
(35, 'Teszt - Focista', 'i', 12, 0, 3614, '2025-03-12 01:17:09'),
(36, 'Teszt - Tenisz', 'z', 1, 0, 9728, '2025-03-12 01:17:46'),
(37, 'Teszt - Golf', 'j', 0, 1, 4500, '2025-03-12 02:28:36'),
(38, 'ASD', 'a', 0, 0, 0, '2025-03-24 06:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `group_chat`
--

CREATE TABLE `group_chat` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `chat` varchar(1000) NOT NULL,
  `date` datetime NOT NULL,
  `pin` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- Dumping data for table `group_chat`
--

INSERT INTO `group_chat` (`id`, `group_id`, `user_id`, `chat`, `date`, `pin`) VALUES
(128, 34, 40, '12', '2025-03-09 20:33:26', 0),
(129, 34, 40, 'szia Máté', '2025-03-09 20:33:34', 0),
(130, 34, 40, '1', '2025-03-09 20:37:06', 0),
(131, 34, 40, '2', '2025-03-09 20:37:06', 0),
(132, 34, 40, '3', '2025-03-09 20:37:07', 0),
(133, 37, 40, 'csao', '2025-03-12 14:30:01', 0),
(134, 37, 40, '1234', '2025-03-12 14:30:22', 0),
(136, 38, 56, '12', '2025-03-26 22:26:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `leader` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`id`, `group_id`, `user_id`, `leader`) VALUES
(50, 34, 40, 1),
(51, 35, 40, 1),
(52, 36, 40, 1),
(53, 37, 40, 1),
(54, 38, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `location` varchar(1000) NOT NULL,
  `age` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `sport` varchar(100) NOT NULL,
  `premium` int(1) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `location`, `age`, `gender`, `sport`, `premium`, `avatar`) VALUES
(1, 'Admin', 'Shohei', 'Ohtani', 'admin@admin.eu', '$2y$10$nPzNZHHHlSJChpjRw18iN.WfZniNPBG2CUvQIS0S5WE.6LvsuweqS', 'Budapest', '1994-07-05', 'm', 'abo', 0, '02-baseball.png'),
(40, 'TesztBence', 'Benedek', 'Bolyos', 'sportsbooksup@gmail.com', '$2y$10$fhq1cZMwMx7gkHTivgQSqufbriGkDjDFrDn4CwNdaYbulFry.5WkO', 'Budapest', '2004-10-30', 'f', 'cfr', 0, '13-hockey.png'),
(41, 'BbenceTeszt2', 'NONE', 'NONE', 'crmkiss44@gmail.com', '$2y$10$zxs5eDfCeITDond0Oe9thedgNO0unc2zJdRPgPbhHSH30p8oH1jxe', 'Kaposvár', '2005-12-11', 'o', '123', 0, 'NONE'),
(45, 'BenceTeszt', '', '', 'noname44424@gmail.com', '$2y$10$Rqyz9b1r8L842kYtc5tFI.G2rJRjHF22l0gYusKplKo2KNASWTZp.', 'Budapest', '2005-12-12', '', 'bc', 0, ''),
(54, 'TesztBence', '', '', 'sasdibence08@gmail.com', '$2y$10$KacjtMY3Be5y63F1a2AYyewSG5iRLnBncVleUL8TmureqqYvGTmFS', 'Budapest', '2005-12-12', '', 'lmn', 0, ''),
(56, 'Bbence2026', 'Bence', 'Bolyos', 'bbenceofficial@gmail.com', '$2y$10$GwFUxp2l74eJePWQl7/YsOf5QyqtaGkvuVISExx21tH7z05oAAuYO', 'Budapest', '2004-12-12', 'm', 'bcd', 0, '26-tennis.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_activation_code`
--

CREATE TABLE `user_activation_code` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(1000) NOT NULL,
  `used` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- Dumping data for table `user_activation_code`
--

INSERT INTO `user_activation_code` (`id`, `user_id`, `code`, `used`) VALUES
(1, 1, 'vByARmYWcoFioTa', 'yes'),
(47, 40, 'QmldcvoGGeu0kOP', 'yes'),
(49, 42, 'ukaloUh9gautOLg', 'no'),
(50, 43, 'qeD1hvUSLJcASeu', 'no'),
(51, 44, 'hoiyrfd951aqHjE', 'yes'),
(52, 45, 'goDpNBat43pRNFI', 'yes'),
(53, 38, 'fCddSu5NAlDH6SL', 'no'),
(54, 40, 'dClcCpm8hWa3aKY', 'no'),
(55, 40, 'rHT56OAI1JMeIyn', 'no'),
(56, 40, 'nwZ1wuTFUSItbOq', 'no'),
(57, 40, 'vC4IVGf69Ke8RrM', 'no'),
(58, 38, 'vukxEtJkKyRNaT2', 'no'),
(59, 40, 'K4WC6grYllpVLvt', 'no'),
(60, 40, 'oOJAjtoPrmUhIlI', 'no'),
(61, 40, 'QLb5mmJ30No9mtJ', 'no'),
(62, 40, 'PtRkW9z6P8wzXzw', 'no'),
(63, 46, 'APsuxWEezuakJqr', 'no'),
(64, 47, 'PsMqwd9FuWKtuOQ', 'yes'),
(65, 48, '66GsfwRVNaN2KxU', 'no'),
(66, 49, 'Yt8bM5ybQG1Hahv', 'no'),
(67, 50, 'gSSYM5XEGjGJH8A', 'no'),
(68, 51, 'uHxpjlIAfLoP5EF', 'no'),
(69, 52, 'QvHOGvXsMs7ZdOK', 'no'),
(70, 53, 'AJv19CYsvzISnsB', 'no'),
(71, 54, '3om8QSATr1fs1wH', 'no'),
(72, 55, 'Z2EH0Lfgs93WTrU', 'yes'),
(73, 55, 'fOynNE64LAOpgfJ', 'no'),
(74, 56, 'msHLrliRfXKaBOM', 'yes'),
(75, 56, 'wlgnVp4vBCJVPkl', 'no'),
(76, 56, 'FXHiSpFw64R9SUQ', 'no'),
(77, 56, 'TJqGN1jlWjp9l46', 'no'),
(78, 56, '5Cv1TopQNXwObde', 'no'),
(79, 56, 'KQtPrURNkRf8GJF', 'no'),
(80, 56, 'trmWWc6gNeA0sW6', 'no'),
(81, 56, 'SkCjfyDvIhbWfI7', 'no'),
(82, 56, 'z476hp1ULj6sgqQ', 'no'),
(83, 56, 'c4zqguJwDVJzHZF', 'no'),
(84, 56, 'BnJP9c90kOEge0w', 'no'),
(85, 56, 'JamE8MChrB6rao0', 'no'),
(86, 56, 'JLlag1PJGPzbZrI', 'no'),
(87, 56, 'HnjOQYKHKd1PDrm', 'no'),
(88, 56, 'OrqTXeJUGrwRc0q', 'no'),
(89, 56, 'xAA30RKFH4pxCmE', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_chat`
--
ALTER TABLE `group_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_activation_code`
--
ALTER TABLE `user_activation_code`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `group_chat`
--
ALTER TABLE `group_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `user_activation_code`
--
ALTER TABLE `user_activation_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
