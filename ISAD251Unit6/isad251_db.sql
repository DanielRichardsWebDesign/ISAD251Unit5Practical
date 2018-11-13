-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2015 at 05:05 PM
-- Server version: 5.6.16-log
-- PHP Version: 5.6.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `isad251_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `AUTHOR_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`AUTHOR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`AUTHOR_NAME`) VALUES
('Barth, John'),
('Bronte, Charlotte'),
('Bronte, Emily'),
('Burroughs, Edgar Rice'),
('Butler, Octavia'),
('Cherryh, C. J.'),
('Clavell, James'),
('Dumas, Alexandre'),
('Lee, Tanith'),
('Ludlum, Robert'),
('McCaffrey, Anne'),
('Rice, Anne'),
('Scott, Sir Walter'),
('Stevenson, Robert Louis'),
('Twain, Mark');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `ISBN` char(12) NOT NULL,
  `AUTHOR_NAME` varchar(40) NOT NULL,
  `TITLE` varchar(60) NOT NULL,
  `PUBLISHER_NAME` varchar(40) NOT NULL,
  `PUBLICATION_YEAR` char(4) NOT NULL,
  `BINDING` char(2) NOT NULL,
  `SOURCE_NUMB` int(11) NOT NULL,
  `RETAIL_PRICE` decimal(6,2) NOT NULL,
  `NUMBER_ON_HAND` int(11) NOT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`ISBN`, `AUTHOR_NAME`, `TITLE`, `PUBLISHER_NAME`, `PUBLICATION_YEAR`, `BINDING`, `SOURCE_NUMB`, `RETAIL_PRICE`, `NUMBER_ON_HAND`) VALUES
('0-123-1233-0', 'Dumas, Alexandre', 'Three Musketeers, The', 'Grosset & Dunlap', '1953', 'hc', 1, 15.95, 10),
('0-124-5544-X', 'Dumas, Alexandre', 'Titans, The', 'Harper', '1957', 'hc', 1, 18.95, 4),
('0-124-7989-1', 'Twain, Mark', 'Dog''s Tale, A', 'Harper', '1904', 'hc', 1, 19.95, 5),
('0-125-3344-1', 'Dumas, Alexandre', 'Black Tulip, The', 'P. F. Collier & Son', '1902', 'hc', 1, 18.95, 3),
('0-126-3367-2', 'Dumas, Alexandre', 'Count of Monte Cristo, The', 'Platt & Munk', '1968', 'hc', 1, 21.95, 12),
('0-127-3948-2', 'Dumas, Alexandre', 'Corsican Brothers, The ', 'Methuen', '1970', 'hc', 1, 15.95, 5),
('0-128-3939-2', 'Clavell, James', 'Gai-Jin', 'Delacorte', '1993', 'hc', 1, 25.95, 15),
('0-128-3939-X', 'Clavell, James', 'Noble House', 'Delacorte', '1981', 'hc', 1, 22.95, 6),
('0-128-4321-1', 'Clavell, James', 'Tai-Pan', 'Delacorte', '1966', 'hc', 1, 22.95, 12),
('0-129-4567-1', 'McCaffrey, Anne', 'Dragonsong', 'Atheneum', '1976', 'hc', 2, 18.95, 12),
('0-129-4912-0', 'McCaffrey, Anne', 'Dragonsinger', 'Atheneum', '1977', 'hc', 2, 19.95, 13),
('0-129-9293-2', 'Lee, Tanith', 'Black Unicorn', 'Atheneum', '1991', 'hc', 3, 21.95, 6),
('0-129-9876-5', 'Clavell, James', 'Shogun', 'Atheneum', '1975', 'hc', 1, 24.95, 12),
('0-130-2939-4', 'McCaffrey, Anne', 'White Dragon, The', 'Ballantine Books', '1978', 'hc', 2, 21.95, 8),
('0-133-2956-6', 'Twain, Mark', 'Innocents Abroad, The', 'American Publishing Co.', '1869', 'hc', 3, 19.95, 6),
('0-133-5935-2', 'Twain, Mark', 'Pudd''nhead Wilson', 'American Publishing Co.', '1894', 'hc', 3, 17.95, 8),
('0-134-3945-7', 'Stevenson, Robert Louis', 'Child''s Garden of Verses,A', 'Scribner', '1905', 'hc', 4, 21.95, 12),
('0-135-2222-2', 'Stevenson, Robert Louis', 'Treasure Island', 'J. W. Lovell Co.', '1886', 'hc', 4, 24.95, 8),
('0-136-3956-1', 'Stevenson, Robert Louis', 'Kidnapped', 'Dodd, Mead', '1949', 'hc', 2, 22.95, 12),
('0-136-3966-7', 'Stevenson, Robert Louis', 'Strange Case of Dr. Jekyll and Mr. Hyde', 'Dodd, Mead', '1964', 'hc', 2, 23.95, 18),
('0-137-1293-9', 'Scott, Sir Walter', 'Rob Roy', 'D. Appleton & Co.', '1898', 'hc', 4, 21.95, 22),
('0-138-1379-8', 'Scott, Sir Walter', 'Ivanhoe', 'Hart Publishing Co.', '1977', 'hc', 1, 22.95, 6),
('0-140-3877-0', 'Scott, Sir Walter', 'Waverly Novels', 'University of Nebraska Press', '1978', 'hc', 4, 27.95, 3),
('0-141-9876-4', 'Bronte, Emily', 'Complete Poems of Emily Jane Bronte, The', 'Columbia University Press', '1941', 'hc', 4, 21.95, 5),
('0-142-0084-2', 'Butler, Octavia', 'Clay''s Ark', 'St. Martin''s Press', '1984', 'hc', 2, 21.95, 12),
('0-142-3867-8', 'Bronte, Emily', 'Wuthering Heights', 'St. Martin''s Press', '1968', 'hc', 3, 21.95, 8),
('0-142-3988-2', 'Lee, Tanith', 'East of Midnight', 'St. Martin''s Press', '1978', 'hc', 2, 19.95, 15),
('0-150-3765-2', 'Ludlum, Robert', 'Aquitaine Progression, The', 'Random House', '1984', 'hc', 3, 25.95, 6),
('0-150-3949-9', 'Ludlum, Robert', 'Parsifal Mosaic, The', 'Random House', '1982', 'hc', 1, 24.95, 14),
('0-150-5948-9', 'Bronte, Charlotte', 'Jane Eyre', 'Random House', '1943', 'hc', 3, 19.95, 15),
('0-151-9876-2', 'Bronte, Charlotte', 'Vilette', 'Clarendon Press', '1984', 'hc', 3, 21.95, 15),
('0-155-2346-5', 'Burroughs, Edgar Rice', 'Tarzan and the Forbidden City', 'E. R. Burroughs, Inc.', '1938', 'hc', 2, 18.95, 12),
('0-157-3849-X', 'Burroughs, Edgar Rice', 'People That Time Forgot, The', 'Tandem', '1975', 'hc', 3, 19.95, 8),
('0-157-9876-2', 'Burroughs, Edgar Rice', 'Out of Time''s Abyss', 'Tandem', '1973', 'hc', 3, 21.95, 4),
('0-158-0493-2', 'Burroughs, Edgar Rice', 'Tarzan the Magnificent', 'New English Library', '1974', 'hc', 4, 21.95, 3),
('0-158-8374-3', 'Burroughs, Edgar Rice', 'Tarzan of the Apes', 'New English Library', '1975', 'hc', 4, 21.95, 3),
('0-159-2948-2', 'Burroughs, Edgar Rice', 'War Chief, The', 'Gregg Press', '1927', 'hc', 2, 19.95, 6),
('0-159-3845-3', 'Burroughs, Edgar Rice', 'Bandit of Hell''s Bend, The', 'Gregg Press', '1925', 'hc', 2, 19.95, 12),
('0-159-5839-3', 'Burroughs, Edgar Rice', 'Apache Devil', 'Gregg Press', '1933', 'hc', 2, 19.95, 4),
('0-160-3456-7', 'Ludlum, Robert', 'Gemini Contenders, The ', 'Dial Press', '1976', 'hc', 3, 24.95, 22),
('0-160-8325-7', 'Ludlum, Robert', 'Chancellor Manuscript, The', 'Dial Press', '1977', 'hc', 3, 23.95, 18),
('0-161-0123-9', 'Ludlum, Robert', 'Bourne Identity, The', 'R. Marek Publishers', '1980', 'hc', 3, 23.95, 10),
('0-161-8478-1', 'Ludlum, Robert', 'Holcroft Covenant, The', 'R. Marek Publishers', '1978', 'hc', 2, 24.95, 16),
('0-162-3948-0', 'Barth, John', 'Chimera', 'Deutsch', '1974', 'hc', 3, 17.95, 6),
('0-164-4857-2', 'Barth, John', 'Sabbatical: A Romance', 'Putnam', '1982', 'hc', 4, 24.95, 7),
('0-164-5968-0', 'Barth, John', 'Letters: A Novel', 'Putnam', '1979', 'hc', 3, 27.95, 5),
('0-166-8394-3', 'Barth, John', 'Sot-Weed Factor, The', 'Franklin Library', '1980', 'hc', 3, 27.95, 6),
('0-167-1945-1', 'Barth, John', 'Floating Opera and The End of the Road, The ', 'Anchor Press', '1988', 'hc', 4, 24.95, 9),
('0-167-3965-2', 'Barth, John', 'Giles Goat-Boy', 'Anchor Press', '1987', 'hc', 3, 24.95, 8),
('0-180-2945-9', 'Lee, Tanith', 'Electric Forest', 'Doubleday', '1979', 'hc', 2, 19.95, 21),
('0-180-3948-2', 'Butler, Octavia', 'Patternmaster', 'Doubleday', '1976', 'hc', 4, 18.95, 19),
('0-180-4567-3', 'Butler, Octavia', 'Survivor', 'Doubleday', '1978', 'hc', 3, 15.95, 8),
('0-180-4712-X', 'Butler, Octavia', 'Mind of My Mind', 'Doubleday', '1977', 'hc', 1, 19.95, 4),
('0-180-4921-4', 'Cherryh, C. J.', 'Hunter of Worlds', 'Doubleday', '1977', 'hc', 3, 21.95, 18),
('0-180-4977-5', 'Cherryh, C. J.', 'Brothers of Earth', 'Doubleday', '1976', 'hc', 3, 23.95, 12),
('0-180-6464-4', 'Cherryh, C. J.', 'Serpent''s Reach', 'Doubleday', '1980', 'hc', 3, 19.95, 9),
('0-180-7388-1', 'Cherryh, C. J.', 'Faded Sun, Kesrith, The ', 'Doubleday', '1978', 'hc', 3, 21.95, 8),
('0-180-7400-X', 'Cherryh, C. J.', 'Faded Sun, Shon''jir, The ', 'Doubleday', '1978', 'hc', 3, 21.95, 5),
('0-180-8644-2', 'Butler, Octavia', 'Wild Seed', 'Doubleday', '1980', 'hc', 3, 19.95, 9),
('0-180-8655-0', 'Butler, Octavia', 'Kindred', 'Doubleday', '1979', 'hc', 3, 18.95, 8),
('0-185-8776-2', 'Lee, Tanith', 'Castle of Dark, The', 'Macmillan', '1978', 'hc', 4, 21.95, 6),
('0-185-9855-2', 'Lee, Tanith', 'Winter Players, The', 'Macmillan', '1977', 'hc', 2, 15.95, 12),
('0-190-2345-2', 'Lee, Tanith', 'Book of the Damned, The', 'Overlook Press', '1990', 'hc', 4, 21.95, 5),
('0-190-3956-1', 'Lee, Tanith', 'Book of the Beast, The', 'Overlook Press', '1991', 'hc', 4, 22.95, 8),
('0-190-3967-5', 'Lee, Tanith', 'Book of the Dead, The', 'Overlook Press', '1991', 'hc', 4, 22.95, 3),
('0-191-4893-0', 'Cherryh, C. J.', 'Rimrunners', 'Warner Books', '1989', 'hc', 2, 19.95, 2),
('0-191-4934-8', 'Cherryh, C. J.', 'Heavy Time', 'Warner Books', '1991', 'hc', 2, 23.95, 7),
('0-191-4959-2', 'Cherryh, C. J.', 'Cyteen', 'Warner Books', '1988', 'hc', 2, 18.95, 5),
('0-191-8654-3', 'Cherryh, C. J.', 'Hellburner', 'Warner Books', '1992', 'hc', 2, 23.95, 10),
('0-200-3939-2', 'Bronte, Emily', 'My Very Best Work', 'Harper', '1810', 'hb', 2, 18.95, 6);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customer_numb` int(11) NOT NULL,
  `customer_first_name` varchar(15) NOT NULL,
  `customer_last_name` varchar(15) NOT NULL,
  `customer_street` varchar(30) NOT NULL,
  `customer_city` varchar(15) NOT NULL,
  `customer_state` char(2) NOT NULL,
  `customer_zip` char(5) NOT NULL,
  `customer_phone` char(12) NOT NULL,
  `customer_email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_numb`, `customer_first_name`, `customer_last_name`, `customer_street`, `customer_city`, `customer_state`, `customer_zip`, `customer_phone`, `customer_email`) VALUES
