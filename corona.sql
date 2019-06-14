-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 14-06-2019 a las 02:50:36
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `corona`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actores`
--

DROP TABLE IF EXISTS `actores`;
CREATE TABLE IF NOT EXISTS `actores` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Cargo` varchar(45) DEFAULT NULL,
  `e-Mail` varchar(45) DEFAULT NULL,
  `Celular` varchar(45) DEFAULT NULL,
  `Tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brief`
--

DROP TABLE IF EXISTS `brief`;
CREATE TABLE IF NOT EXISTS `brief` (
  `id` varchar(45) NOT NULL,
  `nombre` varchar(16) NOT NULL,
  `cargo` varchar(255) DEFAULT NULL,
  `e-mail` varchar(32) NOT NULL,
  `celular` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dj`
--

DROP TABLE IF EXISTS `dj`;
CREATE TABLE IF NOT EXISTS `dj` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event information`
--

DROP TABLE IF EXISTS `event information`;
CREATE TABLE IF NOT EXISTS `event information` (
  `id` int(11) NOT NULL,
  `Tipo` varchar(45) DEFAULT NULL,
  `Cajas Negociadas` varchar(45) DEFAULT NULL,
  `Promocion` varchar(45) DEFAULT NULL,
  `invitaciones` varchar(45) DEFAULT NULL,
  `cover` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `event list`
--

DROP TABLE IF EXISTS `event list`;
CREATE TABLE IF NOT EXISTS `event list` (
  `id` int(11) NOT NULL,
  `Experiencia` varchar(45) DEFAULT NULL,
  `artista internacional` varchar(45) DEFAULT NULL,
  `dj` varchar(45) DEFAULT NULL,
  `cantidad de modelos` varchar(45) DEFAULT NULL,
  `merchandising` varchar(45) DEFAULT NULL,
  `observaciones` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `Gerente` int(11) NOT NULL,
  `Responsable` int(11) NOT NULL,
  `Establecimiento` int(11) NOT NULL,
  `Tipo` varchar(45) DEFAULT NULL,
  `CajasNegociadas` varchar(45) DEFAULT NULL,
  `Tipodepromocion` varchar(45) DEFAULT NULL,
  `Invitaciones` varchar(45) DEFAULT NULL,
  `cover` varchar(45) DEFAULT NULL,
  `observaciones` varchar(45) DEFAULT NULL,
  `Creador` varchar(45) NOT NULL,
  `create_time` varchar(45) DEFAULT NULL,
  `update_time` varchar(45) DEFAULT NULL,
  `editor` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `experiences`
--

DROP TABLE IF EXISTS `experiences`;
CREATE TABLE IF NOT EXISTS `experiences` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

DROP TABLE IF EXISTS `fotos`;
CREATE TABLE IF NOT EXISTS `fotos` (
  `idimagenes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` int(10) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`idimagenes`,`images`),
  KEY `images` (`images`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `international_artist`
--

DROP TABLE IF EXISTS `international_artist`;
CREATE TABLE IF NOT EXISTS `international_artist` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `list_basico_type`
--

DROP TABLE IF EXISTS `list_basico_type`;
CREATE TABLE IF NOT EXISTS `list_basico_type` (
  `id` int(11) NOT NULL,
  `events_id` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `dj_id` int(11) NOT NULL,
  `dj_id1` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `list_flag_type`
--

DROP TABLE IF EXISTS `list_flag_type`;
CREATE TABLE IF NOT EXISTS `list_flag_type` (
  `id` int(11) NOT NULL,
  `events_id` int(11) NOT NULL,
  `experiences_id` int(11) NOT NULL,
  `experience2` int(11) NOT NULL,
  `experience3` int(11) NOT NULL,
  `International_Artist_id` int(11) NOT NULL,
  `dj_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `list_top_type`
--

DROP TABLE IF EXISTS `list_top_type`;
CREATE TABLE IF NOT EXISTS `list_top_type` (
  `id` int(11) NOT NULL,
  `events_id` int(11) NOT NULL,
  `Ciudad` varchar(45) DEFAULT NULL,
  `experience1` int(11) NOT NULL,
  `experience2` int(11) NOT NULL,
  `nacional_Artist_id` int(11) NOT NULL,
  `dj_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacional_artist`
--

DROP TABLE IF EXISTS `nacional_artist`;
CREATE TABLE IF NOT EXISTS `nacional_artist` (
  `id` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pov`
--

DROP TABLE IF EXISTS `pov`;
CREATE TABLE IF NOT EXISTS `pov` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Cargos` varchar(45) DEFAULT NULL,
  `e-Mail` varchar(45) DEFAULT NULL,
  `Celular` varchar(45) DEFAULT NULL,
  `RazonSocial` varchar(45) DEFAULT NULL,
  `Establecimiento` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` varchar(45) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `Cargo` varchar(45) DEFAULT NULL,
  `Ciudad` varchar(45) DEFAULT NULL,
  `create_time` varchar(45) DEFAULT NULL,
  `update_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `Telefono`, `Cargo`, `Ciudad`, `create_time`, `update_time`) VALUES
('1', 'alejandro ', 'xxcelux4@gmail.com', '1234', '3134823881', 'desarrollador ', 'bogota', '14:40', '19:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
