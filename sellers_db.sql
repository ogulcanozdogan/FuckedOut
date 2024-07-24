-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2024 at 06:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sellers_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `vendor_id`, `title`, `price`, `image`, `link`) VALUES
(1, 1, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/Gypsy%20Lady'),
(2, 1, 'Mighty Mouse', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-DrDcIBCuNbLIL6bgQzwCN1X2hbdeeDLBThjFUnYr.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gypsy%20Lady/menus/266825'),
(3, 1, 'Mighty Mouse', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-NGtfMMHQokkui1QzhNR5HCoIR2zGZ18CTy2Me4lX.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gypsy%20Lady/menus/266824'),
(4, 1, 'GMO', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-wtoOTwvoeGl5u5DanUz1CQwUxWlp81UFqlPvnzvd.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gypsy%20Lady/menus/266823'),
(5, 1, 'Gelatto', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-vzxyg4dTzNfZyBACNkArtmsIs8h8ryDAypPqP5Gh.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gypsy%20Lady/menus/266822'),
(6, 1, 'PackwoodXRuntz Indica', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-4S6i0O5GTjK12Bb5FaYeVXuhUWb0MyPMyP6I6xXH.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gypsy%20Lady/menus/266821'),
(7, 1, 'PackwoodXRuntz Sativa', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-ujeHqJ2x4PhWNPcMVJFFedHg8kyH8DC3Q2URK4uT.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gypsy%20Lady/menus/266820'),
(8, 1, 'PackwoodXRuntz Hybrid', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-u5B9n5lhZk7nFuffHXRdvg4LgA4riyJIMwLa0MXX.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gypsy%20Lady/menus/266819'),
(9, 2, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/Gazayouth17'),
(10, 2, 'Delivery 📮 Requirements', '0.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedin_cXgN5vswMhZUUb0z7vU0ykVBAL2F7WRnaAArvigC.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gazayouth17/menus/219234'),
(11, 2, 'Ediables Candy\'s 🍬 🍫 🍭', '15.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-mLOksbvVo3OidwpU1Vbkv4vXx4KPQwlsetVXosik.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gazayouth17/menus/281029'),
(12, 2, 'Infusions', '50.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-O3CotYU6g740irF78cLYkojB5qyP2p741oOfLeQH.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gazayouth17/menus/281018'),
(13, 2, 'Infuse Drinks', '20.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-xXyBseuDDw1OYPY0eMq4MGsZnTXiqwY75xonUqJN.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gazayouth17/menus/280996'),
(14, 2, '41 Cherries 🍒 🔥 🔥 🔥', '250.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-XFzbBrAxx2pCbZlKfuMY0WYvClbjWJzQZYJUEwUj.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gazayouth17/menus/281858'),
(15, 2, 'Kashmere 🔥 🔥 🔥 🔥', '200.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-fTXqBrsIeE53fL6aEJb37qsIQKxa0yUDAw2HXM3p.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gazayouth17/menus/272209'),
(16, 2, 'Lemon 🍒 Runtz', '250.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-XOEFDrfCLy6WkpjZ8a2ArfW4QJhqBzJr3nJChnu7.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gazayouth17/menus/280988'),
(17, 2, 'Moon Walker Carts', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-XMU29hAX1lySBEWt2ONAEzyOdTyC44OtLfP35NUv.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gazayouth17/menus/282302'),
(18, 2, 'Permanent Marker', '200.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-vmvrMFvXyxB6q6oyi5n1JVfSqKj5RlkH6bbOCfiM.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gazayouth17/menus/280995'),
(19, 2, 'Shake', '75.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-Tzx70cPQgLeRuS59yhbUU3oHEkuuIeji0NfCViYO.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Gazayouth17/menus/281841'),
(20, 3, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/thegoodguys420'),
(21, 3, 'Biscotti (175$ a Zip) (Deal of the Week)', '100.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-VlmUed3d5mjOgFyFkNtxpss7OqjWnYmuvNtLd9OC.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/thegoodguys420/menus/284707'),
(22, 3, 'Deal of the Week (Buy 3 Get 1 Free)', '3.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-aKgj3DxthCsJKjIpiFCoVo3Cn1RWbFbcHyBWvdw5.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/thegoodguys420/menus/284629'),
(23, 3, 'Assorted 🎱s (Sprinklez and High Tolerance)', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-aKgj3DxthCsJKjIpiFCoVo3Cn1RWbFbcHyBWvdw5.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/thegoodguys420/menus/284359'),
(24, 3, 'CRUMP Chata', '407.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-FbYDZQ6mqE1FkK9EOgcHQ5NJCOxYxSzaP0tN3MfG.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/thegoodguys420/menus/284352'),
(25, 3, 'Muha Meds Disposables 2G', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-0oc5h6dFoiWaVwakLvG47QoSrzXxxmNWS7xNibp8.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/thegoodguys420/menus/284226'),
(26, 3, 'Gelato 42 Larry Bird', '407.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-LUqlqPuOu3n32wJ48vxHfzLbQ75hRZT2FcFBGukS.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/thegoodguys420/menus/283836'),
(27, 3, 'Wax Shatter', '30.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-87v6RO8HR50bN18Oi8yeJlNicHfh6Qitt3dJjBgW.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/thegoodguys420/menus/281897'),
(28, 3, 'Wax Crumble', '30.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-FA80kfnEuXr2apSQCrPK8uZziJbWry2y6OdowZ45.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/thegoodguys420/menus/281895'),
(29, 3, 'Assorted Gummies Edibles', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-DfQL9xDQTgQlwcte4l88cyOrjxSwR1B5y0FfYytM.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/thegoodguys420/menus/281878'),
(30, 3, '75$ Zips of Shake', '75.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-NZXtSbH48Tr93aTpCjsyRC7RlLDZSZj7uwSudi3X.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/thegoodguys420/menus/281755'),
(31, 4, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/DirtySouthDispo'),
(32, 4, 'Mk Ultra 3.5g cali dispensary item', '50.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-DLgWyjxn1CnFwtc9jJ9z4BEPv4NLH1FbyEiMoo6Z.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/DirtySouthDispo/menus/285108'),
(33, 4, '710 hash rosin gummies', '30.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-x3f3jDuKUEcZrCFJZ7ecERn2KTaxlitLLUxJDZs5.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/DirtySouthDispo/menus/284684'),
(34, 4, 'Makilla Gorilla', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-gLZLxbeHCqj1rl71ovV8twVXjPIme5piRKn0OglX.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/DirtySouthDispo/menus/284649'),
(35, 4, 'Jungleboys 3.5g pack', '50.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-Sp6SqHGQMHpGaiJfWy6kGQNtPfYcURWiZIGly5YV.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/DirtySouthDispo/menus/284648'),
(36, 4, 'Carmel candy kush', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-8xbNpVfcYhU4nuKKQBAXIla1VLlXn7vWIDOTkv83.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/DirtySouthDispo/menus/284647'),
(37, 4, 'Blue Nerds', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-avAyvnhahNRpHWFTOmRYg5NG6TElxSlPVhXmH2Oh.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/DirtySouthDispo/menus/284646'),
(38, 4, 'Curelato 41', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-KW15JSC9dPGQcxc14lSEtuinFSaQrEkVr9mzecBx.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/DirtySouthDispo/menus/284645'),
(39, 4, 'Cherry 🍒 OG', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-owx8rwVjJsDjgX6sAVz40vqdYfNCYHywUDWKpZgG.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/DirtySouthDispo/menus/284644'),
(40, 4, 'Lemon cherry 🍒 gelato', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-v0wheWj8UeijKVv3qnlSIswTY0XyGfeCsxbje1u0.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/DirtySouthDispo/menus/284109'),
(41, 4, 'Cali gold 510 carts', '20.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-VqSg2ykz3eiIhW3JF4h4RhKVFQNE4ybyXs19TAlG.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/DirtySouthDispo/menus/283608'),
(42, 5, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/Marvel_Gas'),
(43, 5, '🍯Sunset Sherbert Budder🍯', '30.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-5JNl8sEKdnEXO4ScUOOP5X4gH8rM5a9rTVbQtpuL.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Marvel_Gas/menus/284750'),
(44, 5, '🪐Skywalker OG Snowballs ☃️', '50.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-dF38Zq7zPo6i9dCkzpKClYLL4ZIpVY17sw1ZLixs.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Marvel_Gas/menus/283654'),
(45, 5, '🍇 Exotic Grape Runtz ☄️', '45.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-6kTbsUIJC65VXBUSxKPTsAegDRf8VyEakhT6BxNv.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Marvel_Gas/menus/284292'),
(46, 5, '🌅 Exotic Sunset Gelato 🍨', '45.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-ByUijEWTJtEyLGGTFDiqMLGZpJDj7HOqFvRprTT9.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Marvel_Gas/menus/284291'),
(47, 5, '🌸Exotic Pink Starburst🌟', '45.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-9V7GErX0HRNZ7Gj9ntnrs0IcYFDvV24xW6AFGZDp.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Marvel_Gas/menus/284288'),
(48, 5, '🍨Exotic Vanilla Cream Pie 🥧', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-NeZUqbeAfoD7nFII1uFQ0VIWYYTBRd7f76Kz8kYG.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Marvel_Gas/menus/283657'),
(49, 5, '👺Exotic Monster Cookies 🍪', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-hqwpSa9gx3QicVSPHQ4p22BsLiiohN9pvOzUKsZ2.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Marvel_Gas/menus/282067'),
(50, 5, 'Gas Face ☠️👨🏻‍🔬', '30.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-afO0R36OQGap7HIa1bTdbKbFbSzKfwNWlbyZvclk.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Marvel_Gas/menus/282073'),
(51, 5, 'Stardawg Smalls⭐️🐕', '30.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-KKdrJWaGkQZlI3Z3bVkESyGZeDT42g6c2O2JguEl.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Marvel_Gas/menus/282074'),
(52, 5, 'Shake🍃🌿', '50.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-ETVL0oJbpzdfyZ3p7EywlrbjzxH7spvmOTylzFd5.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Marvel_Gas/menus/280595'),
(53, 6, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/16zips'),
(54, 6, 'Blue Dream', '0.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-NzHZGkbJO7uFrsJIH6TOxLCKF5Rl7y3XIegNfRz8.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/16zips/menus/284315'),
(55, 7, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/topshelfatl'),
(56, 7, 'DURBAN POISON', '3.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-8r8gMM4c1wrnf3DnIIsPnXI9dEq1QWOvM50hxcI9.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/topshelfatl/menus/283345'),
(57, 7, 'PACKMAN', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-UJufuwCNcTUBOSRMkNtvItM69eE1UCvYC0EZaMYs.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/topshelfatl/menus/282807'),
(58, 8, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/Ace_Jackson'),
(59, 8, 'Gas Tank Carts (random strains will be sent)', '50.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-0HZvswqVQyIeiho14roKKVoR6pdjKb18Y3eSRXkC.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Ace_Jackson/menus/281322'),
(60, 8, 'Grape Jelly (Indica dom)', '60.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-gtX5Bvk0MWEyLcIuzMCCnBOb33MovhYaHO5Df0F9.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Ace_Jackson/menus/167325'),
(61, 8, 'SourDawg', '45.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-p22pnlZIakGZ7lE6K9MU1uhNGBY1cRnhC95vJej4.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Ace_Jackson/menus/281316'),
(62, 8, 'Shake Mix', '85.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-7fZbwPjceU9ZGQFrhfjmffhg0YEzyyy99bPVtQaM.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Ace_Jackson/menus/281324'),
(63, 8, 'Fusion Magic Mushroom Chocolate Bar', '50.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-ZLGQn9ivm4EnhIgEHq7uxp0qAkLh86SxmfuBIkDA.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Ace_Jackson/menus/281321'),
(64, 8, 'Sugar High (gummies)', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-r1IDjQkXsKzw5FEwT8lYB0BRcBktlpkM6520F197.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Ace_Jackson/menus/281320'),
(65, 8, 'Packwood 2g Prerolls', '45.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-dyebDSJ6r66XkcQpZx126U8nRO9R7BGXjdv1Eg04.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Ace_Jackson/menus/281317'),
(66, 8, 'White Raspberry', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-F139g8c68G3ZmrCBoAgd5Zzee91vWdvvOgBQtrH1.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Ace_Jackson/menus/281315'),
(67, 8, 'Gas OG', '45.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-TdsSHqQVJwo7yxjzbgpR71Tj31M5uYyJD32z1Wtm.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Ace_Jackson/menus/281313'),
(68, 8, 'HillBilly ( Psilocybin)', '50.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-H89RPFbKxgtMzXk9v1AKfIe1P4fdiYmTU3wJ70BE.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Ace_Jackson/menus/197126'),
(69, 9, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/tn_medical'),
(70, 9, '5-600 MG Gummies *Ask for current stock*', '25.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-pPahmeMz66H7EuFbsfkaUD5EERQbUJEk46a8b2xL.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/tn_medical/menus/280539'),
(71, 9, '818 Headband (Lows)', '4.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-OXpN9ZRmLmV2vi1gWpwjVOtnNrdSkNpnnzSdNYwu.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/tn_medical/menus/279136'),
(72, 9, 'GMO Cookies *Sale *', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-JYUPkMt6Wi5gR3AMkeC9i0acbHpC22aDEKTjsDpd.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/tn_medical/menus/281189'),
(73, 9, 'Zelato', '150.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-OQ9mjGOo6ZzDfVXpaKFyDcNK1iOs8ubvCjmIeksj.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/tn_medical/menus/284859'),
(74, 9, 'Cookie x Zkittles', '150.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-emgq3s6kPV3LKFSWlWc0LwjIye3Mo0iZMWVNUcFg.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/tn_medical/menus/284857'),
(75, 9, 'Cereal Milk', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-mz9Gb013DzltMZu2hKbchGhLOWeOVbwbf4CtXxUD.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/tn_medical/menus/279842'),
(76, 9, 'PINK ABDUCTION', '240.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-sWl8uAyldWwYmOJVlQTmTh81XX9pQMf0WfzWpy7z.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/tn_medical/menus/281178'),
(77, 9, 'SNO CONES', '240.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-u0mnn90KweUPnp5sTlR12h2RIdH1ENNrhLuEl5Ez.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/tn_medical/menus/281177'),
(78, 9, 'ICEBOX', '240.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-RF9xkBpPLWMBjxezDACVF4WkXqa5xWQmfo6t3p3G.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/tn_medical/menus/281176'),
(79, 9, 'Zaba IceCapz Moonrocks (Rapper Weed)', '85.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-9exCswdbyzDCkv28fGXyrDzlrsEMCh9NOUb6N5xq.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/tn_medical/menus/279130'),
(80, 10, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/Helix'),
(81, 10, 'Jealousy Runtz', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-cbP5BP4YYDyPCwmg2ddm39lk51aMNnjdvcbSUZOV.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Helix/menus/280845'),
(82, 10, 'Candy Fumez', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-lXlDiDb38AwilL8oqA84cIOnZZE2Xjun0wMXW5eQ.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Helix/menus/284745'),
(83, 10, 'Icelato Snowballs', '10.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-W16IUnbjKmiHfyeIQQeJfeuMoYn4kzC2Mm6t8v1H.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Helix/menus/285041'),
(84, 10, 'Snowballs', '10.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-pEsNlCMXj9VwrfubFo333PsdwvD89jBkb2eLTH4q.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Helix/menus/280924'),
(85, 10, 'Lemon Cherry Gelato', '35.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-YLc84ksIlvpEQu7SqlaySHMKVNsgZgwNnj18BxMb.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Helix/menus/283965'),
(86, 10, 'Gelato 41', '35.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-85hd8UJPekMBQKruTfougZY4vCNsOY5qu98CiQlQ.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Helix/menus/280848'),
(87, 10, 'Wedding Crasher', '35.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-cQpHo8Fl7iKkoMuTeqPu7F6dlrpaO3MtQAPRRGbj.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Helix/menus/284776'),
(88, 10, 'Frosted Runtz', '30.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-0yxLxdWJSV1KoV3YwX63GeVmG3npnDogUUiMfNyL.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Helix/menus/279280'),
(89, 10, 'Dreamin Diesel', '30.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-lO7nHbc2goKPW5YExBMpSe2Hrnz0HA5lwZnFcl74.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Helix/menus/277351'),
(90, 10, 'Gorilla Glue', '30.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-pIoi3uChrROomXaVRdUmiRH17LnLUfWwjG8HWWM2.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Helix/menus/280257'),
(91, 11, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/TeamGG'),
(92, 11, 'Patient Verification ⚠️ READ THIS ⚠️', '50.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedin_YDD4d1rKu23WN1TPKLYysjENdcGcQPNw6lDAo4w1.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/TeamGG/menus/202123'),
(93, 11, 'Pickup/Delivery/Ship *Read First*', '0.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedin_YDD4d1rKu23WN1TPKLYysjENdcGcQPNw6lDAo4w1.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/TeamGG/menus/187188'),
(94, 11, 'Hash Rosin (Terps n Caicos)', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-sNBuX1lsLK6R9PI80iqFPBhT9cXohys1WI5Y2ZYJ.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/TeamGG/menus/282443'),
(95, 11, 'Hash Rosin - T. Squisher', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-qfmH7o2astO9eiiugMNKzcqxmwwddIWH4BjKiEVI.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/TeamGG/menus/282464'),
(96, 11, 'Oreoz (Exotic+)', '80.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-T0a9NUqifzzvx7wKboWB7hmUkEVm9WK47DGMukCr.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/TeamGG/menus/282460'),
(97, 11, 'Motorbreath (Exotic)', '60.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-dIzqvnygDfGhjcozkp9wvYfr43GJSdbwux1lYKbP.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/TeamGG/menus/282809'),
(98, 11, 'Bahama Berry (Exotic+)', '70.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-Py9oXkdjBFM1LRuuYMQTUQ6ax5PEZR34cVKkTkAT.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/TeamGG/menus/282458'),
(99, 11, 'Flo aka DJ Short Flo (Indoor+)', '60.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-avhQSTlWAh6g23iZ7pXnYLOygbmSaprS3exj2SdP.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/TeamGG/menus/282459'),
(100, 11, 'AP Pharms (1G Distillate)', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-A9WTBzjZUqkpjMOiwMbMBqUSj9SEImfFzDdAIKcu.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/TeamGG/menus/282453'),
(101, 11, 'High Rocket Cart (1G Disposable)', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-adKzxBERqn4vePB9jsJfu1nPt1E1HEPmbgW3v8GY.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/TeamGG/menus/282456'),
(102, 12, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/panda_exotic'),
(103, 12, 'Cherry Nova', '7.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-KHDNMyZvNERYqUtYATLIAuJ57eZnio7JffFy4490.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/panda_exotic/menus/284261'),
(104, 12, 'Lemon Cherry ZKZ', '7.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-CCMYqpmdPZRVZ24w8Wj7ZhczscWtEMgVr7Z2rJJa.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/panda_exotic/menus/284260'),
(105, 12, 'Z Pie', '7.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-2BkDCjgbgN1uQjP9gjSlzJcKXWsW0JJ311c5YKKH.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/panda_exotic/menus/284259'),
(106, 12, 'Frosted Flakes', '7.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-YsmpJwrVg69inVNIoHjBA8hE0hB5PTEBRDsLA4vl.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/panda_exotic/menus/284258'),
(107, 12, 'Candy Jack', '7.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-GPUkHZQe352PiYgN0NwiMM0fDwEB1dEua6YJcuyf.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/panda_exotic/menus/284263'),
(108, 12, 'Cherry Blow Pop', '7.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-7ZRc0S2LiIcj7q60KHeXKiFYPiYImVQjRrAaFDp2.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/panda_exotic/menus/284264'),
(109, 12, 'Supreme Runtz', '7.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-GhqH3fm5DNsnsNKRwZf5LKPHiSuIdYEXddoR93nO.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/panda_exotic/menus/284265'),
(110, 12, 'Bolo Runtz', '7.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-1qZaWGwixQ0upiKciWJVvwdkkVD4ZoZMPmJU3LNB.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/panda_exotic/menus/284266'),
(111, 12, '2 Grams Disposable Live Resin Liquid Diamond 💎', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-KtnQbN5tPWUtZPWEJoeW0pOjwlezAy29wh6mA6P1.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/panda_exotic/menus/282489'),
(112, 12, '2 Gram Disposable Live Resin Liquid Diamond 💎', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-cAYOosO3Zkzc3VzIU2lxWI0gayEwZcfPVARrGkXo.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/panda_exotic/menus/282488'),
(113, 13, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/CarolinaReleafCenter'),
(114, 13, 'READ ME: Ordering Etiquette', '11.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-MlILQXcqZD3srabGRD8NIR1wZ2EzEiJreBc2I6W4.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/CarolinaReleafCenter/menus/247147'),
(115, 13, 'Persy Snowballs Minis (July 4th Edition)', '45.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-rD32lPN4JGJ6EgGE9n1zV91NUvWSX8v9UdSju5b9.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/CarolinaReleafCenter/menus/284553'),
(116, 13, 'California Licensed Chemlato', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-nPj02NVgAXtr2EDhtsvZXG9OdpHJpt2MEmFzmVAh.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/CarolinaReleafCenter/menus/284549'),
(117, 13, 'Caramelo', '35.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-kLmU7csq3uGXdNyNTF1CfODwoUT68iPnSNr6WxMA.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/CarolinaReleafCenter/menus/283812'),
(118, 13, 'Apples and Bananas', '30.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-rqtXLJdK6DR8S6auCjP6Lch20ysBCV0BRCGFTfBZ.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/CarolinaReleafCenter/menus/282596'),
(119, 13, 'Raspberry Cough', '25.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-r5jNHeIJb1pXR3uibj6SnUx2t6Lf4SNRJ3sUD9Q1.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/CarolinaReleafCenter/menus/281976'),
(120, 13, 'Purple Runtz', '25.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-qG7P7zPbT250v0HoBK6SI9xzHZNVRh6DJc7GTOwb.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/CarolinaReleafCenter/menus/284550'),
(121, 13, 'Banana Cream - Small Nugs', '60.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-pmUgpGfrjSfYprQRHVHETO2xgUrbf7Et6Pw9lJPx.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/CarolinaReleafCenter/menus/282080'),
(122, 13, 'Strawberry Cough - Small nugs', '50.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-08XQExx6wo6b9IcyTcG7f2UcDqenJluk7LXbKPPm.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/CarolinaReleafCenter/menus/282594'),
(123, 13, 'Authentic Kaws Moonrocks (Exotic Edition)', '35.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-n54iMLcu3Xgvdi4wCe8aSzYJ7XHl618sBRCZxHuK.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/CarolinaReleafCenter/menus/280268'),
(124, 14, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/greenmidas'),
(125, 14, '🪂SKY🪂 (2indicas)', '8.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-Ewl4FSLsJFuccOfV9ItQ6yxx11SyRPPTh0xbRA1Z.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greenmidas/menus/285089'),
(126, 14, '⚪️🤤MARSHIES🤤⚪️ (2indicas/1hybrid)', '8.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-jOtTPggJtThAJI2XIQPgl5EBRFKoVbm3bQhkZC2V.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greenmidas/menus/285040'),
(127, 14, '😋🤤YUMMIES🤤😋 (1hybrid/1indica)', '8.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-y9A63Hb1dU4HmkA6ruRvxxY6oijgz6A8twmgZNKl.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greenmidas/menus/285012'),
(128, 14, '🗽TORCH🗽 Dispos 2Gram Diamond Live Resin', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-1GzqY4Jfqo0JcyWgw10ViwmaDBG1a48z552sCydx.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greenmidas/menus/284643'),
(129, 14, '🔵🦓Blue Fruit Ztripez🦓🔵', '8.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-8L8mlxYmXbKGJG5UsYVAYmyB7GSPiYYyHRa39IRw.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greenmidas/menus/284642'),
(130, 14, 'NEW Strains! WHOLE🫠MELTS🫠 LiveResinSugar 15/g', '8.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-4SrLxdoafmlBdK92gPEaCUQLxXUXw49MoIdh9zF2.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greenmidas/menus/284633'),
(131, 14, '🦍🟢Gorilla Glue🟢🦍', '8.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-08ovU8TvML3nSJkgjKP3uU0fQEyKYSBJhmaLZqEQ.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greenmidas/menus/284560'),
(132, 14, '🎤🎩HIGH TOLERANCE🎩🎤 (1indica/1hybrid)', '8.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-GFqhPVTixfEd5OxT7NPLcXEKf6atccEyNAuKsban.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greenmidas/menus/284536'),
(133, 14, '🍋🍒🎈Lemon Cherry Airheadz🎈🍒🍋', '8.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-mPpzuv5qTEEIf2n6WxMeYzJSzmO6uV2w7YcEbNlD.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greenmidas/menus/284526'),
(134, 14, '💣💥BOMBPOPZ💥💣 (1indica, 1sativa, 1hybrid)', '8.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-dIVeFHDXxiCVneTccyALzKnkCGRnAJ6KLomhUw6e.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greenmidas/menus/284512'),
(135, 15, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/Kushkocktailz'),
(136, 15, 'Runtz ice cream', '60.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-Za9BaO1I5FmZXSi1e31Y9HC7vPw94vXBSsiymUwL.webp&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Kushkocktailz/menus/278920'),
(137, 15, 'Fruit roll up', '60.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-RTNKSL7oTTlJBvA7qecd8iA0EBPPLcRu90Ndb4GF.webp&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Kushkocktailz/menus/278919'),
(138, 15, 'Blue nerds', '50.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-RTNKSL7oTTlJBvA7qecd8iA0EBPPLcRu90Ndb4GF.webp&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Kushkocktailz/menus/269061'),
(139, 15, 'Gs11', '60.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-Za9BaO1I5FmZXSi1e31Y9HC7vPw94vXBSsiymUwL.webp&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Kushkocktailz/menus/269060'),
(140, 15, 'Sauce carts', '50.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-CvoDmzu0TXcW9kk7FQYVULFB9dHFl3aTQ3raJiJ1.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Kushkocktailz/menus/274605'),
(141, 15, 'Back boys carts', '70.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-kANgseQlmUpp802j2G0Z60UtNfuFQvlrRPMaigc8.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Kushkocktailz/menus/275399'),
(142, 15, 'Edibles', '20.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-kpZzZR3Un7vBrpfuJwDZA5fYNEYJpEhNBV0QrtAE.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Kushkocktailz/menus/179955'),
(143, 15, 'Kushkocktailz', '20.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fsmall%2FLeafedin_DWYZSJoIJQR7i7yspdmyQOGsloOWgvIvnL2Z86yt.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Kushkocktailz/menus/179954'),
(144, 15, 'Polka dot bars', '65.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-v0nsieEeo09lEmSVvK3kybDOD2bL0DTIaYd8WAKF.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Kushkocktailz/menus/277211'),
(145, 16, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/hiii_genetics'),
(146, 16, 'OG Kush (Hindu Real Kush) make og great again 🎖️', '130.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-E7GcDpt5rEB79aBSSn88KBltUP6iTAkVk6ANyTGE.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/hiii_genetics/menus/285021'),
(147, 16, 'Trauma lemon Cherry Gelato (Elite/Craft/Exotic)🎖️', '65.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-pZGXEgUCb5ifHtKqXZ5MkI7RkPRbQ7o3QQUFnix4.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/hiii_genetics/menus/284970'),
(148, 16, 'zest 55 🍋by white ashes co (exotic/Craft) back in', '65.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-UoiqkWNWAYVxQqOvYwlhbQO3mDhlQ3mW6oHibLhu.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/hiii_genetics/menus/282381'),
(149, 16, 'Strictly medicated 1 gram vapes live resin', '50.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-7KDyLAMeRnl9md2TtwLj6YH3MvH9tQhjFwQ6BeQq.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/hiii_genetics/menus/283558'),
(150, 16, 'Strictly medicated 1 gram vapes live resin', '50.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-HU5do1pNYjEgEZPTl7q2MHfo2lBFHsBnbNygRT1p.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/hiii_genetics/menus/284459'),
(151, 16, 'Fire nic vapes', '15.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-4brF0WJkL99HPQlXnvApKbBjhBlPhNedJtO4UWDl.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/hiii_genetics/menus/274272'),
(152, 16, 'Lemon Cherry Gelato (exotic/Craft) 🍋🍒🍧 sold', '60.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-9BaydMOBAPNWxdtolg2dcOQybRharJQo7U3XKpNZ.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/hiii_genetics/menus/283905'),
(153, 16, 'Lemon Cherry Runtz 🍋🍒🍬sold out ❌❌❌', '55.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-zgXWv0wL72UoeX5K7HoWE3B6aFvo7CIjJ5jF9oST.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/hiii_genetics/menus/284298'),
(154, 16, 'Permanent Marker 🖊️🔥 sold out ❌❌❌', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-8PZgxLSHePN8zG4ko3OUcdOnMpP9oAblKPJUNi4d.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/hiii_genetics/menus/283549'),
(155, 16, 'Sold out ❌Blueberry Melt Exotic 🔥🫠🫐🍓 (living soil)', '60.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-bQXUJG4UlLj5mJVqlhQmuePf8f0aTFExU8oMCktd.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/hiii_genetics/menus/281016'),
(156, 17, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/cannabuzz'),
(157, 17, 'Verify here', '0.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-nhB38WlJmmHEqRamUYkYec4E6bHR4WOAQ3Mmku3H.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/cannabuzz/menus/283432'),
(158, 17, '🧢Cap Junky (Capulator Cut)', '120.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-laB5Bto8H3wM5n5emzeUOGZlo1nBTXploj9FIlIL.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/cannabuzz/menus/283391'),
(159, 17, '👑Royal Octane (Handcrafted 🧬 INDOOR HIGHEND)', '100.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-ms0Nm9edx2xPn7awSeqaSMGpLGQN6QKEQOAVsS6P.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/cannabuzz/menus/284452'),
(160, 17, '🌃Vice City', '120.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-1IjWv75pjbUiiCtDx41vN3JiIqmtMXypS5AbEA1v.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/cannabuzz/menus/283394'),
(161, 17, '✨Galaxy Mintz', '120.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-FAfgTKx0PQsA3MaV9eCCaOSPRJlXQLmnbj88HfvK.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/cannabuzz/menus/283396'),
(162, 17, '🍥White Trufflez', '100.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-dDINL1TjaXy8M5vWdH3ufUpzXLZDkSuvLegVcD7v.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/cannabuzz/menus/283398'),
(163, 17, '🛫Flight OZ', '180.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-tPRlJpirmQbcVu1cRiB2DMP2ZJ5UdiMwuKrKeXNd.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/cannabuzz/menus/283426'),
(164, 17, 'Lito 1G Vape', '20.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-bmmA4vdBLPhjd0bXSJmjB8Tr5Z5Z4tBeB80fOIJ6.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/cannabuzz/menus/283891'),
(165, 17, 'Push 1G disposable vape', '20.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-0d0L5Vp7WyJyiVwSPzVfaXG84wgALvs4Itba2l3z.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/cannabuzz/menus/283892'),
(166, 17, 'Blackout Blueberry 🫐 600mg Rosin Gummy Rings', '25.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-QubrbkaDTNW9US8GcKZP23y3EfJ8I8HA1Fac8Fwn.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/cannabuzz/menus/284784'),
(167, 18, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/propermeds'),
(168, 18, 'Dippin\' dabs', '15.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-B3BZMWgXF6zcBHcSnVilEtWQvETEEZBprWgMgnWM.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/propermeds/menus/284749'),
(169, 18, 'Candy Runtz (Licensed)', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-Fp3NvWjwA0XnKh7h8LaOkQmqVZ8ZrdAvpQTuEl5r.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/propermeds/menus/284935'),
(170, 18, 'Grab & Dab 2g each', '30.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-LxL7hnAsoXpT6tmhM1a5zCtr2zPBAYazcJrZGUAN.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/propermeds/menus/284748'),
(171, 18, 'Wehi Liquid DiamondsXLive Resin 2G each', '30.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-2cnTWcr3TJbIB61dd4PncJ3CBPPyJsw0yyFxirXR.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/propermeds/menus/284746'),
(172, 18, 'Fruity Pebbles', '25.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-I1ZPp8hw7L8ZVIuL3wdcbxjzkmhYviuYv4FwRo2v.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/propermeds/menus/284623'),
(173, 18, 'Cali Citrus Gas', '25.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-3zO6LBPHretNl6LqH3tPf8TxTucqwMMLVpO6EzrU.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/propermeds/menus/284622'),
(174, 18, 'G41', '30.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-BQRJxLiEYnJsTyFp4eIzrrnXR4pOKytOjLh5ixpD.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/propermeds/menus/284621'),
(175, 18, 'Runtz', '30.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-15HuxlBoshQ4JehGKVXYxaDWe4WwlwFEbf0cnAg5.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/propermeds/menus/284501'),
(176, 18, 'Pokadot Magic Mushroom Bars', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-mRzHAh4mNmCQKs8hb0w0n2iyxJ01GsNw2nSigvB1.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/propermeds/menus/284079'),
(177, 18, 'Divine Cherries', '35.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-t3IACPebIrbAsDuMY8TpVRsAMAldZVN8oMrEbLwI.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/propermeds/menus/284077'),
(178, 19, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/topshelfprimebuds'),
(179, 19, 'Mookie B R1', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-OwykkGPd87SxeD6sgal20cYwrv12DwbcigPVnTw3.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/topshelfprimebuds/menus/261590'),
(180, 19, 'Jet fuel', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-QNEU36dnDVodYDt31x5cqPJt9qtWRruFpL9A2l8H.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/topshelfprimebuds/menus/261164'),
(181, 19, 'White truffles S1', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-V6HXhBrVxuAtEMqj3b92rmA2a5gRmHOm1CnqM7EB.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/topshelfprimebuds/menus/251107'),
(182, 19, 'Pink panties', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-oHJClUgwof3DmdzDdYngozqz4MIRHpGPsx2GEve3.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/topshelfprimebuds/menus/251106'),
(183, 19, 'Blizzard beach', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-qmx05PcqKO11i1KJaViccM2p2Fxn7OFqVcBBpE9o.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/topshelfprimebuds/menus/251103'),
(184, 19, 'Donny burger', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-4OnuRfRl4fdO2b8LspARE0v6HExH2uEkNEvR04Zr.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/topshelfprimebuds/menus/251109'),
(185, 19, 'Gorilla glue #4', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-IJkvKqpqwdNWmva1qxLMNN1GfNrDzn4CW6mXKmFI.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/topshelfprimebuds/menus/251108'),
(186, 19, 'GMO', '40.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-E55TfUrBtC3kKaCuewqNIOifOE3lArIV7LPpL3f1.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/topshelfprimebuds/menus/251100'),
(187, 19, 'Disposable carts', '60.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-HO5o7P6i2oVJbHGTTTH2DQusDXvO5VmHGqIfm6jJ.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/topshelfprimebuds/menus/282933'),
(188, 19, 'Pre rolls', '60.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-7KsIWFLZ2vBHPSPNN078KT1XXyOs6WqONYw5JYpW.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/topshelfprimebuds/menus/282935'),
(189, 20, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/greeninflorida'),
(190, 20, 'Black Runtz', '60.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-FPJ9OGVc72ncdCD0IqsQuny4ae0LBhLbvUC3C5eB.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greeninflorida/menus/268915'),
(191, 20, 'Lemon Cherry Gelato - Shake', '60.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-EtjaxBmCbCBS5mBT4yiCDAXrsN0sUVOYv3fN58Nm.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greeninflorida/menus/284301'),
(192, 20, 'Ice Cream Cake', '100.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-O2XaDlff19ostaWVejbasTKskEaEl5e6UvkK4bLs.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greeninflorida/menus/283676'),
(193, 20, 'Skittlez', '120.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-HTkz8JVwrGM2vyjfCvYtdbR9irIcoAtzSTdncPAh.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greeninflorida/menus/279287');
INSERT INTO `menus` (`id`, `vendor_id`, `title`, `price`, `image`, `link`) VALUES
(194, 20, 'Runtz', '120.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-xzds7G0tyqW3ZGEHkDzE3DuXUMi5K9QYUzClRdDK.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greeninflorida/menus/284304'),
(195, 20, 'Oreoz', '120.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-og8wslWGsFURs7VMp6XyJrojodQDWigoL9172rkB.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greeninflorida/menus/264259'),
(196, 20, 'Frosted Cherries', '120.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-yPU8lDb9gAxM6jw59V7f2DwvKM9l9ZD1r6DEsV8o.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greeninflorida/menus/283494'),
(197, 20, 'Cheetah Piss', '120.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-SRk02IOQmTsCLrM9jmVl0zCR1L8iNH63udomOfSl.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greeninflorida/menus/258346'),
(198, 20, 'Gelatti', '120.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-QFyAInEUNWhSejFwosoBOdVlCIJv1qkepHOcW0Ha.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greeninflorida/menus/277877'),
(199, 20, 'Gelato 47 (Mochi)', '100.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-JfhZXsXR2qTYleAdsAuZZSDigVku8MbFPJ7uo9Kv.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/greeninflorida/menus/279292'),
(200, 21, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/Happy_Buddha'),
(201, 21, 'Shipping only 📦', '0.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-NEZY1jAc6BOF1zxEEBcUOiJizyyWMGUXSO62pgp0.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Happy_Buddha/menus/157942'),
(202, 21, 'How to verify ✅', '0.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-tiznF8i6SGffFhAYRQOnevuITq7LDv8zzXYhE4PT.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Happy_Buddha/menus/282855'),
(203, 21, 'Wholesale ✈️', '0.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-sn3F5keOjfcsTUxSBzfA3npn7nZzcvs3FaBSpXV4.webp&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Happy_Buddha/menus/267963'),
(204, 21, 'Hawaiian Runtz', '150.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-NRMrn0fj1KFetzeGkGSI3R6uLRyfEv2JkonhnRWb.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Happy_Buddha/menus/285093'),
(205, 21, 'Chiquitas', '200.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-7RTXOjW60FsNTXkyIUdo9CQDY8eS0lYQSKWu7Xtr.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Happy_Buddha/menus/285046'),
(206, 21, 'Cotton Candy', '200.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-Geq2NtutIh2D1ksqx0HRX3SaJWa2N9XQHbFckFaP.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Happy_Buddha/menus/283371'),
(207, 21, 'Lime Light', '200.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-N6AoaAL87Uu3MAX19YEbKUEnJybdVgxDTHSkFI4C.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Happy_Buddha/menus/283703'),
(208, 21, 'Head Stash', '200.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-cJH0E9uukuLQB2SAGlVP6IRTNg8J8pBFwpB1opGf.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Happy_Buddha/menus/282520'),
(209, 21, 'Pink Funk', '200.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-GyUUM1E4iiMxxjoow6ubJc63AJeron94Etqh7Qs4.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Happy_Buddha/menus/282521'),
(210, 21, 'Super Lemon Cherry', '200.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-wYOehWTxEwxNMQshRraEHB3si6km505hjdcWlDvd.jpeg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/Happy_Buddha/menus/282509'),
(211, 22, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/HealingNug'),
(212, 22, 'Nepalese X Mendo $375/Qp', '130.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-Tn8x2xHpgl7wybjQWBTwKaybSBHTtczOQddEdv1D.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/HealingNug/menus/264508'),
(213, 22, 'Mendo Breath $375/Qp', '130.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-XcIoO136qh9nyj5lK2iJ2hAap2gqciuXM4Jze0n1.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/HealingNug/menus/264507'),
(214, 22, 'First Class Funk $375/Qp', '130.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-NuVAvHrlQGIM0p7musLGGhTuiQUbxUBGTBpavymJ.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/HealingNug/menus/264506'),
(215, 22, 'Triple OG - $550/Qp', '190.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-mbFKFRuQFagodEkneT5FsBs75Q5Zdy5XdJ8dY2Fh.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/HealingNug/menus/264505'),
(216, 22, 'RS-11 $650/Qp', '220.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-NymmhzIdYiMyuGf0iS9Is6PtASrR9tCgm1LV4jG7.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/HealingNug/menus/264504'),
(217, 22, 'Ben N Berries $600/Qp', '240.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-eAQDV6qt6MmcCIQKr2LDNnvAB5YrQXDFlpBt1t7d.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/HealingNug/menus/264495'),
(218, 22, 'Jet Fuel Og $850/Qp', '300.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-aMB4C23bx6ptjmzdOd2eYyRKYHr8IahPlvli7ytN.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/HealingNug/menus/264494'),
(219, 22, 'Mega Wellness OG', '320.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-iMiC4WlFrXbXpbgjMM6tPsBgsMr9n7GkKIyy1O0T.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/HealingNug/menus/182745'),
(220, 22, 'Pink Runtz', '220.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-yzvjpIT86VjwStJuPSe72dUhDqOMSR82sLtabMnR.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/HealingNug/menus/232919'),
(221, 22, 'Lemon Cherry Gelato', '190.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-0u21hzYBk5fm7gK2hI61hAkeS5sIDjSoCrK57hUP.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/HealingNug/menus/232923'),
(222, 23, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/poundclub'),
(223, 23, 'Wholesale', '0.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-wdxWSvolBfT1wWQVqb6aSuqUDdEMo9NgEUbsHAvr.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/poundclub/menus/283691'),
(224, 23, 'Runtz', '140.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-6BwXdLTcD7yKLXhYq5FCeQ2ES4OU7FmG0rd6jc4T.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/poundclub/menus/283687'),
(225, 23, 'Lemon Cherry Gelato (LCG)', '160.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-o0mKue1FBUwmRtsturpCUjyDRiQU8KKG2naKVdWJ.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/poundclub/menus/283686'),
(226, 23, 'Purple Gelato', '120.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-MM7B9U2plA3zpPt0UaXVS8cnk4bShbDkUZcShn3i.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/poundclub/menus/283688'),
(227, 23, 'Papaya', '100.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-ZdNnq0tXYGBOwIsGG9HksuvrYG4leXUqoGhKND93.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/poundclub/menus/283689'),
(228, 23, 'FRYD Dispoable Vapes 2grams', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-TX8Lp0tP9e7qudoHRtrrgGavQxJ7VO4JrVDWKQCN.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/poundclub/menus/283694'),
(229, 23, 'M&M Peanut Chocolate 600MG', '20.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-hMDyCfUmW49lbIXkPFKkwGda7v5AVKJ6iuVmQBvB.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/poundclub/menus/283695'),
(230, 24, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/humboldtcannabis'),
(231, 24, 'Rainbow Runtz', '150.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-oVkF6b7kqy43EJWOLO4es51wPaygtS0SVXrXrLuC.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/humboldtcannabis/menus/284702'),
(232, 24, 'Kama- toro', '120.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-aJpgjfKxW6nn39vuqMo8DeoVLPgJt6iFvJRQXMSn.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/humboldtcannabis/menus/284701'),
(233, 24, 'Pomelo Runtz', '150.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-8Le1gHIyv2o4efSa565lxKv8frjcHG8jyYYRsIfo.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/humboldtcannabis/menus/284699'),
(234, 24, 'gumbo pop', '150.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-45T7C9gTPbiDx0u9RFs2reJkCY8HyvEepuGlZbbG.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/humboldtcannabis/menus/284349'),
(235, 24, 'Grape ambrosia', '150.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-zcFzFy90HzDMUCGmEnE8gRj8ytcb6aHQHI8S5Se3.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/humboldtcannabis/menus/284348'),
(236, 24, 'White cherry', '150.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-nxCZSEDJJQDuDEim8HVHvrNFQu8rt2LA4SNvseMC.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/humboldtcannabis/menus/283944'),
(237, 24, 'Sugar cane', '120.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-HZvBBFF9l0JTLWQOzFTrbO9PZ0c2aKdTimUmrhCI.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/humboldtcannabis/menus/283943'),
(238, 24, 'Double bubble', '150.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-ckvULhgbyr3iRyNfhZ0QW7Ofcd2AUcNAJQVQEjiD.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/humboldtcannabis/menus/283942'),
(239, 24, 'Gelato', '150.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-Lyfddsfw80bTnfjpaHoYhLKmesqtNF1h1PfZvWlb.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/humboldtcannabis/menus/283821'),
(240, 24, 'Swedish fish', '170.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-zq5vSba3aZdNiG1vqZ3IBvfUwtk6pe7JMjDwiJaB.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/humboldtcannabis/menus/283820'),
(241, 25, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/nocodirect'),
(242, 25, 'Biscotti', '130.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-8eblE9bQbMA79GunKPfyXnC7bIyKUjdlUmmctwf6.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/nocodirect/menus/280824'),
(243, 25, 'Don Juan DeMilko', '130.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-4sXyuJ3DOceqsYCXuLpU8HV6mtXNu98rDalfjoBz.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/nocodirect/menus/280808'),
(244, 25, 'Red Matter', '130.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-fpFdCJuM1KOh0WDKQgDt0QdMMCDnfxB2v5Wkf479.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/nocodirect/menus/271407'),
(245, 25, 'Sour Breath', '130.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-IPCtlN0kJjJzfOCxZN7NpP4VPgbg2hkcf14t7g54.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/nocodirect/menus/271406'),
(246, 25, 'Supersonic Blizzard', '130.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-DRVkIGpQ2yevhoNq1hGvURRuvzk1eQ2yXx5jSJa9.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/nocodirect/menus/271405'),
(247, 25, 'Mystery Girl', '130.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-ZeaTAnIRakHaixeWf9IGRH3cYUeEFOqPDwTHJAaA.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/nocodirect/menus/259275'),
(248, 25, 'Bruce Banner #3', '130.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-fnSsTYMvQznrh5JavFv96TQ2kBCUcmzcCXVANYhw.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/nocodirect/menus/259269'),
(249, 25, 'Blueberry Cookies', '130.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-s48QlLaBP5z0Nhmoc1MAU7D2lLrbDdWrJJwsx4bo.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/nocodirect/menus/259268'),
(250, 25, 'The Cube', '130.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-tnMrTBteOslycfYxXDX178Vf25QQNpBXoSSIBpYC.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/nocodirect/menus/258724'),
(251, 25, 'Black Cherry Widow', '130.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-xvl4AAUIDHnK49GAF1L4HcUvWsIeAc8T3YdxeBAn.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/nocodirect/menus/258723'),
(252, 26, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/BudLove'),
(253, 26, 'NEW ITEM ! Melonade 90/10 Sativa', '200.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-g3dyr6tQJHaFPX2Jo5P6zEnz4CqLGeuG4JNDJl7k.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/BudLove/menus/284225'),
(254, 26, 'Please Review B4 Ordering', '100.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fthumbnails%2FReview_all_menus_and_minimum___Hybrid_fC8J4ViOezRj.png&w=640&q=75', 'https://leafedout.com/cannabis-vendor/BudLove/menus/187068'),
(255, 26, 'Four Strain Sampler Best Choice for New Patients !', '200.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fsmall%2FLeafedin_lpuj8v5HpCn978JfbbfIWIcfMRVecOQgYQOfAzp8.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/BudLove/menus/145848'),
(256, 26, 'Grand Daddy Purple 70/30 Indica', '200.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-Yqn3mYIAmQznNc82a6a4kl9i2CwxADBpsPhe2Icu.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/BudLove/menus/282176'),
(257, 26, 'Incredible Hulk 70/30 Sativa', '225.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-R1kiKLHTmE8VnbbkRdek6iAIWH5j9rg6VHNoZZUN.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/BudLove/menus/279813'),
(258, 26, 'Snocap 50/50 Hybrid', '225.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-wihTzyqJbLwiPGpCdL5iTCRVHt7ShqMfeptPzQ1J.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/BudLove/menus/279511'),
(259, 26, 'Snoop Dog OG 70/30 Indica', '225.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-LBGG8iWqdOxGuPsy2cXMY2YjWIQUNBcnoRs1ugpU.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/BudLove/menus/279298'),
(260, 26, 'Super Silver Haze 80/20 Sativa', '180.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-R1kiKLHTmE8VnbbkRdek6iAIWH5j9rg6VHNoZZUN.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/BudLove/menus/278662'),
(261, 26, 'Zkittelz 70/30 Indica', '200.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-aFAA9NoQLos54dJtDOUc2MYhkaAmWrpxVctqTyPX.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/BudLove/menus/271795'),
(262, 26, 'Sundae Driver 50/50 Hybrid', '150.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-uKy0XWmJMPbdHYvgyEbqHstsvlCluBIcNVaEocyj.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/BudLove/menus/250930'),
(263, 27, 'Unknown', 'Unknown', 'No image', 'https://leafedout.com/cannabis-vendor/FlowerGuys2021'),
(264, 27, 'Angel Runtz 😇⭐️⭐️⭐️⭐️', '220.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-0GbFCKWOaydyBhk9nJoWXuAjSaHLbTnd7MIgZ8X4.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/FlowerGuys2021/menus/284093'),
(265, 27, 'Airheads🎈⭐️⭐️⭐️✨️', '220.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-SEV2Z9ZH72ft2hQHjZimiLxLJaaz70GlK8vli7te.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/FlowerGuys2021/menus/283138'),
(266, 27, 'Lemon Cherry Gelato 🍋⭐️⭐️⭐️✨️', '210.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-UTGbTEmeovF4LRsyQtsImx1LCiALxdQXbVWcRmlA.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/FlowerGuys2021/menus/284400'),
(267, 27, 'Warheads 🪖⭐️⭐️⭐️', '210.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-d45Btoy42i6lc3hgYkgY7dCINbHKlNh1pvPIEMHr.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/FlowerGuys2021/menus/284401'),
(268, 27, 'Apples & Bananas 🍎⭐️⭐️⭐️', '200.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-YEfNaEnBaLMtUC4kjVAzBOrYKHVcZjrB8z6lyjg1.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/FlowerGuys2021/menus/283577'),
(269, 27, 'LA Kush Cake 🎂⭐️⭐️✨️', '200.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-e2qyBG0GHpAM7FPw12lJYQ6nEeU0VuNRtgdcFlXV.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/FlowerGuys2021/menus/283576'),
(270, 27, 'Slurty3😈⭐️⭐️✨️', '190.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-HtfL88vPhyfr4eD3zifVKuweRrotwtRPqlphNlEQ.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/FlowerGuys2021/menus/284094'),
(271, 27, 'Pink Runtz❤️‍🔥⭐️⭐️', '190.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-oiYvyV7Pm9fLmmCtpK9Vki9JLCybUM1QubflO54A.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/FlowerGuys2021/menus/284402'),
(272, 27, 'Rebel Cookies 🍪⭐️⭐️', '190.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-fS9EdccKJly38it5k3vrcAkbrL98P6jjmLxK6atj.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/FlowerGuys2021/menus/283578'),
(273, 27, 'Pre-rolled 1-¼ Cone add-on', '1.00', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fsmall%2FLeafedOut-dCNPWp1j1u377sZRAKG5Yy1CXE7GwWxWMYFmIke2.jpg&w=640&q=75', 'https://leafedout.com/cannabis-vendor/FlowerGuys2021/menus/284708');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `link` text NOT NULL,
  `photo` text NOT NULL,
  `last_seen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `name`, `location`, `link`, `photo`, `last_seen`) VALUES
(1, 'Gypsy Lady', 'Atlanta, Georgia ~ 182 Miles', 'https://leafedout.com/cannabis-vendor/Gypsy%20Lady', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fthumbnails%2Fz0hc7gnbYn1lxTD7ABdarZ8B5i09G4x6iOUZ8of8.png&w=3840&q=75', 'Last seen -443 min ago'),
(2, 'Gazayouth17', 'Atlanta, Georgia ~ 175 Miles', 'https://leafedout.com/cannabis-vendor/Gazayouth17', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut2WiH1Vo0B9ggtb3HRE4b7UxYDrl2DtHCWi1Kq3Ai.v1642366769.png&w=3840&q=75', 'Last seen -782 min ago'),
(3, 'TheGoodGuys', 'Atlanta, Georgia ~ 175 Miles', 'https://leafedout.com/cannabis-vendor/thegoodguys420', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-63vE6WSgeUnWBj3RAhncOXq3ohQUsKWjLhspuqA5.v1709853287.png&w=3840&q=75', 'Last seen 18 hours ago'),
(4, 'DirtySouthDispo', 'Marietta, Georgia ~ 176 Miles', 'https://leafedout.com/cannabis-vendor/DirtySouthDispo', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-3C7JNQdjUJKSOYprHpzNi1rVHbtl1q3epS3TzEUG.v1711801420.png&w=3840&q=75', 'Last seen -695 min ago'),
(5, 'Marvel_Gas', 'Lawrenceville, Georgia ~ 205 Miles', 'https://leafedout.com/cannabis-vendor/Marvel_Gas', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedin_6R4A35FHiUmyCKjqlg2Xj7Gnw7A8kggIJYSSOD0K.v1638827731.jpg&w=3840&q=75', 'Last seen -799 min ago'),
(6, '16zips', 'Atlanta, Georgia ~ 175 Miles', 'https://leafedout.com/cannabis-vendor/16zips', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fimages%2Favatar-gray.jpg&w=3840&q=75', 'Last seen days ago'),
(7, 'Topshelf', 'Atlanta, Georgia ~ 177 Miles', 'https://leafedout.com/cannabis-vendor/topshelfatl', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-dyDT2jj9cv76xwudxpBaMRmZZk2h2UT4LAIwBKyU.v1718738466.jpeg&w=3840&q=75', 'Last seen -70 min ago'),
(8, 'Ace_Jackson', 'Nashville, Tennessee ~ 267 Miles', 'https://leafedout.com/cannabis-vendor/Ace_Jackson', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-0FHvKVJ0Ujh560GEH0AzmLf2J59fzRPIi6o81wOc.v1715814602.jpg&w=3840&q=75', 'Last seen -749 min ago'),
(9, 'The Weed Factory TN', 'Knoxville, Tennessee ~ 305 Miles', 'https://leafedout.com/cannabis-vendor/tn_medical', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-CqF6UMzd7MEXg87zoJUspq189nM4ip2iuZeUFpWR.v1712253897.jpg&w=3840&q=75', 'Online Now'),
(10, 'Helix', 'Hudson, Florida ~ 371 Miles', 'https://leafedout.com/cannabis-vendor/Helix', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-EoWks9y2sC9kKaEmRLO8mih93xCEGRWZKK2oTX48.v1673148933.jpg&w=3840&q=75', 'Last seen -774 min ago'),
(11, 'TeamGG', 'Pinellas Park, Florida ~ 400 Miles', 'https://leafedout.com/cannabis-vendor/TeamGG', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-3wxcw5QPYQlSTFY6gidL6G5A7FxzIF0HQ9FWiuYN.v1653225875.png&w=3840&q=75', 'Last seen -582 min ago'),
(12, 'Panda_Exotic', 'Lutz, Florida ~ 392 Miles', 'https://leafedout.com/cannabis-vendor/panda_exotic', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-Xo6HPWjiA6s55eDVgyqtVgz4G2tau3sdwvVtmJcE.v1707175802.jpeg&w=3840&q=75', 'Last seen -811 min ago'),
(13, 'CarolinaHerbanLegend', 'Charlotte, North Carolina ~ 402 Miles', 'https://leafedout.com/cannabis-vendor/CarolinaReleafCenter', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fthumbnails%2FLeafedin_1UMxGhOYMvLS7pV9ygZkhKrwj51Om13qFSU4iA9k.png&w=3840&q=75', 'Last seen -504 min ago'),
(14, 'greenmidas', 'Tampa, Florida ~ 392 Miles', 'https://leafedout.com/cannabis-vendor/greenmidas', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-iygoGbfgnZsKDODZgNgRc5Zz66riT91qWOmu2Syl.v1656021774.jpeg&w=3840&q=75', 'Last seen -794 min ago'),
(15, 'Kushkocktailz', 'Charlotte, North Carolina ~ 401 Miles', 'https://leafedout.com/cannabis-vendor/Kushkocktailz', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-uci9GNE4KjSmEqT0ywLcLKYRQTCexAnxwtEQzOj1.v1671386534.jpeg&w=3840&q=75', 'Last seen 10 hours ago'),
(16, 'Hii_Genetics', 'Charlotte, North Carolina ~ 402 Miles', 'https://leafedout.com/cannabis-vendor/hiii_genetics', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-hzkt27qAwaVye1eFjHeA9KGvgjtvXopGLG8cc98K.v1717073977.jpeg&w=3840&q=75', 'Last seen -655 min ago'),
(17, 'Cannabuzz Couriers', 'Pineville, North Carolina ~ 394 Miles', 'https://leafedout.com/cannabis-vendor/cannabuzz', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-tPRlJpirmQbcVu1cRiB2DMP2ZJ5UdiMwuKrKeXNd.v1719365150.png&w=3840&q=75', 'Last seen -411 min ago'),
(18, 'Propermeds Tampa', 'Temple Terrace, Florida ~ 401 Miles', 'https://leafedout.com/cannabis-vendor/propermeds', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-Su1hwDDzFh0pl0NhzhFjkoahzysXRp5K0bkQnUnp.v1721570227.png&w=3840&q=75', 'Last seen -669 min ago'),
(19, 'Topshelfprimebuds', 'Orlando, Florida ~ 420 Miles', 'https://leafedout.com/cannabis-vendor/topshelfprimebuds', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-cnsf8ZmS4Rn90SmCEv35VbhqxFGenXuFA9EmvgQ5.v1687559823.png&w=3840&q=75', 'Last seen -159 min ago'),
(20, 'GreenInFlorida', 'Bradenton, Florida ~ 422 Miles', 'https://leafedout.com/cannabis-vendor/greeninflorida', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-v1oBhMG4r9X3zIHKuLIpDryQVFSL1cirHAJIeSJ6.v1671672026.png&w=3840&q=75', 'Last seen -752 min ago'),
(21, 'Happy_Buddha', 'Los Angeles, California ~ 410 Miles', 'https://leafedout.com/cannabis-vendor/Happy_Buddha', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-sl2ramNfbXf8j7VebPbDpcWNOxSfFPFjiXVESXN4.v1719606158.png&w=3840&q=75', 'Last seen -793 min ago'),
(22, 'HealingNug', 'Long Beach, California ~ 405 Miles', 'https://leafedout.com/cannabis-vendor/HealingNug', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fthumbnails%2FLeafedin_TRqGDNYPr8ttKHqCMJwB312Get2EBNmKehs3nhUl.jpg&w=3840&q=75', 'Last seen days ago'),
(23, 'Pound Club', 'Los Angeles, California ~ 420 Miles', 'https://leafedout.com/cannabis-vendor/poundclub', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-tZuhqPS4wQz9xIUXefawATist2Jhcq7Q0oEvCDbs.v1720024939.png&w=3840&q=75', 'Last seen -812 min ago'),
(24, 'Humboldtcannabis', 'Keystone, Colorado ~ 480 Miles', 'https://leafedout.com/cannabis-vendor/humboldtcannabis', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-ITq097qCElGjumYADkPrndeqMmvTVUR8oSvURhce.v1719153305.jpg&w=3840&q=75', 'Last seen days ago'),
(25, 'Nocodirect', 'Fort Collins, Colorado ~ 559 Miles', 'https://leafedout.com/cannabis-vendor/nocodirect', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOut-IPCtlN0kJjJzfOCxZN7NpP4VPgbg2hkcf14t7g54.v1701818430.jpg&w=3840&q=75', 'Last seen -479 min ago'),
(26, 'BudLove', 'St. Louis, Missouri ~ 253 Miles', 'https://leafedout.com/cannabis-vendor/BudLove', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fpp%2FLeafedOutC2hJ6XD4B2BcQuAYCdWkPeXCEXQktpUCroPRu4rg.v1698829800.jpg&w=3840&q=75', 'Last seen -811 min ago'),
(27, 'Doc\'s Recreational Dispensary', 'Allen, Texas ~ 313 Miles', 'https://leafedout.com/cannabis-vendor/FlowerGuys2021', 'https://leafedout.com/_next/image?url=https%3A%2F%2Fleafedout.com%2Fstorage%2Fusercontent%2Fthumbnails%2FLeafedin_RPCTwwMExJRqnNP8z7F8iME9HbtRPy2DbbhX7ufJ.jpeg&w=3840&q=75', 'Last seen -753 min ago');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `sellers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
