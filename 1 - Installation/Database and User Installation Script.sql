-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 18, 2022 at 04:52 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `SE-team-25`
--
DROP DATABASE IF EXISTS `SE-team-25`;
CREATE DATABASE IF NOT EXISTS `SE-team-25` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `SE-team-25`;

-- --------------------------------------------------------

--
-- Table structure for table `Agent`
--

DROP TABLE IF EXISTS `Agent`;
CREATE TABLE IF NOT EXISTS `Agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` char(45) DEFAULT NULL,
  `last_name` char(45) DEFAULT NULL,
  `email` char(40) NOT NULL,
  `password` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Agent`
--

INSERT INTO `Agent` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 'Bill', 'Howells', 'b.howells@hotmail.com', 'VJjcSkKe'),
(2, 'Layton', 'Taylor', 'l.taylor@hotmail.com', '4ygmTUwq'),
(3, 'Asiyah', 'Lynch', 'a.lynch@hotmail.com', 'H9AjRYDb'),
(4, 'Keri', 'Hassan', 'k.hassan@hotmail.com', 'SkJLVhG9'),
(5, 'Archie', 'Dupont', 'a.dupont@hotmail.com', 'DgJvMp4f'),
(6, 'Blade', 'Leonard', 'b.leonard@hotmail.com', 'eeG339ep'),
(7, 'Ikrah', 'Burch', 'i.burch@hotmail.com', 'nazM8tpA'),
(8, 'Ian', 'Hill', 'i.hill@hotmail.com', 'YHqxK5Ku'),
(9, 'Stefan', 'Fischer', 's.fischer@hotmail.com', 'NLmud5Am'),
(10, 'Camilla', 'Glass', 'c.glass@hotmail.com', 'EjNE2KX5');

-- --------------------------------------------------------

--
-- Table structure for table `Hospital`
--

DROP TABLE IF EXISTS `Hospital`;
CREATE TABLE IF NOT EXISTS `Hospital` (
  `id` int(11) NOT NULL,
  `name` char(50) DEFAULT NULL,
  `password` char(20) DEFAULT NULL,
  `email` char(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Hospital`
--

