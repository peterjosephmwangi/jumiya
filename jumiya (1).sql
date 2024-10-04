-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 30, 2024 at 11:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jumiya`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(50) NOT NULL,
  `product_name` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_cost` int(50) NOT NULL,
  `product_category` text NOT NULL,
  `product_image_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_desc`, `product_cost`, `product_category`, `product_image_name`) VALUES
(1, 'Infinix', 'This is about the infinix phones', 20000, 'phones', 'phone1.jpg'),
(2, 'iPhone 15 Pro', 'The latest flagship from Apple, featuring a 6.7-inch OLED display, A16 Bionic chip, and a 48 MP camera.', 28000, 'phones', 'phone2.jpg'),
(3, 'Samsung Galaxy S23 Ultra', 'Samsung’s top-tier phone with a 6.8-inch Dynamic AMOLED display, Snapdragon 8 Gen 2, and 200 MP quad camera system.', 28000, 'phones', 'phone3.jpg'),
(4, 'Google Pixel 8 Pro', ' Google’s newest phone with a 6.7-inch OLED display, Tensor G3 processor, and AI-powered camera features.', 28000, 'phones', 'phone4.jpg'),
(5, 'Google Pixel 8 Pro', 'Google’s newest phone with a 6.7-inch OLED display, Tensor G3 processor, and AI-powered camera features.', 28000, 'phones', 'phone4.jpg'),
(6, 'OnePlus 11', 'Flagship killer with a 6.7-inch Fluid AMOLED display, Snapdragon 8 Gen 2, and 50 MP triple camera system.', 24000, 'phones', 'phone5.jpg'),
(7, 'iPhone 15 Pro', 'The latest flagship from Apple, featuring a 6.7-inch OLED display, A16 Bionic chip, and a 48 MP camera.', 32000, 'phones', 'phone1.jpg'),
(8, 'Samsung Galaxy S23 Ultra', 'Samsung’s top-tier phone with a 6.8-inch Dynamic AMOLED display, Snapdragon 8 Gen 2, and 200 MP quad camera system.', 35000, 'phones', 'phone2.jpg'),
(9, 'Sony Xperia 1 V', 'A phone designed for creators, featuring a 6.5-inch 4K OLED display, Snapdragon 8 Gen 2, and pro-level camera setup.', 30000, 'phones', 'phone6.jpg'),
(10, 'Motorola Edge 40 Pro', 'Ultra-fast with a 6.67-inch pOLED display, Snapdragon 8 Gen 2, and 50 MP triple camera.', 23000, 'phones', 'phone4.jpg'),
(11, 'Xiaomi 13 Pro', 'High-performance phone with a 6.73-inch AMOLED display, Snapdragon 8 Gen 2, and 108 MP camera.', 27000, 'phones', 'phone3.jpg'),
(12, 'Alions Kettle', 'High-quality electric kettle with a 1.7-liter capacity and automatic shut-off feature.', 3500, 'electronics', 'alionskettle.jpg'),
(13, 'Apple MacBook Pro', 'Latest model of the Apple MacBook Pro with M1 chip, 16-inch Retina display, and 512GB SSD.', 250000, 'electronics', 'appl.jpg'),
(14, 'Apple iPad Air', '10.9-inch iPad Air with A14 Bionic chip and 64GB storage, perfect for both work and play.', 75000, 'electronics', 'appl2.jpg'),
(15, 'Apple Watch Series 8', 'Advanced smartwatch with health tracking, GPS, and water resistance, built for fitness.', 45000, 'electronics', 'appl3.jpg'),
(16, 'Apple AirPods Pro', 'Noise-cancelling wireless earbuds with excellent sound quality and seamless integration with Apple devices.', 25000, 'electronics', 'appl4.jpg'),
(17, 'Apple TV 4K', 'Stream your favorite shows and movies with the 4K HDR Apple TV, including Siri remote.', 35000, 'electronics', 'appl5.jpg'),
(18, 'Samsung 32-inch LED Monitor', '32-inch Full HD LED monitor with slim bezels and high color accuracy.', 45000, 'electronics', 'screen1.jpg'),
(19, 'LG 24-inch LED Monitor', '24-inch Full HD monitor with adjustable stand and energy-saving features.', 30000, 'electronics', 'screen2.jpg'),
(20, 'Dell 27-inch Curved Monitor', 'High-performance 27-inch curved monitor with a 144Hz refresh rate, ideal for gaming.', 60000, 'electronics', 'screen3.jpg'),
(21, 'Sony 55-inch 4K Smart TV', 'Smart TV with 4K HDR display, built-in Android TV, and Dolby Vision.', 120000, 'electronics', 'screen4.jpg'),
(22, 'Luxury Cotton Bedspread', 'Soft and luxurious cotton bedspread with elegant design and premium stitching.', 12000, 'beauty', 'bed1.jpg'),
(23, 'Silk Satin Bed Sheets', 'Set of premium silk satin bed sheets offering comfort and a smooth texture.', 18000, 'beauty', 'bed2.jpg'),
(24, 'Floral Duvet Cover', 'Floral-patterned duvet cover made from high-quality microfiber for year-round comfort.', 9500, 'beauty', 'bed3.jpg'),
(25, 'Orthopedic Memory Foam Pillow', 'Ergonomically designed memory foam pillow for neck and spine support.', 7500, 'beauty', 'bed4.jpeg'),
(26, 'Egyptian Cotton Bedding Set', 'Deluxe Egyptian cotton bedding set with superior softness and durability.', 22000, 'beauty', 'bed5.jpg'),
(27, 'Weighted Blanket', 'Cozy weighted blanket designed for improved sleep and stress relief.', 14000, 'beauty', 'bed6.jpg'),
(28, 'Quilted Comforter', 'Warm and breathable quilted comforter with hypoallergenic filling.', 13000, 'beauty', 'bed7.jpg'),
(29, 'Feather Down Pillow Set', 'Set of two feather down pillows for ultimate comfort and luxurious feel.', 9000, 'beauty', 'bed8.jpg'),
(30, 'Velvet Bedspread', 'Elegant velvet bedspread offering a chic look with plush texture.', 16000, 'beauty', 'bed9.jpg'),
(31, 'Microfiber Sheet Set', 'Durable and soft microfiber sheet set, wrinkle-resistant and easy to care for.', 8000, 'beauty', 'bed10.jpg'),
(32, 'Nike Air Max 270', 'Stylish and comfortable running shoes with a large air unit in the heel for superior cushioning.', 15000, 'shoes', 's1.jpg'),
(33, 'Adidas Ultraboost 22', 'High-performance running shoes with responsive Boost cushioning for added energy return.', 18000, 'shoes', 's2.jpg'),
(34, 'Puma RS-X3', 'Bold and retro design with lightweight cushioning and durable outsole.', 12000, 'shoes', 's3.jpg'),
(35, 'New Balance 990v5', 'Classic running shoes with premium materials and exceptional comfort.', 20000, 'shoes', 's4.jpg'),
(36, 'Reebok Nano X1', 'Versatile training shoes designed for cross-training, weightlifting, and running.', 14000, 'shoes', 's5.jpg'),
(37, 'Nike Air Force 1', 'Iconic low-top sneakers with a sleek leather upper and Air cushioning for all-day comfort.', 13000, 'shoes', 's1.jpg'),
(38, 'Adidas Yeezy Boost 350', 'Popular sneaker with a unique design and Boost midsole for superior comfort.', 25000, 'shoes', 's2.jpg'),
(39, 'Vans Old Skool', 'Classic skate shoes with durable canvas upper and rubber waffle outsole.', 9000, 'shoes', 's3.jpg'),
(40, 'Converse Chuck Taylor All Star', 'Timeless high-top sneakers with a canvas upper and rubber sole.', 8500, 'shoes', 's4.jpg'),
(41, 'Asics Gel-Kayano 28', 'Stability running shoes with Gel technology for shock absorption and comfort.', 17000, 'shoes', 's5.jpg'),
(42, 'Luxury Bathrobe', 'Soft and absorbent luxury bathrobe made from 100% cotton for ultimate comfort.', 5000, 'clothes', 'bath1.jpg'),
(43, 'Silk Kimono Robe', 'Elegant silk kimono-style robe with a lightweight and breathable design.', 8500, 'clothes', 'bath2.jpg'),
(44, 'Plush Terry Bathrobe', 'Ultra-plush terry cloth bathrobe, perfect for lounging after a relaxing bath.', 6000, 'clothes', 'bath3.jpg'),
(45, 'Hooded Bathrobe', 'Cozy hooded bathrobe made from premium cotton, ideal for post-shower relaxation.', 5500, 'clothes', 'bath4.jpg'),
(46, 'Organic Cotton Robe', 'Eco-friendly bathrobe made from organic cotton with a soft and gentle texture.', 7000, 'clothes', 'bath5.jpg'),
(47, 'Lightweight Waffle Robe', 'Lightweight and breathable waffle robe, great for use at home or in the spa.', 4000, 'clothes', 'bath1.jpg'),
(48, 'Classic Fleece Bathrobe', 'Warm and comfortable fleece bathrobe with deep pockets and a tie waist.', 4800, 'clothes', 'bath2.jpg'),
(49, 'Velour Bathrobe', 'Luxurious velour bathrobe that combines comfort with a sophisticated look.', 9000, 'clothes', 'bath3.jpg'),
(50, 'Microfiber Spa Robe', 'Quick-drying microfiber robe, ideal for spa days or relaxing at home.', 4500, 'clothes', 'bath4.jpg'),
(51, 'Cotton Blend Bathrobe', 'Durable cotton blend bathrobe with a soft inner lining for added warmth.', 6500, 'clothes', 'bath5.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
