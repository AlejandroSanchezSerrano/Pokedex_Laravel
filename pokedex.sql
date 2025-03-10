-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-03-2025 a las 22:23:30
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pokedex`
--
CREATE DATABASE IF NOT EXISTS `pokedex` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pokedex`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
CREATE TABLE `pokemon` (
  `id` bigint(20) NOT NULL,
  `num_pokedex` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `tipo1` bigint(20) NOT NULL,
  `tipo2` bigint(20) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pokemon`
--

INSERT INTO `pokemon` (`id`, `num_pokedex`, `nombre`, `tipo1`, `tipo2`, `imagen`) VALUES
(1, '001', 'Bulbasaur', 12, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/001.png'),
(2, '002', 'Ivysaur', 12, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/002.png'),
(3, '003', 'Venusaur', 12, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/003.png'),
(4, '004', 'Charmander', 7, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/004.png'),
(5, '005', 'Charmeleon', 7, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/005.png'),
(6, '006', 'Charizard', 7, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/006.png'),
(7, '007', 'Squirtle', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/007.png'),
(8, '008', 'Wartortle', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/008.png'),
(9, '009', 'Blastoise', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/009.png'),
(10, '010', 'Caterpie', 3, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/010.png'),
(11, '011', 'Metapod', 3, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/011.png'),
(12, '012', 'Butterfree', 3, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/012.png'),
(13, '013', 'Weedle', 3, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/013.png'),
(14, '014', 'Kakuna', 3, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/014.png'),
(15, '015', 'Beedrill', 3, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/015.png'),
(16, '016', 'Pidgey', 11, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/016.png'),
(17, '017', 'Pidgeotto', 11, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/017.png'),
(18, '018', 'Pidgeot', 11, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/018.png'),
(19, '019', 'Rattata', 11, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/019.png'),
(20, '020', 'Raticate', 11, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/020.png'),
(21, '021', 'Spearow', 11, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/021.png'),
(22, '022', 'Fearow', 11, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/022.png'),
(23, '023', 'Ekans', 17, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/023.png'),
(24, '024', 'Arbok', 17, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/024.png'),
(25, '025', 'Pikachu', 5, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/025.png'),
(26, '026', 'Raichu', 5, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/026.png'),
(27, '027', 'Sandshrew', 16, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/027.png'),
(28, '028', 'Sandslash', 16, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/028.png'),
(29, '029', 'Nidoran♀', 17, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/029.png'),
(30, '030', 'Nidorina', 17, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/030.png'),
(31, '031', 'Nidoqueen', 17, 16, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/031.png'),
(32, '032', 'Nidoran♂', 17, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/032.png'),
(33, '033', 'Nidorino', 17, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/033.png'),
(34, '034', 'Nidoking', 17, 16, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/034.png'),
(35, '035', 'Clefairy', 8, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/035.png'),
(36, '036', 'Clefable', 8, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/036.png'),
(37, '037', 'Vulpix', 7, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/037.png'),
(38, '038', 'Ninetales', 7, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/038.png'),
(39, '039', 'Jigglypuff', 8, 11, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/039.png'),
(40, '040', 'Wigglytuff', 8, 11, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/040.png'),
(41, '041', 'Zubat', 17, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/041.png'),
(42, '042', 'Golbat', 17, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/042.png'),
(43, '043', 'Oddish', 12, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/043.png'),
(44, '044', 'Gloom', 12, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/044.png'),
(45, '045', 'Vileplume', 12, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/045.png'),
(46, '046', 'Paras', 3, 12, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/046.png'),
(47, '047', 'Parasect', 3, 12, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/047.png'),
(48, '048', 'Venonat', 3, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/048.png'),
(49, '049', 'Venomoth', 3, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/049.png'),
(50, '050', 'Diglett', 16, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/050.png'),
(51, '051', 'Dugtrio', 16, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/051.png'),
(52, '052', 'Meowth', 11, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/052.png'),
(53, '053', 'Persian', 11, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/053.png'),
(54, '054', 'Psyduck', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/054.png'),
(55, '055', 'Golduck', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/055.png'),
(56, '056', 'Mankey', 10, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/056.png'),
(57, '057', 'Primeape', 10, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/057.png'),
(58, '058', 'Growlithe', 7, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/058.png'),
(59, '059', 'Arcanine', 7, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/059.png'),
(60, '060', 'Poliwag', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/060.png'),
(61, '061', 'Poliwhirl', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/061.png'),
(62, '062', 'Poliwrath', 2, 10, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/062.png'),
(63, '063', 'Abra', 13, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/063.png'),
(64, '064', 'Kadabra', 13, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/064.png'),
(65, '065', 'Alakazam', 13, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/065.png'),
(66, '066', 'Machop', 10, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/066.png'),
(67, '067', 'Machoke', 10, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/067.png'),
(68, '068', 'Machamp', 10, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/068.png'),
(69, '069', 'Bellsprout', 12, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/069.png'),
(70, '070', 'Weepinbell', 12, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/070.png'),
(71, '071', 'Victreebel', 12, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/071.png'),
(72, '072', 'Tentacool', 2, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/072.png'),
(73, '073', 'Tentacruel', 2, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/073.png'),
(74, '074', 'Geodude', 14, 16, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/074.png'),
(75, '075', 'Graveler', 14, 16, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/075.png'),
(76, '076', 'Golem', 14, 16, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/076.png'),
(77, '077', 'Ponyta', 7, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/077.png'),
(78, '078', 'Rapidash', 7, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/078.png'),
(79, '079', 'Slowpoke', 2, 13, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/079.png'),
(80, '080', 'Slowbro', 2, 13, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/080.png'),
(81, '081', 'Magnemite', 5, 1, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/081.png'),
(82, '082', 'Magneton', 5, 1, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/082.png'),
(83, '083', 'Farfetch’d', 11, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/083.png'),
(84, '084', 'Doduo', 11, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/084.png'),
(85, '085', 'Dodrio', 11, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/085.png'),
(86, '086', 'Seel', 2, 9, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/086.png'),
(87, '087', 'Dewgong', 2, 9, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/087.png'),
(88, '088', 'Grimer', 17, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/088.png'),
(89, '089', 'Muk', 17, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/089.png'),
(90, '090', 'Shellder', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/090.png'),
(91, '091', 'Cloyster', 2, 9, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/091.png'),
(92, '092', 'Gastly', 6, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/092.png'),
(93, '093', 'Haunter', 6, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/093.png'),
(94, '094', 'Gengar', 6, 17, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/094.png'),
(95, '095', 'Onix', 14, 16, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/095.png'),
(96, '096', 'Drowzee', 13, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/096.png'),
(97, '097', 'Hypno', 13, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/097.png'),
(98, '098', 'Krabby', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/098.png'),
(99, '099', 'Kingler', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/099.png'),
(100, '100', 'Voltorb', 5, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/100.png'),
(101, '101', 'Electrode', 5, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/101.png'),
(102, '102', 'Exeggcute', 12, 13, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/102.png'),
(103, '103', 'Exeggutor', 12, 13, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/103.png'),
(104, '104', 'Cubone', 16, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/104.png'),
(105, '105', 'Marowak', 16, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/105.png'),
(106, '106', 'Hitmonlee', 10, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/106.png'),
(107, '107', 'Hitmonchan', 10, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/107.png'),
(108, '108', 'Lickitung', 11, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/108.png'),
(109, '109', 'Koffing', 17, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/109.png'),
(110, '110', 'Weezing', 17, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/110.png'),
(111, '111', 'Rhyhorn', 14, 16, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/111.png'),
(112, '112', 'Rhydon', 14, 16, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/112.png'),
(113, '113', 'Chansey', 11, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/113.png'),
(114, '114', 'Tangela', 12, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/114.png'),
(115, '115', 'Kangaskhan', 11, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/115.png'),
(116, '116', 'Horsea', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/116.png'),
(117, '117', 'Seadra', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/117.png'),
(118, '118', 'Goldeen', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/118.png'),
(119, '119', 'Seaking', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/119.png'),
(120, '120', 'Staryu', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/120.png'),
(121, '121', 'Starmie', 2, 13, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/121.png'),
(122, '122', 'Mr. Mime', 13, 8, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/122.png'),
(123, '123', 'Scyther', 3, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/123.png'),
(124, '124', 'Jynx', 9, 13, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/124.png'),
(125, '125', 'Electabuzz', 5, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/125.png'),
(126, '126', 'Magmar', 7, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/126.png'),
(127, '127', 'Pinsir', 3, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/127.png'),
(128, '128', 'Tauros', 11, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/128.png'),
(129, '129', 'Magikarp', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/129.png'),
(130, '130', 'Gyarados', 2, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/130.png'),
(131, '131', 'Lapras', 2, 9, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/131.png'),
(132, '132', 'Ditto', 11, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/132.png'),
(133, '133', 'Eevee', 11, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/133.png'),
(134, '134', 'Vaporeon', 2, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/134.png'),
(135, '135', 'Jolteon', 5, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/135.png'),
(136, '136', 'Flareon', 7, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/136.png'),
(137, '137', 'Porygon', 11, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/137.png'),
(138, '138', 'Omanyte', 14, 2, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/138.png'),
(139, '139', 'Omastar', 14, 2, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/139.png'),
(140, '140', 'Kabuto', 14, 2, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/140.png'),
(141, '141', 'Kabutops', 14, 2, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/141.png'),
(142, '142', 'Aerodactyl', 14, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/142.png'),
(143, '143', 'Snorlax', 11, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/143.png'),
(144, '144', 'Articuno', 9, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/144.png'),
(145, '145', 'Zapdos', 5, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/145.png'),
(146, '146', 'Moltres', 7, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/146.png'),
(147, '147', 'Dratini', 4, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/147.png'),
(148, '148', 'Dragonair', 4, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/148.png'),
(149, '149', 'Dragonite', 4, 18, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/149.png'),
(150, '150', 'Mewtwo', 13, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/150.png'),
(151, '151', 'Mew', 13, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/151.png'),
(152, '255', 'Torchic', 7, NULL, 'https://www.pokemon.com/static-assets/content-assets/cms2/img/pokedex/full/255.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

DROP TABLE IF EXISTS `tipo`;
CREATE TABLE `tipo` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id`, `nombre`) VALUES
(1, 'Acero'),
(2, 'Agua'),
(3, 'Bicho'),
(4, 'Dragon'),
(5, 'Electrico'),
(6, 'Fantasma'),
(7, 'Fuego'),
(8, 'Hada'),
(9, 'Hielo'),
(10, 'Lucha'),
(11, 'Normal'),
(12, 'Planta'),
(13, 'Psiquico'),
(14, 'Roca'),
(15, 'Siniestro'),
(16, 'Tierra'),
(17, 'Veneno'),
(18, 'Volador');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo1` (`tipo1`),
  ADD KEY `tipo2` (`tipo2`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pokemon`
--
ALTER TABLE `pokemon`
  ADD CONSTRAINT `pokemon_ibfk_1` FOREIGN KEY (`tipo1`) REFERENCES `tipo` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pokemon_ibfk_2` FOREIGN KEY (`tipo2`) REFERENCES `tipo` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
