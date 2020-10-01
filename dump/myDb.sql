-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 01-10-2020 a las 17:13:37
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Authors`
--

CREATE TABLE `Authors` (
  `Id` int NOT NULL,
  `Name` varchar(70) NOT NULL,
  `Country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Authors`
--

INSERT INTO `Authors` (`Id`, `Name`, `Country`) VALUES
(1, 'J.D. Salinger', 'USA'),
(2, 'F. Scott. Fitzgerald', 'USA'),
(3, 'Jane Austen', 'UK'),
(4, 'Scott Hanselman', 'USA'),
(5, 'Jason N. Gaylord', 'USA'),
(6, 'Pranav Rastogi', 'India'),
(7, 'Todd Miranda', 'USA'),
(8, 'Christian Wenz', 'USA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Books`
--

CREATE TABLE `Books` (
  `Id` int NOT NULL,
  `Title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Books`
--

INSERT INTO `Books` (`Id`, `Title`) VALUES
(1, 'The Catcher in the Rye'),
(2, 'Nine Stories'),
(3, 'Franny and Zooey'),
(4, 'The Great Gatsby'),
(5, 'Tender id the Night'),
(6, 'Pride and Prejudice'),
(7, 'Professional ASP.NET 4.5 in C# and VB');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `BooksAuthors`
--

CREATE TABLE `BooksAuthors` (
  `AuthorId` int NOT NULL,
  `BookId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `BooksAuthors`
--

INSERT INTO `BooksAuthors` (`AuthorId`, `BookId`) VALUES
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Customers`
--

CREATE TABLE `Customers` (
  `Id` int NOT NULL,
  `User` varchar(70) NOT NULL,
  `Password` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `Customers`
--

INSERT INTO `Customers` (`Id`, `User`, `Password`) VALUES
(1, 'admin', 'admin'),
(2, 'usuario1', 'usuario1'),
(3, 'usuario2', 'usuario2'),
(4, 'usuario3', 'usuario3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Person`
--

CREATE TABLE `Person` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Person`
--

INSERT INTO `Person` (`id`, `name`) VALUES
(1, 'William'),
(2, 'Marc'),
(3, 'John');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Authors`
--
ALTER TABLE `Authors`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `Books`
--
ALTER TABLE `Books`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `BooksAuthors`
--
ALTER TABLE `BooksAuthors`
  ADD KEY `AuthorId` (`AuthorId`),
  ADD KEY `BookId` (`BookId`);

--
-- Indices de la tabla `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Authors`
--
ALTER TABLE `Authors`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `Books`
--
ALTER TABLE `Books`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `Customers`
--
ALTER TABLE `Customers`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `BooksAuthors`
--
ALTER TABLE `BooksAuthors`
  ADD CONSTRAINT `BooksAuthors_ibfk_1` FOREIGN KEY (`AuthorId`) REFERENCES `Authors` (`Id`),
  ADD CONSTRAINT `BooksAuthors_ibfk_2` FOREIGN KEY (`BookId`) REFERENCES `Books` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
