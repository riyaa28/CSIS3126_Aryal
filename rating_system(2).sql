-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 02:59 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rating_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `price` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `description`, `price`, `image`, `created`, `modified`) VALUES
(12345678, 'Ramenits', '<ul style=\"margin:0px;padding:15px;\">\r\n				<li>At Ramenits, we strive to provide a warm and family-like atmosphere where friends and family can relax and enjoy our unique selection of sake(Japanese craft beers) paired with our many tapas, or share conversation over our extensive selection of ramen. We look forward to seeing you soon!</li>\r\n				\r\n			\r\n				<li><b>Phone:</b> 401-123-4567</li>\r\n				<li><a href=\"https://ramentis.com/\">www.ramentis.com</a></li>\r\n			</ul>	', 25, 'ramen.jpeg', '2018-06-28 17:17:46', '2019-01-19 08:28:04'),
(1234455, 'Chill & Grill', '<ul style=\"margin:0px;padding:15px;\">\r\n				<li>Treat yourself to a whole new food experience at Chill & Grill, a family-owned and operated restaurant. We have been serving customers for over 10 years where we offer authentic Turkish cuisine, healthy options, and halal meat.</li>\r\n				\r\n			\r\n				<li><b>Phone:</b> 401-908-6549</li>\r\n				<li><a href=\"https://chillgrill.com/\">www.chillgrill.com</a></li>\r\n			</ul>	', 60, 'chill.jpeg', '2012-01-05 20:37:29', '2022-10-06 14:32:29'),
(12345679, 'Delice Perle', '<ul style=\"margin:0px;padding:15px;\">\r\n				<li>Delice Perle, a waffle shop serving scratch Liège waffles, locally made ice cream, and awesome coffee and hot chocolate. Waffles here come in a variety of shapes and sizes. Ready to be awestruck with the architecture and art!</li>\r\n				<li><b>Phone:</b> 401-832-5242</li>\r\n				<li><a href=\"deliceperle.com\">www.deliceperle.com</a></li>\r\n\r\n			</ul>	', 30, 'delice.jpeg', '2015-05-11 17:35:14', '2019-01-19 08:28:04'),
(12345677, 'The Bakery Cafe', '<ul style=\"margin:0px;padding:15px;\">\r\n\r\n				<li>The Bakery Cafe is known not only for its quality food, accessibility and efficient service but also for accepting and employing deaf staff.</li>			\r\n				<li><b>Phone:</b> 401-234-6789</li>\r\n				<li><a href=\"https://www.thebakerycafe.com\">www.thebakerycafe.com</a></li>\r\n			</ul>	', 40, 'bakerycafe.jpeg', '2022-11-22 06:46:44', '2022-11-22 06:46:44'),
(1234566, 'Tasty Burger', '<ul style=\"margin:0px;padding:15px;\">\r\n				<li>Tasty Burger is an innovative restaurant concept that is redefining its category by providing a burger experience that combines the superior product, service and atmosphere associated with sit-down casual dining. With its handcrafted menu items ranging from smashed-to-order burgers, chicken sandwiches, salads, and sides made with fresh, premium ingredients and served in less than six minutes.</li>\r\n				\r\n			\r\n				<li><b>Phone:</b> 401-678-9864</li>\r\n				<li><a href=\"https://tastyburger.com/\">www.tastyburger.com</a></li>\r\n			</ul>	', 25, 'tasty.jpeg', '2012-02-14 20:28:27', '2022-11-16 17:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `item_rating`
--

CREATE TABLE `item_rating` (
  `ratingId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `ratingNumber` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_rating`
--

INSERT INTO `item_rating` (`ratingId`, `itemId`, `userId`, `ratingNumber`, `title`, `comments`, `created`, `modified`) VALUES
(22, 12345679, 5, 1, 'Bad', 'Bad', '2019-01-20 17:00:58', '2019-01-20 17:00:58'),
(30, 12345678, 10, 4, 'Great place', 'Loveddddd the food here', '2022-11-26 22:14:30', '2022-11-26 22:14:30'),
(31, 12345677, 10, 4, 'Nice', 'Nice place', '2022-11-26 22:15:42', '2022-11-26 22:15:42'),
(32, 1234566, 10, 3, 'Yumm', 'Really tastyy', '2022-11-27 21:32:53', '2022-11-27 21:32:53'),
(34, 1234455, 10, 4, 'Nice', 'Lovedd everything', '2022-11-27 22:24:04', '2022-11-27 22:24:04'),
(35, 1234455, 1, 2, 'Grill??', 'Not really a chill place', '2022-11-27 22:25:59', '2022-11-27 22:25:59'),
(38, 12345679, 12, 2, 'Alright', 'Dont understand the hoopla about it', '2022-11-27 22:55:46', '2022-11-27 22:55:46'),
(39, 12345678, 1, 4, 'Yumm', 'Yummm', '2022-11-28 17:18:12', '2022-11-28 17:18:12'),
(40, 12345679, 14, 4, 'Really good', 'Delicious waffles', '2022-11-28 17:20:48', '2022-11-28 17:20:48'),
(48, 12345679, 12, 3, 'hi', 'Let\'s try this', '2022-11-28 17:50:23', '2022-11-28 17:50:23'),
(50, 12345677, 15, 4, 'Good stuff', 'Some good baked stuff', '2022-11-30 21:58:39', '2022-11-30 21:58:39'),
(51, 1234566, 1, 2, 'Just ok', 'Not so good', '2022-12-01 22:04:08', '2022-12-01 22:04:08'),
(52, 12345677, 1, 3, 'nice', 'the food tasted alright but service was really nice', '2022-12-01 22:06:29', '2022-12-01 22:06:29'),
(53, 12345679, 1, 5, 'Loveddd it', 'Really good waffles!!!!!!!!!!', '2022-12-01 22:07:57', '2022-12-01 22:07:57'),
(65, 12345679, 17, 5, 'Delicious', 'Delicious delice', '2022-12-12 18:02:53', '2022-12-12 18:02:53'),
(70, 12345678, 20, 5, 'best', 'Best ramen place everr', '2022-12-14 00:17:09', '2022-12-14 00:17:09'),
(71, 12345677, 20, 5, 'Vibe check', 'awesome food awesome vibe', '2022-12-14 00:18:10', '2022-12-14 00:18:10'),
(72, 12345679, 20, 5, 'IceSCREAMMM', 'Tastiest icecream ever', '2022-12-14 00:19:33', '2022-12-14 00:19:33'),
(73, 1234566, 20, 5, 'Tasty burgers', 'Actually tasty burgers', '2022-12-14 00:21:06', '2022-12-14 00:21:06'),
(74, 1234455, 20, 5, 'Grilled', 'the grilled chicken was out of the world', '2022-12-14 00:21:40', '2022-12-14 00:21:40'),
(75, 12345679, 22, 5, 'Yummmy', 'it was really yummy', '2022-12-14 22:39:26', '2022-12-14 22:39:26'),
(79, 1234455, 23, 3, 'yummy', 'yummy', '2022-12-14 22:59:44', '2022-12-14 22:59:44'),
(80, 1234455, 25, 4, 'chilling', 'chill ', '2022-12-14 23:20:49', '2022-12-14 23:20:49'),
(82, 12345679, 26, 3, 'it was alright', 'alright', '2022-12-14 23:38:33', '2022-12-14 23:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `item_users`
--

CREATE TABLE `item_users` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_users`
--

INSERT INTO `item_users` (`userid`, `username`, `password`, `avatar`) VALUES
(1, 'Riya', '202cb962ac59075b964b07152d234b70', 'user4.jpg'),
(2, 'Smith', '202cb962ac59075b964b07152d234b70', 'user3.jpg'),
(4, 'Mary', '202cb962ac59075b964b07152d234b70', 'user6.jpg'),
(5, 'Katy', '202cb962ac59075b964b07152d234b70', 'user4.jpg'),
(6, 'Rhode', '202cb962ac59075b964b07152d234b70', 'profile.png'),
(10, 'Rose', 'efd02694d21a801f598ce1b6114171fe', 'user1.jpg'),
(11, 'James', 'f057f5ccb87a310534b9dda3a69a72c4', 'user3.jpg'),
(12, 'Sambridhi', 'd077f244def8a70e5ea758bd8352fcd8', 'user6.jpg'),
(14, 'John', '6057f13c496ecf7fd777ceb9e79ae285', ''),
(15, 'John', '2829fc16ad8ca5a79da932f910afad1c', 'user3.jpg'),
(16, 'Taylor', '149603e6c03516362a8da23f624db945', 'user4.jpg'),
(17, 'Pam', '484ae24edd22ea09a58edc2b6c58ee2b5f3879e3b267838a8726366f255fd4b9', ''),
(18, 'Jim', 'ee96e48ac867ab59efb688ad1eaef6ef54d06bc565785570164bd9bbb03d67e3', 'user3.jpg'),
(20, 'Tina', '00c4285274fcc5d6fba2ee58daf0d8c2b9b825b68d35d65d0e90a9bb333a51b5', 'user7.jpg'),
(21, 'Maya', 'd74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1', 'user7.jpg'),
(22, 'Riya', 'd74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1', 'user7.jpg'),
(23, 'Maddie', 'd74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1', 'user1.jpg'),
(24, 'John', 'cba06b5736faf67e54b07b561eae94395e774c517a7d910a54369e1263ccfbd4', 'user3.jpg'),
(25, 'Kayla', 'd74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1', 'user2.jpg'),
(26, 'Emma', 'fa690b82061edfd2852629aeba8a8977b57e40fcb77d1a7a28b26cba62591204', 'user6.jpg'),
(27, 'Emily', 'd74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1', 'user4.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_rating`
--
ALTER TABLE `item_rating`
  ADD PRIMARY KEY (`ratingId`);

--
-- Indexes for table `item_users`
--
ALTER TABLE `item_users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12345680;

--
-- AUTO_INCREMENT for table `item_rating`
--
ALTER TABLE `item_rating`
  MODIFY `ratingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `item_users`
--
ALTER TABLE `item_users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
