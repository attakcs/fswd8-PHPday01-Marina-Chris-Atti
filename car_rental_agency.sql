-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2019 at 01:21 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr09_marina_tukalo_carrental`
--
CREATE DATABASE IF NOT EXISTS `cr09_marina_tukalo_carrental` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `cr09_marina_tukalo_carrental`;

-- --------------------------------------------------------

--
-- Table structure for table `add_charges`
--

CREATE TABLE `add_charges` (
  `add_charges_id` int(11) NOT NULL,
  `description` varchar(80) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `invoice_nr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `add_charges`
--

INSERT INTO `add_charges` (`add_charges_id`, `description`, `price`, `invoice_nr`) VALUES
(1, 'Minor damage - cracked headlight', 500, 1),
(2, 'Minor damage - scratches on the left door', 700, 2),
(3, 'Moderate damage - large dents in the fender', 1400, 3),
(4, 'Moderate damage - large dents in the right door', 1500, 4),
(5, 'Minor damage - small dent in your hood', 650, 5);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `model` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `name`, `model`, `color`) VALUES
(1, 'Audi', 'A1 Mini 3-door', 'black'),
(2, 'BMW', '3 Series', 'darkblue'),
(3, 'KIA', 'Sportage', 'white'),
(4, 'Skoda', 'Superb', 'silver'),
(5, 'BMW', '2 Series', 'red');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `fk_customer_addr_id` int(11) DEFAULT NULL,
  `fk_dr_license_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `birthdate`, `fk_customer_addr_id`, `fk_dr_license_id`) VALUES
(1, 'Georg', 'White', '1991-12-15', 1, 1),
(2, 'Peter', 'Meyer', '1986-10-01', 2, 2),
(3, 'Ellen', 'Doe', '1971-11-29', 3, 3),
(4, 'Maria', 'Agilipos', '1996-02-25', 4, 4),
(5, 'Georg', 'Schmid', '1999-10-14', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `customer_address`
--

CREATE TABLE `customer_address` (
  `customer_addr_id` int(11) NOT NULL,
  `country` varchar(55) DEFAULT NULL,
  `city` varchar(55) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `house_nr` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_address`
--

INSERT INTO `customer_address` (`customer_addr_id`, `country`, `city`, `zip`, `street`, `house_nr`) VALUES
(1, 'Austria', 'Vienna', 1020, 'Mainstreet', '12/3/56'),
(2, 'Austria', 'Vienna', 1090, 'Big Street', '10/9'),
(3, 'Austria', 'Graz', 2641, 'First Ave', '56/32a'),
(4, 'Greece', 'Athen', 266, 'Republik Street', '16a/6'),
(5, 'Germany', 'Munich', 762001, 'Freedom Street', '56');

-- --------------------------------------------------------

--
-- Table structure for table `dr_license`
--

