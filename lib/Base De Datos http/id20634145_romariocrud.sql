-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-04-2023 a las 17:39:35
-- Versión del servidor: 10.5.16-MariaDB
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id20634145_romariocrud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `AgregarUser`
--

CREATE TABLE `AgregarUser` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `AgregarUser`
--

INSERT INTO `AgregarUser` (`id`, `nombre`, `email`, `pass`) VALUES
(10414, 'Romario Martinez ', 'romariomartiinez@gmail.com', 'romario09'),
(10415, 'R', 'R', 'R'),
(10416, 'roma', 'roma', 'roma'),
(10423, 'rx', 'rx', 'rx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrar_mascotas`
--

CREATE TABLE `registrar_mascotas` (
  `id` int(11) NOT NULL,
  `foto` varchar(20000) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `raza` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `iduser` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `registrar_mascotas`
--

INSERT INTO `registrar_mascotas` (`id`, `foto`, `nombre`, `raza`, `iduser`) VALUES
(21, 'https://i.blogs.es/808765/dpoty-puppy-2nd--c--tracy-kirby-the-kennel-club-2/450_1000.jpg', 'SAN ', 'BULLDOG', ''),
(23, 'https://w7.pngwing.com/pngs/682/570/png-transparent-dog-pitbull-terrier-american-staffordshire-face-pet-pit-bull-loyalty-race-american.png', 'SAN ', 'bludog', ''),
(25, 'https://w7.pngwing.com/pngs/601/175/png-transparent-dog-dog-png-pets-image-wild-life.png', 'sann', 'bernardo', ''),
(27, '', 's', 's', ''),
(28, '', 'san', 'san ', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `AgregarUser`
--
ALTER TABLE `AgregarUser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `registrar_mascotas`
--
ALTER TABLE `registrar_mascotas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `AgregarUser`
--
ALTER TABLE `AgregarUser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10424;

--
-- AUTO_INCREMENT de la tabla `registrar_mascotas`
--
ALTER TABLE `registrar_mascotas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
