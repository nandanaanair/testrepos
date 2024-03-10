-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 10, 2024 at 11:46 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21654757_eyeweardb`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `apptmt_id` int(50) NOT NULL,
  `apptmt_date` date NOT NULL,
  `apptmt_time` time(6) NOT NULL,
  `apptmt_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `apptmt_loc` varchar(100) NOT NULL,
  `cust_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`apptmt_id`, `apptmt_date`, `apptmt_time`, `apptmt_status`, `apptmt_loc`, `cust_email`) VALUES
(2530192, '2024-03-15', '07:30:00.000000', 'Pending', 'Thane', 'sandeepsn4466+2024@gmail.com'),
(2701026, '2024-01-19', '05:00:00.000000', 'Completed', 'Mumbai', 'nandanamanasvi@gmail.com'),
(9563314, '2024-02-02', '11:00:00.000000', 'Completed', 'Thane', 'nandanamanasvi@gmail.com'),
(9575747, '2024-03-23', '07:30:00.000000', 'Pending', 'Mumbai', 'sandeepsn4466+40@gmail.com'),
(9786585, '2024-03-28', '07:30:00.000000', 'Pending', 'Thane', 'nandanamanasvi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `cust_email` varchar(100) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `cust_email`, `product_id`, `quantity`) VALUES
(86, 'nandanamanasvi@gmail.com', 21968, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `cust_email` varchar(50) NOT NULL,
  `cust_phno` varchar(10) NOT NULL,
  `cust_password` varchar(100) NOT NULL,
  `bldg` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`firstName`, `lastName`, `cust_email`, `cust_phno`, `cust_password`, `bldg`, `city`, `state`, `pincode`) VALUES
('Akshada', 'Kadlak', 'akshadakadlak44@gmail.com', '9372828399', '$2y$10$bI8426eGtIsmO9kcHcE6p.bFzPkgKQybyJdFBQRncxKqfoPC1Hh2C', NULL, NULL, NULL, NULL),
('Aman', 'Vishwakarma', 'amanv5340@gmail.com', '8422062259', '$2y$10$2yJfo99xluWHk4gFkZvMYeTT4oNZkZCRuxIN4yATBrvsnBVMw.Fsq', NULL, NULL, NULL, NULL),
('Gauravv', 'Tukrul', 'gauravtukrul399@gmail.com', '9324329486', '$2y$10$B.0QuV4/KcD.I/gISeI5q.f9QTkFQBgyKx1f6D7OJsnfg4L4BnxDu', NULL, NULL, NULL, NULL),
('Nandana', 'Nair', 'nandanaanair03@gmail.com', '9372828399', '$2y$10$NnguNY9Wyjst9MSfw87u8egI4A9.YbBY/WGv0w0zBdZb6a.Py0GXC', 'B/18, Parshuram Bala', 'Dombivli', 'Maharashtra', 421202),
('Nandana', 'Nair', 'nandanamanasvi@gmail.com', '9372828399', '$2y$10$s8tPdgjIUSedTrocFvfXReDV551xFebbeq0mb4.jJP0OcDB5.a53C', 'B/18, Parshuram Bala', 'Dombivli', 'Maharashtra', 421202),
('Sandeep', 'Prasad', 'sandeepsn4466+12@gmail.com', '9819454238', '$2y$10$.5OQ1VMu.RakhpDSZgfnfO.5QHMrpwjFKXLuehryqLczGHgLfScTi', NULL, NULL, NULL, NULL),
('Sandeep', 'Nair', 'sandeepsn4466+2024@gmail.com', '9819454238', '$2y$10$CLBdrCMa3WPjcGVwYoydquD6vgla5Jo73K9.ovGGexdM1/nVg0OEW', 'B-18, Parshuram Bala Co-op Hsg Soc, Thakurwadi Cross Lane, Kalu Nagar', 'Dombivli (E)', 'Maharashtra', 421202),
('Sandy', 'Prasad', 'sandeepsn4466+40@gmail.com', '9819454238', '$2y$10$fGylCAgBVPJhJq1uwndjeebQA9ot3PmydVJkN4q.zkabXGgeTEXxK', '', '', '', 0),
('vaidehi', 'kelkar', 'vaidehikelkar2911@gmail.com', '7058579268', '$2y$10$fZEw0e04AYCWbo05W3DJ.OP63VYPxC7hILVNR4uvjlyoM6yNbWKa.', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(50) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `order_bldg` varchar(100) NOT NULL,
  `order_city` varchar(50) NOT NULL,
  `order_state` varchar(50) NOT NULL,
  `order_pincode` int(10) NOT NULL,
  `total_price` int(10) NOT NULL,
  `cust_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `order_status`, `order_bldg`, `order_city`, `order_state`, `order_pincode`, `total_price`, `cust_email`) VALUES
