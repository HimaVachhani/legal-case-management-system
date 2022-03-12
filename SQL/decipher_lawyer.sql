-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2021 at 06:59 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `decipher_lawyer`
--

-- --------------------------------------------------------

--
-- Table structure for table `decipher_lawyer_feedback_lawyer`
--

CREATE TABLE `decipher_lawyer_feedback_lawyer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(40) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decipher_lawyer_feedback_lawyer`
--

INSERT INTO `decipher_lawyer_feedback_lawyer` (`id`, `user_id`, `name`, `email`, `subject`, `message`) VALUES
(1, 1, 'mukul', 'mukul@gmail.com', 'fghjkl', 'fghjk');

-- --------------------------------------------------------

--
-- Table structure for table `decipher_lawyer_feedback_user`
--

CREATE TABLE `decipher_lawyer_feedback_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(40) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decipher_lawyer_feedback_user`
--

INSERT INTO `decipher_lawyer_feedback_user` (`id`, `user_id`, `name`, `email`, `subject`, `message`) VALUES
(1, 1, 'rishabh', 'rishabh@gmail.com', 'qwedrfty', 'fghjkl'),
(2, 9, 'rishabh', 'fghj', 'rfgthj', 'rfghj'),
(3, 1, 'Hima', 'himavachhani@gmail.com', 'about lawyer', 'sjcfrbjgjdchdgwfqdru4hjgt');

-- --------------------------------------------------------

--
-- Table structure for table `decipher_lawyer_login_admin`
--

CREATE TABLE `decipher_lawyer_login_admin` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decipher_lawyer_login_admin`
--

INSERT INTO `decipher_lawyer_login_admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `decipher_lawyer_login_lawyer`
--

CREATE TABLE `decipher_lawyer_login_lawyer` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `MobileNo` int(12) NOT NULL,
  `DateOfBirth` varchar(20) NOT NULL,
  `Qualification` varchar(20) NOT NULL,
  `status` text NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decipher_lawyer_login_lawyer`
--

INSERT INTO `decipher_lawyer_login_lawyer` (`id`, `first_name`, `last_name`, `email`, `MobileNo`, `DateOfBirth`, `Qualification`, `status`, `password`) VALUES
(4, 'Hima', 'Vachhani', 'himavachhani@gmail.com', 0, '', '', 'Approved', '5484'),
(5, 'Madhavi', 'Sorathiya', 'madhavi@gmail.com', 0, '', '', 'Approved', 'madhavi123'),
(6, 'Ruta', 'Borad', 'rutaborad@gmail.com', 0, '', '', 'Approved', 'ruta123'),
(7, 'Mitesh', 'Chhatbar', 'mitesh123@gmail.com', 0, '', '', 'Approved', 'mitesh123'),
(8, '123', '345', '123@gmail.com', 0, '', '', 'Rejected', '123');

-- --------------------------------------------------------

--
-- Table structure for table `decipher_lawyer_login_user`
--

CREATE TABLE `decipher_lawyer_login_user` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `MobileNo` int(12) NOT NULL,
  `DateOfBirth` varchar(20) NOT NULL,
  `Qualification` varchar(20) NOT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decipher_lawyer_login_user`
--

INSERT INTO `decipher_lawyer_login_user` (`id`, `first_name`, `last_name`, `email`, `MobileNo`, `DateOfBirth`, `Qualification`, `password`) VALUES
(5, 'Hima', 'Vachhani', 'himavachhani@gmail.com', 0, '', '', '5484'),
(6, 'Madhavi', 'Sorathiya', 'madhavi@gmail.com', 0, '', '', 'madhavi123'),
(7, 'Mitesh', 'Chhatbar', 'mitesh123@gmail.com', 0, '', '', 'mitesh123'),
(13, 'jatin', 'Patel', 'jatin@gmail.com', 0, '', '', 'jatin123'),
(10, 'Nirali', 'kakani', 'niralikakani@gmail.com', 0, '', '', 'nirali123'),
(12, 'Himanshu', 'Vachhani', 'himanshu123@gmail.com', 0, '', '', 'Himanshu123'),
(14, 'manan', 'patel', 'manan@gmail.com', 0, '', '', 'manan123');

-- --------------------------------------------------------

--
-- Table structure for table `decipher_lawyer_user_applied_case`
--

CREATE TABLE `decipher_lawyer_user_applied_case` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lawyer_id` int(20) NOT NULL DEFAULT 0,
  `user_email` text NOT NULL,
  `name` text NOT NULL,
  `topic` text NOT NULL,
  `Date` date NOT NULL,
  `type` text NOT NULL,
  `description` text NOT NULL,
  `status` text NOT NULL,
  `Final-Status` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decipher_lawyer_user_applied_case`
--

