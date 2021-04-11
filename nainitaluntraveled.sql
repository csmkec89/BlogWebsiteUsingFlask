-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2021 at 09:51 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nainitaluntraveled`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `SRNO` int(4) NOT NULL,
  `ABOUT` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`SRNO`, `ABOUT`) VALUES
(1, 'Here is another instance where any area of your website -- not just the \'About Us\' page -- is an opportunity to break the mold.Many companies add just a simple mission statement or company profile, but people often don\'t want to ready a wall of text explaining what you do. So, Refinery broke it down to convey the intangible qualities that are tough to include in a basic \'About Us\' page,Although Refinery does introduce its page with a description of its business, its goes out on a bang -- four bangs, to be exact. The organization is on a \'mission, sure, but there\'s also an \'essence\' of Refinery, a \'promise\' it keeps, and a \'vibe\' it gives off.');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `SRNO` int(4) NOT NULL,
  `NAME` varchar(14) NOT NULL,
  `EMAIL` varchar(16) NOT NULL,
  `PHONE` int(12) NOT NULL,
  `MESSAGE` text NOT NULL,
  `DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`SRNO`, `NAME`, `EMAIL`, `PHONE`, `MESSAGE`, `DATE`) VALUES
(1, 'Vinay durgapal', 'csmkec@gmail.com', 2147483647, 'Hi this is a test message', '2021-04-11 14:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `SRNO` int(11) NOT NULL,
  `TITLE` text NOT NULL,
  `CONTENT` text NOT NULL,
  `SUBTITLE` text NOT NULL,
  `SLUG` varchar(14) NOT NULL,
  `IMG_FILE` varchar(14) NOT NULL,
  `DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`SRNO`, `TITLE`, `CONTENT`, `SUBTITLE`, `SLUG`, `IMG_FILE`, `DATE`) VALUES
(1, 'FIRST POST', 'Nainital is a Himalayan resort(pahadi sport) town in the Kumaon region of India’s Uttarakhand state, at an elevation of roughly 2,000m. Formerly a British hill station, it’s set around Nainital Lake, a popular boating site with Naina Devi Hindu Temple on its north shore. A cable car runs to Snow View observation point (at 2,270m), with vistas over the town and mountains including Nanda Devi, Uttarakhand’s highest peak.', 'Hi this is my first post on Nainital', 'first-post', 'about-bg.jpg', '2021-04-11 16:32:41'),
(2, 'MY SECOND POST', 'Haldwan {Kumaoni- हल्द्वानी} is the second most populous city, and largest commercial market in the Indian state of Uttarakhand. it is also the largest city of the Kumaon region. Haldwani is said to be the financial capital of Uttarakhand, having the most commercial, economic and industrial activities of the state.', 'Hi this is my first post on Haldwani', 'second-post', 'home-bg.jpg', '2021-04-11 16:25:18'),
(3, 'THIS IS MY THIRD POST', 'Delhi, India’s capital territory, is a massive metropolitan area in the country’s north. In Old Delhi, a neighborhood dating to the 1600s, stands the imposing Mughal-era Red Fort, a symbol of India, and the sprawling Jama Masjid mosque, whose courtyard accommodates 25,000 people. Nearby is Chandni Chowk, a vibrant bazaar filled with food carts, sweets shops and spice stalls.', 'THIS IS MY POST ON DELHI', 'third-post', 'about-bg.jpg', '2021-04-11 14:53:16'),
(4, 'chetan singh mehra', '', '', 'null', 'required-bg.jp', '2021-04-11 16:29:00'),
(6, 'THIS IS MY SIXTH POS', 'Bengaluru (also called Bangalore) is the capital of India\'s southern Karnataka state. The center of India\'s high-tech industry, the city is also known for its parks and nightlife. By Cubbon Park, Vidhana Soudha is a Neo-Dravidian legislative building. Former royal residences include 19th-century Bangalore Palace, modeled after England’s Windsor Castle, and Tipu Sultan’s Summer Palace, an 18th-century teak structure.', 'On Bangalore', 'sixth-post', 'home-bg.jpg', '2021-04-11 23:18:49'),
(7, 'THIS IS MY SIXTH POST', 'Bengaluru (also called Bangalore) is the capital of India\'s southern Karnataka state. The center of India\'s high-tech industry, the city is also known for its parks and nightlife. By Cubbon Park, Vidhana Soudha is a Neo-Dravidian legislative building. Former royal residences include 19th-century Bangalore Palace, modeled after England’s Windsor Castle, and Tipu Sultan’s Summer Palace, an 18th-century teak structure.', 'On Bangalore', 'sixth-post', 'home-bg.jpg', '2021-04-11 16:31:13'),
(8, 'THIS IS MY SIXTH POST', 'Bengaluru (also called Bangalore) is the capital of India\'s southern Karnataka state. The center of India\'s high-tech industry, the city is also known for its parks and nightlife. By Cubbon Park, Vidhana Soudha is a Neo-Dravidian legislative building. Former royal residences include 19th-century Bangalore Palace, modeled after England’s Windsor Castle, and Tipu Sultan’s Summer Palace, an 18th-century teak structure.', 'On Bangalore', 'sixth-post', 'home-bg.jpg', '2021-04-11 16:31:17'),
(9, 'My name is ', 'my 8 post ', 'this is my 8 post', 'eight-post', 'home-bg.jpg', '2021-04-12 00:11:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`SRNO`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`SRNO`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`SRNO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `SRNO` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `SRNO` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `SRNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
