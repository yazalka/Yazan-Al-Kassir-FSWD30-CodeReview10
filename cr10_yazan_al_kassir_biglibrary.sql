-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2018 at 04:36 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_yazan_al_kassir_biglibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `author_id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`author_id`, `first_name`, `last_name`) VALUES
(1, 'Leo', 'Tolstoy'),
(2, 'Gustave', 'Flaubert'),
(3, 'F. Scott', 'Fitzgerald'),
(4, 'Vladimir', 'Nabokov'),
(5, 'George', 'Eliot'),
(6, 'Mark', 'Twain'),
(7, 'Anton', 'Chekhov'),
(8, 'Marcel', 'Proust'),
(9, 'William', 'Shakespeare'),
(10, 'Herman', 'Melville');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image` text,
  `short_description` text,
  `publish_date` date DEFAULT NULL,
  `fk_author_id` int(11) DEFAULT NULL,
  `fk_publisher_id` int(11) DEFAULT NULL,
  `isbn_code` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`media_id`, `type`, `title`, `image`, `short_description`, `publish_date`, `fk_author_id`, `fk_publisher_id`, `isbn_code`) VALUES
(1, 'book', ' Anna Karenina', 'http://ecx.images-amazon.com/images/I/51vPf2CfSEL._SL160_.jpg', 'Anna Karenina tells of the doomed love affair between the sensuous and rebellious Anna and the dashing officer, Count Vronsky. Tragedy unfolds as Anna rejects her passionless marriage and must endu.', '2015-03-05', 1, 1, 5684368965432),
(2, 'book', 'Madame Bovary', 'http://ecx.images-amazon.com/images/I/51o5dnjk07L._SL160_.jpg', 'For daring to peer into the heart of an adulteress and enumerate its contents with profound dispassion, the author of Madame Bovary was tried for offenses against morality and religion. What shoc', '2015-05-04', 2, 2, 5684653742432),
(3, 'book', 'The Great Gatsby', 'https://images-na.ssl-images-amazon.com/images/I/51khWutZqCL._SL160_.jpg', 'The novel chronicles an era that Fitzgerald himself dubbed the \"Jazz Age\". Following the shock and chaos of World War I, American society enjoyed unprecedented levels of prosperity during the', '2013-07-26', 3, 3, 7534765982345),
(4, 'book', ' Lolita', 'https://images-na.ssl-images-amazon.com/images/I/41s2G6WxLvL._SL160_.jpg', 'The book is internationally famous for its innovative style and infamous for its controversial subject: the protagonist and unreliable narrator, middle aged Humbert Humbert, becomes obsessed and se', '2012-06-24', 4, 4, 5684654567842),
(5, 'book', 'The Adventures of Huckleberry Fin', 'http://ecx.images-amazon.com/images/I/51Ht1M-GPXL._SL160_.jpg', 'Revered by all of the towns children and dreaded by all of its mothers, Huckleberry Finn is indisputably the most appealing child-hero in American literature. Unlike the tall-tale, idyllic worl.', '2011-01-04', 5, 5, 1256783742432),
(6, 'book', 'Middlemarch', 'http://ecx.images-amazon.com/images/I/51eRjEMiOgL._SL160_.jpg', 'Middlemarch: A Study of Provincial Life is a novel by George Eliot, the pen name of Mary Anne Evans, later Marian Evans. It is her seventh novel, begun in 1869 and then put aside during the final', '2014-06-15', 6, 6, 1234567543212),
(7, 'book', 'The Stories of Anton Chekhov', 'https://images-na.ssl-images-amazon.com/images/I/51LzR19wPHL._SL160_.jpg', '\r\nAnton Pavlovich Chekhov was a Russian short-story writer, playwright and physician, considered to be one of the greatest short-story writers in the history of world literature. His career as a dram', '2010-11-07', 7, 7, 5689008776554),
(8, 'book', 'In Search of Lost Time', 'https://images-na.ssl-images-amazon.com/images/I/51me-a8zgcL._SL160_.jpg', 'Swanns Way, the first part of A la recherche de temps perdu, Marcel Prouss seven-part cycle, was published in 1913. In it, Proust introduces the themes that run through the entire work. The narr', '2015-02-14', 8, 8, 5684653742432),
(9, 'book', 'Hamlet', 'https://images-na.ssl-images-amazon.com/images/I/51xBp-sLaSL._SL160_.jpg', 'The Tragedy of Hamlet, Prince of Denmark, or more simply Hamlet, is a tragedy by William Shakespeare, believed to have been written between 1599 and 1601. The play, set in Denmark, recounts how Pri', '2012-04-23', 9, 9, 6789054321467),
(10, 'book', 'Moby Dick', 'http://ecx.images-amazon.com/images/I/51X8kMIIeBL._SL160_.jpg', 'First published in 1851, Melvilles masterpiece is, in Elizabeth Hardwicks words, \"the greatest novel in American literature.\" The saga of Captain Ahab and his monomaniacal pursuit of the white', '2009-05-22', 10, 10, 677687654467);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `size` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `name`, `address`, `size`) VALUES
(1, 'Tredition', 'Hainburger 32', 'Big'),
(2, 'Concept Publishing Company', 'Linzer 42', 'small'),
(3, 'W. Kohlhammer Verlag', 'Landstraße 11', 'medium'),
(4, 'Behrman House, Inc', 'Via Roma 33', 'medium'),
(5, 'Syracuse University Press', 'Rue de l’Église 12', 'Big'),
(6, 'Cambridge University Press', 'calle Real 12', 'medium'),
(7, 'Zed Books', 'Bahnhofstrasse 7', 'Big'),
(8, 'Campus Verlag', 'Hauptstrasse 3', 'small'),
(9, 'Cuvillier Verlag', 'High Street 16', 'Big'),
(10, 'Springer', 'Main Street 43', 'small');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Yazan', 'Alkassir', 'yazan.kasser1@gmail.com', '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225'),
(2, 'yazan', 'alkassir', 'yazan.kassir1@gmail.com', '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`),
  ADD KEY `fk_author_id` (`fk_author_id`),
  ADD KEY `fk_publisher_id` (`fk_publisher_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_1` FOREIGN KEY (`fk_author_id`) REFERENCES `author` (`author_id`),
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`fk_publisher_id`) REFERENCES `publisher` (`publisher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
