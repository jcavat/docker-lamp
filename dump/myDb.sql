-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 01-10-2020 a las 17:58:33
-- Versión del servidor: 8.0.21
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `myDb`
--
CREATE DATABASE IF NOT EXISTS `myDb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `myDb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Autores`
--

CREATE TABLE `Autores` (
  `Id` int NOT NULL,
  `Nombre` varchar(70) NOT NULL,
  `Ciudad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Autores`
--

INSERT INTO `Autores` (`Id`, `Nombre`, `Ciudad`) VALUES
(1, 'Manuel Santander Cahué', 'Cádiz'),
(2, 'Juan Carlos Aragón Becerra', 'Cádiz'),
(3, 'Manuel Alvarez Seda', 'Sevilla'),
(4, 'Luis Galán Pérez', 'Puerto de Santa María'),
(5, 'Juan Rivero Torrejón', 'San Fernando'),
(6, 'Antonio Martínez Ares', 'Cádiz'),
(7, 'Antonio Pedro Serrano Álvarez', 'Carmona'),
(8, 'Joaquín Quiñones', 'Cádiz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Obras`
--

CREATE TABLE `Obras` (
  `Id` int NOT NULL,
  `Titulo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Obras`
--

INSERT INTO `Obras` (`Id`, `Titulo`) VALUES
(1, 'La familia Pepperoni (Vendetta)'),
(2, 'La maldición de la lapa negra'),
(3, 'Los de Capuchinos'),
(4, 'Los Ángeles Caídos'),
(5, 'Los Yesterday'),
(6, 'Las Pito-Risas'),
(7, 'Todo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ObrasAutores`
--

CREATE TABLE `ObrasAutores` (
  `AutoresId` int NOT NULL,
  `ObrasId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ObrasAutores`
--

INSERT INTO `ObrasAutores` (`AutoresId`, `ObrasId`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(3, 6),
(4, 7),
(5, 7),
(6, 7),
(7, 7),
(8, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Autores`
--
ALTER TABLE `Autores`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Obras`
--
ALTER TABLE `Obras`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `ObrasAutores`
--
ALTER TABLE `ObrasAutores`
  ADD KEY `AutoresId` (`AutoresId`),
  ADD KEY `ObrasId` (`ObrasId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Autores`
--
ALTER TABLE `Autores`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `Obras`
--
ALTER TABLE `Obras`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ObrasAutores`
--
ALTER TABLE `ObrasAutores`
  ADD CONSTRAINT `ObrasAutores_ibfk_1` FOREIGN KEY (`AutoresId`) REFERENCES `Autores` (`Id`),
  ADD CONSTRAINT `ObrasAutores_ibfk_2` FOREIGN KEY (`ObrasId`) REFERENCES `Obras` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
