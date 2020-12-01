-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Server: 127.0.0.1
-- Time Created: 11 30 2020 08:23 PM
-- Server version: 10.4.8-MariaDB
-- Version PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- The table structure for `contact` table
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Data dump table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('peter', 'peter@gmail.com', '1111111111', '12', ''),
('peter', 'peter@gmail.com', '1111111111', '12', ''),
('josh', 'josh@gmail.com', '2222222222', '123', 'hello'),
('peter', 'peter@gmail.com', '1111111111', '12', 'hi');

-- --------------------------------------------------------

--
-- Table structure for `customer` table
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for `customer` table
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('josh', 'josh', 'josh@gmail.com', '1111111111', 'josh,', '123'),
('peter', 'peter', 'peter@gmail.com', '222222222', 'peter,', '1234'),
('jose', 'jose', 'jose@gmail.com', '3333333333', 'jose', '12345'),
('bill', 'bill', 'bill@gmail.com', '4444444444', 'bill', '123456'),
('tim', 'tim', 'tim@gmail.com', '5555555555', 'tim', '1234567'),
('bob', 'bob', 'bob@gmail.com', '6666666666', 'bob', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for `food` table
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'McStomachAche', 25, '', 1, 'images/BigMac.JPG', 'ENABLE'),
(59, 'McBokBok', 25, '\r\n\r\n', 2, 'images/mcchicken.jpg', 'ENABLE'),
(60, 'McBokBokNuggets', 45, '', 3, 'images/chickennugget.jpg', 'ENABLE'),
(61, 'McDoubleMeat', 18, '', 1, 'images/QuarterPounder.jpg', 'ENABLE'),
(62, 'McTaters', 18000000, '', 2, 'images/Fries.jpg', 'ENABLE'),
(63, 'McHappy', 22, '', 3, 'images/HappyMeal.jpg', 'ENABLE'),
(65, 'McMeltInMyMouth', 12, '', 4, 'images/chocolatechipcookie.jpg', 'DISABLE'),
(66, 'McApple', 20, '', 4, 'images/ApplePie.jpg', 'DISABLE'),
(68, 'McMacchiato', 85, '', 6, 'images/Macchiato.jpg', 'DISABLE'),
(69, 'McRedJuice', 45, '', 2, 'images/Ketchup.jpg', 'ENABLE'),
(70, 'McRoll', 70, '', 2, 'images/cinnamonroll.jpg', 'ENABLE'),
(71, 'McPineApple', 28, '', 2, 'images/pineapplesmoothie', 'DISABLE'),
(72, 'McAmericano', 22, '', 2, 'images/americano.jpg', 'DISABLE'),
(73, 'McCaramelLattle', 25, '', 2, 'images/caramellatte.jpg', 'DISABLE'),
(74, 'McAppleFritter', 20, '', 2, 'applefritter.png', 'DISABLE'),
(76, 'McMocha', 35, '', 2, 'images/mocha.jpg', 'DISABLE'),
(77, 'McMuffin', 50, '', 2, 'images/muffin.jpg', 'DISABLE'),
(78, 'McSalt', 75, '', 2, 'images/salt.jpg', 'DISABLE'),
(79, 'McShake', 45, '', 2, 'images/chocolateshake.jpg', 'DISABLE');

-- --------------------------------------------------------

--
-- Table structure for `manager` table
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for `manager` table
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('jose', 'jose', 'jose@gmail.com', '1111111111', 'jose', '123'),
('josh', 'josh', 'josh@gmail.com', '2222222222', 'josh', '1234'),
('tim', 'tim', 'tim@gmail.com', '333333333333', 'tim', '12345'),
('peter', 'peter', 'peter@gmail.com', '4444444444', 'peter,', '123456'),
('bill', 'bill', 'bill@gmail.com', '5555555555', 'bill', '1234567'),
('bob', 'bob', 'bob@gmail.com', '66666666666', 'bob', 'roshan');

-- --------------------------------------------------------

