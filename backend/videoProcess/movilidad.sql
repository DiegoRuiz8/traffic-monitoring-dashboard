-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-11-2024 a las 07:12:24
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `movilidad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camera`
--

CREATE TABLE `camera` (
  `camera_id` int(11) NOT NULL,
  `model` varchar(20) NOT NULL,
  `coordinates` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `last_update` varchar(50) NOT NULL,
  `resolution` varchar(50) NOT NULL,
  `MAC_address` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `camera`
--

INSERT INTO `camera` (`camera_id`, `model`, `coordinates`, `status`, `last_update`, `resolution`, `MAC_address`, `address`) VALUES
(1, 'Hikvision DS-2CD1023', '20.658977352892784, -103.32435941347303', 'active', '2024-11-19 08:45:00', '1280 × 720', '00:1A:2B:3C:4D:5E', 'Calz. Revolución, Olímpica, 44840 Guadal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rush_hour`
--

CREATE TABLE `rush_hour` (
  `time_id` int(11) NOT NULL,
  `camera_id` int(11) NOT NULL,
  `mon_time` time NOT NULL,
  `tue_time` time NOT NULL,
  `wed_time` time NOT NULL,
  `thu_time` time NOT NULL,
  `fri_time` time NOT NULL,
  `sat_time` time NOT NULL,
  `sun_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `view`
--

CREATE TABLE `view` (
  `view_id` int(11) NOT NULL,
  `camera_id` int(11) NOT NULL,
  `amount_car` int(11) NOT NULL,
  `amount_truck` int(11) NOT NULL,
  `amount_bus` int(11) NOT NULL,
  `amount_motorbike` int(11) NOT NULL,
  `amount_bike` int(11) NOT NULL,
  `amount_people` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `avg_speed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `view`
--

INSERT INTO `view` (`view_id`, `camera_id`, `amount_car`, `amount_truck`, `amount_bus`, `amount_motorbike`, `amount_bike`, `amount_people`, `start`, `end`, `avg_speed`) VALUES
(4, 1, 18, 0, 0, 0, 0, 0, '2024-09-11 10:45:00', '2024-09-11 11:00:00', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `camera`
--
ALTER TABLE `camera`
  ADD PRIMARY KEY (`camera_id`);

--
-- Indices de la tabla `rush_hour`
--
ALTER TABLE `rush_hour`
  ADD PRIMARY KEY (`time_id`),
  ADD KEY `camera_id` (`camera_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `view`
--
ALTER TABLE `view`
  ADD PRIMARY KEY (`view_id`),
  ADD KEY `camera_id` (`camera_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `camera`
--
ALTER TABLE `camera`
  MODIFY `camera_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `view`
--
ALTER TABLE `view`
  MODIFY `view_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `rush_hour`
--
ALTER TABLE `rush_hour`
  ADD CONSTRAINT `rush_hour_ibfk_1` FOREIGN KEY (`camera_id`) REFERENCES `camera` (`camera_id`);

--
-- Filtros para la tabla `view`
--
ALTER TABLE `view`
  ADD CONSTRAINT `view_ibfk_1` FOREIGN KEY (`camera_id`) REFERENCES `camera` (`camera_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