CREATE TABLE `dr_license` (
  `dr_license_id` int(11) NOT NULL,
  `issue_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dr_license`
--

INSERT INTO `dr_license` (`dr_license_id`, `issue_date`, `expire_date`) VALUES
(1, '2010-12-02', '2020-12-01'),
(2, '2015-05-12', '2025-05-11'),
(3, '2018-12-22', '2028-12-21'),
(4, '2019-10-22', '2022-10-22'),
(5, '2017-05-19', '2023-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `rental_agency`
--

CREATE TABLE `rental_agency` (
  `rental_agency_id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fk_car_id` int(11) DEFAULT NULL,
  `fk_reserv_id` int(11) DEFAULT NULL,
  `fk_r_a_addr_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rental_agency`
--

INSERT INTO `rental_agency` (`rental_agency_id`, `name`, `phone`, `email`, `fk_car_id`, `fk_reserv_id`, `fk_r_a_addr_id`) VALUES
(1, 'Agency_1', 1564562, 'agency1@gmx.com', 3, 5, 1),
(2, 'Agency_2', 6779562, 'agency2@gmx.com', 4, 4, 2),
(3, 'Agency_3', 1954562, 'agency3@gmx.com', 2, 3, 3),
(4, 'Agency_4', 1564994, 'agency4@gmx.com', 5, 2, 4),
(5, 'Agency_5', 36562, 'agency5@gmx.com', 1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rental_ag_address`
--

CREATE TABLE `rental_ag_address` (
  `r_a_addr_id` int(11) NOT NULL,
  `country` varchar(55) DEFAULT NULL,
  `city` varchar(55) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `house_nr` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rental_ag_address`
--

INSERT INTO `rental_ag_address` (`r_a_addr_id`, `country`, `city`, `zip`, `street`, `house_nr`) VALUES
(1, 'Austria', 'Vienna', 1010, 'Kings Street', '10/5/2'),
(2, 'Austria', 'Vienna', 1200, 'Engels Street', '352/5/9'),
(3, 'Austria', 'Graz', 250, 'Main Ave', '12/2'),
(4, 'Austria', 'Vienna', 1010, 'White Street', '655/2'),
(5, 'Austria', 'Salzburg', 6580, 'Peter Street', '556/82');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `reserv_id` int(11) NOT NULL,
  `reserv_date` date DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `invoice_nr` int(11) DEFAULT NULL,
  `pick_up_date` date DEFAULT NULL,
  `fk_customer_id` int(11) DEFAULT NULL,
  `fk_return_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reserv_id`, `reserv_date`, `price`, `invoice_nr`, `pick_up_date`, `fk_customer_id`, `fk_return_id`) VALUES
(1, '2019-09-15', 350, 1, '2019-11-01', 1, 1),
(2, '2019-10-29', 730, 5, '2019-10-30', 2, 2),
(3, '2019-09-25', 450, 2, '2019-10-15', 3, 3),
(4, '2019-09-26', 370, 3, '2019-11-04', 4, 4),
(5, '2019-10-01', 650, 4, '2019-11-06', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `return_car`
--

CREATE TABLE `return_car` (
  `return_id` int(11) NOT NULL,
  `return_date` date DEFAULT NULL,
  `location` varchar(75) DEFAULT NULL,
  `fk_add_charges_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `return_car`
--

INSERT INTO `return_car` (`return_id`, `return_date`, `location`, `fk_add_charges_id`) VALUES
(1, '2019-11-05', 'Vienna', 2),
(2, '2019-11-07', 'Graz', 5),
(3, '2019-10-25', 'Vienna', 1),
(4, '2019-11-15', 'Vienna', 3),
(5, '2019-11-05', 'Salzburg', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_charges`
--
ALTER TABLE `add_charges`
  ADD PRIMARY KEY (`add_charges_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `fk_customer_addr_id` (`fk_customer_addr_id`),
  ADD KEY `fk_dr_license_id` (`fk_dr_license_id`);

--
-- Indexes for table `customer_address`
--
ALTER TABLE `customer_address`
  ADD PRIMARY KEY (`customer_addr_id`);

--
-- Indexes for table `dr_license`
--
ALTER TABLE `dr_license`
  ADD PRIMARY KEY (`dr_license_id`);

--
-- Indexes for table `rental_agency`
--
ALTER TABLE `rental_agency`
  ADD PRIMARY KEY (`rental_agency_id`),
  ADD KEY `fk_car_id` (`fk_car_id`),
  ADD KEY `fk_reserv_id` (`fk_reserv_id`),
  ADD KEY `fk_r_a_addr_id` (`fk_r_a_addr_id`);

--
-- Indexes for table `rental_ag_address`
--
ALTER TABLE `rental_ag_address`
  ADD PRIMARY KEY (`r_a_addr_id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reserv_id`),
  ADD KEY `fk_customer_id` (`fk_customer_id`),
  ADD KEY `fk_return_id` (`fk_return_id`);

--
-- Indexes for table `return_car`
--
ALTER TABLE `return_car`
  ADD PRIMARY KEY (`return_id`),
  ADD KEY `fk_add_charges_id` (`fk_add_charges_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_address`
--
ALTER TABLE `customer_address`
  MODIFY `customer_addr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`fk_customer_addr_id`) REFERENCES `customer_address` (`customer_addr_id`),
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`fk_dr_license_id`) REFERENCES `dr_license` (`dr_license_id`);

--
-- Constraints for table `rental_agency`
--
ALTER TABLE `rental_agency`
  ADD CONSTRAINT `rental_agency_ibfk_1` FOREIGN KEY (`fk_car_id`) REFERENCES `car` (`car_id`),
  ADD CONSTRAINT `rental_agency_ibfk_2` FOREIGN KEY (`fk_reserv_id`) REFERENCES `reservation` (`reserv_id`),
  ADD CONSTRAINT `rental_agency_ibfk_3` FOREIGN KEY (`fk_r_a_addr_id`) REFERENCES `rental_ag_address` (`r_a_addr_id`);

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`fk_customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`fk_return_id`) REFERENCES `return_car` (`return_id`);

--
-- Constraints for table `return_car`
--
ALTER TABLE `return_car`
  ADD CONSTRAINT `return_car_ibfk_1` FOREIGN KEY (`fk_add_charges_id`) REFERENCES `add_charges` (`add_charges_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
