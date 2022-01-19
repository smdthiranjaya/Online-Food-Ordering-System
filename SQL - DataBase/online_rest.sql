-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 20, 2021 at 03:02 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `adm_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`adm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`) VALUES
(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', ''),
(9, 'smd', 'aef4bdc01c45a0f39a7f7dbca49c15bd', 'smd@gmail.com', 'QMZR92');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

DROP TABLE IF EXISTS `admin_codes`;
CREATE TABLE IF NOT EXISTS `admin_codes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codes` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

DROP TABLE IF EXISTS `dishes`;
CREATE TABLE IF NOT EXISTS `dishes` (
  `d_id` int NOT NULL AUTO_INCREMENT,
  `rs_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(19, 55, 'Potato Puff Pastry', 'Potato Puff Pastry is a very light pastry made in layers that expand when cooked, leaving large air pockets inside.', '750.00', '6053d0f14a5e5.jpg'),
(20, 55, 'Choclate Mousse  Pastries', 'This super moist dark chocolate mousse cake combines unsweetened natural cocoa powder and dark cocoa powder for an extra rich flavor.', '560.00', '6053d277f0c22.jpg'),
(21, 56, 'Fried Shrimps', 'Crispy Fried Shrimp are breaded and fried until golden and crunchy. Dip them in some cocktail sauce for a wonderful treat from the sea.', '470.00', '6053d31d346f6.jpg'),
(22, 56, 'Frozen Shimps', 'Shrimp has been the most popular seafood in the Sri Lanka for yearsâ€”it represents more than a quarter of the seafood eaten in this country.', '390.00', '6053d41f7f3b9.jpg'),
(23, 57, 'Cheese Pakora', 'cheese pakoda and Paneer pakoda are snacks that is served in most restaurants.', '780.00', '6053d5f240207.jpg'),
(24, 58, 'Chicken rice soup', 'Instructions. In a large soup pot, heat oil over medium-high heat. Add garlic, parsley and thyme and cook 1 minute', '350.00', '6053d84f6b46b.jpg'),
(25, 59, 'Coffee', 'Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species', '150.00', '6053d88b79bd2.jpg'),
(26, 59, 'Lemon', 'The lemon, Citrus limon, is a species of small evergreen tree in the flowering plant family Rutaceae,', '120.00', '6053d8bb864d1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

DROP TABLE IF EXISTS `remark`;
CREATE TABLE IF NOT EXISTS `remark` (
  `id` int NOT NULL AUTO_INCREMENT,
  `frm_id` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(72, 41, 'in process', 'on the way!', '2021-03-18 23:27:44');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `rs_id` int NOT NULL AUTO_INCREMENT,
  `c_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`) VALUES
(55, 14, 'Koholana Restaurent', 'koholanaresturent@gmail.com', '0372259874', 'www.koholanaresturent.lk', '6am', '6pm', 'mon-fri', 'Kurunagala Road, Alawwa.', '6053c72b87726.jpg'),
(56, 12, 'The Fish House - Kurunagala', 'the-fish-house-kurunagala@gmail.com', '037569874586', 'the-fish-house-kurunagala.lk', '7am', '5pm', 'mon-sat', 'Chilaw Road,Negombo.', '6053c953be4b6.jpg'),
(57, 13, 'White Smoke', 'whitesmoke@gmail.com', '0372564875', 'whitesmoke.lk', '7am', '7pm', '24hr-x7', 'Ananda Mawatha,Pannala.', '6053cb5df33bd.jpg'),
(58, 15, 'Ceylon Soup', 'ceylonsoup@gmail.com', '0256985246', 'ceylonsoup.lk', '6am', '3pm', 'mon-thu', 'Hammalwa Road, Kuliyapitiya.', '6053cdd530065.jpg'),
(59, 16, 'Caffe 365', 'caffe365@gmail.com', '04569865426', 'caffe365.lk', '10am', '6pm', '24hr-x7', 'Anuradapura Road, Thambuththegama.', '6053cf4728742.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

DROP TABLE IF EXISTS `res_category`;
CREATE TABLE IF NOT EXISTS `res_category` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`) VALUES
(12, 'SeaFood'),
(13, 'Grill'),
(14, 'Pastry'),
(15, 'SoupSalad'),
(16, 'Beverages');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`) VALUES
(36, 'SMD', 'SMD', 'THIRA', 'smd@gmail.com', '0711757988', 'bcbc93a39ba88bd1e21b10005f659eb5', 'hammalawa,kuliyapitiya.', 1),
(38, 'thiranjaya', 'SMD', 'Thiranjaya', 'thiran@gmail.com', '0773215555', '0448665a43123ac66cefc3d7c433f2f0', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

DROP TABLE IF EXISTS `users_orders`;
CREATE TABLE IF NOT EXISTS `users_orders` (
  `o_id` int NOT NULL AUTO_INCREMENT,
  `u_id` int NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`) VALUES
(41, 36, 'Potato Puff Pastry', 2, '750.00', 'in process'),
(42, 36, 'Choclate Mousse  Pastries', 1, '560.00', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
