-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2015 a las 10:43:37
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `liga`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

DROP TABLE IF EXISTS `equipos`;
CREATE TABLE IF NOT EXISTS `equipos` (
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `web` varchar(250) DEFAULT 'sin web oficial',
  `puntos` int(11) DEFAULT NULL,
  `id_capitan` int(11) DEFAULT NULL,
  `id_capitan_2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id_equipo`, `nombre`, `ciudad`, `web`, `puntos`, `id_capitan`, `id_capitan_2`) VALUES
(1, 'Regal Barcelona', 'Barcelona', 'http://www.fcbarcelona.com/web/index_idiomes.html', 10, 1, 1),
(2, 'Real Madrid', 'Madrid', 'http://www.realmadrid.com/cs/Satellite/es/1193040472450/SubhomeEquipo/Baloncesto.htm', 9, 2, 2),
(3, 'P.E. Valencia', 'Valencia', 'http://www.valenciabasket.com/', 11, 3, 3),
(4, 'Caja Laboral', 'Vitoria', 'http://www.baskonia.com/prehomes/prehomes.asp?id_prehome=69', 22, 6, 6),
(5, 'Gran Canaria', 'Las Palmas', 'http://www.acb.com/club.php?id=CLA', 14, 14, 14),
(6, 'CAI Zaragoza', 'Zaragoza', 'http://basketzaragoza.net/', 23, 13, 13),
(7, 'Asefa Estudiantes', 'Madrid', 'http://www.clubestudiantes.com', 29, 25, 25),
(8, 'Unicaja', 'Malaga', 'http://www.unicajabaloncesto.com', 19, NULL, NULL),
(9, 'Cajasol', 'Sevilla', 'http://www.baloncestosevilla.com', 15, NULL, NULL),
(10, 'FIATC Juventut', 'Badalona', 'http://www.penya.com', 17, NULL, NULL),
(11, 'Blancos de Rueda Valladolid', 'Valladolid', 'http://www.cbvalladolid.es', 20, NULL, NULL),
(12, 'Blusens Monbus', 'Santiago de Compostela', 'http://www.obradoirocab.com', 16, NULL, NULL),
(13, 'Mad-Croc Fuenlabrada', 'Fuenlabrada', 'http://www.baloncestofuenlabrada.com', 20, NULL, NULL),
(15, 'UCAM Murcia CB', 'Murcia', 'http://www.cbmurcia.com', 19, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

DROP TABLE IF EXISTS `jugadores`;
CREATE TABLE IF NOT EXISTS `jugadores` (
  `id_jugador` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `puesto` varchar(45) DEFAULT NULL,
  `id_capitan` int(11) DEFAULT NULL,
  `fecha_alta` datetime DEFAULT NULL,
  `salario` int(11) DEFAULT NULL,
  `equipo` int(11) DEFAULT NULL,
  `altura` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jugadores`
--

INSERT INTO `jugadores` (`id_jugador`, `nombre`, `apellido`, `puesto`, `id_capitan`, `fecha_alta`, `salario`, `equipo`, `altura`) VALUES
(1, 'Juan Carlos', 'Navarro', 'escolta', 1, '2010-01-10 00:00:00', 130100, 1, '1.96'),
(2, 'Felipe', 'Reyes', 'Pivot', 2, '2009-02-20 00:00:00', 145310, 2, '2.04'),
(3, 'Victor', 'Claver', 'Alero', 3, '2009-03-08 00:00:00', 109010, 3, '2.08'),
(4, 'Rafa ', 'Martinez', 'ala-pivot', 4, '2010-11-11 00:00:00', 51100, 3, '1.91'),
(5, 'Fernando', 'San Emeterio', 'Alero', 6, '2008-09-22 00:00:00', 60100, 4, '1.99'),
(6, 'Mirza', 'Teletovic', 'Pivot', 6, '2010-05-13 00:00:00', 84810, 4, '2.06'),
(7, 'Sergio ', 'Llull', 'Escolta', 2, '2011-10-29 00:00:00', 100100, 2, '1.90'),
(8, 'Victor ', 'Sada', 'Base', 1, '2012-01-01 00:00:00', 80100, 1, '1.92'),
(9, 'Carlos', 'Suarez', 'Alero', 2, '2011-02-19 00:00:00', 72710, 2, '2.03'),
(10, 'Xavi ', 'Rey', 'Pivot', 14, '2008-10-12 00:00:00', 115060, 5, '2.09'),
(11, 'Carlos ', 'Cabezas', 'Base', 13, '2012-01-21 00:00:00', 105100, 6, '1.86'),
(12, 'Pablo ', 'Aguilar', 'Alero', 13, '2011-06-14 00:00:00', 56980, 6, '2.03'),
(13, 'Rafa', 'Hettsheimeir', 'Pivot', 13, '2008-04-15 00:00:00', 64240, 6, '2.08'),
(14, 'Sitapha', 'Savané', 'Pivot', 14, '2011-07-27 00:00:00', 72710, 5, '2.01'),
(15, 'anonimo', 'anonimo', 'Ala-pivot', 2, '2012-01-01 00:00:00', 4100, 3, '2.00'),
(22, 'j1', NULL, NULL, NULL, NULL, NULL, 2, '2.00'),
(23, 'j2', NULL, NULL, NULL, NULL, NULL, 2, NULL),
(25, 'German', 'Gabriel', 'Pivot', 25, '2011-01-10 00:00:00', 132110, 7, '2.07'),
(26, 'Carl', 'English', 'Escolta', 25, '2012-02-20 00:00:00', 128100, 7, '1.96');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

DROP TABLE IF EXISTS `partidos`;
CREATE TABLE IF NOT EXISTS `partidos` (
`id_partido` int(11) NOT NULL,
  `elocal` int(11) NOT NULL,
  `evisitante` int(11) NOT NULL,
  `resultado` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `arbitro` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `partidos`
--

INSERT INTO `partidos` (`id_partido`, `elocal`, `evisitante`, `resultado`, `fecha`, `arbitro`) VALUES
(1, 1, 3, '100-100', '2011-10-10', '4\r'),
(2, 3, 4, '90-91', '2011-11-17', '5\r'),
(3, 4, 5, '88-77', '2011-11-23', '6\r'),
(4, 1, 7, '66-78', '2011-11-30', '6\r'),
(5, 3, 5, '90-90', '2012-01-12', '7\r'),
(6, 5, 6, '79-83', '2012-01-19', '3\r'),
(7, 4, 7, '91-88', '2012-02-22', '3\r'),
(8, 6, 5, '90-66', '2012-04-27', '2\r'),
(9, 7, 6, '110-70', '2012-05-30', '1'),
(10, 4, 6, '88-77', '2011-09-01', '2'),
(11, 1, 4, '98-99', '2012-09-09', '2\r'),
(12, 3, 5, '90-78', '2012-09-10', '3\r'),
(13, 6, 7, '100-78', '2012-09-10', '4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
 ADD PRIMARY KEY (`id_equipo`), ADD UNIQUE KEY `nombre_UNIQUE` (`nombre`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
 ADD PRIMARY KEY (`id_jugador`), ADD KEY `fequipo` (`equipo`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
 ADD PRIMARY KEY (`id_partido`), ADD KEY `flocal` (`elocal`), ADD KEY `fvisitante` (`evisitante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
MODIFY `id_partido` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
