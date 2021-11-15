-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2021 at 05:41 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_hints`
--

CREATE TABLE `chatbot_hints` (
  `id` int(11) NOT NULL,
  `question` varchar(100) NOT NULL,
  `reply` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatbot_hints`
--

INSERT INTO `chatbot_hints` (`id`, `question`, `reply`) VALUES
(1, 'HI||Hello||Hola || Hii', 'Hello, how are you.'),
(2, 'How are you?', 'Good to see you again!'),
(3, 'what is your name||whats your name', 'My name is Baymax'),
(4, 'what should I call you', 'You can call me Helping Bot'),
(5, 'Where are your from', 'I m from India'),
(6, 'Bye||See you later||Have a Good Day', 'Sad to see you are going. Have a nice day'),
(7, 'I am not feeling well || I am not ok', 'What are your symptoms?'),
(8, 'Cold', 'Nasal washing\r\nTake antihistamines '),
(9, 'Sore Throat', 'Ginger + Honey, \nDrink plenty of liquid, \nGargle with warm salt water\n '),
(11, 'Headache', 'Take aspirin or ibuprofen\r\n'),
(12, 'Nausea', 'Resting\r\nStay Hydrated \r\nTake deep breath\r\nEat light food\r\n'),
(13, 'Dengue', 'Take ORS and IV fluids \r\nTake paracetamol or acetaminophen'),
(14, 'Malaria', 'Take Chloroquine phosphate\n'),
(15, 'FLU', 'Take Rest\r\nTake Plenty of Fluids\r\nTake Paracetamol\r\n'),
(16, 'Measles', 'Take over the counter fever reducers, Vitamin A might also help\r\n'),
(17, 'Tetanus', 'Take Penicillin G\r\n'),
(18, 'Thanks || ok || Ok thanks || Thank you', 'CONSULT YOUR DOCTOR - GET WELL SOON \r\n');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `name` varchar(255) NOT NULL,
  `number` bigint(10) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `prob` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`name`, `number`, `gender`, `prob`) VALUES
('Pranav', 9993926197, 'Male', 'Overthinking');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `added_on` datetime NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message`, `added_on`, `type`) VALUES
(1, 'Hi', '2020-04-22 12:41:04', 'user'),
(2, 'Hello, how are you.', '2020-04-22 12:41:05', 'bot'),
(3, 'what is your name', '2020-04-22 12:41:22', 'user'),
(4, 'My name is Vishal Bot', '2020-04-22 12:41:22', 'bot'),
(5, 'Where are your from', '2020-04-22 12:41:30', 'user'),
(6, 'I m from India', '2020-04-22 12:41:30', 'bot'),
(7, 'Go to hell', '2020-04-22 12:41:41', 'user'),
(8, 'Sorry not be able to understand you', '2020-04-22 12:41:41', 'bot'),
(9, 'bye', '2020-04-22 12:41:46', 'user'),
(10, 'Sad to see you are going. Have a nice day', '2020-04-22 12:41:46', 'bot'),
(11, 'hii', '2021-11-11 09:42:41', 'user'),
(12, 'Sorry not be able to understand you', '2021-11-11 09:42:41', 'bot'),
(13, 'hi', '2021-11-11 09:42:50', 'user'),
(14, 'Hello, how are you.', '2021-11-11 09:42:50', 'bot'),
(15, 'Hii', '2021-11-11 09:43:33', 'user'),
(16, 'Hello, how are you.', '2021-11-11 09:43:33', 'bot'),
(17, 'hii', '2021-11-12 09:51:04', 'user'),
(18, 'Hello, how are you.', '2021-11-12 09:51:04', 'bot'),
(19, 'bye', '2021-11-12 09:51:25', 'user'),
(20, 'Sad to see you are going. Have a nice day', '2021-11-12 09:51:25', 'bot'),
(21, 'I am not ok', '2021-11-12 09:58:45', 'user'),
(22, 'What are your symptoms?', '2021-11-12 09:58:45', 'bot'),
(23, 'flu', '2021-11-12 10:17:52', 'user'),
(24, 'Take Rest\r\nTake Plenty of Fluids\r\nTake Paracetamol\r\n', '2021-11-12 10:17:52', 'bot'),
(25, 'ok', '2021-11-12 10:24:11', 'user'),
(26, 'What are your symptoms?', '2021-11-12 10:24:11', 'bot'),
(27, 'dengue', '2021-11-12 10:24:27', 'user'),
(28, 'Take ORS and IV fluids \r\nTake paracetamol or acetaminophen', '2021-11-12 10:24:27', 'bot'),
(29, 'Thanks', '2021-11-12 10:24:53', 'user'),
(30, 'CONSULT YOUR DOCTOR - GET WELL SOON \r\n', '2021-11-12 10:24:53', 'bot'),
(31, 'Ok thanks', '2021-11-12 10:25:07', 'user'),
(32, 'CONSULT YOUR DOCTOR - GET WELL SOON \r\n', '2021-11-12 10:25:07', 'bot'),
(33, 'xyz', '2021-11-12 10:25:13', 'user'),
(34, 'Sorry not be able to understand you', '2021-11-12 10:25:13', 'bot'),
(35, 'ok', '2021-11-12 10:25:31', 'user'),
(36, 'What are your symptoms?', '2021-11-12 10:25:31', 'bot'),
(37, 'OK', '2021-11-12 10:25:37', 'user'),
(38, 'What are your symptoms?', '2021-11-12 10:25:37', 'bot');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `name` varchar(255) NOT NULL,
  `number` bigint(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `prob` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`name`, `number`, `gender`, `prob`) VALUES
('Pranav', 9993926197, 'Male', '5');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `gmail` varchar(255) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `number` bigint(12) NOT NULL,
  `password` varchar(25) NOT NULL,
  `mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`fname`, `lname`, `gmail`, `gender`, `number`, `password`, `mail`) VALUES
('Pranav', 'Surwade', 'pranav@gmail.com', 'Male', 9993926197, 'Pranav@123', 'pranav@gmail.com'),
('sonali', 'bharti', 'sonali@gmail.com', 'Female', 7879447719, 'Sonali@123', 'sonali@gmail.com'),
('p', 's', 'p@gmail.com', 'M', 9993926197, 'Pranav@123', 'p@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatbot_hints`
--
ALTER TABLE `chatbot_hints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatbot_hints`
--
ALTER TABLE `chatbot_hints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
