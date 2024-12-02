-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2024 a las 14:18:40
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
-- Base de datos: `venta2024`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Equipos Electromecánicos', '2017-12-21 22:29:27'),
(2, 'Taladros', '2017-12-21 21:56:23'),
(3, 'Andamios', '2017-12-21 21:56:46'),
(4, 'Generadores de energía', '2017-12-21 21:56:58'),
(7, 'Equipos para construcción', '2017-12-21 22:40:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `perfil` varchar(100) NOT NULL,
  `foto` text NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `ultimo_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`) VALUES
(1, 'johnny suri', 'admin', 'admin123', 'Administrador', '', 0, '2024-09-27 18:22:33'),
(2, 'franciso', 'francisco', 'franciso123', 'Administrador', '', 0, '0000-00-00 00:00:00'),
(3, 'kevin', 'kevin', 'kevin', 'Administrador', '', 0, '0000-00-00 00:00:00'),
(4, 'john', 'admin', 'john123', 'Administrador', '', 0, '0000-00-00 00:00:00'),
(5, 'rosa', 'rosa', 'rosa123', 'Especial', '', 0, '0000-00-00 00:00:00'),
(6, 'pedro', 'pedro', '$2a$07$asxx54ahjppf45sd87a5auA.7cmlmz9gFI2yRcocV0C2yqS5z5itK', 'Administrador', '', 0, '0000-00-00 00:00:00'),
(7, 'oscar', 'oscar', '$2a$07$asxx54ahjppf45sd87a5au/bu4Ick41GRhbhIEPg0Nvajd22gNWwy', 'Especial', '', 0, '0000-00-00 00:00:00'),
(8, 'chirilla', 'chirilla', '$2a$07$asxx54ahjppf45sd87a5au0C0pF/shnJIzhsU.TbdbMi7M83al5SO', 'Administrador', 'vistas/img/usuarios/chirilla/542.png', 0, '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
