-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-07-2020 a las 09:31:01
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `control_usuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicativos`
--

CREATE TABLE `aplicativos` (
  `id` int(11) NOT NULL,
  `id_funcionario` int(15) NOT NULL,
  `id_activacion` int(50) NOT NULL,
  `id_inactivacion` int(50) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario_activacion`
--

CREATE TABLE `formulario_activacion` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `identificacion` int(15) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `profesion` text NOT NULL,
  `perfil` text NOT NULL,
  `cargo` text NOT NULL,
  `vinculacion` text NOT NULL,
  `dependencia` text NOT NULL,
  `unidad` text NOT NULL,
  `extension` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `revision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario_inactivacion`
--

CREATE TABLE `formulario_inactivacion` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `identificacion` int(15) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `profesion` text NOT NULL,
  `perfil` text NOT NULL,
  `cargo` text NOT NULL,
  `vinculacion` text NOT NULL,
  `dependencia` text NOT NULL,
  `unidad` text NOT NULL,
  `extension` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `revision` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `photo` text NOT NULL,
  `rol` int(11) NOT NULL,
  `intentos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `email`, `photo`, `rol`, `intentos`) VALUES
(7, 'YesikaBernal', '$2a$07$asxx54ahjppf45sd87a5aup9tSGOiR1Mhd/RdhAblDB8nqIejAKwG', 'hrzsistemas.tecnico2@hus.org.co', 'views/images/photo.jpg', 1, 0),
(8, 'admin', '$2a$07$asxx54ahjppf45sd87a5aunxs9bkpyGmGE/.vekdjFg83yRec789S', 'hrzsistemas@hus.org.co', 'views/images/perfiles/perfil923.jpg', 0, 0),
(9, 'lider', '$2a$07$asxx54ahjppf45sd87a5auD82ePxj52WwkV.tH5B7re7oAt.5j9Jm', 'hrzlider@hus.org.co', 'views/images/photo.jpg', 2, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aplicativos`
--
ALTER TABLE `aplicativos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_formulario` (`id_funcionario`),
  ADD KEY `id_activacion` (`id_activacion`,`id_inactivacion`),
  ADD KEY `id_inactivacion` (`id_inactivacion`);

--
-- Indices de la tabla `formulario_activacion`
--
ALTER TABLE `formulario_activacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identificacion` (`identificacion`);

--
-- Indices de la tabla `formulario_inactivacion`
--
ALTER TABLE `formulario_inactivacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identificacion` (`identificacion`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aplicativos`
--
ALTER TABLE `aplicativos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `formulario_activacion`
--
ALTER TABLE `formulario_activacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `formulario_inactivacion`
--
ALTER TABLE `formulario_inactivacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `aplicativos`
--
ALTER TABLE `aplicativos`
  ADD CONSTRAINT `aplicativos_ibfk_1` FOREIGN KEY (`id_activacion`) REFERENCES `formulario_activacion` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `aplicativos_ibfk_2` FOREIGN KEY (`id_inactivacion`) REFERENCES `formulario_inactivacion` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `formulario_activacion`
--
ALTER TABLE `formulario_activacion`
  ADD CONSTRAINT `formulario_activacion_ibfk_1` FOREIGN KEY (`identificacion`) REFERENCES `aplicativos` (`id_funcionario`);

--
-- Filtros para la tabla `formulario_inactivacion`
--
ALTER TABLE `formulario_inactivacion`
  ADD CONSTRAINT `formulario_inactivacion_ibfk_1` FOREIGN KEY (`identificacion`) REFERENCES `aplicativos` (`id_funcionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
