-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2022 at 10:59 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(72, 41, 30, 'Beetroot', 120, 1, 'Beetroot.jpg'),
(82, 45, 53, 'lime', 100, 1, 'lime.jpg'),
(86, 47, 30, 'Beetroot', 120, 9, 'Beetroot.jpg'),
(87, 47, 29, 'Carrot', 268, 1, 'carrot.png'),
(88, 45, 29, 'Carrot', 268, 1, 'carrot.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(11, 49, 'Yukatharsana', 'iit19015@std.uwu.ac.lk', '0758924289', 'when will new products arrive?');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(17, 47, 'Tharsa', '0758924289', 'jeeyukatharsa@gmail.com', 'cash on delivery', 'flat no. bounday road dso vcbcncnn batticaloa thettativu srilanka - ', ', Cabbage ( 2 ), Beetroot ( 1 )', 260, '03-Sep-2022', 'completed'),
(20, 49, 'Yukatharsana', '0758924289', 'iit19015@std.uwu.ac.lk', 'cash on delivery', 'flat no. 02 Boundary Road. Batticaloa thettativu Sri Lanka - ', ', Akadthi ( 2 ), Bitter gourd ( 2 ), Cabbage ( 3 )', 390, '08-Sep-2022', 'pending'),
(21, 51, 'kasvin', '0774567897', 'kasvin@gmail.com', 'credit card', 'flat no. 09 Beach road, batticaloa Kaluthavalai Srilanka - ', ', Broccoli ( 1 ), Cucumber  ( 1 ), Avocado ( 1 )', 560, '08-Sep-2022', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(29, 'Carrot', 'vegitables', 'fresh organic carrots (🥕 ) 250g.\r\n Imperator-type carrots\r\n', 268, 'carrot.png'),
(30, 'Beetroot', 'vegitables', 'Fresh organic beetroots(250g).\r\ntype-Common Garden Beets.\r\n', 120, 'Beetroot.jpg'),
(31, 'Capsicum ', 'vegitables', 'Fresh Organics Capsicum (250g).\r\ntype -Bell Pepper(green)', 210, 'capsicum.jfif'),
(32, 'Akadthi', 'vegitables', 'Fresh akadthi leaves (100g).', 50, 'Akadthi.jfif'),
(33, 'Banana Flowers ', 'vegitables', 'Fresh Organic Banana Flower.\r\nmedium size.', 150, 'Banana flower.jfif'),
(34, 'Brinjal', 'vegitables', 'Fresh Organic Brinjal(250g).\r\nType->pure purple', 100, 'Brinjal.jfif'),
(35, 'Broccoli', 'vegitables', 'Fresh organic Broccoli(250g).', 290, 'broccoli.png'),
(36, 'Cabbage', 'vegitables', 'Fresh organic cabbages (250g).', 70, 'cabb.jpg'),
(37, 'Bitter gourd', 'vegitables', 'Fresh organic Bitter gourd(100g).\r\ntype- green bitter gourd', 40, 'Cantaloupe.jfif'),
(38, 'Cauliflower ', 'vegitables', 'Fresh organic Cauliflower (250g)', 300, 'cauliflower.png'),
(39, 'Cucumber ', 'vegitables', 'Fresh organic cucumber 🥒 (250g).\r\ntype-full  green', 200, 'Cucumber.jfif'),
(40, 'Drumstick Leaves', 'vegitables', 'Fresh organic(200g) leaves.', 100, 'leaves.jpg'),
(41, 'Tomato ', 'vegitables', 'Fresh organic tomatoes (250g).', 200, 'tomato.png'),
(42, 'Okra', 'vegitables', 'Fresh organic okra(100g)', 50, 'Okra.jfif'),
(43, 'Red chili ', 'vegitables', 'Fresh organic red chili(100g)', 75, 'red papper.png'),
(44, 'Vallarai', 'vegitables', 'Fresh organic vallarai(100g)', 50, 'vallarai.jfif'),
(45, 'Onion', 'vegitables', 'Fresh organic Onions (250g)', 100, 'onion.jpg'),
(46, 'potatoes', 'vegitables', 'Fresh organic Potatoes(250g)', 80, 'potatoes.jpg'),
(47, 'Apple', 'fruits', 'Fresh organic Apple(250g)', 150, 'Apple.jpg'),
(48, 'Avocado', 'fruits', 'Fresh organic Avocado(100g)', 70, 'Avocado.jfif'),
(49, 'Banana', 'fruits', 'Fresh Organic banana(250g).\r\ntype- Cavendish banana', 100, 'banana.png'),
(50, 'Grapes', 'fruits', 'Organic Fresh Grapes(250g).\r\ntype-Blue grapes', 542, 'blue grapes.png'),
(51, 'Dragan fruits', 'fruits', 'fresh organic Draganfruits(500g).\r\ntype-white', 400, 'Dragan fruits.jfif'),
(52, 'kiwi', 'fruits', 'fresh organic kiwi(100g)', 280, 'kiwi.jpg'),
(53, 'lime', 'fruits', 'Fresh organic lime(250g)', 100, 'lime.jpg'),
(54, 'snakehead murrel', 'fish', 'Organic snakehead murrel fish(250g)', 500, 'fish8.jpg'),
(56, 'Tilapia', 'fish', 'Freshwater organic fish(250g)', 300, 'fish10.jpg'),
(57, 'Rohu', 'fish', 'Fresh organic rohu fish(500g)', 300, 'fish9.jpg'),
(58, 'Red tilapia', 'fish', 'Fresh organic red tilapia fish(250g)', 250, 'fish12.png'),
(59, 'Boal', 'fish', 'Fresh organic Boal fish(500g)', 380, 'fish14.png'),
(60, 'River shad', 'fish', 'Fresh organicRiver shad fish(250g)', 200, 'fish16.jpg'),
(61, 'pawpaw ', 'fruits', 'Fresh organic papaw(250g)', 100, 'Papaw.jfif'),
(62, 'Mandrain Orange', 'fruits', 'Fresh organic orange(100g)', 75, 'mandrain Orange.jpg'),
(63, 'strawberry', 'fruits', 'Fresh organic fruits(200g)', 350, 'strawberry.png'),
(64, 'Mango', 'fruits', 'Fresh organic man fruits(200g)', 100, 'Mango.jfif'),
(65, 'chicken', 'meat', 'Our chickens are fed Organic Feed we import along with other fruits, vegetables and grains. \r\n (250g)', 400, 'chicken.jpg'),
(66, 'lafleche', 'meat', 'They are never given any Antibiotics, Hormones, Steroids or other chemical additives during their lifespan with us.\r\n(250g)', 500, 'meet 2.png'),
(67, 'lincolshire Buff', 'meat', 'Fresh meat chickens (250g)', 500, 'meet1.jpg'),
(68, 'Mutton', 'meat', 'fresh mutton meet(100g)', 500, 'Mutton.jpg'),
(69, 'pineapple ', 'fruits', 'fresh organic Pineapple(250g)', 300, 'Pineapple.jfif'),
(70, 'Beef', 'meat', 'fresh organic Beef(250g)', 500, 'Beef.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `reviews` varchar(300) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `reviews`, `userid`) VALUES
(6, 'Tharsa', 'prices  are quite reasonable ', 48),
(7, 'Yukatharsa', '\r\nLovely little shop in the FarmFresh compound with a good range of organic products. The specialty foods appear to come from small niche suppliers.', 49),
(8, 'kasvin', 'Buy there, eat there, take away from there!!! Amazing, healthy, fresh options. Definitely a must if you are in our situation', 51),
(9, 'kasvin', 'Staff were really friendly and the shop is great to pick up some ethically sourced and handmade organic products. ', 51),
(10, 'Tharsa', 'Lovely little shop in the FarmFresh compound with a good range of organic products.', 51);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(49, 'Yukatharsana', 'iit19015@std.uwu.ac.lk', '827ccb0eea8a706c4c34a16891f84e7b', 'user', 'pic7.jfif'),
(50, 'Admin', 'admin@gmail.com', 'e7a1a2baec736b72080808fb9a43c66d', 'admin', 'pic2.jfif'),
(51, 'kasvin', 'kasvin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user', 'Pic5.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(63, 49, 30, 'Beetroot', 120, 'Beetroot.jpg'),
(64, 49, 31, 'Capsicum ', 210, 'capsicum.jfif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
