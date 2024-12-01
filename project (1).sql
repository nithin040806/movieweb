-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2024 at 06:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `favouriteid` int(50) NOT NULL,
  `userid` int(200) NOT NULL,
  `movieid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favourite`
--

INSERT INTO `favourite` (`favouriteid`, `userid`, `movieid`) VALUES
(16, 2147483647, 39),
(17, 2147483647, 18),
(18, 2147483647, 42),
(19, 2147483647, 35),
(20, 2147483647, 3),
(21, 2147483647, 14),
(22, 2147483647, 13);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genreid` int(20) NOT NULL,
  `genrename` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genreid`, `genrename`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Drama'),
(5, 'Horror'),
(6, 'Romance'),
(7, 'Science fiction'),
(8, 'Fantasy'),
(9, 'Historical'),
(10, 'Crime'),
(11, 'Thriller'),
(12, 'Mystery');

-- --------------------------------------------------------

--
-- Table structure for table `genrebridge`
--

CREATE TABLE `genrebridge` (
  `movieid` int(100) NOT NULL,
  `genreid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genrebridge`
--

INSERT INTO `genrebridge` (`movieid`, `genreid`) VALUES
(1, 6),
(1, 3),
(2, 10),
(2, 11),
(2, 12),
(3, 1),
(3, 4),
(3, 3),
(4, 1),
(4, 4),
(4, 2),
(5, 3),
(5, 4),
(6, 5),
(6, 11),
(7, 3),
(7, 4),
(7, 6),
(8, 1),
(8, 4),
(8, 6),
(9, 1),
(9, 4),
(10, 1),
(10, 4),
(10, 5),
(11, 1),
(11, 4),
(12, 1),
(12, 2),
(12, 3),
(13, 1),
(13, 10),
(13, 11),
(14, 1),
(14, 2),
(14, 8),
(15, 1),
(15, 2),
(15, 7),
(16, 3),
(16, 5),
(16, 8),
(17, 1),
(17, 11),
(18, 4),
(18, 6),
(19, 3),
(19, 10),
(19, 4),
(20, 1),
(20, 11),
(21, 1),
(21, 3),
(21, 4),
(22, 1),
(22, 3),
(22, 4),
(23, 2),
(23, 4),
(24, 1),
(24, 10),
(24, 4),
(25, 1),
(25, 4),
(25, 11),
(26, 3),
(26, 4),
(26, 6),
(27, 4),
(27, 11),
(28, 4),
(29, 1),
(29, 11),
(31, 1),
(31, 11),
(30, 1),
(30, 2),
(30, 10),
(32, 1),
(32, 3),
(32, 10),
(33, 1),
(33, 2),
(33, 4),
(34, 1),
(34, 2),
(34, 4),
(35, 1),
(36, 1),
(36, 4),
(36, 11),
(37, 1),
(37, 4),
(38, 1),
(38, 4),
(38, 8),
(39, 1),
(39, 10),
(39, 4),
(40, 1),
(40, 7),
(40, 11),
(41, 1),
(41, 2),
(41, 8),
(42, 1),
(42, 2),
(42, 8),
(43, 1),
(43, 2),
(43, 8),
(44, 1),
(44, 2),
(44, 8),
(45, 1),
(45, 2),
(45, 8);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `languageid` int(20) NOT NULL,
  `languagename` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`languageid`, `languagename`) VALUES
(1, 'Telugu'),
(2, 'Hindi'),
(3, 'Malayalam'),
(4, 'English'),
(5, 'Tamil');

-- --------------------------------------------------------

--
-- Table structure for table `languagebridge`
--

CREATE TABLE `languagebridge` (
  `movieid` int(20) NOT NULL,
  `languageid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languagebridge`
--

INSERT INTO `languagebridge` (`movieid`, `languageid`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 4),
(13, 4),
(14, 4),
(15, 4),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 4),
(30, 4),
(31, 4),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 5),
(38, 5),
(39, 5),
(40, 4),
(41, 4),
(42, 4),
(43, 4),
(44, 4),
(45, 4);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movieid` int(5) NOT NULL,
  `title` varchar(50) NOT NULL,
  `releaseyear` int(11) NOT NULL,
  `runtime` int(10) NOT NULL,
  `plotsummary` varchar(1000) NOT NULL,
  `IMDbrating` float NOT NULL,
  `posterurl` varchar(700) NOT NULL,
  `postercardurl` varchar(300) NOT NULL,
  `trailerurl` varchar(200) NOT NULL,
  `pageurl` varchar(500) NOT NULL,
  `movieurl` varchar(200) NOT NULL,
  `headerurl` varchar(500) NOT NULL,
  `header` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieid`, `title`, `releaseyear`, `runtime`, `plotsummary`, `IMDbrating`, `posterurl`, `postercardurl`, `trailerurl`, `pageurl`, `movieurl`, `headerurl`, `header`) VALUES