INSERT INTO `Hospital` (`id`, `name`, `password`, `email`) VALUES
(1, 'Alpha Health Care', 'tSVvYTDc', 'alpha@hotmail.com'),
(2, 'Gold River Hospital', 'ywkayA8u', 'gold@hotmail.com'),
(3, 'Serenity South Hills', 'Tm6Q6eAx', 'serenity@hotmail.com'),
(4, 'Charlotte Eye Group', 'AgtLp7xX', 'charlotte@hotmail.com'),
(5, 'New Path Health', 'gs75TYeM', 'newpath@hotmail.com'),
(6, 'Silver Crest Hospital', 'afznteQS', 'silver@hotmail.com'),
(7, 'Wake and Wonder', 'CYda2FgB', 'wakeW@hotmail.com'),
(8, '24hr Homecare', 'hH8hRdkS', '24Home@hotmail.com'),
(9, 'Enfolding Arms', 'rsRQrh9L', 'enfolding@hotmail.com'),
(10, 'Life flash Clinic', 'XVv4u2Sg', 'LFClinic@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Place`
--

DROP TABLE IF EXISTS `Place`;
CREATE TABLE IF NOT EXISTS `Place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `email` char(45) NOT NULL,
  `address` char(50) DEFAULT NULL,
  `password` char(20) DEFAULT NULL,
  `QR_Code` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Place`
--

INSERT INTO `Place` (`id`, `name`, `email`, `address`, `password`, `QR_Code`) VALUES
(1, 'Porthcrawl', 'test1@gmail.com', 'Clay Street,Germany', 'dyuqRN', NULL),
(2, 'Braedwardith', 'test2@gmail.com', 'Orchard Avenue,Germany', 'FUtGg6', 'NULL'),
(3, 'Zeffari', 'tes32@gmail.com', 'Franklin Avenue,Germany', 'fg2aef', 'NULL'),
(4, 'Bredon', 'test4@gmail.com', 'Devon Court,Germany', '8m4upD', 'NULL'),
(5, 'Fournemouth', 'test5@gmail.com', 'Ann Street,Germany', 'Bhs9XB', 'NULL'),
(6, 'Leeside', 'test6@gmail.com', 'Briarwood Drive,Germany', 'EuBasP', 'NULL'),
(7, 'Coombe', 'test7@gmail.com', 'Front Street North,Germany', 'x95WM6', 'NULL'),
(8, 'Conriston', 'test8@gmail.com', 'Garfield Avenue,Germany', 'Qm4XT2', 'NULL'),
(9, 'Ely', 'test9@gmail.com', 'Summit Avenue,Germany', 'NCKA7r', 'NULL'),
(10, 'Stanlow', 'test10@gmail.com', 'Broad Street,Germany', 'H3McCA', 'NULL'),
(11, 'La Viva', 'avenuesucks@gmail.com', 'Bremen, Germany', 'wehateavenue', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Visitor`
--

DROP TABLE IF EXISTS `Visitor`;
CREATE TABLE IF NOT EXISTS `Visitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` char(20) DEFAULT NULL,
  `last_name` char(20) DEFAULT NULL,
  `email` char(45) NOT NULL,
  `address` char(45) NOT NULL,
  `phone_number` char(20) NOT NULL,
  `infection_status` enum('Positive','Negative','NULL') DEFAULT NULL,
  `password` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone_number` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Visitor`
--

INSERT INTO `Visitor` (`id`, `first_name`, `last_name`, `email`, `address`, `phone_number`, `infection_status`, `password`) VALUES
(1, 'Guillermo', 'Moreno', 'guillermo moreno@hotmail.com', 'Main Street,Germany', '089 23 55 37', 'NULL', 'eF2bgz'),
(2, 'Mikaela', 'Irwin', 'mikaelairwin@hotmail.com', 'Rose Street,Germany', '038736 78 67', 'NULL', 'q7zhg9'),
(3, 'Raphael', 'Rollins', 'raphaelrollins@hotmail.com', 'Orchard Avenue,Germany', '0721 48 07 38', 'NULL', 'wjhWC8'),
(4, 'Ean', 'Cortez', 'eancortez@hotmail.com', 'Andover Court,Germany', '0371 46 70 29', 'NULL', 'hG94NK'),
(5, 'Dustin', 'Sellers', 'dustinsellers@hotmail.com', 'Windsor Drive,Germany', '039454 74 38', 'NULL', 'WFRmJ9'),
(6, 'Enzo', 'Pace', 'enzopace@hotmail.com', 'Linden Avenue,Germany', '089 28 38 94', 'NULL', '8mAsQF'),
(7, 'Lauren', 'Richardson', 'laurenrichardson@hotmail.com', 'Route 1,Germany', '039454 85 90', 'NULL', 'kFpzvf'),
(8, 'Simon', ',Tanner', 'simontanner@hotmail.com', 'Cedar Avenue,Germany', '03737 73 09 07', 'NULL', 'Wk83Q3'),
(9, 'Ireland', 'Krause', 'irelandkrause@hotmail.com', 'Laurel Drive,Germany', '033656 77 63', 'NULL', 'QtkUrR'),
(10, 'Anna', 'Walton', 'annawalton@hotmail.com', 'Franklin Avenue,Germany', '06894 52 44 09', 'NULL', 'uskq4b'),
(11, 'Vahid', 'Nesro', 'vahidmenu@gmail.com', 'College Ring 3, Germany', '0963131242', NULL, 'abc123'),
(12, 'John', 'Cena', 'johncena@gmail.com', 'Bremen, Germany', '12345678987', NULL, 'youcantseeme');

-- --------------------------------------------------------

--
-- Table structure for table `VisitorToPlaces`
--

DROP TABLE IF EXISTS `VisitorToPlaces`;
CREATE TABLE IF NOT EXISTS `VisitorToPlaces` (
  `citizen_id` int(11) DEFAULT NULL,
  `place_id` int(11) DEFAULT NULL,
  `visit_id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_date` date DEFAULT NULL,
  `entry_time` int(11) DEFAULT NULL,
  `exit_date` date DEFAULT NULL,
  `exit_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`visit_id`),
  KEY `citizen_id` (`citizen_id`),
  KEY `place_id` (`place_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `VisitorToPlaces`
--
ALTER TABLE `VisitorToPlaces`
  ADD CONSTRAINT `visitortoplaces_ibfk_1` FOREIGN KEY (`citizen_id`) REFERENCES `Visitor` (`id`),
  ADD CONSTRAINT `visitortoplaces_ibfk_2` FOREIGN KEY (`place_id`) REFERENCES `Place` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- CREATE USER AND GRANT PRIVELAGES

GRANT SELECT, INSERT, UPDATE, DELETE, FILE, DELETE HISTORY ON *.* TO `SE-Admin`@`localhost` IDENTIFIED BY PASSWORD '*76C6E575B28D3F2BA041C6787C792765080288A8';

GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, REFERENCES, INDEX, ALTER, CREATE TEMPORARY TABLES, LOCK TABLES, EXECUTE, CREATE VIEW, SHOW VIEW, CREATE ROUTINE, ALTER ROUTINE, EVENT, TRIGGER ON `se-team-25`.* TO `SE-Admin`@`localhost`;