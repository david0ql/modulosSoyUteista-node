-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 23-12-2022 a las 02:44:05
-- Versión del servidor: 5.7.34
-- Versión de PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `soyuteista`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactosDependencia`
--

CREATE TABLE `contactosDependencia` (
  `idContactoDependencia` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `profesion` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `extension` int(12) NOT NULL,
  `idDependencia` int(11) NOT NULL,
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contactosDependencia`
--

INSERT INTO `contactosDependencia` (`idContactoDependencia`, `nombre`, `profesion`, `correo`, `extension`, `idDependencia`, `fechaRegistro`) VALUES
(1, 'Esperanza Bayona Romero', 'Secretaria', 'icetex@correo.uts.edu.co', 2113, 1, '2022-12-22 01:01:01'),
(2, 'María Isabel Acuña Gutiérrez', 'Profesional Universitario', 'mgutierrez@correo.uts.edu.co', 1235, 2, '2022-12-22 01:02:13'),
(3, 'Martha Isabel Olaya Cruz', 'Profesional Universitario', 'miolaya@correo.uts.edu.co', 1236, 2, '2022-12-22 01:02:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `convocatorias`
--

CREATE TABLE `convocatorias` (
  `idConvocatoria` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `convocatorias`
--

INSERT INTO `convocatorias` (`idConvocatoria`, `titulo`, `descripcion`, `foto`, `url`, `fechaCreacion`) VALUES
(1, 'asd', 'asd', 'asd', 'asd', '2022-12-23 02:34:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencias`
--

CREATE TABLE `dependencias` (
  `idDependencia` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dependencias`
--

INSERT INTO `dependencias` (`idDependencia`, `nombre`, `fechaRegistro`) VALUES
(1, 'Icetex', '2022-12-22 01:00:19'),
(2, 'Recursos fisicos', '2022-12-22 01:00:19');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contactosDependencia`
--
ALTER TABLE `contactosDependencia`
  ADD PRIMARY KEY (`idContactoDependencia`);

--
-- Indices de la tabla `convocatorias`
--
ALTER TABLE `convocatorias`
  ADD PRIMARY KEY (`idConvocatoria`);

--
-- Indices de la tabla `dependencias`
--
ALTER TABLE `dependencias`
  ADD PRIMARY KEY (`idDependencia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contactosDependencia`
--
ALTER TABLE `contactosDependencia`
  MODIFY `idContactoDependencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `convocatorias`
--
ALTER TABLE `convocatorias`
  MODIFY `idConvocatoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `dependencias`
--
ALTER TABLE `dependencias`
  MODIFY `idDependencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
