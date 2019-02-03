-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2019 at 07:39 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `asyncinterviews`
--

CREATE TABLE `asyncinterviews` (
  `id` int(11) NOT NULL,
  `InterviewId` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `link` text,
  `pin` int(11) DEFAULT NULL,
  `status` enum('Available','Verified','Submitted','Completed','Reviewed') DEFAULT NULL,
  `paymentstatus` enum('Pending','Success') DEFAULT NULL,
  `packageType` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `unvId` int(10) NOT NULL,
  `createdBy` int(10) NOT NULL,
  `discount` float NOT NULL,
  `domain` int(10) NOT NULL,
  `subdomain` int(10) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asyncinterviews`
--

INSERT INTO `asyncinterviews` (`id`, `InterviewId`, `email`, `link`, `pin`, `status`, `paymentstatus`, `packageType`, `price`, `unvId`, `createdBy`, `discount`, `domain`, `subdomain`, `createdAt`, `updatedAt`) VALUES
(1, 1000, 'braj@gmail.com', 'http://abc.com', 1122, 'Completed', 'Success', '1', 5, 1, 111, 0, 1, 1, '0000-00-00 00:00:00', '2019-02-03 18:29:43'),
(2, 1001, 'braj@gmail.com', 'http://abc.com', 1123, 'Submitted', 'Success', '1', 5, 1, 111, 0, 1, 1, '0000-00-00 00:00:00', '2019-02-03 18:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `asyncmocks`
--

CREATE TABLE `asyncmocks` (
  `id` int(11) NOT NULL,
  `InterviewId` int(11) DEFAULT NULL,
  `q_title` varchar(255) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `videoURL` text NOT NULL,
  `q_time` int(10) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `max_count` int(11) DEFAULT NULL,
  `time_taken` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asyncmocks`
--

INSERT INTO `asyncmocks` (`id`, `InterviewId`, `q_title`, `ano`, `uid`, `answer`, `videoURL`, `q_time`, `userId`, `email`, `status`, `max_count`, `time_taken`, `createdAt`, `updatedAt`) VALUES
(1, 1000, 'Hello, How are you. Tell me About yourself?', 1, 'v-3fd8d9a7-5a45-41f0-8654-d1ea06a8c2fe', 'hello new test ', '', 60, 0, '', 0, 4, ' (1:56)', '0000-00-00 00:00:00', '2019-01-31 09:42:17'),
(2, 1000, 'What are your special skills?', 2, 'v-db9dc188-f1d4-48ba-9ef2-d05c3172a6f1', 'hello new test ', '', 60, 0, '', 0, 4, ' (1:54)', '0000-00-00 00:00:00', '2019-01-31 09:42:47'),
(3, 1000, 'How to insert data ?', 3, 'v-d3d05caa-6ea1-47ca-91b3-8cbd63c9e3ea', 'hello new test ', '', 60, 0, '', 0, 4, ' (1:57)', '0000-00-00 00:00:00', '2019-01-31 09:45:02'),
(4, 1000, 'What is the diff between java and .net?', 4, 'v-bda20dc0-7c7c-4363-9145-85d1d5fa466b', 'hello new test ', '', 60, 0, '', 0, 4, ' (1:55)', '0000-00-00 00:00:00', '2019-01-31 09:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `asynctests`
--

CREATE TABLE `asynctests` (
  `id` int(11) NOT NULL,
  `InterviewId` int(10) NOT NULL,
  `q_title` varchar(255) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `answer` text,
  `videoURL` text NOT NULL,
  `q_time` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `max_count` int(10) NOT NULL,
  `time_taken` varchar(10) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asynctests`
--

INSERT INTO `asynctests` (`id`, `InterviewId`, `q_title`, `ano`, `uid`, `answer`, `videoURL`, `q_time`, `userId`, `email`, `status`, `max_count`, `time_taken`, `createdAt`, `updatedAt`) VALUES
(12, 1000, 'Hello Good Morning. Describe yourself?', 1, 'v-1f935d00-aac2-4a83-9b31-8a7278508b6b', 'this is first person', '//www.cameratag.com/assets/v-1f935d00-aac2-4a83-9b31-8a7278508b6b/mp4.mp4', 60, 1, 'braj@gmail.com', 1, 4, ' (29)', '0000-00-00 00:00:00', '2019-02-03 18:28:09'),
(13, 1000, 'What are your special skills?', 2, 'v-a6473630-711c-47f5-abb9-f858b0743ba8', 'no skills I have', '//www.cameratag.com/assets/v-a6473630-711c-47f5-abb9-f858b0743ba8/mp4.mp4', 40, 1, 'braj@gmail.com', 1, 4, ' (33)', '0000-00-00 00:00:00', '2019-02-03 18:28:35'),
(14, 1000, 'How to insert data ?', 3, 'v-ea77c700-961b-4ada-8c70-bde05cbd3b0f', 'write SQL command', '//www.cameratag.com/assets/v-ea77c700-961b-4ada-8c70-bde05cbd3b0f/mp4.mp4', 20, 1, 'braj@gmail.com', 1, 4, ' (29)', '0000-00-00 00:00:00', '2019-02-03 18:29:03'),
(15, 1000, 'What is the diff between java and dot net?', 4, 'v-0fafc7ad-0a5f-417a-910b-e43ee282653b', 'Jarvis free.net is not free dotnet is not free', '//www.cameratag.com/assets/v-0fafc7ad-0a5f-417a-910b-e43ee282653b/mp4.mp4', 60, 1, 'braj@gmail.com', 1, 4, ' (17)', '0000-00-00 00:00:00', '2019-02-03 18:29:43'),
(16, 1001, 'What do you know about Oops Concepts?', 1, 'v-89535d47-4768-4b59-ab8f-84441268cbd9', 'I know nothing about OOPS concept and this is only for test', '//www.cameratag.com/assets/v-89535d47-4768-4b59-ab8f-84441268cbd9/mp4.mp4', 60, 1, 'braj@gmail.com', 1, 3, ' (0)', '0000-00-00 00:00:00', '2019-02-03 18:39:05'),
(17, 1001, 'What is Machine Learning ?', 2, 'v-006c4ca6-6cae-4f80-aec1-d8f014766026', '', '//www.cameratag.com/assets/v-006c4ca6-6cae-4f80-aec1-d8f014766026/mp4.mp4', 60, 1, 'braj@gmail.com', 0, 3, ' (19)', '0000-00-00 00:00:00', '2019-02-03 18:18:42'),
(18, 1001, 'What is automation testing and manual testing?', 3, 'v-11a24186-5052-4c8f-b3d7-6369f04ca975', '', '//www.cameratag.com/assets/v-11a24186-5052-4c8f-b3d7-6369f04ca975/mp4.mp4', 20, 1, 'braj@gmail.com', 0, 3, ' (27)', '0000-00-00 00:00:00', '2019-02-03 18:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, NULL, '2019-01-26 14:54:38', '2019-01-26 14:54:38'),
(2, NULL, '2019-01-26 14:56:56', '2019-01-26 14:56:56'),
(3, 'vikk', '2019-01-26 14:57:26', '2019-01-26 14:57:26'),
(4, 'vikk333', '2019-01-26 14:57:33', '2019-01-26 14:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `joinings`
--

CREATE TABLE `joinings` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20181225083603-create-company.js'),
('20181225103048-create-user.js'),
('20181227073353-create-course.js'),
('20181227074809-create-joining.js'),
('20181227113413-create-fee.js'),
('20181227120559-create-discount.js'),
('20190125064851-create-myexam.js'),
('20190130011853-create-async-interview.js'),
('20190131100131-create-async-mocks.js');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asyncinterviews`
--
ALTER TABLE `asyncinterviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asyncmocks`
--
ALTER TABLE `asyncmocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `asynctests`
--
ALTER TABLE `asynctests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joinings`
--
ALTER TABLE `joinings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asyncinterviews`
--
ALTER TABLE `asyncinterviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `asyncmocks`
--
ALTER TABLE `asyncmocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `asynctests`
--
ALTER TABLE `asynctests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `joinings`
--
ALTER TABLE `joinings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
