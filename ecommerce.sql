-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2022 at 11:13 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `stitching` text NOT NULL,
  `size` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `ip_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `stitching`, `size`, `quantity`, `ip_address`) VALUES
(2, 23, 'no', 'L', 1, '103.149.126.83'),
(3, 23, 'no', 'XS', 2, '103.149.126.83'),
(5, 24, 'no', 'M', 1, '106.215.181.186'),
(6, 22, 'no', 'XS', 1, '106.209.171.47'),
(7, 29, 'no', 'S', 1, '103.134.111.213'),
(8, 23, 'no', 'S', 1, '103.134.111.213'),
(10, 27, 'no', 'XS', 1, '49.34.168.214'),
(12, 42, 'no', ' 3XL', 1, '49.36.119.70'),
(14, 37, 'no', ' 2XL', 1, '103.226.147.218'),
(15, 26, 'no', 'S', 1, '103.226.147.218'),
(16, 26, 'yes', 'Custom', 1, '101.0.41.112'),
(17, 26, 'no', 'S', 5, '101.0.41.112'),
(18, 24, 'no', 'M', 1, '75.157.195.170'),
(19, 50, 'no', 'S', 1, '103.29.157.1'),
(20, 24, 'no', 'S', 1, '165.225.124.225'),
(21, 28, 'no', '2XL', 1, '136.226.251.2');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `featured_image` varchar(500) NOT NULL,
  `visibility` varchar(50) NOT NULL,
  `parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `title`, `slug`, `description`, `featured_image`, `visibility`, `parent`) VALUES
(7, 'Be You', 'collection-two', 'Be You', '1639566323_c9f4ca11d2298a95be15.jpg', 'visible', 0),
(8, 'Melange', 'melange', 'Melange', '1645882362_bd0b646beb59be702d38.jpeg', 'visible', 0),
(10, 'Heyy There Sunshine', 'heyy-there-sunshine', '', '1652092955_49b83c0c4af4f89e6a43.jpeg', 'visible', 0),
(11, 'Festive Edit', 'festive-edit', 'Festive Edit', '1663100014_5bb5d886b484e9d7bec5.jpg', 'visible', 0),
(12, 'All Designs', 'all-designs', 'All Designs', '1663099980_860e81c34ef1cda5841f.jpg', 'hidden', 0);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `code` varchar(500) NOT NULL,
  `value` decimal(10,2) NOT NULL,
  `start_date` text NOT NULL,
  `end_date` text NOT NULL,
  `type` text NOT NULL,
  `on_off` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `title`, `code`, `value`, `start_date`, `end_date`, `type`, `on_off`) VALUES