(1, 'Jane', 'Jones', '125 W. 88th Blvd.', 'Anytown', 'ST', '01011', '552-555-1234', 'jane_jones@anywhere.net'),
(2, 'Tom', 'Smith', '4592 Maple Lane', 'Anytown', 'SU', '12345', '555-555-4321', 'tom_smith@this.net'),
(3, 'Mary', 'Johnson', '98 Elm St.', 'Some City', 'SM', '23456', '551-555-4567', 'mary_johnson@somewhere.net'),
(4, 'John', 'Smith', '867 Apple Tree Road', 'Little Town', 'ST', '01011', '552-555-9876', 'john_smith@somewhere.net'),
(5, 'Emily', 'Jones', '7921 Fir Road', 'Anytown', 'SU', '12344', '555-555-7654', 'emily_jones@somewhere.net'),
(6, 'Peter', 'Johnson', '709 Hemlock St.', 'Some City', 'SU', '12345', '555-555-3456', 'peter_johnson@anywhere.net'),
(7, 'Edna', 'Hayes', '158 Oak Road', 'Some City', 'SM', '23458', '551-555-1234', 'edna_hayes@this.net'),
(8, 'Franklin', 'Hayes', '1990 Pine St.', 'Little Town', 'SM', '23456', '551-555-3939', 'franklin_hayes@this.net'),
(9, 'Mary', 'Collins', 'RRI Box 297', 'Rural Area', 'SO', '45678', '553-555-1234', 'mary_collins@rural.net'),
(10, 'Peter', 'Collins', '170 Dogwood Lane', 'Little Town', 'SM', '23456', '551-555-8484', 'peter_collins@anywhere.net'),
(11, 'Anne', 'Smith', 'RR 2 Box 9', 'Rural Area', 'SO', '45678', '553-555-9090', 'annesmith@rural.net'),
(12, 'Peter', 'Smith', '21 Elm St.', 'Anytown', 'ST', '01011', '552-555-3459', 'peter_smith@somewhere.net'),
(13, 'Jerry', 'Brown', '9745 Main Street', 'Anytown', 'ST', '01011', '552-555-9876', 'jerry_brown@somewhere.net'),
(14, 'Helen', 'Brown', '2588 North Road', 'Some City', 'SU', '01255', '555-552-3939', 'helen_brown@somewhere.net');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_numb` int(5) NOT NULL,
  `customer_numb` int(3) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `credit_card_numb` varchar(15) NOT NULL,
  `credit_card_expiration_date` char(5) NOT NULL,
  `order_filled` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_numb`, `customer_numb`, `order_date`, `credit_card_numb`, `credit_card_expiration_date`, `order_filled`) VALUES
