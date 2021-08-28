-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: sql100.byetcluster.com
-- Üretim Zamanı: 18 May 2020, 18:39:29
-- Sunucu sürümü: 5.6.47-87.0
-- PHP Sürümü: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `epiz_25727131_shopping`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', '2017-01-24 16:21:18', '17-05-2020 11:55:15 PM');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Kitap', '', '2017-01-24 19:17:37', '09-05-2020 06:45:42 PM'),
(4, 'Tatli', 'Lezzetli Tatlilar', '2017-01-24 19:19:32', '09-05-2020 06:14:00 PM'),
(5, 'Yemek', 'Lezzetli Yemekler', '2017-01-24 19:19:54', '09-05-2020 06:15:02 PM'),
(6, 'Kahve', '', '2017-02-20 19:18:52', '09-05-2020 06:15:56 PM'),
(7, 'Diger', '', '2020-05-09 18:13:55', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '1', 1, '2020-05-09 19:09:48', 'COD', NULL),
(8, 4, '17', 1, '2020-05-09 19:09:48', 'COD', NULL),
(9, 4, '33', 1, '2020-05-09 19:09:48', 'COD', 'in Process'),
(10, 5, '15', 1, '2020-05-09 19:12:37', 'Internet Banking', 'in Process'),
(11, 4, '2', 18, '2020-05-09 19:18:37', 'COD', NULL),
(12, 4, '6', 6, '2020-05-09 19:18:37', 'COD', NULL),
(13, 4, '19', 1, '2020-05-09 19:18:37', 'COD', NULL),
(14, 4, '35', 1, '2020-05-09 19:18:37', 'COD', NULL),
(15, 5, '1', 1, '2020-05-10 21:43:30', 'Debit / Credit card', NULL),
(16, 5, '5', 1, '2020-05-10 21:43:30', 'Debit / Credit card', NULL),
(17, 5, '17', 1, '2020-05-10 21:43:30', 'Debit / Credit card', NULL),
(18, 5, '19', 1, '2020-05-10 21:43:30', 'Debit / Credit card', NULL),
(19, 5, '23', 1, '2020-05-10 21:43:30', 'Debit / Credit card', NULL),
(20, 5, '15', 1, '2020-05-10 21:50:26', 'COD', NULL),
(21, 5, '15', 1, '2020-05-10 21:51:47', 'COD', NULL),
(22, 5, '5', 1, '2020-05-10 21:55:22', 'COD', NULL),
(23, 5, '1', 1, '2020-05-10 21:57:51', 'Internet Banking', NULL),
(24, 5, '1', 1, '2020-05-12 12:58:39', 'Internet Banking', NULL),
(25, 5, '16', 1, '2020-05-12 13:09:15', 'COD', NULL),
(26, 5, '1', 1, '2020-05-12 13:10:24', 'Debit / Credit card', NULL),
(27, 5, '3', 1, '2020-05-12 13:10:24', 'Debit / Credit card', NULL),
(28, 5, '5', 1, '2020-05-12 13:10:24', 'Debit / Credit card', NULL),
(29, 6, '5', 1, '2020-05-12 13:11:31', 'Internet Banking', NULL),
(30, 5, '3', 1, '2020-05-14 12:17:52', 'Debit / Credit card', NULL),
(31, 6, '1', 1, '2020-05-17 18:24:27', 'COD', NULL),
(32, 6, '15', 1, '2020-05-17 18:24:54', 'Internet Banking', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 9, 'in Process', 'bekleee', '2020-05-09 19:12:17'),
(6, 9, 'in Process', 'aÃ§ boÄŸazzzz\r\n', '2020-05-09 19:12:39'),
(7, 10, 'in Process', 'SipariÅŸiniz birazden sabrederseniz elinizde olacak', '2020-05-09 19:14:47');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 5, 5, 0, 0, 'es', 'yu', 'Mükemmel kitap', '2020-05-09 13:41:17');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Panna Cotta', 'Kaleidoscope', 45, 45, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\"><br></div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><span style=\"color: rgb(96, 96, 96); font-family: PlayfairDisplay, serif; font-size: 18px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Dünya çap? Nda popüler bir lezzet</font></font></font></font></span><br></li></ul></li></ul>', 'pannacotta.jpg', 's-2939b2f7c8286d289fead1a58795d5d8ce112705.jpg', 'Panna-Cotta.jpg', 0, 'In Stock', '2017-01-30 16:54:35', ''),
(2, 4, 4, 'sekerpare', 'Kaleidoscope', 25, 0, '<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\"><br></li></ul></div>', 'sekerpare-shutterstock_1_1_1573667647-400x400.jpg', 'sekerpare-shutterstock_16_9_1558544437.jpg', 'sekerpare-shutterstock_16_9_1558544437.jpg', 0, 'In Stock', '2017-01-30 16:59:00', ''),
(3, 4, 4, 'Baklava', 'Kaleidoscope', 50, 0, '<div><div><br></div></div>', '5-sekersiz-tatli-tarifi.jpg', 'diyetisyen-nurdan-balakci-bayramda-yenilecek-tatlilar-konusunda-uyardi-1559201296.jpg', 'uzman-diyetisyenden-ramazan-bayrami-UNgs_cover.jpg', 0, 'In Stock', '2017-02-04 04:03:15', ''),
(4, 4, 4, ' Hamarat Serbetli', 'Kaleidoscope', 45, 0, '<div><br></div>', 'images.jpg', 'Kadayifli-Serbetli-Tatlilar-96.jpg', 'images.jpg', 45, 'In Stock', '2017-02-04 04:04:43', ''),
(5, 3, 14, '', 'Kaleidoscope', 20, 30, '<div><br></div>', 'ol.jpg', 'Kitap_201907262317368.jpg', 'ol.jpg', 3, 'In Stock', '2017-02-04 04:06:17', ''),
(6, 5, 9, 'Izgara ev köftesi', 'Kaleidoscope', 25, 0, '<div><br></div>', 'izgara-kofte-1.jpg', 'Firinda-Izgara-Kofte-68.png', 'enfes-kofte.jpg', 35, 'In Stock', '2017-02-04 04:08:07', ''),
(7, 4, 3, 'tiramisu', 'Kaleidoscope', 25, 0, '<div><br></div>', '800x640-1458143520617.jpg', '1019286_620x413.jpg', 'tiramisu-kek-tarifi-566x430.jpg', 20, 'In Stock', '2017-02-04 04:10:17', ''),
(8, 4, 7, 'HEALTHY SWEET POTATO WAFFLES', 'Kaleidoscope', 50, 0, '<div><br></div>', 'Gluten-Free-Sweet-Potato-Oat-Waffles.jpg', 'Healthy-Sweet-Potato-Waffles.jpg', 'sweet-potato-oats-waffle-chefdehome-2.jpg', 0, 'In Stock', '2017-02-04 04:11:54', ''),
(15, 3, 8, 'The Wimpy Kid Do -It- Yourself Book', 'Kaleidoscope', 30, 45, '<br>', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 3, 'In Stock', '2017-02-04 04:35:13', ''),
(16, 3, 8, 'Thea Stilton and the Tropical Treasure ', 'Kaleidoscope', 30, 35, '<ul><li><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Dil ingilizce</font></font></font></font><br></li><li><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Ciltleme: Ã‡iltsiz kitap</font></font></font></font><br></li><li><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Yay? Nc ?: Skolastik</font></font></font></font><br></li><li><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">ISBN: 9789351032083, 9351032086</font></font></font></font><br></li><li><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">BasÄ±m: 2015</font></font></font></font><br></li><li><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Sayfalar: 176</font></font></font></font><br></li></ul>', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', 0, 'In Stock', '2017-02-04 04:36:23', ''),
(17, 5, 9, 'Sarma', 'Kaleidoscope', 50, 0, '<div><div><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\"><br></span></font></div></div>', 'zeytinyagli-yaprak-sarmasi-yemekcom.jpg', 'yaprak-sarma-5.jpg', 'zeytinyagli-yaprak-sarmasi-yemekcom.jpg', 0, 'In Stock', '2017-02-04 04:40:37', ''),
(18, 5, 10, 'Hamburger', 'Kaleidoscope', 35, 0, '<div><div><font color=\"#212121\" face=\"Roboto, Arial, sans-serif\"><span style=\"font-size: 18px;\"><br></span></font></div></div>', 'images (1).jpg', 'ev-yapimi-hamburger.jpg', 'indir.jpg', 0, 'In Stock', '2017-02-04 04:42:27', ''),
(19, 6, 12, 'Filtre Kahve', 'Kaleidoscope', 25, 0, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\"><br></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><br></div></li></ul>', 'images (2).jpg', 'siyah-kahve-ve-kilo-vermek-728x410.jpg', 'images (2).jpg', 25, 'In Stock', '2017-03-10 20:16:03', ''),
(20, 6, 18, 'Latte', 'Kaleidoscope', 25, 0, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\"><br></li></ul>', '1273143_7bee2cb3a787d757d317389bf8b15f71_640x640.jpg', 's-9830531bfdb8c358549f2a913a04aaa338b0269d.webp', '5d19ed0dd3806c11e8f9f1be.jpg', 0, 'In Stock', '2017-03-10 20:19:22', ''),
(22, 7, 19, 'TasarÄ±m Su Åžisesi', 'Kaleidoscope', 45, 45, '<br>', 'resim1.png', 'resim1.jpg', 'resim1.jpg', 5, 'In Stock', '2020-05-09 18:17:16', NULL),
(23, 7, 19, 'Seyehat Termosu(Siyah)', 'Kaleidoscope', 70, 70, '<br>', '22.jpg', '22.jpg', '22.jpg', 5, 'In Stock', '2020-05-09 18:26:37', NULL),
(24, 7, 19, ' Seyehat Termosu(Beyaz)', 'Kaleidoscope', 70, 70, '<br>', '33.jpg', '33.jpg', '33.jpg', 5, 'In Stock', '2020-05-09 18:28:04', NULL),
(25, 7, 19, 'Kupa', 'Kaleidoscope', 20, 30, '<br>', '44.jpg', '44.jpg', '44.jpg', 5, 'In Stock', '2020-05-09 18:29:20', NULL),
(26, 7, 19, ' Kaleidoscope Ã‡Ä±kartmasÄ±', 'Kaleidoscope', 10, 15, '<br>', '55.jpg', '55.jpg', '55.jpg', 5, 'In Stock', '2020-05-09 18:30:27', NULL),
(27, 7, 19, ' Fasulye Kahve', 'Kaleidoscope', 45, 45, '<br>', '66.jpg', '66.jpg', '66.jpg', 5, 'In Stock', '2020-05-09 18:31:20', NULL),
(28, 7, 19, 'Old World Oyuncak', 'Kaleidoscope', 45, 45, '<br>', '77.jpg', '77.jpg', '77.jpg', 5, 'In Stock', '2020-05-09 18:32:57', NULL),
(29, 7, 19, ' TakÄ±m', 'Kaleidoscope', 70, 70, '<br>', '88.jpg', '88.jpg', '88.jpg', 5, 'In Stock', '2020-05-09 18:33:36', NULL),
(30, 7, 19, '  Kupa', 'Kaleidoscope', 45, 45, '<br>', '99.png', '99.png', '99.png', 5, 'In Stock', '2020-05-09 18:35:19', NULL),
(31, 7, 19, '  Kupa', 'Kaleidoscope', 45, 45, '<br>', '99.png', '99.png', '99.png', 5, 'In Stock', '2020-05-09 18:50:09', NULL),
(32, 4, 3, 'KAREMEL LAB BAKERY & PATISSERIE', 'Kaleidoscope', 70, 70, '<br>', '5.jpg', '5.jpg', '5.jpg', 0, 'In Stock', '2020-05-09 18:51:08', NULL),
(33, 4, 3, 'CLOROPHILLA', 'Kaleidoscope', 45, 45, '<br>', '3.jpg', '3.jpg', '3.jpg', 0, 'In Stock', '2020-05-09 18:54:42', NULL),
(34, 4, 3, 'RAFINE ESPRESSO BAR', 'Kaleidoscope', 50, 50, '<br>', '1.jpg', '1.jpg', '1.jpg', 0, 'In Stock', '2020-05-09 18:55:47', NULL),
(35, 6, 12, 'ESPRESSO', 'Kaleidoscope', 45, 45, '<br>', 'res1.jpg', 'res1.jpg', 'res1.jpg', 0, 'In Stock', '2020-05-09 18:57:40', NULL),
(36, 5, 11, 'KINOALI MEYVELI CUP', 'Kaleidoscope', 80, 80, '<br>', 'res5.jpg', 'res5.jpg', 'res5.jpg', 0, 'In Stock', '2020-05-09 18:58:45', NULL),
(37, 4, 3, 'MASKARPON TIRAMISU', 'Kaleidoscope', 45, 45, '<br>', '4.jpg', '4.jpg', '4.jpg', 0, 'In Stock', '2020-05-09 18:59:39', NULL),
(38, 6, 12, 'CLASSIC COFFEE', 'Kaleidoscope', 20, 20, '<br>', 'res2.jpg', 'res2.jpg', 'res2.jpg', 0, 'In Stock', '2020-05-09 19:00:29', NULL),
(39, 6, 12, 'CLASSIC COFFEE', 'Kaleidoscope', 20, 20, '<br>', 'res2.jpg', 'res2.jpg', 'res2.jpg', 0, 'In Stock', '2020-05-09 19:09:43', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(3, 4, 'Sutlu', '2017-01-26 16:29:09', '10-05-2020 12:22:04 AM'),
(4, 4, 'serbetli', '2017-01-30 16:55:48', '09-05-2020 06:33:17 PM'),
(7, 4, 'Healthy ', '2017-02-04 04:13:27', '09-05-2020 06:36:12 PM'),
(8, 3, 'Karikatur', '2017-02-04 04:13:54', '12-05-2020 06:24:48 PM'),
(9, 5, 'Ev', '2017-02-04 04:36:45', '09-05-2020 06:34:24 PM'),
(10, 5, 'FastFood', '2017-02-04 04:37:02', '09-05-2020 06:34:35 PM'),
(11, 5, 'Healthy ', '2017-02-04 04:37:51', '09-05-2020 06:35:59 PM'),
(12, 6, 'Sicak', '2017-03-10 20:12:59', '09-05-2020 06:36:38 PM'),
(13, 3, 'Masal', '2020-05-09 13:08:04', NULL),
(14, 3, 'Hikaye', '2020-05-09 13:08:25', NULL),
(16, 3, 'Kisisel Gelisim', '2020-05-09 13:09:05', '09-05-2020 06:39:25 PM'),
(17, 3, 'Tarihi', '2020-05-09 13:09:36', NULL),
(18, 6, 'Soguk', '2020-05-09 13:09:54', '09-05-2020 06:40:35 PM'),
(19, 7, 'Diger', '2020-05-09 18:15:06', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(25, 'e.cerenaltay@hotmail.com', 0x37382e3137352e3232392e3437000000, '2020-05-09 19:09:19', NULL, 0),
(26, 'e.cerenaltay@hotmail.com', 0x37382e3137352e3232392e3437000000, '2020-05-09 19:12:30', NULL, 1),
(35, 'admin@gmail.com', 0x3137362e3231382e34392e3233370000, '2020-05-17 18:22:26', NULL, 1),
(27, 'sndzyucel@gmail.com', 0x3134392e302e39312e31313600000000, '2020-05-09 19:18:25', NULL, 1),
(28, 'e.cerenaltay@hotmail.com', 0x37382e3137352e3232392e3437000000, '2020-05-10 21:43:21', '11-05-2020 03:46:32 AM', 1),
(29, 'e.cerenaltay@hotmail.com', 0x37382e3137352e3232392e3437000000, '2020-05-12 12:55:50', '12-05-2020 06:26:50 PM', 1),
(30, 'e.cerenaltay@hotmail.com', 0x37382e3137352e3232392e3437000000, '2020-05-12 12:57:35', '12-05-2020 06:28:42 PM', 1),
(31, 'e.cerenaltay@hotmail.com', 0x37382e3137352e3232392e3437000000, '2020-05-12 13:08:58', '12-05-2020 06:48:51 PM', 1),
(32, 'esma_nur_ycl@hotmail.com', 0x3134392e302e39312e31313600000000, '2020-05-12 13:09:12', NULL, 0),
(33, 'admin@gmail.com', 0x3134392e302e39312e31313600000000, '2020-05-12 13:10:08', NULL, 1),
(34, 'e.cerenaltay@hotmail.com', 0x37382e3137352e3232392e3437000000, '2020-05-14 12:17:49', NULL, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(5, 'Ceren Altay', 'e.cerenaltay@hotmail.com', 5512173476, '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-09 19:12:17', NULL),
(6, 'es yu', 'admin@gmail.com', 5432134567, 'bf727ebbb2925f69224db1d2fb9a9cbe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-12 13:09:49', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tablo için AUTO_INCREMENT değeri `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Tablo için AUTO_INCREMENT değeri `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
