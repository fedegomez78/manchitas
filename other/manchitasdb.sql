-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 12:16 AM
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
-- Database: `manchitasdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `citasmedicas`
--

CREATE TABLE `citasmedicas` (
  `id` int(11) NOT NULL,
  `mascota` varchar(100) NOT NULL,
  `edad` int(11) NOT NULL,
  `idRaza` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `amo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citasmedicas`
--

INSERT INTO `citasmedicas` (`id`, `mascota`, `edad`, `idRaza`, `fecha`, `hora`, `amo`) VALUES
(5, 'Pastelito de frambuesa (no muerde)', 4, 95, '2023-12-03', '20:00:00', 'Eduardo Aguilar'),
(6, 'Destructor de mundos', 8, 80, '2023-12-03', '20:30:00', 'Ernesto Rojas'),
(7, 'Mordiscos', 3, 241, '2023-12-04', '20:00:00', 'Sara Martínez'),
(8, 'Chipi', 2, 143, '2023-12-12', '14:00:00', 'Alberto Torres'),
(9, 'Maximus', 5, 178, '2023-12-06', '10:30:00', 'Julio Bedoya');

-- --------------------------------------------------------

--
-- Table structure for table `razas`
--

CREATE TABLE `razas` (
  `id` int(11) NOT NULL,
  `raza` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `razas`
--

INSERT INTO `razas` (`id`, `raza`) VALUES
(283, 'Abisinio'),
(2, 'Airedale terrier'),
(3, 'Akita'),
(4, 'Akita americano'),
(5, 'Alaskan Husky'),
(6, 'Alaskan malamute'),
(7, 'American Foxhound'),
(8, 'American pit bull terrier'),
(9, 'American staffordshire terrier'),
(284, 'Americano de pelo duro'),
(10, 'Ariegeois'),
(11, 'Artois'),
(285, 'Asiático'),
(12, 'Australian silky terrier'),
(13, 'Australian Terrier'),
(14, 'Austrian Black & Tan Hound'),
(15, 'Azawakh'),
(286, 'Azul ruso'),
(287, 'Balinés'),
(16, 'Balkan Hound'),
(17, 'Basenji'),
(18, 'Basset Alpino (Alpine Dachsbracke)'),
(19, 'Basset Artesiano Normando'),
(20, 'Basset Azul de Gascuña (Basset Bleu de Gascogne)'),
(21, 'Basset de Artois'),
(22, 'Basset de Westphalie'),
(23, 'Basset Hound'),
(24, 'Basset Leonado de Bretaña (Basset fauve de Bretagn'),
(25, 'Bavarian Mountain Scenthound'),
(26, 'Beagle'),
(27, 'Beagle Harrier'),
(28, 'Beauceron'),
(29, 'Bedlington Terrier'),
(288, 'Bengalí'),
(30, 'Bichon Boloñes'),
(31, 'Bichón Frisé'),
(32, 'Bichón Habanero'),
(33, 'Billy'),
(289, 'Birmano'),
(34, 'Black and Tan Coonhound'),
(35, 'Bloodhound (Sabueso de San Huberto)'),
(36, 'Bobtail'),
(290, 'Bobtail japonés de pelo corto'),
(291, 'Bobtail japonés de pelo largo'),
(37, 'Boerboel'),
(292, 'Bombay'),
(38, 'Border Collie'),
(39, 'Border terrier'),
(40, 'Borzoi'),
(41, 'Bosnian Hound'),
(293, 'Bosque de Noruega'),
(294, 'Bosque de Siberia'),
(42, 'Boston terrier'),
(43, 'Bouvier des Flandres'),
(44, 'Boxer'),
(45, 'Boyero de Appenzell'),
(46, 'Boyero de Australia'),
(47, 'Boyero de Entlebuch'),
(48, 'Boyero de las Ardenas'),
(49, 'Boyero de Montaña Bernes'),
(50, 'Braco Alemán de pelo corto'),
(51, 'Braco Alemán de pelo duro'),
(52, 'Braco de Ariege'),
(53, 'Braco de Auvernia'),
(54, 'Braco de Bourbonnais'),
(55, 'Braco de Saint Germain'),
(56, 'Braco Dupuy'),
(57, 'Braco Francés'),
(58, 'Braco Italiano'),
(295, 'Británico de pelo corto'),
(59, 'Broholmer'),
(60, 'Buhund Noruego'),
(61, 'Bull terrier'),
(62, 'Bulldog americano'),
(64, 'Bulldog francés'),
(63, 'Bulldog inglés'),
(65, 'Bullmastiff'),
(296, 'Burmés'),
(297, 'Burmilla'),
(66, 'Ca de Bestiar'),
(67, 'Cairn terrier'),
(68, 'Cane Corso'),
(69, 'Cane da Pastore Maremmano-Abruzzese'),
(70, 'Caniche (Poodle)'),
(71, 'Caniche Toy (Toy Poodle)'),
(72, 'Cao da Serra de Aires'),
(73, 'Cao da Serra de Estrela'),
(74, 'Cao de Castro Laboreiro'),
(75, 'Cao de Fila de Sao Miguel'),
(76, 'Cavalier King Charles Spaniel'),
(77, 'Cesky Fousek'),
(78, 'Cesky Terrier'),
(79, 'Chesapeake Bay Retriever'),
(80, 'Chihuahua'),
(81, 'Chin'),
(298, 'Chinchilla'),
(82, 'Chow Chow'),
(83, 'Cirneco del Etna'),
(84, 'Clumber Spaniel'),
(85, 'Cocker Spaniel Americano'),
(86, 'Cocker Spaniel Inglés'),
(87, 'Collie Barbudo'),
(88, 'Collie de Pelo Cort'),
(89, 'Collie de Pelo Largo'),
(299, 'Cornish rex'),
(90, 'Cotón de Tuléar'),
(91, 'Curly Coated Retriever'),
(300, 'Cymric'),
(92, 'Dálmata'),
(93, 'Dandie dinmont terrier'),
(94, 'Deerhound'),
(301, 'Devon Rex'),
(95, 'Dobermann'),
(96, 'Dogo Argentino'),
(97, 'Dogo de Burdeos'),
(98, 'Dogo del Tibet'),
(99, 'Drentse Partridge Dog'),
(100, 'Drever'),
(101, 'Dunker'),
(102, 'Elkhound Noruego'),
(103, 'Elkhound Sueco'),
(104, 'English Foxhound'),
(105, 'English Springer Spaniel'),
(106, 'English Toy Terrier'),
(107, 'Epagneul Picard'),
(108, 'Eurasier'),
(302, 'Exótico de pelo corto'),
(109, 'Fila Brasileiro'),
(110, 'Finnish Lapphound'),
(111, 'Flat Coated Retriever'),
(303, 'Fold escocés'),
(112, 'Fox terrier de pelo de alambre'),
(113, 'Fox terrier de pelo liso'),
(114, 'Foxhound Inglés'),
(115, 'Frisian Pointer'),
(116, 'Galgo Español'),
(117, 'Galgo húngaro (Magyar Agar)'),
(118, 'Galgo Italiano'),
(119, 'Galgo Polaco (Chart Polski)'),
(120, 'Glen of Imaal Terrier'),
(121, 'Golden Retriever'),
(122, 'Gordon Setter'),
(123, 'Gos dAtura Catalá'),
(124, 'Gran Basset Griffon Vendeano'),
(125, 'Gran Boyero Suizo'),
(126, 'Gran Danés (Dogo Aleman)'),
(127, 'Gran Gascón Saintongeois'),
(128, 'Gran Griffon Vendeano'),
(129, 'Gran Munsterlander'),
(130, 'Gran Perro Japonés'),
(131, 'Grand Anglo Francais Tricoleur'),
(132, 'Grand Bleu de Gascogne'),
(133, 'Greyhound'),
(134, 'Griffon Bleu de Gascogne'),
(135, 'Griffon de pelo duro (Grifón Korthals)'),
(136, 'Griffon leonado de Bretaña'),
(137, 'Griffon Nivernais'),
(138, 'Grifon Belga'),
(139, 'Grifón de Bruselas'),
(140, 'Haldenstoever'),
(141, 'Harrier'),
(142, 'Hokkaido'),
(143, 'Hovawart'),
(144, 'Husky Siberiano (Siberian Husky)'),
(145, 'Ioujnorousskaia Ovtcharka'),
(146, 'Irish Glen of Imaal terrier'),
(147, 'Irish soft coated wheaten terrier'),
(148, 'Irish terrier'),
(149, 'Irish Water Spaniel'),
(150, 'Irish Wolfhound'),
(151, 'Jack Russell terrier'),
(152, 'Jindo Coreano'),
(153, 'Kai'),
(154, 'Keeshond'),
(155, 'Kelpie australiano (Australian kelpie)'),
(156, 'Kerry blue terrier'),
(304, 'Khao Manee'),
(157, 'King Charles Spaniel'),
(158, 'Kishu'),
(159, 'Komondor'),
(160, 'Kooiker'),
(305, 'Korat'),
(161, 'Kromfohrländer'),
(162, 'Kuvasz'),
(163, 'Labrador Retriever'),
(164, 'Lagotto Romagnolo'),
(165, 'Laika de Siberia Occidental'),
(166, 'Laika de Siberia Oriental'),
(167, 'Laika Ruso Europeo'),
(168, 'Lakeland terrier'),
(169, 'Landseer'),
(306, 'Laperm'),
(170, 'Lapphund Sueco'),
(171, 'Lebrel Afgano'),
(172, 'Lebrel Arabe (Sloughi)'),
(173, 'Leonberger'),
(174, 'Lhasa Apso'),
(175, 'Lowchen (Pequeño Perro León)'),
(176, 'Lundehund Noruego'),
(307, 'Maine coon'),
(177, 'Malamute de Alaska'),
(178, 'Maltés'),
(179, 'Manchester terrier'),
(308, 'Manx'),
(180, 'Mastiff'),
(181, 'Mastín de los Pirineos'),
(182, 'Mastín Español'),
(183, 'Mastín Napolitano'),
(309, 'Mau egipcio'),
(1, 'Mestizo-Sin raza'),
(310, 'Mist australiano'),
(184, 'Mudi'),
(311, 'Munchkin'),
(185, 'Norfolk terrier'),
(186, 'Norwich terrier'),
(187, 'Nova Scotia duck tolling retriever'),
(312, 'Ocigato'),
(313, 'Oriental de pelo corto'),
(314, 'Oriental de pelo largo'),
(189, 'Otterhound'),
(188, 'Ovejero alemán'),
(315, 'Persa de pelo largo'),
(316, 'Pixie bob'),
(190, 'Rafeiro do Alentejo'),
(317, 'Ragdoll'),
(191, 'Ratonero Bodeguero Andaluz'),
(192, 'Retriever de Nueva Escocia'),
(193, 'Rhodesian Ridgeback'),
(194, 'Ridgeback de Tailandia'),
(195, 'Rottweiler'),
(196, 'Saarloos'),
(197, 'Sabueso de Hamilton'),
(198, 'Sabueso de Hannover'),
(199, 'Sabueso de Hygen'),
(200, 'Sabueso de Istria'),
(201, 'Sabueso de Posavaz'),
(202, 'Sabueso de Schiller (Schillerstovare)'),
(203, 'Sabueso de Smaland (Smalandsstovare)'),
(204, 'Sabueso de Transilvania'),
(205, 'Sabueso del Tirol'),
(206, 'Sabueso Español'),
(207, 'Sabueso Estirio de pelo duro'),
(208, 'Sabueso Finlandés'),
(209, 'Sabueso Francés blanco y negro'),
(210, 'Sabueso Francés tricolor'),
(211, 'Sabueso Griego'),
(212, 'Sabueso Polaco (Ogar Polski)'),
(213, 'Sabueso Serbio'),
(214, 'Sabueso Suizo'),
(215, 'Sabueso Yugoslavo de Montaña'),
(216, 'Sabueso Yugoslavo tricolor'),
(217, 'Saluki'),
(218, 'Samoyedo'),
(219, 'San Bernardo'),
(220, 'Sarplaninac'),
(318, 'Savannah'),
(221, 'Schapendoes'),
(222, 'Schipperke'),
(223, 'Schnauzer estándar'),
(224, 'Schnauzer gigante (Riesenschnauzer)'),
(225, 'Schnauzer miniatura (Zwergschnauzer)'),
(226, 'Scottish terrier'),
(227, 'Sealyham terrier'),
(228, 'Segugio Italiano'),
(319, 'Selkirk rex'),
(229, 'Seppala Siberiano'),
(230, 'Setter Inglés'),
(231, 'Setter Irlandés'),
(232, 'Setter Irlandés rojo y blanco'),
(233, 'Shar Pei'),
(234, 'Shiba Inu'),
(235, 'Shih Tzu'),
(236, 'Shikoku'),
(320, 'Siamés'),
(321, 'Singapura'),
(237, 'Skye terrier'),
(238, 'Slovensky Cuvac'),
(239, 'Slovensky Kopov'),
(240, 'Smoushond Holandés'),
(322, 'Snowshoe'),
(323, 'Somalí'),
(241, 'Spaniel Alemán (German Wachtelhund)'),
(242, 'Spaniel Azul de Picardía'),
(243, 'Spaniel Bretón'),
(244, 'Spaniel de Campo'),
(245, 'Spaniel de Pont Audemer'),
(246, 'Spaniel Francés'),
(247, 'Spaniel Tibetano'),
(324, 'Sphynx'),
(248, 'Spinone Italiano'),
(249, 'Spítz Alemán'),
(250, 'Spitz de Norbotten (Norbottenspets)'),
(251, 'Spitz Finlandés'),
(252, 'Spitz Japonés'),
(253, 'Staffordshire bull terrier'),
(254, 'Staffordshire terrier americano'),
(255, 'Sussex Spaniel'),
(257, 'Tchuvatch eslovaco'),
(256, 'Teckel (Dachshund)'),
(258, 'Terranova (Newfoundland)'),
(259, 'Terrier australiano (Australian terrier)'),
(260, 'Terrier brasilero'),
(261, 'Terrier cazador alemán'),
(262, 'Terrier checo (Ceský teriér)'),
(263, 'Terrier galés'),
(264, 'Terrier irlandés (Irish terrier)'),
(265, 'Terrier japonés (Nihon teria)'),
(266, 'Terrier negro ruso'),
(267, 'Terrier tibetano'),
(325, 'Tiffanie'),
(326, 'Tonquinés'),
(268, 'Tosa'),
(327, 'Van turco'),
(269, 'Viejo Pastor Inglés'),
(270, 'Viejo Pointer Danés (Old Danish Pointer)'),
(271, 'Vizsla'),
(272, 'Volpino Italiano'),
(273, 'Weimaraner'),
(275, 'Welsh Corgi Cardigan'),
(276, 'Welsh Corgi Pembroke'),
(274, 'Welsh springer spaniel'),
(277, 'Welsh terrier'),
(278, 'West highland white terrier'),
(279, 'Whippet'),
(280, 'Wirehaired solvakian pointer'),
(281, 'Xoloitzcuintle'),
(282, 'Yorkshire Terrier');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `citasmedicas`
--
ALTER TABLE `citasmedicas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idRaza` (`idRaza`);

--
-- Indexes for table `razas`
--
ALTER TABLE `razas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `raza` (`raza`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `citasmedicas`
--
ALTER TABLE `citasmedicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `razas`
--
ALTER TABLE `razas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `citasmedicas`
--
ALTER TABLE `citasmedicas`
  ADD CONSTRAINT `citasmedicas_ibfk_1` FOREIGN KEY (`idRaza`) REFERENCES `razas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