(539900, '2024-02-22', 'Pending', 'B/18, Parshuram Bala', 'Dombivli', 'Maharashtra', 421202, 10500, 'nandanamanasvi@gmail.com'),
(596685, '2024-03-10', 'Pending', 'B/18, Parshuram Bala', 'Dombivli', 'Maharashtra', 421202, 3500, 'nandanamanasvi@gmail.com'),
(693235, '2024-03-06', 'Pending', 'Zda', 'asc', 'asc', 263737, 5000, 'vaidehikelkar2911@gmail.com'),
(701776, '2024-02-25', 'Pending', 'B-18, Parshuram Bala Co-op Hsg Soc, Thakurwadi Cross Lane, Kalu Nagar', 'Dombivli (E)', 'Maharashtra', 421202, 7000, 'sandeepsn4466+2024@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `prod_id` int(11) DEFAULT NULL,
  `prod_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `order_id`, `prod_id`, `prod_name`, `quantity`, `price`) VALUES
(20, 539900, 12955, 'Oversized Aviator Sunglasses', 3, 3500),
(21, 701776, 12955, 'Oversized Aviator Sunglasses', 1, 3500),
(22, 701776, 95513, 'Rectangle Blue Light Glasses', 1, 3500),
(24, 693235, 17848, 'Fashionable Cat Eye Glasses', 1, 2500),
(25, 693235, 17848, 'Fashionable Cat Eye Glasses', 1, 2500),
(26, 596685, 34195, 'Classic Aviator Sunglasses ', 3, 2000),
(27, 596685, 84564, 'Stylish Oval Blue Light Glasses', 1, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `trans_id` varchar(100) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_amt` int(50) NOT NULL,
  `cust_email` varchar(50) NOT NULL,
  `order_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`trans_id`, `payment_type`, `payment_date`, `payment_amt`, `cust_email`, `order_id`) VALUES
('pay_NdvcNp2cBzE51a', 'Netbanking', '2024-02-22', 10500, 'nandanamanasvi@gmail.com', 539900),
('pay_NdVcxENnG99ap9', 'Netbanking', '2024-02-21', 4000, 'nandanamanasvi@gmail.com', 223424),
('pay_NdWeaHa89LNCTx', 'Netbanking', '2024-02-21', 3500, 'nandanamanasvi@gmail.com', 372345),
('pay_NjFh0LVEPrGXVu', 'Netbanking', '2024-03-06', 5000, 'vaidehikelkar2911@gmail.com', 693235);

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `prescription_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `l_sph` varchar(50) DEFAULT NULL,
  `r_sph` varchar(50) DEFAULT NULL,
  `l_cyl` varchar(50) DEFAULT NULL,
  `r_cyl` varchar(50) DEFAULT NULL,
  `l_axis` varchar(50) DEFAULT NULL,
  `r_axis` varchar(50) DEFAULT NULL,
  `l_addn` varchar(50) DEFAULT NULL,
  `r_addn` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescription_id`, `order_id`, `l_sph`, `r_sph`, `l_cyl`, `r_cyl`, `l_axis`, `r_axis`, `l_addn`, `r_addn`) VALUES
(13, 539900, '1', '2', '3', '4', '5', '6', '7', '8');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(15) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_description` varchar(500) NOT NULL,
  `prod_frametype` varchar(15) NOT NULL,
  `prod_category` varchar(15) NOT NULL,
  `prod_price` int(10) NOT NULL,
  `prod_brand` varchar(50) NOT NULL,
  `prod_color` varchar(50) NOT NULL,
  `prod_img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `prod_description`, `prod_frametype`, `prod_category`, `prod_price`, `prod_brand`, `prod_color`, `prod_img`) VALUES
(11088, 'Vintage Round Eyeglasses', 'Retro Round Eyeglasses with acetate frame. Adds a touch of vintage flair to any look.', 'round', 'eyeglass', 1000, 'John_Jacobs', 'rgb(245, 203, 167)', 'uploads/Vintage Round Eyeglasses.jpg'),
(12955, 'Oversized Aviator Sunglasses', 'Oversized aviator sunglasses for bold statements. Offers maximum coverage and style.', 'aviator', 'sunglass', 3500, 'RayBan', 'rgb(0, 0, 0)', 'uploads/Oversized Aviator Sunglasses.jpg'),
(16870, 'Full Rim Rectangle Eyeglasses', 'Introducing our Full Rim Rectangle Eyeglasses, designed to make a vibrant statement wherever you go. With a striking color combination and full rim design, these glasses effortlessly blend style and practicality, providing both fashion-forward aesthetics and essential functionality for your daily activities.', 'rectangle', 'eyeglass', 1700, 'Lee_Cooper', 'rgb(0, 0, 255)', 'uploads/WhatsApp Image 2024-03-10 at 22.49.23_5c246077.jpg'),
(17848, 'Fashionable Cat Eye Glasses', 'Trendy cat eye glasses with tortoiseshell pattern. Makes a statement with retro glamour.', 'cat_eye', 'eyeglass', 2500, 'Vincent_Chase', 'rgb(175, 96, 26)', 'uploads/Fashionable Cat Eye Glasses.jpg'),
(20512, 'Full Rim Wayfarer Sunglasses', 'Introducing our Full Rim Wayfarer Sunglasses designed for the active individual. Perfect for sports and outdoor activities, offering both durability and a trendy aesthetic.', 'rectangle', 'sunglass', 2000, 'RayBan', 'rgb(171, 178, 185)', 'uploads/Full Rim Wayfarer Sunglasses.jpg'),
(21064, 'Full Rim Round Polarized Sunglasses', 'Introducing our Full Rim Round Polarized sunglasses, a fusion of style and function. With their striking gradient lenses and full rim design, they offer a bold fashion statement', 'round', 'sunglass', 2500, 'Oakley', 'rgb(241, 148, 138)', 'uploads/Full Rim Round Polarized Sunglasses.jpg'),
(21968, 'Aviator New 2.0', 'Get our new Aviator New 2.0', 'aviator', 'eyeglass', 3500, 'Vincent_Chase', 'rgb(128, 0, 128)', 'uploads/30507944-front-940x529.webp'),
(34195, 'Classic Aviator Sunglasses ', 'Timeless aviator sunglasses with metal frame. Crafted for sophistication and UV protection.', 'aviator', 'sunglass', 2000, 'RayBan', 'rgb(0, 0, 0)', 'uploads/Cat Eye Polarized Sunglasses.jpg'),
(49141, 'Clear Transparent Glasses', 'Transparent frame glasses for modern minimalism. Effortlessly chic for any occasion.', 'transparent', 'eyeglass', 4000, 'John_Jacobs', 'rgb(248, 249, 249)', 'uploads/Clear Transparent Glasses.webp'),
(61473, 'Cat Eye Polarized Sunglasses', 'Experience timeless elegance with our Cat Eye Polarized Sunglasses, featuring a chic design and advanced polarized lenses for enhanced clarity and reduced glare.', 'cat_eye', 'sunglass', 2000, 'Vincent_Chase', 'hsv(0, 0%, 49%)', 'uploads/Classic Aviator Sunglasses.png'),
(73083, 'Full Rim Wayfarer Eyeglasses', 'Introducing our Full Rim Wayfarer Eyeglasses, a bold addition to your eyewear collection. With their vibrant green hue design, these glasses combine style and personality effortlessly.', 'rectangle', 'eyeglass', 1800, 'Oakley', 'rgb(0, 255, 0)', 'uploads/WhatsApp Image 2024-03-10 at 22.49.23_fe024ee0.jpg'),
(80877, 'Rimless Square Eyeglasses', 'Introducing our Rimless Square Eyeglasses, a perfect fusion of style and durability. With a sleek steel frame and rimless design, these glasses offer a modern look and lightweight comfort for everyday wear.', 'square', 'eyeglass', 2000, 'John_Jacobs', 'rgb(171, 178, 185)', 'uploads/eyeglass.jpeg'),
(84564, 'Stylish Oval Blue Light Glasses', 'Oval glasses with blue light filtering lenses. Combines style with eye protection.', 'round', 'screen_glass', 5000, 'Oakley', 'rgb(0, 0, 0)', 'uploads/Stylish Oval Blue Light Glasses.jpg'),
(89043, 'Modern Rectangle Sunglasses', 'Sleek rectangle sunglasses with polarized lenses. Perfect blend of style and clarity.', 'rectangle', 'sunglass', 3000, 'Oakley', 'rgb(0, 0, 0)', 'uploads/Modern Rectangle Sunglasses.png'),
(89704, 'Half Rim Wayfarer Sunglasses', 'Introducing the new Half Rim Wayfarer Sunglasses, perfect for active lifestyles. With a sleek design and polarized lenses, they offer both style and performance for outdoor adventures.', 'rectangle', 'sunglass', 3000, 'RayBan', 'rgb(255, 165, 0)', 'uploads/Half Rim Wayfarer Sunglasses.jpg'),
(92478, 'Funky Full Rim Screen Glasses', 'Introducing our Funky Full Rim Geometric Screen Glasses, a bold expression of modern style and tech-savvy functionality. With their geometric design and full rim construction, these glasses make a statement. Engineered to protect your eyes from digital strain, they fuse fashion and practicality for the contemporary individual.', 'round', 'screen_glass', 1300, 'Oakley', 'rgb(241, 148, 138)', 'uploads/WhatsApp Image 2024-03-10 at 22.49.24_cfcefbb6.jpg'),
(95513, 'Rectangle Blue Light Glasses', 'Rectangle glasses to reduce eye strain from screens. Combats digital eye fatigue with style.', 'rectangle', 'screen_glass', 3500, 'Lee_Cooper', 'rgb(0, 0, 0)', 'uploads/Rectangle Blue Light Glasses.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rev_comment` varchar(100) NOT NULL,
  `rev_rating` int(10) NOT NULL,
  `cust_fname` varchar(50) NOT NULL,
  `prod_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`rev_comment`, `rev_rating`, `cust_fname`, `prod_id`) VALUES
('Best eyewear in the world :-)', 5, 'Sandy', 17290),
('gdfgdfgfdg', 4, 'Nandanaaa', 95513),
('hahaha', 5, 'Nandanaaa', 10011),
('hiiii', 3, 'Nandanaaa', 95513),
('hiiiiii', 5, 'Nandana', 12955),
('I like the product', 4, 'Nandana', 12955),
('nice', 5, 'Nandanaaa', 10004),
('nice product', 4, 'Nandana', 84564),
('Very comfortable glasses', 5, 'Nandanaaa', 10004),
('Very nice product, I love it. Most recommended comfy product', 5, 'Nandanaaa', 10004),
('Very nice product, I love it. Most recommended comfy productsss', 5, 'Nandanaaa', 10004);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`apptmt_id`),
  ADD KEY `Customer Email` (`cust_email`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cust_email` (`cust_email`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `fk_prod_id` (`prod_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `Order ID` (`order_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`prescription_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rev_comment`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `prescription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `Customer Email` FOREIGN KEY (`cust_email`) REFERENCES `customer` (`cust_email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`cust_email`) REFERENCES `customer` (`cust_email`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`prod_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_prod_id` FOREIGN KEY (`prod_id`) REFERENCES `products` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `products` (`prod_id`);

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
