-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 04:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mundial2022`
--

-- --------------------------------------------------------

--
-- Table structure for table `arbitro`
--

CREATE TABLE `arbitro` (
  `idArbitro` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Pais_idPais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `entrenador`
--

CREATE TABLE `entrenador` (
  `idEntrenador` int(11) NOT NULL,
  `nombre_ent` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `pais_idPais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrenador`
--

INSERT INTO `entrenador` (`idEntrenador`, `nombre_ent`, `apellido`, `pais_idPais`) VALUES
(101, 'Félix', 'Sánchez', 1),
(102, 'Gustavo', 'Alfaro', 2),
(103, 'Aliou', 'Cissé', 3),
(104, 'Louis', 'van Gaal', 4),
(105, 'Gareth', 'Southgate', 5),
(106, 'Carlos', 'Queiroz', 6),
(107, 'Gregg', 'Berhalter', 7),
(108, 'Rob', 'Page', 8),
(109, 'Lionel', ' Scaloni', 9),
(110, 'Hervé', ' Renard', 10),
(111, 'Gerardo', ' Daniel Martino', 11),
(112, 'Czesław', ' Michniewicz', 12),
(113, 'Kasper', ' Hjulmand', 13),
(114, 'Jalel', ' Kadri', 14),
(115, 'Didier', 'Deschamps', 15),
(116, 'Graham', ' Arnold', 16),
(117, 'Hansi', 'Flick', 17),
(118, 'Hajime', ' Moriyasu', 18),
(119, 'Luis', 'Martínez', 19),
(120, 'Luis', 'Suárez', 20),
(121, 'Walid', 'Regragui', 21),
(122, 'Zlatko', 'Dalić', 22),
(123, 'Roberto', 'Martínez', 23),
(124, 'John', 'Herdman', 24),
(125, 'Murat', 'Yakin', 25),
(126, 'Rigobert', 'Song', 26),
(127, 'Adenor', 'Leonardo Bacchi', 27),
(128, 'Dragan', 'Stojković', 28),
(129, 'Diego', 'Alonso', 29),
(130, 'Paulo', 'Bento', 30),
(131, 'Otto', 'Addo', 31),
(132, 'Fernando', 'Costa Santos', 32);

-- --------------------------------------------------------

--
-- Table structure for table `estadisticas_jugador`
--

CREATE TABLE `estadisticas_jugador` (
  `Jugador_idJugador` int(11) NOT NULL,
  `goles` int(11) NOT NULL,
  `asistencias` int(11) NOT NULL,
  `rojas` int(11) NOT NULL,
  `amarillas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jugador`
--

CREATE TABLE `jugador` (
  `player_id` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `posicion_idposicion` int(11) NOT NULL,
  `pais_idPais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jugador`
--

INSERT INTO `jugador` (`player_id`, `nombre`, `apellido`, `posicion_idposicion`, `pais_idPais`) VALUES
(1, 'Saad', 'Al', 1, 1),
(2, 'Yousef', 'Hassan', 1, 1),
(3, 'Meshaal', 'Barsham', 1, 1),
(4, 'Ró', 'Ró', 2, 1),
(5, 'Abdelkarim', 'Hassan', 2, 1),
(6, 'Tarek', 'Salman', 2, 1),
(7, 'Ahmed', 'Suhail', 2, 1),
(8, 'Musab', 'Kheder', 2, 1),
(9, 'Homam', 'Ahmed', 2, 1),
(10, 'Bassam', 'Al-Rawi', 2, 1),
(11, 'Boualem', 'Khoukhi', 2, 1),
(12, 'Mohammed', 'Waad', 3, 1),
(13, 'Abdulaziz', 'Hatem', 3, 1),
(14, 'Karim', 'Boudiaf', 3, 1),
(15, 'Abdullah', 'Al-Ahrak', 3, 1),
(16, 'Assim', 'Madibo', 3, 1),
(17, 'Ahmed', 'Alaaeldin', 4, 1),
(18, 'Mohammed', 'Muntari', 4, 1),
(19, 'Hassan', 'Al-Haydos', 4, 1),
(20, 'Akram', 'Afif', 4, 1),
(21, 'Ismaeel', 'Mohammad', 4, 1),
(22, 'Yusuf', 'Abdurisag', 4, 1),
(23, 'Almoez', 'Ali', 4, 1),
(24, 'Gilmar', 'Napa', 1, 2),
(25, 'Alexander', 'Domínguez', 1, 2),
(26, 'Moisés', 'Ramírez', 1, 2),
(27, 'Félix', 'Torres', 2, 2),
(28, 'Robert', 'Arboleda', 2, 2),
(29, 'Byron', 'Castillo', 2, 2),
(30, 'Jhoanner', 'Chávez', 2, 2),
(31, 'Xavier', 'Arreaga', 2, 2),
(32, 'Diego', 'Palacios', 2, 2),
(33, 'José', 'Cifuentes', 3, 2),
(34, 'Romario', 'Ibarra', 3, 2),
(35, 'Kevin', 'Rodríguez', 3, 2),
(37, 'Ángel', 'Mena', 3, 2),
(38, 'Marco', 'Angulo', 3, 2),
(39, 'Sebastián', 'González', 3, 2),
(40, 'Jhegson', 'Méndez', 3, 2),
(41, 'Alan', 'Franco', 3, 2),
(42, 'Djorkaeff', 'Reasco', 4, 2),
(43, 'Michael', 'Estrada', 4, 2),
(44, 'Ayrton', 'Preciado', 4, 2),
(45, 'Gonzalo', 'Plata', 4, 2),
(46, 'Jasper', 'Cillessen', 1, 4),
(47, 'Mark', 'Flekken', 1, 4),
(48, 'Tim', 'Krul', 1, 4),
(49, 'Devyne', 'Rensch', 2, 4),
(50, 'Matthijs', 'de Ligt', 2, 4),
(51, 'Virgil', 'van Dijk', 2, 4),
(52, 'Nathan', 'Aké', 2, 4),
(53, 'Tyrell', 'Malacia', 2, 4),
(54, 'Daley', 'Blind', 2, 4),
(55, 'Denzel', 'Dumfries', 2, 4),
(56, 'Georginio', 'Wijnaldum', 3, 4),
(57, 'Guus', 'Til', 3, 4),
(58, 'Davy', 'Klaassen', 3, 4),
(59, 'Marten', 'de Roon', 3, 4),
(60, 'Ryan', 'Gravenberch', 3, 4),
(61, 'Teun', 'Koopmeiners', 3, 4),
(62, 'Frenkie', 'de Jong', 3, 4),
(63, 'Steven', 'Bergwijn', 4, 4),
(64, 'Arnaut', 'Danjuma', 4, 4),
(65, 'Memphis', 'Depay', 4, 4),
(66, 'Noa', 'Lang', 4, 4),
(67, 'Donyell', 'Malen', 4, 4),
(68, 'Wout', 'Weghorst', 4, 4),
(69, 'Seny', 'Dieng', 1, 3),
(70, 'Édouard', 'Mendy', 1, 3),
(71, 'Alfred', 'Gomis', 1, 3),
(72, 'Fodé', 'Ballo-Touré', 2, 3),
(73, 'Kalidou', 'Koulibaly', 2, 3),
(74, 'Pape', 'Abou Cissé', 2, 3),
(75, 'Youssouf', 'Sabaly', 2, 3),
(76, 'Ismail', 'Jakobs', 2, 3),
(77, 'Formose', 'Mendy', 2, 3),
(78, 'Abdou', 'Diallo', 2, 3),
(79, 'Idrissa', 'Gueye', 3, 3),
(80, 'Nampalys', 'Mendy', 3, 3),
(81, 'Cheikhou', 'Kouyaté', 3, 3),
(82, 'Pathé', 'Ciss', 3, 3),
(83, 'Krépin', 'Diatta', 3, 3),
(84, 'Pape', 'Matar Sarr', 3, 3),
(85, 'Moustapha', 'Name', 3, 3),
(86, 'Mamadou', 'Loum', 3, 3),
(87, 'Pape', 'Gueye', 3, 3),
(88, 'Nicolas', 'Jackson', 4, 3),
(89, 'Boulaye', 'Dia', 4, 3),
(90, 'Sadio', 'Mané', 4, 3),
(91, 'Ismaïla', 'Sarr', 4, 3),
(92, 'Famara', 'Diédhiou', 4, 3),
(93, 'Bamba', 'Dieng', 4, 3),
(94, 'Iliman', 'Ndiaye', 4, 3),
(95, 'Jordan', 'Pickford', 1, 5),
(96, 'Aaron', 'Ramsdale', 1, 5),
(97, 'Nick', 'Pope', 1, 5),
(98, 'Kyle', 'Walker', 2, 5),
(99, 'Luke', 'Shaw', 2, 5),
(100, 'John', 'Stones', 2, 5),
(101, 'Eric', 'Dier', 2, 5),
(102, 'Harry', 'Maguire', 2, 5),
(103, 'Kieran', 'Trippier', 2, 5),
(104, 'Ben', 'White', 2, 5),
(105, 'Conor', 'Coady', 2, 5),
(106, 'Trent', 'Arnold', 2, 5),
(107, 'Declan', 'Rice', 3, 5),
(108, 'Jude', 'Bellingham', 3, 5),
(109, 'Jordan', 'Henderson', 3, 5),
(110, 'Mason', 'Mount', 3, 5),
(111, 'Kalvin', 'Phillips', 3, 5),
(112, 'Conor', 'Gallagher', 3, 5),
(113, 'Harry', 'Kane', 4, 5),
(114, 'Raheem', 'Sterling', 4, 5),
(115, 'Marcus', 'Rashford', 4, 5),
(116, 'Jack', 'Grealish', 4, 5),
(117, 'Bukayo', 'Saka', 4, 5),
(118, 'James', 'Maddison', 4, 5),
(119, 'Phil', 'Foden', 4, 5),
(120, 'Callum', 'Wilson', 4, 5),
(121, 'Matt', 'Turner', 1, 7),
(122, 'Ethan', 'Horvath', 1, 7),
(123, 'Sean', 'Johnson', 1, 7),
(124, 'Jesse', 'González', 1, 7),
(125, 'Sergiño', 'Dest', 2, 7),
(126, 'Julián', 'Araujo', 2, 7),
(127, 'Walker', 'Zimmerman', 2, 7),
(128, 'Antonee', 'Robinson', 2, 7),
(129, 'Aaron', 'Long', 2, 7),
(130, 'Shaquell', 'Moore', 2, 7),
(131, 'Sam', 'Vines', 2, 7),
(132, 'Tim', 'Ream', 2, 7),
(133, 'Mark', 'McKenzie', 2, 7),
(134, 'Cameron', 'Carter-Vickers', 2, 7),
(135, 'Joseph', 'Scally', 2, 7),
(136, 'Tyler', 'Adams', 3, 7),
(137, 'Yunus', 'Musah', 3, 7),
(138, 'Jackson', 'Yueill', 3, 7),
(139, 'Djordje', 'Mihailovic', 3, 7),
(140, 'Weston', 'McKennie', 3, 7),
(141, 'Christian', 'Pulisic', 3, 7),
(142, 'Brenden', 'Aaronson', 3, 7),
(143, 'Lucas', 'de la Torre', 3, 7),
(144, 'Sebastian', 'Lletget', 3, 7),
(145, 'Cristian', 'Roldán', 3, 7),
(146, 'Brandon', 'Servania', 3, 7),
(147, 'Giovanni', 'Reyna', 3, 7),
(148, 'DeAndre', 'Yedlin', 3, 7),
(149, 'Kellyn', 'Acosta', 3, 7),
(150, 'Jesús', 'Ferreira', 4, 7),
(151, 'Jordan', 'Morris', 4, 7),
(152, 'Ulysses', 'Llanez', 4, 7),
(154, 'Jonathan', 'Lewis', 4, 7),
(155, 'Sebastian', 'Soto', 4, 7),
(156, 'Haji', 'Wright', 4, 7),
(157, 'Timothy', 'Weah', 4, 7),
(158, 'Joshua', 'Sargent', 4, 7),
(159, 'Alireza', 'Beiranvand', 1, 6),
(160, 'Mohammadreza', 'Akhbar', 1, 6),
(161, 'Hossein', 'Hosseini', 1, 6),
(162, 'Payam', 'Niazmand', 1, 6),
(163, 'Hossein', 'Kanaani', 2, 6),
(164, 'Morteza', 'Pouraliganji', 2, 6),
(165, 'Saman', 'Fallah', 2, 6),
(166, 'Shoja', 'Khalilzadeh', 2, 6),
(167, 'Sina', 'Abdollah', 2, 6),
(168, 'Abolfazl', 'Jalali', 2, 6),
(169, 'Mohammadmehdi', 'Ahmadi', 2, 6),
(170, 'Ramin', 'Rezaeian', 2, 6),
(171, 'Saman', 'Touranian', 2, 6),
(172, 'Roozbeh', 'Cheshm', 2, 6),
(173, 'Mohammad', 'Ghorbani', 2, 6),
(174, 'Omid', 'Ebrahimi', 3, 6),
(175, 'Mehdi', 'Torabi', 3, 6),
(176, 'Vahid', 'Amiri', 3, 6),
(177, 'Omid', 'Noorafkan', 3, 6),
(178, 'Milad', 'Sarlak', 3, 6),
(179, 'Ahmad', 'Shariatzadeh', 4, 6),
(180, 'Amirali', 'Sadeghi', 4, 6),
(181, 'Mehdi', 'Hashemnejad', 4, 6),
(182, 'Aria', 'Barzegar', 4, 6),
(183, 'Wayne', 'Hennessey', 1, 8),
(184, 'Danny', 'Ward', 1, 8),
(185, 'Adam', 'Davies', 1, 8),
(186, 'Chris', 'Gunter', 2, 8),
(187, 'Connor', 'Roberts', 2, 8),
(188, 'Chris', 'Mepham', 2, 8),
(189, 'Joe', 'Rodon', 2, 8),
(190, 'Neco', 'Williams', 2, 8),
(191, 'Tom', 'Lockyer', 2, 8),
(192, 'Ben', 'Cabango', 2, 8),
(193, 'Ben', 'Davies', 2, 8),
(194, 'Ethan', 'Ampadu', 2, 8),
(195, 'Jonny', 'Williams', 3, 8),
(196, 'Harry', 'Wilson', 3, 8),
(197, 'Joe', 'Morrell', 3, 8),
(198, 'Matthew', 'Smith', 3, 8),
(199, 'Dylan', 'Levitt', 3, 8),
(200, 'Joe', 'Allen', 3, 8),
(201, 'Sorba', 'Thomas', 3, 8),
(202, 'Aaron', 'Ramsey', 3, 8),
(203, 'Rubin', 'Colwill', 3, 8),
(204, 'Gareth', 'Bale', 4, 8),
(205, 'Mark', 'Harris', 4, 8),
(206, 'Kieffer', 'Moore', 4, 8),
(207, 'Brennan', 'Johnson', 4, 8),
(208, 'Daniel', 'James', 4, 8),
(209, 'Franco', 'Armani', 1, 9),
(210, 'Gerónimo', 'Rulli', 1, 9),
(211, 'Gerónimo', 'Rulli', 1, 9),
(212, 'Emiliano', 'Martínez', 1, 9),
(213, 'Juan', 'Musso', 1, 9),
(214, 'Facundo', 'Medina', 2, 9),
(215, 'Juan', 'Foyth', 2, 9),
(216, 'Nicolás', 'Tagliafico', 2, 9),
(217, 'Gonzalo', 'Montiel', 2, 9),
(218, 'Germán', 'Pezzella', 2, 9),
(219, 'Marcos', 'Acuña', 2, 9),
(220, 'Cristian', 'Romero', 2, 9),
(221, 'Nicolás', 'Otamendi', 2, 9),
(222, 'Lisandro', 'Martínez', 2, 9),
(223, 'Nahuel', 'Molina', 2, 9),
(224, 'Leandro', 'Paredes', 3, 9),
(225, 'Roberto', 'Pereyra', 3, 9),
(226, 'Rodrigo', 'Paul', 3, 9),
(227, 'Julián', 'Álvarez', 3, 9),
(228, 'Ángel', 'María', 3, 9),
(229, 'Exequiel', 'Palacios', 3, 9),
(230, 'Enzo', 'Fernández', 3, 9),
(231, 'Alexis', 'Allister', 3, 9),
(232, 'Nicolás', 'González', 3, 9),
(233, 'Papu', 'Gómez', 3, 9),
(234, 'Guido', 'Rodríguez', 3, 9),
(235, 'Lionel', 'Messi', 4, 9),
(236, 'Joaquín', 'Correa', 4, 9),
(237, 'Paulo', 'Dybala', 4, 9),
(238, 'Paulo', 'Dybala', 4, 9),
(239, 'Lautaro', 'Martínez', 4, 9),
(240, 'Alfredo', 'Díaz', 1, 11),
(241, 'Rodolfo', 'Robles', 1, 11),
(242, 'Francisco', 'Ochoa', 1, 11),
(243, 'Néstor', 'Araújo', 2, 11),
(244, 'César', 'Montes', 2, 11),
(245, 'Johan', 'Vásquez', 2, 11),
(246, 'Diego', 'Reyes', 2, 11),
(247, 'Gerardo', 'Arteaga', 2, 11),
(248, 'Emilio', 'Lara', 2, 11),
(249, 'Jorge', 'Sánchez', 2, 11),
(250, 'Héctor', 'Moreno', 2, 11),
(251, 'Hiram', 'Mier', 2, 11),
(252, 'Kevin', 'Álvarez', 2, 11),
(253, 'Jesús', 'Angulo', 2, 11),
(254, 'Edson', 'Álvarez', 3, 11),
(255, 'Orbelín', 'Pineda', 3, 11),
(256, 'Luis', 'Romo', 3, 11),
(257, 'Carlos', 'Rodríguez', 3, 11),
(258, 'Marcelo', 'Flores', 3, 11),
(259, 'Mauricio', 'Isais', 3, 11),
(260, 'Érick', 'Gutiérrez', 3, 11),
(261, 'Héctor', 'Herrera', 3, 11),
(262, 'Andrés', 'Guardado', 3, 11),
(263, 'Heriberto', 'Flores', 3, 11),
(265, 'Jesús', 'Gallardo', 3, 11),
(266, 'Jesús', 'Gallardo', 3, 11),
(267, 'Roberto', 'Alvarado', 3, 11),
(268, 'Uriel', 'Antuna', 3, 11),
(269, 'Luis', 'Chávez', 3, 11),
(270, 'Raúl', 'Jiménez', 4, 11),
(271, 'Alexis', 'Vega', 4, 11),
(272, 'Henry', 'Martín', 4, 11),
(273, 'Diego', 'Lainez', 4, 11),
(274, 'Rogelio', 'Mori', 4, 11),
(275, 'Hirving', 'Lozano', 4, 11),
(276, 'Érick', 'Sánchez', 4, 11),
(277, 'Santiago', 'Giménez', 4, 11),
(278, 'Wojciech', 'Szczęsny', 1, 12),
(279, 'Łukasz', 'Skorupski', 1, 12),
(280, 'Kamil', 'Grabara', 1, 12),
(281, 'Robert', 'Gumny', 2, 12),
(282, 'Matty', 'Cash', 2, 12),
(283, 'Artur', 'Jędrzejczyk', 2, 12),
(284, 'Jakub', 'Kiwior', 2, 12),
(285, 'Jan', 'Bednarek', 2, 12),
(286, 'Michał', 'Karbownik', 2, 12),
(287, 'Mateusz', 'Wieteska', 2, 12),
(288, 'Kamil', 'Glik', 2, 12),
(289, 'Tymoteusz', 'Puchacz', 2, 12),
(290, 'Bartosz', 'Bereszyński', 2, 12),
(291, 'Tomasz', 'Kędziora', 2, 12),
(292, 'Kacper', 'Kozłowski', 3, 12),
(293, 'Grzegorz', 'Krychowiak', 3, 12),
(294, 'Kamil', 'Grosicki', 3, 12),
(295, 'Szymon', 'Żurkowski', 3, 12),
(296, 'Michał', 'Skóraś', 3, 12),
(297, 'Krystian', 'Bielik', 3, 12),
(298, 'Jakub', 'Moder', 3, 12),
(299, 'Przemysław', 'Frankowski', 3, 12),
(300, 'Jakub', 'Kamiński', 3, 12),
(301, 'Damian', 'Szymański', 3, 12),
(302, 'Sebastian', 'Szymański', 3, 12),
(303, 'Piotr', 'Zieliński', 3, 12),
(304, 'Nicola', 'Zalewski', 3, 12),
(305, 'Arkadiusz', 'Milik', 4, 12),
(306, 'Robert', 'Lewandowski', 4, 12),
(307, 'Karol', 'Świderski', 4, 12),
(308, 'Krzysztof', 'Piątek', 4, 12),
(309, 'Dawid', 'Kownacki', 4, 12),
(310, 'Mohammed', 'Al-Rubaie', 1, 10),
(311, 'Mohammed', 'Al-Owais', 1, 10),
(312, 'Amin', 'Mohammedsaleh', 1, 10),
(313, 'Nawaf', 'Dhahi', 1, 10),
(314, 'Hassan', 'Al-Tambakti', 2, 10),
(315, 'Abdulelah', 'Al-Amri', 2, 10),
(316, 'Ali', 'Al-Bulaihi', 2, 10),
(317, 'Mohammed', 'Al-Burayk', 2, 10),
(318, 'Saud', 'Abdullah', 2, 10),
(319, 'Yasser', 'Al-Shahrani', 2, 10),
(320, 'Nasser', 'Al-Dawsari', 2, 10),
(321, 'Ahmed', 'Mohammed', 2, 10),
(322, 'Zakaria', 'Al', 2, 10),
(323, 'Sultan', 'Al-Ghannam', 3, 10),
(324, 'Abdullah', 'Mohammed', 3, 10),
(325, 'Salman', 'Al-Faraj', 3, 10),
(326, 'Abdulelah', 'Saad', 3, 10),
(327, 'Salem', 'Al-Dawsari', 3, 10),
(328, 'Abdullah', 'Otayf', 3, 10),
(329, 'Ali', 'Al-Hassan', 3, 10),
(330, 'Sami', 'Al-Najei', 3, 10),
(331, 'Ayman', 'Salem', 3, 10),
(332, 'Abdullah', 'Tarmin', 3, 10),
(333, 'Turki', 'Al-Ammar', 3, 10),
(334, 'Hattan', 'Bahebri', 3, 10),
(335, 'Mohammed', 'Kanno', 3, 10),
(336, 'Riyadh', 'Sharahili', 3, 10),
(337, 'Firas', 'Al-Buraikan', 4, 10),
(338, 'Saleh', 'Al-Shehri', 4, 10),
(339, 'Fahad', 'Muwallad', 4, 10),
(340, 'Abdulrahman', 'Al-Aboud', 4, 10),
(341, 'Haitham', 'Asiri', 4, 10),
(342, 'Hugo', 'Lloris', 1, 15),
(343, 'Steve', 'Mandanda', 1, 15),
(345, 'Mike', 'Maignan', 1, 15),
(346, 'Alphonse', 'Aréola', 1, 15),
(347, 'Benjamin', 'Pavard', 2, 15),
(348, 'Presnel', 'Kimpembe', 2, 15),
(349, 'William', 'Saliba', 2, 15),
(350, 'Ibrahima', 'Konaté', 2, 15),
(351, 'Raphaël', 'Varane', 2, 15),
(352, 'Jules', 'Koundé', 2, 15),
(353, 'Dayot', 'Upamecano', 2, 15),
(354, 'Lucas', 'Digne', 2, 15),
(355, 'Léo', 'Dubois', 2, 15),
(356, 'Clément', 'Lenglet', 2, 15),
(357, 'Lucas', 'Hernández', 2, 15),
(358, 'Samuel', 'Umtiti', 2, 15),
(359, 'Theo', 'Hernández', 2, 15),
(360, 'Eduardo', 'Camavinga', 3, 15),
(361, 'Paul', 'Pogba', 3, 15),
(362, 'Antoine', 'Griezmann', 3, 15),
(363, 'Aurélien', 'Tchouaméni', 3, 15),
(364, 'Kingsley', 'Coman', 3, 15),
(365, 'Thomas', 'Lemar', 3, 15),
(366, 'Christopher', 'Nkunku', 3, 15),
(367, 'Mattéo', 'Guendouzi', 3, 15),
(368, 'Adrien', 'Rabiot', 3, 15),
(369, 'Florian', 'Thauvin', 3, 15),
(370, 'Youssouf', 'Fofana', 3, 15),
(371, 'Olivier', 'Giroud', 4, 15),
(372, 'Kylian', 'Mbappé', 4, 15),
(373, 'Ousmane', 'Dembélé', 4, 15),
(374, 'Karim', 'Benzema', 4, 15),
(375, 'Wissam', 'Yedder', 4, 15),
(376, 'Kasper', 'Schmeichel', 1, 13),
(377, 'Oliver', 'Christensen', 1, 13),
(378, 'Joachim', 'Andersen', 2, 13),
(379, 'Victor', 'Nelsson', 2, 13),
(380, 'Simon', 'Kjær', 2, 13),
(381, 'Joakim', 'Mæhle', 2, 13),
(382, 'Andreas', 'Christensen', 2, 13),
(383, 'Rasmus', 'Kristensen', 2, 13),
(384, 'Henrik', 'Dalsgaard', 2, 13),
(385, 'Jonas', 'Knudsen', 4, 13),
(386, 'Jens', 'Larsen', 2, 13),
(387, 'Mathias', 'Jensen', 3, 13),
(388, 'Thomas', 'Delaney', 3, 13),
(389, 'Christian', 'Eriksen', 3, 13),
(390, 'Mikkel', 'Damsgaard', 3, 13),
(391, 'Daniel', 'Wass', 3, 13),
(392, 'Pierre-Emile', 'Højbjerg', 3, 13),
(393, 'Martin', 'Braithwaite', 4, 13),
(394, 'Skov', 'Olsen', 4, 13),
(395, 'Kasper', 'Dolberg', 4, 13),
(396, 'Jesper', 'Lindstrøm', 4, 13),
(398, 'Jonas', 'Wind', 4, 13),
(399, 'Yussuf', 'Poulsen', 4, 13),
(400, 'Andreas', 'Cornelius', 4, 13),
(401, 'Mohamed', 'Debchi', 1, 14),
(402, 'Aymen', 'Dahmen', 1, 14),
(403, 'Bechir', 'Saïd', 1, 14),
(405, 'Bilel', 'Ifa', 2, 14),
(406, 'Montassar', 'Talbi', 2, 14),
(407, 'Ali', 'Abdi', 2, 14),
(408, 'Dylan', 'Bronn', 2, 14),
(409, 'Ahmed', 'Ouannes', 2, 14),
(410, 'Ali', 'Maâloul', 2, 14),
(411, 'Omar', 'Rekik', 2, 14),
(412, 'Hamza', 'Mathlouthi', 2, 14),
(413, 'Rami', 'Kaib', 2, 14),
(414, 'Yan', 'Valery', 2, 14),
(415, 'Nader', 'Ghandri', 3, 14),
(416, 'Saîf-Eddine', 'Khaoui', 3, 14),
(417, 'Wahbi', 'Khazri', 3, 14),
(419, 'Ferjani', 'Sassi', 3, 14),
(420, 'Hannibal', 'Mejbri', 3, 14),
(421, 'Ellyes', 'Skhiri', 3, 14),
(422, 'Ghaylène', 'Chaalali', 3, 14),
(424, 'Mohamed', 'Dräger', 3, 14),
(425, 'Naïm', 'Sliti', 3, 14),
(426, 'Chaïm', 'Djebali', 3, 14),
(427, 'Aïssa', 'Laïdouni', 3, 14),
(428, 'Sayfallah', 'Ltaief', 3, 14),
(429, 'Adem', 'Bellamine', 3, 14),
(430, 'Youssef', 'Msakni', 4, 14),
(431, 'Taha', 'Khenissi', 4, 14),
(432, 'Seifeddine', 'Jaziri', 4, 14),
(433, 'Anis', 'Slimane', 4, 14),
(434, 'Issam', 'Jebali', 4, 14),
(435, 'Andrew', 'Redmayne', 1, 16),
(436, 'Mathew', 'Ryan', 1, 16),
(437, 'Daniel', 'Vukovic', 1, 16),
(438, 'Miloš', 'Degenek', 2, 16),
(439, 'Nathaniel', 'Atkinson', 2, 16),
(440, 'Fran', 'Karačić', 2, 16),
(441, 'Bailey', 'Wright', 2, 16),
(442, 'Thomas', 'Deng', 2, 16),
(443, 'Kye', 'Rowles', 2, 16),
(444, 'Harry', 'Souttar', 2, 16),
(445, 'Joel', 'King', 3, 16),
(446, 'Keanu', 'Baccus', 3, 16),
(447, 'Martin', 'Boyle', 3, 16),
(448, 'Ajdin', 'Hrustić', 3, 16),
(449, 'Aaron', 'Mooy', 3, 16),
(450, 'Riley', 'McGree', 3, 16),
(451, 'Aziz', 'Behich', 3, 16),
(452, 'Cameron', 'Devlin', 3, 16),
(453, 'Jackson', 'Irvine', 3, 16),
(454, 'Matthew', 'Leckie', 4, 16),
(455, 'Jamie', 'Maclaren', 4, 16),
(456, 'Awer', 'Mabil', 4, 16),
(457, 'Mitchell', 'Duke', 4, 16),
(458, 'Garang', 'Kuol', 4, 16),
(459, 'Craig', 'Goodwin', 4, 16),
(460, 'Jason', 'Cummings', 4, 16),
(461, 'Brandon', 'Borrello', 4, 16),
(462, 'Robert', 'Sanchez', 1, 19),
(463, 'David', 'Raya', 1, 19),
(464, 'Kepa', 'Arrizabalaga', 1, 19),
(465, 'Unai', 'Simón', 1, 19),
(466, 'César', 'Azpilicueta', 2, 19),
(467, 'Eric', 'García', 2, 19),
(468, 'Íñigo', 'Martínez', 2, 19),
(469, 'Pau', 'Torres', 2, 19),
(470, 'Sergi', 'Roberto', 2, 19),
(471, 'Hugo', 'Guillamón', 2, 19),
(472, 'José', 'Gayà', 2, 19),
(473, 'Aymeric', 'Laporte', 2, 19),
(474, 'Jordi', 'Alba', 2, 19),
(475, 'Daniel', 'Carvajal', 2, 19),
(476, 'Sergio', 'Busquets', 3, 19),
(477, 'Marcos', 'Llorente', 3, 19),
(478, 'Koke', 'Koke', 3, 19),
(479, 'Gavi', '-', 3, 19),
(480, 'Rodri', '-', 3, 19),
(481, 'Carlos', 'Soler', 3, 19),
(482, 'Dani', 'Olmo', 3, 19),
(483, 'Pedri', '-', 3, 19),
(484, 'Nico', 'Williams', 4, 19),
(485, 'Álvaro', 'Morata', 4, 19),
(486, 'Abel', 'Ruiz', 4, 19),
(487, 'Ferran', 'Torres', 4, 19),
(488, 'Ansu', 'Fati', 4, 19),
(489, 'Yeremy', 'Pino', 4, 19),
(490, 'Marco', 'Asensio', 4, 19),
(491, 'Isco', '-', 4, 19),
(492, 'Pablo', 'Sarabia', 4, 19),
(493, 'Manuel', 'Neuer', 1, 17),
(494, 'Kevin', 'Trapp', 1, 17),
(495, 'Sven', 'Ullrich', 1, 17),
(496, 'Ter', 'Stegen', 1, 17),
(497, 'Antonio', 'Rüdiger', 2, 17),
(498, 'David', 'Raum', 2, 17),
(499, 'Christian', 'Günter', 2, 17),
(500, 'Matthias', 'Ginter', 2, 17),
(501, 'Thilo', 'Kehrer', 2, 17),
(502, 'Niklas', 'Süle', 2, 17),
(503, 'Lukas', 'Klostermann', 2, 17),
(504, 'Niklas', 'Stark', 2, 17),
(505, 'Armel', 'Bella-Kotchap', 2, 17),
(506, 'Nico', 'Schlotterbeck', 2, 17),
(507, 'Joshua', 'Kimmich', 3, 17),
(508, 'Florian', 'Neuhaus', 3, 17),
(509, 'Kai', 'Havertz', 3, 17),
(510, 'Leon', 'Goretzka', 3, 17),
(511, 'Serge', 'Gnabry', 3, 17),
(512, 'Karim', 'Adeyemi', 3, 17),
(513, 'Nico', 'Schulz', 3, 17),
(514, 'Jamal', 'Musiala', 3, 17),
(515, 'Jonas', 'Hofmann', 3, 17),
(516, 'Leroy', 'Sané', 3, 17),
(517, 'Mario', 'Götze', 3, 17),
(518, 'Julian', 'Brandt', 3, 17),
(519, 'İlkay', 'Gündoğan', 3, 17),
(520, 'Youssoufa', 'Moukoko', 4, 17),
(521, 'Thomas', 'Müller', 4, 17),
(522, 'Eiji', 'Kawashima', 1, 18),
(523, 'Shūichi', 'Gonda', 1, 18),
(524, 'Daniel', 'Yabuki', 1, 18),
(525, 'Miki', 'Yamane', 2, 18),
(526, 'Ko', 'Itakura', 2, 18),
(527, 'Naomichi', 'Ueda', 2, 18),
(528, 'Yuto', 'Nagatomo', 2, 18),
(529, 'Takehiro', 'Tomiyasu', 2, 18),
(530, 'Hiroki', 'Sakai', 2, 18),
(531, 'Maya', 'Yoshida', 2, 18),
(532, 'Hiroki', 'Ito', 2, 18),
(533, 'Shogo', 'Taniguchi', 3, 18),
(534, 'Wataru', 'Endo', 3, 18),
(535, 'Gaku', 'Shibasaki', 3, 18),
(536, 'Take', 'Kubo', 3, 18),
(537, 'Hidemasa', 'Morita', 3, 18),
(538, 'Daichi', 'Kamada', 3, 18),
(539, 'Kaoru', 'Mitoma', 3, 18),
(540, 'Ritsu', 'Dōan', 3, 18),
(541, 'Daizen', 'Maeda', 3, 18),
(542, 'Shoya', 'Nakajima', 4, 18),
(543, 'Takumi', 'Minamino', 4, 18),
(544, 'Junya', 'Ito', 4, 18),
(545, 'Ao', 'Tanaka', 4, 18),
(546, 'Takuma', 'Asano', 4, 18),
(547, 'Ayase', 'Ueda', 4, 18),
(548, 'Yuki', 'Soma', 4, 18),
(549, 'Shuto', 'Machino', 4, 18),
(550, 'Bryan', 'Segura', 1, 20),
(551, 'Keylor', 'Navas', 1, 20),
(552, 'Esteban', 'Alvarado', 1, 20),
(553, 'Patrick', 'Sequeira', 1, 20),
(554, 'Daniel', 'Chacón', 2, 20),
(555, 'Juan', 'Vargas', 2, 20),
(556, 'Keysher', 'Fuller', 2, 20),
(557, 'Ian', 'Smith', 2, 20),
(558, 'Óscar', 'Duarte', 2, 20),
(559, 'Bryan', 'Oviedo', 2, 20),
(560, 'Francisco', 'Calvo', 2, 20),
(561, 'Carlos', 'Martínez', 2, 20),
(562, 'Cristian', 'Gamboa', 2, 20),
(563, 'Bernald', 'Alfaro', 2, 20),
(564, 'Kendall', 'Waston', 2, 20),
(565, 'Douglas', 'López', 2, 20),
(566, 'Ronald', 'Matarrita', 2, 20),
(567, 'Celso', 'Borges', 3, 20),
(568, 'Randall', 'Leal', 3, 20),
(569, 'Jewison', 'Bennette', 3, 20),
(570, 'Johan', 'Venegas', 3, 20),
(571, 'Gerson', 'Torres', 3, 20),
(572, 'Ricardo', 'Blanco', 3, 20),
(573, 'Youstin', 'Gómez', 3, 20),
(574, 'Yeltsin', 'Tejeda', 3, 20),
(575, 'Brandon', 'Aguilera', 3, 20),
(576, 'Alvaro', 'Mata', 3, 20),
(577, 'Anthony', 'Contreras', 4, 20),
(578, 'Francisco', 'Rodríguez', 4, 20),
(579, 'Bryan', 'Ruíz', 4, 20),
(580, 'Mayron', 'George', 4, 20),
(581, 'Joel', 'Campbell', 4, 20),
(582, 'Roan', 'Gordo', 4, 20),
(583, 'Anthony', 'González', 4, 20),
(584, 'Thibaut', 'Courtois', 1, 23),
(585, 'Simon', 'Mignolet', 1, 23),
(586, 'Koen', 'Casteels', 1, 23),
(587, 'Matz', 'Sels', 1, 23),
(588, 'Toby', 'Alderweireld', 2, 23),
(589, 'Arthur', 'Theate', 2, 23),
(590, 'Zeno', 'Debast', 2, 23),
(591, 'Jan', 'Vertonghen', 2, 23),
(592, 'Thomas', 'Meunier', 2, 23),
(593, 'Wout', 'Faes', 2, 23),
(594, 'Axel', 'Witsel', 3, 23),
(595, 'Kevin', 'Bruyne', 3, 23),
(596, 'Youri', 'Tielemans', 3, 23),
(597, 'Eden', 'Hazard', 3, 23),
(598, 'Yannick', 'Carrasco', 3, 23),
(599, 'Charles', 'Ketelaere', 3, 23),
(600, 'Dries', 'Mertens', 3, 23),
(601, 'Amadou', 'Onana', 3, 23),
(602, 'Leander', 'Dendoncker', 3, 23),
(603, 'Hans', 'Vanaken', 3, 23),
(604, 'Timothy', 'Castagne', 3, 23),
(605, 'Loïs', 'Openda', 4, 23),
(606, 'Romelu', 'Lukaku', 4, 23),
(607, 'Thorgan', 'Hazard', 3, 23),
(608, 'Leandro', 'Trossard', 4, 23),
(609, 'Jeremy', 'Doku', 4, 23),
(610, 'Michy', 'Batshuayi', 4, 23),
(611, 'Dominik', 'Livaković', 1, 22),
(612, 'Ivo', 'Grbić', 1, 22),
(613, 'Ivica', 'Ivušić', 1, 22),
(614, 'Simon', 'Sluga', 1, 22),
(615, 'Josip', 'Stanišić', 2, 22),
(616, 'Borna', 'Barišić', 2, 22),
(617, 'Josip', 'Šutalo', 2, 22),
(618, 'Martin', 'Erlić', 2, 22),
(619, 'Karlo', 'Bartolec', 2, 22),
(620, 'Dejan', 'Lovren', 2, 22),
(621, 'Filip', 'Benković', 2, 22),
(622, 'Borna', 'Sosa', 2, 22),
(623, 'Antonio', 'Milić', 2, 22),
(624, 'Joško', 'Gvardiol', 2, 22),
(625, 'Domagoj', 'Vida', 2, 22),
(626, 'Josip', 'Juranović', 2, 22),
(627, 'Ivan', 'Perišić', 3, 22),
(628, 'Lovro', 'Majer', 3, 22),
(629, 'Mateo', 'Kovačić', 3, 22),
(630, 'Andrej', 'Kramarić', 3, 22),
(631, 'Luka', 'Sučić', 3, 22),
(632, 'Luka', 'Modrić', 3, 22),
(633, 'Marcelo', 'Brozović', 3, 22),
(634, 'Nikola', 'Vlašić', 3, 22),
(635, 'Mario', 'Pašalić', 3, 22),
(636, 'Kristijan', 'Jakić', 3, 22),
(637, 'Mijo', 'Caktaš', 3, 22),
(638, 'Marko', 'Livaja', 4, 22),
(639, 'Bruno', 'Petković', 4, 22),
(640, 'Ante', 'Budimir', 4, 22),
(641, 'Mislav', 'Oršić', 4, 22),
(642, 'Bono', '-', 1, 21),
(643, 'Munir', 'Mohamedi', 1, 21),
(644, 'Ahmed', 'Tagnaouti', 1, 21),
(645, 'Achraf', 'Hakimi', 2, 21),
(646, 'Zou', 'Feddal', 2, 21),
(647, 'Nayef', 'Aguerd', 2, 21),
(648, 'Jawad', 'Yamiq', 2, 21),
(649, 'Badr', 'Benoun', 2, 21),
(650, 'Yahia', 'Attiat-Allah', 2, 21),
(651, 'Noussair', 'Mazraoui', 3, 21),
(652, 'Sofyan', 'Amrabat', 3, 21),
(653, 'Romain', 'Ghanem', 3, 21),
(654, 'Hakim', 'Ziyech', 3, 21),
(655, 'Azzedine', 'Ounahi', 3, 21),
(656, 'Abdelhamid', 'Sabiri', 3, 21),
(657, 'Ilias', 'Chair', 3, 21),
(658, 'Selim', 'Amallah', 3, 21),
(659, 'Sofiane', 'Boufal', 3, 21),
(660, 'Amine', 'Harit', 3, 21),
(661, 'Achraf', 'Dari', 3, 21),
(662, 'Yahya', 'Jabrane', 3, 21),
(663, 'Ilyas', 'Chaira', 4, 21),
(664, 'Zakaria', 'Aboukhlal', 4, 21),
(665, 'Abde', '-', 4, 21),
(666, 'En-Nesyri', '-', 3, 21),
(667, 'Walid', 'Cheddira', 3, 21),
(668, 'Walid', 'Azarou', 3, 21),
(669, 'Dayne', 'Clair', 1, 24),
(670, 'Maxime', 'Crépeau', 1, 24),
(671, 'James', 'Pantemis', 1, 24),
(672, 'Thomas', 'Hasal', 1, 24),
(673, 'Marco', 'Carducci', 1, 24),
(674, 'Alistair', 'Johnston', 2, 24),
(675, 'Raheem', 'Edwards', 2, 24),
(676, 'Manjrekar', 'James', 2, 24),
(677, 'Kamal', 'Miller', 2, 24),
(678, 'Joel', 'Waterman', 2, 24),
(679, 'Zachary', 'Brault-Guillard', 2, 24),
(680, 'Doneil', 'Henry', 2, 24),
(681, 'Lukas', 'MacNaughton', 2, 24),
(682, 'Samuel', 'Piette', 3, 24),
(683, 'Liam', 'Fraser', 3, 24),
(684, 'Ismaël', 'Jordan', 3, 24),
(685, 'Mark-Anthony', 'Kaye', 3, 24),
(686, 'Jay', 'Chapman', 3, 24),
(687, 'Mathieu', 'Choinière', 3, 24),
(688, 'Jonathan', 'Osorio', 3, 24),
(689, 'Richie', 'Laryea', 3, 24),
(690, 'Jacob', 'Shaffelburg', 4, 24),
(691, 'Lucas', 'Cavallini', 4, 24),
(692, 'Jayden', 'Nelson', 4, 24),
(693, 'Ayomide', 'Akinola', 4, 24),
(694, 'Alisson', 'Becke', 1, 27),
(695, 'Weverton', '-', 1, 27),
(696, 'Ederson', '-', 1, 27),
(697, 'Danilo', '-', 2, 27),
(698, 'Thiago', 'Silva', 2, 27),
(699, 'Rodrigo', 'Caio', 2, 27),
(700, 'Marquinhos', '-', 2, 27),
(701, 'Alex', 'Telles', 2, 27),
(702, 'Alex', 'Sandro', 2, 27),
(703, 'Dani', 'Alves', 2, 27),
(704, 'Éder', 'Militão', 2, 27),
(705, 'Gabriel', 'Magalhães', 2, 27),
(706, 'Bremer', '-', 2, 27),
(707, 'Casemiro', '-', 3, 27),
(708, 'Lucas', 'Paquetá', 3, 27),
(709, 'David', 'Neres', 3, 27),
(710, 'Arthur', '-', 3, 27),
(711, 'Fred', '-', 3, 27),
(712, 'Éverton', 'Ribeiro', 3, 27),
(713, 'Fabinho', '-', 3, 27),
(714, 'Bruno', 'Guimarães', 3, 27),
(715, 'Allan', '-', 3, 27),
(716, 'Antony', '-', 3, 27),
(717, 'Vinícius', 'Júnior', 3, 27),
(718, 'Matheus', 'Cunha', 4, 27),
(719, 'Richarlison', '-', 4, 27),
(720, 'Neymar', '-', 4, 27),
(721, 'Gabriel', 'Jesus', 4, 27),
(722, 'Raphinha', '-', 4, 27),
(723, 'Gabriel', 'Martinelli', 4, 27),
(724, 'Pedro', '-', 4, 27),
(725, 'Rodrygo', '-', 4, 27),
(726, 'Yann', 'Sommer', 1, 25),
(727, 'Jonas', 'Omlin', 1, 25),
(728, 'Yvon', 'Mvogo', 1, 25),
(729, 'Philipp', 'Köhn', 1, 25),
(730, 'Gregor', 'Kobel', 1, 25),
(731, 'Loris', 'Benito', 2, 25),
(732, 'Silvan', 'Widmer', 2, 25),
(733, 'Nico', 'Elvedi', 2, 25),
(734, 'Manuel', 'Akanji', 2, 25),
(735, 'Ricardo', 'Rodríguez', 2, 25),
(736, 'Steven', 'Zuber', 2, 25),
(737, 'Eray', 'Cömert', 2, 25),
(738, 'Fabian', 'Schär', 2, 25),
(739, 'Denis', 'Zakaria', 3, 25),
(740, 'Breel', 'Embolo', 3, 25),
(741, 'Granit', 'Xhaka', 3, 25),
(742, 'Renato', 'Steffen', 3, 25),
(743, 'Michel', 'Aebischer', 3, 25),
(744, 'Djibril', 'Sow', 3, 25),
(745, 'Christian', 'Fassnacht', 3, 25),
(746, 'Remo', 'Freuler', 3, 25),
(747, 'Ruben', 'Vargas', 3, 25),
(748, 'Pajtim', 'Kasami', 3, 25),
(749, 'Ardon', 'Jashari', 3, 25),
(750, 'Fabian', 'Frei', 3, 25),
(751, 'Edimilson', 'Fernandes', 3, 25),
(752, 'Kevin', 'Mbabu', 3, 25),
(753, 'Haris', 'Seferović', 4, 25),
(754, 'Albian', 'Ajeti', 4, 25),
(755, 'Noah', 'Okafor', 4, 25),
(756, 'Xherdan', 'Shaqiri', 4, 25),
(757, 'Marko', 'Dmitrović', 1, 28),
(758, 'Predrag', 'Rajković', 1, 28),
(759, 'Vanja', 'Milinković-Savić', 1, 28),
(760, 'Strahinja', 'Pavlović', 2, 28),
(761, 'Srđan', 'Babić', 2, 28),
(762, 'Nikola', 'Milenković', 2, 28),
(763, 'Miloš', 'Veljković', 2, 28),
(764, 'Stefan', 'Mitrović', 2, 28),
(765, 'Strahinja', 'Eraković', 2, 28),
(766, 'Filip', 'Mladenović', 3, 28),
(767, 'Uroš', 'Račić', 3, 28),
(768, 'Ivan', 'Ilić', 3, 28),
(769, 'Nemanja', 'Gudelj', 3, 28),
(770, 'Dušan', 'Tadić', 3, 28),
(771, 'Nemanja', 'Maksimović', 3, 28),
(772, 'Andrija', 'Živković', 3, 28),
(773, 'Mijat', 'Gaćinović', 3, 28),
(774, 'Saša', 'Lukić', 3, 28),
(775, 'Filip', 'Kostić', 3, 28),
(776, 'Sergej', 'Milinković-Savić', 3, 28),
(777, 'Filip', 'Đuričić', 3, 28),
(778, 'Darko', 'Lazović', 3, 28),
(779, 'Marko', 'Grujić', 3, 28),
(780, 'Aleksandar', 'Mitrović', 4, 28),
(781, 'Luka', 'Jović', 4, 28),
(782, 'Dušan', 'Vlahović', 4, 28),
(783, 'Nemanja', 'Radonjić', 4, 28),
(784, 'Simon', 'Ngapandouetnbu', 1, 26),
(785, 'Devis', 'Epassy', 1, 26),
(786, 'André', 'Onana', 1, 26),
(787, 'Nicolas', 'Nkoulou', 2, 26),
(788, 'Christopher', 'Wooh', 2, 26),
(789, 'Nouhou', 'Tolo', 2, 26),
(790, 'Olivier', 'Mbaizo', 2, 26),
(791, 'Collins', 'Fai', 2, 26),
(792, 'Jean-Charles', 'Castelletto', 2, 26),
(793, 'Enzo', 'Ebosse', 2, 26),
(794, 'Nicolas', 'Ngamaleu', 3, 26),
(795, 'André', 'Anguissa', 3, 26),
(796, 'Olivier', 'Ntcham', 3, 26),
(797, 'Karl', 'Toko-Ekambi', 3, 26),
(798, 'Pierre', 'Kunde', 3, 26),
(799, 'Martin', 'Hongla', 3, 26),
(800, 'Samuel', 'Gouet', 3, 26),
(801, 'Gaël', 'Ondoua', 3, 26),
(802, 'Vincent', 'Aboubakar', 4, 26),
(803, 'Souaibou', 'Marou', 4, 26),
(804, 'Christian', 'Bassogog', 4, 26),
(805, 'Jerome', 'Mbekeli', 4, 26),
(806, 'Eric', 'Choupo-Moting', 4, 26),
(807, 'Jean-Pierre', 'Nsame', 4, 26),
(808, 'Bryan', 'Mbeumo', 4, 26),
(809, 'Rui', 'Patrício', 1, 32),
(810, 'José', 'Sá', 1, 32),
(811, 'Diogo', 'Costa', 1, 32),
(812, 'Diogo', 'Dalot', 2, 32),
(813, 'Pepe', '-', 2, 32),
(814, 'Rúben', 'Dias', 2, 32),
(815, 'Raphaël', 'Guerreiro', 2, 32),
(816, 'Nuno', 'Mendes', 2, 32),
(817, 'Mário', 'Rui', 2, 32),
(818, 'João', 'Cancelo', 2, 32),
(819, 'João', 'Palhinha', 3, 32),
(820, 'Bruno', 'Fernandes', 3, 32),
(821, 'Ricardo', 'Horta', 3, 32),
(822, 'Matheus', 'Nunes', 3, 32),
(823, 'Danilo', 'Pereira', 3, 32),
(824, 'William', 'Carvalho', 3, 32),
(825, 'Gonçalo', 'Guedes', 3, 32),
(826, 'Otávio', '-', 3, 32),
(827, 'Pizzi', '-', 3, 32),
(828, 'João', 'Mário', 3, 32),
(829, 'Diogo', 'Jota', 3, 32),
(830, 'Rúben', 'Neves', 3, 32),
(831, 'Cristiano', 'Ronaldo', 4, 32),
(832, 'André', 'Silva', 4, 32),
(833, 'Gonçalo', 'Ramos', 4, 32),
(834, 'Bernardo', 'Silva', 4, 32),
(835, 'Rafael', 'Leão', 4, 32),
(836, 'Vitor', 'Ferreira', 4, 32),
(837, 'Francisco', 'Trincão', 4, 32),
(838, 'João', 'Félix', 4, 32),
(839, 'Fernando', 'Muslera', 1, 29),
(840, 'Sebastián', 'Sosa', 1, 29),
(841, 'Martín', 'Campaña', 1, 29),
(842, 'Sergio', 'Rochet', 1, 29),
(843, 'José', 'Giménez', 2, 29),
(844, 'Diego', 'Godín', 2, 29),
(845, 'Ronald', 'Araújo', 2, 29),
(846, 'Agustín', 'Oliveros', 2, 29),
(847, 'Alexis', 'Rolín', 2, 29),
(848, 'Mathías', 'Olivera', 2, 29),
(849, 'Diego', 'Laxalt', 2, 29),
(850, 'Matías', 'Viña', 2, 29),
(851, 'Sebastián', 'Coates', 2, 29),
(852, 'Leandro', 'Cabrera', 2, 29),
(853, 'Guillermo', 'Varela', 2, 29),
(854, 'Martín', 'Cáceres', 2, 29),
(855, 'Matías', 'Vecino', 3, 29),
(856, 'Rodrigo', 'Bentancur', 3, 29),
(857, 'Nico', 'De la Cruz', 3, 29),
(858, 'Facundo', 'Pellistri', 3, 29),
(859, 'Nahitan', 'Nández', 3, 29),
(860, 'Diego', 'Rossi', 3, 29),
(861, 'Giorgian', 'Arrascaeta', 3, 29),
(862, 'Marcelo', 'Saracchi', 3, 29),
(863, 'Lucas', 'Torreira', 3, 29),
(864, 'Fede', 'Valverde', 3, 29),
(865, 'Gastón', 'Pereiro', 3, 29),
(866, 'Agustín', 'Canobbio', 3, 29),
(867, 'Facundo', 'Torres', 3, 29),
(868, 'Manuel', 'Ugarte', 3, 29),
(869, 'Luis', 'Suárez', 4, 29),
(870, 'Darwin', 'Núñez', 4, 29),
(871, 'Maxi', 'Gómez', 4, 29),
(872, 'Edinson', 'Cavani', 4, 29),
(873, 'Seung-Gyu', 'Kim', 1, 30),
(874, 'Hyeon-Woo', 'Jo', 1, 30),
(875, 'Bum-Keun', 'Song', 1, 30),
(876, 'Jin-Su', 'Kim', 2, 30),
(877, 'Min-Jae', 'Kim', 2, 30),
(878, 'Chul', 'Hong', 2, 30),
(879, 'Jong-Gyu', 'Yoon', 2, 30),
(880, 'Ui-Jo', 'Hwang', 2, 30),
(881, 'Young-Gwon', 'Kim', 2, 30),
(882, 'Kyung-Won', 'Kwon', 2, 30),
(883, 'Tae-Hwan', 'Kim', 2, 30),
(884, 'Tae-Wook', 'Jeong', 2, 30),
(885, 'Yu-Min', 'Cho', 3, 30),
(886, 'Woo-Young', 'Jung', 3, 30),
(887, 'In-Beom', 'Hwang', 3, 30),
(888, 'Heung-Min', 'Son', 3, 30),
(889, 'Sang-Ho', 'Na', 3, 30),
(890, 'Seung-Ho', 'Paik', 3, 30),
(891, 'Jae-Sung', 'Lee', 3, 30),
(892, 'Jin-Kyu', 'Kim', 3, 30),
(893, 'Hee-Chan', 'Hwang', 3, 30),
(894, 'Jin-Hyun', 'Lee', 3, 30),
(895, 'Jun-Ho', 'Son', 3, 30),
(896, 'Kang-In', 'Lee', 3, 30),
(897, 'Gue-Sung', 'Cho', 4, 30),
(898, 'Won-Sang', 'Um', 4, 30),
(899, 'Moon-Hwan', 'Kim', 4, 30),
(900, 'Min-Kyu', 'Song', 4, 30),
(901, 'Chang-Hoon', 'Kwon', 4, 30),
(902, 'Woo-Yeong', 'Jeong', 4, 30),
(903, 'Richard', 'Antwi', 1, 31),
(904, 'Ibrahim', 'Danlad', 1, 31),
(905, 'Abdul', 'Nurudeen', 1, 31),
(906, 'Lawrence', 'Ati-Zigi', 1, 31),
(907, 'Joseph', 'Wollacott', 1, 31),
(908, 'Tariq', 'Lamptey', 2, 31),
(909, 'Denis', 'Odoi', 2, 31),
(910, 'Mohamed', 'Salisu', 2, 31),
(911, 'Jonathan', 'Mensah', 2, 31),
(912, 'Dennis', 'Korsah', 2, 31),
(913, 'Abdul', 'Mumin', 2, 31),
(914, 'Gideon', 'Mensah', 2, 31),
(915, 'Jeffrey', 'Schlupp', 2, 31),
(916, 'Joseph', 'Aidoo', 2, 31),
(917, 'Kasim', 'Adams', 2, 31),
(918, 'Abdul', 'Baba', 2, 31),
(919, 'Daniel', 'Amartey', 2, 31),
(920, 'Alexander', 'Djiku', 2, 31),
(921, 'Stephan', 'Ambrosius', 2, 31),
(922, 'Alidu', 'Seidu', 2, 31),
(923, 'Joseph', 'Attamah', 3, 31),
(924, 'Andy', 'Yiadom', 3, 31),
(925, 'Thomas', 'Partey', 3, 31),
(926, 'Elisha', 'Owusu', 3, 31),
(927, 'Edmund', 'Addo', 3, 31),
(928, 'Issahaku', 'Fatawu', 3, 31),
(929, 'Daniel-Kofi', 'Kyereh', 3, 31),
(930, 'Mubarak', 'Wakaso', 3, 31),
(931, 'Felix', 'Afena-Gyan', 3, 31),
(932, 'Samuel', 'Owusu', 3, 31),
(933, 'Mohammed', 'Kudus', 3, 31),
(934, 'Iddrisu', 'Baba', 3, 31),
(935, 'Jordan', 'Ayew', 4, 31),
(936, 'André', 'Ayew', 4, 31),
(937, 'Osman', 'Bukari', 4, 31),
(938, 'Joel', 'Fameyeh', 4, 31),
(939, 'Richmond', 'Boakye', 4, 31),
(940, 'Joseph', 'Paintsil', 4, 31),
(941, 'Caleb', 'Ekuban', 4, 31),
(942, 'Iñaki', 'Williams', 4, 31),
(943, 'Yaw', 'Yeboah', 4, 31),
(944, 'Kamaldeen', 'Sulemana', 4, 31),
(945, 'Emanuel', 'Gyasi', 4, 31),
(946, 'Christopher', 'Antwi-Adjei', 4, 31),
(947, 'Kwasi', 'Wriedt', 4, 31),
(948, 'Ransford', 'Königsdörffer', 4, 31),
(949, 'Antoine', 'Semenyo', 4, 31),
(950, 'Daniel', 'Afriyie', 4, 31);

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

CREATE TABLE `pais` (
  `idPais` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`idPais`, `nombre`) VALUES
(1, 'Qatar'),
(2, 'Ecuador'),
(3, 'Senegal'),
(4, 'Paises Bajos'),
(5, 'Inglaterra'),
(6, 'Irán'),
(7, 'Estados Unidos '),
(8, 'Gales'),
(9, 'Argentina'),
(10, 'Arabia Saudita'),
(11, 'Mexico'),
(12, 'Polonia'),
(13, 'Dinamarca'),
(14, 'Tunez'),
(15, 'Francia'),
(16, 'Australia'),
(17, 'Alemania'),
(18, 'Japón'),
(19, 'España'),
(20, 'Costa Rica'),
(21, 'Marruecos'),
(22, 'Croacia'),
(23, 'Bélgica'),
(24, 'Canada'),
(25, 'Suiza'),
(26, 'Camerún'),
(27, 'Brasil'),
(28, 'Serbia'),
(29, 'Uruguay'),
(30, 'Corea del Sur'),
(31, 'Ghana'),
(32, 'Portugal');

-- --------------------------------------------------------

--
-- Table structure for table `partido`
--

CREATE TABLE `partido` (
  `idPartido` int(11) NOT NULL,
  `nom_Estadio` varchar(45) NOT NULL,
  `num_Local` int(11) NOT NULL,
  `num_Visitante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partido`
--

INSERT INTO `partido` (`idPartido`, `nom_Estadio`, `num_Local`, `num_Visitante`) VALUES
(1, 'Estadio Al Bayt', 1, 2),
(2, 'Estadio Internacional Khalifa', 5, 6),
(3, 'Estadio Al Thumama', 3, 4),
(4, 'Estadio Ahmad Bin', 7, 8),
(5, 'Estadio Lusail', 9, 10),
(6, 'Estadio Education City', 13, 14),
(7, 'Estadio 974', 11, 12),
(8, 'Estadio Al Janoub', 15, 16),
(9, 'Estadio Al Bayt', 21, 22),
(10, 'Estadio Internacional Khalifa', 17, 18),
(11, 'Estadio Al Thumama', 19, 20),
(12, 'Estadio Ahmad Bin', 23, 24),
(13, 'Estadio Al Janoub', 25, 26),
(14, 'Estadio Education City', 28, 29),
(15, 'Estadio 974', 32, 31),
(16, 'Estadio Lusail', 26, 27),
(17, 'Estadio Ahmad Bin', 8, 6),
(18, 'Estadio Al Thumama', 1, 3),
(19, 'Estadio Internacional Khalifa', 4, 2),
(20, 'Estadio Al Bayt', 5, 7),
(21, 'Estadio Al Janoub', 14, 16),
(22, 'Estadio Education City', 12, 10),
(23, 'Estadio 974', 15, 13),
(24, 'Estadio Lusail', 9, 11),
(25, 'Estadio Ahmad Bin', 18, 20),
(26, 'Estadio Al Thumama', 23, 21),
(27, 'Estadio Internacional Khalifa', 22, 24),
(28, 'Estadio Al Bayt', 19, 17),
(29, 'Estadio Al Janoub', 25, 27),
(30, 'Estadio Education City', 29, 31),
(31, 'Estadio 974', 26, 24),
(32, 'Estadio Lusail', 32, 28),
(33, 'Estadio Internacional Khalifa', 2, 3),
(34, 'Estadio Ahmad Bin', 4, 1),
(35, 'Estadio Al Thumama', 6, 7),
(36, 'Estadio Ahmad Bin', 8, 5),
(37, 'Estadio Education City', 14, 15),
(38, 'Estadio Al Janoub', 16, 13),
(39, 'Estadio 974', 12, 9),
(40, 'Estadio Lusail', 11, 10),
(41, 'Estadio Ahmad Bin', 22, 23),
(42, 'Estadio Al Thumama', 24, 21),
(43, 'Estadio Internacional Khalifa', 18, 19),
(44, 'Estadio Al Bayt', 20, 17),
(45, 'Estadio Education City', 29, 32),
(46, 'Estadio Al Janoub', 31, 28),
(47, 'Estadio 974', 28, 25),
(48, 'Estadio Lusail', 26, 26);

-- --------------------------------------------------------

--
-- Table structure for table `partido_has_sede`
--

CREATE TABLE `partido_has_sede` (
  `partido_idPartido` int(11) NOT NULL,
  `sede_idSede` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partido_has_sede`