(1, '18 Pages', 2022, 137, 'Siddhu is left heartbroken after his girlfriend cheats on him. Later, he stumbles upon a diary written by Nandini and begins to develop feelings for her.', 7.1, 'https://occ-0-2085-2186.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABZVLwwyeTGmKe3SKUpxJaafPtlwLFXkNDoD8RWLMYZTj7-mHxXC3t6RjTGJP8gK4kNpROWxIJiICK7UQ1ibRdHEW43iOD9exLKS7.jpg?r=e0b', 'https://image-resizer-cloud-api.akamaized.net/image/6F1FDDB7-6264-4E51-9C04-16B8632BF273/0-16x9.jpg?width=240', '/project/trailers/Telugu trailers/18 pages.mp4', 'http://localhost/project/programs/18pages.php', 'http://localhost/project/movies/Telugu/18%20Pages%20(2022)%20Telugu%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'https://occ-0-6245-2164.1.nflxso.net/dnm/api/v6/LmEnxtiAuzezXBjYXPuDgfZ4zZQ/AAAABWoVIvp1dSUTr5t_4TRJxsd7YZMjfzqxgWIbqh-DIFmh-mnqM5VXr-ANu5EnG63wHwixE09nL1qNH6cLBl6qEwrVtaLU0hATplen9d_wW-ZL.png?r=6c2', 1),
(2, 'Chakravyuham', 2023, 107, 'Siri, a business partner and a housewife, was found with her throat slit. The investigation officer tries to solve the case. Can he figure out who killed her and why?', 8, 'https://images-eu.ssl-images-amazon.com/images/S/pv-target-images/a16d626836861d070bf77846bda3991114738802010ba735ec8dc9df0f49dc5f._RI_TTW_SX1920_FMwebp_.jpg', 'https://m.media-amazon.com/images/S/pv-target-images/a16d626836861d070bf77846bda3991114738802010ba735ec8dc9df0f49dc5f._UR1920,1080_SX480_FMwebp_.jpg', '/project/trailers/Telugu trailers/chakravyuham.mp4', 'http://localhost/project/programs/Chakravyuham.php', 'http://localhost/project/movies/Telugu/Chakravyuham%20(2023)%20Telugu%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'http://localhost/project/img/chakravyuham.png', 1),
(3, 'Das Ka Dhamki', 2023, 149, ' Krishna Das (Vishwaksen) is a waiter in a luxury hotel who aims to make it big in life. One day he meets Keerthi (Nivetha Pethuraj) and falls for her instantly. He conceals the fact about his profession and makes Keerthi believe that he is affluent.', 6.2, 'https://image-resizer-cloud-api.akamaized.net/image/56FEEDB4-250A-4718-B3BF-F04E204BEBE6/0-3x1.jpg?width=2050', 'https://image-resizer-cloud-api.akamaized.net/image/AC9A0664-0F26-4049-8523-B2D69BAA074C/0-16x9.jpg?width=240', '/project/trailers/Telugu trailers/Das ka Damki.mp4', 'http://localhost/project/programs/Das_Ka_Dhamki.php', 'http://localhost/project/movies/Telugu/Das%20Ka%20Dhamki%20(2023)%20Telugu%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', '', 0),
(4, 'Dasara', 2023, 152, 'Veerlapally a small village surrounded by coal mines and the men cant survive without alcohol their day starts and ends with the same.Dharni who spends most of his time with his best friend Suri and in love with Vennela since childhood when he finds Vennela loves Suri he sacrifices his love.', 6.7, 'https://occ-0-2087-1168.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABVFH7FmZGmbqTpk1JB3jj2rATNF-6x6UXVUnQaHgM1JTBmTIXYrTRXeGLXQqWIPFKcrMXPso4ExVp-grkfPZ1oe55OnuneNGRb-v.jpg?r=f8c', 'https://occ-0-2087-1168.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABdjroTl_ZzQzAym_0jvaMtMJfD92-OaYAnrTtWlrKOOK3dDNVSla0gWg5B9jj0LSpjKgZ1y67AhyiaqxGr_kQQInsF-RLpxgmZ5b.jpg?r=5dd', '/project/trailers/Telugu trailers/Dasara.mp4', 'http://localhost/project/programs/Dasara.php', 'http://localhost/project/movies/Telugu/Dasara%20(2023)%20Telugu%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'https://occ-0-6245-2164.1.nflxso.net/dnm/api/v6/LmEnxtiAuzezXBjYXPuDgfZ4zZQ/AAAABaGVrlOYzGO2dkP3H8dP-8fSo-ThO74vhGy7dbOyrGVSxvRIDYLWG_i7OTWLiKaPSwMZH2FJ08dDY48lVNWRgmYlM_Cz-NSqd23P-MzeFhYu.png?r=1df', 1),
(5, 'Intinti Ramayanam ', 2023, 130, 'Set in a backdrop against Karimnagar, Telangana, the close-knit family of Ramulu begin to doubt each other when they suddenly face a problem, and their hidden motivations and ambitions surface and create a domino effect on family members', 6.9, 'https://image-resizer-cloud-api.akamaized.net/image/DA06D4CA-0A90-44E2-A0EA-FCF7A6E09F79/0-3x1.jpg?width=2050', 'https://image-resizer-cloud-api.akamaized.net/image/7393D94F-E0A6-488D-AD73-DDF01AA9F764/0-16x9.jpg?width=240', '/project/trailers/Telugu trailers/Intinti Ramayanam.mp4', 'http://localhost/project/programs/Intinti_Ramayanam.php', 'http://localhost/project/movies/Telugu/Intinti%20Ramayanam%20(2023)%20Telugu%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', '', 0),
(6, 'Masooda', 2022, 160, 'The simple and peaceful life of a single mother and her daughter gets disrupted when an evil force intrude into their lives and both look up for help from their neighbour.', 7.2, 'https://image-resizer-cloud-api.akamaized.net/image/C6D49DC4-C4D5-495B-86C5-AA6EC41CE315/0-3x1.jpg?width=2050', 'https://image-resizer-cloud-api.akamaized.net/image/588B1465-B0A7-4E4E-8912-12BBA80350A4/0-16x9.jpg?width=240', '/project/trailers/Telugu trailers/Masooda.mp4', 'http://localhost/project/programs/Masooda.php', 'http://localhost/project/movies/Telugu/Masooda%20(2022)%20Telugu%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', '', 0),
(7, 'Mem Famous', 2023, 147, 'A high-energy, youthful journey filled with amazing moments of friendship, love and family, set in a beautiful and colorful village', 8.2, 'https://images-eu.ssl-images-amazon.com/images/S/pv-target-images/0569e395f7447c9663f917ce317ace7563877009ff18a5e44c792ed3b5e938ef._RI_TTW_SX1920_FMwebp_.jpg', 'https://m.media-amazon.com/images/S/pv-target-images/c851351cf0423eb897bd8c3cfadfad6fad703e62e12909ae4a6f6d87c37a2057._UR1920,1080_SX480_FMwebp_.jpg', '/project/trailers/Telugu trailers/Mem Famous.mp4', 'http://localhost/project/programs/Mem_Famous.php', 'http://localhost/project/movies/Telugu/Mem%20Famous%20(2023)%20Telugu%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', '', 0),
(8, 'Ugram', 2023, 146, 'Inspector Shiva Kumar is an impetuous policeman, which often gets him into trouble at work and at home. However, the consequences of his actions are starting to catch up with him.', 7.6, 'https://images-eu.ssl-images-amazon.com/images/S/pv-target-images/e8b69c5627ff011bf9b0f1e3b1d7baca3718ccfebe4efc59c995c0bac163a486._RI_TTW_SX1920_FMwebp_.jpg', 'https://m.media-amazon.com/images/S/pv-target-images/4f0d69e7c58464d09dc2b99dfa72a84d8b386087267f549f5013fa7d97f30e38._UR1920,1080_SX480_FMwebp_.jpg', '/project/trailers/Telugu trailers/Ugram.mp4', 'http://localhost/project/programs/Ugram.php', 'http://localhost/project/movies/Telugu/Ugram%20(2023)%20Telugu%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', '', 0),
(9, 'Veera Simha Reddy ', 2023, 169, 'Jai sets out to reunite with his estranged father, Veera, after learning about his parents\' difficult past. However, trouble arises when Veera\'s complicated reality catches up with Jai.', 4.9, 'https://img10.hotstar.com/image/upload/f_auto/sources/r1/cms/prod/4963/1474963-i-c484075786f0', 'https://img10.hotstar.com/image/upload/f_auto,q_90,w_384/sources/r1/cms/prod/5005/1475005-h-cbc263847ee9', '/project/trailers/Telugu trailers/Veera Simha Reddy.mp4', 'http://localhost/project/programs/Veera_Simha_Reddy.php', 'http://localhost/project/movies/Telugu/Veera%20Simha%20Reddy%20(2023)%20Telugu%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'https://img10.hotstar.com/image/upload/f_auto,h_136/sources/r1/cms/prod/4962/1474962-t-70fe58de5f1a', 0),
(10, 'Virupaksha', 2023, 142, 'Mysterious deaths occur in a village due to an unknown person\'s occult practises. The whole town is afraid, and the problems continue as they search for the one responsible.', 7.3, 'https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABUo4OFXkjEKKAZq4A3dbXr0qvHlEgEJfsNRMg8kACMb_4qdJRNiGQXIFx7Wwu1cLD6AWUCSdJ25AoRGZVmsrOeaG5MrN2UstGw5w.jpg?r=e46', 'https://occ-0-4875-2186.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABdCo3pDKuMy2mhqi9JFDlxRqpvzrvCAdmBuI-6miXb4gbYIcN1ktcM_iJUPHwSkObYXcTChP5Gf3USwsj_cKMICZRzJaYnlwruqF.jpg?r=718', '/project/trailers/Telugu trailers/Virupaksha.mp4', 'http://localhost/project/programs/Virupaksha.php', 'http://localhost/project/movies/Telugu/Virupaksha%20(2023)%20Telugu%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'https://occ-0-6245-2164.1.nflxso.net/dnm/api/v6/LmEnxtiAuzezXBjYXPuDgfZ4zZQ/AAAABfB5QclA1jFcVkB0XSqAUTocVK-ONaw0ELOC1q1LQuMwqRl1bOjvkZGOlkJE4oqqQAveBGAsz6RJFTaJAZJxp8dDMo0-jbLD9VCtca1cKEUq.png?r=8dc', 0),
(11, 'Waltair Veerayya', 2023, 157, 'Desperate to catch a fugitive criminal, a police officer turns to the formidable Waltair Veerayya, a fisherman with a sinister side, for help.', 6.3, 'https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABTafDYeJA30mMkfTSENUMFV_BeszEW3GIOmhXMa8_likH6LsLBuNuwff6KizeQFNOtzRINOGRx4-pZ0xJ_mAHENWaSobGF455SyH.jpg?r=4e1', 'https://occ-0-4875-2186.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABUtGRTCjqjJ-ut1_1xYS8kWaL_bfOOrx9xXZ1W26nZI_g6Z3haX_Jo-miBjpiTStnZ1bsfVYtHqRgSRZ8y6jabYgBLovmdKXS48X.jpg?r=780', '/project/trailers/Telugu trailers/Waltair Veerayya.mp4', 'http://localhost/project/programs/Waltair_Veerayya.php', 'http://localhost/project/movies/Telugu/Waltair%20Veerayya%20(2023)%20Telugu%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'https://occ-0-6245-2164.1.nflxso.net/dnm/api/v6/LmEnxtiAuzezXBjYXPuDgfZ4zZQ/AAAABdU0SqhquB0-OsA9hqO6Rn8_xIv708i1LJgm1RaK7dlOnZKeS0ZIzFvJ2QzXhLEGGPEAorKAfXBlONecL-hw52Xhd7YogJUfnxvY2ULhosMO.png?r=2a9', 1),
(12, 'Guardians of the Galaxy 3', 2023, 150, 'Still reeling from the loss of Gamora, Peter Quill must rally his team to defend the universe and protect one of their own. If the mission is not completely successful, it could possibly lead to the end of the Guardians as we know them.', 8.1, 'https://img10.hotstar.com/image/upload/f_auto/sources/r1/cms/prod/7475/1557475-i-e371b3e8fdb4', 'https://img10.hotstar.com/image/upload/f_auto/sources/r1/cms/prod/7475/1557475-i-e371b3e8fdb4', 'http://localhost/project/trailers/English%20trailers/VID_20230731_180348_547.mp4', 'http://localhost/project/programs/Guardians_of_the_Galaxy3.php', 'http://localhost/project/movies/English/Guardians%20of%20the%20Galaxy%203%20(2023)%20English%20IMAX%20HQ%20HDRip%20-%20x264%20-%20AAC%20-%20550MB%20-%20ESub.mkv', 'https://img10.hotstar.com/image/upload/f_auto,h_136/sources/r1/cms/prod/7474/1557474-t-c7f82f7f99df', 1),
(13, 'John Wick 4', 2023, 189, 'With the price on his head ever increasing, legendary hit man John Wick takes his fight against the High Table global as he seeks out the most powerful players in the underworld, from New York to Paris to Japan to Berlin.', 7.8, 'https://images-eu.ssl-images-amazon.com/images/S/pv-target-images/9ae9c9fcd70a6550eb29642bd998890d0408ffc5b3f8f92a97c854278f3e8510._RI_TTW_SX1920_FMwebp_.jpg', 'https://m.media-amazon.com/images/S/pv-target-images/beb125c9ebabf12d1dc236832a97ccb50f9b166bd32d3999e54b3744cd9c2019._UR1920,1080_SX480_FMwebp_.jpg', 'http://localhost/project/trailers/English%20trailers/VID_20230731_180630_759.mp4', 'http://localhost/project/programs/John_Wick4.php', 'http://localhost/project/movies/English/John%20Wick%204%20(2023)%20English%20HQ%20HDRip%20-%20450MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'https://images-eu.ssl-images-amazon.com/images/S/pv-target-images/18096149da66bcc9fdf60c79cb507ff6ba28d2e4df4d2b35c3fc7d1b5e6ce9fc._SX600_FMpng_.png', 1),
(14, 'The Flash', 2023, 147, 'Worlds collide when the Flash uses his superpowers to travel back in time to change the events of the past. However, when his attempt to save his family inadvertently alters the future, he becomes trapped in a reality in which General Zod has returned, threatening annihilation. ', 7.1, 'https://m.media-amazon.com/images/A/V1/Iok92lnFOmOqXbH1UzhiW3xGbnXQAW2EYIpQBoeAoSpBvZ4ApolCfJ/5T5icbYcKauCbBZ6zisxZbEP2QIZwfrOHCkzdo0hudq8AIcMAgxsDvYwjtrtxnXdzELgit597Kis2GEVH+0hbADWiC8gIqC6j6AtN6/jL1YjzcOkMr0Pbg7ZVQ25Dac9HCQcJatSVqAAZYI/Rf3O2w68JLkl+bOsmGM0XFW03bcBrrpK8JQVZxPjjK1nPZw+YudXMP+QhWXq3xDKuE9VSW9DKbdLz2SCUSsmVCYpliUA7iliWqHacCp7zhG41F+6yLCHEYYwS4aZGWLg7izmkktAeZuuyVQ==_/eyJidWNrZXQiOiJwdi1zdGFybGlnaHQtY29udGVudGRiLW1lZGlhLXByb2QtdXMtZWFzdC0xIiwib2JqZWN0S2V5IjoidXBsb2Fkcy8yMDIzLTA2LTI3LzZkNTAxMzJkLTJlNzAtNDI0Ni05OTQ3LTRjNDYyYTIxYmQ0OS5qcGciLCJleHBpcmVEYXRlVGltZSI6IjI1MjQ2MzY3OTkiLCJzdHlsZUNvZGUiOiJfU1gxNjAwXyJ9', 'https://m.media-amazon.com/images/S/pv-target-images/59001cca2123f3e17be35da8217f355fa79710d80514038c61d13c00c5f5d701._UR1920,1080_SX480_FMwebp_.jpg', 'http://localhost/project/trailers/English%20trailers/VID_20230731_180953_327.mp4', 'http://localhost/project/programs/The_Flash.php', 'http://localhost/project/movies/English/The%20Flash%20(2023)%20English%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', '', 0),
(15, 'Transformers Rise of the Beasts', 2023, 127, 'Optimus Prime and the Autobots take on their biggest challenge yet. When a new threat capable of destroying the entire planet emerges, they must team up with a powerful faction of Transformers known as the Maximals to save Earth.', 6.2, 'https://images-eu.ssl-images-amazon.com/images/S/pv-target-images/e435cc97cf56ce28e501ffa80117777a6311985be5d15fa0aa2274a3ef125114._RI_TTW_SX1920_FMwebp_.jpg', 'https://m.media-amazon.com/images/S/pv-target-images/78f6f7fe5cf0cdcca96df893855b946fff6b8d11fc8eff0eb4b80ce24209fc1e._UR1920,1080_SX480_FMwebp_.jpg', 'http://localhost/project/trailers/English%20trailers/VID_20230731_181139_149.mp4', 'http://localhost/project/programs/Transformers_Rise_of_the_Beasts.php', 'http://localhost/project/movies/English/Transformers%20Rise%20of%20the%20Beasts%20(2023)%20English%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'https://m.media-amazon.com/images/S/sonata-images-prod/PV_IN_TVOD_TRANSFORMERSRISEOFTHEBEASTS_119/18031918-ca0a-4ffc-a871-80fe19b15940._AC_SX1000_FMwebp_.png', 0),
(16, 'Bhediya', 2023, 141, 'Bhaskar finds himself changing after being bitten by a wolf in the forests of Arunachal. While Bhaskar begins to transform into a shape-shifting werewolf, he and his friends look for answers amid many twists, turns and laughs.', 6.8, 'https://v3img.voot.com/resizeMedium,w_960,h_540/v3Storage/assets/bhediya-16x9-1687776267402.jpg?imformat=chrome', 'https://v3img.voot.com/resizeMedium,w_960,h_540/v3Storage/assets/bhediya-16x9-1687776267402.jpg?imformat=chrome', 'http://localhost/project/trailers/hindhi%20trailers/VID_20230802_184348_284.mp4', 'http://localhost/project/programs/Bhediya.php', 'http://localhost/project/movies/Hindi/Bhediya%20(2023)%20Hindi%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC.mkv', '', 0),
(17, 'Faraaz ', 2023, 111, 'Police spring into action when Islamic terrorists take hostages inside a Bangladesh restaurant.', 5, 'https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABfUB_FRZ9AQC4ib9D2pIlStg9c3cITIgct2XjYgSRlViGnReC9mCiT7WeT4FuCePsB4inW_O32FaK26Vxfxv3k1UFRCWCw_2Wt4q.jpg?r=a7d', 'https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABbUkWP3k7QukZEkwTAz4bypv90T8yuAB8Ec8wZ_woLJ2AXHiQ30rQrx3fP29Q9fPVlqhad2UWxwlYeOU00HaLRvRmkKaC6koqYq8.jpg?r=21f', 'http://localhost/project/trailers/hindhi%20trailers/VID_20230802_184352_799.mp4', 'http://localhost/project/programs/Faraaz.php', 'http://localhost/project/movies/Hindi/Faraaz%20(2023)%20Hindi%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/LmEnxtiAuzezXBjYXPuDgfZ4zZQ/AAAABYAG12HrgmVYTHklv5uLT4AfzatOM8lpB5uvIV6wbFVcq0qKU8yc5733pMe8qAo8AjaxiCe87Lv_eX2-RSuIV3iswMIVm0eKVW7wNcWbcmVp.png?r=e0b', 0),
(18, 'Gehraiyaan ', 2022, 188, 'Alisha runs her own yoga studio while seeking investors to back her yoga phone app. Flashbacks reveal a wealthy and idyllic childhood with extended family. For reasons she can\'t understand, her father dragged her and her mother away from that happiness into a life of isolation and need, which somehow led to her mother\'s suicide. ', 5.8, 'https://images-eu.ssl-images-amazon.com/images/S/pv-target-images/e1f4642a46d9ff43cf128de5d1ad80a70d0b4891fd0f834092d3409053f81795._RI_TTW_SX1920_FMwebp_.png', 'https://m.media-amazon.com/images/S/pv-target-images/0c30e45cfd643a57c63a330a93a2b919a6482c64a2477ba37bb7b32add5d4f78._UR1920,1080_SX480_FMwebp_.jpg', 'http://localhost/project/trailers/hindhi%20trailers/VID_20230802_184357_990.mp4', 'http://localhost/project/programs/Gehraiyaan.php', 'http://localhost/project/movies/Hindi/Gehraiyaan%20(2022)%20Hindi%20HQ%20HDRip%20-%20380MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'https://images-eu.ssl-images-amazon.com/images/S/pv-target-images/6acbccde899ee98a04379582cba0c8e228e2a7b1d83d0624c3887c402853ee58._SX600_FMpng_.png', 0),
(19, 'Govinda Naam Mera ', 2022, 171, 'Govinda Waghmare, who is stuck with his controlling wife, seeks love from his gorgeous girlfriend which leads him into a chaotic situation.\r\n', 6.5, 'https://img10.hotstar.com/image/upload/f_auto/sources/r1/cms/prod/2982/1432982-i-f7eed05199e8', 'https://img10.hotstar.com/image/upload/f_auto/sources/r1/cms/prod/2978/1432978-h-90572dd255c9', 'http://localhost/project/trailers/hindhi%20trailers/VID_20230802_184443_699%20-%20Trim.mp4', 'http://localhost/project/programs/Govinda_Naam_Mera.php', 'http://localhost/project/movies/Hindi/Govinda%20Naam%20Mera%20(2022)%20Hindi%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'https://img10.hotstar.com/image/upload/f_auto,h_136/sources/r1/cms/prod/2980/1432980-t-5d46b0e136a5', 0),
(20, 'IB 71', 2023, 117, 'Indian intelligence officers embark on a high-stakes mission to counter two enemy nations\' conspiracy. If things go sideways, they must think on their feet to avoid a disaster', 7.3, 'https://img10.hotstar.com/image/upload/f_auto/sources/r1/cms/prod/3375/1543375-i-ddf54333d74a', 'https://img10.hotstar.com/image/upload/f_auto,q_90,w_384/sources/r1/cms/prod/8347/1548347-h-212b6a009cff', 'http://localhost/project/trailers/hindhi%20trailers/VID_20230802_184452_098.mp4', 'http://localhost/project/programs/IB_71.php', 'http://localhost/project/movies/Hindi/IB%2071%20(2023)%20Hindi%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'https://img10.hotstar.com/image/upload/f_auto,h_136/sources/r1/cms/prod/3374/1543374-t-83927684c98e', 0),
(21, 'Kisi Ka Bhai Kisi Ki Jaan ', 2023, 138, 'Bhaijaan, the eldest brother among three others, refuses to get married in order to maintain harmony in his family. However, when his brothers conspire for him to fall in love, complications arise.', 6.7, 'https://akamaividz2.zee5.com/image/upload/w_223,h_125,c_scale,f_webp,q_auto:eco/resources/0-0-1z5379692/list/1170x658withlogoe5047fe045ca4e2e8a01a9815f17dd36.jpg', 'https://akamaividz2.zee5.com/image/upload/w_223,h_125,c_scale,f_webp,q_auto:eco/resources/0-0-1z5379692/list/1170x658withlogoe5047fe045ca4e2e8a01a9815f17dd36.jpg', 'http://localhost/project/trailers/hindhi%20trailers/VID_20230802_184457_490.mp4', 'http://localhost/project/programs/Kisi_Ka_Bhai_Kisi_Ki_Jaan.php', 'http://localhost/project/movies/Hindi/Kisi%20Ka%20Bhai%20Kisi%20Ki%20Jaan%20(2023)%20Hindi%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC.mkv', '', 0),
(22, 'Shehzada ', 2023, 144, 'The life of the nonchalant Bantu is turned upside down when he discovers that a dastardly father switched him at birth and that he is actually the heir to a billionaire.\r\n', 4.5, 'https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABVOEqN8cBgeQZZGLP6q6z5uyYCO-bXZzkrokC3c-HT8YtqwRrnov-cYAAcSh6LwtWR_IxpWPGmCkEZ0zdYtmTbZxlyjiHleaSX3P.jpg?r=a90', 'https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABaKn9KmauS6MmnP7WLAHdu6DUGE5LQT7xsNtskH9uqBYCeuE8t-UgHc_1xUxjFGxuyXp9XIPGnCzWpZw4316wQ8xnKrAK9dmzUHi.jpg?r=9f9', 'http://localhost/project/trailers/hindhi%20trailers/VID_20230802_184501_587.mp4', 'http://localhost/project/programs/Shehzada.php', 'http://localhost/project/movies/Hindi/Shehzada%20(2023)%20Hindi%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/LmEnxtiAuzezXBjYXPuDgfZ4zZQ/AAAABUfpbQvLDYIgFKe6Gh0urGBY8emIgfgU6zqs5PM6Vryx6H9XUvJeeaNrdCwByXyMxVGZwAQqp8-jKi1EYkLjSbdblrXc7sxuDByVqTV9ujhu.png?r=aea', 0),
(23, 'Uunchai ', 2022, 163, 'Three retired friends embark on a trek to Everest Base Camp to fulfil their dying friend\'s last wish. What begins as an adventure soon turns into a personal journey towards spiritual enlightenment.\r\n', 7, 'https://i1.netflixmovies.com/dibsl9ebc/image/upload/w_1920,h_800,c_fill,g_faces,q_62/ekfslxywqc1p3p3tyfy6.jpg', 'https://akamaividz2.zee5.com/image/upload/w_223,h_125,c_scale,f_webp,q_auto:eco/resources/0-0-1z5277822/list/1170x658withlogo88d85d2300554054824fc8bb56b0a762fce4097177fa42328323577b7dcb2d3e.jpg', 'http://localhost/project/trailers/hindhi%20trailers/VID_20230802_184505_407.mp4', 'http://localhost/project/programs/Uunchai.php', 'http://localhost/project/movies/Hindi/Uunchai%20(2022)%20Hindi%c2%a0HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', '', 0),
(24, 'Vikram Vedha ', 2022, 151, 'Vikram, a pragmatic policeman, and his partner Simon are on the hunt to capture Vedha. When Vedha voluntarily surrenders, he offers to tell Vikram a story, throwing Vikram\'s life into disarray.\r\n', 7.1, 'https://v3img.voot.com/v3Storage/assets/vikram-vedha-16x9-1687776189351.jpg', 'https://v3img.voot.com/resizeMedium,w_810,h_1080/v3Storage/assets/vv_02_3x4-1689152074768.jpg?imformat=chrome', 'http://localhost/project/trailers/hindhi%20trailers/VID_20230802_184542_944.mp4', 'http://localhost/project/programs/Vikram_Vedha.php', 'http://localhost/project/movies/Hindi/Vikram%20Vedha%20(2022)%20Hindi%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC.mkv', '', 0),
(25, '2018', 2023, 148, 'People from all walks of life face catastrophic consequences during devastating floods in 2018. The people of Kerala work together to survive the calamity.\r\n', 8.5, 'https://images.slivcdn.com/videoasset_images/2018_2_detail_coverbg1.jpg?w=1349&q=high&fr=webp', 'https://images.slivcdn.com/videoasset_images/2018_set4_hindi_multilang_5june_portrait_thumb.jpg?w=172&q=high&fr=webp', 'http://localhost/project/trailers/Malayalam%20trailers/VID_20230731_182239_245.mp4', 'http://localhost/project/programs/2018.php', 'http://localhost/project/movies/Malayalam/2018%20(2023)%20Malayalam%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', '', 0),
(26, 'Christy', 2023, 140, 'A teenage boy falls in love with an older woman, but even with the age difference, unexpected changes between them causes issues.', 4.7, 'https://images.slivcdn.com/videoasset_images/christy3_detail_coverbg_rev.jpg?w=1349&q=high&fr=webp', 'https://images.slivcdn.com/videoasset_images/christy_set5_kannada_9march_portrait_thumb.jpg?w=172&q=high&fr=webp', 'http://localhost/project/trailers/Malayalam%20trailers/VID_20230731_184458_676.mp4', 'http://localhost/project/programs/Christy.php', 'http://localhost/project/movies/Malayalam/Christy%20(2023)%20Malayalam%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', '', 0),
(27, 'Iratta', 2023, 110, 'After a cop is found dead, a policeman\'s investigation sparks a chilling search for the truth connected to his estranged twin and their fraught past.', 7.7, 'https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABa6gPcElX1j64QxA79EPdoX_Zi1GTtAm1XkA9VO5U1w1trZnic6MLWd7P6qj5hs63DyT3EO3-MSkhudIIJMH9CbDpaLF9U0UJEYK.jpg?r=3c0', 'https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABecYLgzxM6Hz8dOEXRvj8AaN9pncvrZt5eKh7BmBwxYpl4ex8CHE9UIqEyGRam6145gCY0xiDe4TEW7BW5mxDuCu9ZM0bo_7vgVU.jpg?r=9eb', 'http://localhost/project/trailers/Malayalam%20trailers/VID_20230731_182420_008.mp4', 'http://localhost/project/programs/Iratta.php', 'http://localhost/project/movies/Malayalam/Iratta%20(2023)%20Malayalam%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/LmEnxtiAuzezXBjYXPuDgfZ4zZQ/AAAABVlQERLcD4eWYRBL7h05B0A-pRrDnHpwXWSR7QK8CcIkjOsNB15E2QXQ6mYfm7rwIcLl94v8OixyV_HUSh5rLSgHhFsagMmDWSXlKfdMwfdr.png?r=8c7', 0),
(28, 'Mike', 2022, 102, 'In envy of men\'s freedom to live with lesser rules, Sarah sets off to receive sex reassignment surgery. Along the way, she meets Antony, an angry young man, who quickly becomes her companion.', 5.7, 'https://images-eu.ssl-images-amazon.com/images/S/pv-target-images/9ddcec10d1c16dcf908fc8da8dc383516ddac9159e76936608b231982968850c._RI_TTW_SX1920_FMwebp_.png', 'https://m.media-amazon.com/images/S/pv-target-images/e5eb23233f3151378dc9dee9b71e674298c8da673225f4214fba4990b532eb7b._UR1920,1080_SX480_FMwebp_.jpg', 'http://localhost/project/trailers/Malayalam%20trailers/VID_20230731_182420_008.mp4', 'http://localhost/project/programs/Mike.php', 'http://localhost/project/movies/Malayalam/Mike%20(2022)%20Malayalam%20HQ%20HDRip%20-%20700MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', '', 0),
(29, 'Extraction ', 2020, 118, 'A black-market mercenary who has nothing to lose is hired to rescue the kidnapped son of an imprisoned international crime lord. But in the murky underworld of weapons dealers and drug traffickers, an already deadly mission approaches the impossible.', 6.8, 'https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABVqcLQpf6mxvyIfcaadFQhph_iN1tmNUjmHziE4hXp6HsNL0ViweqrNA3JUqdX_ukwGIWZzli2G4cry-1PYBFRk22_a8C2LG86Cj.jpg?r=1ef', 'https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABYptBb3HC1V-dGUwcuyo5jDdt4LkXM-d5Waw__RCyNrF99wIrqyfF1qDX8t8F0CGv6dHsUUPYzKxzLgy85l-rIv7aZuA2exHvKtcrKskWnCWezlP4xrsIf8hYXRxLHQsbmKnVg.jpg?r=362', 'http://localhost/project/trailers/English%20trailers/VID_20230731_174403_770.mp4', 'http://localhost/project/programs/Extraction.php', 'http://localhost/project/movies/English/Extraction%20(2020)%20HQ%20HDRip%20-%20x264%20-%20%5bTam%20+%20Tel%20+%20Hin%5d%20-%20AAC%20-%20450MB%20-%20ESub.mkv', 'http://localhost/project/img/extraction.png', 1),
(30, 'Fast X', 2023, 142, 'Over many missions and against impossible odds, Dom Toretto and his family have outsmarted and outdriven every foe in their path. Now, they must confront the most lethal opponent they\'ve ever faced. Fueled by revenge, a terrifying threat emerges from the shadows of the past to shatter Dom\'s world and destroy everything -- and everyone -- he loves', 5.8, 'https://akamaividz2.zee5.com/image/upload/w_382,h_215,c_scale,f_webp,q_auto:eco/resources/0-0-1z5383547/list/1170x658withlogo29cd58e01ec94c3a931e983cd20fc7d3.jpg', 'https://akamaividz2.zee5.com/image/upload/w_382,h_215,c_scale,f_webp,q_auto:eco/resources/0-0-1z5383547/list/1170x658withlogo29cd58e01ec94c3a931e983cd20fc7d3.jpg', 'http://localhost/project/trailers/English%20trailers/VID_20230731_175935_251.mp4', 'http://localhost/project/programs/FAST_X.php', 'http://localhost/project/movies/English/Fast%20X%20%20(2023)%20HQ%20HDRip%20-%20x264%20-%20AAC%20-%20%5bTam%20+%20Tel%20+%20Hin%5d%20-%20500MB%20-%20ESub.mkv', '', 0),
(31, 'Extraction 2 ', 2023, 123, 'Back from the brink of death, commando Tyler Rake embarks on a dangerous mission to save a ruthless gangster\'s imprisoned family.\r\n', 7, 'https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABdYkHwZZYZ4cYPZ20OWPg4dml1YWoI5TnX0ALc_4rHEkyvokTlifJKLD2U_ypf2wNi9Jc6Jigr53o-0syqQFrB0TLUIk1A-k1U3z.jpg?r=720', 'https://occ-0-2087-2164.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABUDce2Gf-EQX9G6WhINKt8F88Wt2uJCjjaRcFo4HD0kBXSVlGPNr-FM3uxbS1Iyr8IfJPY4Fz3b0P_AagFneErWUc2t7UaUCnwwwkjdYSQh-Kls00YLlkixgs4u3-gwnOZxMYg.jpg?r=a98', 'http://localhost/project/trailers/English%20trailers/VID_20230731_175525_225.mp4', 'http://localhost/project/programs/Extraction_2.php', 'http://localhost/project/movies/English/Extraction%202%20(2023)%20HQ%20HDRip%20-%20x264%20-%20%5bTam%20+%20Tel%20+%20Hin%5d%20-%20450MB%20-%20ESub.mkv', 'http://localhost/project/img/extraction2.png', 0),
(32, 'Jigarthanda', 2014, 164, 'An aspiring director tries his best to make a violent gangster film. His discreet attempts to research a gangster fail miserably. He discovers a mole in the gang and things go out of control for him.', 8.2, 'https://img10.hotstar.com/image/upload/f_auto/sources/r1/cms/prod/8660/1418660-i-ed8c7db6feb6', 'https://img10.hotstar.com/image/upload/f_auto/sources/r1/cms/prod/old_images/MOVIE/8059/1000058059/1000058059-h', 'http://localhost/project/trailers/Tamil%20trailers/VID_20230802_185610_592.mp4', 'http://localhost/project/programs/Jigarthanda.php', 'http://localhost/project/movies/Tamil/Jigarthanda%20(2014)%20Tamil%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'https://img10.hotstar.com/image/upload/f_auto,h_136/sources/r1/cms/prod/8663/1418663-t-fe12b4bb231e', 0),
(33, 'Ponniyin Selvan Part 1', 2022, 166, 'Vandiyathevan sets out to cross the Chola land to deliver a message from the crown prince Aditha Karikalan. Meanwhile, Kundavai attempts to establish political peace as vassals and petty chieftains plot against the throne.', 7.6, 'https://images-eu.ssl-images-amazon.com/images/S/pv-target-images/c26a03cca5c23a1e3e074c849a1e7cdd191c8be1e560d1681ab93260941f7e3b._RI_TTW_SX1920_FMwebp_.png', 'https://m.media-amazon.com/images/S/pv-target-images/7e25f103214ea7116adf106e3762b591a2b46469377bc310b5983dbeb623a0f4._UR1920,1080_SX480_FMwebp_.jpg', 'http://localhost/project/trailers/Tamil%20trailers/VID_20230802_185740_843.mp4', 'http://localhost/project/programs/Ponniyin_Selvan_Part1.php', 'http://localhost/project/movies/Tamil/Ponniyin%20Selvan%20Part%201%20(2022)%20Tamil%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', '', 0),
(34, 'Ponniyin Selvan 2', 2023, 165, 'In the wake of his brother Ponniyin Selvan\'s presumed death, Aditha Karikalan of the Chola dynasty rallies his kingdom and tries to resist threats on all sides.', 7.3, 'https://images-eu.ssl-images-amazon.com/images/S/pv-target-images/9d5f6fa97986a7e554519350627497a53d75895db80f96e8e68f6f5c92fc29e8._RI_TTW_SX1920_FMwebp_.jpg', 'https://m.media-amazon.com/images/S/pv-target-images/be9868f98002d30704b7843bc3691bf8f8b1a373844bf5e9ff85cf192e5421f9._UR1920,1080_SX480_FMwebp_.jpg', 'http://localhost/project/trailers/Tamil%20trailers/VID_20230802_185633_824.mp4', 'http://localhost/project/programs/Ponniyin_Selvan_Part2.php', 'http://localhost/project/movies/Tamil/Ponniyin%20Selvan%202%20(2023)%20Tamil%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', '', 0),
(35, 'Raangi', 2022, 121, 'Online channel reporter Thaiyal Nayagi finds a Facebook account belonging to her niece and encounters 17-year-old Aalim from Libya chatting with her. The FBI wants to bring Aalim into their custody using Thaiyal Nayagi and her niece as bait.', 4.7, 'https://occ-0-6247-2186.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABczzGizBkbvTtvl7kftdkXqXGCJhgxPSvQSdLvzF8LVntjoXl6V7sbS2WxgGYYzozFqiA4buH-ZO6DROj5P1Y9JsKF2Hej82DDI8.jpg?r=fb0', 'https://occ-0-6247-2186.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABUWjXatW4Y5CuygFPfhuN8OXF91yW8-5VrlWOqy_4GF4IzjPYpbZTnhzNhInrtUlPDMO-edvS3XylQ2DWshfvtnd6GXzbIabUAlW.jpg?r=deb', 'http://localhost/project/trailers/Tamil%20trailers/VID_20230802_185755_531.mp4', 'http://localhost/project/programs/Raangi.php', 'http://localhost/project/movies/Tamil/Raangi%20(2022)%20Tamil%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/LmEnxtiAuzezXBjYXPuDgfZ4zZQ/AAAABVtMk3UCgolA-dbAfBJHbkw5fNhdL8U6byY2P-o5DRR64ACygtpkm__0JaaeBKv3RPuzmFlfDxMlAIYDnA5XiulyrTehLQ3wxhRRIhH_0Q9N.png?r=305', 0),
(36, 'Sardar', 2022, 163, 'A disgraced spy returns from a long exile to stop the launch of a suspicious water company which plans to spread toxic water across the country.', 7.5, 'https://image-resizer-cloud-api.akamaized.net/image/606E5D62-2E10-41D8-97DE-221295191390/0-16x9.jpg?width=2050', 'https://image-resizer-cloud-api.akamaized.net/image/606E5D62-2E10-41D8-97DE-221295191390/0-16x9.jpg?width=240', 'http://localhost/project/trailers/Tamil%20trailers/VID_20230802_185801_534.mp4', 'http://localhost/project/programs/Sardar.php', 'http://localhost/project/movies/Tamil/Sardar%20(2022)%20Tamil%c2%a0Proper%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', '', 0),
(37, 'Vaathi', 2023, 134, 'Assigned to a government school as a teacher, a young professor encounters several obstacles in his fight against people trying to turn the sacred pillar of education into a business.', 7.3, 'https://occ-0-6247-2186.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABRnhNI_fiw-H-lq2aQnU5bTxB8VAFomh3gBI40lZnatDAfXigMqnNFq1QAO_SkyxyqtqfVFcOVwHz2tBVLsYKyVqpO1G9c454zke.jpg?r=49f', 'https://occ-0-6247-2186.1.nflxso.net/dnm/api/v6/6gmvu2hxdfnQ55LZZjyzYR4kzGk/AAAABaXgM-zxrDMJntJ2tOrcW3H6syuQqqyEU9N_u84ZVNqP8LtZe5cc93P8ks4zgsgNtyPl4lDk6nTmsSzHcM652UzZ_uDE62OKYPYk.jpg?r=6ee', 'http://localhost/project/trailers/Tamil%20trailers/VID_20230802_185806_742.mp4', 'http://localhost/project/programs/Vaathi.php', 'http://localhost/project/movies/Tamil/Vaathi%20(2023)%20Tamil%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', 'https://occ-0-2085-2164.1.nflxso.net/dnm/api/v6/LmEnxtiAuzezXBjYXPuDgfZ4zZQ/AAAABYJdMpYm4xevD5tXh-8k_1_UEBQabrDeKtz5f4IkEfCEDEKaZDPxb9Z3HztnXRSoEDxPIZX3apTr194Ldr6kxsz50NRBEB2JDCwwAuHAzXiO.png?r=0f1', 0),
(38, 'Veeran', 2023, 155, 'After Veeranor, a 15-year-old boy, goes into a short coma, he recovers and learns about his superpowers of lightning and mind control. With the help of his powers, he handles a villain and avoids an electric blast.', 6, 'https://images-eu.ssl-images-amazon.com/images/S/pv-target-images/d3dd04c73a8c5f7bbdd34aa05fd7365fd95073064416c9669f4a4ede083202f9._RI_TTW_SX1920_FMwebp_.jpg', 'https://m.media-amazon.com/images/S/pv-target-images/8a46f80cbf2eaceca25285029f75560252c653d7f40cd9e7d919578fad54f00b._UR1920,1080_SX480_FMwebp_.jpg', 'http://localhost/project/trailers/Tamil%20trailers/VID_20230802_185813_279.mp4', 'http://localhost/project/programs/Veeran.php', 'http://localhost/project/movies/Tamil/Veeran%20(2023)%20Tamil%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', '', 0),
(39, 'Viduthalai', 2023, 152, 'A policeman is conflicted between duty and morality when his department begins a brutal campaign to capture a local activist.', 8.3, 'https://akamaividz2.zee5.com/image/upload/w_382,h_215,c_scale,f_webp,q_auto:eco/resources/0-0-1z5351469/list/1170x658withlogof738bacc4b7a455d9a29b49204585720.jpg', 'https://akamaividz2.zee5.com/image/upload/w_382,h_215,c_scale,f_webp,q_auto:eco/resources/0-0-1z5351469/list/1170x658withlogof738bacc4b7a455d9a29b49204585720.jpg', 'http://localhost/project/trailers/Tamil%20trailers/VID_20230802_185817_716.mp4', 'http://localhost/project/programs/Viduthalai.php', 'http://localhost/project/movies/Tamil/Viduthalai%20(2023)%20Tamil%20Proper%20HQ%20HDRip%20-%20400MB%20-%20x264%20-%20AAC%20-%20ESub.mkv', '', 0),
(40, 'Tenet', 2020, 150, 'The scientist believes that there is a war coming as objects are being streamed back in time from the future. Tracking the metal from which the reversed bullets are made, the Protagonist infiltrates the compound of an Indian billionaire in Mumbai with the aid of Neil (Robert Pattinson), a British intelligence agent.', 7.3, 'https://images-eu.ssl-images-amazon.com/images/S/pv-target-images/9a1ca4abdcb0543620d492bcfb68a3b6614d2dc7e92581c9162b648bb9b96160._RI_TTW_SX1920_FMwebp_.jpg', 'https://m.media-amazon.com/images/S/pv-target-images/046307db4e7684ae32c1990bb985c9ec616077ed4f2fc89617ec5a41acec90e1._UR1920,1080_SX480_FMwebp_.jpg', 'http://localhost/project/trailers/English%20trailers/TENET%20-%20NEW%20TRAILER.mp4', 'http://localhost/project/programs/Tenet.php', 'http://localhost/project/movies/English/Tenet-(2020)-BRRip-Telugu-Tam-Dual-Org-Auds-Single-Part-HQ-ESub.mp4', 'https://occ-0-6245-2164.1.nflxso.net/dnm/api/v6/LmEnxtiAuzezXBjYXPuDgfZ4zZQ/AAAABTr_GJW_bup0_jBTijPquKMsOMZPx3avzS3XgPJMqLFGfBPoMv6kiwO3MQr2EosuNp88ahgSQ54TcI4n2EXImc8oRvrq_eJvCGmZNdZakhpc.png?r=266', 0),
(41, 'Pirates of the Caribbean 1', 2003, 133, 'Capt. Jack Sparrow (Johnny Depp) arrives at Port Royal in the Caribbean without a ship or crew. His timing is inopportune, however, because later that evening the town is besieged by a pirate ship. ', 8.2, 'https://img10.hotstar.com/image/upload/f_auto/sources/r1/cms/prod/4278/1374278-i-00cd5b606a7a', 'https://img10.hotstar.com/image/upload/f_auto,q_90,w_384/sources/r1/cms/prod/9347/639347-h', 'http://localhost/project/trailers/English%20trailers/Pirates%20of%20the%20Caribbean%20The%20Curse%20of%20the%20Black%20Pearl%20Trailer%20%231%20-%20Johnny%20Depp%20HD%20(1).mp4', 'http://localhost/project/programs/Pirates_of_the_Caribbean_1.php', 'http://localhost/project/movies/English/Pirates_of_the_Caribbean_The_Curse_of_the_Black_Pearl_(2003).mkv', 'https://img10.hotstar.com/image/upload/f_auto,h_136/sources/r1/cms/prod/4280/1374280-t-4195a0ffe804', 0),
(42, 'pirates of the caribbean 2', 2006, 141, 'When ghostly pirate Davy Jones (Bill Nighy) comes to collect a blood debt, Capt. Jack Sparrow (Johnny Depp) must find a way to avoid his fate lest his soul be damned for all time. ', 7.4, 'https://img10.hotstar.com/image/upload/f_auto/sources/r1/cms/prod/7062/1417062-i-443ee754ed96', 'https://img10.hotstar.com/image/upload/f_auto,q_90,w_384/sources/r1/cms/prod/4335/644335-h', 'http://localhost/project/trailers/English%20trailers/Pirates%20of%20the%20Caribbean_%20Dead%20Man\'s%20Chest%20(2006)%20Trailer%20%231%20_%20Movieclips%20Classic%20Trailers.mp4', 'http://localhost/project/programs/Pirates_of_the_Caribbean_2.php', 'http://localhost/project/movies/English/Pirates_of_the_Caribbean_Dead_Mans_Chest_(2006).mkv', 'https://img10.hotstar.com/image/upload/f_auto,h_136/sources/r1/cms/prod/7064/1417064-t-30b2ba47fc95', 0),
(43, 'pirates of the caribbean 3', 2007, 167, 'Will Turner (Orlando Bloom) and Elizabeth Swann (Keira Knightley) join forces with Capt. Barbossa (Geoffrey Rush) to free Jack Sparrow (Johnny Depp) from Davy Jones\' locker. Meanwhile, the crew of the Flying Dutchman ghost ship wreaks havoc on the Seven Seas', 7.1, 'https://img10.hotstar.com/image/upload/f_auto/sources/r1/cms/prod/1215/1541215-i-45ec1b3ab9fa', 'https://img10.hotstar.com/image/upload/f_auto,q_90,w_384/sources/r1/cms/prod/3768/663768-h', 'http://localhost/project/trailers/English%20trailers/Pirates%20of%20the%20Caribbean_%20At%20World\'s%20End%20(2007)%20Official%20Trailer%20%231%20-%20Johnny%20Depp%20Movie%20HD.mp4', 'http://localhost/project/programs/Pirates_of_the_Caribbean_3.php', 'http://localhost/project/movies/English/Pirates_of_the_Caribbean_At_Worlds_End_(2007).mkv', 'https://img10.hotstar.com/image/upload/f_auto,h_136/sources/r1/cms/prod/1217/1541217-t-c8765a98cb05', 0),
(44, 'pirates of the caribbean 4', 2011, 127, 'The checkered past of Capt. Jack Sparrow (Johnny Depp) catches up to him when he encounters Angelica (Penélope Cruz), a beautiful pirate that Jack once loved then left.', 6.6, 'https://img10.hotstar.com/image/upload/f_auto/sources/r1/cms/prod/7974/1367974-i-4acd6824bc47', 'https://img10.hotstar.com/image/upload/f_auto,q_90,w_384/sources/r1/cms/prod/4350/644350-h', 'http://localhost/project/trailers/English%20trailers/Pirates%20of%20The%20Caribbean%204%20Official%20Trailer.mp4', 'http://localhost/project/programs/Pirates_of_the_Caribbean_4.php', 'http://localhost/project/movies/English/Pirates_of_the_Caribbean_On_Stranger_Tides_(2011).mkv', 'https://img10.hotstar.com/image/upload/f_auto,h_136/sources/r1/cms/prod/7976/1367976-t-c8d139f1c884', 0),
(45, 'pirates of the caribbean 5', 2017, 129, 'Thrust into an all-new adventure, a down-on-his-luck Capt. Jack Sparrow feels the winds of ill-fortune blowing even more strongly when deadly ghost sailors led by his old nemesis, the evil Capt. Salazar, escape from the Devil\'s Triangle.', 6.5, 'https://img10.hotstar.com/image/upload/f_auto/sources/r1/cms/prod/1136/1371136-i-9654229f4d23', 'https://img10.hotstar.com/image/upload/f_auto,q_90,w_384/sources/r1/cms/prod/3766/663766-h', 'http://localhost/project/trailers/English%20trailers/Pirates%20of%20the%20Caribbean_%20Dead%20Men%20Tell%20No%20Tales%20-%20Official%20Trailer.mp4', 'http://localhost/project/programs/Pirates_of_the_Caribbean_5.php', 'http://localhost/project/movies/English/Pirates_of_the_Caribbean_Dead_Men_Tell_No_Tales_(2017).mkv', 'https://img10.hotstar.com/image/upload/f_auto,h_136/sources/r1/cms/prod/1138/1371138-t-b91786ea2bca', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(20) NOT NULL,
  `username` text NOT NULL,
  `userpassword` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `userpassword`, `email`) VALUES
(252673, 'sai', 'sai', '21351cm038@gmail.com'),
(2147483647, 'nithin', 'nihinsai', '21351cm038@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `watchlistid` int(200) NOT NULL,
  `userid` int(200) NOT NULL,
  `movieid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `watchlist`
--

INSERT INTO `watchlist` (`watchlistid`, `userid`, `movieid`) VALUES
(80, 2147483647, 10),
(81, 2147483647, 40),
(82, 2147483647, 43),
(83, 2147483647, 20),
(84, 2147483647, 4),
(85, 2147483647, 11),
(86, 2147483647, 22),
(88, 2147483647, 14),
(89, 2147483647, 41);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`favouriteid`),
  ADD KEY `movieid` (`movieid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genreid`);

--
-- Indexes for table `genrebridge`
--
ALTER TABLE `genrebridge`
  ADD KEY `movieid` (`movieid`),
  ADD KEY `genreid` (`genreid`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`languageid`);

--
-- Indexes for table `languagebridge`
--
ALTER TABLE `languagebridge`
  ADD KEY `movieid` (`movieid`),
  ADD KEY `languageid` (`languageid`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`watchlistid`),
  ADD KEY `movieid` (`movieid`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favourite`
--
ALTER TABLE `favourite`
  MODIFY `favouriteid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `languageid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `watchlistid` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favourite`
--
ALTER TABLE `favourite`
  ADD CONSTRAINT `favourite_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `favourite_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `genrebridge`
--
ALTER TABLE `genrebridge`
  ADD CONSTRAINT `genrebridge_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `genrebridge_ibfk_2` FOREIGN KEY (`genreid`) REFERENCES `genre` (`genreid`);

--
-- Constraints for table `languagebridge`
--
ALTER TABLE `languagebridge`
  ADD CONSTRAINT `languagebridge_ibfk_1` FOREIGN KEY (`languageid`) REFERENCES `language` (`languageid`),
  ADD CONSTRAINT `movieid` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`);

--
-- Constraints for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD CONSTRAINT `watchlist_ibfk_2` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`),
  ADD CONSTRAINT `watchlist_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
