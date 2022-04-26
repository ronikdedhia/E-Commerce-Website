-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 07:12 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(15, 22, 51, 1),
(16, 15, 40, 2),
(20, 14, 53, 1),
(21, 15, 33, 3),
(22, 14, 51, 1),
(23, 14, 80, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(5, 'Pharmaceuticals', 'pharma_products'),
(6, 'Industrial Machines', 'industry_machines'),
(7, 'Electronics And Electricals', 'elec_elec'),
(8, 'Automobile Spare Parts', 'automobile_spare'),
(9, 'Safety Wear', 's_wear');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 31, 2),
(15, 9, 33, 5),
(16, 9, 41, 2),
(17, 9, 44, 3),
(18, 10, 36, 3),
(19, 10, 45, 4),
(20, 10, 56, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(30, 5, 'Hydrocrodone', 'Hydrocodone, sold under the brand name Zohydro ER, among others, is an opioid used to treat severe pain of a prolonged duration, if other measures are not sufficient. It is also used as a cough suppressant in adults. It is taken by mouth.', 'hydro', 45.5, 'pain-killer.jpeg', '2021-08-05', 1),
(31, 5, 'Sanitizer', 'Soap and water work to remove all types of germs from hands, while sanitizer acts by killing certain germs on the skin. Although alcohol-based hand sanitizers can quickly reduce the number of germs in many situations, they should be used in the right situations.', 'sani', 45.5, 'sanitiser.jpg', '2021-08-05', 1),
(32, 5, 'Ayurvedic Kidney Guardia', 'KidneyGuardia is Helpful in Kidney Problems, · Help delay the need of dialysis by reducing the progression rate of degeneration and tends improve repair renal ', 'kidney', 150, 'kidney.jpg', '2021-03-21', 1),
(33, 5, 'Weight Gainer', 'The term weight gainer applies to a range of supplements that are meant to help you gain weight faster. ', 'Weight_Gainer', 2000, 'gain-weight.jpg', '2022-04-21', 1),
(34, 5, 'Paracetamol', 'Paracetamol, also known as acetaminophen, is a medication used to treat pain and fever. It is typically used for mild to moderate pain relief.', 'paracetamol', 20.99, 'paracetamol.jpg', '2021-03-21', 4),
(35, 5, 'Protien Powders', 'Bodybuilding supplements are dietary supplements commonly used by those involved in bodybuilding, weightlifting, mixed martial arts, and athletics for the purpose of facilitating an increase in lean body mass', 'pp', 3445.5, 'protein.jpg', '2021-03-31', 2),
(36, 5, 'Cough Syrup', 'While there are several different brands and formulas of cough syrups to choose from, many doctors recommend cough syrup containing dextromethorphan as the best choice for adults.', 'Cough', 150, 'cough_syrup.jpg', '2021-08-05', 1),
(37, 5, 'Pure Nutrition Progut Plus ', 'Progut Plus contains 7 strains of probiotic bacteria that work together to promote digestive health by inhibiting the growth of harmful bacteria. This supplement is ideal for frequent travelers, people with weak digestive systems, as well as those struck by acute diarrhea. Progut Plus can also help in the management of inflammatory bowel diseases.', 'pure', 1124, 'Progut.png', '2021-03-24', 2),
(38, 5, 'Morpheme Remedies Garcinia Green Tea ', 'Morpheme Garcinia Green Tea Garcinia Green Tea can be considered as one of the best alternate of drinking green tea which can assist in boosting metabolism', 'Mr', 499, 'Mr.png', '2021-03-21', 1),
(40, 6, 'Automatic KIJ-125 Ceiling Fan Stator Winding Machine', 'We are providing KIJ-125 Ceiling Fan Stator Winding Machine to our valuable clients.', 'We are providing KIJ-125 Ceiling Fan Stator Winding Machine to our valuable clients.', 40000, 'Auto1.png', '2021-04-28', 4),
(41, 6, 'Fan Winding Machine Master 5 Die Table Model', 'Latest Celing Fan Winding Machine with electronic preset counter with brake and 5 die sets incuding highspeed fan die and with Lockable Box.', 'cc', 20000, 'auto2.png', '2021-03-22', 1),
(42, 6, 'Semi-Automatic 50 Hz KIJ-119 Ceiling Fan Rewinding Machine, Capacity: 250 Fans Per Day', 'KIJ-119 Ceiling Fan Rewinding Machine can easily and efficiently work on 1000 W Inverter while providing a smooth operation. The KIJ-119 Ceiling Fan Rewinding Machine provided by us comprised of sturdy parts that are highly resistant to corrosion thus ensures longer service life. It can be easily customized as per the client’s requirements. ', 's', 210000, 'auto3.png', '2021-03-21', 1),
(44, 6, 'Mild Steel Electric Fully Automatic Ceiling Fan Winding Machine', 'With the constant support of our dexterous crew of technocrats, we are fulfilling the varied requirements of clients by manufacturing optimum quality Fully Automatic Ceiling Fan Winding Machine.', '2', 25000000, 'auto4.png', '2021-03-24', 2),
(45, 6, 'Semi Ceiling Fan Winding Machine, Max Speed : >1500 rpm', '1: Model Number = Tebal Top  Automatic - 205.  2: Die Set = 8 Set , Die No. - 1,3,5,8,9,10,11,12, 3: Head  = One Head. 4: Winding Speed =1500RPM. 5:Winding Direction = Clockwise and anticlockwise. 6: Stator Diameter = 110 mm   To 200 mm.    MAX. 7: Stator Thickness = 10mm  To  30mm  (can be adjusted). 8: Wire Diameter = 34 SWG  To 36 SWG. 9:  Number of Coil / Poles = 12,14,16,18,6 Coil Sator Winding. 10: Capacity = 8 to 10 stator per hour. 11: MIter Microcontroller = Digital Pre-set counter (4 digit x 2)  12: Power supply = 220 V AC single phase 50 Hz. 13: Motor = 1/4 H.P. single phase 220 V AC With  Breck. 14:  Wire cut = Autometic Stop (Yes/NO-Opttion). 15: Power fail = Memory Detects (No copper wastage ). 16: Dimensions Around = Lenth 24 Inch x Width 11 Inch x Height 16 Inch.', '', 22000, 'auto5.png', '2021-03-21', 7),
(46, 6, 'Semi-Automatic Single Ceiling Fan Stator Winding Machine', 'Semi-automatic Single Phase Electric Ceiling Fan Winding Machine', 'a', 120000, 'auto6.png', '2021-03-21', 6),
(51, 7, 'Dell Inspiron Laptop', 'Powerful Laptop', 'bbh', 40000, 'dell-inspiron-15-5000-15-6.jpg', '2022-04-21', 2),
(52, 7, 'HP Pavilion Power Gaming PC', 'Powerful Laptop', 'hp-pavilion-power-580-015na-gaming-pc', 30000, 'hp-pavilion-power-580-015na-gaming-pc.jpg', '2021-08-05', 1),
(53, 7, 'Amazon Fire HD Tablet', 'Powerful\r\n', 'amazon-fire-hd-tablet', 5000, 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black.jpg', '2021-08-05', 1),
(54, 7, 'Apple iPad 9', '<p>Very good fast tablet</p>\r\n', 'apple-ipad-9', 700000, 'apple-9-7-ipad-32-gb-gold.jpg', '2021-03-21', 1),
(55, 7, 'Vortex Gaming PC', 'large-pc-specialist-vortex-minerva-xt-r-gaming-pc', 'large-pc-specialist-vortex-minerva-xt-r-gaming-pc', 40000, 'large-pc-specialist-vortex-minerva-xt-r-gaming-pc.jpg', '2021-03-21', 2),
(56, 7, 'Samsung Galaxy S9', 's9', 's9', 60000, 's9.jpg', '2021-03-24', 11),
(63, 8, 'Black Oil Chamber', 'Black Oil Chamber', 'Black Oil Chamber', 620, 'mob3.png', '2022-04-21', 1),
(66, 8, 'Ashok Leyland Dost Flywheel Assembly', 'Ashok Leyland Dost Flywheel Assembly', 'Ashok Leyland Dost Flywheel Assembly', 4340, 'mob4.png', '2021-03-16', 11),
(67, 8, 'Stainless Steel Hydraulic Pump Valve Chamber', 'Stainless Steel Hydraulic Pump Valve Chamber', 'Stainless Steel Hydraulic Pump Valve Chamber', 40, 'mob5.png', '2021-03-21', 1),
(70, 8, 'Metal Engine Hydraulic Mounting W/Alu RH Ertiga, Packaging Type: Box', 'Metal Engine Hydraulic Mounting W/Alu RH Ertiga, Packaging Type: Box', 'Metal Engine Hydraulic Mounting W/Alu RH Ertiga, Packaging Type: Box', 1500, 'mob6.png', '2021-03-24', 2),
(72, 8, 'Alloy Steel Flange Yoke Cross Holder', '<p>Alloy Steel Flange Yoke Cross Holder, For Industrial</p>\r\n', 'alloy-steel-flange-yoke-cross-holder', 1750, 'mob7.png', '2021-03-24', 3),
(73, 8, 'Window Regulator, For Garage', 'Window Regulator, For Garage', 'Window Regulator, For Garage', 10, 'mob8.png', '2021-03-24', 2),
(80, 9, 'Kids Helmet', 'Kids Helmet', 'Kids Helmet', 500, 'sf1.png', '2022-04-21', 1),
(81, 9, 'CONCORD FRP COMBAT FIBER GLASS HELMET, Packaging Type: Catoon Box', 'CONCORD FRP COMBAT FIBER GLASS HELMET, Packaging Type: Catoon Box', 'CONCORD FRP COMBAT FIBER GLASS HELMET, Packaging Type: Catoon Box', 700, 'sf2.png', '2021-08-05', 1),
(83, 9, 'PVC Yellow Safety Helmet', 'PVC Yellow Safety Helmet', 'PVC Yellow Safety Helmet', 75, 'sf3.png', '2021-03-16', 2),
(84, 9, 'Unisex Large Metal Mesh Gloves', 'Unisex Large Metal Mesh Gloves', 'Unisex Large Metal Mesh Gloves', 5500, 'sf4.png', '2021-03-24', 3),
(85, 9, 'Dr. Fresh N95 Face Mask, Number of Layers: 5 Layers', 'Dr. Fresh N95 Face Mask, Number of Layers: 5 Layers', 'Dr. Fresh N95 Face Mask, Number of Layers: 5 Layers', 500, 'sf5.png', '2021-03-21', 3),
(86, 9, 'Yellow Lightweight Earmuff, For Noise Reduction, Size: Standard Size', 'Yellow Lightweight Earmuff, For Noise Reduction, Size: Standard Size', 'Yellow Lightweight Earmuff, For Noise Reduction, Size: Standard Size', 1590, 'sf6.png', '2021-03-21', 1),
(87, 5, 'Coconut Oil', '<p>coconut oil is good for health.</p>\r\n', 'coconut-oil', 50, '', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(10, 14, 'PAY-21700797GV667562HLLZ7ZVY', '2022-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(14, 'ronikdedhia@gmail.com', '$2y$10$THCiaipRqs51LgZNNSp7henK8SJ17r7abaH44slwjXavv/nVEw29e', 0, 'Ronik', 'Dedhia', 'Mumbai', '1231231231', '', 1, '', '', '2021-02-04'),
(15, 'akshitchheda23@gmail.com', '$2y$10$SEz.S93j81qEt26gB3PN/OUh/Pz6jeZaBODDmtxHcoVmy8nA2Jq4y', 0, 'akshit', 'chheda', '', '', '', 1, 'dhCxKDGs82uq', '', '2021-03-21'),
(16, 'tanujrjoshi@gmail.com', '$2y$10$ijczkOzaXN.5rnDS4Tc50ePDACTgf2vUOvj8Yd.PLy7f/691UTKCy', 0, 'tanuj', 'joshi', '', '', '', 1, '2yXzp3jEGRWx', '', '2021-03-21'),
(19, 'ronik@admin.com', '$2y$10$THCiaipRqs51LgZNNSp7henK8SJ17r7abaH44slwjXavv/nVEw29e', 1, 'Ronik', 'Dedhia', '', '', '', 1, '', '', '2020-12-30'),
(20, 'ronik0402@gmail.com', '$2y$10$xHmmU2Yz0Z1.hkCSBW20Q.qDLqX1xaXOcj4hYhEZOxM/KYkyZzMYG', 0, 'ronik', 'ded', '', '', '', 1, 'ka86rV1sv9OG', '', '2021-03-22'),
(21, 'r@gmail.com', '$2y$10$z2J0KOM4uHwTC8MO6pKTeuvzRO0eiRAFmhhPr/IaXO.EzuJqcHPbG', 0, 'ronik', 'dd', '', '', '', 1, '1jQzy4mV3wcp', '', '2021-03-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