--

INSERT INTO `partido_has_sede` (`partido_idPartido`, `sede_idSede`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 2),
(11, 3),
(12, 4),
(13, 8),
(14, 6),
(15, 7),
(16, 5),
(17, 4),
(18, 3),
(19, 2),
(20, 1),
(21, 8),
(22, 6),
(23, 7),
(24, 5),
(25, 4),
(26, 3),
(27, 2),
(28, 1),
(29, 8),
(30, 6),
(31, 7),
(32, 5),
(33, 2),
(34, 4),
(35, 6),
(36, 8),
(37, 7),
(38, 8),
(39, 7),
(40, 5),
(41, 4),
(42, 3),
(43, 2),
(44, 9),
(45, 6),
(46, 8),
(47, 7),
(48, 5);

-- --------------------------------------------------------

--
-- Table structure for table `posicion`
--

CREATE TABLE `posicion` (
  `idposicion` int(2) NOT NULL,
  `nomposicion` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posicion`
--

INSERT INTO `posicion` (`idposicion`, `nomposicion`) VALUES
(1, 'ARQUERO'),
(2, 'DEFENSA'),
(3, 'MEDIOCAMPO'),
(4, 'DELANTERO');

-- --------------------------------------------------------

--
-- Table structure for table `resultado_partido`
--

CREATE TABLE `resultado_partido` (
  `Partido_idPartido` int(11) NOT NULL,
  `gol_local` int(11) NOT NULL,
  `gol_visitante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resultado_partido`
--

INSERT INTO `resultado_partido` (`Partido_idPartido`, `gol_local`, `gol_visitante`) VALUES
(1, 0, 2),
(2, 6, 2),
(3, 0, 2),
(4, 1, 1),
(5, 1, 2),
(6, 0, 0),
(7, 0, 0),
(8, 4, 1),
(9, 0, 0),
(10, 1, 2),
(11, 7, 0),
(12, 1, 0),
(13, 1, 0),
(14, 0, 0),
(15, 3, 2),
(16, 2, 0),
(17, 0, 2),
(18, 1, 3),
(19, 1, 1),
(20, 0, 0),
(21, 0, 1),
(22, 2, 0),
(23, 2, 1),
(24, 2, 0),
(25, 0, 1),
(26, 0, 2),
(27, 4, 1),
(28, 1, 1),
(29, 1, 0),
(30, 2, 3),
(31, 3, 3),
(32, 2, 0),
(33, 1, 2),
(34, 2, 0),
(35, 0, 1),
(36, 0, 3),
(37, 1, 0),
(38, 1, 0),
(39, 0, 2),
(40, 1, 2),
(41, 0, 0),
(42, 1, 2),
(43, 2, 1),
(44, 2, 4),
(45, 2, 1),
(46, 0, 2),
(47, 2, 3),
(48, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sede`
--

CREATE TABLE `sede` (
  `idSede` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sede`
--

INSERT INTO `sede` (`idSede`, `nombre`) VALUES
(1, 'Estadio Al Bayt'),
(2, 'Estadio Internacional Khalifa'),
(3, 'Estadio Al Thumama'),
(4, 'Estadio Ahmad Bin'),
(5, 'Estadio Lusail'),
(6, 'Estadio Education City'),
(7, 'Estadio 974'),
(8, 'Estadio Al Janoub'),
(9, 'Estadio Al Bayt'),
(10, 'Estadio Lusail');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arbitro`
--
ALTER TABLE `arbitro`
  ADD PRIMARY KEY (`idArbitro`),
  ADD KEY `Pais_idPais` (`Pais_idPais`);

--
-- Indexes for table `entrenador`
--
ALTER TABLE `entrenador`
  ADD PRIMARY KEY (`idEntrenador`),
  ADD KEY `pais_idPais` (`pais_idPais`);

--
-- Indexes for table `estadisticas_jugador`
--
ALTER TABLE `estadisticas_jugador`
  ADD PRIMARY KEY (`Jugador_idJugador`);

--
-- Indexes for table `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `posicion_idposicion` (`posicion_idposicion`),
  ADD KEY `pais_idPais` (`pais_idPais`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`idPais`);

--
-- Indexes for table `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`idPartido`),
  ADD KEY `Local` (`num_Local`),
  ADD KEY `Visitante` (`num_Visitante`);

--
-- Indexes for table `partido_has_sede`
--
ALTER TABLE `partido_has_sede`
  ADD PRIMARY KEY (`partido_idPartido`,`sede_idSede`),
  ADD KEY `sede_idSede` (`sede_idSede`);

--
-- Indexes for table `posicion`
--
ALTER TABLE `posicion`
  ADD PRIMARY KEY (`idposicion`);

--
-- Indexes for table `resultado_partido`
--
ALTER TABLE `resultado_partido`
  ADD PRIMARY KEY (`Partido_idPartido`);

--
-- Indexes for table `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`idSede`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entrenador`
--
ALTER TABLE `entrenador`
  MODIFY `idEntrenador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `jugador`
--
ALTER TABLE `jugador`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=951;

--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `idPais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arbitro`
--
ALTER TABLE `arbitro`
  ADD CONSTRAINT `arbitro_ibfk_1` FOREIGN KEY (`Pais_idPais`) REFERENCES `pais` (`idPais`);

--
-- Constraints for table `entrenador`
--
ALTER TABLE `entrenador`
  ADD CONSTRAINT `entrenador_ibfk_1` FOREIGN KEY (`pais_idPais`) REFERENCES `pais` (`idPais`);

--
-- Constraints for table `estadisticas_jugador`
--
ALTER TABLE `estadisticas_jugador`
  ADD CONSTRAINT `estadisticas_jugador_ibfk_1` FOREIGN KEY (`Jugador_idJugador`) REFERENCES `jugador` (`player_id`);

--
-- Constraints for table `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `jugador_ibfk_1` FOREIGN KEY (`posicion_idposicion`) REFERENCES `posicion` (`idposicion`),
  ADD CONSTRAINT `jugador_ibfk_2` FOREIGN KEY (`pais_idPais`) REFERENCES `pais` (`idPais`);

--
-- Constraints for table `partido`
--
ALTER TABLE `partido`
  ADD CONSTRAINT `partido_ibfk_1` FOREIGN KEY (`num_Local`) REFERENCES `pais` (`idPais`),
  ADD CONSTRAINT `partido_ibfk_2` FOREIGN KEY (`num_Visitante`) REFERENCES `pais` (`idPais`);

--
-- Constraints for table `partido_has_sede`
--
ALTER TABLE `partido_has_sede`
  ADD CONSTRAINT `partido_has_sede_ibfk_1` FOREIGN KEY (`partido_idPartido`) REFERENCES `partido` (`idPartido`),
  ADD CONSTRAINT `partido_has_sede_ibfk_2` FOREIGN KEY (`sede_idSede`) REFERENCES `sede` (`idSede`);

--
-- Constraints for table `resultado_partido`
--
ALTER TABLE `resultado_partido`
  ADD CONSTRAINT `resultado_partido_ibfk_1` FOREIGN KEY (`Partido_idPartido`) REFERENCES `partido` (`idPartido`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
