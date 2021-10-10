-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2021 at 01:32 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posales`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(4, 'Mod'),
(5, 'Juice'),
(6, 'Accessories'),
(8, 'Battery');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `prod_name` varchar(550) NOT NULL,
  `expected_date` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `transac` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `prod_name`, `expected_date`, `note`, `transac`, `status`) VALUES
(19, 'asdasd', 'asdasdas', 'asdasdas', 'asdasd', 'asdasd', 'asda', 'Walkin', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `customer_user`
--

CREATE TABLE `customer_user` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_user`
--

INSERT INTO `customer_user` (`user_id`, `fullname`, `username`, `password`, `address`) VALUES
(15, 'test', 'test', '098f6bcd4621d373cade4e832627b4f6', 'test'),
(16, 'mark jason', 'mjserq', '49d9c52d45e7c8e6c84c1baf7ee4b704', 'casaratan'),
(17, 'jason', 'markserq', '098f6bcd4621d373cade4e832627b4f6', 'san nicolas'),
(18, 'ronly', 'ronly', '098f6bcd4621d373cade4e832627b4f6', 'asd'),
(19, 'blaze serquina', 'blazeee', 'e10adc3949ba59abbe56e057f20f883e', 'tayug'),
(20, 'Kite', 'Kite', 'e10adc3949ba59abbe56e057f20f883e', 'asdasdasd'),
(21, 'test', 'test2', '098f6bcd4621d373cade4e832627b4f6', 'test'),
(22, 'Pierre Serquina', 'pierre', 'e10adc3949ba59abbe56e057f20f883e', 'San Nicolas'),
(23, 'test', 'test3', '098f6bcd4621d373cade4e832627b4f6', 'test'),
(24, 'gtarp', 'barrio', 'd4177dc752cddc204b22ec5798c4400e', 'los santos'),
(25, 'Karl Zulu', 'zulu', 'e10adc3949ba59abbe56e057f20f883e', 'Earth'),
(26, 'Andrei Hornilla', 'Drei', 'e10adc3949ba59abbe56e057f20f883e', 'Cavite'),
(27, 'qwe', 'qwe', 'e10adc3949ba59abbe56e057f20f883e', 'qwe');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `subcat` text NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `subcat`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`) VALUES
(2, 'MRVS-1abe', 'Juice', '3mg', 'Testjuice ', '', '180', '250', '70', 'Test', 0, -2, 20, '2021-06-30', '2021-06-09'),
(3, 'MRVS-06dd', 'Juice', '6mg', 'Test juice1', '', '300', '500', '200', 'Test', 0, 35, 50, '2021-09-30', '2021-09-23'),
(6, 'MRVS-1019', 'Mod', 'None', 'Mod 1 ', '', '1800', '2500', '700', 'Test', 0, 9, 10, '', '2021-10-02');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `cash` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice_number`, `cashier`, `date`, `type`, `amount`, `profit`, `cash`, `name`) VALUES
(1, 'MR-386302', 'Monica Paragas', '06/09/21', 'cash', '6750', '1800', '7000', 'Jemas'),
(2, 'MR-533339', 'mj', '06/09/21', 'cash', '3250', '820', '3500', 'Spade'),
(3, 'MR-22230723', 'mj', '06/09/21', 'cash', '500', '50', '500', 'Em'),
(5, 'MR-38033093', 'mj', '06/10/21', 'cash', '5000', '1400', '5000', 'Spade'),
(6, 'MR-3333', 'mj', '06/14/21', 'cash', '500', '50', '1', 'Spade'),
(8, 'MR-2232332', 'mj', '06/17/21', 'cash', '250', '70', '250', 'Spade'),
(9, 'MR-260339', 'mj', '06/23/21', 'cash', '10000000', '9999990', '10000000', 'Hello'),
(10, 'MR-7334206', 'mj', '06/28/21', 'cash', '5000', '1400', '1400', 'Spade'),
(11, 'MR-323227', 'mj', '06/28/21', 'cash', '2500', '700', '2500', 'Hello'),
(12, 'MR-2522220', 'Monica Paragas', '06/28/21', 'cash', '250', '70', '250', 'Test'),
(13, 'MR-88202', 'mj', '08/26/21', 'cash', '2750', '770', '2750', 'Customer One'),
(14, 'MR-2323330', 'mj', '08/29/21', 'cash', '2750', '770', '2750', 'Gerald'),
(15, 'MR-824832', 'mj', '09/23/21', 'cash', '750', '270', '750', 'Blaze123456'),
(16, 'MR-722072', 'mj', '09/23/21', 'cash', '500', '200', '500', 'sample sale'),
(17, 'MR-333230', 'mj', '09/23/21', 'cash', '2000', '1070', '2000', 'sample sale2'),
(18, 'MR-2382232', 'mj', '09/23/21', 'cash', '14000', '8000', '14000', 'Noemi'),
(19, 'MR-3223228', 'Monica Paragas', '09/28/21', 'cash', '1100', '470', '1200', 'Customer '),
(20, 'MR-38088527', 'mj', '09/29/21', 'cash', '500', '200', '500', 'samplesample'),
(21, 'MR-362030', 'mj', '09/30/21', 'cash', '500', '200', '500', 'nghvfnghv'),
(22, 'MR-69229', 'mj', '10/01/21', 'cash', '500', '200', '7415', 'nvbchgv'),
(23, 'MR-2030300', 'mj', '10/02/21', 'cash', '500', '200', '5684', 'gchgcv'),
(24, 'MR-3033330', 'mj', '10/04/21', 'cash', '1000', '340', '1000', 'Sample100'),
(25, 'MR-733966', 'mj', '10/04/21', 'cash', '1250', '470', '1300', 'sample sale');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `product_code` varchar(150) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `product`, `qty`, `amount`, `profit`, `product_code`, `gen_name`, `name`, `price`, `discount`, `date`) VALUES
(39, 'MR-333230', '2', '1', '250', '70', 'MRVS-1abe', 'Juice', 'Testjuice', '250', '', '09/23/21'),
(42, 'MR-2382232', '5', '40', '14000', '8000', 'MRVS-9d46', 'Juice', 'Test juice2', '350', '', '09/23/21'),
(44, 'MR-3223228', '2', '1', '250', '70', 'MRVS-1abe', 'Juice', 'Testjuice', '250', '', '09/28/21'),
(45, 'MR-3223228', '5', '1', '350', '200', 'MRVS-9d46', 'Juice', 'Test juice2', '350', '', '09/28/21'),
(46, 'MR-3223228', '3', '1', '500', '200', 'MRVS-06dd', 'Juice', 'Test juice1', '500', '', '09/28/21'),
(47, 'MR-38088527', '3', '1', '500', '200', 'MRVS-06dd', 'Juice', 'Test juice1', '500', '', '09/29/21'),
(48, 'MR-362030', '3', '1', '500', '200', 'MRVS-06dd', 'Juice', 'Test juice1', '500', '', '09/30/21'),
(49, 'MR-69229', '3', '1', '500', '200', 'MRVS-06dd', 'Juice', 'Test juice1', '500', '', '10/01/21'),
(50, 'MR-2030300', '3', '1', '500', '200', 'MRVS-06dd', 'Juice', 'Test juice1', '500', '', '10/02/21'),
(51, 'MR-2222334', '3', '1', '500', '200', 'MRVS-06dd', 'Juice', 'Test juice1', '500', '', '10/04/21'),
(53, 'MR-52302', '3', '1', '500', '200', 'MRVS-06dd', 'Juice', 'Test juice1', '500', '', '10/04/21'),
(54, 'MR-52302', '6', '1', '2500', '700', 'MRVS-1019', 'Mod', 'Mod 1', '2500', '', '10/04/21'),
(55, 'MR-52302', '3', '1', '500', '200', 'MRVS-06dd', 'Juice', 'Test juice1', '500', '', '10/04/21'),
(57, 'MR-3322320', '2', '1', '250', '70', 'MRVS-1abe', 'Juice', 'Testjuice', '250', '', '10/04/21'),
(59, 'MR-3033330', '3', '1', '500', '200', 'MRVS-06dd', 'Juice', 'Test juice1', '500', '', '10/04/21'),
(60, 'MR-3033330', '2', '2', '500', '140', 'MRVS-1abe', 'Juice', 'Testjuice ', '250', '', '10/04/21'),
(61, 'MR-2422223', '2', '1', '250', '70', 'MRVS-1abe', 'Juice', 'Testjuice ', '250', '', '10/04/21'),
(62, 'MR-2422223', '3', '2', '1000', '400', 'MRVS-06dd', 'Juice', 'Test juice1', '500', '', '10/04/21'),
(63, 'MR-733966', '2', '1', '250', '70', 'MRVS-1abe', 'Juice', 'Testjuice ', '250', '', '10/04/21'),
(64, 'MR-733966', '3', '2', '1000', '400', 'MRVS-06dd', 'Juice', 'Test juice1', '500', '', '10/04/21');

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`, `note`) VALUES
(1, 'Geekpvape', 'Urdaneta Pangasinan', 'Juan Dela Cruz', '09093254587', 'sadfasda');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(8, 'mjserq', '21232f297a57a5a743894a0e4a801fc3', 'mj', 'Admin'),
(9, 'monparagas', 'ee11cbb19052e40b07aac0ca060c23ee', 'Monica Paragas', 'Cashier'),
(10, 'zaratenoemi', 'ee11cbb19052e40b07aac0ca060c23ee', 'Noemi Zarate', 'Cashier');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_user`
--
ALTER TABLE `customer_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customer_user`
--
ALTER TABLE `customer_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