(8, 'FREE SHIPPING', 'FREESHIPPING', '0.00', '08-12-2021', '31-01-2022', 'free_shipping', 'on'),
(9, '10% OFF', 'TENPERCENTOFF', '10.00', '08-12-2021', '31-01-2022', 'percentage', 'off'),
(10, 'Rs. 500 Off', 'FIRST500', '500.00', '08-12-2021', '31-01-2022', 'flat', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_usage`
--

CREATE TABLE `coupon_usage` (
  `id` int(255) NOT NULL,
  `customer_id` int(255) NOT NULL,
  `coupon_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupon_usage`
--

INSERT INTO `coupon_usage` (`id`, `customer_id`, `coupon_code`) VALUES
(0, 8, 'FREESHIPPING');

-- --------------------------------------------------------

--
-- Table structure for table `email_signups`
--

CREATE TABLE `email_signups` (
  `id` int(255) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_signups`
--

INSERT INTO `email_signups` (`id`, `email`) VALUES
(2, 'ratneshkarbhari18@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `public_order_id` text NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `currency` text NOT NULL,
  `order_details` longtext NOT NULL,
  `customer_details` longtext NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_details` longtext NOT NULL,
  `address` longtext NOT NULL,
  `date` text NOT NULL,
  `customer_id` int(11) NOT NULL,
  `awb_no` text NOT NULL,
  `shipped_by` text NOT NULL,
  `country` text NOT NULL,
  `state` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `public_order_id`, `amount_paid`, `currency`, `order_details`, `customer_details`, `status`, `status_details`, `address`, `date`, `customer_id`, `awb_no`, `shipped_by`, `country`, `state`) VALUES
(5, '618cf8f8419fa', '163.20', 'INR', '[{\"id\":\"19\",\"product_id\":\"11\",\"stitching\":\"no\",\"size\":\"S\",\"quantity\":\"1\",\"ip_address\":\"::1\"},{\"id\":\"20\",\"product_id\":\"14\",\"stitching\":\"no\",\"size\":\"S\",\"quantity\":\"4\",\"ip_address\":\"::1\"},{\"id\":\"21\",\"product_id\":\"14\",\"stitching\":\"yes\",\"size\":\"S\",\"quantity\":\"2\",\"ip_address\":\"::1\"},{\"id\":\"22\",\"product_id\":\"14\",\"stitching\":\"no\",\"size\":\"M\",\"quantity\":\"1\",\"ip_address\":\"::1\"}]', '{\"first_name\":\"Ratnesh\",\"last_name\":\"Karbhari\",\"email\":\"ratneshkarbhari18@gmail.com\",\"country\":\"India\"}', 'shipped', '', '80/2220, Kannamwar Nagar 2,\r\nVikrholi East, Mumbai', '2021-09-21', 8, '', '', '', ''),
(6, '61ade729b67c9', '11.20', 'INR', '[{\"id\":\"27\",\"product_id\":\"16\",\"stitching\":\"no\",\"size\":\"S\",\"quantity\":\"1\",\"ip_address\":\"::1\"}]', '{\"first_name\":\"Ratnesh\",\"last_name\":\"Karbhari\",\"email\":\"ratneshkarbhari18@gmail.com\",\"country\":\"India\",\"state\":\"Maharashtra\",\"pincode\":\"400083\"}', 'created', '', '80/2220, Kannamwar Nagar 2,\r\nVikrholi East, Mumbai', '2021-09-24', 8, '', '', '', ''),
(8, '61c17a2cc5091', '1.60', 'INR', '[]', '{\"uid\":\"8\",\"first_name\":\"Ratnesh\",\"last_name\":\"Karbhari\",\"email\":\"ratneshkarbhari18@gmail.com\",\"country\":\"India\",\"state\":\"Maharashtra\",\"pincode\":\"400083\"}', 'created', '', '80/2220, Kannamwar Nagar 2,\r\nVikrholi East, Mumbai', '2021-12-22', 8, '', '', 'India', 'Maharashtra'),
(9, '61dfe743b99cd', '260.00', 'INR', '{\"id\":\"22\",\"title\":\"Blue Bella \",\"slug\":\"blue-bella-drape-skirt-and-blouse\",\"description\":\"<p>This deep blue drape dress is a classic!<br \\/>\\r\\nMade of a light-weight satin silk,  the gorgeous drape of the skirt accentuates your curves. It is designed to be worn over your hips and features a slit in the front. Paired with a collared backless blouse, this piece is flattering for any body type. <\\/p>\\r\\n\\r\\n<p><strong>Fabric Details<\\/strong><br \\/>\\r\\nBlouse - Heavy Satin<br \\/>\\r\\nSkirt - Heavy Crepe<\\/p>\\r\\n\",\"price\":\"10.00\",\"sale_price\":\"10.00\",\"featured_image\":\"1639549763_78e87ddf7b600f460f2e.jpg\",\"gallery_images\":\"1639549943_1c94dc838834c8e7a01f.jpg,1639549943_21145c85e34db468052b.jpg,1639549943_ac46c571324221883bc5.jpg,1639549943_0f51a720978c6d8d956d.jpg\",\"stock_count\":\"80\",\"featured\":\"yes\",\"visibility\":\"visible\",\"sizes\":\"XS,S,M,L,XL,2XL\",\"sku\":\"BY01\",\"weight\":\"1000\",\"size\":\"s\",\"quantity\":\"1\"}', '{\"uid\":\"10\",\"first_name\":\"Ricka \",\"last_name\":\"Gauba\",\"email\":\"ricka_gauba@yahoo.co.in\",\"country\":\"India\",\"state\":\"Maharashtra\",\"pincode\":\"401107\"}', 'shipped', 'Your order is shipped. tracking No. is ___', '703, Gaurav woods, building no. 4, Phase 1\r\nbeverly park, Kanakia', '2022-01-04', 10, '', '', 'India', 'Maharashtra');

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

CREATE TABLE `popups` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `image` varchar(500) NOT NULL,
  `link` text NOT NULL,
  `trigger_timeout` text NOT NULL,
  `youtube_embed_code` text NOT NULL,
  `visible` text NOT NULL,
  `has_form` text NOT NULL,
  `form_fields` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `popups`
--

INSERT INTO `popups` (`id`, `title`, `image`, `link`, `trigger_timeout`, `youtube_embed_code`, `visible`, `has_form`, `form_fields`) VALUES
(13, '', '1641402878_e0b181b9b060ce1766c2.png', '', '5', '', 'yes', 'no', 'full_name,email');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `featured_image` varchar(500) NOT NULL,
  `gallery_images` longtext NOT NULL,
  `stock_count` int(11) NOT NULL,
  `featured` varchar(100) NOT NULL,
  `visibility` varchar(50) NOT NULL,
  `sizes` text NOT NULL,
  `sku` text NOT NULL,
  `weight` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `price`, `sale_price`, `featured_image`, `gallery_images`, `stock_count`, `featured`, `visibility`, `sizes`, `sku`, `weight`) VALUES
(22, 'Blue Bella ', 'holichic-indian-clothing-drapey-dress', '<p>Looking for a simple indo-western emsemble? This deep blue satin drape dress is a classic!<br />\r\nMade of a light-weight satin silk, &nbsp;the gorgeous drape of the skirt accentuates your curves. It is designed to be worn over your hips and features a slit in the front. Paired with a collared backless blouse, this piece is flattering for any body type.&nbsp;</p>\r\n\r\n<p><strong>Fabric Details</strong><br />\r\nBlouse - Heavy Satin<br />\r\nSkirt - Heavy Crepe</p>\r\n', '6700.00', '6700.00', '1639549763_78e87ddf7b600f460f2e.jpg', '1639549943_1c94dc838834c8e7a01f.jpg,1639549943_21145c85e34db468052b.jpg,1639549943_ac46c571324221883bc5.jpg,1639549943_0f51a720978c6d8d956d.jpg', 80, 'yes', 'visible', 'XS,S,M,L,XL,2XL', 'BY01', '1000'),
(25, 'Pink Wish ', 'pink-wish-pleated-skirt-with-blouse', '<p>No South Asian function is complete without a pink dress. This one features a sunray pleated full skirt, and hand quilted blouse with layered fan sleeves. Pair it with your favorite heels and you&#39;re ready to go.</p>\r\n\r\n<p><strong>Fabric Details</strong><br />\r\nBlouse - Heavy Satin<br />\r\nSkirt - Heavy Satin</p>\r\n', '13500.00', '0.00', '1639550726_1338ef79d4c581581a1b.jpg', '1639550726_23b2cd5f1292ce6bb3fe.jpg,1639550726_4dd4530ae271933f61bc.jpg,1639550726_8815a72c3e7ef1fb4ddb.jpg,1639550726_ef699e745809c8056eeb.jpg', 80, 'yes', 'visible', 'XS,S,M,L,XL,2XL', 'BY04', '2000'),
(26, 'Angelic Ombre Lehenga ', 'angelic-ombre-lehenga', '<p>This beautiful and delicate set features a modern and ombre skirt of 4 hues, complimented with a contemporary drape attached silk blouse. This dress will be your go-to for any Asian party.&nbsp;</p>\r\n\r\n<p><strong>Fabric Details</strong><br />\r\nBlouse - Bamberg Silk<br />\r\nSkirt - Georgette</p>\r\n', '11900.00', '11900.00', '1639550912_39391263348f7c09c5dc.jpg', '1639550912_a299aff6c39e32433e96.jpg,1639550912_a6d28a8c89dd71822ce3.jpg,1639550912_598aeee26ed9fc045f8c.jpg', 80, 'yes', 'visible', 'XS,S,M,L,XL,2XL', 'BY05', '2000'),
(27, 'Desi Diva Multipanel Lehenga', 'desi-diva-multipanel-lehenga', '<p>This strikingly whimsical lehenga is a flattering choice for a variety of body types. Complimented with a blouse cinched with a beautiful bow blouse adds a fun and flirty element to the ensemble.&nbsp;</p>\r\n\r\n<p><strong>Fabric Details</strong><br />\r\nBlouse - Satin Silk<br />\r\nSkirt - Satin Silk</p>\r\n', '12950.00', '0.00', '1639550998_f3dfbdaeed1c174b2126.jpg', '1639550998_a27a86154a50612a6985.jpg,1639550998_6efb046ce2fb8f1326a6.jpg,1639550998_fc89091de6737494651a.jpg,1639550998_a8bd895d9999e124e05c.jpg,1639550998_d901707d191c8b463470.jpg', 80, 'no', 'visible', 'XS,S,M,L,XL,2XL', 'BY06', '3000'),
(28, 'Urban Vogue ', 'urban-vogue-pleated-pants-emsemble', '<p>We recommend this ultra chic piece for the woman who wants to look feminine and stylish. &nbsp;These box pleated pants are being stylish and comfortable, while the pearl embroidery on the sleeves adds an elegant and luxurious addition to the outfit.</p>\r\n\r\n<p><strong>Fabric Details</strong><br />\r\nBlouse - Heavy Satin<br />\r\nPants - Heavy Satin<br />\r\nEmbroidery - Pearl</p>\r\n', '12600.00', '0.00', '1639551126_ef5675b0aa12a2d715dc.jpg', '1639551126_ed0266c7705d34af0471.jpg,1639551126_e1d82d912c603bf74995.jpg,1639551126_0f4c7b33bd758c38845d.jpg', 80, 'yes', 'visible', 'XS,S,M,L,XL,2XL', 'BY07', '2000'),
(29, 'Stavaganza Bottle Green Lehenga', 'stavaganza-bottle-green-lehenga', '<p>This is every girl&rsquo;s dream dress!&nbsp;<br />\r\nThis elegant and timeless bottle green dress features a fitted skirt with a sweeping pleated hem. It hugs your curves in all the right places. From the subtle detailing to the romantic neckline, this dress is a delight for your eyes. The delicate mirror embroidery is a tribute to the craftsmanship that is shown in every stitch.<br />\r\nIt&rsquo;s not a stretch to say that the dress is a reflection of the beauty that surrounds you.</p>\r\n\r\n<p><strong>Fabric Details</strong><br />\r\nBlouse - Heavy Satin&nbsp;<br />\r\nSkirt - Heavy Satin<br />\r\nEmbroidery - Mirror work, Zari&nbsp;<br />\r\n&nbsp;</p>\r\n', '22000.00', '0.00', '1639551454_77f74e7ad6537c189e6a.jpg', '1639551454_4bee61e7f918cbf79190.jpg,1639551454_20ad7c05b60c839923fe.jpg,1639551454_2e5995c104667e854fd1.jpg', 80, 'yes', 'visible', 'XS,S,M,L,XL,2XL', 'BY08', '3000'),
(31, 'Love And Whim', 'mother-of-the-bride-pant-suits', '<p>A bend of traditiional and modern, this outfit is styled with delicate and intricate lattice pattern on the sleeves. The black cigarette pant&nbsp;is slim-fitting and sleek.</p>\r\n\r\n<p><strong>Fabric details:</strong></p>\r\n\r\n<p>Kurta - Heavy Satin</p>\r\n\r\n<p>Pants - Brocade</p>\r\n', '6999.00', '6999.00', '1645793129_2282720c953aba71d588.jpg', '1645793129_5a8273b8e34369cf0381.jpg,1645793129_1750713fe6c7eb6bd7cc.jpg,1645793129_0750fc7be00057018859.jpg', 80, 'no', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'RMG0023', '1000'),
(32, 'Dahlia				', 'dahlia', '<p>A traditional festive faabric with a modern twist. This high-low Bandhej fusion dress is a festive wardrobe staple for any woman. Made of quality, breathable cotton, this dress will keep you cool and comfortable. The Bandhej dress is a vintage style, floral dress with a side zipper. The dress has aa flared hem and an empire waist. The neckline is adorned with handmade buttons. The design is flattering for all body types and will make you feel confident and beautiful.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Fabric details:</strong></p>\r\n\r\n<p>Kurta - Cotton</p>\r\n\r\n<p>Pallazo - Mul</p>\r\n', '5950.00', '5950.00', '1645793407_03ac4e5a11fd3fb2b023.jpg', '1645793407_c54d97aa46431b8ff16e.jpg,1645793407_42391188c6b8aa875eed.jpg,1645793407_eaa699318c33c0127578.jpg', 80, 'no', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'RMG0026', '1000'),
(33, 'Arabella				', 'arabella', '<p>This piece is just not aesthetically pleasing but also offers a great deal of comfort.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Fabric details:</strong></p>\r\n\r\n<p>Top - Cotton</p>\r\n\r\n<p>Bottom - Georgette</p>\r\n', '7999.00', '7999.00', '1645794329_fa8979baa8646735eaf0.jpg', '1645794329_34abdbe953a1274faacf.jpg,1645794329_d66991bb0071fb2a67d9.jpg,1645794329_92441610430b58f11877.jpg,1645794329_9c8a2b3322a53a26c55b.jpg,1645794329_fd247ed5ae480b8becf4.jpg', 80, 'no', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'RMG0024', '1000'),
(34, 'Honey Dew				', 'frock-suit-with-salwar', '<p>You&#39;re going to be a head turner at the next Asian party with this stunning fusion of traditional and contemporary ensemble. The top has a high-low hem, keeping it simple and chic with these lattice balloon sleeves.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Fabric Details:</strong><br />\r\nTop - Heavy Satin<br />\r\nBottom - Georgette</p>\r\n', '6999.00', '0.00', '1645794928_d43339a2bdfd2acc25c4.jpg', '1645794928_e2367f6b4d3befb7fe56.jpg,1645794928_2129f34a35226359d90b.jpg', 80, 'no', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'RMG0025', '1000'),
(35, 'Sarah Moon				', 'sarah-moon', '<p>Is it sassy, classy, or a little bit of both?<br />\r\nLook effortlessly chic in this serene, lightweight Ombr&eacute; Sequin shirt and drape skirt. The sleeves and hem are beautifully detailed with shell embroidered cuffs and drawstring fastening.<br />\r\n<br />\r\n<strong>Fabric Details:</strong><br />\r\nShirt - Sequin Georgette<br />\r\nSkirt - Satin Silk<br />\r\nEmbriodery - Shells and beads</p>\r\n', '7699.00', '7699.00', '1645795185_dc692b1be79c639dc5b9.jpg', '1645795185_07def61e4ba0558ce145.jpg,1645795185_1d82520be1b58e25f0cb.jpg', 80, 'no', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'RMG0039', '2000'),
(36, 'Plum ', 'women-sherwani-pakistani-straight-pants', '<p>You can never go wrong with a Classic!<br />\r\nThe sophisticated, but timeless, outfit for a woman is a sherwani and straight pants. Made out of pure cotton , this outfit is appropriate for both a traditional Indian wedding and a formal event.<br />\r\nThe long-sleeved sherwani is adorned with intricate weave pleat detailing that accentuates the beauty of this classic piece. Worn with a matching straight pant.<br />\r\n<br />\r\n<strong>Fabric Details :</strong><br />\r\nTop - Cotton<br />\r\nBottom - Cotton blend</p>\r\n', '6999.00', '0.00', '1645795711_11b1ee3b17066799ce26.jpg', '1645795711_64dc4ae9fd3e33e951da.jpg,1645795711_55ea6e33774de09f9c2a.jpg,1645795711_8f5104f9c151bed51a8b.jpg', 1, 'no', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'RMG0035', '1000'),
(37, 'Dreeza', 'satin-drape-dress', '<p>This satin dhoti skirt is the perfect combination of form and function. Made of a lightweight silk fabric, it snugs at the waist for a comfortable fit, yet is roomy and easy to move around in. The blouse neckline and back are cut to show off your shoulders and back. Layered with a bold and timeless animal print floor length jacket, this fusion ethnic wear is a perfect piece to cover up your assets without feeling like you&#39;re giving up your style.</p>\r\n', '7350.00', '0.00', '1645860160_cccd91050b34c2bcb9f1.jpg', '1645860160_9549b388b369960fc35f.jpg,1645860160_59d482d7fb57467617bd.jpg,1645860160_5c90d6808e0753d6d39d.jpg,1645860160_c9208104663fd79bfaf6.jpg,1645860160_2c978849bc2b11f987e0.jpg', 80, 'yes', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'BY02', '1000'),
(40, 'Dash of Dazzle				', 'drape-skirt-with-crop-top-fusion-wear-for-women', '<p>A daring and luxurious fashion statement, this shimmer drape skirt makes for a statement piece for any wardrobe. Paired with a sequin blouse with an alluring neckline, this flowing, crinkle-free ensemble accentuates your body and will give a glamorous look.<br />\r\n<br />\r\n<strong>Fabric details:</strong><br />\r\nBlouse - Sequin<br />\r\nSkirt - Shimmer Lycra<br />\r\n<br />\r\n&nbsp;</p>\r\n', '9499.00', '9499.00', '1645896914_3be6fe8fd16db9cd14ba.jpg', '1645896914_c3647bed0050b8b535dc.jpg,1645896914_e571a4f479a1a402cdd9.jpg,1645896914_f542c0871af5e6b021ab.jpg', 80, 'no', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'RMG0042', '1000'),
(41, 'Petal to the Metal				', 'petal-to-the-metal', '<p>This dress features a cowl neckline adorned with layers of gold metal chain. The umbrella skirt provides a comfortable, flowing fit.The cowl neckline is both stylish and flattering, as it draws attention to the wearer&#39;s neck and face.<br />\r\n<br />\r\n<strong>Fabric details</strong><br />\r\nTop - Lycra<br />\r\nBottom - Lycra<br />\r\n<br />\r\n&nbsp;</p>\r\n', '8500.00', '8500.00', '1645898343_8f285336bb7ea194000d.jpg', '1645898343_654d9a9d727e6e8d2552.jpg,1645898343_819a1f7bb5ddb3c6b6f9.jpg,1645898343_6dd6fbec0aa0c8ee3a45.jpg,1645898343_0fb0609fce45c4d529c0.jpg', 80, 'yes', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'RMG0044', '1000'),
(42, 'Aarohi				', 'patiala-suits-uk-patiala-salwar-suit-patiala-suit-ka-design', '<p>This bright and beautiful sequin embellished dress is stunning for spring-summer festivities.<br />\r\nWith an easy pull-on drape pants, we know you will love the ease and versitality of this dress. It also features a chain shoulder straps and floral latkans on the back for a cute and whimsical vIbe.<br />\r\n<br />\r\n<strong>Fabric details:</strong><br />\r\nKurta - Net<br />\r\nBottom - Satin Silk<br />\r\nDupatta - Georgette<br />\r\nEmbroidery - Sequins<br />\r\n&nbsp;</p>\r\n', '9940.00', '0.00', '1645899576_988cb8b12a27481fbba1.jpg', '1645899576_7c3d573042e0616e1a3d.jpg,1645899576_eb64bba38a8b580147c4.jpg,1645899576_1369776b7b04e03e6159.jpg,1645899576_9ab4688b2eac6afaab8c.jpg', 80, 'yes', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'RMG0049', '2000'),
(43, 'Dew', 'dew', '<p>Drape is a word that is synonymous with flowing, and this shirt dress is designed to move with you. This dress is long and loose, but not so much that it hangs on you. It&#39;s designed to drape in the front and back, and be fitted in at the waist.</p>\r\n\r\n<p>Fabric Details:</p>\r\n\r\n<p>Dress - Cotton Satin&nbsp;</p>\r\n', '5950.00', '5950.00', '1651597911_e57b05a914ad4777b7ea.jpg', '1651597911_66549a871e054c169a0e.jpg,1651597911_13c8f0cc21edd5ae8324.jpg', 80, 'no', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'Y00G0022', '1000'),
(44, 'Forget Me Not', 'forget-me-not', '<p>This dapper drape dress is a beautifully draped, loosefitting dress with a high neckline and a modest kneelength hemline.It is versatile and has a relaxed fit.</p>\r\n\r\n<p>Fabric Details:</p>\r\n\r\n<p>Dress - Cotton Satin&nbsp;</p>\r\n', '5250.00', '5250.00', '1651598073_3b8003802e22da4469cf.jpg', '1651598073_38d7cb6756841e18a11e.jpg', 80, 'no', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'Y00G0023', '1000'),
(45, 'Summer Time', 'summer-time', '<p>This is a one-piece dress with a sweetheart neckline and cutout detail at the waist. The dress drapes around the body, and the fabric is lightweight and&nbsp;comfortable.</p>\r\n\r\n<p>Fabric Details:</p>\r\n\r\n<p>Dress - Cotton Satin&nbsp;</p>\r\n', '6299.00', '6299.00', '1651598238_5d247f797bb07742aa47.jpg', '1651598238_28d04f1fabb9337bde83.jpg,1651598238_6b2b3a53debdf9802a4e.jpg', 80, 'no', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'Y00G0024', '1000'),
(46, 'Sweet Wine', 'sweet-wine', '<p>When the weather is hot, you need to find something that is cool and light. This summer dress is perfect for a day out in the sun. It features a sleeveless design with overlapping front layers to be tied at the waist.</p>\r\n\r\n<p>Fabric Details:</p>\r\n\r\n<p>Dress - Cotton Satin&nbsp;</p>\r\n', '4550.00', '4550.00', '1651598362_cb0c20bb64ada60666df.jpg', '1651598362_72d71ed1141cf37f5fdd.jpg,1651598362_277bc24d6a66936bdd27.jpg', 80, 'no', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'Y00G0025', '1000'),
(47, 'Oriental Love', 'oriental-love', '<p>Perfect outfit for those balmy summer days, this dress features a V-neckline, pleated drape at waist and an ankle hemline. The slimfit drape dress is made of a soft and lightweight cotton satin that drapes beautifully on the front and back.</p>\r\n\r\n<p>Fabric Details:</p>\r\n\r\n<p>Dress - Cotton Satin&nbsp;</p>\r\n', '6999.00', '6999.00', '1651598526_70e48c53ab300f575677.jpg', '1651598526_ad5c28c8fd11384f393e.jpg,1651598526_bbe4cfe01dc3a887d307.jpg,1651598526_e79e40ce536a8aaea129.jpg', 80, 'no', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'Y00G0026', '1000'),
(48, 'I Lilac You', 'i-lilac-you', '<p>This long, loose dress drapes the body in turkish lycra, a garment to be worn with all the confidence in the world. With one shoulder drape, it has a sleeve that fall gently from the shoulder.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Fabric Details:</p>\r\n\r\n<p>Dress - Turkish Lycra</p>\r\n', '6650.00', '6650.00', '1651598707_9a9afcd0d25290cf8361.jpg', '1651598707_22043f727531781fdac7.jpg,1651598707_26a33706b81af95d9c13.jpg', 80, 'no', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'Y00G0027', '1000'),
(49, 'It\'s A Girl', 'its-a-girl', '<p>A light, breezy dress that will keep you cool in the summer heat. It has a vneckline and drapes that ties the back of the neck and fans into kaftan sleeves on the side.</p>\r\n\r\n<p>Fabric Details:</p>\r\n\r\n<p>Dress - Turkish Lycra</p>\r\n', '6650.00', '6650.00', '1651598976_15af67aec49e995acd9b.jpg', '1651598976_027bd3aefa8fec435442.jpg,1651598976_e666429f35e09d5f92bb.jpg,1651598976_59c3ac55fa53f0a0d438.jpg', 80, 'no', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'Y00G0028', '1000'),
(50, 'Rose Blossoms', 'rose-blossoms', '<p>We all know the importance of looking good, but we also know that comfort is key. This number offers the best of both worlds. It features an animal print skirt with neon accents. The tailored waistband sits on the natural waistline and accentuated the midriff. The blouse is a cute and feminine piece that will be a go-to in your wardrobe. It also features rose petal-like falling ruffle sleeves for a fun and whimsical look.</p>\r\n\r\n<p><strong>Fabric Details</strong><br />\r\nBlouse - Heavy Satin<br />\r\nSkirt - Georgette<br />\r\n&nbsp;</p>\r\n', '9800.00', '9800.00', '1663096660_e92f755d71a3a99c6d04.jpg', '1663096660_abe8e79adb016155cc0a.jpg,1663096660_ec678141d774c59e63a3.jpg,1663096660_4ea27c42ec935bfcb548.jpg,1663096660_6aec6a95685374916cfc.jpg,1663096660_b12f1b30e4593900535e.jpg', 80, 'no', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'BY03', '1000'),
(51, 'Gulab', 'gulab', '<p>With the drape of a saree and flair of a lehenga, this saree is a great pick for festivals such as Diwali, Durga Puja and Holi. Paired with a tie-dye blouse, this ensemble is an easy way to update your wardrobe without going too bold.<br />\r\n<br />\r\n<strong>Fabric Details</strong><br />\r\nSaree - Georgette<br />\r\nBlouse - Georgette</p>\r\n', '11200.00', '0.00', '1663099931_32b24446de61583295c3.jpg', '1663099931_b4717524dd92d26eb63b.jpg,1663099931_c8fdb060bf406fc023a5.jpg,1663099931_aa62abca673a060f6518.jpg,1663099931_321ce6c843798c9fdc1f.jpg,1663099931_b089e5e4b3ef05acf075.jpg', 80, 'yes', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'FEKL035', '1000'),
(52, 'Permelia', 'permelia-drape-saree', '<p>We couldn&rsquo;t find a better way to express our love for drapes.<br />\r\nInspired by a traditional Indian saree,this piece is the perfect blend of simplicity and elegance, with a contemporary twist.<br />\r\n<br />\r\n<strong>Fabric Details</strong><br />\r\nSaree - Net<br />\r\nBlouse - Organza</p>\r\n', '13300.00', '0.00', '1663100377_4e280f0061a2a6b48909.jpg', '1663100377_30db50c5af2eca19f515.jpg,1663100377_edc80e3f3ba4a447472f.jpg,1663100377_39847e2f602457e306e1.jpg,1663100377_2f5a6f07485ce58da734.jpg', 80, 'yes', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'FEKL036', '1000'),
(53, 'Aura', 'aura-lehenga', '<p>A pure, delicate, and refreshing ensemble, this teal lehenga with black detailing is a stunning combination of style and beauty, while staying traditional. The pearl embroidery adds a touch of luxurious and elegance to this traditional outfit.<br />\r\n<br />\r\n<strong>Fabric Details</strong><br />\r\nLehenga - Georgette<br />\r\nBlouse - Velvet<br />\r\nDupatta - Georgette<br />\r\nEmbroidery - Pearl</p>\r\n', '17500.00', '17500.00', '1663100585_f80984f0e75261292724.jpg', '1663100585_3a60ca82a4711ffab9de.jpg,1663100585_9954ff3d188ec3a307a7.jpg,1663100585_c01f598bc3ac19d02730.jpg,1663100585_4c41b747e82aeaad044d.jpg,1663100585_6f4f66822b56f1022188.jpg', 80, 'yes', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'FEKL037', '2000'),
(54, 'Eva', 'eva-churidar-suit', '<p>One of the most popular options in South Asian weddings, this timeless outfit is a great pick for the Indian festivities this season. With embroidery of resham, sequin and zardosi, this outfit is an homage to our traditions.<br />\r\n<br />\r\n<strong>Fabric Details</strong><br />\r\nKurta - Habutai Silk<br />\r\nChuridar - Habutai Silk<br />\r\nDupatta - Habutai Silk<br />\r\nEmbroidery - Resham, Sequin, Zardosi</p>\r\n', '19600.00', '19600.00', '1663100840_b8369ec92b0ddb8537d6.jpg', '1663100840_12e49370d1273f04e7a2.jpg,1663100840_a3496dddfbac594664b1.jpg,1663100840_e4124f1e83017fd17592.jpg', 80, 'yes', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'FEKL038', '2000'),
(55, 'Floral Snow', 'floral-snow-lehenga', '<p>This lehenga is perfect for the girl who is looking for a statement piece for her next South Asian gathering. With hand painted floral motifs on a white canvas, this one-of-a-kind ensemble is sure to be a show stopper.<br />\r\n<br />\r\n<strong>Fabric Details</strong><br />\r\nLehenga - Raw Silk<br />\r\nBlouse - Silk<br />\r\nEmbroidery - Hand Painting, Dori, Sequin</p>\r\n', '25200.00', '0.00', '1663101045_c164623e196f2ba5e69b.jpg', '1663101045_cfc6c5d7d15b28e0d0e0.jpg,1663101045_d49aee3fc192daf68530.jpg,1663101045_bb7314f15d1bc3af5c54.jpg', 80, 'yes', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'FEKL039', '1000'),
(56, 'Regal Affair', 'regal-affair-lehenga', '<p>Inspired by the regal palaces, with chandelier mirror embroidery, this Indian Classic is sure to turn heads.<br />\r\n<br />\r\n<strong>Fabric Details</strong><br />\r\nLehenga - Raw Silk<br />\r\nBlouse - Habutai Silk<br />\r\nDupatta - Georgette<br />\r\nEmbroidery - Resham and mirror</p>\r\n', '24500.00', '24500.00', '1663101316_a93dae5305b863632824.jpg', '1663101316_9119c01a2ca773102e2a.jpg,1663101316_22429c29386ce7d6df7e.jpg,1663101316_208e9e630f18118a22b3.jpg,1663101316_bf711919e495c399a301.jpg', 80, 'yes', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'FEKL040', '2000'),
(57, 'Peri Rosey', 'peri-rosey-lehenga', '<p>The pearl embroidery, the shimmer of sequins, the chic style... When you wear our Peri Rosey Lehenga Set, you&#39;ll be the most beautiful woman in the room.<br />\r\n<br />\r\n<strong>Fabric Details</strong><br />\r\nLehenga - Sequin<br />\r\nBlouse - Habutai Silk<br />\r\nDupatta - Georgette<br />\r\nEmbroidery - Pearl, resham and sequin</p>\r\n', '26600.00', '0.00', '1663101630_bc84accb351b154933a9.jpg', '1663101630_6e119cc67a0ad46f3e45.jpg,1663101630_756605ba8c88a5d9d68b.jpg,1663101630_9e2f1e0646d1bfeb2632.jpg,1663101630_bc3ae0c3058d4fb184a7.jpg', 80, 'yes', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'FEKL041', '4000'),
(58, 'Revella', 'revella-drape-dress', '<p>This drape dress is a beautiful example of the elegant style that Indian fashion is known for. The royal blue color is regal and set off by the intricate hand embroidery in mirror, zardosi, and resham. The drape perfectly accentuates your curves, making you look and feel like a million bucks.<br />\r\n<br />\r\n<strong>Fabric Details</strong><br />\r\nLehenga - Habutai Silk<br />\r\nBlouse - Habutai Silk<br />\r\nEmbroidery - mirror, zardosi, and resham</p>\r\n', '16800.00', '0.00', '1663101772_a31b572d522d9cd6468b.jpg', '1663101772_e15a0b2af7f4f4d0fb17.jpg,1663101772_8bb8ce3b0a86992bc9da.jpg,1663101772_d98161f2d1f80642f262.jpg', 80, 'yes', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'FEKL042', '2000'),
(59, 'Revati', 'revati-suit', '<p>An extension of the regal affair, this outfit is a quintessential classic.<br />\r\nAdorned with mirror embroidery, hints of Pink resham adds a bright sensibility to the ensemble, that can be worn to any occasion from weddings to festivals.<br />\r\n<br />\r\n<strong>Fabric Details</strong><br />\r\nKurta - Raw Silk<br />\r\nPants - Net<br />\r\nDupatta - Net<br />\r\nEmbroidery - Resham and mirror</p>\r\n', '16999.00', '0.00', '1663102056_c4271012c2053a0ac648.jpg', '1663102056_806010888b692f3b625e.jpg,1663102056_5691ff8ae7ff30ad0c4b.jpg,1663102056_2eea47fc6103e7d83ee8.jpg,1663102056_c2c90d7cf0a329c19f75.jpg', 80, 'yes', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'FEKL043', '2000'),
(60, 'Timeless Treasure', 'timeless-treasure-lehenga', '<p>This maroon lehenga choli is apt to make you look your elegant best. The gather skirt is made of fine georgette and has a beautifully embroidered full sleeve blouse with mirror, sequin, glass, zardosi and pearl work all over. The drape dupatta is finished with delicate embroidery edging for an extra touch of elegance.<br />\r\n<br />\r\nFabric Details<br />\r\nLehenga - Georgette<br />\r\nBlouse - Silk<br />\r\nDupatta - Georgette<br />\r\nEmbroidery - mirror, sequin, glass, zardosi and pearl</p>\r\n', '22900.00', '0.00', '1663102162_248aef79dae3368fe945.jpg', '1663102162_da344f769b3e479dea8b.jpg,1663102162_2c8e1b5c759ddc656a95.jpg,1663102162_860ab833a4daec0b8dae.jpg,1663102162_5c64ede7d36d0793d58a.jpg', 80, 'yes', 'visible', 'XS, S, M, L, XL, 2XL, 3XL, 4XL', 'FEKL044', '3000');

-- --------------------------------------------------------

--
-- Table structure for table `product_collection`
--

CREATE TABLE `product_collection` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_collection`
--

INSERT INTO `product_collection` (`id`, `pid`, `cid`) VALUES
(24, 14, 7),
(27, 17, 7),
(29, 15, 7),
(30, 16, 7),
(31, 18, 7),
(32, 19, 7),
(33, 20, 7),
(34, 21, 8),
(45, 23, 7),
(62, 30, 7),
(63, 30, 8),
(79, 24, 7),
(90, 39, 8),
(132, 41, 8),
(133, 41, 12),
(202, 22, 7),
(203, 22, 12),
(206, 29, 7),
(207, 29, 12),
(208, 28, 7),
(209, 28, 12),
(210, 27, 7),
(211, 27, 12),
(212, 26, 7),
(213, 26, 12),
(214, 25, 7),
(215, 25, 12),
(216, 50, 7),
(217, 50, 12),
(218, 37, 7),
(219, 37, 12),
(220, 51, 11),
(221, 51, 12),
(222, 52, 11),
(223, 52, 12),
(224, 53, 11),
(225, 53, 12),
(226, 54, 11),
(227, 54, 12),
(228, 55, 11),
(229, 55, 12),
(230, 56, 11),
(231, 56, 12),
(232, 57, 11),
(233, 57, 12),
(234, 58, 11),
(235, 58, 12),
(236, 60, 11),
(237, 60, 12),
(238, 59, 11),
(239, 59, 12),
(240, 49, 10),
(241, 49, 12),
(242, 48, 10),
(243, 48, 12),
(244, 47, 10),
(245, 47, 12),
(246, 46, 10),
(247, 46, 12),
(248, 45, 10),
(249, 45, 12),
(250, 44, 10),
(251, 44, 12),
(252, 43, 10),
(253, 43, 12),
(256, 31, 8),
(257, 31, 12),
(258, 32, 8),
(259, 32, 12),
(260, 33, 8),
(261, 33, 12),
(262, 34, 8),
(263, 34, 12),
(266, 36, 8),
(267, 36, 12),
(268, 42, 8),
(269, 42, 12),
(270, 35, 8),
(271, 35, 12),
(272, 40, 8),
(273, 40, 12);

-- --------------------------------------------------------

--
-- Table structure for table `product_style`
--

CREATE TABLE `product_style` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_style`
--

INSERT INTO `product_style` (`id`, `pid`, `sid`) VALUES
(17, 14, 8),
(19, 16, 8),
(20, 17, 8),
(21, 18, 8),
(22, 15, 9),
(23, 19, 9),
(26, 20, 9),
(27, 21, 8),
(52, 23, 8),
(70, 30, 8),
(71, 30, 10),
(87, 24, 9),
(98, 39, 8),
(125, 41, 8),
(160, 22, 8),
(162, 29, 9),
(163, 28, 10),
(164, 27, 9),
(165, 26, 9),
(166, 25, 9),
(167, 50, 8),
(168, 50, 9),
(169, 37, 8),
(170, 51, 8),
(171, 52, 8),
(172, 53, 9),
(173, 54, 10),
(174, 55, 9),
(175, 56, 9),
(176, 57, 9),
(177, 58, 8),
(178, 60, 9),
(179, 59, 11),
(180, 49, 8),
(181, 48, 8),
(182, 47, 8),
(183, 46, 8),
(184, 45, 8),
(185, 44, 8),
(186, 43, 8),
(188, 31, 10),
(189, 32, 10),
(190, 33, 10),
(191, 34, 8),
(193, 36, 10),
(194, 42, 8),
(195, 35, 8),
(196, 40, 8);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_classes`
--

CREATE TABLE `shipping_classes` (
  `id` int(255) NOT NULL,
  `title` text NOT NULL,
  `weight_min` text NOT NULL,
  `weight_max` text NOT NULL,
  `domestic_international` text NOT NULL,
  `shipping_charge_express` decimal(10,2) NOT NULL,
  `shipping_charge_regular` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_classes`
--

INSERT INTO `shipping_classes` (`id`, `title`, `weight_min`, `weight_max`, `domestic_international`, `shipping_charge_express`, `shipping_charge_regular`) VALUES
(7, 'Domestic Shipping', '1001', '2000', 'domestic', '0.00', '275.00'),
(8, 'Domestic Shipping', '2001', '3000', 'domestic', '0.00', '350.00'),
(9, 'Domestic Shipping', '3001', '4000', 'domestic', '0.00', '425.00'),
(11, 'Domestic Shipping', '0', '1000', 'domestic', '0.00', '250.00'),
(12, 'Domestic Shipping', '4001', '5000', 'domestic', '0.00', '500.00'),
(13, 'Domestic Shipping', '5001', '6000', 'domestic', '0.00', '575.00'),
(14, 'Domestic Shipping', '6001', '7000', 'domestic', '0.00', '650.00'),
(15, 'Domestic Shipping', '7001', '8000', 'domestic', '0.00', '725.00'),
(16, 'Domestic Shipping', '8001', '9000', 'domestic', '0.00', '800.00'),
(17, 'International Shipping', '0', '1000', 'international', '0.00', '2000.00'),
(18, 'International Shipping', '1001', '2000', 'international', '0.00', '2350.00'),
(19, 'International Shipping', '2001', '3000', 'international', '0.00', '2700.00'),
(20, 'International Shipping', '4001', '5000', 'international', '0.00', '3050.00'),
(21, 'International Shipping', '5001', '6000', 'international', '0.00', '3400.00'),
(22, 'International Shipping', '6001', '7000', 'international', '0.00', '3750.00'),
(23, 'International Shipping', '7001', '8000', 'international', '0.00', '4100.00'),
(24, 'International Shipping', '8001', '9000', 'international', '0.00', '4450.00'),
(25, 'International Shipping', '9001', '10000', 'international', '0.00', '4800.00');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `position` int(255) NOT NULL,
  `desktop_image` varchar(500) NOT NULL,
  `touch_image` varchar(500) NOT NULL,
  `link` text NOT NULL,
  `visibility` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `position`, `desktop_image`, `touch_image`, `link`, `visibility`) VALUES
(21, 3, '1640175627_78655f3b1be928f09840.jpeg', '1640175627_ffcd63dfb28afd305b3b.jpeg', 'https://www.instagram.com/tv/CXn12fzAYIp/?utm_source=ig_web_copy_link', 'yes'),
(22, 2, '1640175647_b1f3b61e4ef1877ccf67.jpeg', '1640175647_ad52da8fb73839146e29.jpeg', 'https://rickagauba.com/collection/collection-two', 'yes'),
(23, 1, '1646477079_cc5b74c78ce6dc17506d.jpg', '1646477079_b2379ceb6f8806fdf105.jpg', 'https://rickagauba.com/collection/melange', 'no'),
(24, 0, '1652074442_d8a94fd155eb5f871592.png', '1652074442_35e18fe4d68a961e575a.png', 'https://rickagauba.com/collection/heyy-there-sunshine', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `styles`
--

CREATE TABLE `styles` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `featured_image` varchar(500) NOT NULL,
  `visibility` varchar(50) NOT NULL,
  `parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `styles`
--

INSERT INTO `styles` (`id`, `title`, `slug`, `description`, `featured_image`, `visibility`, `parent`) VALUES
(8, 'Drape Style', 'drape-skirt', '', '1639566076_18ae65ff3d48dcf7fc1d.jpg', 'visible', 0),
(9, 'Lehenga', 'indian-lehenga', '', '1639566240_1bb7b2ea3d1b5e4bcb0a.jpg', 'visible', 0),
(10, 'Pant Style', 'pant-style-fusion-wear', '', '1639566183_dab4bd44c43cf4af96dd.jpg', 'visible', 0),
(11, 'Straight Cuts', 'straight-cuts', 'Straight Cuts', '1663101898_1530dafcbb79aa00e9af.jpg', 'visible', 0);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `testimonial` text NOT NULL,
  `mugshot` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `testimonial`, `mugshot`) VALUES
(14, 'Charmi Patel', 'I am specially impressed with the care and attention Ricka gave me throughout the making of my outfits. I absolutely loved them. They were exactly the  way I wanted. ', '1641407386_7261d1760fec6c577bff.png'),
(15, 'Arushi', '', '1639565297_0a32a6994bcc6264fcb2.jpg'),
(16, 'Vandana', 'I loved the lehenga. Great job Ricka', '1641407337_65998a395898cf60f852.png'),
(17, 'Chanda', 'OMG, I had so many many compliments on my outfit. Everyone wanted to know where I got it from. ', '1649924679_069d0b65a238577445d3.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `top_strip_messages`
--

CREATE TABLE `top_strip_messages` (
  `id` int(255) NOT NULL,
  `messages` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `top_strip_messages`
--

INSERT INTO `top_strip_messages` (`id`, `messages`) VALUES
(1, 'We Ship Worldwide, Rs. 500 OFF On First Order. Use Coupon Code: FIRST500');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` varchar(500) NOT NULL,
  `mobile_number` text NOT NULL,
  `role` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `address` longtext NOT NULL,
  `country` text NOT NULL,
  `state` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `mobile_number`, `role`, `password`, `address`, `country`, `state`) VALUES
(1, 'Ricka', 'Gauba', 'rickagauba123@gmail.com', '', 'admin', '$2y$10$09Wfap9JQlcKylxYkZAnM.HSLpfnai19OSyVueZtrx9K2k087iUfm', '', '', ''),
(2, 'Ratnesh', 'Karbhari', 'rkarbhari23@gmail.com', '09137976398', 'customer', '$2y$10$4OB/Dod1nyTwA9mb4n07O.ACbUGz5F.vCF/KzV4BKJxDz.H7DdYGa', '', '', ''),
(6, 'Ratnesh', 'Karbhari', 'codesevaco@gmail.com', '', 'customer', '$2y$10$txuFPzWVTc3XbnKbG1MqYe6GcsizREyZGVKjZJModZnJnipDzsLOK', '', '', ''),
(8, 'Ratnesh', 'Karbhari', 'ratneshkarbhari18@gmail.com', '', 'customer', '$2y$10$4OB/Dod1nyTwA9mb4n07O.ACbUGz5F.vCF/KzV4BKJxDz.H7DdYGa', '80/2220, Kannamwar Nagar 2,\r\nVikrholi East, Mumbai', 'India', 'Maharashtra'),
(9, 'Mamata', 'Awarade', 'buddycaprice@gmail.com', '', 'customer', '$2y$10$JQijckJ8tBzkj9lGWJbaeu1rihkKBgdWNzj9BU2m3Ch0ukoALngTy', '', '', ''),
(10, 'Ricka ', 'Gauba', 'ricka_gauba@yahoo.co.in', '', 'customer', '$2y$10$FOYLbfW7aymHwO7Z8HD.pe2P5MxAeUrA5ai8DKMHx3ybGQpWwd4vm', '703, Gaurav woods, building no. 4, Phase 1\r\nbeverly park, Kanakia', 'India', 'Maharashtra'),
(11, 'sarika', 'choudhary', 'sarikachoudhary.1250@gmail.com', '', 'customer', '$2y$10$hqji6MKoCwa4rkyMtZaC4u3TyefU2G.3BHFvBh7v4rYgTYi0f8f3a', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `pid`, `cid`) VALUES
(4, 7, 8),
(5, 11, 8),
(6, 14, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_usage`
--
ALTER TABLE `coupon_usage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_signups`
--
ALTER TABLE `email_signups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popups`
--
ALTER TABLE `popups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_collection`
--
ALTER TABLE `product_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_style`
--
ALTER TABLE `product_style`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_classes`
--
ALTER TABLE `shipping_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `styles`
--
ALTER TABLE `styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_strip_messages`
--
ALTER TABLE `top_strip_messages`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_signups`
--
ALTER TABLE `email_signups`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `popups`
--
ALTER TABLE `popups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `product_collection`
--
ALTER TABLE `product_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `product_style`
--
ALTER TABLE `product_style`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `shipping_classes`
--
ALTER TABLE `shipping_classes`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `styles`
--
ALTER TABLE `styles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `top_strip_messages`
--
ALTER TABLE `top_strip_messages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
