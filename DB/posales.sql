-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 10:55 AM
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
(8, 'Battery'),
(9, 'TEst');

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
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `prod_name`, `expected_date`, `note`) VALUES
(1, 'test', 'test', 'test', 'test', '2021-05-28', 'test'),
(2, 'TEst2', 'test2', '09098526359', 'test2test2', '2021-06-21', '200'),
(3, 'Test3', 'Test3', '09098526359', 'Test3', '2021-06-22', 'Test3'),
(4, 'test', 'test', 'test', 'test', 'test', 'test'),
(5, 'test', 'test', 'test', 'test', 'test', 'test'),
(6, 'test', 'test', 'test', 'test', 'test', 'test'),
(8, 'Sample', 'Sample', '0728373', 'sample', 'sample', 'sample');

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
(23, 'test', 'test3', '098f6bcd4621d373cade4e832627b4f6', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
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

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`) VALUES
(1, 'MRVS-ce3e', 'Mod', 'Testmod', '', '1800', '2500', '700', 'Test', 0, 0, 10, '2021-06-23', '2021-06-09'),
(2, 'MRVS-1abe', 'Juice', 'Testjuice', '', '180', '250', '70', 'Test', 0, 9, 20, '2021-06-30', '2021-06-09'),
(4, 'MRVS-9374', 'Accessories', 'Test', '', '1800', '2500', '700', 'Test', 0, 2, 2, '2021-06-08', '2021-06-01');

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
(4, 'MR-93073202', 'mj', '06/10/21', 'cash', '2500', '700', '2500', 'Spade'),
(5, 'MR-38033093', 'mj', '06/10/21', 'cash', '5000', '1400', '5000', 'Spade'),
(6, 'MR-3333', 'mj', '06/14/21', 'cash', '500', '50', '1', 'Spade'),
(7, 'MR-3227030', 'Al Sabangan', '06/15/21', 'cash', '2500', '700', '2500', 'Spade'),
(8, 'MR-2232332', 'mj', '06/17/21', 'cash', '250', '70', '250', 'Spade'),
(9, 'MR-260339', 'mj', '06/23/21', 'cash', '10000000', '9999990', '10000000', 'Hello'),
(10, 'MR-7334206', 'mj', '06/28/21', 'cash', '5000', '1400', '1400', 'Spade'),
(11, 'MR-323227', 'mj', '06/28/21', 'cash', '2500', '700', '2500', 'Hello'),
(12, 'MR-2522220', 'Monica Paragas', '06/28/21', 'cash', '250', '70', '250', 'Test');

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
(1, 'MR-386302', '1', '2', '5000', '1400', 'MRVS-ce3e', 'Mod', 'Testmod', '2500', '', '06/09/21'),
(2, 'MR-386302', '2', '5', '1250', '350', 'MRVS-1abe', 'Juice', 'Testjuice', '250', '', '06/09/21'),
(3, 'MR-386302', '3', '1', '500', '50', 'MRVS-fe4c', 'Battery', 'Test', '500', '', '06/09/21'),
(4, 'MR-533339', '1', '1', '2500', '700', 'MRVS-ce3e', 'Mod', 'Testmod', '2500', '', '06/09/21'),
(5, 'MR-533339', '3', '1', '500', '50', 'MRVS-fe4c', 'Battery', 'Test', '500', '', '06/09/21'),
(21, 'MR-2023330', '2', '1', '250', '70', 'MRVS-1abe', 'Juice', 'Testjuice', '250', '', '06/28/21'),
(22, 'MR-2522220', '2', '1', '250', '70', 'MRVS-1abe', 'Juice', 'Testjuice', '250', '', '06/28/21');

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
(1, 'Test', 'Urdaneta Pangasinan', 'Juan Dela Cruz', '09093254587', 'sadfasda');

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
(10, 'zaratenoemi', 'ee11cbb19052e40b07aac0ca060c23ee', 'Noemi Zarate', 'Cashier'),
(11, 'Bongdg', '734c2fbd0b4ee6ee97f6f9b97dbad0e9', 'Al Sabangan', 'Admin');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_user`
--
ALTER TABLE `customer_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
