-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 31, 2024 at 05:43 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gabplant1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `adminid` int(11) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`adminid`, `username`, `password`) VALUES
(4, 'michaeljohnseva@gmail.com', '$2y$10$qoBvXdDG/d1I48soZBdAHefKr1LPpxZxdUv7eJWL.m7Pa2qTcK4FO'),
(0, 'azarik', '$2y$10$c9CpHgx1gp3UAC9qxiH/E.Z8a8wZsQHgfOr4MtNrK36qF8meg2jde');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `messageId` int(11) NOT NULL,
  `senderId` int(11) NOT NULL,
  `receiverId` int(11) NOT NULL,
  `messageContent` text NOT NULL,
  `messageDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `reply_to` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message`, `file_path`, `reply_to`, `timestamp`, `status`) VALUES
(564, 24, 18, 'Uyy', NULL, NULL, '2024-10-11 02:03:42', 1),
(565, 24, 18, 'Vakit?', NULL, NULL, '2024-10-11 02:04:56', 1),
(566, 18, 24, 'utot', NULL, NULL, '2024-10-11 02:05:03', 1),
(567, 18, 24, 'bakit ganun sayang ang tatoo', NULL, 566, '2024-10-11 02:59:14', 0),
(568, 59, 1, 'uy', NULL, NULL, '2024-10-11 04:27:20', 1),
(569, 59, 1, 'boss?', NULL, 568, '2024-10-11 04:27:27', 1),
(570, 59, 41, 'bossing', NULL, NULL, '2024-10-11 04:27:45', 1),
(571, 59, 41, 'oy', NULL, 570, '2024-10-11 04:28:18', 1),
(572, 41, 1, 'Hello Boss', NULL, NULL, '2024-10-11 17:40:11', 1),
(573, 41, 1, 'Ey wats app', NULL, NULL, '2024-10-11 17:40:21', 1),
(574, 1, 41, 'Ok lang naman', NULL, NULL, '2024-10-11 17:41:38', 1),
(575, 41, 1, 'Buti naman', NULL, NULL, '2024-10-11 17:41:47', 1),
(577, 41, 1, 'Hey po', NULL, NULL, '2024-10-12 06:04:21', 1),
(578, 41, 59, ' asd', NULL, NULL, '2024-10-12 06:04:46', 0),
(579, 41, 1, 'asd', NULL, NULL, '2024-10-12 06:04:50', 1),
(583, 41, 1, 'psst', NULL, 575, '2024-10-12 08:44:13', 1),
(584, 41, 1, 'oy', NULL, NULL, '2024-10-12 08:44:18', 1),
(585, 41, 1, 'idol', NULL, NULL, '2024-10-12 08:44:22', 1),
(586, 41, 1, 'asd', NULL, NULL, '2024-10-12 08:44:26', 1),
(587, 41, 1, 'ano balita', NULL, 584, '2024-10-12 08:47:50', 1),
(588, 41, 1, 'asd', NULL, 585, '2024-10-12 09:27:07', 1),
(589, 41, 1, 'bossing', NULL, 575, '2024-10-12 09:27:25', 1),
(590, 41, 1, 'asd', NULL, NULL, '2024-10-12 09:27:35', 1),
(591, 41, 1, 'asd', NULL, NULL, '2024-10-15 18:34:05', 1),
(592, 48, 41, 'JASDASDASD', NULL, NULL, '2024-10-15 18:55:45', 1),
(593, 41, 48, 'Heello', NULL, NULL, '2024-10-15 18:56:42', 1),
(594, 48, 41, 'asd', NULL, NULL, '2024-10-15 18:57:09', 1),
(595, 48, 41, '', '670ebb5b8fb8b_UMID_EMV_sample.png', NULL, '2024-10-15 18:58:35', 1),
(596, 48, 41, 'asd', NULL, NULL, '2024-10-15 19:05:19', 1),
(597, 48, 41, 'asd', NULL, NULL, '2024-10-15 19:05:20', 1),
(598, 41, 48, 'asd', NULL, NULL, '2024-10-16 14:34:23', 1),
(599, 41, 1, 'asd', NULL, NULL, '2024-10-16 14:34:31', 1),
(600, 41, 59, 'asd', NULL, NULL, '2024-10-16 14:34:34', 0),
(601, 48, 41, 'What is up bossing?', NULL, NULL, '2024-10-16 14:36:09', 1),
(602, 41, 48, 'Hey po', NULL, NULL, '2024-10-16 14:43:51', 1),
(603, 48, 41, 'Musta buhay buhay', NULL, NULL, '2024-10-16 14:44:21', 1),
(604, 41, 48, 'ok naman', NULL, NULL, '2024-10-16 14:44:31', 1),
(605, 48, 41, 'asd', NULL, NULL, '2024-10-16 14:57:41', 1),
(606, 48, 41, 'asdasdasdasd', NULL, NULL, '2024-10-16 15:09:06', 1),
(607, 48, 41, '', '670fd731edc94_461875136_900319612198903_6003683218236318191_n.jpg', NULL, '2024-10-16 15:09:37', 1),
(608, 48, 41, 'Eto pong halaman magkano?', NULL, NULL, '2024-10-16 15:10:14', 1),
(609, 41, 48, 'Mga 1000 lang po', NULL, NULL, '2024-10-16 15:10:33', 1),
(610, 41, 48, 'Kunin nyo po ba?', NULL, NULL, '2024-10-16 15:12:54', 1),
(611, 48, 41, 'Opo sir san po ba pwede mag meet up?', NULL, NULL, '2024-10-16 15:15:08', 1),
(612, 41, 48, '09+++++++++ eto po number ko contact nalang po kayo', NULL, NULL, '2024-10-16 15:16:08', 1),
(613, 48, 41, 'ok po sir tawag nalang ako sir pag malapit nako', NULL, 612, '2024-10-16 15:16:57', 1),
(614, 41, 48, 'Huh', NULL, NULL, '2024-10-16 17:49:58', 1),
(615, 41, 59, 'asd', NULL, NULL, '2024-10-17 00:31:51', 0),
(616, 41, 48, '', '67105d42c1684_1.png', NULL, '2024-10-17 00:41:38', 1),
(617, 41, 48, '', '67105d6a9b73e_Screenshot 2024-08-17 181108.png', NULL, '2024-10-17 00:42:18', 1),
(618, 41, 48, '', '67105d7b879ed_Screenshot 2024-08-27 205133.png', NULL, '2024-10-17 00:42:35', 1),
(619, 41, 59, 'Hello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello poHello po', NULL, NULL, '2024-10-17 00:48:27', 0),
(620, 41, 48, 'wewewewewewe', NULL, NULL, '2024-10-17 00:51:42', 1),
(621, 41, 1, 'asdasdasdasdasdasdasdasdsad', NULL, NULL, '2024-10-17 00:53:48', 1),
(622, 41, 59, 'Eyy', NULL, NULL, '2024-10-17 14:45:51', 0),
(623, 41, 59, 'Eyy', NULL, NULL, '2024-10-17 14:45:53', 0),
(624, 41, 1, 'bhjk', NULL, 589, '2024-10-18 14:06:11', 1),
(626, 41, 1, 'Hey po', NULL, NULL, '2024-10-19 09:08:41', 1),
(627, 41, 48, 'asd', NULL, NULL, '2024-10-19 09:08:57', 1),
(628, 41, 1, 'Hoy', NULL, NULL, '2024-10-20 12:20:09', 1),
(629, 41, 1, 'Hey po', NULL, NULL, '2024-10-20 12:21:30', 1),
(630, 1, 41, 'asd', NULL, NULL, '2024-10-20 12:27:26', 1),
(631, 1, 59, 'asd', NULL, NULL, '2024-10-20 12:34:37', 0),
(632, 41, 1, 'asd', NULL, NULL, '2024-10-20 12:50:05', 1),
(633, 1, 41, 'ssssssss', NULL, NULL, '2024-10-20 12:50:28', 1),
(634, 41, 1, 'asd', NULL, NULL, '2024-10-20 12:50:34', 1),
(635, 1, 41, 'Hey po', NULL, NULL, '2024-10-20 12:59:03', 1),
(636, 41, 1, 'asdasdasd', NULL, NULL, '2024-10-20 13:00:08', 1),
(637, 41, 1, 'asd', NULL, NULL, '2024-10-20 13:03:58', 1),
(638, 1, 41, 'Hello po', NULL, NULL, '2024-10-20 13:15:24', 1),
(639, 41, 1, 'asd\\', NULL, NULL, '2024-10-20 13:24:21', 1),
(640, 1, 41, 'Hey idol', NULL, NULL, '2024-10-20 13:24:38', 1),
(641, 41, 1, 'asd', NULL, NULL, '2024-10-20 13:31:45', 1),
(642, 1, 41, 'asdas', NULL, NULL, '2024-10-20 13:33:11', 1),
(643, 1, 41, 'Pa seen po', NULL, NULL, '2024-10-20 13:40:03', 1),
(644, 1, 41, 'asd', NULL, NULL, '2024-10-20 13:44:14', 1),
(645, 1, 41, 'Hello po', NULL, NULL, '2024-10-20 13:56:23', 1),
(646, 1, 41, 'asdsadas', NULL, NULL, '2024-10-20 13:57:53', 1),
(647, 1, 41, 'qwe', NULL, NULL, '2024-10-20 14:01:02', 1),
(648, 1, 41, 'qweqwe', NULL, NULL, '2024-10-20 14:01:22', 1),
(649, 41, 1, 'Tama na', NULL, NULL, '2024-10-20 14:04:48', 1),
(650, 1, 41, 'eyy', NULL, NULL, '2024-10-20 14:05:03', 1),
(651, 1, 41, 'testing', NULL, NULL, '2024-10-20 14:05:29', 1),
(652, 1, 41, 'Hello po', NULL, NULL, '2024-10-20 14:14:27', 1),
(653, 1, 41, 'kjhaskjdhasd', NULL, NULL, '2024-10-20 14:14:42', 1),
(654, 1, 41, 'asd', NULL, NULL, '2024-10-20 14:14:49', 1),
(655, 1, 41, 'testing', NULL, NULL, '2024-10-20 14:25:27', 1),
(656, 1, 41, 'Ulit', NULL, NULL, '2024-10-20 14:26:15', 1),
(657, 1, 41, 'asd', NULL, NULL, '2024-10-20 14:26:26', 1),
(658, 1, 41, 'asd', NULL, NULL, '2024-10-20 14:27:54', 1),
(659, 1, 41, 'asd', NULL, NULL, '2024-10-20 14:32:58', 1),
(660, 1, 41, 'dasdasd', NULL, NULL, '2024-10-20 14:33:53', 1),
(661, 1, 41, 'asdsad', NULL, NULL, '2024-10-20 14:34:44', 1),
(662, 1, 41, 'das', NULL, NULL, '2024-10-20 14:36:00', 1),
(663, 48, 41, 'Pa seen po', NULL, NULL, '2024-10-20 14:36:39', 1),
(664, 48, 41, 'asd', NULL, NULL, '2024-10-20 14:36:51', 1),
(665, 41, 48, 'asdasd', NULL, NULL, '2024-10-20 14:37:09', 1),
(666, 48, 41, 'qwe', NULL, NULL, '2024-10-20 14:37:31', 1),
(667, 1, 41, 'sdasd', NULL, NULL, '2024-10-20 14:38:36', 1),
(668, 41, 48, 'asdasd', NULL, NULL, '2024-10-20 14:39:10', 1),
(669, 1, 41, 'asd', NULL, NULL, '2024-10-20 14:39:21', 1),
(670, 1, 41, 'asdasdasd', NULL, NULL, '2024-10-20 14:39:33', 1),
(671, 1, 41, 'asdasd', NULL, NULL, '2024-10-20 14:39:47', 1),
(672, 41, 1, 'daming chat', NULL, NULL, '2024-10-20 14:40:21', 1),
(673, 1, 41, 'asdasdsad', NULL, NULL, '2024-10-20 14:40:37', 1),
(674, 1, 41, 'Hello po', NULL, NULL, '2024-10-20 14:41:05', 1),
(675, 1, 41, 'asdasdsad', NULL, NULL, '2024-10-20 14:41:14', 1),
(676, 48, 41, 'Hello po', NULL, NULL, '2024-10-20 14:41:50', 1),
(677, 48, 41, 'Kamusta po yung halaman', NULL, NULL, '2024-10-20 14:42:14', 1),
(678, 41, 48, 'Ok naman po', NULL, NULL, '2024-10-20 14:42:22', 1),
(679, 48, 41, 'Buti naman', NULL, NULL, '2024-10-20 14:42:31', 1),
(680, 48, 41, '', '671516f0c294e_1.png', NULL, '2024-10-20 14:42:56', 1),
(681, 41, 48, 'ano yan', NULL, NULL, '2024-10-20 14:43:07', 1),
(682, 48, 41, 'wala', NULL, NULL, '2024-10-20 14:43:13', 1),
(683, 48, 41, 'asdasdas', NULL, NULL, '2024-10-20 14:44:54', 1),
(684, 48, 41, 'asd', NULL, NULL, '2024-10-20 14:49:45', 1),
(685, 48, 41, 'asdasd', NULL, NULL, '2024-10-20 14:50:05', 1),
(686, 48, 41, 'asd', NULL, NULL, '2024-10-20 14:51:02', 1),
(687, 48, 41, 'heyy', NULL, NULL, '2024-10-20 14:51:25', 1),
(688, 48, 41, 'asdads', NULL, NULL, '2024-10-20 14:51:57', 1),
(689, 48, 41, 'Hey po', NULL, NULL, '2024-10-20 14:53:33', 1),
(690, 48, 41, 'Hello po', NULL, NULL, '2024-10-20 14:55:45', 1),
(691, 48, 41, 'asd', NULL, NULL, '2024-10-20 15:02:34', 1),
(692, 48, 41, 'asd', NULL, NULL, '2024-10-20 15:04:02', 1),
(693, 48, 41, 'asdasd', NULL, NULL, '2024-10-20 15:06:09', 1),
(694, 48, 41, 'Hello po', NULL, NULL, '2024-10-20 15:06:56', 1),
(695, 1, 41, 'Bossing', NULL, NULL, '2024-10-20 15:09:00', 1),
(696, 1, 41, 'Hello po', NULL, NULL, '2024-10-20 15:09:33', 1),
(697, 48, 41, 'asd', NULL, NULL, '2024-10-20 15:10:13', 1),
(698, 48, 41, 'Hey po', NULL, NULL, '2024-10-20 15:12:12', 1),
(699, 1, 41, 'JASDASDASD', NULL, NULL, '2024-10-20 15:14:03', 1),
(700, 62, 41, 'boss', NULL, NULL, '2024-10-29 13:41:48', 0),
(701, 62, 1, 'ddd', NULL, NULL, '2024-10-29 14:05:33', 0),
(702, 64, 62, 'pogi', NULL, NULL, '2024-10-29 16:55:33', 1),
(703, 62, 64, 'yes bbgirl', NULL, NULL, '2024-10-29 16:56:37', 1),
(704, 62, 64, 'asan na utang mo?', NULL, NULL, '2024-10-29 16:56:56', 1),
(705, 62, 64, 'boss?', NULL, NULL, '2024-10-30 02:04:05', 1),
(706, 66, 64, 'pogi', NULL, NULL, '2024-10-31 14:22:44', 0),
(707, 66, 66, 'sadsd', NULL, NULL, '2024-10-31 14:29:35', 0),
(708, 69, 68, 'babty', NULL, NULL, '2024-10-31 15:49:38', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `plantid` int(10) NOT NULL,
  `added_by` int(11) NOT NULL,
  `plantname` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `plantcolor` varchar(100) NOT NULL,
  `img1` varchar(128) CHARACTER SET utf8mb4 NOT NULL,
  `img2` varchar(128) CHARACTER SET utf8mb4 NOT NULL,
  `img3` varchar(128) CHARACTER SET utf8mb4 NOT NULL,
  `plantSize` varchar(10) CHARACTER SET utf8mb4 NOT NULL,
  `plantcategories` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `details` text CHARACTER SET utf8mb4 NOT NULL,
  `region` varchar(128) NOT NULL,
  `province` varchar(128) NOT NULL,
  `city` varchar(50) NOT NULL,
  `barangay` varchar(128) NOT NULL,
  `street` varchar(128) DEFAULT NULL,
  `price` float(11,2) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `listing_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`plantid`, `added_by`, `plantname`, `plantcolor`, `img1`, `img2`, `img3`, `plantSize`, `plantcategories`, `details`, `region`, `province`, `city`, `barangay`, `street`, `price`, `createdAt`, `updatedAt`, `listing_status`) VALUES
(62, 8, 'Halaman', '', 'sunset-1373171_640.jpeg', 'default-image.jpg', 'default-image.jpg', 'Adult', 'Aquatic', 'tite', '', '', '', '', '', 572.00, '2024-10-31 15:41:48', '2024-10-31 15:41:48', 2),
(63, 8, 'Halaman', '', 'titanic-christmas-present.png', 'default-image.jpg', 'default-image.jpg', 'Seedling', 'Aquatic', 'sdasdasd', 'Region XIII (Caraga)', 'Agusan Del Norte', 'Santiago', 'San Isidro', 'dsdsd', 400.00, '2024-10-31 15:42:17', '2024-10-31 15:42:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_archive`
--

CREATE TABLE `product_archive` (
  `archiveID` int(11) NOT NULL,
  `postedBy` varchar(50) NOT NULL,
  `postPlantName` varchar(50) NOT NULL,
  `img1` varchar(128) NOT NULL,
  `img2` varchar(128) NOT NULL,
  `img3` varchar(128) NOT NULL,
  `plantSize` varchar(20) NOT NULL,
  `plantCategories` varchar(40) NOT NULL,
  `details` varchar(128) NOT NULL,
  `location` int(70) NOT NULL,
  `price` int(10) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_archive`
--

INSERT INTO `product_archive` (`archiveID`, `postedBy`, `postPlantName`, `img1`, `img2`, `img3`, `plantSize`, `plantCategories`, `details`, `location`, `price`, `createdAt`, `updatedAt`) VALUES
(40, 'maranathabarredo@gmail.com', 'Cactus', 'cactus.jpg', 'Screenshot 2024-10-01 200917.png', 'Screenshot 2024-10-01 222606.png', 'Seedling', 'Cacti', '', 0, 100, '2024-10-12 16:28:58', '2024-10-12 16:28:58'),
(41, 'maranathabarredo@gmail.com', 'Kangkong', 'Screenshot 2024-10-05 193948.png', '', '', '1 meter', 'Veggies', '', 0, 200, '2024-10-12 16:29:00', '2024-10-12 16:29:00'),
(42, 'maranathabarredo@gmail.com', 'Munggo', 'sold.jpg', 'default-image.jpg', 'default-image.jpg', 'Adult', 'Outdoor', '', 0, 100, '2024-10-12 16:29:02', '2024-10-12 16:29:02'),
(43, 'maranathabarredo@gmail.com', 'asd', 'halam.jpg', 'default-image.jpg', 'default-image.jpg', 'Malaki', 'Tinola', '', 0, 123, '2024-10-12 16:29:03', '2024-10-12 16:29:03'),
(44, 'maranathabarredo@gmail.com', 'Wala lang', 'Screenshot 2024-10-06 180127.png', 'default-image.jpg', 'default-image.jpg', 'Adult', 'Climbers', '', 0, 123, '2024-10-12 16:29:05', '2024-10-12 16:29:05'),
(45, 'maranathabarredo@gmail.com', 'Malunggay', '3.png', 'default-image.jpg', 'default-image.jpg', 'Seedling', 'Indoor', '', 0, 1232, '2024-10-12 16:29:06', '2024-10-12 16:29:06'),
(46, 'maranathabarredo@gmail.com', 'Euphorbia obesa', '461861999_900319622198902_4781648371440441819_n.jpg', '461795555_900319615532236_6193450879555062943_n.jpg', '461875136_900319612198903_6003683218236318191_n.jpg', 'Juvenile', 'Outdoor', '', 0, 800, '2024-10-12 18:25:35', '2024-10-12 18:25:35'),
(51, 'maranathabarredo@gmail.com', 'Kangkong', 'Screenshot 2024-09-09 134653.png', 'default-image.jpg', 'default-image.jpg', 'Adult', 'Bushes', '', 0, 1231, '2024-10-21 15:03:30', '2024-10-21 15:03:30');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `reporting_user` int(11) NOT NULL,
  `reported_user` int(11) NOT NULL,
  `report_reason` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `proof_img_1` varchar(128) DEFAULT NULL,
  `proof_img_2` varchar(128) DEFAULT NULL,
  `proof_img_3` varchar(128) DEFAULT NULL,
  `proof_img_4` varchar(128) DEFAULT NULL,
  `proof_img_5` varchar(128) DEFAULT NULL,
  `proof_img_6` varchar(128) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `report_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `seller_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`seller_id`, `user_id`) VALUES
(8, 68);

-- --------------------------------------------------------

--
-- Table structure for table `seller_applicant`
--

CREATE TABLE `seller_applicant` (
  `applicantID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `validId` varchar(128) NOT NULL,
  `selfieValidId` varchar(128) NOT NULL,
  `status` enum('pending','approved','rejected') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_applicant`
--

INSERT INTO `seller_applicant` (`applicantID`, `user_id`, `validId`, `selfieValidId`, `status`) VALUES
(27, 68, 'joeldejesus0006@gmail.com_validId.png', 'joeldejesus0006@gmail.com_selfieValidId.jpeg', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `seller_applicant_archive`
--

CREATE TABLE `seller_applicant_archive` (
  `archiveID` int(11) NOT NULL,
  `applicantID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `validId` varchar(128) NOT NULL,
  `selfieValidId` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_applicant_archive`
--

INSERT INTO `seller_applicant_archive` (`archiveID`, `applicantID`, `user_id`, `validId`, `selfieValidId`) VALUES
(1, 22, 59, 'azarik@gmail.com_validId.png', 'azarik@gmail.com_selfieValidId.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `proflePicture` varchar(128) DEFAULT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `phoneNumber` bigint(12) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `proflePicture`, `firstname`, `lastname`, `email`, `gender`, `phoneNumber`, `address`, `password`, `user_status`) VALUES
(68, 'joeldejesus0006_gmail_com.jpeg', 'Joel', 'De jesus', 'joeldejesus0006@gmail.com', 'Male', 2324234234, 'sad', '$2y$10$hhHMnrr6TZhmms.is9LZDe0cJXWnTu99Xfuu.Pr7qlesqXvha5ehG', 2),
(69, 'michaeljohnseva_gmail_com.jpg', 'Imji', 'Siba', 'michaeljohnseva@gmail.com', 'Male', 2324234234, 'sad', '$2y$10$jMy0bDZ14u0RbiHnNa7FlOO3WTeCio0LbMnCb5RRHUemn1H6orQ/i', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`messageId`),
  ADD KEY `senderId` (`senderId`,`receiverId`),
  ADD KEY `receiverId` (`receiverId`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`plantid`),
  ADD KEY `seller_id` (`added_by`);

--
-- Indexes for table `product_archive`
--
ALTER TABLE `product_archive`
  ADD PRIMARY KEY (`archiveID`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reporting_user` (`reporting_user`,`reported_user`),
  ADD KEY `reported_user` (`reported_user`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`seller_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `seller_applicant`
--
ALTER TABLE `seller_applicant`
  ADD PRIMARY KEY (`applicantID`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `seller_applicant_archive`
--
ALTER TABLE `seller_applicant_archive`
  ADD PRIMARY KEY (`archiveID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `email` (`email`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `messageId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=709;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `plantid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `product_archive`
--
ALTER TABLE `product_archive`
  MODIFY `archiveID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `seller_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `seller_applicant`
--
ALTER TABLE `seller_applicant`
  MODIFY `applicantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `seller_applicant_archive`
--
ALTER TABLE `seller_applicant_archive`
  MODIFY `archiveID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_ibfk_1` FOREIGN KEY (`senderId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `chats_ibfk_2` FOREIGN KEY (`receiverId`) REFERENCES `users` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `sellers` (`seller_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`reporting_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`reported_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `sellers`
--
ALTER TABLE `sellers`
  ADD CONSTRAINT `sellers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seller_applicant`
--
ALTER TABLE `seller_applicant`
  ADD CONSTRAINT `seller_applicant_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;