(1, 1, '1999-05-12 00:00:00', '123 123 123 123', '07/01', 'Y'),
(2, 1, '2000-06-07 00:00:00', '123 123 123 123', '07/01', 'N'),
(3, 2, '1999-12-11 00:00:00', '234 234 234 234', '11/00', 'Y'),
(4, 2, '2000-03-18 00:00:00', '234 234 234 234', '11/00', 'N'),
(5, 2, '2000-06-07 00:00:00', '234 234 234 234', '11/00', 'N'),
(6, 3, '1999-08-15 00:00:00', '345 345 345 345', '01/02', 'Y'),
(7, 3, '1999-02-12 00:00:00', '345 345 345 345', '01/02', 'Y'),
(8, 4, '1999-11-22 00:00:00', '456 456 456 456', '04/01', 'Y'),
(9, 4, '2000-06-01 00:00:00', '456 456 456 456', '04/01', 'N'),
(10, 5, '2000-12-03 00:00:00', '567 567 567 567', '05/00', 'N'),
(11, 6, '1999-09-19 00:00:00', '678 678 678 678', '12/00', 'Y'),
(12, 6, '2000-12-03 00:00:00', '678 678 678 678', '12/00', 'N'),
(13, 6, '2000-07-21 00:00:00', '678 678 678 678', '12/00', 'N'),
(14, 7, '1999-12-13 00:00:00', '789 789 789 789', '12/02', 'Y'),
(15, 7, '2000-09-01 00:00:00', '789 789 789 789', '12/02', 'N'),
(16, 8, '2000-12-10 00:00:00', '890 890 890 890', '11/02', 'Y'),
(17, 8, '2000-02-22 00:00:00', '890 890 890 890', '11/02', 'N'),
(18, 8, '2000-05-13 00:00:00', '890 890 890 890', '11/02', 'N'),
(19, 9, '1999-07-15 00:00:00', '901 901 901 901', '12/99', 'Y'),
(20, 10, '1999-11-15 00:00:00', '1000 1000 1000', '10/02', 'Y'),
(21, 10, '2000-04-03 00:00:00', '1000 1000 1000', '10/02', 'N'),
(22, 11, '1999-09-19 00:00:00', '1100 1100 1100', '02/00', 'Y'),
(23, 11, '2000-02-21 00:00:00', '1100 1100 1100', '02/00', 'N'),
(24, 11, '2000-05-14 00:00:00', '1100 1100 1100', '02/00', 'N'),
(25, 12, '1999-10-10 00:00:00', '1200 1200 1200', '09/01', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `order_lines`
--

CREATE TABLE IF NOT EXISTS `order_lines` (
  `order_numb` int(5) NOT NULL,
  `ISBN` char(12) NOT NULL,
  `quantity` int(4) NOT NULL,
  `cost_each` decimal(6,2) NOT NULL,
  `cost_line` decimal(6,2) NOT NULL,
  `shipped` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_lines`
--

INSERT INTO `order_lines` (`order_numb`, `ISBN`, `quantity`, `cost_each`, `cost_line`, `shipped`) VALUES
(1, '0-136-3966-7', 1, 23.95, 23.95, 'Y'),
(1, '0-123-1233-0', 1, 15.95, 15.95, 'Y'),
(4, '0-140-3877-0', 1, 27.95, 27.95, 'N'),
(3, '0-191-4934-8', 1, 23.95, 23.95, 'Y'),
(3, '0-180-4712-X', 2, 19.95, 39.90, 'Y'),
(3, '0-150-5948-9', 1, 19.95, 19.95, 'Y'),
(2, '0-159-3845-3', 2, 19.95, 39.95, 'N'),
(8, '0-127-3948-2', 1, 15.95, 15.95, 'Y'),
(8, '0-133-5935-2', 1, 17.95, 17.95, 'Y'),
(8, '0-161-0123-9', 1, 21.95, 21.95, 'Y'),
(8, '0-167-1945-1', 1, 24.95, 24.95, 'Y'),
(8, '0-190-3967-5', 1, 22.95, 22.95, 'Y'),
(7, '0-191-4934-8', 1, 23.95, 23.95, 'Y'),
(7, '0-141-9876-4', 5, 21.95, 109.75, 'Y'),
(7, '0-135-2222-2', 5, 24.95, 124.75, 'Y'),
(6, '0-151-9876-2', 1, 21.95, 21.95, 'Y'),
(6, '0-180-7400-X', 1, 21.95, 21.95, 'Y'),
(6, '0-191-4934-8', 1, 23.95, 23.95, 'Y'),
(6, '0-142-0084-2', 1, 21.95, 21.95, 'Y'),
(5, '0-180-7388-1', 1, 21.95, 21.95, 'N'),
(6, '0-123-1233-0', 2, 15.95, 31.90, 'Y'),
(5, '0-124-5544-X', 1, 18.95, 18.95, 'N'),
(5, '0-140-3877-0', 1, 27.95, 27.95, 'N'),
(12, '0-142-0084-2', 1, 21.95, 21.95, 'N'),
(12, '0-130-2939-4', 1, 21.95, 21.95, 'N'),
(12, '0-157-3849-X', 1, 19.95, 19.95, 'N'),
(12, '0-161-8478-1', 1, 24.95, 24.95, 'N'),
(11, '0-166-8394-3', 1, 27.95, 27.95, 'Y'),
(11, '0-134-3945-7', 1, 21.95, 21.95, 'Y'),
(11, '0-127-3948-2', 1, 15.95, 15.95, 'Y'),
(10, '0-136-3956-1', 1, 22.95, 22.95, 'Y'),
(10, '0-155-2346-5', 1, 18.95, 18.95, 'Y'),
(10, '0-157-3849-X', 1, 19.95, 19.95, 'N'),
(10, '0-142-0084-2', 1, 21.95, 21.95, 'N'),
(9, '0-140-3877-0', 1, 27.95, 27.95, 'N'),
(9, '0-159-5839-3', 1, 19.95, 19.95, 'N'),
(8, '0-180-4712-X', 1, 19.95, 19.95, 'Y'),
(8, '0-161-8478-1', 1, 24.95, 24.95, 'Y'),
(8, '0-130-2939-4', 1, 21.95, 21.95, 'Y'),
(16, '0-157-9876-2', 1, 21.95, 21.95, 'Y'),
(16, '0-134-3945-7', 1, 21.95, 21.95, 'Y'),
(16, '0-159-5839-3', 2, 19.95, 39.90, 'Y'),
(16, '0-160-3456-7', 1, 24.95, 24.95, 'Y'),
(16, '0-128-4321-1', 1, 22.95, 22.95, 'Y'),
(15, '0-123-1233-0', 1, 15.95, 15.95, 'N'),
(14, '0-160-3456-7', 1, 24.95, 24.95, 'Y'),
(14, '0-159-5839-3', 1, 19.95, 19.95, 'Y'),
(14, '0-157-3849-X', 1, 19.95, 19.95, 'Y'),
(14, '0-137-1293-9', 1, 21.95, 21.95, 'Y'),
(14, '0-161-8478-1', 1, 24.95, 24.95, 'Y'),
(13, '0-142-0084-2', 1, 21.95, 21.95, 'N'),
(13, '0-160-3456-7', 1, 24.95, 24.95, 'Y'),
(13, '0-180-8655-0', 1, 18.95, 18.95, 'Y'),
(13, '0-191-4959-2', 1, 18.95, 18.95, 'Y'),
(23, '0-129-9293-2', 1, 21.95, 21.95, 'N'),
(23, '0-164-5968-0', 1, 27.95, 27.95, 'N'),
(23, '0-166-8394-3', 1, 27.95, 27.95, 'N'),
(23, '0-157-3849-X', 1, 19.95, 19.95, 'N'),
(23, '0-135-2222-2', 1, 24.95, 24.95, 'N'),
(23, '0-128-3939-2', 1, 25.95, 25.95, 'N'),
(23, '0-191-4934-8', 1, 23.95, 23.95, 'N'),
(22, '0-127-3948-2', 2, 15.95, 31.90, 'Y'),
(21, '0-126-3367-2', 1, 21.95, 21.95, 'N'),
(21, '0-191-4934-8', 1, 23.95, 23.95, 'N'),
(21, '0-134-3945-7', 1, 21.95, 21.95, 'N'),
(20, '0-142-3988-2', 1, 19.95, 19.95, 'Y'),
(20, '0-191-8654-3', 1, 23.95, 23.95, 'Y'),
(19, '0-150-3765-2', 1, 25.95, 25.95, 'Y'),
(19, '0-150-5948-9', 1, 19.95, 19.95, 'Y'),
(19, '0-160-3456-7', 1, 24.95, 24.95, 'Y'),
(19, '0-161-8478-1', 1, 24.95, 24.95, 'Y'),
(19, '0-191-4893-0', 1, 19.95, 19.95, 'Y'),
(18, '0-190-3967-5', 1, 22.95, 22.95, 'N'),
(18, '0-180-4567-3', 1, 15.95, 15.95, 'N'),
(18, '0-134-3945-7', 1, 21.95, 21.95, 'N'),
(18, '0-128-4321-1', 1, 22.95, 22.95, 'N'),
(17, '0-160-3456-7', 1, 24.95, 24.95, 'N'),
(17, '0-190-3956-1', 1, 22.95, 22.95, 'Y'),
(17, '0-161-0123-9', 1, 23.95, 23.95, 'Y'),
(25, '0-129-9293-2', 1, 21.95, 21.95, 'Y'),
(25, '0-159-5839-3', 1, 19.95, 19.95, 'Y'),
(24, '0-164-5968-0', 1, 27.95, 27.95, 'N'),
(24, '0-191-8654-3', 1, 23.95, 23.95, 'N'),
(24, '0-161-0123-9', 1, 23.95, 23.95, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE IF NOT EXISTS `publishers` (
  `PUBLISHER_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`PUBLISHER_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`PUBLISHER_NAME`) VALUES
('American Publishing Co.'),
('Anchor Press'),
('Atheneum'),
('Ballantine Books'),
('Clarendon Press'),
('Columbia University Press'),
('D. Appleton & Co.'),
('Delacorte'),
('Deutsch'),
('Dial Press'),
('Dodd, Mead'),
('Doubleday'),
('E. R. Burroughs, Inc.'),
('Franklin Library'),
('Gregg Press'),
('Grosset & Dunlap'),
('Harper'),
('Hart Publishing Co.'),
('J. W. Lovell Co.'),
('James R. Osgood and Co.'),
('Knopf'),
('Macmillan'),
('Methuen'),
('New English Library'),
('Overlook Press'),
('P. F. Collier & Son'),
('Platt & Munk'),
('Putnam'),
('R. Marek Publishers'),
('Random House'),
('Scribner'),
('St. Martin''s Press'),
('Tandem'),
('University of Nebraska Press'),
('Warner Books'),
('World Pub. Co.');

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE IF NOT EXISTS `sources` (
  `source_numb` int(11) NOT NULL,
  `source_name` varchar(30) NOT NULL,
  `source_street` varchar(30) NOT NULL,
  `source_city` varchar(20) NOT NULL,
  `source_state` char(2) NOT NULL,
  `source_zip` char(5) NOT NULL,
  `source_phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`source_numb`, `source_name`, `source_street`, `source_city`, `source_state`, `source_zip`, `source_phone`) VALUES
(1, 'Ingram', '123 West 99th', 'Philadelphia', 'PA', '19112', '555-555-1111'),
(2, 'Baker and Taylor', '99 256th Ave.', 'Minneapolis', 'MN', '68112', '551-555-2222'),
(3, 'Jostens', '19594 Highway 28', 'Seattle', 'WA', '98333', '552-555-3333'),
(4, 'Brodart', '1944 Bayview Blvd.', 'Los Angeles', 'CA', '96111', '553-555-4444');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