--
-- Table structure for `orders` table
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- `orders` table
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 58, 'McStomachAche', 40, 1, '2020-11-30', 'peter', 1),
(2, 61, 'McShake', 80, 2, '2020-11-30', 'peter', 1),
(3, 61, 'McShake', 80, 2, '2020-11-30', 'peter', 1),
(4, 65, 'McSalt', 25, 4, '2020-11-30', 'peter', 4),
(5, 58, 'McStomachAche', 40, 7, '2020-11-30', 'peter', 1),
(6, 65, 'McSalt', 25, 2, '2020-11-30', 'peter', 4),
(7, 58, 'McStomachAche', 40, 7, '2020-11-30', 'peter', 1),
(8, 65, 'McSalt', 25, 2, '2020-11-30', 'peter', 4),
(9, 60, 'McBokBokNuggets', 99, 1, '2020-11-30', 'peter', 3),
(10, 59, 'McBokBok', 60, 1, '2020-11-30', 'peter', 2),
(11, 60, 'McBokBokNuggets', 99, 1, '2020-11-30', 'peter', 3),
(12, 65, 'McSalt', 25, 1, '2020-11-30', 'peter', 4),
(13, 59, 'McBokBok', 60, 4, '2020-11-30', 'peter', 2),
(14, 58, 'McStomachAche', 40, 1, '2020-11-30', 'peter', 1),
(15, 60, 'McBokBokNuggets', 99, 4, '2020-11-30', 'peter', 3),
(16, 65, 'McSalt', 25, 1, '2020-11-30', 'peter', 4),
(17, 66, 'McHappy', 20, 7, '2020-11-30', 'peter', 4),
(18, 59, 'McBokBok', 60, 5, '2020-11-30', 'josh', 2),
(19, 63, 'McTaters', 75, 1, '2020-11-30', 'josh', 3),
(20, 68, 'McApple', 75, 1, '2020-11-30', 'josh', 6),
(21, 62, 'McDoubleMeat', 65, 1, '2020-11-30', 'josh', 2),
(22, 68, 'McApple', 75, 1, '2020-11-30', 'josh', 6),
(23, 62, 'McDoubleMeat', 65, 1, '2020-11-30', 'josh', 2),
(24, 65, 'McSalt', 25, 1, '2020-11-30', 'josh', 4),
(25, 68, 'McApple', 75, 1, '2020-11-30', 'josh', 6),
(26, 59, 'McBokBok', 60, 6, '2020-11-30', 'josh', 2),
(27, 58, 'McStomachAche', 40, 1, '2020-11-30', 'josh', 1),
(28, 59, 'McBokBok', 60, 1, '2020-11-30', 'josh', 2),
(29, 58, 'McStomachAche', 40, 1, '2020-11-30', 'josh', 1),
(30, 60, 'McBokBokNuggets', 99, 1, '2020-11-30', 'peter', 3),
(31, 59, 'McBokBok', 60, 1, '2020-11-30', 'peter', 2),
(32, 61, 'McShake', 80, 1, '2020-11-30', 'peter', 1),
(33, 60, 'McBokBokNuggets', 99, 1, '2020-11-30', 'peter', 3),
(34, 59, 'McBokBok', 60, 1, '2020-11-30', 'peter', 2),
(35, 61, 'McShake', 80, 1, '2020-11-30', 'peter', 1),
(36, 62, 'McDoubleMeat', 65, 1, '2020-11-30', 'peter', 2),
(37, 72, 'McApple', 45, 6, '2020-11-30', 'peter', 2),
(38, 78, 'French Fries', 75, 7, '2020-11-30', 'peter', 2),
(39, 78, 'French Fries', 75, 1, '2020-11-30', 'peter', 2),
(40, 73, 'McMacchiato', 35, 1, '2020-11-30', 'peter', 2),
(41, 77, 'McMeltInMyMouth', 200, 2, '2020-11-30', 'peter', 2),
(42, 70, 'McHappy', 20, 1, '2020-11-30', 'peter', 2),
(43, 60, 'McBokBokNuggets', 99, 2, '2020-11-30', 'peter', 3),
(44, 70, 'McHappy', 20, 1, '2020-11-30', 'peter', 2),
(45, 60, 'McBokBokNuggets', 99, 2, '2020-11-30', 'peter', 3),
(46, 70, 'McHappy', 20, 1, '2020-11-30', 'peter', 2),
(47, 60, 'McBokBokNuggets', 99, 2, '2020-11-30', 'peter', 3),
(48, 60, 'McBokBokNuggets', 99, 4, '2020-11-30', 'peter', 3),
(49, 62, 'McDoubleMeat', 65, 6, '2020-11-30', 'peter', 2),
(50, 70, 'McHappy', 20, 5, '2020-11-30', 'peter', 2),
(51, 73, 'McMeltInMyMouth', 35, 3, '2020-11-30', 'peter', 2),
(52, 70, 'McHappy', 20, 1, '2020-11-30', 'peter', 2),
(53, 60, 'McBokBokNuggets', 99, 5, '2020-11-30', 'peter', 3),
(54, 69, 'McSalt', 25, 7, '2020-11-30', 'peter', 2),
(55, 62, 'McDoubleMeat', 65, 1, '2020-11-30', 'peter', 2),
(56, 70, 'McHappy', 20, 4, '2020-11-30', 'peter', 2),
(57, 70, 'McHappy', 20, 1, '2020-11-30', 'peter', 2),
(58, 60, 'McBokBokNuggets', 99, 1, '2020-11-30', 'peter', 3),
(59, 59, 'McBokBok', 60, 6, '2020-11-30', 'peter', 2),
(60, 61, 'McShake', 80, 1, '2020-11-30', 'peter', 1),
(61, 71, 'McAmericano', 40, 3, '2020-11-30', 'peter', 2),
(62, 70, 'McHappy', 20, 4, '2020-11-30', 'peter', 2),
(63, 72, 'McApple', 45, 2, '2020-11-30', 'peter', 2),
(64, 71, 'McAmericano', 40, 3, '2020-11-30', 'peter', 2),
(65, 70, 'McHappy', 20, 4, '2020-11-30', 'peter', 2),
(66, 72, 'McApple', 45, 2, '2020-11-30', 'peter', 2),
(67, 60, 'McBokBokNuggets', 99, 1, '2020-11-30', 'peter', 3),
(68, 71, 'McAmericano', 40, 1, '2020-11-30', 'peter', 2),
(69, 69, 'McSalt', 25, 1, '2020-11-30', 'jose', 2),
(70, 59, 'McBokBok', 60, 1, '2020-11-30', 'jose', 2),
(71, 69, 'McSalt', 25, 1, '2020-11-30', 'jose', 2),
(72, 59, 'McBokBok', 60, 1, '2020-11-30', 'jose', 2),
(73, 59, 'McBokBok', 60, 1, '2020-11-30', 'jose', 2),
(74, 58, 'McStomachAche', 40, 1, '2020-11-30', 'jose', 1),
(75, 60, 'McBokBokNuggets', 99, 1, '2020-11-30', 'jose', 3),
(76, 61, 'McShake', 80, 1, '2020-11-30', 'jose', 1),
(77, 62, 'McDoubleMeat', 65, 1, '2020-11-30', 'jose', 2),
(78, 72, 'McApple', 45, 1, '2020-11-30', 'jose', 2);

-- --------------------------------------------------------

--
-- Table structure for `restaurants` table
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Data dump for `restaurants` table
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Peter\'s Restaurant', 'peter@restaurant.com', '1111111111', 'peter', 'peter'),
(2, 'Josh\'s Restaurant', 'peter@restaurant.com', '1111111111', 'josh', 'josh'),
(3, 'Jose\'s Restaurant', 'peter@restaurant.com', '1111111111', 'jose', 'jose'),
(4, 'The Resturant', 'resturant@gmail.com', '2222222222', 'C:\\xampp\\htdocs\\TheResturant-master\\images/McSalt.', 'bob'),
(6, 'The Resturant', 'resturant@gmail.com', '2222222222', 'Pondicherry,rock beach Near,Le cafe', 'bill');

--
-- Index for dumped tables
--

--
-- Index for `customer` table
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Index for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Index for `manager` table
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Index for `orders` table
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Index for `restaurants` table
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for overflowed tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for tables
--

--
-- Contraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Contraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Contraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