INSERT INTO `decipher_lawyer_user_applied_case` (`id`, `user_id`, `lawyer_id`, `user_email`, `name`, `topic`, `Date`, `type`, `description`, `status`, `Final-Status`) VALUES
(23, 14, 7, 'rutabooring@gmail.com', 'manan', 'case of divorce', '0000-00-00', 'Family law', 'dneicfer', 'Approved', 'Pending'),
(22, 13, 5, 'nisargbhagwat@gmail.com', 'nisarg', 'case of family issues', '0000-00-00', 'Family law', 'mental harrasment by hima', 'Approved', 'Pending'),
(21, 13, 4, 'nisargbhagwat@gmail.com', 'nisarg', 'murder', '0000-00-00', 'Criminal law', 'heart broken', 'Approved', 'Pending'),
(20, 13, 4, 'kdpathak@gmail.com', 'nisarg', 'case of divorce', '2021-04-21', 'Family law', 'scbducvnh ', 'Approved', 'Pending'),
(19, 7, 5, 'mitesh123@gmail.com', 'Mitesh', 'case of family issues', '2021-03-25', 'Family law', 'bcdj vn', 'Approved', 'Pending'),
(16, 5, 6, 'himavachhani@gmail.com', 'Hima', ' xlm ', '2021-03-25', 'ancdovbj', 'xcdmoegvkr', 'Approved', 'Done'),
(17, 5, 7, 'himavachhani@gmail.com', 'Hima', ' ckdnvocf', '2021-03-25', 'x nsk c', 'xsn ivd', 'Approved', 'Pending'),
(18, 5, 7, 'himavachhani@gmail.com', 'Hima', 'Criminal', '2021-03-25', 'murder', 'fvyugh9i', 'Approved', 'Pending'),
(1, 101, 7, 'himavachhani@gmail.com', 'Hima', 'dowry', '0000-00-00', 'family law', 'cn sk dx', 'Rejected', ''),
(25, 5, 6, 'himavachhani@gmail.com', 'Hima', 'adlfjdkl', '2000-01-01', 'Family Law', 'agagfa', 'Approved', 'Pending'),
(26, 5, 7, 'himavachhani@gmail.com', 'Hima', ' ckjzbc', '2000-01-19', 'Family Law', 'ncxksdncv', 'Approved', 'Pending'),
(27, 5, 4, 'himavachhani@gmail.com', 'Hima', 'case of family issues', '2021-12-07', 'Family Law', 'jasgcbdvnfhv', 'Approved', 'Pending'),
(28, 6, 6, 'madhavi@gmail.com', 'Madhavi', 'Insurance Law', '2005-10-18', 'criminal Law', 'btydcrxse', 'Approved', 'Pending'),
(29, 6, 6, 'madhavi@gmail.com', 'Madhavi', 'Family Law', '2000-01-26', 'criminal Law', 'fvneogjreo', 'Approved', 'Pending'),
(30, 5, 7, 'himavachhani@gmail.com', 'Hima', 'sgqugdhwi', '2000-01-26', 'Family Law', ' qjdnewofvhr', 'Approved', 'Pending'),
(31, 6, 5, 'madhavi@gmail.com', 'Madhavi', 'adbiwf', '2000-01-18', 'Family Law', 'qnjfdoewg', 'Approved', 'Pending'),
(32, 6, 5, 'madhavi@gmail.com', 'Madhavi', 'svchgfewi', '2000-01-22', 'Criminal Law', 'sqFJEWRKIGHEWO', 'Approved', 'Pending'),
(33, 5, 4, 'himavachhani@gmail.com', 'Hima', 'hina mam mental che', '2000-01-01', 'Family Law', 'aa vat paki chi', 'Approved', 'Pending'),
(34, 5, 4, 'himavachhani@gmail.com', 'Hima', 'fire', '2000-01-01', 'Fire Accident', 'asddtg', 'Approved', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `decipher_lawyer_feedback_lawyer`
--
ALTER TABLE `decipher_lawyer_feedback_lawyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `decipher_lawyer_feedback_user`
--
ALTER TABLE `decipher_lawyer_feedback_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `decipher_lawyer_login_admin`
--
ALTER TABLE `decipher_lawyer_login_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `decipher_lawyer_login_lawyer`
--
ALTER TABLE `decipher_lawyer_login_lawyer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `decipher_lawyer_login_user`
--
ALTER TABLE `decipher_lawyer_login_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `decipher_lawyer_user_applied_case`
--
ALTER TABLE `decipher_lawyer_user_applied_case`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `decipher_lawyer_feedback_lawyer`
--
ALTER TABLE `decipher_lawyer_feedback_lawyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `decipher_lawyer_feedback_user`
--
ALTER TABLE `decipher_lawyer_feedback_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `decipher_lawyer_login_admin`
--
ALTER TABLE `decipher_lawyer_login_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `decipher_lawyer_login_lawyer`
--
ALTER TABLE `decipher_lawyer_login_lawyer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `decipher_lawyer_login_user`
--
ALTER TABLE `decipher_lawyer_login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `decipher_lawyer_user_applied_case`
--
ALTER TABLE `decipher_lawyer_user_applied_case`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
