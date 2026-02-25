-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 25-02-2026 a las 00:32:50
-- Versión del servidor: 11.8.3-MariaDB-log
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u417850534_farmacia_depaz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `id_asistencia` int(10) NOT NULL,
  `unico` varchar(25) NOT NULL,
  `user_id` int(10) NOT NULL,
  `hora_entrada` time NOT NULL,
  `fecha_entrada` date NOT NULL,
  `hora_base` time NOT NULL,
  `hora_salida` time NOT NULL,
  `fecha_salida` date NOT NULL,
  `min_tardanza` time NOT NULL,
  `asistencia` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `baja_sunat`
--

CREATE TABLE `baja_sunat` (
  `id_baja` int(10) NOT NULL,
  `id_doc1` int(10) NOT NULL,
  `numero` varchar(8) NOT NULL,
  `fecha` date NOT NULL,
  `aceptado_baja` varchar(100) NOT NULL,
  `xml` varchar(30) NOT NULL,
  `ticket` varchar(20) NOT NULL,
  `has_cpe` varchar(100) NOT NULL,
  `cod_sunat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `id_caja` int(10) NOT NULL,
  `usuario_inicio` int(3) NOT NULL,
  `fec_reg` datetime NOT NULL,
  `fecha` date NOT NULL,
  `inicio` decimal(10,2) NOT NULL,
  `cierre` decimal(10,2) NOT NULL,
  `tienda` int(2) NOT NULL,
  `usuario_cierre` int(3) NOT NULL,
  `faltante` decimal(10,2) NOT NULL,
  `fecha_cierre` datetime NOT NULL,
  `entrada` decimal(10,2) NOT NULL,
  `salida` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`id_caja`, `usuario_inicio`, `fec_reg`, `fecha`, `inicio`, `cierre`, `tienda`, `usuario_cierre`, `faltante`, `fecha_cierre`, `entrada`, `salida`) VALUES
(6, 9, '2023-07-22 17:19:30', '2023-07-22', 100.00, 0.00, 1, 0, 0.00, '1000-10-10 00:00:00', 0.00, 0.00),
(7, 9, '2023-07-23 20:28:07', '2023-07-23', 100.00, 154.00, 1, 9, 0.00, '2023-07-23 22:34:36', 54.00, 0.00),
(8, 9, '2023-07-24 21:39:01', '2023-07-24', 100.00, 208.00, 1, 9, 0.00, '2023-07-24 21:49:35', 108.00, 0.00),
(9, 9, '2023-07-25 20:54:27', '2023-07-25', 100.00, 179.00, 1, 9, 0.00, '2023-07-25 20:57:52', 79.00, 0.00),
(11, 9, '2023-07-26 21:41:58', '2023-07-26', 100.00, 191.00, 1, 9, 0.00, '2023-07-26 21:42:39', 91.00, 0.00),
(12, 9, '2023-07-27 21:41:15', '2023-07-27', 100.00, 120.00, 1, 9, 0.00, '2023-07-29 21:11:54', 20.00, 0.00),
(13, 9, '2023-07-29 21:12:02', '2023-07-29', 100.00, 0.00, 1, 0, 0.00, '1000-10-10 00:00:00', 0.00, 0.00),
(14, 9, '2024-11-29 12:30:10', '2024-11-29', 100.00, 0.00, 1, 0, 0.00, '1000-10-10 00:00:00', 0.00, 0.00),
(15, 9, '2025-06-09 13:18:06', '2025-06-09', 100.00, 295.75, 1, 9, 0.00, '2025-06-09 21:29:39', 195.75, 0.00),
(16, 9, '2025-06-10 15:14:17', '2025-06-10', 100.00, 322.00, 1, 9, 0.00, '2025-06-10 21:07:31', 222.00, 0.00),
(17, 9, '2025-06-11 14:03:21', '2025-06-11', 100.00, 554.00, 1, 9, 0.00, '2025-06-11 19:56:13', 453.98, 0.00),
(18, 9, '2025-06-12 12:19:37', '2025-06-12', 100.00, 722.50, 1, 9, 0.00, '2025-06-12 19:30:36', 622.50, 0.00),
(19, 9, '2025-06-13 13:56:46', '2025-06-13', 100.00, 355.00, 1, 9, 0.00, '2025-06-13 19:47:11', 255.00, 0.00),
(20, 9, '2025-06-14 12:25:37', '2025-06-14', 100.00, 302.50, 1, 9, 0.00, '2025-06-14 13:51:38', 202.50, 0.00),
(21, 9, '2025-06-16 17:05:00', '2025-06-16', 100.00, 342.00, 1, 9, 0.00, '2025-06-16 20:29:27', 242.00, 0.00),
(22, 9, '2025-06-17 11:33:26', '2025-06-17', 100.00, 253.00, 1, 9, 0.00, '2025-06-17 20:12:39', 153.00, 0.00),
(23, 9, '2025-06-18 11:45:13', '2025-06-18', 100.00, 661.75, 1, 9, 0.00, '2025-06-18 20:42:32', 561.75, 0.00),
(24, 9, '2025-06-19 10:39:23', '2025-06-19', 100.00, 534.50, 1, 9, 0.00, '2025-06-19 19:58:00', 434.50, 0.00),
(25, 9, '2025-06-20 09:35:32', '2025-06-20', 100.00, 395.00, 1, 9, 0.00, '2025-06-22 11:31:01', 295.00, 0.00),
(26, 9, '2025-06-21 17:35:31', '2025-06-21', 100.00, 286.00, 1, 9, 0.00, '2025-06-23 13:43:46', 186.00, 0.00),
(27, 9, '2025-06-22 13:27:18', '2025-06-22', 100.00, 177.00, 1, 9, 0.00, '2025-06-22 13:43:53', 77.00, 0.00),
(28, 9, '2025-06-23 13:45:44', '2025-06-23', 100.00, 364.00, 1, 9, 0.00, '2025-06-23 20:28:57', 264.00, 0.00),
(29, 9, '2025-06-24 17:28:36', '2025-06-24', 100.00, 213.00, 1, 9, 0.00, '2025-06-24 21:33:57', 113.00, 0.00),
(30, 9, '2025-06-25 12:24:02', '2025-06-25', 100.00, 403.00, 1, 9, 0.00, '2025-06-27 01:33:45', 303.00, 0.00),
(31, 9, '2025-06-26 13:28:31', '2025-06-26', 100.00, 79.00, 1, 9, 0.00, '2025-06-27 01:33:53', 79.00, 0.00),
(32, 9, '2025-06-27 01:34:05', '2025-06-27', 100.00, 410.50, 1, 9, 0.00, '2025-06-27 20:23:33', 310.50, 0.00),
(34, 9, '2025-06-28 14:51:15', '2025-06-28', 100.00, 406.50, 1, 9, 0.00, '2025-06-28 17:12:51', 306.50, 0.00),
(35, 9, '2025-06-29 18:08:58', '2025-06-29', 100.00, 343.00, 1, 9, 0.00, '2025-06-29 21:01:50', 243.00, 0.00),
(36, 9, '2025-06-30 12:54:32', '2025-06-30', 100.00, 583.00, 1, 9, 0.00, '2025-06-30 20:42:01', 483.00, 0.00),
(37, 9, '2025-07-01 13:45:37', '2025-07-01', 100.00, 664.75, 1, 9, 0.00, '2025-07-01 22:07:22', 564.75, 0.00),
(38, 9, '2025-07-02 20:16:56', '2025-07-02', 100.00, 411.50, 1, 9, 0.00, '2025-07-03 19:27:03', 311.50, 0.00),
(39, 9, '2025-07-03 19:27:17', '2025-07-03', 100.00, 686.50, 1, 9, 0.00, '2025-07-03 23:07:47', 585.50, 0.00),
(40, 9, '2025-07-04 16:34:55', '2025-07-04', 100.00, 503.50, 1, 9, 0.00, '2025-07-04 21:03:53', 403.50, 0.00),
(41, 9, '2025-07-05 11:38:44', '2025-07-05', 100.00, 0.00, 1, 0, 0.00, '1000-10-10 00:00:00', 0.00, 0.00),
(42, 9, '2025-07-06 13:04:29', '2025-07-06', 100.00, 441.00, 1, 9, 0.00, '2025-07-06 20:09:25', 341.00, 0.00),
(43, 9, '2025-07-07 19:59:05', '2025-07-07', 100.00, 360.50, 1, 9, 0.00, '2025-07-07 20:03:36', 260.50, 0.00),
(44, 9, '2025-07-08 14:01:08', '2025-07-08', 100.00, 263.50, 1, 9, 0.00, '2025-07-08 20:08:23', 163.50, 0.00),
(45, 9, '2025-07-09 13:31:05', '2025-07-09', 100.00, 778.75, 1, 9, 0.00, '2025-07-09 20:20:35', 678.75, 0.00),
(46, 9, '2025-07-10 12:52:17', '2025-07-10', 100.00, 400.00, 1, 9, 0.00, '2025-07-10 21:11:59', 246.50, 0.00),
(47, 9, '2025-07-11 12:54:38', '2025-07-11', 100.00, 238.00, 1, 9, 0.00, '2025-07-15 21:40:18', 238.00, 0.00),
(48, 9, '2025-07-13 18:25:32', '2025-07-13', 100.00, 620.50, 1, 9, 0.00, '2025-07-15 21:40:11', 520.50, 0.00),
(49, 9, '2025-07-14 13:52:20', '2025-07-14', 100.00, 300.50, 1, 9, 0.00, '2025-07-15 21:40:28', 200.50, 0.00),
(50, 9, '2025-07-15 18:23:25', '2025-07-15', 100.00, 281.25, 1, 9, 0.00, '2025-07-18 12:13:58', 181.25, 0.00),
(51, 9, '2025-07-16 13:28:24', '2025-07-16', 100.00, 367.75, 1, 9, 0.00, '2025-07-16 20:36:01', 267.75, 0.00),
(52, 9, '2025-07-17 17:14:07', '2025-07-17', 100.00, 263.00, 1, 9, 0.00, '2025-07-18 12:13:45', 163.00, 0.00),
(53, 9, '2025-07-18 11:10:32', '2025-07-18', 100.00, 725.00, 1, 9, 0.00, '2025-07-19 21:01:54', 625.00, 0.00),
(54, 9, '2025-07-19 21:02:01', '2025-07-19', 100.00, 303.00, 1, 9, 0.00, '2025-07-23 21:43:42', 203.50, 0.00),
(55, 9, '2025-07-22 09:41:25', '2025-07-22', 100.00, 245.75, 1, 9, 0.00, '2025-07-22 20:35:02', 145.75, 0.00),
(56, 9, '2025-07-23 13:02:43', '2025-07-23', 100.00, 196.00, 1, 9, 0.00, '2025-07-23 21:43:32', 96.00, 0.00),
(57, 9, '2025-07-24 12:28:01', '2025-07-24', 100.00, 315.75, 1, 9, 0.00, '2025-07-28 19:50:41', 215.75, 0.00),
(58, 9, '2025-07-28 19:50:30', '2025-07-28', 100.00, 0.00, 1, 0, 0.00, '1000-10-10 00:00:00', 0.00, 0.00),
(59, 10, '2026-02-21 08:08:12', '2026-02-21', 300.00, 0.00, 1, 0, 0.00, '1000-10-10 00:00:00', 0.00, 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id_carrito` int(10) UNSIGNED NOT NULL,
  `clave` varchar(10) NOT NULL,
  `id_usuario` int(10) NOT NULL,
  `id_producto` int(10) NOT NULL,
  `cantidad` double NOT NULL,
  `precio` double NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id_carrito`, `clave`, `id_usuario`, `id_producto`, `cantidad`, `precio`, `fecha`) VALUES
(582, '6260d432', 0, 11408, 1, 20, '2020-08-05 12:27:39'),
(583, '3458e0e8', 0, 11424, 5, 17, '2020-08-07 19:12:32'),
(584, '3458e0e8', 0, 11423, 1, 18, '2020-08-07 19:12:22'),
(585, 'a7e4a18d', 0, 11411, 1, 17, '2020-08-13 09:04:49'),
(586, '5d788261', 0, 11402, 1, 20.8, '2020-08-30 14:45:14'),
(587, '45e1bacc', 0, 11575, 2, 14, '2020-09-07 00:03:11'),
(588, '5cb211a5', 0, 11408, 1, 20, '2020-09-09 00:17:22'),
(589, '5cb211a5', 0, 11506, 2, 14, '2020-09-09 00:19:39'),
(590, '08a0cc7c', 0, 11581, 1, 29, '2020-09-12 23:27:09'),
(591, 'e55659c4', 0, 11581, 1, 29, '2020-09-12 23:27:18'),
(592, '14d8261a', 0, 11581, 1, 29, '2020-09-12 23:27:28'),
(593, 'f8b0a31d', 0, 11581, 1, 15000, '2020-09-14 21:55:00'),
(594, '61154cd7', 0, 11408, 1, 25, '2020-09-18 10:08:27'),
(595, '197d3185', 0, 11408, 2, 25, '2020-09-18 10:09:01'),
(596, '197d3185', 0, 11418, 1, 16, '2020-09-18 10:09:07'),
(597, '197d3185', 0, 11417, 1, 18, '2020-09-18 10:09:13'),
(598, '197d3185', 0, 11424, 1, 17, '2020-09-18 10:09:42'),
(599, '8252516b', 0, 11423, 2, 18, '2020-09-22 09:09:42'),
(600, '8252516b', 0, 11422, 2, 19, '2020-09-22 09:09:47'),
(601, '8252516b', 0, 11420, 1, 6, '2020-09-22 09:09:50'),
(602, '5b5d3e37', 0, 11506, 1, 17, '2020-09-27 07:05:56'),
(603, 'df2f45ac', 0, 11506, 2, 14, '2021-04-05 22:33:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(10) NOT NULL,
  `nom_cat` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `des_cat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nom_cat`, `des_cat`) VALUES
(14, 'PAÃ‘ALES', 'ninguna'),
(15, 'DESODORANTE', 'Ninguno'),
(16, 'TOHALLAS HIGIENICAS', 'Ninguno'),
(17, 'CEPILLO DE DIENTES', 'Ninguno'),
(18, 'JABON', 'Ninguno'),
(19, 'SHAMPOO', 'Ninguno'),
(20, 'TALCO', 'Ninguno'),
(22, 'KIT PARA BEBE ', 'Ninguno'),
(23, 'ESPUMA PARA  AFEITAR', 'Ninguno'),
(24, 'VITAMINA', 'Ninguno'),
(26, 'PRESERVATIVO', 'Ninguno'),
(27, 'ENJUAGUE BUCAL', 'Ninguno'),
(28, 'CREMA DENTAL', 'Ninguno'),
(29, 'HOJA DE AFEITAR', 'Ninguno'),
(30, 'CREMA FACIAL', 'Ninguno'),
(32, 'AFEITADOR', 'Ninguno'),
(33, 'MEDICAMENTOS', 'Ninguno'),
(34, 'UNGUENTO TOPICO', 'Ninguno'),
(35, 'GEL PARA CABELLO ', 'Ninguno'),
(36, 'PAÃ‘ITOS HUMEDOS', 'Ninguno'),
(37, 'PAPEL HIGIENICO', 'Ninguno'),
(38, 'BLOQUEADOR SOLAR', 'Ninguno'),
(39, 'EFERVESCENTES', 'Ninguno'),
(40, 'SOLUCION TOPICA', 'Ninguno'),
(41, 'HILO DENTAL', 'Ninguno'),
(42, 'BALSAMO LABIAL', 'Ninguno'),
(43, 'CURITAS', 'Ninguno'),
(44, 'HISOPOS', 'Ninguno'),
(45, 'CORTA UÃ‘AS', 'Ninguno'),
(46, 'PINZA', 'Ninguno'),
(47, 'SUERO', 'Ninguno'),
(48, 'PAÃ‘UELOS DESCARTABLES', 'Ninguno'),
(49, 'FORMULAS NUTRICIONALES', 'Ninguno'),
(50, 'ALGODON HIDROFILO', 'Ninguno'),
(51, 'TETINA / CHUPON', 'Ninguno'),
(52, 'BIBERONES', 'Ninguno'),
(53, 'JUEGOS DIDACTICOS', 'Ninguno'),
(54, 'KIT PARA NIÃ‘O', 'Ninguno'),
(55, 'PEZONERA', 'Ninguno'),
(56, 'CHUPONES', 'Ninguno'),
(57, 'KIT DE ASEO NIÃ‘OS', 'Ninguno'),
(58, 'MORDEDORES', 'Ninguno'),
(59, 'SET MANICURE BEBE', 'Ninguno'),
(60, 'SET DE CUCHARA BEBE', 'Ninguno'),
(61, 'DISPOSITIVOS MEDICOS', 'Ninguno'),
(62, 'AMPOLLA', 'Ninguno'),
(63, 'JARABE', 'Ninguno'),
(64, 'CAPSULAS', 'Ninguno'),
(65, 'TABLETAS RECUBIERTAS', 'Ninguno'),
(66, 'JARABE / BLISTER', 'Ninguno'),
(67, 'SOBRES', 'Ninguno'),
(68, 'CARAMELOS', 'Ninguno'),
(69, 'OVULOS', 'Ninguno'),
(70, 'COMPRIMIDO', 'Ninguno'),
(71, 'SET BIBERON / PLATO BEBE', 'Ninguno'),
(72, 'MASCARILLA', 'Ninguno'),
(73, 'PROTECTOR FACIAL', 'Ninguno'),
(74, 'ATOMIZADOR', 'Ninguno'),
(75, 'ALCOHOL ', 'Ninguno'),
(76, 'JABON LIQUIDO', 'Ninguno'),
(78, 'AGUA MINERAL', 'Ninguno'),
(79, 'BEBIDAS ENERGIZANTES', 'Ninguno'),
(80, 'GOTAS', 'Ninguno'),
(81, 'CREMA TOPICA', 'Ninguno'),
(82, 'CREMA ANTIFUNGICA', 'Ninguno'),
(83, 'INHALADOR', 'Ninguno'),
(84, 'POLVO PARA SUSPENSION', 'Ninguno'),
(85, 'TABLETAS MASTICABLES', 'Ninguno'),
(86, 'AMPOLLETAS VIA ORAL', 'Ninguno'),
(88, 'ESPARADRAPO', 'NINGUNO'),
(90, 'FRASCO COLECTOR DE ORINA', 'NINGUNO'),
(91, 'FRASCO COLECTOR DE HECES', 'NINGUNO'),
(92, 'AEROCAMARA', 'NINGUNO'),
(93, 'GUANTES', 'NINGUNO'),
(94, 'GASA', 'NINGUNO'),
(95, 'CERA DENTAL', 'NINGUNO'),
(96, 'VENDA', 'NINGUNO'),
(97, 'LLAVE TRIPLE VIA', 'NINGUNO'),
(98, 'DISPOSITIVOS PARA OXIGENO', 'NINGUNO'),
(99, 'ALITA', 'NINGUNO'),
(100, 'JERINGAS', 'NINGUNO'),
(101, 'GOTERO', 'NINGUNO'),
(102, 'PARCHES', 'NINGUNO'),
(103, 'EQUIPO DE PROTECCION PERSONAL', 'NINGUNO'),
(104, 'SUPOSITORIO', 'NINGUNO'),
(105, 'UNGUENTO OFTALMICO', 'NINGUNO'),
(106, 'POMADA', 'NINGUNO'),
(107, 'GRAGEAS', 'NINGUNO'),
(108, 'SOLUCION GINGIVAL', 'NINGUNO'),
(109, 'JARABES', 'Antiflamatorio'),
(111, 'AGUA OXIGENADA', 'peróxido de hidrógeno'),
(112, 'MUCOLITICO Y EXPECTORANTE', 'fármacos que modifican las características fisicoquímicas de la secreción traqueobronquial de forma '),
(113, 'ANTIBIOTICO', 'Los antibióticos son medicamentos que combaten infecciones causadas por bacterias en los seres human'),
(114, 'SPRAY BUCAL', 'AFTA Y LLAGAS'),
(115, 'DESPARASITANTE', 'Los medicamentos antiparasitarios son los que se usan para tratar las parasitosis'),
(116, 'ANTIGRIPAL', 'Los antigripales contienen diferentes principios activos que atacan los principales síntomas de la g'),
(117, 'ANTIGOTOSO', 'Fármaco utilizado en el tratamiento de la gota. Puede reducir la inflamación aguda, inhibir la sínte'),
(118, 'OMEGA3', 'Los ácidos grasos omega-3 son un tipo de grasa poliinsaturada. Necesitamos estas grasas para fortale'),
(119, 'LAGRIMAS COMESTICAS', 'Productos cosmetico'),
(120, 'LOCION', 'LOCION'),
(121, 'CREMA VAGINAL', 'CREMA VAGINAL'),
(122, 'SOLUCION INYECTABLE', 'SOLUCION INYECTABLE'),
(124, 'GEL TOPICO', 'GEL TOPICO'),
(125, 'EMULSION', 'EMULSION'),
(126, 'SUSPENSION ORAL', 'SUSPENSION ORAL'),
(127, 'SHAMPOO INTIMO', 'SHAMPOO INTIMO'),
(128, 'LOCION INTIMA FEMENINA', 'LOCION INTIMA FEMENINA'),
(129, 'GOTAS PEDRIATICAS', 'GOTAS PEDRIATICAS'),
(130, 'LAGRIMAS OCULARES', 'LAGRIMAS OCULARES'),
(131, 'PRUEBAS DE EMBARAZO', 'PRUEBAS DE EMBARAZO'),
(132, 'PRENATALESS', 'PRENATALES'),
(133, 'TABLETAS EFESVESCENTES', 'TABLETAS EFESVESCENTES'),
(134, 'AEROSOL', 'AEROSOL'),
(135, 'CATETER', 'CATETER'),
(136, 'TONICO', 'TONICO'),
(137, 'SOLUCION ORAL', 'SOLUCION ORAL'),
(139, 'BOTE', 'BOTE'),
(140, 'EQUIPO DE SUERO', 'EQUIPO DE SUERO'),
(141, 'BARRA', 'BARRA'),
(142, 'RECOLECTORES', 'RECOLECTORES'),
(143, 'ALGODON', 'ALGODON'),
(144, 'SUPLEMENTO DIETETICO', 'SUPLEMENTO DIETETICO'),
(145, 'ACEITE DE OLIVA', 'ACEITE DE OLIVA'),
(146, 'INMOBILIZADOR', 'INMOBILIZADOR'),
(147, 'AGUJA', 'AGUJA'),
(148, 'HOJA DE BISTURI', 'HOJA DE BISTURI'),
(149, 'CARAMELO', 'CARAMELO'),
(150, 'CREMA ANTIHEMORROIDAL', 'CREMA ANTIHEMORROIDAL'),
(151, 'SACHETS', 'SACHETS'),
(152, 'SOLUCION ISOTONICA', 'SOLUCION ISOTONICA'),
(153, 'CONDONES', 'CONDONES'),
(154, 'LUBRICANTE', 'LUBRICANTE'),
(155, 'TINTURA', 'TINTURA'),
(156, 'ACEITE', 'ACEITE'),
(157, 'GLICERINA', 'GLICERINA'),
(158, 'SUSPENSION OTICA', 'SUSPENSION OTICA'),
(159, 'SOLUCION OFTALMICA', 'SOLUCION OFTALMICA'),
(160, 'LATA', 'LATA'),
(162, 'TERMOMETRO', 'TERMOMETRO'),
(163, 'SPRAY', 'SPRAY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `client`
--

CREATE TABLE `client` (
  `id_online` int(12) NOT NULL,
  `cliente` varchar(200) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre_cliente` varchar(255) NOT NULL,
  `telefono_cliente` char(30) NOT NULL,
  `email_cliente` varchar(64) NOT NULL,
  `direccion_cliente` varchar(255) NOT NULL,
  `status_cliente` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `doc` varchar(15) NOT NULL,
  `dni` varchar(10) NOT NULL,
  `vendedor` varchar(100) NOT NULL,
  `pais` text NOT NULL,
  `departamento` text NOT NULL,
  `provincia` text NOT NULL,
  `distrito` text NOT NULL,
  `cuenta` text NOT NULL,
  `tipo1` int(2) NOT NULL,
  `tienda` int(10) NOT NULL,
  `users` int(5) NOT NULL,
  `deuda` decimal(8,2) NOT NULL,
  `debe` decimal(8,2) NOT NULL,
  `documento` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `telefono_cliente`, `email_cliente`, `direccion_cliente`, `status_cliente`, `date_added`, `doc`, `dni`, `vendedor`, `pais`, `departamento`, `provincia`, `distrito`, `cuenta`, `tipo1`, `tienda`, `users`, `deuda`, `debe`, `documento`) VALUES
(1, 'CLIENTES VARIOS OK', '', '', '', 1, '0000-00-00 00:00:00', '0', 'C/F', '', '', 'Junin', 'Huancayo', 'Tambo', '', 1, 1, 0, 28003.00, 0.00, 'C/F'),
(659, 'JHENRRY CASIMIRO SILVA', '999987790', 'compuexpertos@gmail.com', 'Jose olaya - Huancayo', 1, '2021-06-14 11:41:05', '0', '42660983', '', 'Peru', '', '', '', '', 1, 1, 0, 0.00, 0.00, '42660983'),
(660, 'MARINET SUSAN CARHUANCHO MUCHA', '', '', '', 1, '2021-06-30 10:33:29', '0', '42225921', '', 'Peru', '', '', '', '', 1, 1, 0, 0.00, 0.00, '42225921'),
(661, 'VIRGINIA HUILLCAS HUINCHO', '974331337', 'huillcask@gmail.com', 'Huancayo', 1, '2021-07-02 01:21:52', '0', '71240003', '', 'Peru', '', '', '', '', 1, 1, 0, 0.00, 0.00, '71240003'),
(662, 'HUILLCAS HUINCHO VICTORIANO', '974331337', 'huillcask@gmail.com', 'Huancayo', 1, '2021-07-02 05:04:42', '10712400264', '0', '', 'Peru', 'Junin', 'Huancayo', 'Tambo', '123456789', 1, 1, 0, 0.00, 0.00, '10712400264'),
(664, 'ANTONIO HUILLCAS APARCO', '974331337', 'huillcask@gmail.com', 'Jr. Ica huancayo', 1, '2021-07-04 04:21:49', '0', '23464740', '', 'Peru', '', '', '', '', 1, 1, 0, 0.00, 0.00, '23464740'),
(665, 'MUNICIPALIDAD PROVINCIAL CHURCAMPA', '', '', 'JR. DOS DE MAYO NRO. S/N HUANCAVELICA CHURCAMPA CHURCAMPA', 1, '2021-07-05 03:18:39', '20165762470', '0', '', 'Peru', '', '', '', '', 1, 1, 0, 0.00, 0.00, '20165762470'),
(669, 'FONDO DE ASEGURAMIENTO EN SALUD DE LA PNP-SALUDPOL', '', '', '', 1, '2021-09-09 20:37:44', '20178922581', '0', '', 'Peru', '', '', '', '', 1, 1, 0, 0.00, 0.00, '20178922581'),
(670, 'SAUL PAQUIYAURI TICLLACONDOR', '', '', '', 1, '2021-09-20 08:47:53', '0', '71240004', '', 'Peru', '', '', '', '', 1, 1, 0, 0.00, 0.00, '71240004'),
(671, 'YURI ISAAC TURPO PHUÑO', '', '', '', 1, '2022-11-17 09:35:58', '0', '45290553', '', 'Peru', '', '', '', '', 1, 1, 0, 0.00, 0.00, '45290553'),
(672, 'RUBEN ESTEBAN TIPIANI AUDANTE', '667777', 'gggghhh@gmail.com', 'ghj', 1, '2022-12-19 22:52:37', '0', '42578369', '', 'Peru', '', '', '', '', 1, 1, 0, 0.00, 0.00, '42578369'),
(675, 'CLIENTES VARIOS1', '', '', '', 1, '2023-07-24 21:40:41', '0', '11111111', '', 'Peru', '', '', '', '', 1, 1, 0, 0.00, 0.00, '11111111'),
(678, 'DROGUEFAR', '23024500', 'droguefar@gmail.com', 'Ciudad de, 5 Calle 1-02, Cdad. de Guatemala 01013', 1, '2023-07-29 23:36:45', '104218487', '0', 'CARLOS LOPEZ', 'Peru', 'Guatemala', 'Villa Nueva', '10', '0130231996', 2, 1, 0, 0.00, 0.00, '104218487'),
(679, 'CLIENTES VARIOS', '', '', '', 1, '2025-06-09 14:55:29', '111111111', '0', '', 'Peru', '', '', '', '', 1, 1, 0, 0.00, 0.00, '111111111'),
(680, 'ASOCIFARM', '', '', '27AVE BOULEVAR 7-25 COLONIA EL NARANJO, DISTRIBODEGAS 2, BODEGA A3 ZONA 4 MIXCO, GUATEMALA', 1, '2025-06-19 12:31:02', '056631626', '0', '', 'Peru', 'GUATEMALA', '', '', '', 2, 1, 0, 0.00, 958.89, '056631626'),
(681, 'DROGUERIA ALEGRIA', '', '', '6TA AVENIDA 3-70 ZONA 1 VILLA NUEVA GUATEMALA', 1, '2025-06-23 13:36:19', '104218488', '0', '', 'Peru', '', '', '', '', 2, 1, 0, 0.00, 0.00, '104218488');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(10) NOT NULL,
  `id_producto` int(10) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `comentario` text NOT NULL,
  `correo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante_pago`
--

CREATE TABLE `comprobante_pago` (
  `id_comprobante` int(2) NOT NULL,
  `cod_comprobante` varchar(3) NOT NULL,
  `des_comprobante` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `comprobante_pago`
--

INSERT INTO `comprobante_pago` (`id_comprobante`, `cod_comprobante`, `des_comprobante`) VALUES
(1, '01', 'Factura'),
(2, '03', 'Boleta de Venta'),
(3, '100', 'Guia'),
(4, '02', 'Recibo por Honorarios'),
(5, '00', 'Otros (especificar)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `id` int(10) NOT NULL,
  `tipo` int(2) NOT NULL,
  `a1` text NOT NULL,
  `a2` text NOT NULL,
  `a3` text NOT NULL,
  `a4` text NOT NULL,
  `a5` text NOT NULL,
  `a6` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `consultas`
--

INSERT INTO `consultas` (`id`, `tipo`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`) VALUES
(8741, 37, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id_contacto` int(10) UNSIGNED NOT NULL,
  `nom_cont` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL,
  `tema` varchar(100) NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id_contacto`, `nom_cont`, `email`, `fecha`, `tema`, `mensaje`) VALUES
(3, '', 'admin@admin.com', '2020-06-30 18:58:05', '1232131232', ''),
(4, '', 'marcoantonio_n1@hotmail.com', '2020-07-01 13:24:15', '949594645', ''),
(5, '', 'principe1814@gmail.com', '2020-07-01 13:28:53', '997934525', ''),
(7, '', 'iroditi0925@gmail.com', '2020-07-01 13:51:46', '0983388723', ''),
(9, '', 'robersvilla.1804@gmail.com', '2020-07-01 14:44:27', '998583665 ', ''),
(11, '', 'tezt2020@gmail.com', '2020-07-01 15:20:28', 'tezt2020@gmail.com', ''),
(12, '', 'accm787@outlook.com', '2020-07-01 16:58:07', '959670064', ''),
(13, '', 'demo@gmail.com', '2020-07-01 19:40:06', '973307372', ''),
(14, '', 'jusor1975@yahoo.com', '2020-07-01 21:16:47', '980606901', ''),
(15, '', 'builderdotnet@gmail.com', '2020-07-01 21:20:52', '949332944', ''),
(16, '', 'foo@yopmail.com', '2020-07-01 21:21:09', '999999999', ''),
(17, '', 'demo@gmail.com', '2020-07-01 21:48:58', '999999999', ''),
(18, '', 'demo@demo.com', '2020-07-02 08:27:23', '111111111', ''),
(19, '', 'pruebadesistema@yopmail.com', '2020-07-02 12:56:40', '9864050166', ''),
(20, 'Marco Antonio CARDOZO MONTALVO', 'cardozomarco@hotmail.com', '2020-07-02 14:05:26', '976499255', 'Estoy interesado. Cómo ser&iacute;a para registrar 18000 productos'),
(21, 'Marco Antonio CARDOZO MONTALVO', 'cardozomarco@hotmail.com', '2020-07-02 14:13:31', '976499255', 'Estoy interesado. Cómo ser&iacute;a para registrar 18000 productos'),
(22, '', 'jharin.25@hotmail.com', '2020-07-02 21:49:05', '987654321', ''),
(23, '', 'yy@hh.c', '2020-07-02 21:52:22', 'uu', ''),
(24, '', 'f.@dd.com', '2020-07-02 21:53:47', 'ddf', ''),
(25, '', 'gemaw78068@frost2d.net', '2020-07-03 06:13:42', '99999999', ''),
(26, '', 'fsd@sdf.com', '2020-07-03 22:01:54', 'sdf', ''),
(27, '', 'fsd@sdf.com', '2020-07-03 22:01:54', 'sdf', ''),
(28, '', 'Roberto.urbaez89@gmail.com', '2020-07-05 19:19:34', '5804168829693', ''),
(29, '', 'ramonrojaslopez@gmail.com', '2020-07-10 21:05:33', '8094248312', ''),
(30, '', 'ramonrojaslopez@gmail.com', '2020-07-10 21:11:34', '8094248312', ''),
(31, '', 'ramonrojaslopez@gmail.com', '2020-07-12 18:52:59', '8094248312', ''),
(32, '', 'ramonrojaslopez@gmail.com', '2020-07-12 19:04:04', '8094248312', ''),
(33, '', 'magy_jr@hotmail.com', '2020-07-14 21:22:50', '0993580036', ''),
(34, '', 'alexandercarpato@gmail.com', '2020-07-15 08:59:43', '809 467-9083', ''),
(35, '', 'jarcech00@gmail.com', '2020-07-15 17:44:12', '990009756', ''),
(36, '', 'fullpagos2017yr@hotmail.com', '2020-07-15 18:13:19', '956103164', ''),
(37, '', 'espinozafc@gmail.com', '2020-07-15 23:39:06', '987654321', ''),
(38, '', 'aylin99h_x931l@zmat.xyz', '2020-07-17 18:26:23', '987635326', ''),
(39, '', 'as@as.as', '2020-07-17 21:48:39', 'as', ''),
(40, '', 'as@as.as', '2020-07-17 21:49:15', 'as', ''),
(41, '', 'JOSESICCHA@GMAIL.COM', '2020-07-17 21:51:20', '958029891', ''),
(42, '', 'JOSESICCHA@GMAIL.COM', '2020-07-17 22:35:29', '958029891', ''),
(43, '', 'jorgedj07@gmail.com', '2020-07-21 21:00:44', '098012770', ''),
(44, '', 'jorgedj07@gmail.com', '2020-07-21 21:39:32', '098012770', ''),
(45, '', 'lokiam1910@gmail.com', '2020-07-27 11:02:31', '506 70468335', ''),
(46, '', 'ss@sfsdf.com', '2020-07-30 09:18:05', '685954645', ''),
(47, '', 'ss@sfsdf.com', '2020-07-30 09:39:45', '685954645', ''),
(48, '', 'ss@sfsdf.com', '2020-07-30 09:42:25', '685954645', ''),
(49, '', 'dgfgd@gsdgd.com', '2020-07-30 09:52:05', '34534535', ''),
(50, '', 'fjdjds@ffkd.com', '2020-07-30 09:53:21', '9653833333', ''),
(51, '', 'ok_reyraq@hotmail.com', '2020-08-01 19:05:13', '70101101', ''),
(52, '', 'pventa@gmail.com', '2020-08-03 21:21:40', '999888777', ''),
(53, '', 'cynthia.chugchilan9415@utc.edu.ec', '2020-08-06 13:32:21', '0983991074', ''),
(54, '', 'cg_velazco@hotmail.com', '2020-08-07 08:45:24', '99999999990000', ''),
(55, '', 'darrenhuaman@gmail.com', '2020-08-07 19:05:43', '997068807', ''),
(56, '', 'darrenhuaman@gmail.com', '2020-08-07 19:05:44', '997068807', ''),
(57, '', 'dsfsdf@ffsdf.com', '2020-08-08 23:24:08', '34634535', ''),
(58, '', 'aetechnova@gmail.com', '2020-08-09 19:20:48', '991334125', ''),
(59, '', 'candradesmartinez17@gmail.com', '2020-08-12 13:17:04', '3137267613', ''),
(60, '', 'PABLO11086@GMAIL.COM', '2020-08-12 21:35:49', '966999533', ''),
(61, '', 'kevin-cordonh@hotmail.com', '2020-08-17 23:56:13', '66462913', ''),
(62, '', 'p.cruz0089@gmail.com', '2020-08-21 15:50:19', '981577835', ''),
(63, '', 'ismaelmolina719@gmail.com', '2020-08-22 17:35:55', '8097798722', ''),
(64, '', 'abel.angelsc@gmail.com', '2020-08-24 17:35:07', '961104340', ''),
(65, '', 'jesuseconce17@gmail.com', '2020-08-27 06:58:48', 'jesuseconce17@gmail.com', ''),
(66, '', 'abel.angelsc@gmail.com', '2020-08-28 19:50:13', '961104340', ''),
(67, '', 'abel.angelsc@gmail.com', '2020-08-29 13:02:19', '961104340', ''),
(68, '', 'lemos@dgf.com', '2020-08-29 16:20:51', '999888666', ''),
(69, '', 'mario.rojas@gmail.com', '2020-08-31 11:42:38', '999587652', ''),
(70, '', 'issema2020@gmail.com', '2020-09-12 12:57:23', '2214000392', ''),
(71, '', 'sdsds@dd.com', '2020-09-14 20:19:04', '(59) 599410101', ''),
(72, '', 'marlonmorel301@gmail.com', '2020-09-23 06:24:46', '+50494527744', ''),
(73, '', 'marlonmorel301@gmail.com', '2020-09-23 06:25:43', '+50494527744', ''),
(74, '', 'sdad@dsd.com', '2020-09-23 19:21:19', '(59) 599410101', ''),
(75, 'SEBASTIAN BORJA', 'snborja@tecnosolucion.com.py', '2020-09-23 19:49:19', '99401010', 'hola, quisiera saber si puedes hacer la adaptacion de tu software para una ferreteria, y lo quiero usar en paraguay, por lo que no estoy necesitando la parte de facturacion electronica ni tienda online, solo seria la parte de facturacion local.'),
(76, '', 'mi@correo1.comddd', '2020-09-25 14:02:52', '954012392', ''),
(77, '782561 Kennethhaw', 'naummarkin5154@yandex.ru', '2020-09-27 04:52:14', 'Kennethhaw', '???? ?? ??????????? ???????????? ?????? (??????) \r\n??? ?????? ?????? ??????? «SEO ????????????»,?? ??? ??? ????? ?????????. \r\n? ????? ?????? ?? ????????? ?? ?????? ??????????-?????? ???. \r\nhttps://offeramazon.ru/2020/09/25/xrumer/'),
(78, '', 'sandromv96@gmail.com', '2020-10-03 13:33:50', 'san336534', ''),
(79, '', 'sandromv96@gmail.com', '2020-10-03 13:34:54', 'san336534', ''),
(80, '', 'patriciagestido@hotmail.com', '2020-10-06 08:29:35', '2236008018', ''),
(81, '', 'demo@gmail.com', '2020-10-06 22:31:42', '123456789', ''),
(82, '', 'elmer.homs@gmail.com', '2020-10-07 00:52:33', '939451526', ''),
(83, '', 'elmer.homs@gmail.com', '2020-10-07 01:37:44', '939451526', ''),
(84, '336696 Danil', 'southlife80@mail.ru', '2020-10-09 18:35:16', 'Danil', '????????? ? ?????'),
(85, '', 'admin@gmail.com', '2020-10-12 13:15:05', '2838382828', ''),
(86, '', 'jenny.chauca1979@gmail.com', '2020-10-12 14:03:17', '0991702003', ''),
(87, '', 'demo@gmail.com', '2020-10-13 23:54:44', '987654321', ''),
(88, '654842 Ramgaism', 'wysylaja@cbd-8.com', '2020-10-16 02:56:58', 'Ramgaism', 'tablets http://cialis20walmart.com - tribenzor besonderes aldactone festen'),
(89, '', 'elmer.homs@gmail.com', '2020-10-17 00:25:13', '939451526', ''),
(90, '', 'heberluis94@gmail.com', '2020-10-18 14:08:10', '+58424316139', ''),
(91, '', 'heberluis94@gmail.com', '2020-10-18 14:08:21', '+58424316139', ''),
(92, '', 'heberluis94@gmail.com', '2020-10-18 14:09:17', '+58424316139', ''),
(93, '', 'dasd@h.com', '2020-10-20 17:36:08', '3434', ''),
(94, '', 'dada@df.com', '2020-10-20 17:42:20', '32424', ''),
(95, '', 'graciela_carl@outlook.com', '2020-10-21 10:48:29', '0981812084', ''),
(96, '', 'dsd@jjd.com', '2020-10-27 15:46:41', '34424', ''),
(97, '', 'fdgd@sadas', '2020-11-13 09:55:40', 'sdf', ''),
(98, '', 'fgtg@sdas', '2020-11-16 02:40:59', 'sdfsed', ''),
(99, '', 'flakovhsa@yopmail.com', '2020-11-17 11:12:46', '9934556720', ''),
(100, '', 'ferchinao@hotmail.com', '2020-11-18 09:48:40', '0999184215', ''),
(101, '', 'demo@e.org.pe', '2020-11-19 00:08:38', '985 603 718', ''),
(102, '', 'demo@e.org.pe', '2020-11-19 00:48:00', '985 603 718', ''),
(103, 'Sebastian Aragon', 'marketing.central.caymaqp@gmail.com', '2020-11-19 21:20:29', '977713122', 'Hola estoy interesado en un sistema de Facturación Electrónica para mi empresa, es un Salón de belleza, tiene un programa para este rubro o cual se puede adaptar.'),
(104, '', 'sef@afaf.com', '2020-11-29 13:12:20', 'asdf', ''),
(105, '', 'ismaelulman8@gmail.com', '2020-11-30 19:46:11', '3492320050', ''),
(106, '', 'juykel@gmail.com', '2020-12-01 19:10:59', '3043660025', ''),
(107, '', 'aweycl@gmail.com', '2020-12-05 17:44:51', '987656565', ''),
(108, '', 'yooricoco@hotmail.com', '2020-12-07 17:43:38', '5511582061', ''),
(109, '', 'SELENART@outlook.com', '2020-12-08 10:11:51', '0983176138', ''),
(110, '', 'mq@morangesoft.com', '2020-12-10 17:20:22', '990148222', ''),
(111, '', 'mq@morangesoft.com', '2020-12-10 17:21:39', '990148222', ''),
(112, 'Angel Sosa', 'angelnewww@gmail.com', '2020-12-18 12:37:48', '+595971411066', 'hola quiero la demo de tus sitemas para hacer una prueba antes de comprar'),
(113, '', 'jorgeh@unica.cu', '2020-12-21 14:38:56', '+5354253646', ''),
(114, '', 'ojos_verdes556@hotmail.com', '2021-01-04 12:16:04', '1128816939', ''),
(115, '', 'amor_pipa@hotmail.com', '2021-01-06 05:41:02', '983184623', ''),
(116, '', 'gerencia@asesoriamurrieta.com', '2021-01-14 22:39:14', '976248185', ''),
(117, '', 'clever.humpire@gmail.com', '2021-01-15 15:35:43', 'clever.humpire@gmail.com', ''),
(118, '', 'davidballestas10@hotmail.com', '2021-01-16 08:14:03', '3112885672', ''),
(119, '', 'SAD@DJF.CO', '2021-01-19 11:25:26', '1212', ''),
(120, '', 'DSA@JD.COM', '2021-01-19 11:26:07', '1212', ''),
(121, '', 'luis13rs@hotmail.com', '2021-01-19 14:20:52', '984493506', ''),
(122, '957992 generic viagra canadian pharmacy online', 'duzeyi@vgsnake.com', '2021-01-22 08:07:09', 'generic viagra from india', 'viagra 5 mg online moderators\r\n discount viagra\r\n kamagra generic viagra\r\n - buy viagra today columbus oh\r\n https://vgsnake.com/# - cheap virgar u.s.a.\r\n viagra 10 mg effectiveness knowledge base'),
(123, '', 'rayojuncos@hotmail.com', '2021-02-03 07:49:41', '7874564455', ''),
(124, '', 'rafael76372@gmail.com', '2021-02-04 11:15:36', '04145874125', ''),
(125, '', 'gonzalo@gmail.com', '2021-02-08 14:25:05', '609853521', ''),
(126, '', 'soygoku212@outlook.com', '2021-02-11 20:57:07', '0980724680', ''),
(127, '', 'mateito26017@hotmail.com', '2021-02-15 07:30:53', '0986611674', ''),
(128, '', 'brenda@gmail.com', '2021-02-15 07:54:55', '13456733', ''),
(129, '', 'iglesiabautistacristovivegt@gmail.com', '2021-02-15 11:20:35', '40414243', ''),
(130, '', 'jhonatan.fmh@gmail.com', '2021-02-21 13:19:00', '935889381', ''),
(131, '', 'jhonatan.fmh@gmail.com', '2021-02-21 13:19:20', '935889381', ''),
(132, '', 'eumerperez@gmail.com', '2021-02-26 07:49:30', '04140219936', ''),
(133, '', 'camposwisner@gmail.com', '2021-02-26 15:34:58', '61081864', ''),
(134, '', 'aas@aas.asas', '2021-02-28 19:26:48', '999888777', ''),
(135, '', 'sad@asd-c', '2021-03-01 18:45:48', '56464465', ''),
(136, '', 'linapre59@gmail.com', '2021-03-06 14:04:08', '86947361', ''),
(137, '951497 Floydbem', 'qmlya@goposts.site', '2021-03-15 16:55:19', 'Floydbem', 'Free sex dating in your city, here https://bit.ly/2LtgS3Z'),
(138, '', 'hernandezalbertojimenez@gimail.com', '2021-03-17 09:25:51', 'hernandezalbertojimenez@gimail.com', ''),
(139, '', 'orlatrade@hotmail.com', '2021-03-22 15:51:56', '995707179', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `cod_cue` int(4) NOT NULL,
  `nom_cue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosempresa`
--

CREATE TABLE `datosempresa` (
  `nom_emp` varchar(200) NOT NULL,
  `id_emp` int(2) NOT NULL,
  `tienda` int(10) NOT NULL,
  `des_emp` text NOT NULL,
  `mis_emp` text NOT NULL,
  `vis_emp` text NOT NULL,
  `tel_emp` varchar(200) NOT NULL,
  `dir_emp` varchar(300) NOT NULL,
  `email_emp` text NOT NULL,
  `face_emp` varchar(200) NOT NULL,
  `tiwter_emp` text NOT NULL,
  `youtube_emp` text NOT NULL,
  `linkedin_emp` text NOT NULL,
  `wasap_emp` varchar(30) NOT NULL,
  `dolar` float NOT NULL,
  `alerta` double NOT NULL,
  `logo` varchar(20) NOT NULL,
  `fotovision` varchar(20) NOT NULL,
  `fotomision` varchar(20) NOT NULL,
  `slider1` varchar(20) NOT NULL,
  `slider2` varchar(20) NOT NULL,
  `slider3` varchar(20) NOT NULL,
  `slider4` varchar(20) NOT NULL,
  `slider5` varchar(20) NOT NULL,
  `comentario1` text NOT NULL,
  `comentario2` text NOT NULL,
  `comentario3` text NOT NULL,
  `comentario4` text NOT NULL,
  `comentario5` text NOT NULL,
  `precio2` decimal(7,2) NOT NULL,
  `precio3` decimal(7,2) NOT NULL,
  `fac_ele` int(2) NOT NULL,
  `usuariosol` varchar(30) NOT NULL,
  `clavesol` varchar(30) NOT NULL,
  `clave` varchar(50) NOT NULL,
  `moneda` int(2) NOT NULL,
  `google_maps` text NOT NULL,
  `color` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `datosempresa`
--

INSERT INTO `datosempresa` (`nom_emp`, `id_emp`, `tienda`, `des_emp`, `mis_emp`, `vis_emp`, `tel_emp`, `dir_emp`, `email_emp`, `face_emp`, `tiwter_emp`, `youtube_emp`, `linkedin_emp`, `wasap_emp`, `dolar`, `alerta`, `logo`, `fotovision`, `fotomision`, `slider1`, `slider2`, `slider3`, `slider4`, `slider5`, `comentario1`, `comentario2`, `comentario3`, `comentario4`, `comentario5`, `precio2`, `precio3`, `fac_ele`, `usuariosol`, `clavesol`, `clave`, `moneda`, `google_maps`, `color`) VALUES
('BelsoftINC', 1, 1, 'La salud a tu alcance', 'Botica mas vida y salud', 'La salud a tu alcance', '987654321', 'Jr. Sucre 113 - El tambo - Huancayo', 'contacto@continental.com', 'https://www.facebook.com/ejemplo', 'https://twitter.com/ejemplo', 'https://www.youtube.com/channel/ejemplo', '', '938806297', 3.2, 5, 'logo.jpg', 'vision.jpg', 'mision.jpg', 'fotoPr8dJmY0.jpg', 'fotoWNO7xmCv.jpg', 'fotox1Pqoy0j.jpg', '', '', 'Bienvenido', 'Tienda Online', '', '', '', 10.00, 20.00, 3, 'MODDATOS', 'moddatos', 'ALAIMES64', 0, '', 'default-theme');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_factura`
--

CREATE TABLE `detalle_factura` (
  `id_detalle` int(11) NOT NULL,
  `id_cliente` int(10) NOT NULL,
  `id_vendedor` int(10) NOT NULL,
  `numero_factura` int(11) NOT NULL,
  `ot` varchar(20) NOT NULL,
  `id_producto` varchar(100) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `tienda` int(2) NOT NULL,
  `activo` int(1) NOT NULL,
  `ven_com` int(2) NOT NULL,
  `fecha` datetime NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `tipo_doc` int(2) NOT NULL,
  `inv_ini` decimal(10,2) NOT NULL,
  `moneda` decimal(4,2) NOT NULL,
  `folio` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `detalle_factura`
--

INSERT INTO `detalle_factura` (`id_detalle`, `id_cliente`, `id_vendedor`, `numero_factura`, `ot`, `id_producto`, `cantidad`, `precio_venta`, `tienda`, `activo`, `ven_com`, `fecha`, `precio_compra`, `tipo_doc`, `inv_ini`, `moneda`, `folio`) VALUES
(5789, 1, 1, 359, '1', '11834', 1.00, 6.00, 1, 0, 1, '2023-07-22 17:45:33', 3.00, 3, 1.00, 1.00, 'T001'),
(5790, 1, 9, 360, '1', '11834', 1.00, 6.00, 1, 0, 1, '2023-07-22 17:47:11', 3.00, 3, 1.00, 1.00, 'T001'),
(5791, 1, 9, 361, '1', '11847', 10.00, 1.00, 1, 0, 1, '2023-07-23 12:41:47', 0.30, 3, 100.00, 1.00, 'T001'),
(5792, 1, 9, 362, '1', '11848', 1.00, 100.00, 1, 0, 1, '2023-07-23 12:50:41', 1.00, 3, 1.00, 1.00, 'T001'),
(5793, 1, 9, 363, '1', '11848', 1.00, 100.00, 1, 0, 1, '2023-07-23 12:53:23', 1.00, 3, 1.00, 1.00, 'T001'),
(5794, 1, 9, 364, '1', '11850', 2.00, 25.00, 1, 0, 1, '2023-07-23 13:07:02', 4.00, 3, 5.00, 1.00, 'T001'),
(5795, 1, 9, 365, '1', '11851', 10.00, 0.50, 1, 0, 1, '2023-07-23 13:15:08', 0.24, 3, 100.00, 1.00, 'T001'),
(5796, 1, 9, 366, '1', '11852', 10.00, 0.50, 1, 0, 1, '2023-07-23 13:21:58', 0.13, 3, 60.00, 1.00, 'T001'),
(5797, 1, 9, 367, '1', '11853', 1.00, 58.00, 1, 0, 1, '2023-07-23 13:31:06', 4.20, 3, 1.00, 1.00, 'T001'),
(5798, 1, 9, 368, '1', '11854', 2.00, 30.00, 1, 0, 1, '2023-07-23 13:38:12', 3.33, 3, 3.00, 1.00, 'T001'),
(5799, 1, 1, 369, '1', '11884', 1.00, 1.00, 1, 0, 1, '2023-07-23 15:52:47', 0.50, 3, 27.00, 1.00, 'T001'),
(5800, 1, 9, 370, '1', '11884', 27.00, 0.75, 1, 0, 1, '2023-07-23 15:59:04', 0.50, 3, 27.00, 1.00, 'T001'),
(5801, 1, 1, 371, '1', '11857', 5.00, 7.00, 1, 0, 1, '2023-07-23 19:30:00', 6.43, 3, 14.00, 1.00, 'T001'),
(5802, 1, 1, 371, '1', 'TOMA PRESION', 1.00, 10.00, 1, 0, 1, '2023-07-23 19:30:00', 0.00, 3, 0.00, 1.00, 'T001'),
(5803, 1, 1, 5, '1', '11898', 1.00, 5.00, 1, 0, 1, '2023-07-23 19:35:29', 1.00, 8, 60.00, 1.00, 'C001'),
(5804, 1, 1, 5, '1', '11898', 1.00, 5.00, 1, 0, 1, '2023-07-23 19:35:29', 1.00, 8, 60.00, 1.00, 'C001'),
(5805, 1, 1, 5, '1', '11897', 1.00, 15.00, 1, 0, 1, '2023-07-23 19:35:29', 8.00, 8, 2.00, 1.00, 'C001'),
(5806, 1, 1, 372, '1', '11891', 1.00, 15.00, 1, 0, 1, '2023-07-23 19:47:56', 6.00, 3, 1.00, 1.00, 'T001'),
(5807, 1, 1, 372, '1', '11893', 15.00, 1.50, 1, 0, 1, '2023-07-23 19:47:56', 0.98, 3, 100.00, 1.00, 'T001'),
(5808, 1, 9, 373, '1', '11929', 10.00, 1.20, 1, 0, 1, '2023-07-23 20:02:19', 0.45, 3, 73.00, 1.00, 'T001'),
(5809, 1, 9, 374, '1', '11927', 2.00, 1.50, 1, 0, 1, '2023-07-23 20:28:22', 0.70, 3, 42.00, 1.00, 'T001'),
(5810, 1, 9, 375, '1', '11864', 10.00, 1.00, 1, 0, 1, '2023-07-23 20:31:21', 0.35, 3, 86.00, 1.00, 'T001'),
(5811, 1, 9, 376, '1', '11864', 10.00, 1.00, 1, 0, 1, '2023-07-23 20:35:56', 0.35, 3, 88.00, 1.00, 'T001'),
(5812, 1, 9, 377, '1', '11832', 1.00, 16.00, 1, 0, 1, '2023-07-23 20:41:32', 6.00, 3, 6.00, 1.00, 'T001'),
(5813, 1, 9, 378, '1', '11890', 1.00, 22.00, 1, 0, 1, '2023-07-23 20:44:49', 12.00, 3, 2.00, 1.00, 'T001'),
(5814, 1, 9, 379, '1', '11913', 2.00, 1.50, 1, 0, 1, '2023-07-23 21:06:51', 0.70, 3, 116.00, 1.00, 'T001'),
(5815, 675, 9, 380, '1', '11838', 1.00, 10.00, 1, 0, 1, '2023-07-24 21:39:52', 3.95, 3, 1.00, 1.00, 'T001'),
(5816, 675, 9, 381, '1', '11860', 10.00, 1.00, 1, 0, 1, '2023-07-24 21:40:41', 0.25, 3, 104.00, 1.00, 'T001'),
(5817, 675, 9, 382, '1', '11932', 7.00, 1.00, 1, 0, 1, '2023-07-24 21:41:47', 0.40, 3, 7.00, 1.00, 'T001'),
(5818, 675, 9, 383, '1', '11876', 1.00, 25.00, 1, 0, 1, '2023-07-24 21:42:32', 10.00, 3, 6.00, 1.00, 'T001'),
(5819, 675, 9, 384, '1', '11938', 1.00, 30.00, 1, 0, 1, '2023-07-24 21:43:21', 13.00, 3, 4.00, 1.00, 'T001'),
(5820, 675, 9, 385, '1', '11933', 2.00, 13.00, 1, 0, 1, '2023-07-24 21:44:01', 4.16, 3, 14.00, 1.00, 'T001'),
(5821, 675, 9, 386, '1', '11876', 2.00, 25.00, 1, 0, 1, '2023-07-25 20:54:42', 10.00, 3, 5.00, 1.00, 'T001'),
(5822, 675, 9, 387, '1', '11874', 2.00, 1.00, 1, 0, 1, '2023-07-25 20:55:23', 0.18, 3, 59.00, 1.00, 'T001'),
(5823, 675, 9, 388, '1', '11934', 3.00, 5.00, 1, 0, 1, '2023-07-25 20:56:03', 1.25, 3, 56.00, 1.00, 'T001'),
(5824, 675, 9, 389, '1', '11957', 1.00, 12.00, 1, 0, 1, '2023-07-25 20:57:06', 6.00, 3, 2.00, 1.00, 'T001'),
(5825, 675, 9, 390, '1', '11916', 4.00, 10.00, 1, 0, 1, '2023-07-26 21:36:02', 3.00, 3, 19.00, 1.00, 'T001'),
(5826, 675, 9, 390, '1', '11874', 2.00, 1.00, 1, 0, 1, '2023-07-26 21:36:02', 0.18, 3, 57.00, 1.00, 'T001'),
(5827, 675, 9, 390, '1', '11949', 2.00, 22.00, 1, 0, 1, '2023-07-26 21:36:02', 11.50, 3, 7.00, 1.00, 'T001'),
(5828, 675, 9, 391, '1', '11923', 10.00, 0.50, 1, 0, 1, '2023-07-26 21:38:10', 0.09, 3, 170.00, 1.00, 'T001'),
(5829, 675, 9, 392, '1', '11902', 2.00, 10.00, 1, 0, 1, '2023-07-27 21:41:22', 4.00, 3, 3.00, 1.00, 'T001'),
(5830, 675, 9, 393, '1', '11941', 1.00, 10.00, 1, 0, 1, '2023-07-29 21:12:22', 6.50, 3, 4.00, 1.00, 'T001'),
(5831, 675, 9, 394, '1', '11934', 2.00, 5.00, 1, 0, 1, '2023-07-29 21:12:44', 1.25, 3, 53.00, 1.00, 'T001'),
(5833, 675, 9, 396, '1', '11921', 4.00, 1.00, 1, 0, 1, '2023-07-29 21:19:13', 0.30, 3, 112.00, 1.00, 'T001'),
(5834, 675, 9, 397, '1', '11970', 1.00, 35.00, 1, 0, 1, '2023-07-29 21:19:55', 1.50, 3, 1.00, 1.00, 'T001'),
(5835, 675, 9, 398, '1', '11902', 1.00, 10.00, 1, 0, 1, '2023-07-29 21:20:16', 4.00, 3, 1.00, 1.00, 'T001'),
(5836, 675, 9, 399, '1', '11934', 4.00, 5.00, 1, 0, 1, '2023-07-29 21:20:40', 1.25, 3, 51.00, 1.00, 'T001'),
(5837, 675, 9, 400, '1', '11943', 1.00, 45.00, 1, 0, 1, '2023-07-29 21:21:02', 12.50, 3, 2.00, 1.00, 'T001'),
(5838, 675, 9, 401, '1', '11836', 1.00, 20.00, 1, 0, 1, '2023-07-29 21:22:42', 10.15, 3, 1.00, 1.00, 'T001'),
(5839, 675, 9, 402, '1', '11938', 1.00, 30.00, 1, 0, 1, '2023-07-29 21:23:10', 13.00, 3, 3.00, 1.00, 'T001'),
(5840, 675, 9, 403, '1', '11869', 1.00, 10.00, 1, 0, 1, '2023-07-29 21:24:00', 4.00, 3, 3.00, 1.00, 'T001'),
(5841, 675, 9, 404, '1', '11969', 10.00, 7.60, 1, 0, 1, '2023-07-29 21:24:18', 5.30, 3, 14.00, 1.00, 'T001'),
(5842, 675, 9, 405, '1', '11954', 4.00, 2.00, 1, 0, 1, '2023-07-29 21:26:28', 0.68, 3, 37.00, 1.00, 'T001'),
(5843, 675, 9, 406, '1', '11923', 10.00, 0.50, 1, 0, 1, '2023-07-29 21:26:50', 0.09, 3, 160.00, 1.00, 'T001'),
(5844, 675, 9, 407, '1', '11874', 6.00, 1.00, 1, 0, 1, '2023-07-29 21:27:48', 0.18, 3, 55.00, 1.00, 'T001'),
(5845, 675, 9, 408, '1', '11924', 10.00, 2.50, 1, 0, 1, '2023-07-29 21:35:18', 1.02, 3, 10.00, 1.00, 'T001'),
(5846, 678, 1, 20599, '2', '11971', 4.00, 6.50, 1, 1, 2, '2023-07-29 23:37:18', 0.00, 1, 0.00, 1.00, '20599'),
(5847, 678, 1, 28128282, '2', '11971', 4.00, 6.50, 1, 1, 2, '2023-07-29 23:44:43', 0.00, 1, 4.00, 1.00, 'dfdfd'),
(5848, 679, 9, 409, '1', '12113', 10.00, 1.00, 1, 1, 1, '2025-06-09 14:55:01', 0.30, 3, 99.00, 1.00, 'T001'),
(5849, 679, 9, 410, '1', '12114', 2.00, 10.00, 1, 1, 1, '2025-06-09 15:04:37', 5.00, 3, 8.00, 1.00, 'T001'),
(5850, 679, 9, 411, '1', '12113', 5.00, 1.00, 1, 1, 1, '2025-06-09 17:59:47', 0.30, 3, 89.00, 1.00, 'T001'),
(5851, 679, 9, 412, '1', '11875', 10.00, 2.00, 1, 1, 1, '2025-06-09 19:26:21', 1.00, 3, 20.00, 1.00, 'T001'),
(5852, 679, 9, 413, '1', '11866', 4.00, 2.50, 1, 1, 1, '2025-06-09 19:49:49', 1.65, 3, 8.00, 1.00, 'T001'),
(5853, 679, 9, 414, '1', '12175', 1.00, 60.00, 1, 1, 1, '2025-06-09 20:57:13', 46.80, 3, 2.00, 1.00, 'T001'),
(5854, 679, 9, 415, '1', '12176', 1.00, 10.00, 1, 1, 1, '2025-06-09 21:02:46', 3.50, 3, 5.00, 1.00, 'T001'),
(5855, 679, 9, 416, '1', '12177', 4.00, 3.00, 1, 1, 1, '2025-06-09 21:06:11', 1.23, 3, 12.00, 1.00, 'T001'),
(5856, 679, 9, 417, '1', '12178', 30.00, 0.60, 1, 1, 1, '2025-06-09 21:09:04', 0.15, 3, 60.00, 1.00, 'T001'),
(5857, 679, 9, 418, '1', '11921', 10.00, 1.00, 1, 1, 1, '2025-06-09 21:12:19', 0.43, 3, 113.00, 1.00, 'T001'),
(5858, 679, 9, 419, '1', '12179', 1.00, 5.00, 1, 1, 1, '2025-06-09 21:15:56', 2.99, 3, 9.00, 1.00, 'T001'),
(5859, 679, 9, 420, '1', '12180', 2.00, 5.00, 1, 1, 1, '2025-06-09 21:18:13', 1.25, 3, 14.00, 1.00, 'T001'),
(5860, 679, 9, 421, '1', '12181', 2.00, 2.50, 1, 1, 1, '2025-06-09 21:20:18', 1.00, 3, 8.00, 1.00, 'T001'),
(5861, 679, 9, 422, '1', '12182', 1.00, 0.75, 1, 1, 1, '2025-06-09 21:26:38', 0.36, 3, 46.00, 1.00, 'T001'),
(5862, 679, 9, 423, '1', '12123', 1.00, 3.00, 1, 1, 1, '2025-06-10 15:16:11', 0.95, 3, 8.00, 1.00, 'T001'),
(5863, 679, 9, 424, '1', '12113', 10.00, 1.00, 1, 1, 1, '2025-06-10 15:50:13', 0.30, 3, 84.00, 1.00, 'T001'),
(5864, 679, 9, 425, '1', '11883', 20.00, 0.50, 1, 1, 1, '2025-06-10 17:10:12', 0.19, 3, 100.00, 1.00, 'T001'),
(5865, 679, 9, 426, '1', '12017', 1.00, 55.00, 1, 1, 1, '2025-06-10 17:14:08', 42.00, 3, 2.00, 1.00, 'T001'),
(5866, 679, 9, 427, '1', '12177', 2.00, 3.00, 1, 1, 1, '2025-06-10 17:53:00', 1.23, 3, 8.00, 1.00, 'T001'),
(5867, 679, 9, 428, '1', '12172', 10.00, 0.50, 1, 1, 1, '2025-06-10 17:53:26', 0.14, 3, 100.00, 1.00, 'T001'),
(5868, 679, 9, 429, '1', '12113', 10.00, 1.00, 1, 1, 1, '2025-06-10 18:07:55', 0.30, 3, 74.00, 1.00, 'T001'),
(5869, 679, 9, 430, '1', '12004', 1.00, 1.00, 1, 1, 1, '2025-06-10 18:17:58', 0.35, 3, 102.00, 1.00, 'T001'),
(5870, 679, 9, 431, '1', '12075', 1.00, 10.00, 1, 1, 1, '2025-06-10 18:31:47', 5.00, 3, 1.00, 1.00, 'T001'),
(5871, 679, 9, 432, '1', '12114', 2.00, 10.00, 1, 1, 1, '2025-06-10 18:35:15', 5.00, 3, 6.00, 1.00, 'T001'),
(5872, 679, 9, 433, '1', '12198', 10.00, 1.20, 1, 1, 1, '2025-06-10 19:00:55', 0.63, 3, 80.00, 1.00, 'T001'),
(5873, 679, 9, 434, '1', '12114', 1.00, 10.00, 1, 1, 1, '2025-06-10 19:29:37', 5.00, 3, 4.00, 1.00, 'T001'),
(5874, 679, 9, 435, '1', '12035', 1.00, 25.00, 1, 1, 1, '2025-06-10 19:43:41', 6.53, 3, 30.00, 1.00, 'T001'),
(5875, 679, 9, 436, '1', '12234', 1.00, 10.00, 1, 1, 1, '2025-06-10 19:47:27', 5.63, 3, 56.00, 1.00, 'T001'),
(5876, 679, 9, 437, '1', '12179', 1.00, 5.00, 1, 1, 1, '2025-06-10 19:47:41', 2.99, 3, 8.00, 1.00, 'T001'),
(5877, 679, 9, 438, '1', '12231', 1.00, 4.00, 1, 1, 1, '2025-06-10 19:49:10', 3.33, 3, 20.00, 1.00, 'T001'),
(5878, 679, 9, 439, '1', '12048', 1.00, 3.00, 1, 1, 1, '2025-06-10 19:50:10', 1.25, 3, 42.00, 1.00, 'T001'),
(5879, 679, 9, 440, '1', '12235', 1.00, 10.00, 1, 1, 1, '2025-06-10 19:50:19', 4.64, 3, 4.00, 1.00, 'T001'),
(5880, 679, 9, 441, '1', '12196', 10.00, 1.00, 1, 0, 1, '2025-06-10 20:18:04', 0.60, 3, 60.00, 1.00, 'T001'),
(5881, 679, 9, 442, '1', '12036', 1.00, 5.00, 1, 1, 1, '2025-06-10 20:24:04', 1.25, 3, 42.00, 1.00, 'T001'),
(5882, 679, 9, 443, '1', '12004', 3.00, 1.00, 1, 1, 1, '2025-06-10 20:28:39', 0.35, 3, 101.00, 1.00, 'T001'),
(5883, 679, 9, 444, '1', '12118', 1.00, 5.00, 1, 1, 1, '2025-06-10 21:05:56', 2.33, 3, 4.00, 1.00, 'T001'),
(5884, 679, 9, 445, '1', '12185', 1.00, 70.00, 1, 1, 1, '2025-06-11 14:03:49', 56.00, 3, 1.00, 1.00, 'T001'),
(5885, 679, 9, 446, '1', '12098', 2.00, 2.00, 1, 1, 1, '2025-06-11 14:05:55', 0.80, 3, 3.00, 1.00, 'T001'),
(5886, 679, 9, 447, '1', '11961', 1.00, 50.00, 1, 1, 1, '2025-06-11 14:06:55', 26.90, 3, 4.00, 1.00, 'T001'),
(5887, 679, 9, 448, '1', '12034', 1.00, 10.00, 1, 1, 1, '2025-06-11 14:10:53', 5.00, 3, 2.00, 1.00, 'T001'),
(5888, 679, 9, 449, '1', '12240', 2.00, 45.00, 1, 1, 1, '2025-06-11 14:18:01', 17.98, 3, 2.00, 1.00, 'T001'),
(5889, 679, 9, 450, '1', '12241', 1.00, 30.00, 1, 1, 1, '2025-06-11 14:21:52', 20.00, 3, 1.00, 1.00, 'T001'),
(5890, 679, 9, 451, '1', '12242', 1.00, 2.00, 1, 1, 1, '2025-06-11 14:28:26', 0.62, 3, 76.00, 1.00, 'T001'),
(5891, 679, 9, 452, '1', '12128', 4.00, 1.00, 1, 1, 1, '2025-06-11 18:14:15', 0.60, 3, 13.00, 1.00, 'T001'),
(5892, 679, 9, 453, '1', '12120', 34.00, 2.00, 1, 0, 1, '2025-06-11 19:24:23', 1.02, 3, 34.00, 1.00, 'T001'),
(5893, 679, 9, 454, '1', '12258', 1.00, 2.00, 1, 1, 1, '2025-06-11 19:25:26', 1.00, 3, 35.00, 1.00, 'T001'),
(5894, 679, 9, 455, '1', '12234', 1.00, 10.00, 1, 1, 1, '2025-06-11 19:25:59', 5.63, 3, 55.00, 1.00, 'T001'),
(5895, 679, 9, 456, '1', '12230', 1.00, 95.00, 1, 0, 1, '2025-06-11 19:29:40', 28.00, 3, 3.00, 1.00, 'T001'),
(5896, 679, 9, 456, '1', '11987', 1.00, 25.00, 1, 0, 1, '2025-06-11 19:29:40', 8.79, 3, 31.00, 1.00, 'T001'),
(5897, 679, 9, 456, '1', '12242', 1.00, 2.00, 1, 0, 1, '2025-06-11 19:29:40', 0.62, 3, 75.00, 1.00, 'T001'),
(5898, 679, 9, 457, '1', '12120', 34.00, 1.47, 1, 1, 1, '2025-06-11 19:51:32', 1.02, 3, 34.00, 1.00, 'T001'),
(5899, 679, 9, 458, '1', '12242', 1.00, 2.00, 1, 1, 1, '2025-06-11 19:53:46', 0.62, 3, 75.00, 1.00, 'T001'),
(5900, 679, 9, 458, '1', '11987', 1.00, 30.00, 1, 1, 1, '2025-06-11 19:53:46', 8.79, 3, 31.00, 1.00, 'T001'),
(5901, 679, 9, 458, '1', '12230', 1.00, 100.00, 1, 1, 1, '2025-06-11 19:53:46', 28.00, 3, 3.00, 1.00, 'T001'),
(5902, 679, 9, 459, '1', '12149', 20.00, 0.50, 1, 1, 1, '2025-06-12 12:20:05', 0.20, 3, 80.00, 1.00, 'T001'),
(5903, 679, 9, 460, '1', '11869', 1.00, 12.00, 1, 1, 1, '2025-06-12 12:21:32', 6.00, 3, 4.00, 1.00, 'T001'),
(5904, 679, 9, 461, '1', '11969', 1.00, 76.00, 1, 1, 1, '2025-06-12 16:35:36', 4.50, 3, 1.00, 1.00, 'T001'),
(5905, 679, 9, 462, '1', '12121', 1.00, 2.00, 1, 1, 1, '2025-06-12 16:50:01', 1.02, 3, 100.00, 1.00, 'T001'),
(5906, 679, 9, 463, '1', '12244', 1.00, 1.00, 1, 1, 1, '2025-06-12 17:10:10', 0.35, 3, 82.00, 1.00, 'T001'),
(5907, 679, 9, 463, '1', '12269', 1.00, 10.00, 1, 1, 1, '2025-06-12 17:10:10', 2.75, 3, 5.00, 1.00, 'T001'),
(5908, 679, 1, 464, '1', '12222', 5.00, 7.00, 1, 0, 1, '2025-06-12 18:02:56', 4.33, 3, 20.00, 1.00, 'T001'),
(5909, 679, 9, 465, '1', '12222', 5.00, 7.00, 1, 1, 1, '2025-06-12 18:05:11', 4.33, 3, 20.00, 1.00, 'T001'),
(5910, 679, 9, 466, '1', '12116', 1.00, 4.00, 1, 1, 1, '2025-06-12 18:17:42', 2.83, 3, 36.00, 1.00, 'T001'),
(5911, 679, 9, 467, '1', '12173', 1.00, 80.00, 1, 1, 1, '2025-06-12 18:19:07', 32.00, 3, 1.00, 1.00, 'T001'),
(5912, 679, 9, 468, '1', '11985', 10.00, 1.00, 1, 1, 1, '2025-06-12 19:12:02', 0.40, 3, 50.00, 1.00, 'T001'),
(5913, 679, 9, 469, '1', '12230', 1.00, 100.00, 1, 1, 1, '2025-06-12 19:12:36', 28.00, 3, 2.00, 1.00, 'T001'),
(5914, 679, 9, 470, '1', '12280', 7.00, 6.00, 1, 1, 1, '2025-06-12 19:13:29', 3.10, 3, 30.00, 1.00, 'T001'),
(5915, 679, 9, 471, '1', '12243', 1.00, 1.50, 1, 1, 1, '2025-06-12 19:14:02', 0.42, 3, 29.00, 1.00, 'T001'),
(5916, 679, 9, 472, '1', '12248', 1.00, 0.50, 1, 1, 1, '2025-06-12 19:14:34', 0.12, 3, 103.00, 1.00, 'T001'),
(5917, 679, 9, 473, '1', '11949', 10.00, 23.00, 1, 1, 1, '2025-06-12 19:17:25', 8.60, 3, 20.00, 1.00, 'T001'),
(5918, 679, 9, 474, '1', '12347', 4.00, 1.75, 1, 1, 1, '2025-06-12 19:21:06', 0.90, 3, 28.00, 1.00, 'T001'),
(5919, 679, 9, 475, '1', '12182', 2.00, 0.75, 1, 1, 1, '2025-06-12 19:23:12', 0.36, 3, 45.00, 1.00, 'T001'),
(5920, 679, 9, 476, '1', '12179', 1.00, 5.00, 1, 1, 1, '2025-06-13 13:56:58', 2.99, 3, 7.00, 1.00, 'T001'),
(5921, 679, 9, 477, '1', '12314', 1.00, 20.00, 1, 1, 1, '2025-06-13 13:57:11', 9.00, 3, 2.00, 1.00, 'T001'),
(5922, 679, 9, 478, '1', '12243', 1.00, 1.50, 1, 1, 1, '2025-06-13 13:57:55', 0.42, 3, 28.00, 1.00, 'T001'),
(5923, 679, 9, 479, '1', '12213', 1.00, 15.00, 1, 1, 1, '2025-06-13 13:58:20', 2.80, 3, 3.00, 1.00, 'T001'),
(5924, 679, 9, 479, '1', '12205', 1.00, 20.00, 1, 1, 1, '2025-06-13 13:58:20', 4.02, 3, 26.00, 1.00, 'T001'),
(5925, 679, 9, 479, '1', '12160', 1.00, 70.00, 1, 1, 1, '2025-06-13 13:58:20', 28.00, 3, 6.00, 1.00, 'T001'),
(5926, 679, 9, 479, '1', '11987', 1.00, 30.00, 1, 1, 1, '2025-06-13 13:58:20', 8.79, 3, 30.00, 1.00, 'T001'),
(5927, 679, 9, 479, '1', '12242', 1.00, 2.00, 1, 1, 1, '2025-06-13 13:58:20', 0.62, 3, 74.00, 1.00, 'T001'),
(5928, 679, 9, 479, '1', '12247', 1.00, 0.50, 1, 1, 1, '2025-06-13 13:58:20', 0.12, 3, 15.00, 1.00, 'T001'),
(5929, 679, 9, 480, '1', '11869', 2.00, 12.00, 1, 1, 1, '2025-06-13 14:06:52', 6.00, 3, 3.00, 1.00, 'T001'),
(5930, 679, 9, 481, '1', '11932', 20.00, 1.00, 1, 1, 1, '2025-06-13 14:08:11', 0.50, 3, 80.00, 1.00, 'T001'),
(5931, 679, 9, 481, '1', '11860', 10.00, 1.00, 1, 1, 1, '2025-06-13 14:08:11', 0.55, 3, 80.00, 1.00, 'T001'),
(5932, 679, 9, 482, '1', '12227', 1.00, 15.00, 1, 1, 1, '2025-06-13 14:35:47', 5.00, 3, 5.00, 1.00, 'T001'),
(5933, 679, 9, 483, '1', '12098', 1.00, 2.00, 1, 1, 1, '2025-06-13 14:48:26', 0.80, 3, 1.00, 1.00, 'T001'),
(5934, 679, 9, 484, '1', '12156', 1.00, 16.00, 1, 1, 1, '2025-06-13 19:03:57', 8.00, 3, 4.00, 1.00, 'T001'),
(5935, 679, 9, 485, '1', '12082', 2.00, 2.00, 1, 1, 1, '2025-06-13 19:14:26', 1.10, 3, 46.00, 1.00, 'T001'),
(5936, 679, 9, 486, '1', '12022', 1.00, 70.00, 1, 1, 1, '2025-06-14 12:26:01', 55.00, 3, 1.00, 1.00, 'T001'),
(5937, 679, 9, 487, '1', '12060', 1.00, 26.00, 1, 1, 1, '2025-06-14 12:26:15', 10.00, 3, 2.00, 1.00, 'T001'),
(5938, 679, 9, 488, '1', '12243', 1.00, 1.50, 1, 1, 1, '2025-06-14 12:26:29', 0.42, 3, 27.00, 1.00, 'T001'),
(5939, 679, 9, 489, '1', '12121', 4.00, 2.00, 1, 1, 1, '2025-06-14 12:27:05', 1.02, 3, 99.00, 1.00, 'T001'),
(5940, 679, 9, 490, '1', '12343', 1.00, 20.00, 1, 1, 1, '2025-06-14 12:27:31', 10.40, 3, 6.00, 1.00, 'T001'),
(5941, 679, 9, 491, '1', '12298', 1.00, 22.00, 1, 1, 1, '2025-06-14 12:28:27', 13.50, 3, 2.00, 1.00, 'T001'),
(5942, 679, 9, 492, '1', '12379', 2.00, 2.50, 1, 1, 1, '2025-06-14 12:34:30', 0.43, 3, 43.00, 1.00, 'T001'),
(5943, 679, 9, 493, '1', '12147', 1.00, 7.00, 1, 1, 1, '2025-06-14 12:34:38', 3.50, 3, 10.00, 1.00, 'T001'),
(5944, 678, 10, 827936210, '2', '11949', 10.00, 8.60, 1, 1, 2, '2025-06-14 12:23:22', 0.00, 1, 10.00, 1.00, 'F25ED'),
(5945, 679, 10, 494, '1', '12384', 1.00, 43.00, 1, 0, 1, '2025-06-14 13:47:36', 22.00, 3, 1.00, 1.00, 'T001'),
(5946, 679, 9, 495, '1', '12384', 1.00, 43.00, 1, 1, 1, '2025-06-14 13:51:14', 22.00, 3, 1.00, 1.00, 'T001'),
(5947, 679, 9, 496, '1', '11869', 1.00, 12.00, 1, 1, 1, '2025-06-16 17:05:07', 6.00, 3, 1.00, 1.00, 'T001'),
(5948, 679, 9, 497, '1', '11960', 1.00, 23.00, 1, 1, 1, '2025-06-16 17:06:19', 14.50, 3, 1.00, 1.00, 'T001'),
(5949, 679, 9, 498, '1', '12234', 3.00, 10.00, 1, 1, 1, '2025-06-16 17:06:30', 5.63, 3, 54.00, 1.00, 'T001'),
(5950, 679, 9, 499, '1', '11860', 10.00, 1.00, 1, 1, 1, '2025-06-16 17:06:41', 0.55, 3, 70.00, 1.00, 'T001'),
(5951, 679, 9, 500, '1', '11932', 10.00, 1.00, 1, 1, 1, '2025-06-16 17:06:54', 0.50, 3, 60.00, 1.00, 'T001'),
(5952, 679, 9, 501, '1', '12146', 1.00, 25.00, 1, 1, 1, '2025-06-16 17:23:53', 15.10, 3, 3.00, 1.00, 'T001'),
(5953, 679, 9, 502, '1', '12234', 1.00, 10.00, 1, 1, 1, '2025-06-16 17:30:47', 5.63, 3, 51.00, 1.00, 'T001'),
(5954, 679, 9, 503, '1', '12133', 10.00, 0.50, 1, 1, 1, '2025-06-16 17:40:46', 0.20, 3, 10.00, 1.00, 'T001'),
(5955, 679, 9, 503, '1', '12179', 1.00, 5.00, 1, 1, 1, '2025-06-16 17:40:46', 2.99, 3, 6.00, 1.00, 'T001'),
(5956, 679, 9, 504, '1', '11946', 10.00, 1.00, 1, 1, 1, '2025-06-16 17:59:08', 0.40, 3, 10.00, 1.00, 'T001'),
(5957, 679, 9, 505, '1', '11957', 1.00, 20.00, 1, 1, 1, '2025-06-16 18:08:50', 8.65, 3, 2.00, 1.00, 'T001'),
(5958, 679, 9, 506, '1', '12231', 2.00, 4.00, 1, 1, 1, '2025-06-16 18:34:57', 3.33, 3, 19.00, 1.00, 'T001'),
(5959, 679, 10, 507, '1', '12244', 1.00, 1.00, 1, 0, 1, '2025-06-16 19:33:42', 0.35, 3, 81.00, 1.00, 'T001'),
(5960, 679, 10, 507, '1', '12212', 1.00, 15.00, 1, 0, 1, '2025-06-16 19:33:42', 2.10, 3, 8.00, 1.00, 'T001'),
(5961, 678, 10, 827936210, '2', '12185', 1.00, 56.75, 1, 1, 2, '2025-06-16 19:34:44', 0.00, 1, 0.00, 1.00, 'F25ED'),
(5962, 678, 10, 827936210, '2', '12384', 1.00, 22.00, 1, 1, 2, '2025-06-16 19:34:44', 0.00, 1, 0.00, 1.00, 'F25ED'),
(5963, 678, 10, 827936210, '2', '11963', 1.00, 21.00, 1, 1, 2, '2025-06-16 19:34:44', 0.00, 1, 0.00, 1.00, 'F25ED'),
(5964, 678, 10, 827936210, '2', '12388', 10.00, 3.55, 1, 1, 2, '2025-06-16 19:34:44', 0.00, 1, 0.00, 1.00, 'F25ED'),
(5965, 678, 10, 827936210, '2', '12098', 20.00, 0.90, 1, 1, 2, '2025-06-16 19:34:44', 0.00, 1, 0.00, 1.00, 'F25ED'),
(5966, 678, 10, 827936210, '2', '12387', 1.00, 13.75, 1, 1, 2, '2025-06-16 19:34:44', 0.00, 1, 0.00, 1.00, 'F25ED'),
(5967, 678, 10, 827936210, '2', '12386', 1.00, 10.50, 1, 1, 2, '2025-06-16 19:34:44', 0.00, 1, 0.00, 1.00, 'F25ED'),
(5968, 678, 10, 827936210, '2', '12385', 100.00, 0.74, 1, 1, 2, '2025-06-16 19:34:44', 0.00, 1, 0.00, 1.00, 'F25ED'),
(5969, 678, 10, 827936210, '2', '11949', 20.00, 8.60, 1, 1, 2, '2025-06-16 19:34:44', 0.00, 1, 0.00, 1.00, 'F25ED'),
(5970, 678, 10, 827936210, '2', '12389', 2.00, 22.40, 1, 1, 2, '2025-06-16 19:34:44', 0.00, 1, 0.00, 1.00, 'F25ED'),
(5971, 678, 10, 827936210, '2', '12390', 1.00, 82.90, 1, 1, 2, '2025-06-16 19:34:44', 0.00, 1, 0.00, 1.00, 'F25ED'),
(5972, 678, 10, 827936210, '2', '11951', 1.00, 23.25, 1, 1, 2, '2025-06-16 19:34:44', 0.00, 1, 0.00, 1.00, 'F25ED'),
(5973, 678, 10, 827936210, '2', '12391', 10.00, 2.50, 1, 1, 2, '2025-06-16 19:34:44', 0.00, 1, 0.00, 1.00, 'F25ED'),
(5974, 678, 10, 827936210, '2', '12392', 2.00, 59.25, 1, 1, 2, '2025-06-16 19:34:44', 0.00, 1, 0.00, 1.00, 'F25ED'),
(5975, 678, 10, 827936210, '2', '12393', 1.00, 119.50, 1, 1, 2, '2025-06-16 19:34:44', 0.00, 1, 0.00, 1.00, 'F25ED'),
(5976, 679, 10, 508, '1', '12385', 6.00, 1.00, 1, 0, 1, '2025-06-16 19:43:13', 0.74, 3, 100.00, 1.00, 'T001'),
(5977, 679, 10, 509, '1', '12234', 1.00, 10.00, 1, 0, 1, '2025-06-16 19:49:18', 5.63, 3, 50.00, 1.00, 'T001'),
(5978, 679, 9, 510, '1', '12234', 1.00, 10.00, 1, 1, 1, '2025-06-16 19:51:23', 5.63, 3, 50.00, 1.00, 'T001'),
(5979, 679, 9, 511, '1', '12385', 6.00, 1.00, 1, 1, 1, '2025-06-16 19:51:41', 0.74, 3, 100.00, 1.00, 'T001'),
(5980, 679, 9, 512, '1', '12244', 1.00, 1.00, 1, 1, 1, '2025-06-16 19:51:56', 0.35, 3, 81.00, 1.00, 'T001'),
(5981, 679, 9, 512, '1', '12212', 1.00, 15.00, 1, 1, 1, '2025-06-16 19:51:56', 2.10, 3, 8.00, 1.00, 'T001'),
(5982, 679, 9, 513, '1', '12098', 1.00, 2.00, 1, 1, 1, '2025-06-16 20:01:22', 0.80, 3, 20.00, 1.00, 'T001'),
(5983, 679, 9, 514, '1', '12388', 1.00, 10.00, 1, 1, 1, '2025-06-16 20:01:29', 3.55, 3, 10.00, 1.00, 'T001'),
(5984, 679, 9, 515, '1', '12214', 10.00, 3.00, 1, 1, 1, '2025-06-16 20:11:09', 0.40, 3, 10.00, 1.00, 'T001'),
(5985, 679, 9, 516, '1', '12036', 5.00, 5.00, 1, 1, 1, '2025-06-17 11:33:35', 1.25, 3, 41.00, 1.00, 'T001'),
(5986, 679, 9, 516, '1', '12379', 2.00, 2.50, 1, 1, 1, '2025-06-17 11:33:35', 0.43, 3, 41.00, 1.00, 'T001'),
(5987, 678, 10, 883115703, '2', '12002', 1.00, 17.15, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(5988, 678, 10, 883115703, '2', '11876', 4.00, 11.00, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(5989, 678, 10, 883115703, '2', '12396', 4.00, 25.00, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(5990, 678, 10, 883115703, '2', '12340', 6.00, 6.25, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(5991, 678, 10, 883115703, '2', '12250', 10.00, 2.50, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(5992, 678, 10, 883115703, '2', '12120', 36.00, 1.06, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(5993, 678, 10, 883115703, '2', '12395', 1.00, 31.00, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(5994, 678, 10, 883115703, '2', '11920', 1.00, 17.35, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(5995, 678, 10, 883115703, '2', '12394', 100.00, 0.82, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(5996, 678, 10, 883115703, '2', '11965', 1.00, 34.90, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(5997, 678, 10, 883115703, '2', '12215', 2.00, 34.65, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(5998, 678, 10, 883115703, '2', '12097', 1.00, 22.00, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(5999, 678, 10, 883115703, '2', '12177', 30.00, 1.29, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(6000, 678, 10, 883115703, '2', '12384', 2.00, 22.00, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(6001, 678, 10, 883115703, '2', '11967', 1.00, 37.50, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 1.00, 1.00, '28838'),
(6002, 678, 10, 883115703, '2', '12398', 24.00, 3.14, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(6003, 678, 10, 883115703, '2', '12399', 24.00, 3.14, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(6004, 678, 10, 883115703, '2', '12168', 20.00, 1.72, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(6005, 678, 10, 883115703, '2', '12397', 24.00, 3.14, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(6006, 678, 10, 883115703, '2', '12199', 20.00, 3.00, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(6007, 678, 10, 883115703, '2', '12400', 5.00, 6.50, 1, 1, 2, '2025-06-17 12:25:26', 0.00, 1, 0.00, 1.00, '28838'),
(6008, 679, 9, 517, '1', '12401', 1.00, 5.00, 1, 1, 1, '2025-06-17 13:06:50', 2.97, 3, 70.00, 1.00, 'T001'),
(6009, 679, 9, 518, '1', '12385', 10.00, 1.00, 1, 1, 1, '2025-06-17 15:06:55', 0.74, 3, 94.00, 1.00, 'T001'),
(6010, 679, 9, 519, '1', '12168', 3.00, 3.00, 1, 1, 1, '2025-06-17 17:29:26', 1.72, 3, 20.00, 1.00, 'T001'),
(6011, 679, 9, 520, '1', '12229', 1.00, 15.00, 1, 1, 1, '2025-06-17 17:46:12', 5.00, 3, 5.00, 1.00, 'T001'),
(6012, 679, 9, 521, '1', '11985', 10.00, 1.00, 1, 1, 1, '2025-06-17 18:16:08', 0.40, 3, 40.00, 1.00, 'T001'),
(6013, 679, 9, 522, '1', '12234', 1.00, 10.00, 1, 1, 1, '2025-06-17 18:35:53', 5.63, 3, 49.00, 1.00, 'T001'),
(6014, 679, 9, 523, '1', '12117', 2.00, 2.50, 1, 1, 1, '2025-06-17 18:36:43', 0.83, 3, 41.00, 1.00, 'T001'),
(6015, 679, 9, 524, '1', '12131', 4.00, 1.75, 1, 1, 1, '2025-06-17 18:47:11', 1.25, 3, 60.00, 1.00, 'T001'),
(6016, 679, 9, 525, '1', '12318', 1.00, 12.00, 1, 1, 1, '2025-06-17 20:05:06', 4.00, 3, 2.00, 1.00, 'T001'),
(6017, 679, 9, 525, '1', '12351', 1.00, 15.00, 1, 1, 1, '2025-06-17 20:05:06', 7.00, 3, 1.00, 1.00, 'T001'),
(6018, 679, 9, 525, '1', '12145', 10.00, 1.50, 1, 1, 1, '2025-06-17 20:05:06', 0.96, 3, 50.00, 1.00, 'T001'),
(6019, 679, 9, 526, '1', '12180', 2.00, 5.00, 1, 1, 1, '2025-06-17 20:07:20', 1.25, 3, 12.00, 1.00, 'T001'),
(6020, 679, 9, 527, '1', '12145', 10.00, 1.50, 1, 1, 1, '2025-06-18 11:43:58', 0.96, 3, 40.00, 1.00, 'T001'),
(6021, 678, 10, 1262305968, '2', '11869', 6.00, 6.20, 1, 1, 2, '2025-06-18 11:52:20', 0.00, 1, 0.00, 1.00, 'E93BE'),
(6022, 678, 10, 1262305968, '2', '11969', 3.00, 45.00, 1, 1, 2, '2025-06-18 11:52:20', 0.00, 1, 0.00, 1.00, 'E93BE'),
(6023, 678, 10, 1262305968, '2', '12175', 1.00, 46.80, 1, 1, 2, '2025-06-18 11:52:20', 0.00, 1, 1.00, 1.00, 'E93BE'),
(6024, 678, 10, 1262305968, '2', '12108', 2.00, 12.50, 1, 1, 2, '2025-06-18 11:52:20', 0.00, 1, 1.00, 1.00, 'E93BE'),
(6025, 678, 10, 1262305968, '2', '12060', 1.00, 13.00, 1, 1, 2, '2025-06-18 11:52:20', 0.00, 1, 1.00, 1.00, 'E93BE'),
(6026, 678, 10, 1262305968, '2', '12020', 1.00, 65.65, 1, 1, 2, '2025-06-18 11:52:20', 0.00, 1, 0.00, 1.00, 'E93BE'),
(6027, 678, 10, 1262305968, '2', '12021', 1.00, 55.50, 1, 1, 2, '2025-06-18 11:52:20', 0.00, 1, 0.00, 1.00, 'E93BE'),
(6028, 678, 10, 1262305968, '2', '12236', 2.00, 16.50, 1, 1, 2, '2025-06-18 11:52:20', 0.00, 1, 1.00, 1.00, 'E93BE'),
(6029, 678, 10, 1262305968, '2', '12405', 20.00, 0.40, 1, 1, 2, '2025-06-18 11:52:20', 0.00, 1, 0.00, 1.00, 'E93BE'),
(6030, 678, 10, 1262305968, '2', '12022', 1.00, 47.75, 1, 1, 2, '2025-06-18 11:52:20', 0.00, 1, 0.00, 1.00, 'E93BE'),
(6031, 678, 10, 1262305968, '2', '12404', 2.00, 33.10, 1, 1, 2, '2025-06-18 11:52:20', 0.00, 1, 0.00, 1.00, 'E93BE'),
(6032, 678, 10, 1262305968, '2', '12239', 1.00, 22.50, 1, 1, 2, '2025-06-18 11:52:20', 0.00, 1, 1.00, 1.00, 'E93BE'),
(6033, 679, 9, 528, '1', '11892', 1.00, 20.00, 1, 1, 1, '2025-06-18 13:34:35', 7.00, 3, 4.00, 1.00, 'T001'),
(6034, 679, 9, 528, '1', '12245', 5.00, 1.00, 1, 1, 1, '2025-06-18 13:34:35', 0.35, 3, 5.00, 1.00, 'T001'),
(6035, 679, 9, 529, '1', '12193', 1.00, 5.00, 1, 1, 1, '2025-06-18 15:38:15', 1.55, 3, 90.00, 1.00, 'T001'),
(6036, 679, 9, 530, '1', '12231', 4.00, 4.00, 1, 1, 1, '2025-06-18 15:48:09', 3.33, 3, 17.00, 1.00, 'T001'),
(6037, 679, 9, 531, '1', '12401', 20.00, 5.00, 1, 1, 1, '2025-06-18 13:36:13', 2.97, 3, 69.00, 1.00, 'T001'),
(6038, 679, 9, 532, '1', '12402', 8.00, 6.00, 1, 1, 1, '2025-06-18 15:52:41', 4.00, 3, 8.00, 1.00, 'T001'),
(6039, 679, 9, 533, '1', '12313', 2.00, 2.00, 1, 1, 1, '2025-06-18 16:16:05', 1.04, 3, 15.00, 1.00, 'T001'),
(6040, 679, 9, 534, '1', '12179', 1.00, 5.00, 1, 1, 1, '2025-06-18 16:16:33', 2.99, 3, 5.00, 1.00, 'T001'),
(6041, 679, 9, 534, '1', '12237', 1.00, 30.00, 1, 1, 1, '2025-06-18 16:16:33', 16.50, 3, 3.00, 1.00, 'T001'),
(6042, 679, 9, 535, '1', '12177', 2.00, 3.00, 1, 1, 1, '2025-06-18 16:39:08', 1.29, 3, 36.00, 1.00, 'T001'),
(6043, 679, 9, 535, '1', '12222', 2.00, 7.00, 1, 1, 1, '2025-06-18 16:39:08', 4.33, 3, 15.00, 1.00, 'T001'),
(6044, 679, 9, 536, '1', '12199', 5.00, 5.00, 1, 1, 1, '2025-06-18 17:20:25', 3.00, 3, 20.00, 1.00, 'T001'),
(6045, 679, 9, 537, '1', '11969', 2.00, 76.00, 1, 1, 1, '2025-06-18 18:05:03', 45.00, 3, 3.00, 1.00, 'T001'),
(6046, 679, 9, 538, '1', '12107', 40.00, 1.00, 1, 1, 1, '2025-06-18 18:52:03', 0.30, 3, 40.00, 1.00, 'T001'),
(6047, 679, 9, 539, '1', '11969', 1.00, 76.00, 1, 1, 1, '2025-06-18 20:32:17', 45.00, 3, 1.00, 1.00, 'T001'),
(6048, 679, 9, 540, '1', '12182', 1.00, 0.75, 1, 1, 1, '2025-06-18 20:41:22', 0.36, 3, 43.00, 1.00, 'T001'),
(6049, 679, 9, 541, '1', '12371', 1.00, 3.00, 1, 1, 1, '2025-06-19 10:39:30', 1.50, 3, 15.00, 1.00, 'T001'),
(6050, 679, 9, 541, '1', '12388', 1.00, 10.00, 1, 1, 1, '2025-06-19 10:39:30', 3.55, 3, 9.00, 1.00, 'T001'),
(6051, 679, 9, 542, '1', '12078', 2.00, 1.00, 1, 1, 1, '2025-06-19 11:57:07', 0.88, 3, 25.00, 1.00, 'T001'),
(6052, 679, 9, 543, '1', '12041', 10.00, 1.50, 1, 1, 1, '2025-06-19 10:40:12', 0.61, 3, 34.00, 1.00, 'T001'),
(6053, 679, 9, 543, '1', '12114', 1.00, 10.00, 1, 1, 1, '2025-06-19 10:40:12', 5.00, 3, 3.00, 1.00, 'T001'),
(6054, 679, 9, 544, '1', '12371', 1.00, 3.00, 1, 1, 1, '2025-06-19 12:15:58', 1.50, 3, 14.00, 1.00, 'T001'),
(6055, 680, 10, 1347306067, '2', '12025', 1.00, 10.78, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6056, 680, 10, 1347306067, '2', '12064', 100.00, 0.11, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6057, 680, 10, 1347306067, '2', '12412', 5.00, 14.95, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6058, 680, 10, 1347306067, '2', '12413', 1.00, 33.90, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6059, 680, 10, 1347306067, '2', '12009', 1.00, 40.05, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6060, 680, 10, 1347306067, '2', '12411', 1.00, 140.00, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6061, 680, 10, 1347306067, '2', '12410', 3.00, 50.25, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6062, 680, 10, 1347306067, '2', '12100', 1.00, 28.80, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 1.00, 1.00, '8526E'),
(6063, 680, 10, 1347306067, '2', '12099', 1.00, 22.25, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 1.00, 1.00, '8526E'),
(6064, 680, 10, 1347306067, '2', '12240', 1.00, 36.00, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6065, 680, 10, 1347306067, '2', '11999', 2.00, 8.69, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6066, 680, 10, 1347306067, '2', '12014', 2.00, 22.16, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6067, 680, 10, 1347306067, '2', '11851', 100.00, 0.11, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6068, 680, 10, 1347306067, '2', '12409', 1.00, 27.37, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6069, 680, 10, 1347306067, '2', '11891', 2.00, 5.38, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6070, 680, 10, 1347306067, '2', '11977', 30.00, 0.99, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 8.00, 1.00, '8526E'),
(6071, 680, 10, 1347306067, '2', '12408', 1.00, 53.35, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6072, 680, 10, 1347306067, '2', '12407', 1.00, 9.36, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6073, 680, 10, 1347306067, '2', '11870', 2.00, 10.78, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6074, 680, 10, 1347306067, '2', '12069', 1.00, 15.52, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6075, 680, 10, 1347306067, '2', '12406', 1.00, 10.29, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6076, 680, 10, 1347306067, '2', '12024', 1.00, 16.80, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6077, 680, 10, 1347306067, '2', '11973', 1.00, 7.78, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6078, 680, 10, 1347306067, '2', '12414', 3.00, 4.25, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6079, 680, 10, 1347306067, '2', '12415', 2.00, 9.70, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6080, 680, 10, 1347306067, '2', '12416', 30.00, 1.64, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6081, 680, 10, 1347306067, '2', '12417', 1.00, 53.47, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6082, 680, 10, 1347306067, '2', '12418', 30.00, 0.02, 1, 1, 2, '2025-06-19 12:32:26', 0.00, 1, 0.00, 1.00, '8526E'),
(6083, 679, 9, 545, '1', '12379', 2.00, 2.50, 1, 1, 1, '2025-06-19 13:54:40', 0.43, 3, 39.00, 1.00, 'T001'),
(6084, 679, 9, 545, '1', '12205', 1.00, 20.00, 1, 1, 1, '2025-06-19 13:54:40', 4.02, 3, 25.00, 1.00, 'T001'),
(6085, 679, 9, 545, '1', '12242', 1.00, 2.00, 1, 1, 1, '2025-06-19 13:54:40', 0.62, 3, 73.00, 1.00, 'T001'),
(6086, 679, 9, 545, '1', '12213', 1.00, 15.00, 1, 1, 1, '2025-06-19 13:54:40', 2.80, 3, 2.00, 1.00, 'T001'),
(6087, 679, 9, 545, '1', '12230', 1.00, 100.00, 1, 1, 1, '2025-06-19 13:54:40', 28.00, 3, 1.00, 1.00, 'T001'),
(6088, 679, 9, 545, '1', '12412', 1.00, 50.00, 1, 1, 1, '2025-06-19 13:54:40', 14.95, 3, 5.00, 1.00, 'T001'),
(6089, 679, 9, 546, '1', '12247', 1.00, 0.50, 1, 1, 1, '2025-06-19 14:04:49', 0.12, 3, 14.00, 1.00, 'T001'),
(6090, 679, 9, 547, '1', '12426', 2.00, 3.00, 1, 1, 1, '2025-06-19 14:06:54', 1.00, 3, 2.00, 1.00, 'T001'),
(6091, 679, 9, 548, '1', '11891', 1.00, 15.00, 1, 1, 1, '2025-06-19 14:10:06', 5.38, 3, 2.00, 1.00, 'T001'),
(6092, 679, 9, 549, '1', '12253', 1.00, 105.00, 1, 1, 1, '2025-06-19 16:15:28', 79.20, 3, 1.00, 1.00, 'T001'),
(6093, 679, 9, 550, '1', '11840', 1.00, 63.00, 1, 1, 1, '2025-06-19 16:15:52', 45.00, 3, 1.00, 1.00, 'T001'),
(6094, 679, 9, 551, '1', '12388', 1.00, 10.00, 1, 1, 1, '2025-06-19 18:16:59', 3.55, 3, 8.00, 1.00, 'T001'),
(6095, 679, 9, 552, '1', '12127', 1.00, 5.00, 1, 1, 1, '2025-06-20 09:35:50', 2.03, 3, 30.00, 1.00, 'T001'),
(6096, 679, 9, 553, '1', '12080', 10.00, 1.00, 1, 1, 1, '2025-06-20 11:16:07', 0.40, 3, 45.00, 1.00, 'T001'),
(6097, 679, 9, 554, '1', '12389', 2.00, 30.00, 1, 1, 1, '2025-06-20 11:19:34', 22.40, 3, 2.00, 1.00, 'T001'),
(6098, 679, 9, 555, '1', '12009', 1.00, 90.00, 1, 1, 1, '2025-06-20 11:34:43', 40.05, 3, 1.00, 1.00, 'T001'),
(6099, 679, 9, 555, '1', '12376', 5.00, 1.50, 1, 1, 1, '2025-06-20 11:34:43', 0.60, 3, 10.00, 1.00, 'T001'),
(6100, 679, 9, 555, '1', '11943', 1.00, 50.00, 1, 1, 1, '2025-06-20 11:34:43', 23.85, 3, 1.00, 1.00, 'T001'),
(6101, 679, 9, 555, '1', '12227', 1.00, 15.00, 1, 1, 1, '2025-06-20 11:34:43', 5.00, 3, 4.00, 1.00, 'T001'),
(6102, 679, 9, 555, '1', '12098', 2.00, 2.00, 1, 1, 1, '2025-06-20 11:34:43', 0.80, 3, 19.00, 1.00, 'T001'),
(6103, 679, 9, 556, '1', '12243', 5.00, 1.50, 1, 1, 1, '2025-06-20 14:13:36', 0.42, 3, 26.00, 1.00, 'T001'),
(6104, 679, 9, 556, '1', '12242', 5.00, 2.00, 1, 1, 1, '2025-06-20 14:13:36', 0.62, 3, 72.00, 1.00, 'T001'),
(6105, 679, 9, 557, '1', '12385', 10.00, 1.00, 1, 1, 1, '2025-06-20 14:26:23', 0.74, 3, 84.00, 1.00, 'T001'),
(6106, 679, 9, 558, '1', '12098', 2.00, 2.00, 1, 1, 1, '2025-06-20 14:57:46', 0.80, 3, 17.00, 1.00, 'T001'),
(6107, 679, 10, 559, '1', '12242', 1.00, 2.00, 1, 0, 1, '2025-06-20 20:21:26', 0.62, 3, 67.00, 1.00, 'T001'),
(6108, 679, 10, 560, '1', '12121', 1.00, 2.00, 1, 0, 1, '2025-06-20 20:22:03', 1.02, 3, 95.00, 1.00, 'T001'),
(6109, 679, 10, 560, '1', '12341', 1.00, 9.00, 1, 0, 1, '2025-06-20 20:22:03', 5.83, 3, 5.00, 1.00, 'T001'),
(6110, 679, 9, 561, '1', '12397', 1.00, 5.00, 1, 1, 1, '2025-06-20 20:23:22', 3.14, 3, 24.00, 1.00, 'T001'),
(6111, 679, 9, 561, '1', '12121', 1.00, 2.00, 1, 1, 1, '2025-06-20 20:23:22', 1.02, 3, 95.00, 1.00, 'T001'),
(6112, 679, 9, 561, '1', '12341', 1.00, 9.00, 1, 1, 1, '2025-06-20 20:23:22', 5.83, 3, 5.00, 1.00, 'T001'),
(6113, 679, 9, 561, '1', '12242', 1.00, 2.00, 1, 1, 1, '2025-06-20 20:23:22', 0.62, 3, 67.00, 1.00, 'T001'),
(6114, 679, 9, 562, '1', '12121', 2.00, 2.00, 1, 1, 1, '2025-06-20 20:25:00', 1.02, 3, 94.00, 1.00, 'T001'),
(6115, 679, 9, 563, '1', '12146', 1.00, 25.00, 1, 1, 1, '2025-06-21 17:35:36', 15.10, 3, 2.00, 1.00, 'T001'),
(6116, 679, 9, 563, '1', '12118', 1.00, 5.00, 1, 1, 1, '2025-06-21 17:35:36', 2.33, 3, 3.00, 1.00, 'T001'),
(6117, 679, 9, 563, '1', '12119', 1.00, 5.00, 1, 1, 1, '2025-06-21 17:35:36', 2.33, 3, 16.00, 1.00, 'T001'),
(6118, 679, 9, 563, '1', '12385', 2.00, 1.00, 1, 1, 1, '2025-06-21 17:35:36', 0.74, 3, 74.00, 1.00, 'T001'),
(6119, 679, 9, 563, '1', '12197', 1.00, 15.00, 1, 1, 1, '2025-06-21 17:35:36', 6.35, 3, 1.00, 1.00, 'T001'),
(6120, 679, 9, 563, '1', '11985', 10.00, 1.00, 1, 1, 1, '2025-06-21 17:35:36', 0.40, 3, 30.00, 1.00, 'T001'),
(6121, 679, 9, 563, '1', '12127', 1.00, 5.00, 1, 1, 1, '2025-06-21 17:35:36', 2.03, 3, 29.00, 1.00, 'T001'),
(6122, 679, 9, 563, '1', '12390', 1.00, 105.00, 1, 1, 1, '2025-06-21 17:35:36', 82.90, 3, 1.00, 1.00, 'T001'),
(6123, 679, 9, 563, '1', '12340', 1.00, 12.00, 1, 1, 1, '2025-06-21 17:35:36', 6.25, 3, 1.00, 1.00, 'T001'),
(6124, 679, 9, 563, '1', '12121', 1.00, 2.00, 1, 1, 1, '2025-06-21 17:35:36', 1.02, 3, 92.00, 1.00, 'T001'),
(6125, 678, 10, 1265585538, '2', '11840', 1.00, 46.50, 1, 1, 2, '2025-06-23 13:19:24', 0.00, 1, 0.00, 1.00, 'E3E50'),
(6126, 678, 10, 1265585538, '2', '11848', 1.00, 60.00, 1, 1, 2, '2025-06-23 13:19:24', 0.00, 1, 0.00, 1.00, 'E3E50'),
(6127, 678, 10, 1265585538, '2', '12427', 1.00, 85.50, 1, 1, 2, '2025-06-23 13:19:24', 0.00, 1, 0.00, 1.00, 'E3E50'),
(6128, 678, 10, 1265585538, '2', '12253', 1.00, 79.20, 1, 1, 2, '2025-06-23 13:19:24', 0.00, 1, 0.00, 1.00, 'E3E50'),
(6129, 678, 10, 1265585538, '2', '11946', 100.00, 0.76, 1, 1, 2, '2025-06-23 13:19:24', 0.00, 1, 0.00, 1.00, 'E3E50'),
(6130, 678, 10, 1265585538, '2', '12429', 1.00, 13.75, 1, 1, 2, '2025-06-23 13:19:24', 0.00, 1, 0.00, 1.00, 'E3E50'),
(6131, 678, 10, 1265585538, '2', '12428', 1.00, 38.00, 1, 1, 2, '2025-06-23 13:19:24', 0.00, 1, 0.00, 1.00, 'E3E50'),
(6132, 678, 10, 1265585538, '2', '11969', 3.00, 45.00, 1, 1, 2, '2025-06-23 13:19:24', 0.00, 1, 0.00, 1.00, 'E3E50'),
(6133, 681, 10, 2147483647, '2', '12107', 100.00, 0.43, 1, 1, 2, '2025-06-23 13:36:24', 0.00, 1, 0.00, 1.00, '20250'),
(6134, 681, 10, 2147483647, '2', '12431', 2.00, 15.50, 1, 1, 2, '2025-06-23 13:36:24', 0.00, 1, 0.00, 1.00, '20250'),
(6135, 681, 10, 2147483647, '2', '11890', 2.00, 12.70, 1, 1, 2, '2025-06-23 13:36:24', 0.00, 1, 0.00, 1.00, '20250'),
(6136, 681, 10, 2147483647, '2', '12432', 6.00, 6.50, 1, 1, 2, '2025-06-23 13:36:24', 0.00, 1, 0.00, 1.00, '20250'),
(6137, 679, 9, 564, '1', '12107', 10.00, 1.00, 1, 1, 1, '2025-06-22 13:39:00', 0.43, 3, 100.00, 1.00, 'T001'),
(6138, 679, 9, 564, '1', '12198', 10.00, 1.20, 1, 1, 1, '2025-06-22 13:39:00', 0.63, 3, 70.00, 1.00, 'T001'),
(6139, 679, 9, 564, '1', '12123', 7.00, 3.00, 1, 1, 1, '2025-06-22 13:39:00', 0.95, 3, 7.00, 1.00, 'T001'),
(6140, 679, 9, 564, '1', '11913', 10.00, 1.20, 1, 1, 1, '2025-06-22 13:39:00', 0.70, 3, 250.00, 1.00, 'T001'),
(6141, 679, 9, 564, '1', '12397', 1.00, 5.00, 1, 1, 1, '2025-06-22 13:39:00', 3.14, 3, 23.00, 1.00, 'T001'),
(6142, 679, 9, 564, '1', '12130', 1.00, 5.00, 1, 1, 1, '2025-06-22 13:39:00', 2.50, 3, 3.00, 1.00, 'T001'),
(6143, 679, 9, 564, '1', '12157', 1.00, 8.00, 1, 1, 1, '2025-06-22 13:39:00', 4.00, 3, 4.00, 1.00, 'T001'),
(6144, 679, 9, 564, '1', '12098', 2.00, 2.00, 1, 1, 1, '2025-06-22 13:39:00', 0.80, 3, 15.00, 1.00, 'T001'),
(6145, 679, 9, 565, '1', '12385', 15.00, 1.00, 1, 1, 1, '2025-06-23 13:48:53', 0.74, 3, 72.00, 1.00, 'T001'),
(6146, 679, 9, 566, '1', '12044', 20.00, 1.00, 1, 1, 1, '2025-06-23 14:07:24', 0.50, 3, 140.00, 1.00, 'T001'),
(6147, 679, 9, 567, '1', '12145', 30.00, 1.50, 1, 1, 1, '2025-06-23 20:25:48', 0.96, 3, 30.00, 1.00, 'T001'),
(6148, 679, 9, 567, '1', '12234', 1.00, 10.00, 1, 1, 1, '2025-06-23 20:25:48', 5.63, 3, 48.00, 1.00, 'T001'),
(6149, 679, 9, 567, '1', '11860', 10.00, 1.00, 1, 1, 1, '2025-06-23 20:25:48', 0.55, 3, 60.00, 1.00, 'T001'),
(6150, 679, 9, 567, '1', '12041', 10.00, 1.50, 1, 1, 1, '2025-06-23 20:25:48', 0.61, 3, 24.00, 1.00, 'T001'),
(6151, 679, 9, 567, '1', '12177', 4.00, 3.00, 1, 1, 1, '2025-06-23 20:25:48', 1.29, 3, 34.00, 1.00, 'T001'),
(6152, 679, 9, 567, '1', '12198', 10.00, 1.20, 1, 1, 1, '2025-06-23 20:25:48', 0.63, 3, 60.00, 1.00, 'T001'),
(6153, 679, 9, 567, '1', '12240', 1.00, 90.00, 1, 1, 1, '2025-06-23 20:25:48', 36.00, 3, 1.00, 1.00, 'T001'),
(6154, 679, 9, 567, '1', '12199', 5.00, 5.00, 1, 1, 1, '2025-06-23 20:25:48', 3.00, 3, 25.00, 1.00, 'T001'),
(6155, 679, 9, 567, '1', '12388', 1.00, 10.00, 1, 1, 1, '2025-06-23 20:25:48', 3.55, 3, 7.00, 1.00, 'T001'),
(6156, 679, 9, 568, '1', '12131', 2.00, 1.75, 1, 1, 1, '2025-06-24 17:28:47', 1.25, 3, 56.00, 1.00, 'T001'),
(6157, 679, 9, 568, '1', '12149', 10.00, 0.50, 1, 1, 1, '2025-06-24 17:28:47', 0.20, 3, 60.00, 1.00, 'T001'),
(6158, 679, 9, 568, '1', '12180', 1.00, 5.00, 1, 1, 1, '2025-06-24 17:28:47', 1.25, 3, 10.00, 1.00, 'T001'),
(6159, 679, 9, 568, '1', '12401', 1.00, 5.00, 1, 1, 1, '2025-06-24 17:28:47', 2.97, 3, 49.00, 1.00, 'T001'),
(6160, 679, 9, 568, '1', '12414', 2.00, 15.00, 1, 1, 1, '2025-06-24 17:28:47', 4.25, 3, 3.00, 1.00, 'T001'),
(6161, 679, 9, 569, '1', '12149', 10.00, 0.50, 1, 1, 1, '2025-06-24 17:35:43', 0.20, 3, 50.00, 1.00, 'T001'),
(6162, 679, 9, 570, '1', '11860', 10.00, 1.00, 1, 1, 1, '2025-06-24 18:19:08', 0.55, 3, 50.00, 1.00, 'T001'),
(6163, 679, 9, 570, '1', '12394', 4.00, 2.00, 1, 1, 1, '2025-06-24 18:19:08', 0.82, 3, 100.00, 1.00, 'T001'),
(6164, 679, 9, 570, '1', '11850', 1.00, 25.00, 1, 1, 1, '2025-06-24 18:19:08', 4.00, 3, 1.00, 1.00, 'T001'),
(6165, 679, 9, 571, '1', '12048', 2.00, 3.00, 1, 1, 1, '2025-06-24 18:52:38', 1.25, 3, 41.00, 1.00, 'T001'),
(6166, 679, 9, 572, '1', '12222', 1.00, 7.00, 1, 1, 1, '2025-06-24 20:47:10', 4.33, 3, 13.00, 1.00, 'T001'),
(6167, 679, 9, 573, '1', '12347', 2.00, 1.75, 1, 1, 1, '2025-06-24 20:52:11', 0.90, 3, 24.00, 1.00, 'T001'),
(6168, 679, 9, 574, '1', '12325', 1.00, 9.50, 1, 1, 1, '2025-06-25 18:58:44', 6.15, 3, 2.00, 1.00, 'T001'),
(6169, 679, 9, 574, '1', '11985', 10.00, 1.00, 1, 1, 1, '2025-06-25 18:58:44', 0.40, 3, 20.00, 1.00, 'T001'),
(6170, 679, 9, 574, '1', '12127', 2.00, 5.00, 1, 1, 1, '2025-06-25 18:58:44', 2.03, 3, 28.00, 1.00, 'T001'),
(6171, 679, 9, 574, '1', '11869', 1.00, 12.00, 1, 1, 1, '2025-06-25 18:58:44', 6.20, 3, 6.00, 1.00, 'T001'),
(6172, 679, 9, 574, '1', '12146', 1.00, 25.00, 1, 1, 1, '2025-06-25 18:58:44', 15.10, 3, 1.00, 1.00, 'T001'),
(6173, 679, 9, 574, '1', '12199', 5.00, 5.00, 1, 1, 1, '2025-06-25 18:58:44', 3.00, 3, 20.00, 1.00, 'T001'),
(6174, 679, 9, 574, '1', '12372', 1.00, 3.00, 1, 1, 1, '2025-06-25 18:58:44', 1.50, 3, 5.00, 1.00, 'T001'),
(6175, 679, 9, 574, '1', '12012', 10.00, 1.00, 1, 1, 1, '2025-06-25 18:58:44', 0.36, 3, 90.00, 1.00, 'T001'),
(6176, 679, 9, 574, '1', '12090', 5.00, 1.00, 1, 1, 1, '2025-06-25 18:58:44', 0.36, 3, 102.00, 1.00, 'T001'),
(6177, 679, 9, 574, '1', '12142', 7.00, 5.00, 1, 1, 1, '2025-06-25 18:58:44', 1.53, 3, 19.00, 1.00, 'T001'),
(6178, 679, 9, 574, '1', '12243', 2.00, 1.50, 1, 1, 1, '2025-06-25 18:58:44', 0.42, 3, 21.00, 1.00, 'T001'),
(6179, 679, 9, 574, '1', '12182', 2.00, 0.75, 1, 1, 1, '2025-06-25 18:58:44', 0.36, 3, 42.00, 1.00, 'T001'),
(6180, 679, 9, 574, '1', '12371', 1.00, 3.00, 1, 1, 1, '2025-06-25 18:58:44', 1.50, 3, 13.00, 1.00, 'T001'),
(6181, 679, 9, 574, '1', '12180', 1.00, 5.00, 1, 1, 1, '2025-06-25 18:58:44', 1.25, 3, 9.00, 1.00, 'T001'),
(6182, 679, 9, 574, '1', '12353', 1.00, 18.00, 1, 1, 1, '2025-06-25 18:58:44', 9.00, 3, 2.00, 1.00, 'T001'),
(6183, 679, 9, 574, '1', '12419', 10.00, 7.00, 1, 1, 1, '2025-06-25 18:58:44', 2.73, 3, 40.00, 1.00, 'T001'),
(6184, 679, 9, 574, '1', '12234', 1.00, 10.00, 1, 1, 1, '2025-06-25 18:58:44', 5.63, 3, 47.00, 1.00, 'T001'),
(6185, 679, 9, 575, '1', '11913', 10.00, 1.50, 1, 1, 1, '2025-06-25 19:25:12', 0.70, 3, 240.00, 1.00, 'T001'),
(6186, 679, 9, 575, '1', '12347', 4.00, 1.75, 1, 1, 1, '2025-06-25 19:25:12', 0.90, 3, 22.00, 1.00, 'T001'),
(6187, 679, 9, 576, '1', '12122', 1.00, 5.00, 1, 1, 1, '2025-06-25 19:26:40', 2.66, 3, 19.00, 1.00, 'T001'),
(6188, 679, 9, 577, '1', '12082', 3.00, 2.00, 1, 1, 1, '2025-06-25 19:48:28', 1.10, 3, 44.00, 1.00, 'T001'),
(6189, 679, 9, 578, '1', '12227', 1.00, 15.00, 1, 1, 1, '2025-06-25 19:59:56', 5.00, 3, 3.00, 1.00, 'T001'),
(6190, 679, 9, 579, '1', '12179', 1.00, 5.00, 1, 0, 1, '2025-06-26 13:24:49', 2.99, 3, 4.00, 1.00, 'T001'),
(6191, 679, 9, 579, '1', '11992', 20.00, 0.50, 1, 0, 1, '2025-06-26 13:24:49', 0.25, 3, 100.00, 1.00, 'T001'),
(6192, 679, 9, 579, '1', '11971', 1.00, 15.00, 1, 0, 1, '2025-06-26 13:24:49', 9.00, 3, 4.00, 1.00, 'T001'),
(6193, 679, 9, 579, '1', '11992', 20.00, 0.50, 1, 0, 1, '2025-06-26 13:24:49', 0.25, 3, 80.00, 1.00, 'T001'),
(6194, 679, 9, 580, '1', '11971', 1.00, 15.00, 1, 1, 1, '2025-06-26 13:28:37', 9.00, 3, 4.00, 1.00, 'T001'),
(6195, 679, 9, 580, '1', '12179', 1.00, 5.00, 1, 1, 1, '2025-06-26 13:28:37', 2.99, 3, 4.00, 1.00, 'T001'),
(6196, 679, 9, 580, '1', '11992', 40.00, 0.50, 1, 1, 1, '2025-06-26 13:28:37', 0.25, 3, 100.00, 1.00, 'T001'),
(6197, 679, 9, 581, '1', '12121', 2.00, 2.00, 1, 1, 1, '2025-06-26 17:21:22', 1.02, 3, 91.00, 1.00, 'T001'),
(6198, 679, 9, 581, '1', '12290', 1.00, 25.00, 1, 1, 1, '2025-06-26 17:21:22', 20.45, 3, 1.00, 1.00, 'T001'),
(6199, 679, 9, 582, '1', '12180', 2.00, 5.00, 1, 1, 1, '2025-06-26 19:55:50', 1.25, 3, 8.00, 1.00, 'T001'),
(6200, 679, 9, 583, '1', '12376', 5.00, 1.50, 1, 0, 1, '2025-06-27 01:32:27', 0.60, 3, 5.00, 1.00, 'T001'),
(6201, 679, 9, 584, '1', '12376', 5.00, 1.50, 1, 1, 1, '2025-06-27 01:34:13', 0.60, 3, 5.00, 1.00, 'T001'),
(6202, 679, 9, 585, '1', '12385', 20.00, 1.00, 1, 1, 1, '2025-06-27 13:57:37', 0.74, 3, 57.00, 1.00, 'T001'),
(6203, 679, 9, 585, '1', '12258', 5.00, 2.00, 1, 1, 1, '2025-06-27 13:57:37', 1.00, 3, 34.00, 1.00, 'T001'),
(6204, 679, 9, 585, '1', '11973', 1.00, 20.00, 1, 1, 1, '2025-06-27 13:57:37', 9.00, 3, 1.00, 1.00, 'T001'),
(6205, 679, 9, 585, '1', '11946', 10.00, 1.00, 1, 1, 1, '2025-06-27 13:57:37', 0.76, 3, 100.00, 1.00, 'T001'),
(6206, 679, 9, 585, '1', '12242', 1.00, 2.00, 1, 1, 1, '2025-06-27 13:57:37', 0.62, 3, 66.00, 1.00, 'T001'),
(6207, 679, 9, 585, '1', '11987', 1.00, 25.00, 1, 1, 1, '2025-06-27 13:57:37', 8.79, 3, 29.00, 1.00, 'T001'),
(6208, 679, 9, 585, '1', '12399', 1.00, 5.00, 1, 1, 1, '2025-06-27 13:57:37', 3.14, 3, 24.00, 1.00, 'T001'),
(6209, 679, 9, 585, '1', '12148', 1.00, 20.00, 1, 1, 1, '2025-06-27 13:57:37', 10.00, 3, 3.00, 1.00, 'T001'),
(6210, 679, 9, 585, '1', '12392', 1.00, 77.00, 1, 1, 1, '2025-06-27 13:57:37', 59.25, 3, 2.00, 1.00, 'T001'),
(6211, 679, 9, 586, '1', '12098', 2.00, 2.00, 1, 1, 1, '2025-06-27 19:17:04', 0.80, 3, 13.00, 1.00, 'T001'),
(6212, 679, 9, 586, '1', '12234', 2.00, 10.00, 1, 1, 1, '2025-06-27 19:17:04', 5.63, 3, 46.00, 1.00, 'T001'),
(6213, 679, 9, 586, '1', '12127', 5.00, 5.00, 1, 1, 1, '2025-06-27 19:17:04', 2.03, 3, 26.00, 1.00, 'T001'),
(6214, 679, 9, 586, '1', '12041', 2.00, 1.50, 1, 1, 1, '2025-06-27 19:17:04', 0.61, 3, 14.00, 1.00, 'T001'),
(6215, 679, 9, 586, '1', '12355', 1.00, 10.00, 1, 1, 1, '2025-06-27 19:17:04', 4.00, 3, 4.00, 1.00, 'T001'),
(6216, 679, 9, 586, '1', '12347', 4.00, 1.75, 1, 1, 1, '2025-06-27 19:17:04', 0.90, 3, 18.00, 1.00, 'T001'),
(6217, 679, 9, 586, '1', '12223', 2.00, 5.00, 1, 1, 1, '2025-06-27 19:17:04', 2.67, 3, 30.00, 1.00, 'T001'),
(6218, 679, 9, 586, '1', '11860', 10.00, 1.00, 1, 1, 1, '2025-06-27 19:17:04', 0.55, 3, 40.00, 1.00, 'T001'),
(6219, 679, 9, 587, '1', '11886', 1.00, 25.00, 1, 1, 1, '2025-06-27 20:22:25', 11.00, 3, 1.00, 1.00, 'T001'),
(6220, 679, 9, 588, '1', '12096', 1.00, 10.00, 1, 0, 1, '2025-06-28 18:20:51', 4.50, 3, 1.00, 1.00, 'T001'),
(6221, 679, 9, 588, '1', '12095', 1.00, 10.00, 1, 0, 1, '2025-06-28 18:20:51', 4.50, 3, 3.00, 1.00, 'T001'),
(6222, 679, 9, 588, '1', '12176', 1.00, 10.00, 1, 0, 1, '2025-06-28 18:20:51', 3.50, 3, 4.00, 1.00, 'T001'),
(6223, 679, 9, 588, '1', '12386', 1.00, 15.00, 1, 0, 1, '2025-06-28 18:20:51', 10.50, 3, 1.00, 1.00, 'T001'),
(6224, 679, 9, 588, '1', '12248', 1.00, 0.50, 1, 0, 1, '2025-06-28 18:20:51', 0.12, 3, 102.00, 1.00, 'T001'),
(6225, 679, 9, 588, '1', '12244', 1.00, 1.00, 1, 0, 1, '2025-06-28 18:20:51', 0.35, 3, 80.00, 1.00, 'T001'),
(6226, 679, 9, 588, '1', '11897', 1.00, 15.00, 1, 0, 1, '2025-06-28 18:20:51', 5.66, 3, 3.00, 1.00, 'T001'),
(6227, 679, 9, 588, '1', '11987', 1.00, 25.00, 1, 0, 1, '2025-06-28 18:20:51', 8.79, 3, 28.00, 1.00, 'T001'),
(6228, 679, 9, 589, '1', '12210', 4.00, 2.00, 1, 0, 1, '2025-06-28 18:23:45', 0.97, 3, 69.00, 1.00, 'T001'),
(6229, 679, 9, 589, '1', '12190', 1.00, 110.00, 1, 0, 1, '2025-06-28 18:23:45', 83.00, 3, 1.00, 1.00, 'T001'),
(6230, 679, 9, 590, '1', '12433', 1.00, 75.00, 1, 0, 1, '2025-06-29 12:55:44', 60.00, 3, 1.00, 1.00, 'T001'),
(6231, 679, 9, 591, '1', '12242', 1.00, 2.00, 1, 1, 1, '2025-06-28 14:51:24', 0.62, 3, 65.00, 1.00, 'T001'),
(6232, 679, 9, 591, '1', '12418', 5.00, 5.00, 1, 1, 1, '2025-06-28 14:51:24', 2.20, 3, 30.00, 1.00, 'T001'),
(6233, 679, 9, 591, '1', '12210', 4.00, 2.00, 1, 1, 1, '2025-06-28 14:51:24', 0.97, 3, 69.00, 1.00, 'T001'),
(6234, 679, 9, 591, '1', '12190', 1.00, 110.00, 1, 1, 1, '2025-06-28 14:51:24', 83.00, 3, 1.00, 1.00, 'T001'),
(6235, 679, 9, 591, '1', '12433', 1.00, 75.00, 1, 1, 1, '2025-06-28 14:51:24', 60.00, 3, 1.00, 1.00, 'T001'),
(6236, 679, 9, 591, '1', '12386', 1.00, 15.00, 1, 1, 1, '2025-06-28 14:51:24', 10.50, 3, 1.00, 1.00, 'T001'),
(6237, 679, 9, 591, '1', '12248', 1.00, 0.50, 1, 1, 1, '2025-06-28 14:51:24', 0.12, 3, 102.00, 1.00, 'T001'),
(6238, 679, 9, 591, '1', '12244', 1.00, 1.00, 1, 1, 1, '2025-06-28 14:51:24', 0.35, 3, 80.00, 1.00, 'T001'),
(6239, 679, 9, 591, '1', '12176', 1.00, 10.00, 1, 1, 1, '2025-06-28 14:51:24', 3.50, 3, 4.00, 1.00, 'T001'),
(6240, 679, 9, 591, '1', '12096', 1.00, 10.00, 1, 1, 1, '2025-06-28 14:51:24', 4.50, 3, 1.00, 1.00, 'T001'),
(6241, 679, 9, 591, '1', '12095', 1.00, 10.00, 1, 1, 1, '2025-06-28 14:51:24', 4.50, 3, 3.00, 1.00, 'T001'),
(6242, 679, 9, 591, '1', '11987', 1.00, 25.00, 1, 1, 1, '2025-06-28 14:51:24', 8.79, 3, 28.00, 1.00, 'T001'),
(6243, 679, 9, 591, '1', '11897', 1.00, 15.00, 1, 1, 1, '2025-06-28 14:51:24', 5.66, 3, 3.00, 1.00, 'T001'),
(6244, 679, 9, 592, '1', '12033', 1.00, 45.00, 1, 1, 1, '2025-06-29 18:09:05', 35.00, 3, 1.00, 1.00, 'T001'),
(6245, 679, 9, 592, '1', '12257', 1.00, 70.00, 1, 1, 1, '2025-06-29 18:09:05', 46.00, 3, 1.00, 1.00, 'T001');
INSERT INTO `detalle_factura` (`id_detalle`, `id_cliente`, `id_vendedor`, `numero_factura`, `ot`, `id_producto`, `cantidad`, `precio_venta`, `tienda`, `activo`, `ven_com`, `fecha`, `precio_compra`, `tipo_doc`, `inv_ini`, `moneda`, `folio`) VALUES
(6246, 679, 9, 592, '1', '12244', 1.00, 1.00, 1, 1, 1, '2025-06-29 18:09:05', 0.35, 3, 79.00, 1.00, 'T001'),
(6247, 679, 9, 592, '1', '12211', 5.00, 2.00, 1, 1, 1, '2025-06-29 18:09:05', 1.00, 3, 10.00, 1.00, 'T001'),
(6248, 679, 9, 592, '1', '12210', 1.00, 2.00, 1, 1, 1, '2025-06-29 18:09:05', 0.97, 3, 65.00, 1.00, 'T001'),
(6249, 679, 9, 592, '1', '11883', 20.00, 0.50, 1, 1, 1, '2025-06-29 18:09:05', 0.19, 3, 80.00, 1.00, 'T001'),
(6250, 679, 9, 593, '1', '12349', 1.00, 45.00, 1, 1, 1, '2025-06-29 18:22:25', 25.00, 3, 1.00, 1.00, 'T001'),
(6251, 679, 9, 594, '1', '12177', 10.00, 2.50, 1, 1, 1, '2025-06-29 20:57:17', 1.29, 3, 30.00, 1.00, 'T001'),
(6252, 679, 9, 594, '1', '12222', 5.00, 7.00, 1, 1, 1, '2025-06-29 20:57:17', 4.33, 3, 14.00, 1.00, 'T001'),
(6253, 679, 9, 595, '1', '11992', 20.00, 0.50, 1, 1, 1, '2025-06-30 12:54:39', 0.25, 3, 60.00, 1.00, 'T001'),
(6254, 679, 9, 596, '1', '12247', 1.00, 0.50, 1, 1, 1, '2025-06-30 14:53:26', 0.12, 3, 13.00, 1.00, 'T001'),
(6255, 679, 9, 596, '1', '12242', 1.00, 2.00, 1, 1, 1, '2025-06-30 14:53:26', 0.62, 3, 64.00, 1.00, 'T001'),
(6256, 679, 9, 596, '1', '12180', 2.00, 5.00, 1, 1, 1, '2025-06-30 14:53:26', 1.25, 3, 6.00, 1.00, 'T001'),
(6257, 679, 9, 596, '1', '12315', 2.00, 10.00, 1, 1, 1, '2025-06-30 14:53:26', 5.49, 3, 16.00, 1.00, 'T001'),
(6258, 679, 9, 596, '1', '12311', 2.00, 20.00, 1, 1, 1, '2025-06-30 14:53:26', 15.80, 3, 3.00, 1.00, 'T001'),
(6259, 679, 9, 596, '1', '12385', 15.00, 1.00, 1, 1, 1, '2025-06-30 14:53:26', 0.74, 3, 37.00, 1.00, 'T001'),
(6260, 679, 9, 597, '1', '12187', 1.00, 35.00, 1, 1, 1, '2025-06-30 15:17:38', 16.00, 3, 2.00, 1.00, 'T001'),
(6261, 679, 9, 598, '1', '12031', 1.00, 1.50, 1, 1, 1, '2025-06-30 15:34:44', 0.80, 3, 40.00, 1.00, 'T001'),
(6262, 679, 9, 599, '1', '11945', 20.00, 0.50, 1, 1, 1, '2025-06-30 15:49:00', 0.22, 3, 40.00, 1.00, 'T001'),
(6263, 679, 9, 599, '1', '12432', 1.00, 15.00, 1, 1, 1, '2025-06-30 15:49:00', 6.50, 3, 6.00, 1.00, 'T001'),
(6264, 679, 9, 600, '1', '11855', 1.00, 10.00, 1, 1, 1, '2025-06-30 18:27:11', 5.00, 3, 1.00, 1.00, 'T001'),
(6265, 679, 9, 600, '1', '12409', 1.00, 50.00, 1, 1, 1, '2025-06-30 18:27:11', 27.37, 3, 1.00, 1.00, 'T001'),
(6266, 679, 9, 600, '1', '12284', 1.00, 20.00, 1, 1, 1, '2025-06-30 18:27:11', 15.50, 3, 3.00, 1.00, 'T001'),
(6267, 679, 9, 601, '1', '12393', 1.00, 167.00, 1, 1, 1, '2025-06-30 18:52:24', 119.50, 3, 1.00, 1.00, 'T001'),
(6268, 679, 9, 601, '1', '11840', 1.00, 66.00, 1, 1, 1, '2025-06-30 18:52:24', 45.00, 3, 1.00, 1.00, 'T001'),
(6269, 679, 9, 602, '1', '12244', 1.00, 1.00, 1, 1, 1, '2025-06-30 19:32:17', 0.35, 3, 78.00, 1.00, 'T001'),
(6270, 679, 9, 603, '1', '12196', 10.00, 1.00, 1, 1, 1, '2025-06-30 19:58:42', 0.60, 3, 60.00, 1.00, 'T001'),
(6271, 679, 9, 604, '1', '12420', 1.00, 5.00, 1, 1, 1, '2025-07-01 13:47:03', 2.87, 3, 40.00, 1.00, 'T001'),
(6272, 679, 9, 605, '1', '12315', 1.00, 10.00, 1, 1, 1, '2025-07-01 16:39:51', 5.49, 3, 14.00, 1.00, 'T001'),
(6273, 679, 9, 605, '1', '12182', 1.00, 0.75, 1, 1, 1, '2025-07-01 16:39:51', 0.36, 3, 40.00, 1.00, 'T001'),
(6274, 679, 9, 606, '1', '12234', 1.00, 10.00, 1, 1, 1, '2025-07-01 16:45:22', 5.63, 3, 44.00, 1.00, 'T001'),
(6275, 679, 9, 606, '1', '11869', 1.00, 12.00, 1, 1, 1, '2025-07-01 16:45:22', 6.20, 3, 5.00, 1.00, 'T001'),
(6276, 679, 9, 607, '1', '12244', 3.00, 1.00, 1, 1, 1, '2025-07-01 16:55:27', 0.35, 3, 77.00, 1.00, 'T001'),
(6277, 679, 9, 608, '1', '12291', 1.00, 26.00, 1, 1, 1, '2025-07-01 19:16:39', 20.45, 3, 1.00, 1.00, 'T001'),
(6278, 679, 9, 608, '1', '12179', 1.00, 5.00, 1, 1, 1, '2025-07-01 19:16:39', 2.99, 3, 3.00, 1.00, 'T001'),
(6279, 679, 9, 608, '1', '12371', 1.00, 3.00, 1, 1, 1, '2025-07-01 19:16:39', 1.50, 3, 12.00, 1.00, 'T001'),
(6280, 679, 9, 608, '1', '12341', 1.00, 9.50, 1, 1, 1, '2025-07-01 19:16:39', 5.83, 3, 4.00, 1.00, 'T001'),
(6281, 679, 9, 608, '1', '12125', 2.00, 1.00, 1, 1, 1, '2025-07-01 19:16:39', 0.40, 3, 3.00, 1.00, 'T001'),
(6282, 679, 9, 608, '1', '12363', 1.00, 8.00, 1, 1, 1, '2025-07-01 19:16:39', 3.50, 3, 3.00, 1.00, 'T001'),
(6283, 679, 9, 609, '1', '12414', 1.00, 15.00, 1, 1, 1, '2025-07-01 19:18:09', 4.25, 3, 1.00, 1.00, 'T001'),
(6284, 679, 9, 610, '1', '12405', 10.00, 3.00, 1, 1, 1, '2025-07-01 19:00:40', 0.40, 3, 20.00, 1.00, 'T001'),
(6285, 679, 9, 610, '1', '12113', 10.00, 1.00, 1, 1, 1, '2025-07-01 19:00:40', 0.30, 3, 54.00, 1.00, 'T001'),
(6286, 679, 9, 610, '1', '11860', 10.00, 1.00, 1, 1, 1, '2025-07-01 19:00:40', 0.55, 3, 30.00, 1.00, 'T001'),
(6287, 679, 9, 610, '1', '12235', 1.00, 10.00, 1, 1, 1, '2025-07-01 19:00:40', 4.64, 3, 3.00, 1.00, 'T001'),
(6288, 679, 9, 611, '1', '12149', 10.00, 0.50, 1, 1, 1, '2025-07-01 20:20:17', 0.20, 3, 40.00, 1.00, 'T001'),
(6289, 679, 9, 611, '1', '12249', 1.00, 20.00, 1, 1, 1, '2025-07-01 20:20:17', 6.00, 3, 3.00, 1.00, 'T001'),
(6290, 679, 9, 611, '1', '11971', 1.00, 15.00, 1, 1, 1, '2025-07-01 20:20:17', 9.00, 3, 3.00, 1.00, 'T001'),
(6291, 679, 9, 612, '1', '12410', 1.00, 150.00, 1, 1, 1, '2025-07-01 20:33:34', 50.25, 3, 3.00, 1.00, 'T001'),
(6292, 679, 9, 612, '1', '12225', 1.00, 5.00, 1, 1, 1, '2025-07-01 20:33:34', 0.50, 3, 2.00, 1.00, 'T001'),
(6293, 679, 9, 612, '1', '11987', 1.00, 30.00, 1, 1, 1, '2025-07-01 20:33:34', 8.79, 3, 27.00, 1.00, 'T001'),
(6294, 679, 9, 612, '1', '12243', 1.00, 1.50, 1, 1, 1, '2025-07-01 20:33:34', 0.42, 3, 19.00, 1.00, 'T001'),
(6295, 679, 9, 612, '1', '12242', 1.00, 2.00, 1, 1, 1, '2025-07-01 20:33:34', 0.62, 3, 63.00, 1.00, 'T001'),
(6296, 679, 9, 613, '1', '12125', 1.00, 1.00, 1, 1, 1, '2025-07-01 21:04:18', 0.40, 3, 1.00, 1.00, 'T001'),
(6297, 679, 9, 613, '1', '12179', 1.00, 5.00, 1, 1, 1, '2025-07-01 21:04:18', 2.99, 3, 2.00, 1.00, 'T001'),
(6298, 679, 9, 614, '1', '12385', 20.00, 1.00, 1, 1, 1, '2025-07-01 21:20:08', 0.74, 3, 22.00, 1.00, 'T001'),
(6299, 679, 9, 615, '1', '12132', 10.00, 4.50, 1, 1, 1, '2025-07-01 22:05:32', 1.00, 3, 89.00, 1.00, 'T001'),
(6300, 679, 9, 615, '1', '11946', 80.00, 1.20, 1, 1, 1, '2025-07-01 22:05:32', 0.76, 3, 90.00, 1.00, 'T001'),
(6301, 679, 9, 616, '1', '12024', 1.00, 50.00, 1, 0, 1, '2025-07-02 18:42:20', 16.80, 3, 1.00, 1.00, 'T001'),
(6302, 679, 9, 616, '1', '12148', 1.00, 20.00, 1, 0, 1, '2025-07-02 18:42:20', 10.00, 3, 2.00, 1.00, 'T001'),
(6303, 679, 9, 616, '1', '12132', 1.00, 4.50, 1, 0, 1, '2025-07-02 18:42:20', 1.00, 3, 79.00, 1.00, 'T001'),
(6304, 679, 9, 616, '1', '12124', 20.00, 2.00, 1, 0, 1, '2025-07-02 18:42:20', 0.80, 3, 68.00, 1.00, 'T001'),
(6305, 679, 9, 616, '1', '12401', 1.00, 5.00, 1, 0, 1, '2025-07-02 18:42:20', 2.97, 3, 48.00, 1.00, 'T001'),
(6306, 679, 9, 616, '1', '12114', 1.00, 10.00, 1, 0, 1, '2025-07-02 18:42:20', 5.00, 3, 2.00, 1.00, 'T001'),
(6307, 679, 9, 616, '1', '12155', 3.00, 1.00, 1, 0, 1, '2025-07-02 18:42:20', 0.50, 3, 32.00, 1.00, 'T001'),
(6308, 679, 9, 617, '1', '12388', 1.00, 10.00, 1, 0, 1, '2025-07-02 18:54:38', 3.55, 3, 6.00, 1.00, 'T001'),
(6309, 679, 9, 618, '1', '12177', 1.00, 3.00, 1, 0, 1, '2025-07-02 19:44:39', 1.29, 3, 20.00, 1.00, 'T001'),
(6310, 679, 9, 618, '1', '12222', 1.00, 7.00, 1, 0, 1, '2025-07-02 19:44:39', 4.33, 3, 9.00, 1.00, 'T001'),
(6311, 679, 9, 619, '1', '12222', 1.00, 7.00, 1, 1, 1, '2025-07-02 20:17:01', 4.33, 3, 9.00, 1.00, 'T001'),
(6312, 679, 9, 619, '1', '12177', 1.00, 3.00, 1, 1, 1, '2025-07-02 20:17:01', 1.29, 3, 20.00, 1.00, 'T001'),
(6313, 679, 9, 619, '1', '12388', 1.00, 10.00, 1, 1, 1, '2025-07-02 20:17:01', 3.55, 3, 6.00, 1.00, 'T001'),
(6314, 679, 9, 619, '1', '12401', 1.00, 5.00, 1, 1, 1, '2025-07-02 20:17:01', 2.97, 3, 48.00, 1.00, 'T001'),
(6315, 679, 9, 619, '1', '12155', 1.00, 1.00, 1, 1, 1, '2025-07-02 20:17:01', 0.50, 3, 32.00, 1.00, 'T001'),
(6316, 679, 9, 619, '1', '12148', 1.00, 20.00, 1, 1, 1, '2025-07-02 20:17:01', 10.00, 3, 2.00, 1.00, 'T001'),
(6317, 679, 9, 619, '1', '12132', 1.00, 4.50, 1, 1, 1, '2025-07-02 20:17:01', 1.00, 3, 79.00, 1.00, 'T001'),
(6318, 679, 9, 619, '1', '12124', 20.00, 2.00, 1, 1, 1, '2025-07-02 20:17:01', 0.80, 3, 68.00, 1.00, 'T001'),
(6319, 679, 9, 619, '1', '12114', 1.00, 10.00, 1, 1, 1, '2025-07-02 20:17:01', 5.00, 3, 2.00, 1.00, 'T001'),
(6320, 679, 9, 619, '1', '12024', 1.00, 50.00, 1, 1, 1, '2025-07-02 20:17:01', 16.80, 3, 1.00, 1.00, 'T001'),
(6321, 679, 9, 620, '1', '12428', 1.00, 60.00, 1, 1, 1, '2025-07-02 20:33:53', 38.00, 3, 1.00, 1.00, 'T001'),
(6322, 679, 9, 620, '1', '12199', 5.00, 5.00, 1, 1, 1, '2025-07-02 20:33:53', 3.00, 3, 15.00, 1.00, 'T001'),
(6323, 679, 9, 620, '1', '12035', 2.00, 25.00, 1, 1, 1, '2025-07-02 20:33:53', 6.53, 3, 29.00, 1.00, 'T001'),
(6324, 679, 9, 621, '1', '12223', 5.00, 5.00, 1, 1, 1, '2025-07-02 20:35:25', 2.67, 3, 28.00, 1.00, 'T001'),
(6325, 679, 9, 621, '1', '12244', 1.00, 1.00, 1, 1, 1, '2025-07-02 20:35:25', 0.35, 3, 74.00, 1.00, 'T001'),
(6326, 678, 10, 1886339606, '2', '11966', 1.00, 39.60, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6327, 678, 10, 1886339606, '2', '12037', 1.00, 93.50, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6328, 678, 10, 1886339606, '2', '12033', 1.00, 32.50, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6329, 678, 10, 1886339606, '2', '12434', 1.00, 24.00, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6330, 678, 10, 1886339606, '2', '12257', 1.00, 54.90, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6331, 678, 10, 1886339606, '2', '12065', 2.00, 22.90, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6332, 678, 10, 1886339606, '2', '12390', 1.00, 82.90, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6333, 678, 10, 1886339606, '2', '12066', 30.00, 0.60, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6334, 678, 10, 1886339606, '2', '12056', 100.00, 0.47, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6335, 678, 10, 1886339606, '2', '12062', 30.00, 0.80, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6336, 678, 10, 1886339606, '2', '12043', 1.00, 30.50, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6337, 678, 10, 1886339606, '2', '12005', 1.00, 18.25, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6338, 678, 10, 1886339606, '2', '12001', 1.00, 77.00, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6339, 678, 10, 1886339606, '2', '12016', 1.00, 36.50, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6340, 678, 10, 1886339606, '2', '11993', 15.00, 3.03, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6341, 678, 10, 1886339606, '2', '12393', 1.00, 119.50, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6342, 678, 10, 1886339606, '2', '12190', 1.00, 83.00, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6343, 678, 10, 1886339606, '2', '12096', 3.00, 4.65, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6344, 678, 10, 1886339606, '2', '11906', 1.00, 13.00, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6345, 678, 10, 1886339606, '2', '11840', 1.00, 46.50, 1, 1, 2, '2025-07-03 19:54:28', 0.00, 1, 0.00, 1.00, '97B15'),
(6346, 679, 10, 622, '1', '12082', 4.00, 2.00, 1, 0, 1, '2025-07-03 20:04:24', 1.10, 3, 41.00, 1.00, 'T001'),
(6347, 679, 10, 622, '1', '12098', 4.00, 2.00, 1, 0, 1, '2025-07-03 20:04:24', 0.80, 3, 11.00, 1.00, 'T001'),
(6348, 679, 10, 622, '1', '12242', 1.00, 2.00, 1, 0, 1, '2025-07-03 20:04:24', 0.62, 3, 62.00, 1.00, 'T001'),
(6349, 679, 10, 622, '1', '12213', 1.00, 15.00, 1, 0, 1, '2025-07-03 20:04:24', 2.80, 3, 1.00, 1.00, 'T001'),
(6350, 679, 10, 622, '1', '12160', 1.00, 60.00, 1, 0, 1, '2025-07-03 20:04:24', 28.00, 3, 3.00, 1.00, 'T001'),
(6351, 679, 10, 622, '1', '12237', 1.00, 30.00, 1, 0, 1, '2025-07-03 20:04:24', 16.50, 3, 2.00, 1.00, 'T001'),
(6352, 679, 10, 622, '1', '11836', 1.00, 20.00, 1, 0, 1, '2025-07-03 20:04:24', 10.15, 3, 4.00, 1.00, 'T001'),
(6353, 678, 10, 1116818842, '2', '12225', 10.00, 1.25, 1, 1, 2, '2025-07-03 20:19:05', 0.00, 1, 1.00, 1.00, 'AD3C6'),
(6354, 678, 10, 1116818842, '2', '11959', 50.00, 1.10, 1, 1, 2, '2025-07-03 20:19:05', 0.00, 1, 0.00, 1.00, 'AD3C6'),
(6355, 678, 10, 1116818842, '2', '12054', 8.00, 3.06, 1, 1, 2, '2025-07-03 20:19:05', 0.00, 1, 0.00, 1.00, 'AD3C6'),
(6356, 678, 10, 1116818842, '2', '12037', 1.00, 93.50, 1, 1, 2, '2025-07-03 20:19:05', 0.00, 1, 1.00, 1.00, 'AD3C6'),
(6357, 678, 10, 1116818842, '2', '11885', 1.00, 25.50, 1, 1, 2, '2025-07-03 20:19:05', 0.00, 1, 0.00, 1.00, 'AD3C6'),
(6358, 678, 10, 1116818842, '2', '12428', 1.00, 38.00, 1, 1, 2, '2025-07-03 20:19:05', 0.00, 1, 0.00, 1.00, 'AD3C6'),
(6359, 678, 10, 1116818842, '2', '12436', 2.00, 44.20, 1, 1, 2, '2025-07-03 20:19:05', 0.00, 1, 0.00, 1.00, 'AD3C6'),
(6360, 678, 10, 1116818842, '2', '12180', 20.00, 1.25, 1, 1, 2, '2025-07-03 20:19:05', 0.00, 1, 4.00, 1.00, 'AD3C6'),
(6361, 678, 10, 1116818842, '2', '12376', 100.00, 0.28, 1, 1, 2, '2025-07-03 20:19:05', 0.00, 1, 0.00, 1.00, 'AD3C6'),
(6362, 678, 10, 1116818842, '2', '11845', 2.00, 11.90, 1, 1, 2, '2025-07-03 20:19:05', 0.00, 1, 0.00, 1.00, 'AD3C6'),
(6363, 678, 10, 1116818842, '2', '12435', 1.00, 12.95, 1, 1, 2, '2025-07-03 20:19:05', 0.00, 1, 0.00, 1.00, 'AD3C6'),
(6364, 679, 10, 623, '1', '12436', 1.00, 90.00, 1, 0, 1, '2025-07-03 20:24:43', 44.20, 3, 2.00, 1.00, 'T001'),
(6365, 679, 9, 624, '1', '11971', 1.00, 15.00, 1, 1, 1, '2025-07-03 20:25:50', 9.00, 3, 2.00, 1.00, 'T001'),
(6366, 679, 9, 624, '1', '12258', 2.00, 2.00, 1, 1, 1, '2025-07-03 20:25:50', 1.00, 3, 29.00, 1.00, 'T001'),
(6367, 679, 9, 624, '1', '12347', 4.00, 1.75, 1, 1, 1, '2025-07-03 20:25:50', 0.90, 3, 14.00, 1.00, 'T001'),
(6368, 679, 9, 624, '1', '12243', 1.00, 1.50, 1, 1, 1, '2025-07-03 20:25:50', 0.42, 3, 18.00, 1.00, 'T001'),
(6369, 679, 9, 624, '1', '12151', 1.00, 80.00, 1, 1, 1, '2025-07-03 20:25:50', 41.00, 3, 2.00, 1.00, 'T001'),
(6370, 679, 9, 624, '1', '11987', 1.00, 20.00, 1, 1, 1, '2025-07-03 20:25:50', 8.79, 3, 26.00, 1.00, 'T001'),
(6371, 679, 9, 624, '1', '12248', 3.00, 0.50, 1, 1, 1, '2025-07-03 20:25:50', 0.12, 3, 101.00, 1.00, 'T001'),
(6372, 679, 9, 624, '1', '12243', 1.00, 1.50, 1, 1, 1, '2025-07-03 20:25:50', 0.42, 3, 17.00, 1.00, 'T001'),
(6373, 679, 9, 624, '1', '11987', 1.00, 25.00, 1, 1, 1, '2025-07-03 20:25:50', 8.79, 3, 25.00, 1.00, 'T001'),
(6374, 679, 9, 624, '1', '12050', 1.00, 5.00, 1, 1, 1, '2025-07-03 20:25:50', 2.16, 3, 24.00, 1.00, 'T001'),
(6375, 679, 9, 624, '1', '11939', 2.00, 3.00, 1, 1, 1, '2025-07-03 20:25:50', 0.60, 3, 5.00, 1.00, 'T001'),
(6376, 679, 9, 624, '1', '12012', 10.00, 1.00, 1, 1, 1, '2025-07-03 20:25:50', 0.36, 3, 80.00, 1.00, 'T001'),
(6377, 679, 9, 624, '1', '12054', 1.00, 6.00, 1, 1, 1, '2025-07-03 20:25:50', 3.06, 3, 8.00, 1.00, 'T001'),
(6378, 679, 9, 624, '1', '12388', 1.00, 10.00, 1, 1, 1, '2025-07-03 20:25:50', 3.55, 3, 5.00, 1.00, 'T001'),
(6379, 679, 9, 624, '1', '11932', 1.00, 1.00, 1, 1, 1, '2025-07-03 20:25:50', 0.50, 3, 50.00, 1.00, 'T001'),
(6380, 679, 9, 624, '1', '12363', 1.00, 8.00, 1, 1, 1, '2025-07-03 20:25:50', 3.50, 3, 2.00, 1.00, 'T001'),
(6381, 679, 9, 624, '1', '12059', 1.00, 30.00, 1, 1, 1, '2025-07-03 20:25:50', 11.00, 3, 2.00, 1.00, 'T001'),
(6382, 679, 9, 624, '1', '12121', 1.00, 2.00, 1, 1, 1, '2025-07-03 20:25:50', 1.02, 3, 89.00, 1.00, 'T001'),
(6383, 679, 9, 624, '1', '12436', 1.00, 90.00, 1, 1, 1, '2025-07-03 20:25:50', 44.20, 3, 2.00, 1.00, 'T001'),
(6384, 679, 9, 624, '1', '12242', 1.00, 2.00, 1, 1, 1, '2025-07-03 20:25:50', 0.62, 3, 62.00, 1.00, 'T001'),
(6385, 679, 9, 624, '1', '12237', 1.00, 30.00, 1, 1, 1, '2025-07-03 20:25:50', 16.50, 3, 2.00, 1.00, 'T001'),
(6386, 679, 9, 624, '1', '12213', 1.00, 15.00, 1, 1, 1, '2025-07-03 20:25:50', 2.80, 3, 1.00, 1.00, 'T001'),
(6387, 679, 9, 624, '1', '12160', 1.00, 60.00, 1, 1, 1, '2025-07-03 20:25:50', 28.00, 3, 3.00, 1.00, 'T001'),
(6388, 679, 9, 624, '1', '12098', 4.00, 2.00, 1, 1, 1, '2025-07-03 20:25:50', 0.80, 3, 11.00, 1.00, 'T001'),
(6389, 679, 9, 624, '1', '12082', 4.00, 2.00, 1, 1, 1, '2025-07-03 20:25:50', 1.10, 3, 41.00, 1.00, 'T001'),
(6390, 679, 9, 624, '1', '11836', 1.00, 20.00, 1, 1, 1, '2025-07-03 20:25:50', 10.15, 3, 4.00, 1.00, 'T001'),
(6391, 679, 9, 624, '1', '12037', 1.00, 119.00, 1, 1, 1, '2025-07-03 20:25:50', 93.50, 3, 2.00, 1.00, 'T001'),
(6392, 679, 9, 625, '1', '12113', 10.00, 1.00, 1, 1, 1, '2025-07-04 16:36:26', 0.30, 3, 44.00, 1.00, 'T001'),
(6393, 679, 9, 625, '1', '12179', 1.00, 5.00, 1, 1, 1, '2025-07-04 16:36:26', 2.99, 3, 1.00, 1.00, 'T001'),
(6394, 679, 9, 625, '1', '11845', 1.00, 25.00, 1, 1, 1, '2025-07-04 16:36:26', 11.90, 3, 2.00, 1.00, 'T001'),
(6395, 679, 9, 626, '1', '12118', 1.00, 5.00, 1, 1, 1, '2025-07-04 16:53:33', 2.33, 3, 2.00, 1.00, 'T001'),
(6396, 679, 9, 627, '1', '12025', 1.00, 20.00, 1, 1, 1, '2025-07-04 16:54:01', 10.78, 3, 1.00, 1.00, 'T001'),
(6397, 679, 9, 628, '1', '12031', 2.00, 1.50, 1, 1, 1, '2025-07-04 17:12:46', 0.80, 3, 39.00, 1.00, 'T001'),
(6398, 679, 9, 629, '1', '11969', 1.00, 76.00, 1, 1, 1, '2025-07-04 18:03:36', 45.00, 3, 3.00, 1.00, 'T001'),
(6399, 679, 9, 630, '1', '12196', 10.00, 1.00, 1, 1, 1, '2025-07-04 18:57:54', 0.60, 3, 50.00, 1.00, 'T001'),
(6400, 679, 9, 631, '1', '12124', 1.00, 2.00, 1, 1, 1, '2025-07-04 19:04:43', 0.80, 3, 48.00, 1.00, 'T001'),
(6401, 679, 9, 631, '1', '12248', 1.00, 0.50, 1, 1, 1, '2025-07-04 19:04:43', 0.12, 3, 98.00, 1.00, 'T001'),
(6402, 679, 9, 631, '1', '12243', 1.00, 1.50, 1, 1, 1, '2025-07-04 19:04:43', 0.42, 3, 16.00, 1.00, 'T001'),
(6403, 679, 9, 631, '1', '12031', 2.00, 1.50, 1, 1, 1, '2025-07-04 19:04:43', 0.80, 3, 37.00, 1.00, 'T001'),
(6404, 679, 9, 632, '1', '12278', 1.00, 147.00, 1, 1, 1, '2025-07-04 19:56:34', 147.00, 3, 1.00, 1.00, 'T001'),
(6405, 679, 9, 633, '1', '12199', 3.00, 5.00, 1, 1, 1, '2025-07-04 20:35:03', 3.00, 3, 10.00, 1.00, 'T001'),
(6406, 679, 9, 634, '1', '12418', 2.00, 5.00, 1, 1, 1, '2025-07-04 20:37:26', 2.20, 3, 25.00, 1.00, 'T001'),
(6407, 679, 9, 635, '1', '11860', 10.00, 1.00, 1, 1, 1, '2025-07-04 20:45:40', 0.55, 3, 20.00, 1.00, 'T001'),
(6408, 679, 9, 636, '1', '12248', 1.00, 0.50, 1, 1, 1, '2025-07-04 20:54:27', 0.12, 3, 97.00, 1.00, 'T001'),
(6409, 679, 9, 636, '1', '12160', 1.00, 60.00, 1, 1, 1, '2025-07-04 20:54:27', 28.00, 3, 2.00, 1.00, 'T001'),
(6410, 679, 9, 637, '1', '12119', 10.00, 5.00, 1, 0, 1, '2025-07-05 11:39:17', 2.33, 3, 15.00, 1.00, 'T001'),
(6411, 679, 9, 638, '1', '12074', 2.00, 10.00, 1, 1, 1, '2025-07-06 13:05:12', 2.63, 3, 24.00, 1.00, 'T001'),
(6412, 679, 9, 638, '1', '12371', 1.00, 3.00, 1, 1, 1, '2025-07-06 13:05:12', 1.50, 3, 11.00, 1.00, 'T001'),
(6413, 679, 9, 638, '1', '11897', 1.00, 15.00, 1, 1, 1, '2025-07-06 13:05:12', 5.66, 3, 2.00, 1.00, 'T001'),
(6414, 679, 9, 638, '1', '11890', 1.00, 25.00, 1, 1, 1, '2025-07-06 13:05:12', 12.70, 3, 2.00, 1.00, 'T001'),
(6415, 679, 9, 638, '1', '12161', 1.00, 50.00, 1, 1, 1, '2025-07-06 13:05:12', 28.00, 3, 2.00, 1.00, 'T001'),
(6416, 679, 9, 639, '1', '12180', 1.00, 5.00, 1, 1, 1, '2025-07-06 13:08:36', 1.25, 3, 24.00, 1.00, 'T001'),
(6417, 679, 9, 639, '1', '12177', 4.00, 3.00, 1, 1, 1, '2025-07-06 13:08:36', 1.29, 3, 19.00, 1.00, 'T001'),
(6418, 679, 9, 639, '1', '12379', 2.00, 2.50, 1, 1, 1, '2025-07-06 13:08:36', 0.43, 3, 37.00, 1.00, 'T001'),
(6419, 679, 9, 640, '1', '12037', 1.00, 119.00, 1, 1, 1, '2025-07-06 15:20:34', 93.50, 3, 1.00, 1.00, 'T001'),
(6420, 679, 9, 640, '1', '11869', 1.00, 12.00, 1, 1, 1, '2025-07-06 15:20:34', 6.20, 3, 4.00, 1.00, 'T001'),
(6421, 679, 9, 640, '1', '12234', 2.00, 10.00, 1, 1, 1, '2025-07-06 15:20:34', 5.63, 3, 43.00, 1.00, 'T001'),
(6422, 679, 9, 640, '1', '12419', 4.00, 6.00, 1, 1, 1, '2025-07-06 15:20:34', 2.73, 3, 30.00, 1.00, 'T001'),
(6423, 679, 9, 641, '1', '12348', 1.00, 20.00, 1, 1, 1, '2025-07-06 18:56:15', 7.00, 3, 1.00, 1.00, 'T001'),
(6424, 679, 9, 641, '1', '12113', 10.00, 1.00, 1, 1, 1, '2025-07-06 18:56:15', 0.30, 3, 34.00, 1.00, 'T001'),
(6425, 679, 9, 641, '1', '11985', 1.00, 1.00, 1, 1, 1, '2025-07-06 18:56:15', 0.40, 3, 10.00, 1.00, 'T001'),
(6426, 679, 9, 642, '1', '12250', 2.00, 5.00, 1, 0, 1, '2025-07-07 12:30:59', 2.50, 3, 10.00, 1.00, 'T001'),
(6427, 679, 9, 642, '1', '12161', 1.00, 50.00, 1, 0, 1, '2025-07-07 12:30:59', 28.00, 3, 1.00, 1.00, 'T001'),
(6428, 679, 9, 643, '1', '11851', 20.00, 0.50, 1, 0, 1, '2025-07-07 12:31:37', 0.11, 3, 100.00, 1.00, 'T001'),
(6429, 679, 9, 643, '1', '12436', 1.00, 90.00, 1, 0, 1, '2025-07-07 12:31:37', 44.20, 3, 1.00, 1.00, 'T001'),
(6430, 679, 9, 643, '1', '11890', 1.00, 25.00, 1, 0, 1, '2025-07-07 12:31:37', 12.70, 3, 1.00, 1.00, 'T001'),
(6431, 679, 9, 644, '1', '12399', 2.00, 5.00, 1, 0, 1, '2025-07-07 13:52:45', 3.14, 3, 23.00, 1.00, 'T001'),
(6432, 679, 9, 644, '1', '12398', 2.00, 5.00, 1, 0, 1, '2025-07-07 13:52:45', 3.14, 3, 24.00, 1.00, 'T001'),
(6433, 679, 9, 645, '1', '12148', 1.00, 25.00, 1, 0, 1, '2025-07-07 14:27:53', 10.00, 3, 1.00, 1.00, 'T001'),
(6434, 679, 9, 645, '1', '12224', 1.00, 5.00, 1, 0, 1, '2025-07-07 14:27:53', 0.80, 3, 2.00, 1.00, 'T001'),
(6435, 679, 9, 645, '1', '11992', 10.00, 0.50, 1, 0, 1, '2025-07-07 14:27:53', 0.25, 3, 40.00, 1.00, 'T001'),
(6436, 679, 9, 645, '1', '11921', 3.00, 1.00, 1, 0, 1, '2025-07-07 14:27:53', 0.43, 3, 103.00, 1.00, 'T001'),
(6437, 679, 9, 645, '1', '12243', 1.00, 1.50, 1, 0, 1, '2025-07-07 14:27:53', 0.42, 3, 15.00, 1.00, 'T001'),
(6438, 679, 9, 646, '1', '12242', 1.00, 2.00, 1, 1, 1, '2025-07-07 19:59:08', 0.62, 3, 61.00, 1.00, 'T001'),
(6439, 679, 9, 646, '1', '12132', 1.00, 4.50, 1, 1, 1, '2025-07-07 19:59:08', 1.00, 3, 78.00, 1.00, 'T001'),
(6440, 679, 9, 646, '1', '12341', 1.00, 9.50, 1, 1, 1, '2025-07-07 19:59:08', 5.83, 3, 3.00, 1.00, 'T001'),
(6441, 679, 9, 646, '1', '12243', 1.00, 1.50, 1, 1, 1, '2025-07-07 19:59:08', 0.42, 3, 15.00, 1.00, 'T001'),
(6442, 679, 9, 646, '1', '12224', 1.00, 5.00, 1, 1, 1, '2025-07-07 19:59:08', 0.80, 3, 2.00, 1.00, 'T001'),
(6443, 679, 9, 646, '1', '12148', 1.00, 25.00, 1, 1, 1, '2025-07-07 19:59:08', 10.00, 3, 1.00, 1.00, 'T001'),
(6444, 679, 9, 646, '1', '11992', 10.00, 0.50, 1, 1, 1, '2025-07-07 19:59:08', 0.25, 3, 40.00, 1.00, 'T001'),
(6445, 679, 9, 646, '1', '11921', 3.00, 1.00, 1, 1, 1, '2025-07-07 19:59:08', 0.43, 3, 103.00, 1.00, 'T001'),
(6446, 679, 9, 646, '1', '12436', 1.00, 90.00, 1, 1, 1, '2025-07-07 19:59:08', 44.20, 3, 1.00, 1.00, 'T001'),
(6447, 679, 9, 646, '1', '11890', 1.00, 25.00, 1, 1, 1, '2025-07-07 19:59:08', 12.70, 3, 1.00, 1.00, 'T001'),
(6448, 679, 9, 646, '1', '12250', 2.00, 5.00, 1, 1, 1, '2025-07-07 19:59:08', 2.50, 3, 10.00, 1.00, 'T001'),
(6449, 679, 9, 646, '1', '12161', 1.00, 50.00, 1, 1, 1, '2025-07-07 19:59:08', 28.00, 3, 1.00, 1.00, 'T001'),
(6450, 679, 9, 646, '1', '11851', 20.00, 0.50, 1, 1, 1, '2025-07-07 19:59:08', 0.11, 3, 100.00, 1.00, 'T001'),
(6451, 679, 9, 646, '1', '12398', 2.00, 5.00, 1, 1, 1, '2025-07-07 19:59:08', 3.14, 3, 24.00, 1.00, 'T001'),
(6452, 679, 9, 646, '1', '12399', 2.00, 5.00, 1, 1, 1, '2025-07-07 19:59:08', 3.14, 3, 23.00, 1.00, 'T001'),
(6453, 679, 9, 647, '1', '12401', 1.00, 5.00, 1, 1, 1, '2025-07-08 14:02:59', 2.97, 3, 47.00, 1.00, 'T001'),
(6454, 679, 9, 647, '1', '12132', 1.00, 4.50, 1, 1, 1, '2025-07-08 14:02:59', 1.00, 3, 77.00, 1.00, 'T001'),
(6455, 679, 9, 647, '1', '12399', 1.00, 5.00, 1, 1, 1, '2025-07-08 14:02:59', 3.14, 3, 21.00, 1.00, 'T001'),
(6456, 679, 9, 647, '1', '12231', 2.00, 4.00, 1, 1, 1, '2025-07-08 14:02:59', 3.33, 3, 13.00, 1.00, 'T001'),
(6457, 679, 9, 647, '1', '11985', 1.00, 1.00, 1, 1, 1, '2025-07-08 14:02:59', 0.40, 3, 9.00, 1.00, 'T001'),
(6458, 679, 9, 647, '1', '12281', 2.00, 3.50, 1, 1, 1, '2025-07-08 14:02:59', 1.00, 3, 60.00, 1.00, 'T001'),
(6459, 679, 9, 648, '1', '12172', 6.00, 0.50, 1, 0, 1, '2025-07-08 14:05:49', 0.14, 3, 90.00, 1.00, 'T001'),
(6460, 679, 9, 648, '1', '11832', 1.00, 16.00, 1, 0, 1, '2025-07-08 14:05:49', 9.00, 3, 3.00, 1.00, 'T001'),
(6461, 679, 9, 649, '1', '12074', 2.00, 10.00, 1, 1, 1, '2025-07-08 17:52:56', 2.63, 3, 22.00, 1.00, 'T001'),
(6462, 679, 9, 649, '1', '12350', 1.00, 24.50, 1, 1, 1, '2025-07-08 17:52:56', 15.00, 3, 1.00, 1.00, 'T001'),
(6463, 679, 9, 649, '1', '12036', 5.00, 5.00, 1, 1, 1, '2025-07-08 17:52:56', 1.25, 3, 36.00, 1.00, 'T001'),
(6464, 679, 9, 650, '1', '12244', 1.00, 1.00, 1, 1, 1, '2025-07-08 18:38:02', 0.35, 3, 73.00, 1.00, 'T001'),
(6465, 679, 9, 650, '1', '12273', 1.00, 20.00, 1, 1, 1, '2025-07-08 18:38:02', 9.12, 3, 7.00, 1.00, 'T001'),
(6466, 679, 9, 650, '1', '12281', 4.00, 3.50, 1, 1, 1, '2025-07-08 18:38:02', 1.00, 3, 58.00, 1.00, 'T001'),
(6467, 679, 9, 651, '1', '12172', 6.00, 0.50, 1, 1, 1, '2025-07-08 20:06:23', 0.14, 3, 90.00, 1.00, 'T001'),
(6468, 679, 9, 651, '1', '11907', 1.00, 25.00, 1, 1, 1, '2025-07-08 20:06:23', 11.65, 3, 3.00, 1.00, 'T001'),
(6469, 679, 9, 652, '1', '12248', 1.00, 0.50, 1, 1, 1, '2025-07-08 20:07:59', 0.12, 3, 96.00, 1.00, 'T001'),
(6470, 679, 9, 653, '1', '12218', 1.00, 77.00, 1, 1, 1, '2025-07-09 13:31:38', 55.00, 3, 1.00, 1.00, 'T001'),
(6471, 679, 9, 653, '1', '12261', 2.00, 0.25, 1, 1, 1, '2025-07-09 13:31:38', 0.10, 3, 105.00, 1.00, 'T001'),
(6472, 679, 9, 653, '1', '12376', 1.00, 1.50, 1, 1, 1, '2025-07-09 13:31:38', 0.28, 3, 100.00, 1.00, 'T001'),
(6473, 679, 9, 653, '1', '12090', 1.00, 1.00, 1, 1, 1, '2025-07-09 13:31:38', 0.36, 3, 97.00, 1.00, 'T001'),
(6474, 679, 9, 653, '1', '12271', 1.00, 15.00, 1, 1, 1, '2025-07-09 13:31:38', 7.00, 3, 1.00, 1.00, 'T001'),
(6475, 679, 9, 653, '1', '12048', 2.00, 3.00, 1, 1, 1, '2025-07-09 13:31:38', 1.25, 3, 39.00, 1.00, 'T001'),
(6476, 679, 9, 653, '1', '12199', 2.00, 5.00, 1, 1, 1, '2025-07-09 13:31:38', 3.00, 3, 7.00, 1.00, 'T001'),
(6477, 679, 9, 654, '1', '12184', 1.00, 45.00, 1, 1, 1, '2025-07-09 13:35:40', 21.15, 3, 1.00, 1.00, 'T001'),
(6478, 679, 9, 654, '1', '12319', 1.00, 5.00, 1, 1, 1, '2025-07-09 13:35:40', 2.00, 3, 1.00, 1.00, 'T001'),
(6479, 679, 9, 654, '1', '12320', 1.00, 14.75, 1, 1, 1, '2025-07-09 13:35:40', 8.00, 3, 1.00, 1.00, 'T001'),
(6480, 679, 9, 655, '1', '11961', 1.00, 50.00, 1, 1, 1, '2025-07-09 13:37:32', 26.90, 3, 3.00, 1.00, 'T001'),
(6481, 679, 9, 655, '1', '12191', 10.00, 10.00, 1, 1, 1, '2025-07-09 13:37:32', 7.87, 3, 10.00, 1.00, 'T001'),
(6482, 679, 9, 656, '1', '12121', 4.00, 2.00, 1, 1, 1, '2025-07-09 13:39:01', 1.02, 3, 88.00, 1.00, 'T001'),
(6483, 679, 9, 657, '1', '12401', 20.00, 5.00, 1, 1, 1, '2025-07-09 13:41:55', 2.97, 3, 46.00, 1.00, 'T001'),
(6484, 679, 9, 658, '1', '12293', 1.00, 25.00, 1, 1, 1, '2025-07-09 14:43:55', 20.45, 3, 1.00, 1.00, 'T001'),
(6485, 679, 9, 658, '1', '12261', 2.00, 0.25, 1, 1, 1, '2025-07-09 14:43:55', 0.10, 3, 103.00, 1.00, 'T001'),
(6486, 679, 9, 658, '1', '12376', 1.00, 1.50, 1, 1, 1, '2025-07-09 14:43:55', 0.28, 3, 99.00, 1.00, 'T001'),
(6487, 679, 9, 658, '1', '12392', 1.00, 77.00, 1, 1, 1, '2025-07-09 14:43:55', 59.25, 3, 1.00, 1.00, 'T001'),
(6488, 679, 9, 659, '1', '12036', 1.00, 5.00, 1, 1, 1, '2025-07-09 18:28:19', 1.25, 3, 31.00, 1.00, 'T001'),
(6489, 679, 9, 659, '1', '12078', 4.00, 1.00, 1, 1, 1, '2025-07-09 18:28:19', 0.88, 3, 23.00, 1.00, 'T001'),
(6490, 679, 9, 659, '1', '12244', 1.00, 1.00, 1, 1, 1, '2025-07-09 18:28:19', 0.35, 3, 72.00, 1.00, 'T001'),
(6491, 679, 9, 659, '1', '12400', 1.00, 12.00, 1, 1, 1, '2025-07-09 18:28:19', 6.50, 3, 5.00, 1.00, 'T001'),
(6492, 679, 9, 660, '1', '11889', 1.00, 80.00, 1, 1, 1, '2025-07-09 19:23:39', 50.00, 3, 1.00, 1.00, 'T001'),
(6493, 679, 9, 660, '1', '11921', 4.00, 1.00, 1, 1, 1, '2025-07-09 19:23:39', 0.43, 3, 100.00, 1.00, 'T001'),
(6494, 679, 9, 660, '1', '12127', 2.00, 5.00, 1, 1, 1, '2025-07-09 19:23:39', 2.03, 3, 21.00, 1.00, 'T001'),
(6495, 679, 9, 661, '1', '12388', 1.00, 10.00, 1, 1, 1, '2025-07-09 20:16:11', 3.55, 3, 4.00, 1.00, 'T001'),
(6496, 679, 9, 662, '1', '12437', 1.00, 15.00, 1, 1, 1, '2025-07-09 20:18:22', 10.75, 3, 4.00, 1.00, 'T001'),
(6497, 679, 9, 663, '1', '12149', 10.00, 0.50, 1, 1, 1, '2025-07-10 12:52:36', 0.20, 3, 30.00, 1.00, 'T001'),
(6498, 679, 9, 663, '1', '12435', 1.00, 30.00, 1, 1, 1, '2025-07-10 12:52:36', 12.90, 3, 1.00, 1.00, 'T001'),
(6499, 679, 9, 663, '1', '12036', 2.00, 5.00, 1, 1, 1, '2025-07-10 12:52:36', 1.25, 3, 30.00, 1.00, 'T001'),
(6500, 679, 9, 663, '1', '12199', 2.00, 5.00, 1, 1, 1, '2025-07-10 12:52:36', 3.00, 3, 5.00, 1.00, 'T001'),
(6501, 679, 9, 664, '1', '12134', 1.00, 95.00, 1, 1, 1, '2025-07-10 12:56:21', 40.00, 3, 2.00, 1.00, 'T001'),
(6502, 679, 9, 664, '1', '12295', 1.00, 22.00, 1, 1, 1, '2025-07-10 12:56:21', 13.50, 3, 2.00, 1.00, 'T001'),
(6503, 679, 9, 664, '1', '11847', 1.00, 1.00, 1, 1, 1, '2025-07-10 12:56:21', 0.30, 3, 30.00, 1.00, 'T001'),
(6504, 679, 9, 665, '1', '12124', 2.00, 2.00, 1, 1, 1, '2025-07-10 15:52:40', 0.80, 3, 47.00, 1.00, 'T001'),
(6505, 679, 9, 665, '1', '12132', 2.00, 4.50, 1, 1, 1, '2025-07-10 15:52:40', 1.00, 3, 76.00, 1.00, 'T001'),
(6506, 679, 9, 665, '1', '11874', 6.00, 1.00, 1, 1, 1, '2025-07-10 15:52:40', 0.18, 3, 93.00, 1.00, 'T001'),
(6507, 679, 9, 665, '1', '12248', 1.00, 0.50, 1, 1, 1, '2025-07-10 15:52:40', 0.12, 3, 95.00, 1.00, 'T001'),
(6508, 679, 9, 665, '1', '12347', 4.00, 1.75, 1, 1, 1, '2025-07-10 15:52:40', 0.90, 3, 10.00, 1.00, 'T001'),
(6509, 679, 9, 665, '1', '12368', 1.00, 15.00, 1, 1, 1, '2025-07-10 15:52:40', 9.70, 3, 2.00, 1.00, 'T001'),
(6510, 679, 9, 665, '1', '12249', 1.00, 20.00, 1, 1, 1, '2025-07-10 15:52:40', 6.00, 3, 2.00, 1.00, 'T001'),
(6511, 679, 9, 665, '1', '12120', 6.00, 2.00, 1, 1, 1, '2025-07-10 15:52:40', 1.06, 3, 36.00, 1.00, 'T001'),
(6512, 679, 9, 666, '1', '12423', 1.00, 10.00, 1, 1, 1, '2025-07-10 21:05:32', 4.00, 3, 1.00, 1.00, 'T001'),
(6513, 679, 9, 667, '1', '12437', 2.00, 15.00, 1, 1, 1, '2025-07-10 21:05:42', 10.75, 3, 3.00, 1.00, 'T001'),
(6514, 679, 9, 667, '1', '12397', 1.00, 5.00, 1, 1, 1, '2025-07-10 21:05:42', 3.14, 3, 22.00, 1.00, 'T001'),
(6515, 679, 9, 668, '1', '11971', 1.00, 15.00, 1, 1, 1, '2025-07-11 12:54:58', 9.00, 3, 1.00, 1.00, 'T001'),
(6516, 679, 9, 668, '1', '11922', 1.00, 30.00, 1, 1, 1, '2025-07-11 12:54:58', 12.00, 3, 2.00, 1.00, 'T001'),
(6517, 680, 10, 2147483647, '2', '12445', 30.00, 2.02, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6518, 680, 10, 2147483647, '2', '12444', 7.00, 4.30, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6519, 680, 10, 2147483647, '2', '11957', 3.00, 8.62, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 1.00, 1.00, '2041A'),
(6520, 680, 10, 2147483647, '2', '11971', 5.00, 7.67, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6521, 680, 10, 2147483647, '2', '12443', 2.00, 15.55, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6522, 680, 10, 2147483647, '2', '12442', 2.00, 24.10, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6523, 680, 10, 2147483647, '2', '12436', 5.00, 19.42, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6524, 680, 10, 2147483647, '2', '12240', 2.00, 36.00, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6525, 680, 10, 2147483647, '2', '12025', 2.00, 10.78, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6526, 680, 10, 2147483647, '2', '12441', 5.00, 11.35, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6527, 680, 10, 2147483647, '2', '12024', 1.00, 27.30, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6528, 680, 10, 2147483647, '2', '12440', 1.00, 16.80, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6529, 680, 10, 2147483647, '2', '12437', 8.00, 10.86, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 1.00, 1.00, '2041A'),
(6530, 680, 10, 2147483647, '2', '12439', 10.00, 6.08, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6531, 680, 10, 2147483647, '2', '12018', 10.00, 2.30, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6532, 680, 10, 2147483647, '2', '12007', 4.00, 5.80, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6533, 680, 10, 2147483647, '2', '11996', 100.00, 0.14, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6534, 680, 10, 2147483647, '2', '12409', 1.00, 27.37, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6535, 680, 10, 2147483647, '2', '11973', 2.00, 7.78, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6536, 680, 10, 2147483647, '2', '12438', 1.00, 25.35, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6537, 680, 10, 2147483647, '2', '11855', 2.00, 5.00, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6538, 680, 10, 2147483647, '2', '12145', 50.00, 0.96, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6539, 680, 10, 2147483647, '2', '11886', 2.00, 10.20, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6540, 680, 10, 2147483647, '2', '12435', 1.00, 12.34, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6541, 680, 10, 2147483647, '2', '11943', 2.00, 23.87, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6542, 680, 10, 2147483647, '2', '12446', 1.00, 62.86, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6543, 680, 10, 2147483647, '2', '11873', 1.00, 12.48, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6544, 680, 10, 2147483647, '2', '12447', 1.00, 33.79, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6545, 680, 10, 2147483647, '2', '12448', 1.00, 19.05, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6546, 680, 10, 2147483647, '2', '12449', 6.00, 12.22, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6547, 680, 10, 2147483647, '2', '12450', 30.00, 0.57, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6548, 680, 10, 2147483647, '2', '12451', 3.00, 14.53, 1, 1, 2, '2025-07-11 15:00:01', 0.00, 1, 0.00, 1.00, '2041A'),
(6549, 679, 9, 669, '1', '12242', 1.00, 2.00, 1, 1, 1, '2025-07-11 18:22:19', 0.62, 3, 60.00, 1.00, 'T001'),
(6550, 679, 9, 669, '1', '12449', 1.00, 25.00, 1, 1, 1, '2025-07-11 18:22:19', 12.22, 3, 6.00, 1.00, 'T001'),
(6551, 679, 9, 669, '1', '12237', 1.00, 30.00, 1, 1, 1, '2025-07-11 18:22:19', 16.50, 3, 1.00, 1.00, 'T001'),
(6552, 679, 9, 669, '1', '11987', 1.00, 25.00, 1, 1, 1, '2025-07-11 18:22:19', 8.79, 3, 24.00, 1.00, 'T001'),
(6553, 679, 9, 670, '1', '11932', 10.00, 1.00, 1, 1, 1, '2025-07-11 18:24:30', 0.50, 3, 49.00, 1.00, 'T001'),
(6554, 679, 9, 670, '1', '12261', 2.00, 0.25, 1, 1, 1, '2025-07-11 18:24:30', 0.10, 3, 101.00, 1.00, 'T001'),
(6555, 679, 9, 670, '1', '12376', 1.00, 1.50, 1, 1, 1, '2025-07-11 18:24:30', 0.28, 3, 98.00, 1.00, 'T001'),
(6556, 679, 9, 670, '1', '12124', 2.00, 2.00, 1, 1, 1, '2025-07-11 18:24:30', 0.80, 3, 45.00, 1.00, 'T001'),
(6557, 679, 9, 670, '1', '12147', 1.00, 6.00, 1, 1, 1, '2025-07-11 18:24:30', 3.50, 3, 9.00, 1.00, 'T001'),
(6558, 679, 9, 670, '1', '12177', 3.00, 3.00, 1, 1, 1, '2025-07-11 18:24:30', 1.29, 3, 15.00, 1.00, 'T001'),
(6559, 679, 9, 671, '1', '12445', 1.00, 5.00, 1, 1, 1, '2025-07-11 18:26:39', 2.02, 3, 30.00, 1.00, 'T001'),
(6560, 679, 9, 671, '1', '12127', 1.00, 5.00, 1, 1, 1, '2025-07-11 18:26:39', 2.03, 3, 19.00, 1.00, 'T001'),
(6561, 679, 9, 671, '1', '11883', 20.00, 0.50, 1, 1, 1, '2025-07-11 18:26:39', 0.19, 3, 60.00, 1.00, 'T001'),
(6562, 679, 9, 671, '1', '12401', 1.00, 5.00, 1, 1, 1, '2025-07-11 18:26:39', 2.97, 3, 26.00, 1.00, 'T001'),
(6563, 679, 9, 671, '1', '11860', 10.00, 1.00, 1, 1, 1, '2025-07-11 18:26:39', 0.55, 3, 10.00, 1.00, 'T001'),
(6564, 679, 9, 672, '1', '12074', 2.00, 10.00, 1, 1, 1, '2025-07-11 20:03:47', 2.63, 3, 20.00, 1.00, 'T001'),
(6565, 679, 9, 673, '1', '12451', 1.00, 25.00, 1, 1, 1, '2025-07-11 20:10:01', 14.53, 3, 3.00, 1.00, 'T001'),
(6566, 679, 9, 674, '1', '12128', 9.00, 1.00, 1, 1, 1, '2025-07-13 18:31:18', 0.60, 3, 9.00, 1.00, 'T001'),
(6567, 679, 9, 674, '1', '12355', 1.00, 10.00, 1, 1, 1, '2025-07-13 18:31:18', 4.00, 3, 3.00, 1.00, 'T001'),
(6568, 679, 9, 674, '1', '12079', 10.00, 8.50, 1, 1, 1, '2025-07-13 18:31:18', 1.50, 3, 70.00, 1.00, 'T001'),
(6569, 679, 9, 674, '1', '11984', 10.00, 1.00, 1, 1, 1, '2025-07-13 18:31:18', 0.48, 3, 100.00, 1.00, 'T001'),
(6570, 679, 9, 674, '1', '12250', 1.00, 5.00, 1, 1, 1, '2025-07-13 18:31:18', 2.50, 3, 8.00, 1.00, 'T001'),
(6571, 679, 9, 674, '1', '12132', 1.00, 4.50, 1, 1, 1, '2025-07-13 18:31:18', 1.00, 3, 74.00, 1.00, 'T001'),
(6572, 679, 9, 674, '1', '12343', 1.00, 20.00, 1, 1, 1, '2025-07-13 18:31:18', 10.40, 3, 5.00, 1.00, 'T001'),
(6573, 679, 9, 674, '1', '11836', 1.00, 20.00, 1, 1, 1, '2025-07-13 18:31:18', 10.15, 3, 3.00, 1.00, 'T001'),
(6574, 679, 9, 674, '1', '12248', 1.00, 0.50, 1, 1, 1, '2025-07-13 18:31:18', 0.12, 3, 94.00, 1.00, 'T001'),
(6575, 679, 9, 674, '1', '12177', 10.00, 2.50, 1, 1, 1, '2025-07-13 18:31:18', 1.29, 3, 12.00, 1.00, 'T001'),
(6576, 679, 9, 674, '1', '12396', 1.00, 55.00, 1, 1, 1, '2025-07-13 18:31:18', 25.00, 3, 4.00, 1.00, 'T001'),
(6577, 679, 9, 674, '1', '12401', 2.00, 5.00, 1, 1, 1, '2025-07-13 18:31:18', 2.97, 3, 25.00, 1.00, 'T001'),
(6578, 679, 9, 674, '1', '11977', 2.00, 2.00, 1, 1, 1, '2025-07-13 18:31:18', 0.99, 3, 38.00, 1.00, 'T001'),
(6579, 679, 9, 674, '1', '11922', 1.00, 30.00, 1, 1, 1, '2025-07-13 18:31:18', 12.00, 3, 1.00, 1.00, 'T001'),
(6580, 679, 9, 674, '1', '12228', 1.00, 15.00, 1, 1, 1, '2025-07-13 18:31:18', 5.50, 3, 5.00, 1.00, 'T001'),
(6581, 679, 9, 675, '1', '12234', 1.00, 10.00, 1, 1, 1, '2025-07-13 18:40:09', 5.63, 3, 41.00, 1.00, 'T001'),
(6582, 679, 9, 675, '1', '11999', 1.00, 20.00, 1, 1, 1, '2025-07-13 18:40:09', 8.69, 3, 2.00, 1.00, 'T001'),
(6583, 679, 9, 675, '1', '12422', 1.00, 30.00, 1, 1, 1, '2025-07-13 18:40:09', 15.00, 3, 1.00, 1.00, 'T001'),
(6584, 679, 9, 675, '1', '12394', 2.00, 2.00, 1, 1, 1, '2025-07-13 18:40:09', 0.82, 3, 96.00, 1.00, 'T001'),
(6585, 679, 9, 675, '1', '11914', 1.00, 64.00, 1, 1, 1, '2025-07-13 18:40:09', 30.00, 3, 1.00, 1.00, 'T001'),
(6586, 679, 9, 675, '1', '12054', 1.00, 6.00, 1, 1, 1, '2025-07-13 18:40:09', 3.06, 3, 7.00, 1.00, 'T001'),
(6587, 679, 9, 675, '1', '12347', 1.00, 1.75, 1, 1, 1, '2025-07-13 18:40:09', 0.90, 3, 6.00, 1.00, 'T001'),
(6588, 679, 9, 675, '1', '12234', 1.00, 10.00, 1, 1, 1, '2025-07-13 18:40:09', 5.63, 3, 40.00, 1.00, 'T001'),
(6589, 679, 9, 675, '1', '12007', 1.00, 12.00, 1, 1, 1, '2025-07-13 18:40:09', 5.80, 3, 4.00, 1.00, 'T001'),
(6590, 679, 9, 676, '1', '12328', 1.00, 8.75, 1, 1, 1, '2025-07-13 19:22:59', 5.00, 3, 1.00, 1.00, 'T001'),
(6591, 679, 9, 676, '1', '12244', 1.00, 1.00, 1, 1, 1, '2025-07-13 19:22:59', 0.35, 3, 71.00, 1.00, 'T001'),
(6592, 679, 9, 676, '1', '12436', 1.00, 50.00, 1, 1, 1, '2025-07-13 19:22:59', 19.42, 3, 5.00, 1.00, 'T001'),
(6593, 679, 9, 677, '1', '11845', 1.00, 25.00, 1, 1, 1, '2025-07-14 13:52:38', 11.90, 3, 1.00, 1.00, 'T001'),
(6594, 679, 9, 677, '1', '11876', 1.00, 25.00, 1, 1, 1, '2025-07-14 13:52:38', 11.00, 3, 4.00, 1.00, 'T001'),
(6595, 679, 9, 677, '1', '12149', 20.00, 0.50, 1, 1, 1, '2025-07-14 13:52:38', 0.20, 3, 20.00, 1.00, 'T001'),
(6596, 679, 9, 677, '1', '12408', 1.00, 91.00, 1, 1, 1, '2025-07-14 13:52:38', 53.95, 3, 1.00, 1.00, 'T001'),
(6597, 679, 9, 678, '1', '11891', 1.00, 15.00, 1, 1, 1, '2025-07-14 13:54:58', 5.38, 3, 1.00, 1.00, 'T001'),
(6598, 679, 9, 678, '1', '12124', 5.00, 2.00, 1, 1, 1, '2025-07-14 13:54:58', 0.80, 3, 43.00, 1.00, 'T001'),
(6599, 679, 9, 678, '1', '12420', 1.00, 5.00, 1, 1, 1, '2025-07-14 13:54:58', 2.87, 3, 39.00, 1.00, 'T001'),
(6600, 679, 9, 678, '1', '12244', 1.00, 1.00, 1, 1, 1, '2025-07-14 13:54:58', 0.35, 3, 70.00, 1.00, 'T001'),
(6601, 679, 9, 678, '1', '12224', 1.00, 5.00, 1, 1, 1, '2025-07-14 13:54:58', 0.80, 3, 1.00, 1.00, 'T001'),
(6602, 679, 9, 679, '1', '12120', 1.00, 2.00, 1, 1, 1, '2025-07-14 17:40:50', 1.06, 3, 30.00, 1.00, 'T001'),
(6603, 679, 9, 679, '1', '12341', 1.00, 9.50, 1, 1, 1, '2025-07-14 17:40:50', 5.83, 3, 2.00, 1.00, 'T001'),
(6604, 679, 9, 680, '1', '12385', 2.00, 1.00, 1, 1, 1, '2025-07-14 18:09:04', 0.74, 3, 2.00, 1.00, 'T001'),
(6605, 679, 9, 681, '1', '12404', 1.00, 60.00, 1, 1, 1, '2025-07-15 18:27:50', 33.10, 3, 2.00, 1.00, 'T001'),
(6606, 679, 9, 681, '1', '12231', 1.00, 4.00, 1, 1, 1, '2025-07-15 18:27:50', 3.33, 3, 11.00, 1.00, 'T001'),
(6607, 679, 9, 681, '1', '12113', 10.00, 1.00, 1, 1, 1, '2025-07-15 18:27:50', 0.30, 3, 24.00, 1.00, 'T001'),
(6608, 679, 9, 681, '1', '12131', 1.00, 1.75, 1, 1, 1, '2025-07-15 18:27:50', 1.25, 3, 54.00, 1.00, 'T001'),
(6609, 679, 9, 682, '1', '12019', 1.00, 55.00, 1, 1, 1, '2025-07-15 18:29:46', 44.75, 3, 1.00, 1.00, 'T001'),
(6610, 679, 9, 682, '1', '11963', 1.00, 43.00, 1, 1, 1, '2025-07-15 18:29:46', 21.00, 3, 1.00, 1.00, 'T001'),
(6611, 679, 9, 682, '1', '12347', 2.00, 1.75, 1, 1, 1, '2025-07-15 18:29:46', 0.90, 3, 5.00, 1.00, 'T001'),
(6612, 679, 9, 682, '1', '12098', 2.00, 2.00, 1, 1, 1, '2025-07-15 18:29:46', 0.80, 3, 7.00, 1.00, 'T001'),
(6613, 679, 9, 683, '1', '12182', 1.00, 0.75, 1, 1, 1, '2025-07-16 13:28:51', 0.36, 3, 39.00, 1.00, 'T001'),
(6614, 679, 9, 683, '1', '12451', 1.00, 30.00, 1, 1, 1, '2025-07-16 13:28:51', 14.53, 3, 2.00, 1.00, 'T001'),
(6615, 679, 9, 683, '1', '12120', 1.00, 2.00, 1, 1, 1, '2025-07-16 13:28:51', 1.06, 3, 29.00, 1.00, 'T001'),
(6616, 679, 9, 683, '1', '11874', 4.00, 1.00, 1, 1, 1, '2025-07-16 13:28:51', 0.18, 3, 87.00, 1.00, 'T001'),
(6617, 679, 9, 683, '1', '12101', 1.00, 50.00, 1, 1, 1, '2025-07-16 13:28:51', 21.00, 3, 2.00, 1.00, 'T001'),
(6618, 679, 9, 684, '1', '12244', 1.00, 1.00, 1, 1, 1, '2025-07-16 16:30:45', 0.35, 3, 69.00, 1.00, 'T001'),
(6619, 679, 9, 684, '1', '12138', 1.00, 25.00, 1, 1, 1, '2025-07-16 16:30:45', 10.00, 3, 1.00, 1.00, 'T001'),
(6620, 679, 9, 684, '1', '12140', 1.00, 145.00, 1, 1, 1, '2025-07-16 16:30:45', 80.00, 3, 1.00, 1.00, 'T001'),
(6621, 679, 9, 685, '1', '12250', 2.00, 5.00, 1, 1, 1, '2025-07-16 20:33:37', 2.50, 3, 7.00, 1.00, 'T001'),
(6622, 679, 9, 686, '1', '12425', 2.00, 2.50, 1, 1, 1, '2025-07-17 17:14:15', 1.20, 3, 37.00, 1.00, 'T001'),
(6623, 679, 9, 686, '1', '12284', 1.00, 20.00, 1, 1, 1, '2025-07-17 17:14:15', 15.50, 3, 2.00, 1.00, 'T001'),
(6624, 679, 9, 686, '1', '12368', 1.00, 15.00, 1, 1, 1, '2025-07-17 17:14:15', 9.70, 3, 1.00, 1.00, 'T001'),
(6625, 679, 9, 686, '1', '12210', 1.00, 2.00, 1, 1, 1, '2025-07-17 17:14:15', 0.97, 3, 64.00, 1.00, 'T001'),
(6626, 679, 9, 686, '1', '12122', 1.00, 5.00, 1, 1, 1, '2025-07-17 17:14:15', 2.66, 3, 18.00, 1.00, 'T001'),
(6627, 679, 9, 686, '1', '12419', 2.00, 6.00, 1, 1, 1, '2025-07-17 17:14:15', 2.73, 3, 26.00, 1.00, 'T001'),
(6628, 679, 9, 686, '1', '12258', 2.00, 2.00, 1, 1, 1, '2025-07-17 17:14:15', 1.00, 3, 27.00, 1.00, 'T001'),
(6629, 679, 9, 686, '1', '12388', 1.00, 10.00, 1, 1, 1, '2025-07-17 17:14:15', 3.55, 3, 3.00, 1.00, 'T001'),
(6630, 679, 9, 687, '1', '12166', 1.00, 70.00, 1, 1, 1, '2025-07-17 18:35:33', 40.00, 3, 1.00, 1.00, 'T001'),
(6631, 679, 9, 687, '1', '12376', 4.00, 1.50, 1, 1, 1, '2025-07-17 18:35:33', 0.28, 3, 97.00, 1.00, 'T001'),
(6632, 679, 9, 688, '1', '12313', 2.00, 2.00, 1, 1, 1, '2025-07-17 18:42:40', 1.04, 3, 13.00, 1.00, 'T001'),
(6633, 679, 9, 688, '1', '11992', 10.00, 0.50, 1, 1, 1, '2025-07-17 18:42:40', 0.25, 3, 30.00, 1.00, 'T001'),
(6634, 679, 9, 688, '1', '12379', 2.00, 2.50, 1, 1, 1, '2025-07-17 18:42:40', 0.43, 3, 35.00, 1.00, 'T001'),
(6635, 679, 9, 689, '1', '12177', 2.00, 3.00, 1, 1, 1, '2025-07-18 11:10:43', 1.29, 3, 2.00, 1.00, 'T001'),
(6636, 679, 9, 689, '1', '12124', 10.00, 2.00, 1, 1, 1, '2025-07-18 11:10:43', 0.80, 3, 38.00, 1.00, 'T001'),
(6637, 679, 9, 689, '1', '12347', 2.00, 1.75, 1, 1, 1, '2025-07-18 11:10:43', 0.90, 3, 3.00, 1.00, 'T001'),
(6638, 679, 9, 689, '1', '12401', 1.00, 5.00, 1, 1, 1, '2025-07-18 11:10:43', 2.97, 3, 23.00, 1.00, 'T001'),
(6639, 679, 9, 689, '1', '12242', 1.00, 2.00, 1, 1, 1, '2025-07-18 11:10:43', 0.62, 3, 59.00, 1.00, 'T001'),
(6640, 679, 9, 689, '1', '12212', 1.00, 15.00, 1, 1, 1, '2025-07-18 11:10:43', 2.10, 3, 7.00, 1.00, 'T001'),
(6641, 679, 9, 690, '1', '12248', 1.00, 0.50, 1, 1, 1, '2025-07-18 11:21:38', 0.12, 3, 93.00, 1.00, 'T001'),
(6642, 679, 9, 690, '1', '12242', 1.00, 2.00, 1, 1, 1, '2025-07-18 11:21:38', 0.62, 3, 58.00, 1.00, 'T001'),
(6643, 679, 9, 690, '1', '12205', 1.00, 20.00, 1, 1, 1, '2025-07-18 11:21:38', 4.02, 3, 24.00, 1.00, 'T001'),
(6644, 679, 9, 690, '1', '12412', 1.00, 50.00, 1, 1, 1, '2025-07-18 11:21:38', 14.95, 3, 4.00, 1.00, 'T001'),
(6645, 679, 9, 690, '1', '12160', 1.00, 60.00, 1, 1, 1, '2025-07-18 11:21:38', 28.00, 3, 1.00, 1.00, 'T001'),
(6646, 679, 9, 691, '1', '12234', 1.00, 10.00, 1, 1, 1, '2025-07-18 20:42:22', 5.63, 3, 39.00, 1.00, 'T001'),
(6647, 679, 9, 691, '1', '12052', 10.00, 1.10, 1, 1, 1, '2025-07-18 20:42:22', 0.60, 3, 30.00, 1.00, 'T001'),
(6648, 679, 9, 691, '1', '12036', 4.00, 5.00, 1, 1, 1, '2025-07-18 20:42:22', 1.25, 3, 28.00, 1.00, 'T001'),
(6649, 679, 9, 691, '1', '12124', 1.00, 2.00, 1, 1, 1, '2025-07-18 20:42:22', 0.80, 3, 28.00, 1.00, 'T001'),
(6650, 679, 9, 691, '1', '11945', 20.00, 0.50, 1, 1, 1, '2025-07-18 20:42:22', 0.22, 3, 20.00, 1.00, 'T001'),
(6651, 679, 9, 692, '1', '12227', 1.00, 15.00, 1, 1, 1, '2025-07-18 20:49:31', 5.00, 3, 2.00, 1.00, 'T001'),
(6652, 679, 9, 692, '1', '12244', 1.00, 1.00, 1, 1, 1, '2025-07-18 20:49:31', 0.35, 3, 68.00, 1.00, 'T001'),
(6653, 679, 9, 692, '1', '12436', 2.00, 50.00, 1, 1, 1, '2025-07-18 20:49:31', 19.42, 3, 4.00, 1.00, 'T001'),
(6654, 679, 9, 692, '1', '11999', 1.00, 20.00, 1, 1, 1, '2025-07-18 20:49:31', 8.69, 3, 1.00, 1.00, 'T001'),
(6655, 679, 9, 692, '1', '12199', 2.00, 5.00, 1, 1, 1, '2025-07-18 20:49:31', 3.00, 3, 3.00, 1.00, 'T001'),
(6656, 679, 9, 692, '1', '12234', 1.00, 10.00, 1, 1, 1, '2025-07-18 20:49:31', 5.63, 3, 38.00, 1.00, 'T001'),
(6657, 679, 9, 692, '1', '12229', 1.00, 15.00, 1, 1, 1, '2025-07-18 20:49:31', 5.00, 3, 4.00, 1.00, 'T001'),
(6658, 679, 9, 693, '1', '12087', 1.00, 35.00, 1, 1, 1, '2025-07-18 20:52:39', 22.50, 3, 2.00, 1.00, 'T001'),
(6659, 679, 9, 693, '1', '11836', 1.00, 20.00, 1, 1, 1, '2025-07-18 20:52:39', 10.15, 3, 2.00, 1.00, 'T001'),
(6660, 679, 9, 693, '1', '12381', 6.00, 0.50, 1, 1, 1, '2025-07-18 20:52:39', 0.16, 3, 976.00, 1.00, 'T001'),
(6661, 679, 9, 693, '1', '12126', 4.00, 1.00, 1, 1, 1, '2025-07-18 20:52:39', 0.35, 3, 4.00, 1.00, 'T001'),
(6662, 679, 9, 694, '1', '12260', 1.00, 106.00, 1, 1, 1, '2025-07-18 20:55:24', 81.70, 3, 1.00, 1.00, 'T001'),
(6663, 679, 9, 695, '1', '12062', 30.00, 1.50, 1, 1, 1, '2025-07-18 21:03:03', 1.01, 3, 30.00, 1.00, 'T001'),
(6664, 679, 9, 696, '1', '12098', 2.00, 2.00, 1, 1, 1, '2025-07-18 21:03:24', 0.80, 3, 5.00, 1.00, 'T001'),
(6665, 679, 9, 697, '1', '12120', 5.00, 2.00, 1, 0, 1, '2025-07-19 11:34:56', 1.06, 3, 28.00, 1.00, 'T001'),
(6666, 679, 9, 698, '1', '12196', 20.00, 1.00, 1, 0, 1, '2025-07-19 19:31:34', 0.60, 3, 40.00, 1.00, 'T001'),
(6667, 679, 9, 698, '1', '11969', 1.00, 76.00, 1, 0, 1, '2025-07-19 19:31:34', 45.00, 3, 2.00, 1.00, 'T001'),
(6668, 679, 9, 698, '1', '12124', 10.00, 2.00, 1, 0, 1, '2025-07-19 19:31:34', 0.80, 3, 27.00, 1.00, 'T001'),
(6669, 679, 9, 698, '1', '12244', 1.00, 1.00, 1, 0, 1, '2025-07-19 19:31:34', 0.35, 3, 67.00, 1.00, 'T001'),
(6670, 679, 9, 698, '1', '12436', 1.00, 50.00, 1, 0, 1, '2025-07-19 19:31:34', 19.42, 3, 2.00, 1.00, 'T001'),
(6671, 679, 9, 698, '1', '11947', 1.00, 2.00, 1, 0, 1, '2025-07-19 19:31:34', 1.00, 3, 1.00, 1.00, 'T001'),
(6672, 679, 9, 698, '1', '12243', 3.00, 1.50, 1, 0, 1, '2025-07-19 19:31:34', 0.42, 3, 14.00, 1.00, 'T001'),
(6673, 679, 9, 698, '1', '12012', 10.00, 1.00, 1, 0, 1, '2025-07-19 19:31:34', 0.36, 3, 70.00, 1.00, 'T001'),
(6674, 679, 9, 698, '1', '12199', 1.00, 5.00, 1, 0, 1, '2025-07-19 19:31:34', 3.00, 3, 1.00, 1.00, 'T001'),
(6675, 679, 9, 699, '1', '12401', 1.00, 5.00, 1, 0, 1, '2025-07-19 19:38:45', 2.97, 3, 22.00, 1.00, 'T001'),
(6676, 679, 9, 700, '1', '12401', 1.00, 5.00, 1, 1, 1, '2025-07-19 21:02:19', 2.97, 3, 22.00, 1.00, 'T001'),
(6677, 679, 9, 700, '1', '12244', 1.00, 1.00, 1, 1, 1, '2025-07-19 21:02:19', 0.35, 3, 67.00, 1.00, 'T001'),
(6678, 679, 9, 700, '1', '12436', 1.00, 50.00, 1, 1, 1, '2025-07-19 21:02:19', 19.42, 3, 2.00, 1.00, 'T001'),
(6679, 679, 9, 700, '1', '12243', 3.00, 1.50, 1, 1, 1, '2025-07-19 21:02:19', 0.42, 3, 14.00, 1.00, 'T001'),
(6680, 679, 9, 700, '1', '12199', 1.00, 5.00, 1, 1, 1, '2025-07-19 21:02:19', 3.00, 3, 1.00, 1.00, 'T001'),
(6681, 679, 9, 700, '1', '12196', 20.00, 1.00, 1, 1, 1, '2025-07-19 21:02:19', 0.60, 3, 40.00, 1.00, 'T001'),
(6682, 679, 9, 700, '1', '12124', 10.00, 2.00, 1, 1, 1, '2025-07-19 21:02:19', 0.80, 3, 27.00, 1.00, 'T001'),
(6683, 679, 9, 700, '1', '12012', 10.00, 1.00, 1, 1, 1, '2025-07-19 21:02:19', 0.36, 3, 70.00, 1.00, 'T001'),
(6684, 679, 9, 700, '1', '11969', 1.00, 76.00, 1, 1, 1, '2025-07-19 21:02:19', 45.00, 3, 2.00, 1.00, 'T001'),
(6685, 679, 9, 700, '1', '11947', 1.00, 2.00, 1, 1, 1, '2025-07-19 21:02:19', 1.00, 3, 1.00, 1.00, 'T001'),
(6686, 679, 9, 700, '1', '12120', 5.00, 2.00, 1, 1, 1, '2025-07-19 21:02:19', 1.06, 3, 28.00, 1.00, 'T001'),
(6687, 679, 9, 701, '1', '12223', 2.00, 5.00, 1, 1, 1, '2025-07-22 09:41:40', 2.67, 3, 23.00, 1.00, 'T001'),
(6688, 679, 9, 701, '1', '12122', 1.00, 5.00, 1, 1, 1, '2025-07-22 09:41:40', 2.66, 3, 17.00, 1.00, 'T001'),
(6689, 679, 9, 701, '1', '12115', 1.00, 5.00, 1, 1, 1, '2025-07-22 09:41:40', 1.80, 3, 13.00, 1.00, 'T001'),
(6690, 679, 9, 701, '1', '12124', 3.00, 2.00, 1, 1, 1, '2025-07-22 09:41:40', 0.80, 3, 17.00, 1.00, 'T001'),
(6691, 679, 9, 702, '1', '12234', 1.00, 10.00, 1, 1, 1, '2025-07-22 09:44:18', 5.63, 3, 37.00, 1.00, 'T001'),
(6692, 679, 9, 702, '1', '12182', 3.00, 0.75, 1, 1, 1, '2025-07-22 09:44:18', 0.36, 3, 38.00, 1.00, 'T001'),
(6693, 679, 9, 702, '1', '12372', 1.00, 3.00, 1, 1, 1, '2025-07-22 09:44:18', 1.50, 3, 4.00, 1.00, 'T001'),
(6694, 679, 9, 702, '1', '12229', 1.00, 15.00, 1, 1, 1, '2025-07-22 09:44:18', 5.00, 3, 3.00, 1.00, 'T001'),
(6695, 679, 9, 702, '1', '12344', 1.00, 20.00, 1, 1, 1, '2025-07-22 09:44:18', 10.80, 3, 6.00, 1.00, 'T001'),
(6696, 679, 9, 702, '1', '12263', 2.00, 0.50, 1, 1, 1, '2025-07-22 09:44:18', 0.32, 3, 489.00, 1.00, 'T001'),
(6697, 679, 9, 703, '1', '12242', 1.00, 2.00, 1, 1, 1, '2025-07-22 20:10:47', 0.62, 3, 57.00, 1.00, 'T001'),
(6698, 679, 9, 703, '1', '12113', 10.00, 1.00, 1, 1, 1, '2025-07-22 20:10:47', 0.30, 3, 14.00, 1.00, 'T001'),
(6699, 679, 9, 703, '1', '11992', 20.00, 0.50, 1, 1, 1, '2025-07-22 20:10:47', 0.25, 3, 20.00, 1.00, 'T001'),
(6700, 679, 9, 703, '1', '12210', 2.00, 2.00, 1, 1, 1, '2025-07-22 20:10:47', 0.97, 3, 63.00, 1.00, 'T001'),
(6701, 679, 9, 703, '1', '12004', 1.00, 1.00, 1, 1, 1, '2025-07-22 20:10:47', 0.35, 3, 98.00, 1.00, 'T001'),
(6702, 679, 9, 703, '1', '12264', 2.00, 4.00, 1, 1, 1, '2025-07-22 20:10:47', 1.25, 3, 10.00, 1.00, 'T001'),
(6703, 679, 9, 703, '1', '12263', 5.00, 0.50, 1, 1, 1, '2025-07-22 20:10:47', 0.32, 3, 487.00, 1.00, 'T001');
INSERT INTO `detalle_factura` (`id_detalle`, `id_cliente`, `id_vendedor`, `numero_factura`, `ot`, `id_producto`, `cantidad`, `precio_venta`, `tienda`, `activo`, `ven_com`, `fecha`, `precio_compra`, `tipo_doc`, `inv_ini`, `moneda`, `folio`) VALUES
(6704, 679, 9, 704, '1', '12004', 1.00, 1.00, 1, 1, 1, '2025-07-22 20:14:22', 0.35, 3, 97.00, 1.00, 'T001'),
(6705, 679, 9, 704, '1', '12421', 1.00, 30.00, 1, 1, 1, '2025-07-22 20:14:22', 14.00, 3, 2.00, 1.00, 'T001'),
(6706, 679, 9, 705, '1', '12244', 1.00, 1.00, 1, 1, 1, '2025-07-23 18:06:53', 0.35, 3, 66.00, 1.00, 'T001'),
(6707, 679, 9, 705, '1', '12035', 1.00, 25.00, 1, 1, 1, '2025-07-23 18:06:53', 6.53, 3, 27.00, 1.00, 'T001'),
(6708, 679, 9, 706, '1', '12180', 2.00, 5.00, 1, 1, 1, '2025-07-23 18:07:12', 1.25, 3, 23.00, 1.00, 'T001'),
(6709, 681, 10, 26483, '2', '12402', 30.00, 3.83, 1, 1, 2, '2025-07-23 21:12:21', 0.00, 1, 0.00, 1.00, '26483'),
(6710, 679, 9, 707, '1', '12402', 10.00, 6.00, 1, 1, 1, '2025-07-23 21:13:27', 3.83, 3, 30.00, 1.00, 'T001'),
(6711, 679, 9, 708, '1', '12372', 1.00, 3.00, 1, 1, 1, '2025-07-24 12:28:06', 1.50, 3, 3.00, 1.00, 'T001'),
(6712, 679, 9, 708, '1', '12309', 1.00, 20.00, 1, 1, 1, '2025-07-24 12:28:06', 15.80, 3, 3.00, 1.00, 'T001'),
(6713, 679, 9, 708, '1', '12402', 10.00, 6.00, 1, 1, 1, '2025-07-24 12:28:06', 3.83, 3, 20.00, 1.00, 'T001'),
(6714, 679, 9, 709, '1', '12122', 2.00, 5.00, 1, 1, 1, '2025-07-24 17:00:40', 2.66, 3, 16.00, 1.00, 'T001'),
(6715, 679, 9, 710, '1', '12313', 3.00, 2.00, 1, 1, 1, '2025-07-24 17:01:38', 1.04, 3, 11.00, 1.00, 'T001'),
(6716, 679, 9, 711, '1', '12228', 1.00, 15.00, 1, 1, 1, '2025-07-24 17:42:36', 5.50, 3, 4.00, 1.00, 'T001'),
(6717, 679, 9, 712, '1', '11866', 2.00, 2.50, 1, 1, 1, '2025-07-24 17:42:48', 1.65, 3, 4.00, 1.00, 'T001'),
(6718, 679, 9, 713, '1', '12031', 3.00, 1.50, 1, 1, 1, '2025-07-24 19:58:12', 0.80, 3, 35.00, 1.00, 'T001'),
(6719, 679, 9, 713, '1', '12131', 1.00, 1.75, 1, 1, 1, '2025-07-24 19:58:12', 1.25, 3, 53.00, 1.00, 'T001'),
(6720, 679, 9, 714, '1', '11971', 1.00, 15.00, 1, 1, 1, '2025-07-24 20:10:11', 7.67, 3, 5.00, 1.00, 'T001'),
(6721, 679, 9, 715, '1', '12258', 4.00, 2.00, 1, 1, 1, '2025-07-24 20:52:38', 1.00, 3, 25.00, 1.00, 'T001'),
(6722, 679, 9, 715, '1', '12117', 2.00, 2.50, 1, 1, 1, '2025-07-24 20:52:38', 0.83, 3, 39.00, 1.00, 'T001'),
(6723, 679, 9, 715, '1', '12132', 1.00, 4.50, 1, 1, 1, '2025-07-24 20:52:38', 1.00, 3, 73.00, 1.00, 'T001'),
(6724, 679, 9, 716, '1', '12121', 4.00, 2.00, 1, 1, 1, '2025-07-24 21:06:01', 1.02, 3, 84.00, 1.00, 'T001'),
(6725, 679, 9, 717, '1', '12217', 10.00, 1.00, 1, 1, 1, '2025-07-24 21:48:25', 0.60, 3, 90.00, 1.00, 'T001'),
(6726, 679, 9, 717, '1', '12090', 10.00, 1.00, 1, 1, 1, '2025-07-24 21:48:25', 0.36, 3, 96.00, 1.00, 'T001'),
(6727, 679, 9, 717, '1', '11973', 1.00, 20.00, 1, 1, 1, '2025-07-24 21:48:25', 7.78, 3, 2.00, 1.00, 'T001'),
(6728, 679, 9, 718, '1', '12113', 10.00, 1.00, 1, 1, 1, '2025-07-24 21:52:38', 0.30, 3, 14.00, 1.00, 'T001'),
(6729, 679, 10, 719, '1', 'Toma de Presión', 1.00, 5.00, 1, 1, 1, '2025-09-06 01:49:36', 0.00, 3, 0.00, 1.00, 'T001'),
(6730, 679, 10, 719, '1', '11993', 2.00, 7.00, 1, 1, 1, '2025-09-06 01:49:36', 3.03, 3, 15.00, 1.00, 'T001'),
(6731, 679, 9, 720, '1', '12387', 1.00, 20.00, 1, 1, 1, '2025-11-15 18:40:41', 13.75, 3, 1.00, 1.00, 'T001'),
(6732, 679, 10, 721, '1', '11832', 1.00, 16.00, 1, 1, 1, '2025-11-15 18:52:07', 9.00, 3, 3.00, 1.00, 'T001'),
(6733, 679, 10, 722, '1', '11835', 1.00, 33.00, 1, 1, 1, '2026-01-07 19:07:40', 11.90, 3, 3.00, 1.00, 'T001'),
(6734, 679, 10, 723, '1', '11840', 1.00, 66.00, 1, 1, 1, '2026-02-21 08:08:32', 46.50, 3, 1.00, 1.00, 'T001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `id_documento` int(2) NOT NULL,
  `tipo` varchar(12) NOT NULL,
  `numero` double NOT NULL,
  `tienda1` varchar(10) NOT NULL,
  `tienda2` varchar(10) NOT NULL,
  `tienda3` varchar(10) NOT NULL,
  `tienda4` varchar(10) NOT NULL,
  `tienda5` varchar(10) NOT NULL,
  `tienda6` varchar(10) NOT NULL,
  `folio1` varchar(5) NOT NULL,
  `folio2` varchar(5) NOT NULL,
  `folio3` varchar(5) NOT NULL,
  `folio4` varchar(5) NOT NULL,
  `folio5` varchar(5) NOT NULL,
  `folio6` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`id_documento`, `tipo`, `numero`, `tienda1`, `tienda2`, `tienda3`, `tienda4`, `tienda5`, `tienda6`, `folio1`, `folio2`, `folio3`, `folio4`, `folio5`, `folio6`) VALUES
(1, 'factura', 0, '4', '0', '2', '0', '0', '0', 'F001', 'F002', 'F003', 'F004', 'F005', 'F006'),
(2, 'boleta', 0, '6', '0', '2', '0', '0', '0', 'B001', 'B002', 'B003', 'B004', 'B005', 'B006'),
(3, 'guia', 0, '723', '0', '31', '0', '2', '0', 'T001', 'T002', 'T003', 'T004', 'T005', 'T006'),
(4, 'remision', 0, '2', '0', '0', '0', '0', '0', 'T001', 'T002', 'T003', 'T004', 'T005', 'T006'),
(5, 'nota_debito', 0, '0', '0', '0', '0', '0', '0', 'F001', 'F002', 'F003', 'F004', 'F005', 'F006'),
(6, 'nota_credito', 0, '0', '0', '0', '0', '0', '0', 'F001', 'F002', 'F003', 'F004', 'F005', 'F006'),
(7, 'Resumen', 0, '0', '0', '0', '0', '0', '0', 'F001', 'F002', 'F003', 'F004', 'F005', 'F006'),
(8, 'cotizacion', 0, '5', '0', '0', '0', '0', '0', 'C001', 'C002', 'C003', 'C004', 'C005', 'C006'),
(9, 'nota_debito1', 0, '0', '0', '0', '0', '0', '0', 'B001', 'B002', 'B003', 'B004', 'B005', 'B006'),
(10, 'nota_credito', 0, '0', '0', '0', '0', '0', '0', 'B001', 'B002', 'B003', 'B004', 'B005', 'B006'),
(11, 'requerimient', 0, '0', '0', '0', '0', '0', '0', 'R001', 'R002', 'R003', 'R004', 'R005', 'R006');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documentos_electronicos`
--

CREATE TABLE `documentos_electronicos` (
  `id_doc` int(10) NOT NULL,
  `ruc` int(11) NOT NULL,
  `obs` text DEFAULT NULL,
  `url_xml` text NOT NULL,
  `hash_cpe` text NOT NULL,
  `hash_cdr` text NOT NULL,
  `msj_sunat` text NOT NULL,
  `ruta_cdr` text NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `doc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id_factura` int(11) NOT NULL,
  `numero_factura` varchar(30) NOT NULL,
  `fecha_factura` datetime NOT NULL,
  `cod_hash` varchar(40) NOT NULL,
  `doc_mod` varchar(20) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `baja` varchar(30) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `condiciones` int(1) NOT NULL,
  `total_venta` decimal(10,2) NOT NULL,
  `deuda_total` decimal(10,2) NOT NULL,
  `estado_factura` text NOT NULL,
  `tienda` int(2) NOT NULL,
  `ven_com` int(2) NOT NULL,
  `activo` int(2) NOT NULL,
  `servicio` int(2) NOT NULL,
  `moneda` double NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `obs` varchar(200) NOT NULL,
  `cuenta1` decimal(10,2) NOT NULL,
  `fec_eli` date NOT NULL,
  `dias` int(3) NOT NULL,
  `folio` varchar(100) DEFAULT NULL,
  `des` int(2) NOT NULL,
  `aceptado` varchar(100) NOT NULL,
  `resumen` int(2) NOT NULL,
  `motivo` varchar(10) NOT NULL,
  `tipo` int(2) NOT NULL,
  `pago_efectivo` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id_factura`, `numero_factura`, `fecha_factura`, `cod_hash`, `doc_mod`, `id_cliente`, `baja`, `id_vendedor`, `condiciones`, `total_venta`, `deuda_total`, `estado_factura`, `tienda`, `ven_com`, `activo`, `servicio`, `moneda`, `nombre`, `obs`, `cuenta1`, `fec_eli`, `dias`, `folio`, `des`, `aceptado`, `resumen`, `motivo`, `tipo`, `pago_efectivo`) VALUES
(3269, '331', '2021-10-24 02:54:04', '0', 'undefined', 1, '0', 1, 1, 28.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, NULL),
(3270, '332', '2021-10-24 02:54:12', '0', 'undefined', 1, '0', 1, 1, 1.80, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, NULL),
(3271, '26', '2021-10-24 02:55:26', '0', 'undefined', 1, '0', 8, 1, 2.00, 0.00, '3', 3, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T003', 1, '', 0, '', 0, NULL),
(3272, '27', '2021-10-24 02:55:33', '0', 'undefined', 1, '0', 8, 1, 2.00, 0.00, '3', 3, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T003', 1, '', 0, '', 0, NULL),
(3273, '28', '2021-10-24 02:57:37', '0', 'undefined', 1, '0', 8, 1, 2.00, 0.00, '3', 3, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T003', 1, '', 0, '', 0, NULL),
(3274, '29', '2021-10-24 03:03:22', '0', 'undefined', 1, '0', 8, 1, 2.00, 0.00, '3', 3, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T003', 1, '', 0, '', 0, NULL),
(3275, '2', '2021-10-24 03:03:43', 'vJ1xibFczPdOLcEVWZV6YLLwGuI=', 'undefined', 1, '0', 8, 1, 2.00, 0.00, '2', 3, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'B003', 1, '', 0, '', 0, NULL),
(3276, '2', '2021-10-24 03:03:54', 'TnZWN36hALoC9+OczXScjpT3LKs=', 'undefined', 662, '0', 8, 1, 2.00, 0.00, '1', 3, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'F003', 1, '', 0, '', 0, NULL),
(3277, '1', '2021-10-24 03:04:41', 'K4Xk34Idm/NrSV2gTb2sHHID8UY=', 'undefined', 1, '0', 1, 1, 14.80, 0.00, '2', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'B001', 1, '', 0, '', 0, NULL),
(3278, '333', '2021-10-24 03:05:05', '0', 'undefined', 1, '0', 1, 1, 2.50, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, NULL),
(3279, '334', '2021-10-24 03:05:25', '0', 'undefined', 1, '0', 1, 1, 2.50, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, NULL),
(3280, '2', '2021-10-24 03:05:36', 'krqV1jQ4YAwjDhhWl4Dqe6ac2ns=', 'undefined', 1, '0', 1, 1, 2.50, 0.00, '2', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'B001', 1, '', 0, '', 0, NULL),
(3281, '335', '2021-10-24 03:05:49', '0', 'undefined', 1, '0', 1, 1, 2.50, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, NULL),
(3282, '3', '2021-10-24 03:05:59', '+KNi0/EqslTr53pz0/a6i8ReBEw=', 'undefined', 1, '0', 1, 1, 2.50, 0.00, '2', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'B001', 1, '', 0, '', 0, NULL),
(3283, '4', '2021-10-24 03:06:12', 'KY+pb32b9bl1TwLqCeKqZdJgiaA=', 'undefined', 1, '0', 1, 1, 1.50, 0.00, '2', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'B001', 1, '', 0, '', 0, NULL),
(3284, '1', '2021-10-24 03:06:34', '703aUsympu5gQm1Zr0IUMW6r+sQ=', 'undefined', 662, '0', 1, 1, 14.80, 0.00, '1', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'F001', 1, '', 0, '', 0, NULL),
(3285, '2', '2021-10-24 03:06:48', 'TsdYO8OhOBeP7hfh+glYjzLbhKk=', 'undefined', 662, '0', 1, 1, 2.00, 0.00, '1', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'F001', 1, '', 0, '', 0, NULL),
(3286, '30', '2021-10-24 03:18:53', '0', 'undefined', 1, '0', 8, 1, 2.00, 0.00, '3', 3, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T003', 1, '', 0, '', 0, NULL),
(3287, '31', '2021-10-24 03:19:02', '0', 'undefined', 1, '0', 8, 1, 2.00, 0.00, '3', 3, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T003', 1, '', 0, '', 0, NULL),
(3288, '336', '2021-10-24 03:19:32', '0', 'undefined', 1, '0', 1, 1, 2.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, NULL),
(3289, '1', '2021-10-26 11:35:30', '0', '', 0, '0', 1, 1, 2.00, 0.00, '10', 1, 2, 0, 0, 1, '', 'Disminuir Stock', 0.00, '2018-11-11', 0, 'ES', 2, '', 0, '', 0, NULL),
(3290, '337', '2021-10-27 09:08:59', '0', 'undefined', 1, '0', 1, 1, 135.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, NULL),
(3291, '5', '2021-10-27 09:50:08', '7ZY8TaBaNsWszXBOM7PvasoSpeQ=', 'undefined', 661, '0', 1, 1, 25.00, 0.00, '2', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'B001', 1, 'Aceptada', 0, '', 0, NULL),
(3292, '3', '2021-10-27 11:00:47', '4uJAFDJl6AAPG+0YLuC9K1ji6NY=', 'undefined', 662, '0', 1, 1, 318.00, 0.00, '1', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'F001', 1, '', 0, '', 0, NULL),
(3293, '340', '2021-10-30 03:08:43', '0', 'undefined', 1, '0', 1, 1, 28.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, NULL),
(3294, '341', '2021-10-30 03:10:38', '0', 'undefined', 1, '0', 1, 1, 4.50, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, NULL),
(3295, '342', '2021-10-30 03:24:14', '0', 'undefined', 1, '0', 1, 1, 4.50, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3296, '343', '2021-10-30 03:26:03', '0', 'undefined', 1, '0', 1, 1, 4.50, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 10.00),
(3297, '347', '2021-10-30 18:07:39', '0', 'undefined', 1, '0', 1, 1, 4.50, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 10.00),
(3298, '348', '2021-10-30 18:07:51', '0', 'undefined', 1, '0', 1, 1, 6.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 20.00),
(3299, '350', '2021-10-30 18:09:04', '0', 'undefined', 1, '0', 1, 1, 20.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 50.00),
(3300, '351', '2021-11-03 07:04:46', '0', 'undefined', 1, '0', 1, 1, 9.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3301, '2', '2021-11-03 09:09:48', '0', 'undefined', 1, '0', 1, 1, 4.50, 0.00, '8', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'C001', 1, '', 0, 'undefined', 0, 0.00),
(3302, '352', '2021-11-04 11:01:50', '0', 'undefined', 1, '0', 1, 1, 5.01, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3303, '353', '2022-11-17 09:34:48', '0', 'undefined', 671, '0', 1, 1, 0.70, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3304, '354', '2022-12-19 22:50:57', '0', 'undefined', 1, '0', 1, 1, 28.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3305, '355', '2022-12-19 22:51:13', '0', 'undefined', 672, '0', 1, 1, 2.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 20.00),
(3306, '356', '2022-12-25 14:02:27', '0', 'undefined', 672, '0', 1, 1, 49.50, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 100.00),
(3307, '4', '2023-02-16 12:12:16', 'o/mcorDRz4aSPrPOiJPPrOxLBVo=', 'undefined', 662, '0', 1, 1, 3.50, 0.00, '1', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'F001', 1, '', 0, '', 0, 0.00),
(3308, '3', '2023-03-15 09:01:59', '0', 'undefined', 672, '0', 1, 1, 0.50, 0.00, '8', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'C001', 1, '', 0, 'undefined', 0, 0.00),
(3309, '357', '2023-04-22 23:29:51', '0', 'undefined', 1, '0', 1, 1, 84.50, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3310, '4', '2023-07-04 20:49:24', '0', 'undefined', 1, '0', 1, 1, 0.50, 0.00, '8', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'C001', 1, '', 0, 'undefined', 0, 0.00),
(3311, '6', '2023-07-04 20:50:33', 'i9z1LVYtYjt0Bj26ks+xmOVTtRo=', 'undefined', 674, '0', 8, 1, 0.50, 0.00, '2', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'B001', 1, 'Aceptada', 0, '', 0, 0.00),
(3312, '358', '2023-07-22 17:19:47', '0', 'undefined', 1, '0', 9, 1, 6.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 10.00),
(3313, '359', '2023-07-22 17:45:33', '0', 'undefined', 1, '0', 1, 1, 6.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 20.00),
(3314, '360', '2023-07-22 17:47:11', '0', 'undefined', 1, '0', 9, 1, 6.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 20.00),
(3315, '361', '2023-07-23 12:41:47', '0', 'undefined', 1, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 10.00),
(3316, '362', '2023-07-23 12:50:41', '0', 'undefined', 1, '0', 9, 1, 100.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 100.00),
(3317, '363', '2023-07-23 12:53:23', '0', 'undefined', 1, '0', 9, 1, 100.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 100.00),
(3318, '364', '2023-07-23 13:07:02', '0', 'undefined', 1, '0', 9, 1, 50.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 100.00),
(3319, '365', '2023-07-23 13:15:08', '0', 'undefined', 1, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3320, '366', '2023-07-23 13:21:58', '0', 'undefined', 1, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3321, '367', '2023-07-23 13:31:06', '0', 'undefined', 1, '0', 9, 1, 58.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3322, '368', '2023-07-23 13:38:12', '0', 'undefined', 1, '0', 9, 1, 60.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3323, '369', '2023-07-23 15:52:47', '0', 'undefined', 1, '0', 1, 1, 1.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3324, '370', '2023-07-23 15:59:04', '0', 'undefined', 1, '0', 9, 1, 20.25, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3325, '371', '2023-07-23 19:30:00', '0', 'undefined', 1, '0', 1, 1, 45.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 100.00),
(3326, '5', '2023-07-23 19:35:29', '0', 'undefined', 1, '0', 1, 1, 25.00, 0.00, '8', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'C001', 1, '', 0, 'undefined', 0, 0.00),
(3327, '372', '2023-07-23 19:47:56', '0', 'undefined', 1, '0', 1, 1, 37.50, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 50.00),
(3328, '373', '2023-07-23 20:02:19', '0', 'undefined', 1, '0', 9, 1, 12.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3329, '374', '2023-07-23 20:28:22', '0', 'undefined', 1, '0', 9, 1, 3.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 5.00),
(3330, '375', '2023-07-23 20:31:21', '0', 'undefined', 1, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 10.00),
(3331, '376', '2023-07-23 20:35:56', '0', 'undefined', 1, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 10.00),
(3332, '377', '2023-07-23 20:41:32', '0', 'undefined', 1, '0', 9, 1, 16.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 100.00),
(3333, '378', '2023-07-23 20:44:49', '0', 'undefined', 1, '0', 9, 1, 22.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 100.00),
(3334, '379', '2023-07-23 21:06:51', '0', 'undefined', 1, '0', 9, 1, 3.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 5.00),
(3335, '380', '2023-07-24 21:39:52', '0', 'undefined', 675, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 10.00),
(3336, '381', '2023-07-24 21:40:41', '0', 'undefined', 675, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 10.00),
(3337, '382', '2023-07-24 21:41:47', '0', 'undefined', 675, '0', 9, 1, 7.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 20.00),
(3338, '383', '2023-07-24 21:42:32', '0', 'undefined', 675, '0', 9, 1, 25.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 100.00),
(3339, '384', '2023-07-24 21:43:21', '0', 'undefined', 675, '0', 9, 1, 30.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 50.00),
(3340, '385', '2023-07-24 21:44:01', '0', 'undefined', 675, '0', 9, 1, 26.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 30.00),
(3341, '386', '2023-07-25 20:54:42', '0', 'undefined', 675, '0', 9, 1, 50.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 100.00),
(3342, '387', '2023-07-25 20:55:23', '0', 'undefined', 675, '0', 9, 1, 2.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 2.00),
(3343, '388', '2023-07-25 20:56:03', '0', 'undefined', 675, '0', 9, 1, 15.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3344, '389', '2023-07-25 20:57:06', '0', 'undefined', 675, '0', 9, 1, 12.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 12.00),
(3345, '390', '2023-07-26 21:36:02', '0', 'undefined', 675, '0', 9, 1, 86.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 100.00),
(3346, '391', '2023-07-26 21:38:10', '0', 'undefined', 675, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 10.00),
(3347, '392', '2023-07-27 21:41:22', '0', 'undefined', 675, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 20.00),
(3348, '393', '2023-07-29 21:12:22', '0', 'undefined', 675, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 10.00),
(3349, '394', '2023-07-29 21:12:44', '0', 'undefined', 675, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 10.00),
(3350, '395', '2023-07-29 21:13:09', '0', 'undefined', 675, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 20.00),
(3351, '396', '2023-07-29 21:19:13', '0', 'undefined', 675, '0', 9, 1, 4.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 4.00),
(3352, '397', '2023-07-29 21:19:55', '0', 'undefined', 675, '0', 9, 1, 35.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 35.00),
(3353, '398', '2023-07-29 21:20:16', '0', 'undefined', 675, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 10.00),
(3354, '399', '2023-07-29 21:20:40', '0', 'undefined', 675, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 20.00),
(3355, '400', '2023-07-29 21:21:02', '0', 'undefined', 675, '0', 9, 1, 45.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 45.00),
(3356, '401', '2023-07-29 21:22:42', '0', 'undefined', 675, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 20.00),
(3357, '402', '2023-07-29 21:23:10', '0', 'undefined', 675, '0', 9, 1, 30.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 30.00),
(3358, '403', '2023-07-29 21:24:00', '0', 'undefined', 675, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 10.00),
(3359, '404', '2023-07-29 21:24:18', '0', 'undefined', 675, '0', 9, 1, 76.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 76.00),
(3360, '405', '2023-07-29 21:26:28', '0', 'undefined', 675, '0', 9, 1, 8.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 8.00),
(3361, '406', '2023-07-29 21:26:50', '0', 'undefined', 675, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 5.00),
(3362, '407', '2023-07-29 21:27:48', '0', 'undefined', 675, '0', 9, 1, 6.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 6.00),
(3363, '408', '2023-07-29 21:35:18', '0', 'undefined', 675, '0', 9, 1, 25.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 25.00),
(3364, '409', '2025-06-09 14:55:01', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 20.00),
(3365, '410', '2025-06-09 15:04:37', '0', 'undefined', 679, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3366, '411', '2025-06-09 17:59:47', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 5.00),
(3367, '412', '2025-06-09 19:26:21', '0', 'undefined', 679, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3368, '413', '2025-06-09 19:49:49', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3369, '414', '2025-06-09 20:57:13', '0', 'undefined', 679, '0', 9, 1, 60.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3370, '415', '2025-06-09 21:02:46', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3371, '416', '2025-06-09 21:06:11', '0', 'undefined', 679, '0', 9, 1, 12.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3372, '417', '2025-06-09 21:09:04', '0', 'undefined', 679, '0', 9, 1, 18.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3373, '418', '2025-06-09 21:12:19', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3374, '419', '2025-06-09 21:15:56', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3375, '420', '2025-06-09 21:18:13', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3376, '421', '2025-06-09 21:20:18', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3377, '422', '2025-06-09 21:26:38', '0', 'undefined', 679, '0', 9, 1, 0.75, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3378, '423', '2025-06-10 15:16:11', '0', 'undefined', 679, '0', 9, 1, 3.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3379, '424', '2025-06-10 15:50:13', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3380, '425', '2025-06-10 17:10:12', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3381, '426', '2025-06-10 17:14:08', '0', 'undefined', 679, '0', 9, 1, 55.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3382, '427', '2025-06-10 17:53:00', '0', 'undefined', 679, '0', 9, 1, 6.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3383, '428', '2025-06-10 17:53:26', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3384, '429', '2025-06-10 18:07:55', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3385, '430', '2025-06-10 18:17:58', '0', 'undefined', 679, '0', 9, 1, 1.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3386, '431', '2025-06-10 18:31:47', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3387, '432', '2025-06-10 18:35:15', '0', 'undefined', 679, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3388, '433', '2025-06-10 19:00:55', '0', 'undefined', 679, '0', 9, 1, 12.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3389, '434', '2025-06-10 19:29:37', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3390, '435', '2025-06-10 19:43:41', '0', 'undefined', 679, '0', 9, 1, 25.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3391, '436', '2025-06-10 19:47:27', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3392, '437', '2025-06-10 19:47:41', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3393, '438', '2025-06-10 19:49:10', '0', 'undefined', 679, '0', 9, 1, 4.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3394, '439', '2025-06-10 19:50:10', '0', 'undefined', 679, '0', 9, 1, 3.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3395, '440', '2025-06-10 19:50:19', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3396, '441', '2025-06-10 20:18:04', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3397, '442', '2025-06-10 20:24:04', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3398, '443', '2025-06-10 20:28:39', '0', 'undefined', 679, '0', 9, 1, 3.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3399, '444', '2025-06-10 21:05:56', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3400, '445', '2025-06-11 14:03:49', '0', 'undefined', 679, '0', 9, 1, 70.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3401, '446', '2025-06-11 14:05:55', '0', 'undefined', 679, '0', 9, 1, 4.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3402, '447', '2025-06-11 14:06:55', '0', 'undefined', 679, '0', 9, 1, 50.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3403, '448', '2025-06-11 14:10:53', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3404, '449', '2025-06-11 14:18:01', '0', 'undefined', 679, '0', 9, 1, 90.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3405, '450', '2025-06-11 14:21:52', '0', 'undefined', 679, '0', 9, 1, 30.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3406, '451', '2025-06-11 14:28:26', '0', 'undefined', 679, '0', 9, 1, 2.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3407, '452', '2025-06-11 18:14:15', '0', 'undefined', 679, '0', 9, 1, 4.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3408, '453', '2025-06-11 19:24:23', '0', 'undefined', 679, '0', 9, 1, 68.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3409, '454', '2025-06-11 19:25:26', '0', 'undefined', 679, '0', 9, 1, 2.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3410, '455', '2025-06-11 19:25:59', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3411, '456', '2025-06-11 19:29:40', '0', 'undefined', 679, '0', 9, 1, 122.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3412, '457', '2025-06-11 19:51:32', '0', 'undefined', 679, '0', 9, 1, 49.98, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3413, '458', '2025-06-11 19:53:46', '0', 'undefined', 679, '0', 9, 1, 132.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3414, '459', '2025-06-12 12:20:05', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3415, '460', '2025-06-12 12:21:32', '0', 'undefined', 679, '0', 9, 1, 12.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3416, '461', '2025-06-12 16:35:36', '0', 'undefined', 679, '0', 9, 1, 76.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3417, '462', '2025-06-12 16:50:01', '0', 'undefined', 679, '0', 9, 1, 2.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3418, '463', '2025-06-12 17:10:10', '0', 'undefined', 679, '0', 9, 1, 11.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3419, '464', '2025-06-12 18:02:56', '0', 'undefined', 679, '0', 1, 1, 35.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3420, '465', '2025-06-12 18:05:11', '0', 'undefined', 679, '0', 9, 1, 35.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3421, '466', '2025-06-12 18:17:42', '0', 'undefined', 679, '0', 9, 1, 4.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3422, '467', '2025-06-12 18:19:07', '0', 'undefined', 679, '0', 9, 1, 80.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3423, '468', '2025-06-12 19:12:02', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3424, '469', '2025-06-12 19:12:36', '0', 'undefined', 679, '0', 9, 1, 100.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3425, '470', '2025-06-12 19:13:29', '0', 'undefined', 679, '0', 9, 1, 42.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3426, '471', '2025-06-12 19:14:02', '0', 'undefined', 679, '0', 9, 1, 1.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3427, '472', '2025-06-12 19:14:34', '0', 'undefined', 679, '0', 9, 1, 0.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3428, '473', '2025-06-12 19:17:25', '0', 'undefined', 679, '0', 9, 1, 230.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3429, '474', '2025-06-12 19:21:06', '0', 'undefined', 679, '0', 9, 1, 7.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3430, '475', '2025-06-12 19:23:12', '0', 'undefined', 679, '0', 9, 1, 1.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3431, '476', '2025-06-13 13:56:58', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3432, '477', '2025-06-13 13:57:11', '0', 'undefined', 679, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3433, '478', '2025-06-13 13:57:55', '0', 'undefined', 679, '0', 9, 1, 1.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3434, '479', '2025-06-13 13:58:20', '0', 'undefined', 679, '0', 9, 1, 137.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3435, '480', '2025-06-13 14:06:52', '0', 'undefined', 679, '0', 9, 1, 24.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3436, '481', '2025-06-13 14:08:11', '0', 'undefined', 679, '0', 9, 1, 30.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3437, '482', '2025-06-13 14:35:47', '0', 'undefined', 679, '0', 9, 1, 15.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3438, '483', '2025-06-13 14:48:26', '0', 'undefined', 679, '0', 9, 1, 2.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3439, '484', '2025-06-13 19:03:57', '0', 'undefined', 679, '0', 9, 1, 16.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3440, '485', '2025-06-13 19:14:26', '0', 'undefined', 679, '0', 9, 1, 4.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3441, '486', '2025-06-14 12:26:01', '0', 'undefined', 679, '0', 9, 1, 70.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3442, '487', '2025-06-14 12:26:15', '0', 'undefined', 679, '0', 9, 1, 26.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3443, '488', '2025-06-14 12:26:29', '0', 'undefined', 679, '0', 9, 1, 1.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3444, '489', '2025-06-14 12:27:05', '0', 'undefined', 679, '0', 9, 1, 8.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3445, '490', '2025-06-14 12:27:31', '0', 'undefined', 679, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3446, '491', '2025-06-14 12:28:27', '0', 'undefined', 679, '0', 9, 1, 22.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3447, '492', '2025-06-14 12:34:30', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3448, '493', '2025-06-14 12:34:38', '0', 'undefined', 679, '0', 9, 1, 7.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3449, '494', '2025-06-14 13:47:36', '0', 'undefined', 679, '0', 10, 1, 43.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3450, '495', '2025-06-14 13:51:14', '0', 'undefined', 679, '0', 9, 1, 43.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3451, '496', '2025-06-16 17:05:07', '0', 'undefined', 679, '0', 9, 1, 12.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3452, '497', '2025-06-16 17:06:19', '0', 'undefined', 679, '0', 9, 1, 23.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3453, '498', '2025-06-16 17:06:30', '0', 'undefined', 679, '0', 9, 1, 30.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3454, '499', '2025-06-16 17:06:41', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3455, '500', '2025-06-16 17:06:54', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3456, '501', '2025-06-16 17:23:53', '0', 'undefined', 679, '0', 9, 1, 25.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3457, '502', '2025-06-16 17:30:47', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3458, '503', '2025-06-16 17:40:46', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3459, '504', '2025-06-16 17:59:08', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3460, '505', '2025-06-16 18:08:50', '0', 'undefined', 679, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3461, '506', '2025-06-16 18:34:57', '0', 'undefined', 679, '0', 9, 1, 8.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3462, '507', '2025-06-16 19:33:42', '0', 'undefined', 679, '0', 10, 1, 16.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3463, '827936210', '2025-06-16 19:34:44', '0', '', 678, '0', 10, 1, 837.45, 0.00, '1', 1, 2, 1, 0, 1, '', '', 0.00, '2018-11-11', 0, 'F25EDF4F', 2, '', 0, '', 0, NULL),
(3464, '508', '2025-06-16 19:43:13', '0', 'undefined', 679, '0', 10, 1, 6.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3465, '509', '2025-06-16 19:49:18', '0', 'undefined', 679, '0', 10, 1, 10.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3466, '510', '2025-06-16 19:51:23', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3467, '511', '2025-06-16 19:51:41', '0', 'undefined', 679, '0', 9, 1, 6.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3468, '512', '2025-06-16 19:51:56', '0', 'undefined', 679, '0', 9, 1, 16.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3469, '513', '2025-06-16 20:01:22', '0', 'undefined', 679, '0', 9, 1, 2.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3470, '514', '2025-06-16 20:01:29', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3471, '515', '2025-06-16 20:11:09', '0', 'undefined', 679, '0', 9, 1, 30.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3472, '516', '2025-06-17 11:33:35', '0', 'undefined', 679, '0', 9, 1, 30.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3473, '883115703', '2025-06-17 12:25:26', '0', '', 678, '0', 10, 1, 991.54, 0.00, '1', 1, 2, 1, 0, 1, '', '0', 0.00, '2018-11-11', 0, '288388D4', 2, '', 0, '', 0, NULL),
(3474, '517', '2025-06-17 13:06:50', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3475, '518', '2025-06-17 15:06:55', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3476, '519', '2025-06-17 17:29:26', '0', 'undefined', 679, '0', 9, 1, 9.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3477, '520', '2025-06-17 17:46:12', '0', 'undefined', 679, '0', 9, 1, 15.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3478, '521', '2025-06-17 18:16:08', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3479, '522', '2025-06-17 18:35:53', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3480, '523', '2025-06-17 18:36:43', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3481, '524', '2025-06-17 18:47:11', '0', 'undefined', 679, '0', 9, 1, 7.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3482, '525', '2025-06-17 20:05:06', '0', 'undefined', 679, '0', 9, 1, 42.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3483, '526', '2025-06-17 20:07:20', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3484, '527', '2025-06-18 11:43:58', '0', 'undefined', 679, '0', 9, 1, 15.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3485, '1262305968', '2025-06-18 11:52:20', '0', '', 678, '0', 10, 1, 555.60, 0.00, '1', 1, 2, 1, 0, 1, '', '0', 0.00, '2018-11-11', 0, 'E93BE342', 2, '', 0, '', 0, NULL),
(3486, '528', '2025-06-18 13:34:35', '0', 'undefined', 679, '0', 9, 1, 25.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3487, '529', '2025-06-18 15:38:15', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3488, '530', '2025-06-18 15:48:09', '0', 'undefined', 679, '0', 9, 1, 16.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3489, '531', '2025-06-18 13:36:13', '0', 'undefined', 679, '0', 9, 1, 100.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3490, '532', '2025-06-18 15:52:41', '0', 'undefined', 679, '0', 9, 1, 48.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3491, '533', '2025-06-18 16:16:05', '0', 'undefined', 679, '0', 9, 1, 4.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3492, '534', '2025-06-18 16:16:33', '0', 'undefined', 679, '0', 9, 1, 35.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3493, '535', '2025-06-18 16:39:08', '0', 'undefined', 679, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3494, '536', '2025-06-18 17:20:25', '0', 'undefined', 679, '0', 9, 1, 25.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3495, '537', '2025-06-18 18:05:03', '0', 'undefined', 679, '0', 9, 1, 152.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3496, '538', '2025-06-18 18:52:03', '0', 'undefined', 679, '0', 9, 1, 40.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3497, '539', '2025-06-18 20:32:17', '0', 'undefined', 679, '0', 9, 1, 76.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3498, '540', '2025-06-18 20:41:22', '0', 'undefined', 679, '0', 9, 1, 0.75, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3499, '541', '2025-06-19 10:39:30', '0', 'undefined', 679, '0', 9, 1, 13.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3500, '542', '2025-06-19 11:57:07', '0', 'undefined', 679, '0', 9, 1, 2.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3501, '543', '2025-06-19 10:40:12', '0', 'undefined', 679, '0', 9, 1, 25.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3502, '544', '2025-06-19 12:15:58', '0', 'undefined', 679, '0', 9, 1, 3.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3503, '1347306067', '2025-06-19 12:32:26', '0', '', 680, '0', 10, 4, 958.89, 958.89, '1', 1, 2, 1, 0, 1, '', '0', 0.00, '2018-11-11', 30, '8526E318', 2, '', 0, '', 0, NULL),
(3504, '545', '2025-06-19 13:54:40', '0', 'undefined', 679, '0', 9, 1, 192.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3505, '546', '2025-06-19 14:04:49', '0', 'undefined', 679, '0', 9, 1, 0.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3506, '547', '2025-06-19 14:06:54', '0', 'undefined', 679, '0', 9, 1, 6.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3507, '548', '2025-06-19 14:10:06', '0', 'undefined', 679, '0', 9, 1, 15.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3508, '549', '2025-06-19 16:15:28', '0', 'undefined', 679, '0', 9, 1, 105.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3509, '550', '2025-06-19 16:15:52', '0', 'undefined', 679, '0', 9, 1, 63.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3510, '551', '2025-06-19 18:16:59', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3511, '552', '2025-06-20 09:35:50', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3512, '553', '2025-06-20 11:16:07', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3513, '554', '2025-06-20 11:19:34', '0', 'undefined', 679, '0', 9, 1, 60.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3514, '555', '2025-06-20 11:34:43', '0', 'undefined', 679, '0', 9, 1, 166.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3515, '556', '2025-06-20 14:13:36', '0', 'undefined', 679, '0', 9, 1, 17.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3516, '557', '2025-06-20 14:26:23', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3517, '558', '2025-06-20 14:57:46', '0', 'undefined', 679, '0', 9, 1, 4.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3518, '559', '2025-06-20 20:21:26', '0', 'undefined', 679, '0', 10, 1, 2.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3519, '560', '2025-06-20 20:22:03', '0', 'undefined', 679, '0', 10, 1, 11.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3520, '561', '2025-06-20 20:23:22', '0', 'undefined', 679, '0', 9, 1, 18.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3521, '562', '2025-06-20 20:25:00', '0', 'undefined', 679, '0', 9, 1, 4.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3522, '563', '2025-06-21 17:35:36', '0', 'undefined', 679, '0', 9, 1, 186.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3523, '1265585538', '2025-06-23 13:19:24', '0', '', 678, '0', 10, 1, 533.95, 0.00, '1', 1, 2, 1, 0, 1, '', '0', 0.00, '2018-11-11', 0, 'E3E50C27', 2, '', 0, '', 0, NULL),
(3524, '202506001806', '2025-06-23 13:36:24', '0', '', 681, '0', 10, 1, 138.40, 0.00, '1', 1, 2, 1, 0, 1, '', '', 0.00, '2018-11-11', 0, '202506001806', 2, '', 0, '', 0, NULL),
(3525, '564', '2025-06-22 13:39:00', '0', 'undefined', 679, '0', 9, 1, 77.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3526, '565', '2025-06-23 13:48:53', '0', 'undefined', 679, '0', 9, 1, 15.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3527, '566', '2025-06-23 14:07:24', '0', 'undefined', 679, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3528, '567', '2025-06-23 20:25:48', '0', 'undefined', 679, '0', 9, 1, 229.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3529, '568', '2025-06-24 17:28:47', '0', 'undefined', 679, '0', 9, 1, 48.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3530, '569', '2025-06-24 17:35:43', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3531, '570', '2025-06-24 18:19:08', '0', 'undefined', 679, '0', 9, 1, 43.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3532, '571', '2025-06-24 18:52:38', '0', 'undefined', 679, '0', 9, 1, 6.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3533, '572', '2025-06-24 20:47:10', '0', 'undefined', 679, '0', 9, 1, 7.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3534, '573', '2025-06-24 20:52:11', '0', 'undefined', 679, '0', 9, 1, 3.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3535, '574', '2025-06-25 18:58:44', '0', 'undefined', 679, '0', 9, 1, 255.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3536, '575', '2025-06-25 19:25:12', '0', 'undefined', 679, '0', 9, 1, 22.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3537, '576', '2025-06-25 19:26:40', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3538, '577', '2025-06-25 19:48:28', '0', 'undefined', 679, '0', 9, 1, 6.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3539, '578', '2025-06-25 19:59:56', '0', 'undefined', 679, '0', 9, 1, 15.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3540, '579', '2025-06-26 13:24:49', '0', 'undefined', 679, '0', 9, 1, 40.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3541, '580', '2025-06-26 13:28:37', '0', 'undefined', 679, '0', 9, 1, 40.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3542, '581', '2025-06-26 17:21:22', '0', 'undefined', 679, '0', 9, 1, 29.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3543, '582', '2025-06-26 19:55:50', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3544, '583', '2025-06-27 01:32:27', '0', 'undefined', 679, '0', 9, 1, 7.50, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3545, '584', '2025-06-27 01:34:13', '0', 'undefined', 679, '0', 9, 1, 7.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3546, '585', '2025-06-27 13:57:37', '0', 'undefined', 679, '0', 9, 1, 189.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3547, '586', '2025-06-27 19:17:04', '0', 'undefined', 679, '0', 9, 1, 89.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3548, '587', '2025-06-27 20:22:25', '0', 'undefined', 679, '0', 9, 1, 25.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3549, '588', '2025-06-28 18:20:51', '0', 'undefined', 679, '0', 9, 1, 86.50, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3550, '589', '2025-06-28 18:23:45', '0', 'undefined', 679, '0', 9, 1, 118.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3551, '590', '2025-06-29 12:55:44', '0', 'undefined', 679, '0', 9, 1, 75.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3552, '591', '2025-06-28 14:51:24', '0', 'undefined', 679, '0', 9, 1, 306.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3553, '592', '2025-06-29 18:09:05', '0', 'undefined', 679, '0', 9, 1, 138.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3554, '593', '2025-06-29 18:22:25', '0', 'undefined', 679, '0', 9, 1, 45.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3555, '594', '2025-06-29 20:57:17', '0', 'undefined', 679, '0', 9, 1, 60.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3556, '595', '2025-06-30 12:54:39', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3557, '596', '2025-06-30 14:53:26', '0', 'undefined', 679, '0', 9, 1, 87.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3558, '597', '2025-06-30 15:17:38', '0', 'undefined', 679, '0', 9, 1, 35.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3559, '598', '2025-06-30 15:34:44', '0', 'undefined', 679, '0', 9, 1, 1.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3560, '599', '2025-06-30 15:49:00', '0', 'undefined', 679, '0', 9, 1, 25.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3561, '600', '2025-06-30 18:27:11', '0', 'undefined', 679, '0', 9, 1, 80.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3562, '601', '2025-06-30 18:52:24', '0', 'undefined', 679, '0', 9, 1, 233.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3563, '602', '2025-06-30 19:32:17', '0', 'undefined', 679, '0', 9, 1, 1.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3564, '603', '2025-06-30 19:58:42', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3565, '604', '2025-07-01 13:47:03', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00);
INSERT INTO `facturas` (`id_factura`, `numero_factura`, `fecha_factura`, `cod_hash`, `doc_mod`, `id_cliente`, `baja`, `id_vendedor`, `condiciones`, `total_venta`, `deuda_total`, `estado_factura`, `tienda`, `ven_com`, `activo`, `servicio`, `moneda`, `nombre`, `obs`, `cuenta1`, `fec_eli`, `dias`, `folio`, `des`, `aceptado`, `resumen`, `motivo`, `tipo`, `pago_efectivo`) VALUES
(3566, '605', '2025-07-01 16:39:51', '0', 'undefined', 679, '0', 9, 1, 10.75, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3567, '606', '2025-07-01 16:45:22', '0', 'undefined', 679, '0', 9, 1, 22.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3568, '607', '2025-07-01 16:55:27', '0', 'undefined', 679, '0', 9, 1, 3.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3569, '608', '2025-07-01 19:16:39', '0', 'undefined', 679, '0', 9, 1, 53.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3570, '609', '2025-07-01 19:18:09', '0', 'undefined', 679, '0', 9, 1, 15.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3571, '610', '2025-07-01 19:00:40', '0', 'undefined', 679, '0', 9, 1, 60.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3572, '611', '2025-07-01 20:20:17', '0', 'undefined', 679, '0', 9, 1, 40.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3573, '612', '2025-07-01 20:33:34', '0', 'undefined', 679, '0', 9, 1, 188.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3574, '613', '2025-07-01 21:04:18', '0', 'undefined', 679, '0', 9, 1, 6.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3575, '614', '2025-07-01 21:20:08', '0', 'undefined', 679, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3576, '615', '2025-07-01 22:05:32', '0', 'undefined', 679, '0', 9, 1, 141.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3577, '616', '2025-07-02 18:42:20', '0', 'undefined', 679, '0', 9, 1, 132.50, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3578, '617', '2025-07-02 18:54:38', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3579, '618', '2025-07-02 19:44:39', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3580, '619', '2025-07-02 20:17:01', '0', 'undefined', 679, '0', 9, 1, 150.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3581, '620', '2025-07-02 20:33:53', '0', 'undefined', 679, '0', 9, 1, 135.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3582, '621', '2025-07-02 20:35:25', '0', 'undefined', 679, '0', 9, 1, 26.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3583, '1886339606', '2025-07-03 19:54:28', '0', '', 678, '0', 10, 1, 945.85, 0.00, '1', 1, 2, 1, 0, 1, '', '', 0.00, '2018-11-11', 0, '97B15C80', 2, '', 0, '', 0, NULL),
(3584, '622', '2025-07-03 20:04:24', '0', 'undefined', 679, '0', 10, 1, 143.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3585, '1116818842', '2025-07-03 20:19:05', '0', '', 678, '0', 10, 1, 427.13, 0.00, '1', 1, 2, 1, 0, 1, '', '', 0.00, '2018-11-11', 0, 'AD3C6CD1', 2, '', 0, '', 0, NULL),
(3586, '623', '2025-07-03 20:24:43', '0', 'undefined', 679, '0', 10, 1, 90.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3587, '624', '2025-07-03 20:25:50', '0', 'undefined', 679, '0', 9, 1, 585.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3588, '625', '2025-07-04 16:36:26', '0', 'undefined', 679, '0', 9, 1, 40.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3589, '626', '2025-07-04 16:53:33', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3590, '627', '2025-07-04 16:54:01', '0', 'undefined', 679, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3591, '628', '2025-07-04 17:12:46', '0', 'undefined', 679, '0', 9, 1, 3.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3592, '629', '2025-07-04 18:03:36', '0', 'undefined', 679, '0', 9, 1, 76.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3593, '630', '2025-07-04 18:57:54', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3594, '631', '2025-07-04 19:04:43', '0', 'undefined', 679, '0', 9, 1, 7.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3595, '632', '2025-07-04 19:56:34', '0', 'undefined', 679, '0', 9, 1, 147.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3596, '633', '2025-07-04 20:35:03', '0', 'undefined', 679, '0', 9, 1, 15.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3597, '634', '2025-07-04 20:37:26', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3598, '635', '2025-07-04 20:45:40', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3599, '636', '2025-07-04 20:54:27', '0', 'undefined', 679, '0', 9, 1, 60.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3600, '637', '2025-07-05 11:39:17', '0', 'undefined', 679, '0', 9, 1, 50.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3601, '638', '2025-07-06 13:05:12', '0', 'undefined', 679, '0', 9, 1, 113.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3602, '639', '2025-07-06 13:08:36', '0', 'undefined', 679, '0', 9, 1, 22.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3603, '640', '2025-07-06 15:20:34', '0', 'undefined', 679, '0', 9, 1, 175.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3604, '641', '2025-07-06 18:56:15', '0', 'undefined', 679, '0', 9, 1, 31.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3605, '642', '2025-07-07 12:30:59', '0', 'undefined', 679, '0', 9, 1, 60.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3606, '643', '2025-07-07 12:31:37', '0', 'undefined', 679, '0', 9, 1, 125.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3607, '644', '2025-07-07 13:52:45', '0', 'undefined', 679, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3608, '645', '2025-07-07 14:27:53', '0', 'undefined', 679, '0', 9, 1, 39.50, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3609, '646', '2025-07-07 19:59:08', '0', 'undefined', 679, '0', 9, 1, 260.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3610, '647', '2025-07-08 14:02:59', '0', 'undefined', 679, '0', 9, 1, 30.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3611, '648', '2025-07-08 14:05:49', '0', 'undefined', 679, '0', 9, 1, 19.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3612, '649', '2025-07-08 17:52:56', '0', 'undefined', 679, '0', 9, 1, 69.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3613, '650', '2025-07-08 18:38:02', '0', 'undefined', 679, '0', 9, 1, 35.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3614, '651', '2025-07-08 20:06:23', '0', 'undefined', 679, '0', 9, 1, 28.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3615, '652', '2025-07-08 20:07:59', '0', 'undefined', 679, '0', 9, 1, 0.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3616, '653', '2025-07-09 13:31:38', '0', 'undefined', 679, '0', 9, 1, 111.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3617, '654', '2025-07-09 13:35:40', '0', 'undefined', 679, '0', 9, 1, 64.75, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3618, '655', '2025-07-09 13:37:32', '0', 'undefined', 679, '0', 9, 1, 150.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3619, '656', '2025-07-09 13:39:01', '0', 'undefined', 679, '0', 9, 1, 8.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3620, '657', '2025-07-09 13:41:55', '0', 'undefined', 679, '0', 9, 1, 100.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3621, '658', '2025-07-09 14:43:55', '0', 'undefined', 679, '0', 9, 1, 104.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3622, '659', '2025-07-09 18:28:19', '0', 'undefined', 679, '0', 9, 1, 22.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3623, '660', '2025-07-09 19:23:39', '0', 'undefined', 679, '0', 9, 1, 94.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3624, '661', '2025-07-09 20:16:11', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3625, '662', '2025-07-09 20:18:22', '0', 'undefined', 679, '0', 9, 1, 15.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3626, '663', '2025-07-10 12:52:36', '0', 'undefined', 679, '0', 9, 1, 55.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3627, '664', '2025-07-10 12:56:21', '0', 'undefined', 679, '0', 9, 1, 118.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3628, '665', '2025-07-10 15:52:40', '0', 'undefined', 679, '0', 9, 1, 73.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3629, '666', '2025-07-10 21:05:32', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3630, '667', '2025-07-10 21:05:42', '0', 'undefined', 679, '0', 9, 1, 35.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3631, '668', '2025-07-11 12:54:58', '0', 'undefined', 679, '0', 9, 1, 45.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3632, '2308194703', '2025-07-11 15:00:01', '0', '', 680, '0', 10, 1, 1202.55, 0.00, '1', 1, 2, 1, 0, 1, '', '', 0.00, '2018-11-11', 0, '2041A53D', 2, '', 0, '', 0, NULL),
(3633, '669', '2025-07-11 18:22:19', '0', 'undefined', 679, '0', 9, 1, 82.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3634, '670', '2025-07-11 18:24:30', '0', 'undefined', 679, '0', 9, 1, 31.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3635, '671', '2025-07-11 18:26:39', '0', 'undefined', 679, '0', 9, 1, 35.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3636, '672', '2025-07-11 20:03:47', '0', 'undefined', 679, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3637, '673', '2025-07-11 20:10:01', '0', 'undefined', 679, '0', 9, 1, 25.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3638, '674', '2025-07-13 18:31:18', '0', 'undefined', 679, '0', 9, 1, 303.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3639, '675', '2025-07-13 18:40:09', '0', 'undefined', 679, '0', 9, 1, 157.75, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3640, '676', '2025-07-13 19:22:59', '0', 'undefined', 679, '0', 9, 1, 59.75, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3641, '677', '2025-07-14 13:52:38', '0', 'undefined', 679, '0', 9, 1, 151.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3642, '678', '2025-07-14 13:54:58', '0', 'undefined', 679, '0', 9, 1, 36.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3643, '679', '2025-07-14 17:40:50', '0', 'undefined', 679, '0', 9, 1, 11.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3644, '680', '2025-07-14 18:09:04', '0', 'undefined', 679, '0', 9, 1, 2.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3645, '681', '2025-07-15 18:27:50', '0', 'undefined', 679, '0', 9, 1, 75.75, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3646, '682', '2025-07-15 18:29:46', '0', 'undefined', 679, '0', 9, 1, 105.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3647, '683', '2025-07-16 13:28:51', '0', 'undefined', 679, '0', 9, 1, 86.75, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3648, '684', '2025-07-16 16:30:45', '0', 'undefined', 679, '0', 9, 1, 171.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3649, '685', '2025-07-16 20:33:37', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3650, '686', '2025-07-17 17:14:15', '0', 'undefined', 679, '0', 9, 1, 73.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3651, '687', '2025-07-17 18:35:33', '0', 'undefined', 679, '0', 9, 1, 76.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3652, '688', '2025-07-17 18:42:40', '0', 'undefined', 679, '0', 9, 1, 14.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3653, '689', '2025-07-18 11:10:43', '0', 'undefined', 679, '0', 9, 1, 51.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3654, '690', '2025-07-18 11:21:38', '0', 'undefined', 679, '0', 9, 1, 132.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3655, '691', '2025-07-18 20:42:22', '0', 'undefined', 679, '0', 9, 1, 53.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3656, '692', '2025-07-18 20:49:31', '0', 'undefined', 679, '0', 9, 1, 171.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3657, '693', '2025-07-18 20:52:39', '0', 'undefined', 679, '0', 9, 1, 62.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3658, '694', '2025-07-18 20:55:24', '0', 'undefined', 679, '0', 9, 1, 106.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3659, '695', '2025-07-18 21:03:03', '0', 'undefined', 679, '0', 9, 1, 45.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3660, '696', '2025-07-18 21:03:24', '0', 'undefined', 679, '0', 9, 1, 4.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3661, '697', '2025-07-19 11:34:56', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3662, '698', '2025-07-19 19:31:34', '0', 'undefined', 679, '0', 9, 1, 188.50, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3663, '699', '2025-07-19 19:38:45', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 0, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3664, '700', '2025-07-19 21:02:19', '0', 'undefined', 679, '0', 9, 1, 203.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3665, '701', '2025-07-22 09:41:40', '0', 'undefined', 679, '0', 9, 1, 26.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3666, '702', '2025-07-22 09:44:18', '0', 'undefined', 679, '0', 9, 1, 51.25, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3667, '703', '2025-07-22 20:10:47', '0', 'undefined', 679, '0', 9, 1, 37.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3668, '704', '2025-07-22 20:14:22', '0', 'undefined', 679, '0', 9, 1, 31.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3669, '705', '2025-07-23 18:06:53', '0', 'undefined', 679, '0', 9, 1, 26.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3670, '706', '2025-07-23 18:07:12', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3671, '26483', '2025-07-23 21:12:21', '0', '', 681, '0', 10, 1, 114.90, 0.00, '1', 1, 2, 1, 0, 1, '', '', 0.00, '2018-11-11', 0, '26483', 2, '', 0, '', 0, NULL),
(3672, '707', '2025-07-23 21:13:27', '0', 'undefined', 679, '0', 9, 1, 60.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3673, '708', '2025-07-24 12:28:06', '0', 'undefined', 679, '0', 9, 1, 83.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3674, '709', '2025-07-24 17:00:40', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3675, '710', '2025-07-24 17:01:38', '0', 'undefined', 679, '0', 9, 1, 6.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3676, '711', '2025-07-24 17:42:36', '0', 'undefined', 679, '0', 9, 1, 15.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3677, '712', '2025-07-24 17:42:48', '0', 'undefined', 679, '0', 9, 1, 5.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3678, '713', '2025-07-24 19:58:12', '0', 'undefined', 679, '0', 9, 1, 6.25, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3679, '714', '2025-07-24 20:10:11', '0', 'undefined', 679, '0', 9, 1, 15.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3680, '715', '2025-07-24 20:52:38', '0', 'undefined', 679, '0', 9, 1, 17.50, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3681, '716', '2025-07-24 21:06:01', '0', 'undefined', 679, '0', 9, 1, 8.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3682, '717', '2025-07-24 21:48:25', '0', 'undefined', 679, '0', 9, 1, 40.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3683, '718', '2025-07-24 21:52:38', '0', 'undefined', 679, '0', 9, 1, 10.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3684, '719', '2025-09-06 01:49:36', '0', 'undefined', 679, '0', 10, 1, 19.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3685, '720', '2025-11-15 18:40:41', '0', 'undefined', 679, '0', 9, 1, 20.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3686, '721', '2025-11-15 18:52:07', '0', 'undefined', 679, '0', 10, 1, 16.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3687, '722', '2026-01-07 19:07:40', '0', 'undefined', 679, '0', 10, 1, 33.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 0.00),
(3688, '723', '2026-02-21 08:08:32', '0', 'undefined', 679, '0', 10, 1, 66.00, 0.00, '3', 1, 1, 1, 1, 1, '1', '', 0.00, '2018-11-11', 0, 'T001', 1, '', 0, '', 0, 100.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_carrito`
--

CREATE TABLE `factura_carrito` (
  `id_factura1` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `documento` varchar(11) NOT NULL,
  `observacion` text NOT NULL,
  `codigo` varchar(11) NOT NULL,
  `nro_guia` int(11) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `activo` int(11) NOT NULL,
  `fecha1` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id_foto` int(10) NOT NULL,
  `nom_foto` varchar(30) NOT NULL,
  `archivo` text NOT NULL,
  `largo` varchar(10) NOT NULL,
  `ancho` varchar(10) NOT NULL,
  `ubi_pag` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id_foto`, `nom_foto`, `archivo`, `largo`, `ancho`, `ubi_pag`) VALUES
(38, 'slider1', 'fotoPr8dJmY0.jpg', '620', '356', 'slider1'),
(39, 'slider2', 'fotoWNO7xmCv.jpg', '1300', '866', 'slider2'),
(42, 'vision', 'vision.jpg', '340', '340', 'fotovision'),
(43, 'mision', 'mision.jpg', '800', '600', 'fotomision'),
(44, 'slider3', 'fotox1Pqoy0j.jpg', '870', '424', 'slider3'),
(45, 'sdfs', 'vision.jpg', '', '', 'fotovision'),
(46, 'vision', 'vision.jpg', '340', '340', 'fotovision');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos1`
--

CREATE TABLE `fotos1` (
  `id_foto` int(11) NOT NULL,
  `nom_foto` varchar(30) NOT NULL,
  `archivo` text NOT NULL,
  `largo` varchar(10) NOT NULL,
  `ancho` varchar(10) NOT NULL,
  `ubi_pag` varchar(30) NOT NULL,
  `a1` varchar(30) NOT NULL,
  `a2` varchar(30) NOT NULL,
  `a3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `fotos1`
--

INSERT INTO `fotos1` (`id_foto`, `nom_foto`, `archivo`, `largo`, `ancho`, `ubi_pag`, `a1`, `a2`, `a3`) VALUES
(10, 'mision', 'mision.jpg', '800', '600', 'Mision', '', '', ''),
(12, 'slider1', 's1.jpg', '825', '400', 'Inicio', 'Nueva Coleccion', 'Comprar Hasta un', '37% Descuento'),
(13, 'slider2', 's5.jpg', '1146', '556', 'Inicio', 'Nueva Coleccion', 'Comprar Hasta un', '37% Descuento'),
(14, 'slider3', 'si1.jpg', '187', '442', 'Inicio', '', '', ''),
(15, 'slider4', 'si5.jpg', '256', '355', 'Inicio', '', '', ''),
(16, 'banner1', 'banner1.jpg', '653', '288', 'Inicio', '', '', ''),
(17, 'banner2', 'banner2.jpg', '460', '289', 'Inicio', '', '', ''),
(20, 'banner 3', 'banner3.jpg', '1142', '196', 'Inicio', 'comentario 1', 'comentario 2', 'comentario 3'),
(21, 'vision', 'vision.jpg', '340', '340', 'Vision', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `globales`
--

CREATE TABLE `globales` (
  `id_global` int(3) NOT NULL,
  `nombre` text NOT NULL,
  `med` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `globales`
--

INSERT INTO `globales` (`id_global`, `nombre`, `med`) VALUES
(1, 'COLOR', '#E0E6F8'),
(2, 'COLOR1', '#D8D8D8'),
(3, 'COLOR2', '#58FAAC'),
(4, 'COLOR3', '#F3F781'),
(5, 'iva', '0.5'),
(6, 'nom_iva', 'IVA'),
(7, 'doc', 'Nota de venta'),
(8, 'moneda', 'Q./'),
(9, 'videos', '1'),
(10, 'des1', 'Modelo'),
(11, 'des2', 'Color'),
(12, 'des3', 'Marca'),
(13, 'DPI', '13'),
(14, 'NIT', '9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guia`
--

CREATE TABLE `guia` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_doc` int(10) NOT NULL,
  `serie` varchar(4) DEFAULT NULL,
  `guia` int(8) DEFAULT NULL,
  `dir_par` varchar(100) DEFAULT NULL,
  `dom_lleg` text DEFAULT NULL,
  `cont_lleg` text DEFAULT NULL,
  `tel_lleg` text DEFAULT NULL,
  `fecha_lleg` date DEFAULT NULL,
  `vehiculo` text DEFAULT NULL,
  `inscripcion` text DEFAULT NULL,
  `lic` text DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `CODMOTIVO_TRASLADO` varchar(2) DEFAULT NULL,
  `MOTIVO_TRASLADO` varchar(10) DEFAULT NULL,
  `PESO` decimal(10,3) DEFAULT NULL,
  `NUMERO_PAQUETES` int(5) DEFAULT NULL,
  `UBIGEO_DESTINO` varchar(10) DEFAULT NULL,
  `UBIGEO_PARTIDA` varchar(10) DEFAULT NULL,
  `NRO_DOCUMENTO_TRANSPORTE` varchar(11) DEFAULT NULL,
  `RAZON_SOCIAL_TRANSPORTE` varchar(150) DEFAULT NULL,
  `CODTIPO_TRANSPORTISTA` varchar(2) DEFAULT NULL,
  `hash_cpe` varchar(100) DEFAULT NULL,
  `cod_sunat` varchar(100) DEFAULT NULL,
  `aceptado_guia` varchar(100) DEFAULT NULL,
  `doc_guia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `guia`
--

INSERT INTO `guia` (`id`, `id_doc`, `serie`, `guia`, `dir_par`, `dom_lleg`, `cont_lleg`, `tel_lleg`, `fecha_lleg`, `vehiculo`, `inscripcion`, `lic`, `fecha`, `CODMOTIVO_TRASLADO`, `MOTIVO_TRASLADO`, `PESO`, `NUMERO_PAQUETES`, `UBIGEO_DESTINO`, `UBIGEO_PARTIDA`, `NRO_DOCUMENTO_TRANSPORTE`, `RAZON_SOCIAL_TRANSPORTE`, `CODTIPO_TRANSPORTISTA`, `hash_cpe`, `cod_sunat`, `aceptado_guia`, `doc_guia`) VALUES
(1, 3292, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'soap-env:Client', '0151', '20604850453-09--00000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_inventario` int(10) NOT NULL,
  `id_producto` int(10) NOT NULL,
  `usuario` int(4) NOT NULL,
  `fecha` datetime NOT NULL,
  `inventario` decimal(12,2) NOT NULL,
  `inv_ini` decimal(12,2) NOT NULL,
  `tienda` int(2) NOT NULL,
  `motivo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_inventario`, `id_producto`, `usuario`, `fecha`, `inventario`, `inv_ini`, `tienda`, `motivo`) VALUES
(1, 11835, 9, '2025-06-09 17:15:14', 4.00, 3.00, 1, ''),
(2, 11944, 9, '2025-06-10 17:20:04', 2.00, 1.00, 1, ''),
(3, 11967, 10, '2025-06-17 10:56:21', 1.00, 0.00, 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laborales`
--

CREATE TABLE `laborales` (
  `id_laboral` int(10) NOT NULL,
  `cod_var` varchar(10) NOT NULL,
  `variables` text NOT NULL,
  `des_var` text NOT NULL,
  `col_var` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `laborales`
--

INSERT INTO `laborales` (`id_laboral`, `cod_var`, `variables`, `des_var`, `col_var`) VALUES
(0, 'A', 'ASISTENCIA', 'ASISTENCIA', '#2E9AFE'),
(1, 'DF', 'DESCANSO FISICO', 'DESCANSO FISICO', '#8080ff'),
(3, 'V', 'VACACIONES', 'VACACIONES', '#ffff00'),
(4, 'LM', 'LICENCIA MATERNIDAD', 'LICENCIA MATERNIDAD', '#0080c0'),
(5, 'DM', 'DESCANSO MEDICO', 'DESCANSO MEDICO', '#ff00ff');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorio`
--

CREATE TABLE `laboratorio` (
  `id_laboratorio` int(11) NOT NULL,
  `nom_laboratorio` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `laboratorio`
--

INSERT INTO `laboratorio` (`id_laboratorio`, `nom_laboratorio`) VALUES
(4, 'DISFAVIL'),
(5, 'LABORATORIOS PHARMAVITAL CIA'),
(6, 'SHILOH'),
(7, 'PIERSAN'),
(8, 'PROFONSA'),
(10, 'GRUPO FERRER'),
(11, 'OM PHARMA'),
(12, 'CHINOIN'),
(13, 'THERFAM'),
(14, 'MEDIPRODUCTOS'),
(15, 'SELECTPHARMA'),
(16, 'LASANA'),
(17, 'PHARMALAT'),
(18, 'DCM CONAMED'),
(19, 'CAPLIN'),
(20, 'BALAXI'),
(21, 'QUALIPHARM'),
(22, 'EUROLAB'),
(23, 'BAYER'),
(24, 'MK'),
(25, 'SINSIN'),
(26, 'SANTE'),
(27, 'RISHPAR'),
(28, 'LABORATORIO LOPEZ'),
(29, 'BOEHRINGER'),
(30, 'SANTA LUCIA'),
(31, 'BONIN'),
(32, 'PROMEGAL'),
(33, 'BRIJAN'),
(34, 'NORDIC'),
(35, 'LEDERLE'),
(36, 'GRUPO AJFASA'),
(37, 'LAMFER'),
(38, 'RUIPHARMA'),
(39, 'LABORATORIOS ARSAL'),
(40, 'R&H'),
(41, 'DONOVAN'),
(42, 'MEDIPRODUCTS'),
(43, 'LAFCO'),
(44, 'MERCK'),
(45, 'UNIPHARM'),
(46, 'MEDPHARMA'),
(47, 'EUROFARMA'),
(48, 'UMEDICA'),
(49, 'SHEKINAH'),
(50, 'ARGUS'),
(51, 'FARKOT'),
(52, 'ASOFARMA'),
(53, 'ROEMMNERS'),
(54, 'GLAXO'),
(55, 'SANOFI'),
(56, 'PHARMACROSS'),
(57, 'HIPERFARMA'),
(58, 'GAMMA'),
(59, 'ETHIPHARMA'),
(60, 'DRAGON'),
(61, 'FARMA MEDICA'),
(62, 'PHENIEL'),
(63, 'VESA'),
(64, 'LANCASCO'),
(65, 'ECOMED'),
(66, 'FLAMINGO'),
(67, 'LEVEN'),
(68, 'AUROBINDO'),
(69, 'PS PHARMA'),
(70, 'EQUILIBRIUM'),
(71, 'MEDIHEALTH'),
(72, 'VIJOSA'),
(73, 'VIZCAINO'),
(74, 'H PHARMA'),
(75, 'MENARINI'),
(76, 'DIPROVIT'),
(77, 'ESR'),
(78, 'DISTRIBUIDORA WINN'),
(79, 'E.C. DE WITT'),
(80, 'GRUPO FARMACEUTICO INTERNACIONAL S.A.'),
(81, 'GSK'),
(82, 'MARCHALL'),
(83, 'PAILL'),
(84, 'ANCALMO'),
(85, 'SAN LUIS'),
(86, 'SENOSIAIN'),
(87, 'SENTABIEN'),
(88, 'INFASA'),
(89, 'ASTA MEDICS'),
(90, 'COFASA'),
(91, 'FARCENSA'),
(92, 'LABORATORIO SAN CRISTOBAL'),
(93, 'NIPRO MEDICAL'),
(94, 'DISPOWAY'),
(95, 'GENOMMA LAB'),
(96, 'CAPLIN POINT'),
(97, 'MEGALABS'),
(98, 'INTECFA'),
(99, 'EXELTIS'),
(100, 'NUNZ'),
(101, 'GROSSMAN'),
(102, 'ROEMMERS'),
(103, 'FRYCIA'),
(104, 'VITAPHARMA'),
(105, 'LAES'),
(106, 'N/A'),
(107, 'LEGSA'),
(108, 'HV'),
(109, 'PROCAPS'),
(110, 'VITALIS'),
(111, 'PHARMA DEL'),
(112, 'LUKAHM'),
(113, 'BMA PHARMA'),
(114, 'LAPRIN'),
(115, 'RINCMED');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pack`
--

CREATE TABLE `pack` (
  `id_pack` int(10) NOT NULL,
  `id_producto` int(10) NOT NULL,
  `id_producto1` int(10) NOT NULL,
  `cantidad` decimal(8,2) NOT NULL,
  `tipo` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `pack`
--

INSERT INTO `pack` (`id_pack`, `id_producto`, `id_producto1`, `cantidad`, `tipo`) VALUES
(1, 11831, 11816, 12.00, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` int(10) NOT NULL,
  `id_pago` int(10) NOT NULL,
  `id_factura` int(10) NOT NULL,
  `pago` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id_producto` int(11) NOT NULL,
  `codigo_producto` char(20) NOT NULL,
  `nombre_producto` text DEFAULT NULL,
  `status_producto` tinyint(4) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `precio_producto` decimal(10,2) DEFAULT NULL,
  `costo_producto` decimal(10,2) DEFAULT NULL,
  `mon_costo` decimal(4,2) DEFAULT NULL,
  `mon_venta` int(2) DEFAULT NULL,
  `cantidad_blister` varchar(20) DEFAULT NULL,
  `pro_contiene` varchar(50) DEFAULT NULL,
  `pro_puntos` varchar(50) DEFAULT NULL,
  `b1` int(11) DEFAULT NULL,
  `b2` int(11) DEFAULT NULL,
  `b3` int(11) DEFAULT NULL,
  `b4` int(11) DEFAULT NULL,
  `b5` int(11) DEFAULT NULL,
  `b6` int(11) DEFAULT NULL,
  `cat_pro` int(2) NOT NULL,
  `pro_ser` int(2) NOT NULL,
  `foto1` varchar(100) DEFAULT NULL,
  `foto2` varchar(100) DEFAULT NULL,
  `foto3` varchar(100) DEFAULT NULL,
  `foto4` varchar(100) DEFAULT NULL,
  `web` int(2) DEFAULT NULL,
  `pre_web` decimal(10,2) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `descripcion1` text DEFAULT NULL,
  `megusta` int(10) DEFAULT NULL,
  `nomegusta` int(10) DEFAULT NULL,
  `precio2` decimal(10,2) DEFAULT NULL,
  `precio3` decimal(10,2) DEFAULT NULL,
  `und_pro` int(3) DEFAULT NULL,
  `barras` varchar(20) DEFAULT NULL,
  `dcto` decimal(5,2) DEFAULT NULL,
  `min` decimal(10,2) DEFAULT NULL,
  `precio_blister` decimal(10,2) DEFAULT NULL,
  `fecha_caducidad` date DEFAULT NULL,
  `costo_total` decimal(10,2) DEFAULT NULL,
  `cod_laboratorio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id_producto`, `codigo_producto`, `nombre_producto`, `status_producto`, `date_added`, `precio_producto`, `costo_producto`, `mon_costo`, `mon_venta`, `cantidad_blister`, `pro_contiene`, `pro_puntos`, `b1`, `b2`, `b3`, `b4`, `b5`, `b6`, `cat_pro`, `pro_ser`, `foto1`, `foto2`, `foto3`, `foto4`, `web`, `pre_web`, `descripcion`, `descripcion1`, `megusta`, `nomegusta`, `precio2`, `precio3`, `und_pro`, `barras`, `dcto`, `min`, `precio_blister`, `fecha_caducidad`, `costo_total`, `cod_laboratorio`) VALUES
(11832, '80QM2W9JHBEPR', 'ACETAMINOFEN GOTAS 100MG/30ML SELECTFARMA', 1, '2023-07-22 16:36:55', 16.00, 9.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 80, 1, 'producto11832.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 1, 16.00, '', '', 0, 0, 0.00, 0.00, 1, '970005244988', 0.00, 6.00, 0.00, '2027-11-01', 9.00, 15),
(11834, '0E35Q2VCQHKBT', 'AGUA OXIGENADA SPRAY 30ML', 1, '2023-07-22 17:45:02', 6.00, 3.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 111, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 6.00, '', '', 0, 0, 0.00, 0.00, 1, '344356436516', 0.00, 2.00, 0.00, '2023-07-22', 3.00, 16),
(11835, '125V3K9348FPF', 'GLICITOS AMBROXOL 15MG/5ML JARABE SELECTFARMA', 1, '2023-07-22 21:54:29', 22.00, 11.90, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 112, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '545283030229', 0.00, 4.00, 0.00, '2027-04-01', 11.90, 15),
(11836, 'KYMVB0PCUDN4A', 'AMOXICILINA 250MG/5ML JARABE 120ML SELECTFARMA', 1, '2023-07-22 21:59:25', 20.00, 10.15, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 113, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '139312831241', 0.00, 6.00, 0.00, '2028-07-01', 10.15, 15),
(11837, '85K63YF489J04', 'ARTROSIL SOBRE 10G', 1, '2023-07-22 22:11:40', 13.90, 9.50, 1.00, 1, '0', '30', '0', 0, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 13.90, '', '', 0, 0, 0.00, 0.00, 1, '962884613844', 0.00, 30.00, 0.00, '2025-05-01', 285.00, 17),
(11838, 'FFP9KPJ77P0AK', 'ACETAMINOFEN 120MG/5ML JARABE 60ML THERFAM', 1, '2023-07-22 22:20:00', 10.00, 5.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 109, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '552044402970', 0.00, 6.00, 0.00, '2027-01-01', 5.00, 13),
(11840, 'A8DZ5G9C3BK0Q', 'ANARA (PICOSULFATO DE SODIO) 7.5MG/ML GOTAS 20ML CHINOIN', 1, '2023-07-22 22:28:37', 66.00, 46.50, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 60.00, '', '', 0, 0, 0.00, 0.00, 1, '009244965860', 0.00, 2.00, 0.00, '2027-02-01', 46.50, 12),
(11841, '3T7WNQM3YUU40', 'AERO OM (SIMETICONA) 100MG/ML GOTAS 15ML OM PHARMA', 1, '2023-07-22 22:31:42', 62.00, 45.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 59.00, '', '', 0, 0, 0.00, 0.00, 1, '128533410684', 0.00, 1.00, 0.00, '2026-07-01', 45.00, 11),
(11842, 'P8ZMFD6AKCM3B', 'ANGINOVAG 10ML SPRAY BUCAL FERRER', 1, '2023-07-22 22:35:13', 96.00, 70.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 114, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 96.00, '', '', 0, 0, 0.00, 0.00, 1, '393182286468', 0.00, 1.00, 0.00, '2026-10-01', 70.00, 10),
(11843, 'G58VYRRJ14XPY', 'ABENTEL (ALBENDAZOL) 200MG/5ML JARABE 10ML PROFONSA', 1, '2023-07-22 22:39:16', 15.00, 6.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 115, 1, '1producto11843.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '178712305041', 0.00, 6.00, 0.00, '2024-12-01', 6.00, 7),
(11844, 'NQBPFMNF7Y361', 'ARCOPULMIN AMPOLLA 2ML INFANTIL PIERSAN', 1, '2023-07-23 12:30:23', 20.00, 9.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 116, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '032057878664', 0.00, 2.00, 0.00, '2025-01-01', 9.00, 7),
(11845, 'NA0VBKUQ65306', 'ARCOPULMIN AMPOLLA 5ML ADULTO PIERSAN', 1, '2023-07-23 12:32:28', 25.00, 11.90, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 116, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '612611953921', 0.00, 6.00, 0.00, '2027-03-01', 11.90, 7),
(11846, '0P8HUP64WYUWE', 'ANTIGRIPAL (EUCALIPTOL + GUAYACOL) AMPOLLA 2ML DCM', 1, '2023-07-23 12:36:54', 30.00, 13.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 116, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '172587944478', 0.00, 6.00, 0.00, '2024-05-01', 13.00, 18),
(11847, '4UFP00ZX8D0R7', 'ALOPURINOL 30MG ANTIGOTOSO SELECTPHARMA', 1, '2023-07-23 12:41:24', 1.00, 0.30, 1.00, 1, '10', '100', '0', 29, 0, 0, 0, 0, 0, 117, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '938859295408', 0.00, 100.00, 10.00, '2027-11-01', 30.00, 15),
(11848, 'H5HAMVG6HG6Z7', 'ACEITE OMEGA3 100MG CAPSULAS DE GELATINA CONAMED', 1, '2023-07-23 12:50:20', 100.00, 60.00, 1.00, 1, '0', '50', '0', 1, 0, 0, 0, 0, 0, 118, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 100.00, '', '', 0, 0, 0.00, 0.00, 2, '955172426694', 0.00, 1.00, 0.00, '2028-02-01', 60.00, 18),
(11850, 'NXHZA5B8NNN4V', 'AZITROMICINA 500MG TABLETAS RECUBIERTAS CAPLIN', 1, '2023-07-23 13:06:04', 25.00, 4.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 113, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 2, '820174944770', 0.00, 10.00, 0.00, '2024-11-01', 12.00, 19),
(11851, 'PPH0BB0BG0X3Q', 'ACIDO FOLICO 5MG TABLETAS RECUBIERTAS SELECTPHARMA', 1, '2023-07-23 13:14:52', 0.50, 0.11, 1.00, 1, '0', '100', '0', 80, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.50, '', '', 0, 0, 0.00, 0.00, 1, '955039440654', 0.00, 100.00, 0.00, '2028-11-01', 11.00, 15),
(11852, 'N41E6G9YJN2T5', 'ACIDO FOLICO 5MG TABLETAS RECUBIERTAS BALAXI', 1, '2023-07-23 13:21:33', 0.50, 0.13, 1.00, 1, '0', '100', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.50, '', '', 0, 0, 0.00, 0.00, 1, '897752812227', 0.00, 100.00, 5.00, '2025-04-22', 13.00, 20),
(11853, 'KGBRBWGVQRKB1', 'AMBIARE (ANTIHISTAMINICO & ANTIFLAMATORIO) TABLETAS QUALIPHARM', 1, '2023-07-23 13:30:46', 58.00, 4.20, 1.00, 1, '0', '10', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 58.00, '', '', 0, 0, 0.00, 0.00, 2, '471811998454', 0.00, 1.00, 0.00, '2025-05-01', 42.00, 21),
(11854, 'TZEV4RWPYFG3C', 'AZIPLUS-EURO (AZITROMICINA 500 MG) CAPSULAS EUROLAB', 1, '2023-07-23 13:36:53', 30.00, 3.33, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 2, '407656666116', 0.00, 3.00, 0.00, '2024-12-01', 10.00, 22),
(11855, 'HCAATX4F62JZC', 'ACICLOVIR 5% ANTIVIRAL CREMA TOPICA 10G SELECTPHARMA', 1, '2023-07-23 13:42:13', 10.00, 5.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '040597458567', 0.00, 3.00, 0.00, '2026-11-01', 5.00, 15),
(11856, 'FC41AC146QTVB', 'ARCOCORT (TRIAMCINOLONA) 40MG/ML AMPOLLA 1ML PIERSAN', 1, '2023-07-23 13:46:32', 60.00, 30.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 59.00, '', '', 0, 0, 0.00, 0.00, 1, '570788366548', 0.00, 3.00, 0.00, '2029-11-01', 30.00, 7),
(11857, 'W4EX96PUMEEVP', 'AMOXI-PLUS (AMOXICILINA + ACIDO CLAVULANICO 875MG+125MG) CAPSULAS EUROLAB', 1, '2023-07-23 13:49:10', 7.00, 6.43, 1.00, 1, '0', '14', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 7.00, '', '', 0, 0, 0.00, 0.00, 1, '776415304288', 0.00, 14.00, 0.00, '2024-12-01', 45.00, 22),
(11858, 'AQADW0FD2KRFM', 'ACEITE DE ROSA MOSQUETA + VITAMINA E LAGRIMAS COSMETICAS CONAMED', 1, '2023-07-23 14:24:51', 60.00, 1.00, 1.00, 1, '0', '30', '0', 0, 0, 0, 0, 0, 0, 119, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 2, '992345437371', 0.00, 1.00, 0.00, '2025-04-01', 30.00, 18),
(11859, 'HFD86TGXKAQFK', 'ACETAMINOFEN 500MG TABLETAS BAYER', 1, '2023-07-23 14:28:23', 1.00, 0.20, 1.00, 1, '0', '100', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '672747784738', 0.00, 100.00, 0.00, '2024-09-01', 20.00, 23),
(11860, '8DQPXY1TKD63U', 'ACETAMINOFEN 500MG TABLETAS MK', 1, '2023-07-23 14:31:29', 1.00, 0.55, 1.00, 1, '0', '100', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '422274442227', 0.00, 20.00, 0.00, '2026-04-01', 55.00, 24),
(11862, 'NBB10AJT6WR5M', 'ARKET PARCHE TRANSDERMICO (KETOPROFENO 30MG) SINSIN', 1, '2023-07-23 14:37:38', 8.00, 4.28, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 102, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 8.00, '', '', 0, 0, 0.00, 0.00, 1, '583265627560', 0.00, 7.00, 0.00, '2025-05-01', 30.00, 25),
(11864, 'D84BXRTPF2NHF', 'ACICLOVIR 400MG TABLETAS RISHPAR', 1, '2023-07-23 14:42:34', 1.00, 0.35, 1.00, 1, '0', '100', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '442098602964', 0.35, 100.00, 0.00, '2025-04-01', 35.00, 27),
(11866, '96MAX2AR9HWYJ', 'ANARA LAXANTE 5MG TABLETAS CHINOIN', 1, '2023-07-23 14:53:37', 2.50, 1.65, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.50, '', '', 0, 0, 0.00, 0.00, 1, '648016892264', 0.00, 10.00, 0.00, '2025-09-01', 325.00, 12),
(11867, 'JFX1XHQN48NMG', 'ACIDO BORICO USO TOPICO 28 GRAMOS DISFAVIL', 1, '2023-07-23 14:58:01', 5.00, 2.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 4.00, '', '', 0, 0, 0.00, 0.00, 1, '045160514634', 0.00, 8.00, 0.00, '2024-03-01', 16.00, 4),
(11868, 'TM8XVCDBT52RR', 'AZUCAR DE LECHE 28GRAMOS SOBRE DISFAVIL', 1, '2023-07-23 14:59:42', 3.50, 2.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.50, '', '', 0, 0, 0.00, 0.00, 1, '725300637404', 0.00, 8.00, 0.00, '2025-01-01', 16.00, 4),
(11869, '3PRYE2E73HZBB', 'EXIFLEM (BROMHEXINA) 4MG/5ML JARABE SELECTPHARMA', 1, '2023-07-23 15:02:54', 12.00, 6.20, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '900103911340', 0.00, 6.00, 0.00, '2028-01-01', 6.20, 15),
(11870, 'G9C29U1KEK9UW', 'BENZOATO DE BENCILO 25% (PARASITICIDA, PEDICULICIDA, ESCABICIDA)  LOCION SELECTPHARMA', 1, '2023-07-23 15:06:38', 22.00, 10.78, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 120, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '341229005304', 0.00, 1.00, 0.00, '2027-01-01', 10.78, 15),
(11871, 'ZKQ8EVU04BGBQ', 'BACAOLINA 480ML JARABE LABORATORIO LOPEZ', 1, '2023-07-23 15:08:38', 44.00, 35.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 44.00, '', '', 0, 0, 0.00, 0.00, 1, '677336798071', 0.00, 1.00, 0.00, '2023-11-01', 35.00, 28),
(11873, 'YAV18WQJRKZM9', 'BETAMETASONA 0.05% + ACIDO SALICITICO 3% UNGUENTO SELECTPHARMA', 1, '2023-07-23 15:16:44', 30.00, 12.48, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 34, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '118988070427', 0.00, 2.00, 0.00, '2026-03-01', 14.35, 15),
(11874, '86R4GVX03CZB6', 'BISMUTO COMPUESTO SOBRE SANTA LUCIA', 1, '2023-07-23 15:23:59', 1.00, 0.18, 1.00, 1, '0', '100', '0', 83, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '620101723935', 0.00, 100.00, 0.00, '2026-11-01', 18.00, 30),
(11875, 'AXHCE0DD6EY7E', 'BRONCUROL 10MG TABLETAS BONIN', 1, '2023-07-23 15:27:03', 2.00, 1.00, 1.00, 1, '0', '', '0', 10, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '382236428743', 0.00, 30.00, 0.00, '2024-09-01', 10.00, 31),
(11876, 'F2C4HUQNMXDYZ', 'CEFTRIAXONA 1G AMPOLLA PROMEGAL', 1, '2023-07-23 15:30:41', 30.00, 11.00, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '048244331189', 0.00, 10.00, 0.00, '2027-06-01', 11.00, 32),
(11877, 'YYV2D45YXVWMQ', 'CEFTRIAXONA 1G AMPOLLA CAPLIN', 1, '2023-07-23 15:33:08', 20.00, 10.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '468554016426', 0.00, 10.00, 0.00, '2025-04-04', 100.00, 19),
(11879, '9HC729H64PF8E', 'CANESTEN V OVULOS VAGINALES X6 BAYER', 1, '2023-07-23 15:38:00', 105.00, 50.00, 1.00, 1, '0', '6', '0', 0, 0, 0, 0, 0, 0, 69, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 105.00, '', '', 0, 0, 0.00, 0.00, 2, '000036151680', 0.00, 2.00, 0.00, '2023-11-01', 50.00, 23),
(11880, 'EGTDMQM69EMXF', 'CLOTRIMAZOLE CREMA VAGINAL 2% 30G  X3 CAPLIN', 1, '2023-07-23 15:40:41', 23.00, 11.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 69, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 23.00, '', '', 0, 0, 0.00, 0.00, 1, '568394266882', 0.00, 2.00, 0.00, '2025-02-01', 11.00, 19),
(11881, 'HVJPN3QPPKPCC', 'CLOTRIMAZOLE OVULOS VAGINALES 100MG ', 1, '2023-07-23 15:42:19', 35.00, 11.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 69, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 35.00, '', '', 0, 0, 0.00, 0.00, 1, '713184607365', 0.00, 2.00, 0.00, '2025-01-01', 11.00, 19),
(11882, '5YJFFBQTW0890', 'CEFIXIMA 400MG CAPSULAS SELECTPHARMA', 1, '2023-07-23 15:44:05', 12.00, 5.00, 1.00, 1, '0', '', '0', 4, 0, 0, 0, 0, 0, 113, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '885723464895', 0.00, 5.00, 0.00, '2026-04-01', 50.00, 15),
(11883, '34PU697CMJH5X', 'CLORFENIRAMINA MALEATO (ANTIHISTAMINICO) 4MG TABLETAS SELECTPHARMA', 1, '2023-07-23 15:48:15', 0.50, 0.19, 1.00, 1, '20', '100', '0', 40, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.50, '', '', 0, 0, 0.00, 0.00, 1, '264139371705', 0.00, 100.00, 10.00, '2029-03-01', 9.25, 15),
(11884, '473HCX7QKRYKB', 'CIRBRAL (CINNARIZINA) 25MG TABLETAS BRIJAN', 1, '2023-07-23 15:51:18', 1.00, 0.58, 1.00, 1, '0', '60', '0', 40, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '111290970451', 0.00, 60.00, 0.00, '2027-03-01', 35.00, 33),
(11885, 'FVC8R220XCXZ6', 'CUERPO AMARILLO 50MG/2ML AMPOLLA 2ML PIERSAN', 1, '2023-07-23 16:02:24', 45.00, 25.50, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 40.25, '', '', 0, 0, 0.00, 0.00, 1, '940600613875', 0.00, 2.00, 0.00, '2026-01-01', 25.50, 7),
(11886, 'PZ4AP67EED7Y5', 'CLOTRIMAZOL VAGINAL 2% CREMA VAGINAL SELECTPHARMA', 1, '2023-07-23 16:04:02', 25.00, 10.20, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 121, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 22.00, '', '', 0, 0, 0.00, 0.00, 1, '239457587613', 0.00, 2.00, 0.00, '2029-03-01', 11.00, 15),
(11887, 'DWMGRGJ2U3E4B', 'CYCLONOR ANTICONCEPTIVO MENSUAL AMPOLLA NORDIC', 1, '2023-07-23 16:06:01', 45.00, 35.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 45.00, '', '', 0, 0, 0.00, 0.00, 1, '773174619152', 0.00, 2.00, 0.00, '2027-02-01', 35.00, 34),
(11888, 'F0PGMG0VD2PKB', 'CENTRUM MUJER ', 1, '2023-07-23 16:07:53', 204.00, 170.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 204.00, '', '', 0, 0, 0.00, 0.00, 1, '018976019962', 0.00, 1.00, 0.00, '2024-04-01', 170.00, 35),
(11889, 'YM1D43JUV62J0', 'CANESTEN TRIPLE ACCION UNA VEZ AL DIA 15G BAYER', 1, '2023-07-23 16:09:13', 80.00, 50.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 66.00, '', '', 0, 0, 0.00, 0.00, 1, '696098346131', 0.00, 1.00, 0.00, '2027-11-01', 50.00, 23),
(11890, 'R9PYWXGC57TJW', 'AJ CLOMICOTIC (BETAMETASONA DIPROPIONATO, CLOTRIMAZOL Y GENTAMICINA)  CREMA 15G AJFASA', 1, '2023-07-23 16:11:33', 25.00, 12.70, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 22.00, '', '', 0, 0, 0.00, 0.00, 1, '267027298788', 0.00, 2.00, 0.00, '2026-04-01', 12.70, 36),
(11891, 'PZ0EUADGNM7JA', 'CLOTRIMAZOL 1% (ANTIMICOTICO) CREMA TOPICA 20G SELECTPHARMA', 1, '2023-07-23 16:12:39', 15.00, 5.38, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '472123595188', 0.00, 2.00, 0.00, '2029-01-01', 5.38, 15),
(11892, '982RU7J45KBB2', 'COMPLEJO 10ML SOLUCION INYECTABLE BONIN', 1, '2023-07-23 16:15:27', 20.00, 7.00, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '775074667334', 0.00, 4.00, 0.00, '2027-09-01', 7.00, 31),
(11893, '0NHEMQH5JKXTD', 'COLAGENO 500MG CAPSULAS DE GELATINA DCM CONAMED', 1, '2023-07-23 16:24:11', 1.50, 0.98, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.50, '', '', 0, 0, 0.00, 0.00, 1, '887055817773', 0.00, 100.00, 0.00, '2024-09-01', 98.00, 18),
(11894, 'Q7G3KM9J1GPDP', 'CLINDAMICINA 300MG CAPSULAS LAMFER', 1, '2023-07-23 16:27:12', 4.00, 1.60, 1.00, 1, '0', '', '0', 20, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 4.00, '', '', 0, 0, 0.00, 0.00, 1, '922989139618', 0.00, 20.00, 0.00, '2028-03-01', 16.00, 37),
(11895, '73CA0H4PTTFPF', 'CIANOCOBALAMINA VITAMINA B12 5000MCG/2ML SOLUCION INYECTABLE RUIPHARMA', 1, '2023-07-23 16:29:48', 15.00, 5.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '685804381116', 0.00, 1.00, 0.00, '2024-09-01', 5.00, 38),
(11896, '4TRZ1E35KFZM2', 'CLOPRIM (METOCLOPRAMIDA) 10MG TABLETAS ARSAL', 1, '2023-07-23 16:36:58', 2.00, 0.80, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.50, '', '', 0, 0, 0.00, 0.00, 1, '747812350168', 0.00, 10.00, 0.00, '2024-09-01', 8.00, 39),
(11897, '8QVQP0AZH35KM', 'CLOPRIM (METOCLOPRAMIDA) 10MG/2ML AMPOLLA X2ML ARSAL', 1, '2023-07-23 16:41:02', 15.00, 5.66, 1.00, 1, '0', '3', '0', 1, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '976774283392', 0.00, 2.00, 0.00, '2024-03-01', 17.00, 39),
(11898, '9H751QQA2Y9AP', 'AGUA ESTERIL 10ML SOLUCION INYECTABLE BONIN', 1, '2023-07-23 16:43:06', 5.00, 1.00, 1.00, 1, '0', '', '0', 93, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '059424544021', 0.00, 50.00, 0.00, '2027-03-01', 93.00, 31),
(11902, 'AXRTBUWED4QZA', 'CLORFENIRAMINA MALEATO (ANTIHISTAMINICO) 2MG/5ML JARABE SELECTPHARMA', 1, '2023-07-23 16:57:56', 12.00, 5.95, 1.00, 1, '0', '', '0', 4, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '703370872374', 0.00, 4.00, 0.00, '2029-03-01', 5.95, 15),
(11903, 'XU61F83QNJQ3Z', 'COMPLEBEN COMPLEJO VITAMINICO B SOLUCION INYECTABLE X8 DONOVAN', 1, '2023-07-23 17:00:34', 115.00, 79.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 105.00, '', '', 0, 0, 0.00, 0.00, 1, '324290680703', 0.00, 3.00, 0.00, '2026-10-01', 79.00, 41),
(11904, 'W0K84G1Z8EGNC', 'CEFIXIMA 100MG/5ML SUSPENSION ORAL FRESA 100ML RISHPAR', 1, '2023-07-23 17:02:43', 40.00, 19.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 84, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 40.00, '', '', 0, 0, 0.00, 0.00, 1, '281196133802', 0.00, 2.00, 0.00, '2025-03-01', 19.00, 27),
(11905, 'ETJPG62FP4H34', 'CALCIFOS (CALCIO Y FOSFORO VITAMINADO) TABLETAS MASTICABLES MEDIPRODUCTS', 1, '2023-07-23 17:07:27', 30.00, 15.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 85, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 2, '146915441987', 0.00, 1.00, 0.00, '2025-02-01', 15.00, 14),
(11906, 'G9M9N43BXYZMH', 'CALAFAR (LOCION DE CALAMINA) 120ML USO TOPICO LAFCO', 1, '2023-07-23 17:09:07', 30.00, 13.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 120, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 24.50, '', '', 0, 0, 0.00, 0.00, 1, '134862730470', 0.00, 1.00, 0.00, '2026-03-01', 13.00, 43),
(11907, '91P1BK67RW7X0', 'DICLOFENACO ACIDO LIBRE 9MG/5ML SUSPENSION 120ML SELECTPHARMA', 1, '2023-07-23 17:10:55', 25.00, 11.65, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '131816561904', 0.00, 4.00, 0.00, '2028-01-01', 11.65, 15),
(11909, 'QD8JA69UDF91X', 'DEXACOL (DEXKETOPROFENO) 50MG/2ML AMPOLLA 2ML BONIN', 1, '2023-07-23 17:15:29', 30.00, 22.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '777480916481', 0.00, 2.00, 0.00, '2024-10-01', 22.00, 31),
(11910, 'KJTDACZ8R3UE4', 'DEXA-NEUROBION DOBLE CAMARA SOLUCION INYECTABLE MERCK', 1, '2023-07-23 17:17:50', 101.85, 77.25, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 101.85, '', '', 0, 0, 0.00, 0.00, 1, '316589657759', 0.00, 2.00, 0.00, '2025-02-01', 77.25, 44),
(11912, '0YTZ0WWURUKGC', 'DEXAVITANERVO (DEXAMETASONA ,TIAMINA, PIRIDOXINA, CIANOCOBALAMINA) AMPOLLAS X2 PIERSAN', 1, '2023-07-23 17:24:18', 27.00, 11.69, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 27.00, '', '', 0, 0, 0.00, 0.00, 1, '957215409121', 0.00, 4.00, 0.00, '2026-08-01', 11.69, 7),
(11913, 'NZX24P3RAFWHZ', 'DICLOFENACO SODICO 100MG CAPSULAS DCM CONAMED', 1, '2023-07-23 18:16:02', 2.00, 0.70, 1.00, 1, '10', '', '0', 230, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.50, '', '', 0, 0, 0.00, 0.00, 1, '077653792074', 0.00, 50.00, 15.00, '2027-07-01', 175.00, 18),
(11914, '6T2039PA7EVTJ', 'DROPA GEL (KETOPROFENO 2.5%) GEL TOPICO 50GRAMOS CAPLIN', 1, '2023-07-23 18:18:17', 64.00, 30.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 124, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 62.00, '', '', 0, 0, 0.00, 0.00, 1, '871657399187', 0.00, 1.00, 0.00, '2025-11-01', 30.00, 19),
(11916, 'WPVHH4Y2XNT0D', 'CLEVIUM (DEXKETOPROFENO) 25MG TABLETAS MEDPHARMA', 1, '2023-07-23 18:26:42', 12.50, 3.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '448516000321', 0.00, 10.00, 0.00, '2028-11-01', 30.00, 46),
(11917, 'QZRGCZ5FV2X9W', 'DICLO AZUL (DICLOFENACO POTASICO) 50MG CAPSULAS CAPLIN', 1, '2023-07-23 18:31:24', 1.00, 0.22, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '972629605472', 0.00, 100.00, 0.00, '2025-09-01', 11.00, 19),
(11918, 'KU6QUM4795JF4', 'DICLO ROJO (DICLOFENACO POTASICO) 50MG CAPSULAS CAPLIN', 1, '2023-07-23 18:32:29', 1.00, 0.22, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '507610963959', 0.00, 50.00, 0.00, '2026-01-01', 11.00, 19),
(11919, 'K61E1AGV1K3DZ', 'DEXKEDOL-N  (DEXKETOPROFENO + NEUROTROPAS) TABLETAS QUALIPHARM', 1, '2023-07-23 18:34:51', 96.10, 5.60, 1.00, 1, '0', '10', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 96.10, '', '', 0, 0, 0.00, 0.00, 2, '709084189672', 0.00, 1.00, 0.00, '2024-11-01', 56.00, 21),
(11920, 'J3M045PR9BMG6', 'DEAREXIN (NIFUROXAZIDA) 400MG CAPSULAS X8 MEDIPRODUCTOS', 1, '2023-07-23 18:36:58', 27.00, 17.35, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 19.00, '', '', 0, 0, 0.00, 0.00, 2, '202617132812', 0.00, 1.00, 0.00, '2028-05-01', 17.35, 14),
(11921, 'D7GXBUYXXM18J', 'DEXASEL (DEXAMETASONA) 0.5MG TABLETAS SELECTPHARMA', 1, '2023-07-23 18:40:28', 1.00, 0.43, 1.00, 1, '20', '100', '0', 96, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '318696983264', 0.00, 100.00, 20.00, '2028-07-27', 43.00, 15),
(11922, 'G0KQJMWKXVGYR', 'DOLOVITANERVO (DICLOFENACO SODICO + NEUROTROPAS) AMPOLLA PIERSAN', 1, '2023-07-23 18:41:57', 30.00, 12.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '993499556149', 0.00, 4.00, 0.00, '2027-01-01', 12.00, 7),
(11923, 'W867BF7VGGKH2', 'DICLOFENACO POTASICO 50MG TABLETAS CAPLIN', 1, '2023-07-23 18:45:48', 0.50, 0.09, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.50, '', '', 0, 0, 0.00, 0.00, 1, '582797874984', 0.00, 200.00, 0.00, '2024-11-01', 9.00, 19),
(11924, 'XWBPZ07X24BR2', 'DICLOXACILINA SODICA 500MG CAPSULA CAPLIN', 1, '2023-07-23 18:48:20', 2.50, 1.02, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.50, '', '', 0, 0, 0.00, 0.00, 1, '995515381837', 0.00, 100.00, 0.00, '2025-04-01', 102.00, 19),
(11925, 'CEA4H1N9XCAQX', 'ATENUA (DEXKETOPROFENO) 25MG COMPRIMIDOS EUROFARMA', 1, '2023-07-23 18:50:04', 13.00, 8.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 70, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 13.00, '', '', 0, 0, 0.00, 0.00, 1, '772786571127', 0.00, 10.00, 0.00, '2024-08-01', 80.00, 47),
(11926, 'AHMPXNT5N0GR2', 'DICLOFENACO GEL 25G TOPICO 1% USO TOPICO BALAXI', 1, '2023-07-23 18:55:07', 16.00, 6.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 124, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 16.00, '', '', 0, 0, 0.00, 0.00, 1, '178138230840', 0.00, 2.00, 0.00, '2024-11-01', 6.00, 20),
(11927, 'U6Q0EPANC65RX', 'DICLOFENACO + NEUROTROPAS CAPSULAS CAPLIN', 1, '2023-07-23 18:57:17', 1.00, 0.70, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '291246804791', 0.00, 200.00, 0.00, '2025-05-01', 70.00, 19),
(11928, 'N07PPMC7TKH3N', 'DICLOFENACO SODICO 75MG/3ML SOLUCION INYECTABLE 3ML UMEDICA', 1, '2023-07-23 19:55:17', 5.00, 1.50, 1.00, 1, '0', '10', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '148587362388', 0.00, 10.00, 0.00, '2025-11-01', 15.00, 48),
(11929, 'HJ780T16QDCPX', 'DICLO CIEN (DICLOFENACO SODICO) 100MG CAPSULAS CAPLIN', 1, '2023-07-23 20:01:16', 1.50, 0.45, 1.00, 1, '0', '100', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.50, '', '', 0, 0, 0.00, 0.00, 1, '768745378275', 0.00, 100.00, 0.00, '2024-10-01', 45.00, 19),
(11930, 'PYMDHCYE02A5X', 'DICLOFENACO SODICO 100MG CAPSULAS SHEKINAH', 1, '2023-07-23 20:08:46', 1.00, 0.45, 1.00, 1, '0', '100', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '407412768152', 0.00, 100.00, 0.00, '2024-01-01', 45.00, 49),
(11931, 'DN4RYTK3QAJ4X', 'DICLO B XR (DICLOFENACO + COMPLEJO B) TABLETAS PROFONSA', 1, '2023-07-23 20:13:14', 10.00, 4.33, 1.00, 1, '0', '30', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '448460482506', 0.00, 30.00, 0.00, '2024-12-01', 130.00, 8),
(11932, '2PEJ08DGCTG60', 'DENGUINA (ACETAMINOFEN 500MG + CAFEINA 25MG) TABLETAS LAB LOPEZ', 1, '2023-07-23 20:20:17', 1.00, 0.50, 1.00, 1, '10', '100', '0', 39, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '535309309617', 0.00, 100.00, 10.00, '2027-09-01', 50.00, 28),
(11933, 'PAAQ2GZE04CQH', 'DOLO-NEUROBION XR TABLETAS MERCK', 1, '2023-07-23 20:23:14', 13.00, 4.16, 1.00, 1, '0', '60', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 13.00, '', '', 0, 0, 0.00, 0.00, 1, '973124022722', 0.00, 60.00, 0.00, '2026-12-01', 250.00, 44),
(11934, '4AETAWQ8WFCWD', 'DOLO-NEUROBION N TABLETAS MERCK', 1, '2023-07-23 20:26:11', 5.00, 1.25, 1.00, 1, '0', '120', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '671723227135', 0.00, 240.00, 0.00, '2025-09-01', 150.00, 44),
(11935, 'FFX6UVX0NWP67', 'DEXASEL (DEXAMETASONA FOSFATO) 8MG/2ML AMPOLLA SELECTPHARMA', 1, '2023-07-23 20:53:48', 10.00, 2.28, 1.00, 1, '0', '25', '0', 0, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '423519551312', 0.00, 25.00, 0.00, '2026-04-01', 57.00, 15),
(11936, '73ZCC4TQTB0VJ', 'DICLOFENACO SODICO 75MG/3ML AMPOLLA ARGUS', 1, '2023-07-23 20:56:07', 10.00, 1.50, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '064341958830', 0.00, 10.00, 0.00, '2025-03-01', 15.00, 50),
(11937, 'QVNBK0XJXJWW9', 'DEKA-C AMPOLLA BEBIBLE FARKOT', 1, '2023-07-23 20:58:28', 71.00, 65.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 86, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 71.00, '', '', 0, 0, 0.00, 0.00, 1, '499841535443', 0.00, 1.00, 0.00, '2024-11-01', 65.00, 51),
(11938, 'KBTQB4F4Y5BBV', 'DOLOFENIL (DICLOFENACO SODICO) 75MG/3ML SOLUCION INYECTABLE UNIPHARM', 1, '2023-07-23 21:00:32', 30.00, 13.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '540378933086', 0.00, 10.00, 0.00, '2025-03-01', 13.00, 45),
(11939, 'ZB5Y560UFJU90', 'DIYODO (DIYODOHIDROXIQUINOLEINA) 650MG TABLETA BONIN', 1, '2023-07-23 21:03:02', 3.00, 0.60, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.50, '', '', 0, 0, 0.00, 0.00, 1, '006845154786', 0.00, 20.00, 0.00, '2028-01-01', 6.00, 31),
(11940, 'T519CK7DAPMTM', 'DOLGENAL (KETOROLACO TROMETAMINA) 60MG/2ML SOLUCION INYECTABLE ASOFARMA', 1, '2023-07-23 21:05:41', 50.00, 20.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '290667907084', 0.00, 5.00, 0.00, '2024-05-01', 20.00, 52),
(11941, '40M0WXD64EWYB', 'DORIXINA RELAX 125MG/5MG COMPRIMIDOS ROEMMNERS', 1, '2023-07-23 21:10:18', 10.00, 6.50, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 70, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '138646411961', 0.00, 10.00, 0.00, '2024-06-01', 65.00, 53),
(11942, '1EPGJ6PY0A3E6', 'EMULSION SCOTT 200ML SABOR NARANJA GLAXO', 1, '2023-07-23 21:14:45', 37.50, 25.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 125, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 37.50, '', '', 0, 0, 0.00, 0.00, 1, '168006167637', 0.00, 2.00, 0.00, '2023-09-01', 25.00, 54),
(11943, '1P8K5KT61TEBT', 'EXFLU TOS JARABE 120ML SELECTPHARMA', 1, '2023-07-23 21:16:35', 50.00, 23.87, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 45.00, '', '', 0, 0, 0.00, 0.00, 1, '176869066512', 0.00, 4.00, 0.00, '2028-10-01', 23.87, 15),
(11944, 'QFC0WAMU7XUK3', 'EXFLU MULTI-SINTOMAS JARABE 120ML SELECTPHARMA', 1, '2023-07-23 21:17:40', 25.00, 11.31, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '704325931091', 0.00, 4.00, 0.00, '2027-10-01', 11.31, 15),
(11945, 'KNPQPW633VRZG', 'ENALAPRIL MALEATO (ANTIHIPERTENSIVO) 20MG TABLETAS SELECTPHARMA', 1, '2023-07-23 21:20:01', 0.50, 0.22, 1.00, 1, '0', '100', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.50, '', '', 0, 0, 0.00, 0.00, 1, '781843436717', 0.00, 100.00, 0.00, '2026-07-01', 21.25, 15),
(11946, 'EKB3RB0EQT1VT', 'ENZITROL (ENZIMAS DIGESTIVAS) GRAGEAS', 1, '2023-07-23 21:21:35', 1.20, 0.76, 1.00, 1, '10', '100', '0', 10, 0, 0, 0, 0, 0, 107, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '354039716608', 0.00, 100.00, 12.00, '2028-05-01', 76.25, 14),
(11947, 'D0ATXVJRGWV2B', 'ENZIMAS DIGESTIVAS CAPSULAS DCM CONAMED', 1, '2023-07-23 21:23:40', 2.00, 1.00, 1.00, 1, '0', '30', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '496834245171', 0.00, 30.00, 0.00, '2024-07-01', 30.00, 18),
(11949, 'K0TX17EEMKGUH', 'ENTEROGERMINA AMPOLLAS BEBIBLES SANOFI', 1, '2023-07-23 21:29:07', 23.00, 8.60, 1.00, 1, '0', '', '0', 10, 0, 0, 0, 0, 0, 126, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 22.00, '', '', 0, 0, 0.00, 0.00, 1, '171412655390', 0.00, 10.00, 0.00, '2024-09-01', 172.00, 55),
(11950, 'CUZ4T4YA7V33E', 'FLUDISIN COMPUESTO (AMBROXOL + CLENBUTEROL) 7.5MG/0.005MG JARABE PHARMACROSS', 1, '2023-07-23 21:32:45', 53.00, 16.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 48.00, '', '', 0, 0, 0.00, 0.00, 1, '676376119626', 0.00, 2.00, 0.00, '2027-06-01', 16.00, 56),
(11951, 'JJ949FEQZJ2ZG', 'FLUDISIN ANTIALERGICO (AMBROXOL + LORATADINA) 30MG/5MG JARABE PHARMACROSS', 1, '2023-07-23 21:34:15', 66.00, 23.25, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 59.50, '', '', 0, 0, 0.00, 0.00, 1, '809042509976', 0.00, 2.00, 0.00, '2027-01-01', 23.25, 56),
(11952, 'AT9CHPJVCM3K4', 'NUTRIZIN (SULFATO DE ZINC) 10MG/5ML JARABE RUIPHARMA', 1, '2023-07-23 21:35:51', 76.00, 48.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 76.00, '', '', 0, 0, 0.00, 0.00, 1, '543101312585', 0.00, 1.00, 0.00, '2024-08-01', 48.00, 38),
(11954, 'RJEJM7Z7FE2V4', 'FLUFIN ALERGIAS (CETIRIZINA) 10MG CAPSULAS CAPLIN', 1, '2023-07-23 21:39:11', 2.00, 0.68, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '479287077596', 0.00, 100.00, 0.00, '2025-10-01', 34.00, 19),
(11955, 'HF6Y7RUVWH830', 'FLUCONAZOL 200MG CAPSULAS CAPLIN', 1, '2023-07-23 21:41:30', 15.00, 2.50, 1.00, 1, '0', '2', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 2, '673560648660', 0.00, 5.00, 0.00, '2026-02-01', 5.00, 19),
(11956, 'J322XZEHUEQTU', 'GUAYACOLATO COMPUESTO JARABE 120ML HIPERFARMA', 1, '2023-07-23 21:52:46', 50.00, 20.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '730479913532', 0.00, 2.00, 0.00, '2025-02-01', 20.00, 57),
(11957, 'FEV748H3QKYUV', 'GUAYATOS (GUAYACOLATO) 100MG/5ML JARABE SELECTPHARMA', 1, '2023-07-23 21:54:03', 20.00, 8.62, 1.00, 1, '0', '', '0', 4, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 12.00, '', '', 0, 0, 0.00, 0.00, 1, '118672468350', 0.00, 10.00, 0.00, '2028-11-01', 8.65, 15),
(11958, 'VR16A71YUG059', 'GAMMATOS EXPECTORANTE JARABE 120ML GAMMA', 1, '2023-07-23 21:56:14', 77.00, 48.90, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 66.75, '', '', 0, 0, 0.00, 0.00, 1, '905054755551', 0.00, 1.00, 0.00, '2027-08-01', 48.90, 58),
(11959, '9B710YAAGB9FZ', 'GINKGO BILOBA + GINSENG CAPSULAS DCM CONAMED', 1, '2023-07-23 21:58:46', 2.00, 1.10, 1.00, 1, '0', '50', '0', 50, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '252366607553', 0.00, 50.00, 0.00, '2023-06-25', 55.00, 18),
(11960, 'GA9DZYVJTJ7GT', 'GENCLOBEN (GENTAMICINA + BETAMETASONA + CLOTRIMAZOL) CREMA 30G CAPLIN', 1, '2023-07-23 22:00:23', 23.00, 14.50, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 22.00, '', '', 0, 0, 0.00, 0.00, 1, '793705968623', 0.00, 2.00, 0.00, '2027-09-01', 14.50, 19),
(11961, '5B3N7PU313GGY', 'DEXKEDOL-N  (DEXKETOPROFENO + NEUROTROPAS) SOLUCION INYECTABLE QUALIPHARM', 1, '2023-07-23 22:05:44', 50.00, 26.90, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 48.50, '', '', 0, 0, 0.00, 0.00, 1, '475732606203', 0.00, 6.00, 0.00, '2027-02-01', 26.90, 21),
(11962, '7475RWQB6PU1J', 'GRIPONIL (GUAYACOL CON EUCALIPTOL) 120MG SOLUCION INYECTABLE ETHIPHARMA', 1, '2023-07-23 22:08:03', 30.00, 12.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '121150259131', 0.00, 3.00, 0.00, '2024-06-01', 12.00, 59),
(11963, 'U4R1THXF3ZFA1', 'GINKGO BILOBA + GINSENG AMPOLLAS BEBIBLES 10ML DRAGON', 1, '2023-07-23 22:09:55', 43.00, 21.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 86, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 42.00, '', '', 0, 0, 0.00, 0.00, 2, '212566965352', 0.00, 1.00, 0.00, '2027-07-15', 21.00, 60),
(11964, 'VDHQ34BM2RKYV', 'GABAPENTINA 400MG CAPSULAS CAPLIN', 1, '2023-07-23 22:11:29', 3.50, 2.05, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.50, '', '', 0, 0, 0.00, 0.00, 1, '480803870869', 0.00, 20.00, 0.00, '2025-08-01', 20.50, 19),
(11965, 'NHARJJ84DY2FB', 'SUKROL JARABE 240ML TRADICIONAL MANZANA NINOS FARMA MEDICA', 1, '2023-07-23 22:15:18', 46.00, 34.90, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 41.00, '', '', 0, 0, 0.00, 0.00, 1, '824368749896', 0.00, 1.00, 0.00, '2027-01-01', 34.90, 61),
(11966, 'R69U7NNVZEE9F', 'FERRIDOCE JARABE 240ML FARMA MEDICA', 1, '2023-07-23 22:16:25', 52.00, 45.50, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 48.00, '', '', 0, 0, 0.00, 0.00, 1, '423293325424', 0.00, 1.00, 0.00, '2026-03-01', 45.50, 61),
(11967, 'TW73NJFA2EQCK', 'FERRIDOCE ANTIANEMICO TABLES X30 FARMAMEDICA', 1, '2023-07-23 22:18:13', 49.00, 37.50, 1.00, 1, '0', '30', '0', 1, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 45.00, '', '', 0, 0, 0.00, 0.00, 2, '487327473854', 0.00, 1.00, 0.00, '2027-01-01', 37.50, 61),
(11968, '0PE73J27GCH4N', 'VITAPLEX FORTE AMPOLLA X10 BEBILE PHENIEL', 1, '2023-07-23 22:20:11', 65.00, 41.00, 1.00, 1, '0', '10', '0', 1, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 60.00, '', '', 0, 0, 0.00, 0.00, 2, '804569914813', 0.00, 3.00, 0.00, '2027-03-01', 41.95, 62),
(11969, 'QKVPCF9FFNHAE', 'CEREBREX CON GINKGO BILOBA AMPOLLA BEBIBLE X10 PHENIEL', 1, '2023-07-23 22:22:14', 76.00, 45.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 8.00, '', '', 0, 0, 0.00, 0.00, 1, '694814442858', 0.00, 1.00, 0.00, '2027-03-01', 45.00, 62),
(11970, 'FJV9PQ9H3M0G3', 'GINSENG CON JALEA REAL AMPOLLAS BEBIBLES X10 VESSA', 1, '2023-07-23 22:25:25', 35.00, 1.50, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 86, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 35.00, '', '', 0, 0, 0.00, 0.00, 2, '292230524622', 0.00, 2.00, 0.00, '2025-03-04', 15.00, 63),
(11971, 'GZ121MDFYH7RB', 'ACETAMINOFEN 120MG/5ML JARABE 120ML SELECTFARMA', 1, '2023-07-29 21:48:52', 15.00, 7.67, 1.00, 1, '0', '', '0', 4, 0, 0, 0, 0, 0, 63, 1, '1producto11971.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 13.00, '', '', 0, 0, 0.00, 0.00, 1, '162204148057', 0.00, 4.00, 0.00, '2028-02-01', 9.00, 15),
(11972, 'AXRMFA5K0TNZ1', 'Irbesartan 150mg x10 Tabletas recubiertas Antihipertensivo presión', 1, '2023-08-16 20:26:34', 35.00, 3.50, 1.00, 1, '3 Blíster', '', '0', 0, 0, 0, 0, 0, 0, 33, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 35.00, '', '', 0, 0, 0.00, 0.00, 3, '182478155376', 0.00, 1.00, 35.00, '2023-08-17', 35.00, 19),
(11973, 'FPKEQXV1G5GDU', 'HIDROCORTISONA 0.25 CREMA TOPICA 30G SELECTPHARMA', 1, '2023-09-23 15:13:51', 20.00, 7.78, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '064436616755', 0.00, 2.00, 0.00, '2026-04-01', 9.00, 15),
(11974, 'T6BQVDNJEY0VT', 'IBUPROFENO 100MG/5ML SUSPENSION ORAL LANCASCO', 1, '2023-09-23 15:25:06', 40.00, 19.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 126, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 40.00, '', '', 0, 0, 0.00, 0.00, 1, '509953398356', 0.00, 1.00, 0.00, '2026-03-01', 19.00, 64),
(11975, '01P784KU10GNN', 'HIDROCORTISONA 1% CREMA TOPICA 30G SELECTPHARMA', 1, '2023-09-23 15:28:17', 20.00, 7.78, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '172996731287', 0.00, 2.00, 0.00, '2027-07-01', 7.78, 15),
(11976, '1YBMUE7D87V7U', 'IRBERSARTAN + HIDROCLOROTIAZIDA 150MG+12.5MG TABLETAS CAPLIN', 1, '2023-09-23 15:33:00', 106.00, 3.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 106.00, '', '', 0, 0, 0.00, 0.00, 2, '264358841732', 0.00, 1.00, 0.00, '2025-01-01', 90.00, 19),
(11977, 'XCEK8WJD51K69', 'IBUPROFENO + METOCARBAMOL 300MG/250MG TABLETAS RECUBIERTAS SELECTPHARMA', 1, '2023-09-23 15:38:54', 2.00, 0.99, 1.00, 1, '10', '30', '0', 36, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '268695996296', 0.00, 30.00, 20.00, '2028-03-01', 29.85, 15),
(11978, 'J2MM7M7W87MM6', 'INTRAFER F-800 (HIERRO AMINOQUELADO, ACIDO FOLICO Y VITAMINA B12)  PELLETS X30 CAPSULAS', 1, '2023-09-23 15:45:11', 142.50, 3.30, 1.00, 1, '0', '30', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 142.50, '', '', 0, 0, 0.00, 0.00, 2, '035479702271', 0.00, 1.00, 0.00, '2025-04-01', 99.00, 45),
(11979, '0D9HG8YJGPACT', 'HISTAPRIN (MALEATO DE CLORFENIRAMINA) 10MG/ML SOLUCION INYECTABLE EUROFARMA', 1, '2023-09-23 15:50:46', 30.00, 30.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '448481735904', 0.00, 2.00, 0.00, '2025-12-01', 30.00, 47),
(11980, '2UA0JB3CPUQRH', 'IBUPROFENO 100MG/5ML SUSPENSION ORAL 60ML UMEDICA', 1, '2023-09-23 15:58:23', 10.00, 5.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 126, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '177324995186', 0.00, 3.00, 0.00, '2025-05-01', 5.00, 48),
(11981, 'TRG4DVPT513WQ', 'IBUPROFENO 100MG/5MG SUSPENSION ORAL 120ML HIPERFARMA', 1, '2023-09-23 16:01:03', 30.00, 12.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 126, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '999539036228', 0.00, 1.00, 0.00, '2025-04-01', 12.00, 57),
(11982, '4A93JQCMG2P14', 'IRBESARTAN(ANTIHIPERTENSIVO) TABLETAS RECUBIERTAS 150MG ECOMED', 1, '2023-09-23 16:07:12', 3.50, 1.80, 1.00, 1, '10', '100', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.50, '', '', 0, 0, 0.00, 0.00, 1, '266303227681', 0.00, 100.00, 35.00, '2026-01-01', 180.00, 65),
(11983, 'BRQ2CN4JVNH99', 'LORATADINA 5MG/5ML JARABE 100ML SELECTPHARMA', 1, '2023-09-23 17:17:01', 16.00, 9.80, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 16.00, '', '', 0, 0, 0.00, 0.00, 1, '702129024989', 0.00, 4.00, 0.00, '2027-11-01', 9.80, 15),
(11984, '1XUCZATF9PNJY', 'LANSOPRAZOL 30MG CAPSULAS CAPLIN', 1, '2023-09-23 17:21:09', 1.00, 0.48, 1.00, 1, '10', '100', '0', 90, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '343554760896', 0.00, 100.00, 10.00, '2026-01-01', 48.00, 19),
(11985, 'AEPVB6WUCKP91', 'LANSOPRAZOL 30MG CAPSULAS FLAMINGO', 1, '2023-09-23 17:25:16', 1.00, 0.40, 1.00, 1, '10', '100', '0', 8, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '765417252420', 0.00, 100.00, 10.00, '2027-05-01', 40.00, 66),
(11987, 'YND35X82WRVF9', 'KALYVIA (DEXKETOPROFENO TROMETAMOL) 50MG/2ML SOLUCION INYECTABLE SELECTPHARMA', 1, '2023-09-23 17:35:27', 25.00, 8.79, 1.00, 1, '0', '', '0', 23, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '816235763849', 0.00, 3.00, 0.00, '2028-09-01', 219.70, 15),
(11988, 'Z3DCQ6QM0HBHM', 'KALYVIA (DEXKETOPROFENO TROMETAMOL) 25MG TABLETAS RECUBIERTAS SELECTPHARMA', 1, '2023-09-23 17:46:09', 5.00, 2.57, 1.00, 1, '10', '', '0', 10, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '849948899906', 0.00, 5.00, 50.00, '2029-01-01', 25.70, 15),
(11989, '48DKT1GD81KWE', 'LEVEN-VIT K1 (VITAMINA K1) 10MG/ML SOLUCION INYECTABLE LEVEN', 1, '2023-09-23 17:52:02', 25.00, 12.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '292245178473', 0.00, 4.00, 0.00, '2025-11-01', 12.00, 67),
(11990, 'WWWVKP99WQBHE', 'KOLD GRIP TABLETAS LEVEN', 1, '2023-09-23 17:57:34', 6.50, 3.96, 1.00, 1, '0', '', '0', 11, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.62, '', '', 0, 0, 0.00, 0.00, 1, '355495525408', 0.00, 24.00, 6.50, '2026-07-01', 95.00, 67),
(11992, '482AWR6JKD3U5', 'LORATADINA 10MG TABLETAS RECUBIERTAS SELECTPHARMA', 1, '2023-09-23 18:05:56', 0.50, 0.25, 1.00, 1, '20', '100', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.50, '', '', 0, 0, 0.00, 0.00, 1, '893331755477', 0.00, 100.00, 10.00, '2027-02-01', 25.75, 15),
(11993, '6JGVP0J168TYX', 'KOACT 1000 (AMOXICILINA 875MG + ACIDO CLAVULANICO 125MG) TABLETAS RECUBIERTAS AUROBINDO', 1, '2023-09-23 18:23:38', 7.00, 3.03, 1.00, 1, '0', '0', '0', 13, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 8.00, '', '', 0, 0, 0.00, 0.00, 1, '691802613486', 0.00, 15.00, 0.00, '2024-11-01', 45.50, 68),
(11994, '5ZE2QG9EK47PD', 'KOACT 625 (AMOXICILINA 500MG + ACIDO CLAVULANICO125MG) TABLETAS RECUBIERTAS AUROBINDO', 1, '2023-09-23 18:27:40', 7.00, 2.33, 1.00, 1, '5', '15', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 7.00, '', '', 0, 0, 0.00, 0.00, 1, '010050469670', 0.00, 15.00, 35.00, '2024-05-01', 35.00, 68),
(11995, '6JP3H1JJF9R92', 'LAFCOXOL-T (AMBROXOL + CLENBUTEROL) JARABE 120ML LAFCO', 1, '2023-09-23 18:33:22', 34.00, 12.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 34.00, '', '', 0, 0, 0.00, 0.00, 1, '449015680209', 0.00, 2.00, 0.00, '2024-01-01', 12.00, 43),
(11996, 'MHN4BWMHMD062', 'LOPERAMIDA(ANTIDIARREICO) 2MG TABLETAS RECUBIERTGAS SELECTPHARMA', 1, '2023-09-23 18:39:38', 1.00, 0.13, 1.00, 1, '20', '100', '0', 100, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '973161514804', 0.00, 100.00, 20.00, '2026-09-01', 13.85, 15),
(11997, '61KG2E00ABVGC', 'LORATADINA 10MG TABLETAS RECUBIERTAS BALAXI', 1, '2023-09-23 18:44:05', 0.50, 0.12, 1.00, 1, '10', '100', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.50, '', '', 0, 0, 0.00, 0.00, 1, '834394510420', 0.00, 100.00, 5.00, '2025-01-01', 12.00, 20),
(11998, 'JNZF40XGHW2XG', 'KOLIT(ANTIDIARREICO) TABLETAS RECUBIERTAS DONOVAN', 1, '2023-09-23 18:53:39', 2.50, 1.60, 1.00, 1, '0', '', '0', 8, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.50, '', '', 0, 0, 0.00, 0.00, 1, '766610594419', 0.00, 10.00, 0.00, '2026-07-01', 8.00, 41),
(11999, 'VUAKFZAZ9736P', 'KETOCONAZOL 2% (FUNGICIDA) CREMA TOPICA 30G SELCTPHARMA', 1, '2023-09-23 19:06:06', 20.00, 8.69, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 35.00, '', '', 0, 0, 0.00, 0.00, 1, '443711086477', 0.00, 1.00, 0.00, '2030-03-01', 8.69, 15),
(12000, 'RQ17GZP5DWVWU', 'LACTACYD PRO-BIO SHAMPOO INTIMO 220ML EQUILIBRIUM', 1, '2023-09-23 19:11:16', 81.50, 50.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 127, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 81.50, '', '', 0, 0, 0.00, 0.00, 1, '888045253671', 0.00, 1.00, 0.00, '2025-03-01', 50.00, 70),
(12001, 'UAR85RJTP7MJU', 'LACTIBON FEM LOCION HIGIENE INTIMA FEMENINA 240ML MEDIHEALTH', 1, '2023-09-23 19:17:00', 95.00, 77.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 128, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 84.00, '', '', 0, 0, 0.00, 0.00, 1, '207839202539', 0.00, 1.00, 0.00, '2026-02-01', 77.00, 71),
(12002, '7JH7KP1VWUR5V', 'KOLICON (ANTIESPASMODICO) 2MG/ML GOTAS PEDIATRICAS EMULSION ORAL MEDIPRODUCTS', 1, '2023-09-23 19:28:54', 25.00, 17.15, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 129, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.00, '', '', 0, 0, 0.00, 0.00, 1, '612742571510', 0.00, 1.00, 0.00, '2028-03-01', 17.15, 14),
(12003, 'YFUWDKT7QRUR5', 'LORATADINA 10MG (ANTIHISTAMINICO) CAPSULAS CONAMEP', 1, '2023-09-23 19:36:31', 2.00, 0.35, 1.00, 1, '10', '100', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '682224243500', 0.00, 100.00, 20.00, '2026-01-01', 35.00, 18),
(12004, 'VMM2K6HEG595G', 'LAGRIMAS DE CLOROMILAN (CLORANFENICOL 2.75MG) CAPSULAS SANTE', 1, '2023-09-23 20:50:36', 1.00, 0.35, 1.00, 1, '6', '', '0', 96, 0, 0, 0, 0, 0, 130, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '791356626740', 0.00, 102.00, 6.00, '2027-09-24', 36.65, 26);
INSERT INTO `products` (`id_producto`, `codigo_producto`, `nombre_producto`, `status_producto`, `date_added`, `precio_producto`, `costo_producto`, `mon_costo`, `mon_venta`, `cantidad_blister`, `pro_contiene`, `pro_puntos`, `b1`, `b2`, `b3`, `b4`, `b5`, `b6`, `cat_pro`, `pro_ser`, `foto1`, `foto2`, `foto3`, `foto4`, `web`, `pre_web`, `descripcion`, `descripcion1`, `megusta`, `nomegusta`, `precio2`, `precio3`, `und_pro`, `barras`, `dcto`, `min`, `precio_blister`, `fecha_caducidad`, `costo_total`, `cod_laboratorio`) VALUES
(12005, '5JPDC9VPPA1NT', 'MUCOBROXOL (AMBROXOL HCI) 15MG/5ML JARABE 120ML VIJOSA', 1, '2024-02-12 14:48:20', 45.00, 18.25, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 42.50, '', '', 0, 0, 0.00, 0.00, 1, '022703131989', 0.00, 2.00, 0.00, '2024-02-12', 18.25, 72),
(12006, 'ZTA9H1H977KJK', 'METRONIDAZOL (ANTIPARASITARIO) 125MG/5ML SUSPENSION 120 ML SELECTPHARMA', 1, '2024-02-12 14:53:49', 12.00, 7.23, 1.00, 1, '0', '', '0', 4, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 11.00, '', '', 0, 0, 0.00, 0.00, 1, '361883959759', 0.00, 4.00, 0.00, '2027-08-01', 7.23, 15),
(12007, '0F3W22FVF5UVX', 'MEBENDAZOL (ANTIHELMINTICO) 100MG/5ML SUPENSIONN 30ML SELECTPHARMA', 1, '2024-02-12 15:08:51', 12.00, 5.80, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 126, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '100957833619', 0.00, 5.00, 0.00, '2026-01-01', 2.00, 15),
(12008, 'AJQHF2GT5XW7C', 'MUCARBOL (CARBOCISTEINA MUCOLITICO MUCORREGULADOR) GOTAS PEDIATRICAS 30ML VIZCAINO', 1, '2024-02-12 15:17:39', 52.00, 40.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 52.00, '', '', 0, 0, 0.00, 0.00, 1, '695721897911', 0.00, 1.00, 0.00, '2026-02-01', 40.00, 73),
(12009, 'YZTQXYVWBUM06', 'MEDOX ABC JARABE 120ML UNIPHARM', 1, '2024-02-12 15:22:30', 90.00, 40.05, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 90.50, '', '', 0, 0, 0.00, 0.00, 1, '968814181037', 0.00, 1.00, 0.00, '2027-05-01', 40.05, 45),
(12010, '2WU35YU6K9HGK', 'MAXICREZ FORTE JARABE 240ML HEIDELG PHARMA', 1, '2024-02-12 15:41:21', 150.00, 100.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 150.00, '', '', 0, 0, 0.00, 0.00, 1, '748425989350', 0.00, 1.00, 0.00, '2025-07-01', 100.00, 74),
(12011, '01J1ZHE4U0CRE', 'METRONIDAZOL 500MG/100ML SOLUCION INYECTABLE PARA INFUSION INTRAVENOSA', 1, '2024-02-12 15:48:49', 200.00, 50.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 200.00, '', '', 0, 0, 0.00, 0.00, 1, '924445758266', 0.00, 2.00, 0.00, '2024-07-01', 50.00, 19),
(12012, 'RMZFA63B0AVG6', 'METRONIDAZOL 500MG TABLETAS SELECTPHARMA', 1, '2024-02-12 17:03:15', 1.00, 0.36, 1.00, 1, '0', '100', '0', 60, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '837442407923', 0.00, 100.00, 10.00, '2029-03-01', 35.91, 15),
(12013, 'JZWYRQ32RY74P', 'METOCARBAMOL 500MG TABLETAS SELECTPHARMA', 1, '2024-02-12 17:12:36', 1.00, 0.47, 1.00, 1, '10', '100', '0', 100, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '646141544544', 0.00, 100.00, 10.00, '2026-05-01', 47.95, 15),
(12014, 'R91ZC7J0HDH41', 'METRIZOL V (METRONIDAZOL + NISTATINA) OVULOS VAGINALES', 1, '2024-02-12 17:15:13', 60.00, 22.16, 1.00, 1, '0', '10', '0', 2, 0, 0, 0, 0, 0, 69, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '779337710744', 0.00, 20.00, 0.00, '2027-02-01', 22.16, 15),
(12015, 'N6938NZJCGBK6', 'METFORMINA HCI (HIPOGLUCEMIANTE) 500MG TABLETAS SELECTPHARMA', 1, '2024-02-12 17:18:57', 1.10, 0.50, 1.00, 1, '10', '30', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.10, '', '', 0, 0, 0.00, 0.00, 1, '221236070153', 0.00, 30.00, 11.00, '2026-07-01', 15.00, 15),
(12016, '1BA3T7N8GT29U', 'MENANGIL NEUROTROPAS 25000 SOLUCION INYECTABLE MENARINI', 1, '2024-02-12 17:37:23', 76.00, 36.50, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 60.00, '', '', 0, 0, 0.00, 0.00, 1, '384992524034', 0.00, 3.00, 0.00, '2025-01-01', 36.50, 75),
(12017, '2NFDP0NYUMRGF', 'MESI 3 (MEDROXIPROGESTERONA ACETATO 150MG) ANTICONCEPTIVO PIERSAN', 1, '2024-02-12 17:39:18', 55.00, 42.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 45.00, '', '', 0, 0, 0.00, 0.00, 1, '366584638502', 0.00, 1.00, 0.00, '2025-04-01', 42.00, 7),
(12018, 'EKXWRCCPAC6GT', 'MEBENDAZOL 100MG TABLETAS X 6  SELECTPHARMA', 1, '2024-02-12 17:49:47', 5.00, 2.30, 1.00, 1, '0', '0', '0', 10, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.83, '', '', 0, 0, 0.00, 0.00, 1, '656419058444', 0.00, 6.00, 0.00, '2025-05-01', 2.30, 15),
(12019, '4BK8H3ZBCW4K1', 'NEUTRAGEL (ANTIACIDO - ADSORBENTE) SUSPENSION ORAL 360ML BONIN', 1, '2024-02-12 18:16:17', 55.00, 44.75, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 126, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '514371708778', 0.00, 1.00, 0.00, '2028-02-01', 44.75, 31),
(12020, '9GGKG3UP523J1', 'NODIK (NITAZOXANIDA) 100MG SUSPENSION ORAL 60ML UNIPHARM', 1, '2024-02-14 11:11:33', 115.00, 65.65, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 126, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 105.00, '', '', 0, 0, 0.00, 0.00, 1, '965170336934', 0.00, 2.00, 0.00, '2026-05-01', 65.65, 45),
(12021, 'KRJARYKQMG3P4', 'NODIK (NITAZOXANIDA) 100MG SUSPENSION ORAL 30ML UNIPHARM', 1, '2024-02-14 11:14:15', 97.00, 55.10, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 126, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 85.00, '', '', 0, 0, 0.00, 0.00, 1, '467688062778', 0.00, 1.00, 0.00, '2027-05-01', 55.10, 45),
(12022, '65D0NTX8MTJCR', 'NEOMELUBRINA (METAMIZOL SODICO) 250MG/5ML JARABE 100ML SANOFI', 1, '2024-02-14 11:23:53', 78.00, 47.75, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 63.50, '', '', 0, 0, 0.00, 0.00, 1, '581591263085', 0.00, 2.00, 0.00, '2029-09-01', 47.75, 55),
(12023, 'FD52W94D6BBDJ', 'NEOFEBRINA (METAMIZOL SODICO) JARABE 100ML THERFAM', 1, '2024-02-14 11:34:11', 25.00, 18.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 23.00, '', '', 0, 0, 0.00, 0.00, 1, '337980477308', 0.00, 2.00, 0.00, '2027-07-01', 18.00, 13),
(12024, 'GUCZ89K5P534B', 'NITASEL (NITAZOXANIDA) 100MG/5ML POLVO PARA SUSPENSION 30ML SELECTPHARMA', 1, '2024-02-14 12:00:48', 55.00, 27.30, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 84, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '647142534516', 0.00, 1.00, 0.00, '2027-03-01', 16.80, 15),
(12025, 'ZQPDQVE2Y9D0V', 'NISTATINA (ANTIFUNGICO) 100000 UI/ML SUSPENSION GOTAS 30ML SELECTPHARMA', 1, '2024-02-14 12:02:37', 20.00, 10.78, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '829371013882', 0.00, 2.00, 0.00, '2028-03-01', 10.78, 15),
(12026, '37Y2516KDQPV6', 'NAUXIL (DOXILAMINA + PIRIDOXINA) SUSPENSION ORAL15ML QUALIPHARM', 1, '2024-02-14 12:20:16', 35.00, 20.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 126, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 35.00, '', '', 0, 0, 0.00, 0.00, 1, '961004954091', 0.00, 1.00, 0.00, '2024-10-01', 20.00, 21),
(12027, 'QWKJ6WJ547ZZR', 'NASOLIN (OXIMETAZOLINA) GOTAS NASALES 15ML MEDIPRODUCTS', 1, '2024-02-14 12:26:01', 27.00, 20.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '086018080707', 0.00, 2.00, 0.00, '2028-05-01', 20.00, 14),
(12028, 'DT8G2K7MQ8W05', 'NERVI PLUSS 50000 (NEUROTROPAS) SOLUCION INYECTABLE DIPROVIT', 1, '2024-02-14 12:31:01', 50.00, 15.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '656410979295', 0.00, 1.00, 0.00, '2025-12-01', 15.00, 76),
(12029, 'UUE9TFT7Q8VMK', 'NEOMELUBRINA (METAMIZOL SODICO) 300MG SUPOSITORIOS INFANTILES SANOFI', 1, '2024-02-14 12:40:12', 12.00, 7.00, 1.00, 1, '0', '5', '0', 2, 0, 0, 0, 0, 0, 104, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 11.00, '', '', 0, 0, 0.00, 0.00, 1, '934176382837', 0.00, 5.00, 0.00, '2026-04-14', 35.00, 55),
(12030, 'ZPPJP4BMEUR2A', 'NODIK (NITAZOXANIDA) 500 TABLETAS RECUBIERTAS UNIPHARM ', 1, '2024-02-14 12:42:29', 119.50, 65.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 119.50, '', '', 0, 0, 0.00, 0.00, 1, '771572457329', 0.00, 1.00, 0.00, '2024-07-01', 65.00, 45),
(12031, 'V0GH8H4MKNV13', 'NAUSEOL (DIMEHIDRINATO 50MG) TABLETAS BONIN', 1, '2024-02-14 12:45:16', 1.50, 0.80, 1.00, 1, '10', '', '0', 32, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.50, '', '', 0, 0, 0.00, 0.00, 1, '111255483848', 0.00, 20.00, 15.00, '2029-05-01', 8.00, 31),
(12032, '25UBV53ZGH97J', 'CLEVIUM (DEXKETOPROFENO) 50MG/2ML SOLUCION INYECTABLE MEDPHARMA', 1, '2024-02-14 13:14:25', 35.00, 14.00, 1.00, 1, '0', '', '0', 5, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '111540455815', 0.00, 10.00, 0.00, '2028-06-01', 14.00, 46),
(12033, 'J02WU1AUZ3H93', 'MULTIPLEX (PRENATALES) GRAGEAS X 30 MEDIPRODUCTS', 1, '2024-02-14 13:18:12', 45.00, 18.25, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 107, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 45.00, '', '', 0, 0, 0.00, 0.00, 1, '851116697085', 0.00, 1.00, 0.00, '2026-09-01', 18.25, 14),
(12034, 'RQY3CYAN3KPMD', 'METOCARBAMOL 100MG/ML SOLUCION INYECTABLE SELECTPHARMA', 1, '2024-02-14 13:20:42', 10.00, 5.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '969636156049', 0.00, 3.00, 0.00, '2024-04-01', 5.00, 15),
(12035, 'TCPQU821WVT3F', 'NERVISEL 25000 SOLUCION INYECTABLE 3ML SELECTPHARMA', 1, '2024-02-14 13:22:43', 25.00, 6.53, 1.00, 1, '0', '', '0', 26, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 18.00, '', '', 0, 0, 0.00, 0.00, 1, '656842085162', 0.00, 5.00, 0.00, '2027-12-01', 163.25, 15),
(12036, 'KVH7RBZX402FK', 'NEUROBION TABLETAS MERCK', 1, '2024-02-14 13:34:54', 5.00, 1.25, 1.00, 1, '5', '120', '0', 24, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '184822332742', 0.00, 120.00, 25.00, '2028-01-01', 150.00, 44),
(12037, 'V697VP9FBD05B', 'NEUROBION DOBLE CAMARA 25000 MERCK', 1, '2024-02-14 13:38:38', 119.00, 93.50, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 112.00, '', '', 0, 0, 0.00, 0.00, 1, '080307508715', 0.00, 5.00, 0.00, '2025-05-01', 93.50, 44),
(12038, 'M579Y19HU7D4H', 'NEOBOL (NEOMICINA - CLOSTEBOL) CREMA 30G UNIPHARM', 1, '2024-02-14 13:41:50', 115.00, 80.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 115.00, '', '', 0, 0, 0.00, 0.00, 1, '489141794857', 0.00, 1.00, 0.00, '2025-02-01', 80.00, 45),
(12039, '5YMT4CV55QWP5', 'NEXT XTRA FORTE CAPSULAS DIA', 1, '2024-02-15 11:09:34', 2.00, 1.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '165979348902', 0.00, 40.00, 0.00, '2025-04-01', 40.00, 77),
(12040, 'N3506B0NB8JT5', 'NEXT STRA FORTE CAPSULAS NOCHE', 1, '2024-02-15 11:10:50', 3.00, 1.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.00, '', '', 0, 0, 0.00, 0.00, 1, '581913027178', 0.00, 40.00, 0.00, '2024-08-01', 40.00, 77),
(12041, 'U3GBFYZU2TR5N', 'NEUTRAGEL PLUS TABLETAS MASTICABLES BONIN', 1, '2024-02-15 11:24:28', 1.50, 0.61, 1.00, 1, '0', '', '0', 12, 0, 0, 0, 0, 0, 85, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.50, '', '', 0, 0, 0.00, 0.00, 1, '537363830360', 0.00, 100.00, 15.00, '2029-08-01', 6.50, 31),
(12042, 'H1R066XFWXNAT', 'PRUEBA DE EMBARAZO AFIRMA DISTRIBUIDORA WINN', 1, '2024-02-15 13:25:05', 31.50, 10.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 131, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 31.50, '', '', 0, 0, 0.00, 0.00, 1, '152677359842', 0.00, 5.00, 0.00, '2025-12-01', 10.00, 78),
(12043, 'C66XKWB1DNJCJ', 'PENETRACYNA 3 CREMA USO TOPICO 15G MEDIPRODUCTS', 1, '2024-02-15 13:30:19', 45.00, 30.50, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 45.00, '', '', 0, 0, 0.00, 0.00, 1, '098012546008', 0.00, 2.00, 0.00, '2026-01-01', 30.50, 42),
(12044, 'XTP9XAA6QVJTY', 'PILDORAS DE WITTS', 1, '2024-02-15 13:43:58', 1.00, 0.50, 1.00, 1, '0', '', '0', 120, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '468715461650', 0.00, 200.00, 0.00, '2026-01-01', 50.00, 79),
(12045, 'NRQ9ZMHZRBTY1', 'PREGABALINA PRIMA 75MG CAPSULAS', 1, '2024-02-15 13:50:36', 5.00, 0.90, 1.00, 1, '10', '100', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '859577850517', 0.00, 100.00, 50.00, '2025-02-01', 90.00, 80),
(12046, 'MJR2QDY5J7ZKN', 'UNICILINA 4000000 SOLUCION  INYECTABLE UNIPHARM', 1, '2024-02-15 13:52:33', 55.00, 35.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 55.00, '', '', 0, 0, 0.00, 0.00, 1, '145926289034', 0.00, 1.00, 0.00, '2025-10-01', 35.00, 45),
(12047, 'F2ZU6W1E0GCPX', 'PRELACTA (PRENATALES) 4 SEMANAS QUALIPHARM', 1, '2024-02-15 13:58:19', 97.50, 65.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 132, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 97.50, '', '', 0, 0, 0.00, 0.00, 1, '248812374824', 0.00, 1.00, 0.00, '2025-03-01', 65.00, 21),
(12048, 'BFBV93C9MCEQ5', 'PANADOL ULTRA 500MG/65MG SOBRES GSK', 1, '2024-02-15 14:05:23', 3.00, 1.25, 1.00, 1, '0', '', '0', 37, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.25, '', '', 0, 0, 0.00, 0.00, 1, '026895303085', 0.00, 52.00, 0.00, '2026-03-15', 65.00, 81),
(12049, 'WDE9GV5BY9CTH', 'PANADOL EXTRA FUERTE SOBRES GSK', 1, '2024-02-15 14:07:15', 1.60, 1.10, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.60, '', '', 0, 0, 0.00, 0.00, 1, '821445736965', 0.00, 50.00, 0.00, '2024-02-15', 55.00, 81),
(12050, '62KKND818PYJ5', 'PIROXICAM 40MG/2ML SOLUCION INYECTABLE SELECTPHARMA', 1, '2024-02-15 14:46:18', 5.00, 2.16, 1.00, 1, '0', '', '0', 23, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '280916375733', 0.00, 5.00, 0.00, '2029-03-01', 51.85, 15),
(12051, '05C2DT2Y4JH23', 'PIROXICAM 20MG CAPSULAS SELECTPHARMA', 1, '2024-02-15 14:50:31', 0.60, 0.15, 1.00, 1, '10', '', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.60, '', '', 0, 0, 0.00, 0.00, 1, '120488585265', 0.00, 100.00, 6.00, '2026-05-01', 15.00, 15),
(12052, 'NXMGEG73N7C2Q', 'PRENATAL CON FLUOR CAPSULAS DCM', 1, '2024-02-15 15:49:08', 1.10, 0.60, 1.00, 1, '0', '', '0', 20, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.10, '', '', 0, 0, 0.00, 0.00, 1, '344128050769', 0.00, 100.00, 0.00, '2028-01-01', 30.00, 18),
(12053, 'V6FFDRAXZR4M5', 'CUAJO 55G MARCHALL', 1, '2024-02-15 16:02:10', 2.00, 0.60, 1.00, 1, '0', '', '0', 76, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '774779506773', 0.00, 100.00, 0.00, '2025-12-01', 60.00, 82),
(12054, 'VV8QDJDPHFXWQ', 'OXIDO DE ZINC POLVO PARA USO EXTERNO DISFAVIL', 1, '2024-02-15 16:07:23', 6.00, 3.06, 1.00, 1, '0', '', '0', 6, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '879990014674', 0.00, 18.00, 0.00, '2026-10-01', 24.50, 4),
(12055, '3VRA6673YMRKE', 'REDOXON (VITAMINA C) 1G TABLETAS EFERVESCENTES BAYER', 1, '2024-02-15 16:13:04', 3.75, 2.22, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 133, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.75, '', '', 0, 0, 0.00, 0.00, 1, '923515725616', 0.00, 36.00, 0.00, '2024-06-01', 80.00, 23),
(12056, '0WXBG0V92K7QU', 'REUMETAN  CAPSULAS MEDIPRODUCTS', 1, '2024-02-15 16:14:43', 1.00, 0.47, 1.00, 1, '0', '', '0', 100, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '168502754896', 0.00, 100.00, 10.00, '2026-10-01', 47.00, 14),
(12057, 'TV10U944T0TTF', 'SUDAGRIP TOS JARABE 120ML PAILL', 1, '2024-02-17 20:41:28', 30.00, 20.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '264135367861', 0.00, 1.00, 0.00, '2025-04-01', 20.00, 83),
(12059, '67RRDAQE45KKQ', 'SALUPRIM (TRIMETROPRIM + SULFAMETOXAZOL)  SUSPENSION 100ML SAN LUIS', 1, '2024-02-17 20:48:23', 30.00, 11.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '969440502389', 0.00, 2.00, 0.00, '2027-07-01', 11.00, 85),
(12060, 'QHWC2FJEVBRQB', 'SALUPRIM (TRIMETROPRIM + SULFAMETOXAZOL) SUSPENSION 50ML SAN LUIS', 1, '2024-02-17 20:54:43', 26.00, 13.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 24.50, '', '', 0, 0, 0.00, 0.00, 1, '769163589244', 0.00, 2.00, 0.00, '2027-06-01', 13.00, 85),
(12061, 'ZD42JH9A03073', 'SUPOSITORIOS ADULTOS SENOSIAIN', 1, '2024-02-17 21:03:02', 5.00, 1.50, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 104, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '626742751093', 0.00, 20.00, 0.00, '2025-02-01', 30.00, 86),
(12062, '8HW0WEY83KP76', 'RELHAX PLUS (VALERIANA COMPUESTA + MELATONINA) DCM ', 1, '2024-02-17 21:05:24', 1.50, 1.01, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.50, '', '', 0, 0, 0.00, 0.00, 1, '155685778027', 0.00, 30.00, 0.00, '2026-02-01', 30.50, 18),
(12063, '72ZAA8UGF5WQB', 'SULFATO FERROSO (ANTIANEMICO) 300MG TABLETAS SELECTPHARMA', 1, '2024-02-17 21:08:35', 0.50, 0.15, 1.00, 1, '10', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.50, '', '', 0, 0, 0.00, 0.00, 1, '311158757778', 0.00, 100.00, 5.00, '2026-05-01', 15.00, 15),
(12064, '4W5FRY28XAUYR', 'SIMETICONA (ANTIFLATULENTO) TABLETAS MASTICABLES SELECTPHARMA', 1, '2024-02-17 21:16:59', 1.00, 0.11, 1.00, 1, '10', '', '0', 100, 0, 0, 0, 0, 0, 85, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '727937945091', 0.00, 30.00, 10.00, '2028-03-01', 11.38, 15),
(12065, '6JQEC81T8C7YK', 'SUDAGRIP BALSAMICO SOLUCION INYECTABLE PAILL', 1, '2024-02-17 21:18:56', 30.00, 22.90, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '972939014382', 0.00, 6.00, 0.00, '2025-03-01', 22.90, 83),
(12066, '733P8QNHV9X22', 'SENOSIDOS CALSICOS (LAXANTE ESTIMULANTE) CAPSULAS DCM', 1, '2024-02-17 21:22:10', 2.00, 0.60, 1.00, 1, '10', '30', '0', 30, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '789259550078', 0.00, 30.00, 20.00, '2025-01-01', 18.00, 18),
(12067, 'QFYC2BMK6PJGW', 'SUCRALFATO 1G/5ML SUSPENSION ORAL SABOR NARANJA 180ML HIPERFARMA', 1, '2024-02-17 21:25:08', 70.00, 35.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 126, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 70.00, '', '', 0, 0, 0.00, 0.00, 1, '910897750463', 0.00, 2.00, 0.00, '2024-09-01', 35.00, 57),
(12068, 'VJ7K4VTJNPZAX', 'BISMUTO (SUBSALICILATO DE BISMUTO) 262MG/15ML JARABE 240ML HIPERFARMA', 1, '2024-02-18 18:30:33', 35.00, 20.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 35.00, '', '', 0, 0, 0.00, 0.00, 1, '553498430508', 0.00, 2.00, 0.00, '2026-08-01', 20.00, 57),
(12069, 'WCDK3F0W9DG3V', 'SUBSALICILATO DE BISMUTO 262MG/15ML JARABE 240ML SELECTPHARMA', 1, '2024-02-18 18:34:29', 40.00, 15.52, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 37.00, '', '', 0, 0, 0.00, 0.00, 1, '831423323078', 0.00, 2.00, 0.00, '2027-10-01', 15.52, 15),
(12070, '5AZ91RXEZ60FF', 'SALBUTAMOL AEROSOL SUSPENSIÓN PRESURIZADO 100MCG PROFONSA', 1, '2024-02-25 14:30:08', 30.00, 18.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 134, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '848147081072', 0.00, 1.00, 0.00, '2024-04-01', 18.00, 8),
(12071, 'EV175FZHXD8ET', 'SIMETICONA 100MG/ML SUSPENSION GOTAS 30ML SELECTPHARMA', 1, '2024-02-25 14:31:47', 30.00, 18.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '629157759783', 0.00, 1.00, 0.00, '2026-05-01', 18.00, 15),
(12072, 'UMZG5ECEPX0DP', 'SOLUCION SALINA S.S.N GOTAS 15ML GAMMA', 1, '2024-02-25 14:33:23', 40.50, 32.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 40.50, '', '', 0, 0, 0.00, 0.00, 1, '855191417892', 0.00, 1.00, 0.00, '2025-05-01', 32.00, 58),
(12073, 'DU0N3Q511DYDH', 'SPLENDA SOBRES', 1, '2024-02-25 14:36:13', 0.25, 0.22, 1.00, 1, '0', '', '0', 70, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.33, '', '', 0, 0, 0.00, 0.00, 1, '152814345436', 0.00, 100.00, 0.00, '2026-02-01', 22.50, 87),
(12074, 'ZCZ5X28F2UJRD', 'SOSTENGO (SILDENAFIL CITRATO) 100MG TABLETAS CAPLIN', 1, '2024-02-25 14:40:24', 10.00, 2.63, 1.00, 1, '0', '', '0', 18, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '400936512440', 0.00, 10.00, 0.00, '2027-12-01', 63.25, 19),
(12075, 'JBNF6G5G08PHC', 'SECNIDAZOL 500MG TABLETAS RECUBIERTAS CAPLIN', 1, '2024-02-25 14:42:46', 10.00, 5.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '656204962366', 0.00, 10.00, 0.00, '2026-04-01', 5.00, 19),
(12076, 'CYTQH6H7PFZ0C', 'SOSTENGO (SILDENAFIL CITRAGO) 100MG CAPSULAS GEL CAPLIN', 1, '2024-02-25 14:44:15', 15.00, 4.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '192890024200', 0.00, 5.00, 0.00, '2024-12-01', 5.00, 19),
(12077, 'RPMMKA2YW5KDA', 'PIREX (SILDENAFIL) 100MG TABLETAS RECUBIERTAS INFASA', 1, '2024-02-25 14:46:54', 20.00, 6.50, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '852627173254', 0.00, 4.00, 0.00, '2027-02-01', 6.50, 88),
(12078, '06ZWGZ47HPQ34', 'SAL INGLESA SOBRES 28 GRAMOS DISFAVIL', 1, '2024-02-25 14:49:49', 1.00, 0.88, 1.00, 1, '0', '', '0', 19, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '846631527342', 0.00, 16.00, 0.00, '2027-04-01', 0.88, 4),
(12079, 'R7GQM22P7A14X', 'SPASMO URULONG TABLETAS ASTA MEDIC', 1, '2024-02-25 14:57:24', 8.50, 1.50, 1.00, 1, '0', '', '0', 60, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 8.50, '', '', 0, 0, 0.00, 0.00, 1, '273119512839', 0.00, 10.00, 0.00, '2028-05-01', 150.00, 89),
(12080, '0F45WUX8ABWPC', 'SANIRENAL (FENAZOPIRIDINA) 50MG TABLETAS PIERSAN', 1, '2024-02-25 15:00:59', 1.00, 0.40, 1.00, 1, '10', '100', '0', 35, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '410302220178', 0.00, 100.00, 10.00, '2025-10-01', 40.00, 7),
(12081, 'FMNB5E05XC4G5', 'SUCRASSYL (SUCRALFATO) 1G SOBRES PAILL', 1, '2024-02-25 15:04:38', 6.00, 3.00, 1.00, 1, '0', '', '0', 11, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 6.00, '', '', 0, 0, 0.00, 0.00, 1, '063198512140', 0.00, 30.00, 0.00, '2027-09-01', 90.00, 83),
(12082, '361J7JKVT1D57', 'SANTEMICINA (TETRACILINA) SOBRES SANTE', 1, '2024-02-25 15:11:11', 2.00, 1.10, 1.00, 1, '0', '50', '0', 37, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.75, '', '', 0, 0, 0.00, 0.00, 1, '889949721383', 0.00, 50.00, 0.00, '2027-02-01', 55.00, 26),
(12083, '9W2WKH22MAKR6', 'SIN SUEÑO TABLETAS COFASA', 1, '2024-02-25 15:16:32', 1.00, 0.60, 1.00, 1, '0', '', '0', 14, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '465924850309', 0.00, 500.00, 0.00, '2028-02-01', 6.00, 90),
(12084, 'XE22TA9EY77NF', 'TIAMINA 100MG SOLUCION INYECTABLE10ML PIERSAN', 1, '2024-02-25 16:16:03', 20.00, 9.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '541489967472', 0.00, 2.00, 0.00, '2025-06-01', 9.00, 7),
(12085, 'CME1084D0BXKN', 'TUSIDEC EXPECTORANTE 120ML FARCENSA', 1, '2024-02-25 16:18:26', 33.00, 19.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 33.00, '', '', 0, 0, 0.00, 0.00, 1, '621523847718', 0.00, 2.00, 0.00, '2025-05-01', 19.00, 91),
(12086, '1PWM2BKJ8HWXB', 'TOSIFLEM (GUAYACOLATO + DEXTROMETORFANO)  JARABE 240 FARMALINE', 1, '2024-02-25 16:21:42', 35.00, 19.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 35.00, '', '', 0, 0, 0.00, 0.00, 1, '541559922373', 0.00, 2.00, 0.00, '2026-02-01', 19.00, 92),
(12087, 'BNA0J2875WWAV', 'TRIMETOSE JARABE 120ML VIJOSA', 1, '2024-02-25 16:30:37', 35.00, 22.50, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 33.00, '', '', 0, 0, 0.00, 0.00, 1, '395087525775', 0.00, 3.00, 0.00, '2027-07-01', 22.50, 72),
(12088, 'VZZVMWC60Z7K7', 'TETRACICLINA 500MG CAPSULAS BALAXI', 1, '2024-02-25 16:34:09', 1.00, 0.15, 1.00, 1, '10', '100', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '605264522120', 0.00, 100.00, 10.00, '2025-02-01', 15.00, 20),
(12089, '8KU2MK9RBM4NA', 'TRAMADOL (ANALGESICO) 50MG TABLETAS ECOMED', 1, '2024-02-25 16:37:34', 1.00, 0.45, 1.00, 1, '10', '100', '0', 70, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '314618855054', 0.00, 200.00, 0.00, '2026-06-01', 45.00, 65),
(12090, '27WA1Q073W0WF', 'TETRACICLINA 500MG CAPSULAS THERFAM', 1, '2024-02-25 16:40:23', 1.00, 0.36, 1.00, 1, '10', '100', '0', 86, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '959337658420', 0.00, 50.00, 10.00, '2026-08-01', 35.90, 13),
(12091, 'Q4G94XFAFP42H', 'COTRIMOXASOL (TRIMETROPIM + SULFAMETOXAZOL) 960MG TABLETAS CAPLIN', 1, '2024-02-25 16:43:38', 1.00, 0.25, 1.00, 1, '10', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '416699121451', 0.00, 100.00, 10.00, '2024-09-01', 25.00, 19),
(12092, 'CDQMYG9MXDJHB', 'BONGESIC TRAMADOL SOLUCION INYECTABLE BONIN', 1, '2024-02-25 16:44:55', 15.00, 7.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '740861449201', 0.00, 10.00, 0.00, '2027-02-01', 7.00, 31),
(12093, 'UGF3R6FQPRNA8', 'CATETER (ANGIOCATH) 24G NIPRO MEDICAL', 1, '2024-02-25 16:51:45', 10.00, 4.50, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 135, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '014026035681', 0.00, 3.00, 0.00, '2024-02-25', 4.50, 93),
(12094, 'CB4134MRM91TP', 'CATETER (ANGIOCATH) 18GX1 1/4 NIPRO MEDICAL', 1, '2024-02-25 16:54:06', 10.00, 4.50, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 135, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '259120793900', 0.00, 3.00, 0.00, '2024-02-25', 4.50, 93),
(12095, 'X3Q81AHBQ71N2', 'CATETER (ANGIOCATH) 20GX1 1/4 NIPRO MEDICAL', 1, '2024-02-25 16:55:04', 10.00, 4.50, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 135, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '487891805831', 0.00, 3.00, 0.00, '2024-02-25', 4.50, 93),
(12096, '26V0ZUXEHXE7Q', 'CATETER (ANGIOCATH) 22G NIPRO MEDICAL', 1, '2024-02-25 16:56:32', 10.00, 4.65, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 135, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '774453156915', 0.00, 3.00, 0.00, '2024-02-25', 4.65, 94),
(12097, 'T559GMNE1J4U6', 'ZORRIPULMIN (GUAIFENISINA) JARABE 240ML FARMALINE', 1, '2024-02-25 17:04:36', 40.00, 22.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 35.00, '', '', 0, 0, 0.00, 0.00, 1, '630474051990', 0.00, 2.00, 0.00, '2027-03-01', 22.00, 92),
(12098, '7KFYR6Y7TFVZ6', 'YODOCLORINA CAPSULAS LABORATORIOS LOPEZ', 1, '2024-02-25 17:06:11', 2.00, 0.80, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.50, '', '', 0, 0, 0.00, 0.00, 1, '779808025304', 0.00, 100.00, 0.00, '2025-05-01', 8.00, 28),
(12099, '5YGP1AZ4N706Z', 'UNICIL LA 1.2M UNIPHARM', 1, '2024-02-25 17:08:10', 76.00, 41.50, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 65.00, '', '', 0, 0, 0.00, 0.00, 1, '780911881720', 0.00, 3.00, 0.00, '2026-10-01', 41.50, 45),
(12100, 'C0UFQTVHAF65Y', 'UNICIL LA 2.4M UNIPHARM', 1, '2024-02-25 17:09:06', 90.00, 59.90, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 90.00, '', '', 0, 0, 0.00, 0.00, 1, '709454908770', 0.00, 3.00, 0.00, '2026-03-01', 59.90, 45),
(12101, '8VH7WEAF1HEV8', 'UNAL ANTICONCEPTIVO MENSUAL SOLUCION INYECTABLE PIERSAN', 1, '2024-02-25 17:12:39', 50.00, 21.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 45.00, '', '', 0, 0, 0.00, 0.00, 1, '575542094307', 0.00, 5.00, 0.00, '2027-11-01', 21.00, 7),
(12102, '8NHJUB13DZMVM', 'UNIACT ANTICONCEPTIVO TRIMESTRAL CAPLIN', 1, '2024-02-25 17:14:16', 50.00, 30.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '403447651263', 0.00, 5.00, 0.00, '2025-11-01', 30.00, 19),
(12103, 'D21V5KCZQPU8F', 'UNESIA (BIFONAZOL) 1G/100G UNGUENTO ', 1, '2024-02-25 17:16:56', 95.00, 50.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 34, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 95.00, '', '', 0, 0, 0.00, 0.00, 1, '827994785988', 0.00, 1.00, 0.00, '2024-07-01', 50.00, 95),
(12104, 'R107EFKEE6WU5', 'VITAFLENACO (DICLOFENACO SODICO) 1G GEL 20G', 1, '2024-02-25 17:20:52', 27.00, 12.50, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 34, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 27.00, '', '', 0, 0, 0.00, 0.00, 1, '783334326627', 0.00, 1.00, 0.00, '2025-11-01', 12.50, 61),
(12105, 'Z776RUPUM69TE', 'ZARZAPARRILLA TONICO DEPURATIVO DE LA SANGRE 240 ML DRAGON', 1, '2024-02-25 17:22:58', 15.00, 7.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 136, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '023074985085', 0.00, 1.00, 0.00, '2025-05-01', 7.00, 60),
(12106, 'WZG4WMXVV9G93', 'ZENTEL (ALBENDAZOL) 4% ADMINISTRATIVO ORAL GSK', 1, '2024-02-25 17:24:39', 44.00, 10.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 44.00, '', '', 0, 0, 0.00, 0.00, 1, '114646836451', 0.00, 10.00, 0.00, '2026-12-01', 10.00, 81),
(12107, '0ARV8CW6KTPR2', 'ZINC 15MG CAPSULAS DCM', 1, '2024-02-25 17:27:05', 1.00, 0.43, 1.00, 1, '10', '50', '0', 90, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '190259446633', 0.00, 50.00, 10.00, '2026-01-01', 21.50, 18),
(12108, 'TDK4EDVXZE1NW', 'VITANERVO 25000 (VITAMINAS NEUROTROPAS) SOLUCION INYECTABLE PIERSAN', 1, '2024-02-25 17:28:26', 30.00, 12.50, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '373956208090', 0.00, 5.00, 0.00, '2026-08-25', 12.50, 7),
(12109, '3U4UCWD6QD6ZN', 'VITAMINA E 1000UI CAPSULAS DCM', 1, '2024-02-25 17:30:20', 3.40, 1.90, 1.00, 1, '5', '50', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.40, '', '', 0, 0, 0.00, 0.00, 1, '794064215164', 0.00, 50.00, 17.00, '2026-09-01', 95.00, 18),
(12110, 'VKJV7H5Z77H23', 'VITAMINA A 50KUI DCM', 1, '2024-02-25 17:31:53', 1.00, 0.45, 1.00, 1, '10', '100', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '597135069658', 0.00, 100.00, 10.00, '2025-02-01', 45.00, 18),
(12111, 'UXM0KVCQ6XWDX', 'VITADEK C (VITAMINAS A,D,E,K,C) NINOS AMPOLLAS LAFCO', 1, '2024-02-25 17:33:48', 32.25, 25.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 32.25, '', '', 0, 0, 0.00, 0.00, 1, '912546322696', 0.00, 1.00, 0.00, '2024-11-01', 25.00, 43),
(12112, 'EVNC7F6RUZANA', 'VITAMINA K1 SOLUCION INYECTABLE SELECTPHARMA', 1, '2024-02-25 17:35:12', 10.00, 3.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '764365751701', 0.00, 5.00, 0.00, '2025-11-01', 3.00, 15),
(12113, '3DTBPP69FRG7T', 'AMOXICILINA 500 MG TABLETA CAPLIN', 1, '2025-06-09 13:26:01', 1.00, 0.30, 1.00, 1, '10', '100', '0', 4, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '077838261134', 0.00, 100.00, 10.00, '2027-05-01', 30.00, 19),
(12114, '5J8J379A006GH', 'DYFLAM RETARD 100MG INFASA', 1, '2025-06-09 15:04:33', 10.00, 5.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '497919912879', 0.00, 6.00, 0.00, '2025-06-09', 5.00, 88),
(12115, 'M03M8C3Z04UV6', 'NEUMONIL FORTE ANTIGRIPAL SOBRE EUROFARMA', 1, '2025-06-09 15:31:20', 5.00, 1.80, 1.00, 1, '0', '', '0', 12, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '578566082803', 0.00, 25.00, 0.00, '2025-11-09', 90.00, 47),
(12116, 'H8FNBNDK40ZGT', 'DORIVAL CAPSULA (IBUPROFENO 200MG) BAYER', 1, '2025-06-09 15:36:01', 3.75, 2.83, 1.00, 1, '0', '', '0', 35, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.75, '', '', 0, 0, 0.00, 0.00, 1, '493641909237', 0.00, 25.00, 0.00, '2026-06-01', 102.00, 23),
(12117, '697WWEMCM8BQX', 'ALKA-AD (CLORHIDRATO DE LOPERAMIDA 2MG) ANTIDIARREICO BAYER', 1, '2025-06-09 15:38:34', 2.50, 0.83, 1.00, 1, '0', '', '0', 37, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.50, '', '', 0, 0, 0.00, 0.00, 1, '261346990218', 0.00, 50.00, 0.00, '2026-11-09', 60.00, 23),
(12118, 'QG6D3P45Q17MY', 'TABCIN EXTRA FUERTE NOCHE BAYER', 1, '2025-06-09 15:41:37', 5.00, 2.33, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '109809490429', 0.00, 10.00, 0.00, '2025-10-09', 70.00, 23),
(12119, 'BAQ5KE3BZBMTY', 'TABCIN EXTRA FUERTE DIA BAYER', 1, '2025-06-09 15:43:02', 5.00, 2.33, 1.00, 1, '0', '', '0', 15, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '280146957127', 0.00, 10.00, 0.00, '2025-07-09', 70.00, 23),
(12120, 'GR9V6F126657C', 'BAYKID TABLETAS MASTICABLES BAYER', 1, '2025-06-09 16:01:51', 2.00, 1.06, 1.00, 1, '0', '', '0', 23, 0, 0, 0, 0, 0, 85, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '193427277610', 0.00, 15.00, 0.00, '2026-11-09', 38.20, 23),
(12121, 'AW7724D7TGVMW', 'NEOMELUBRINA (METAMIZOL SODICO) TABLETAS 500MG SANOFI', 1, '2025-06-09 16:06:21', 2.00, 1.02, 1.00, 1, '0', '', '0', 80, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '640548237096', 0.00, 50.00, 0.00, '2027-02-09', 102.00, 55),
(12122, 'MDJ038ABMZQ9Q', 'TABCIN EXTRA FUERTE GRIPE Y TOS POWERGELS SOBRES BAYER', 1, '2025-06-09 16:09:23', 5.00, 2.66, 1.00, 1, '0', '', '0', 14, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '603150342978', 0.00, 10.00, 0.00, '2025-09-09', 80.00, 23),
(12123, '2575N0998JFTP', 'IBUWIN FORTE 800 CAPSULAS CAPLIN', 1, '2025-06-09 16:14:46', 3.00, 0.95, 1.00, 1, '10', '100', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.00, '', '', 0, 0, 0.00, 0.00, 1, '531203867237', 0.00, 20.00, 25.00, '2026-10-09', 95.00, 96),
(12124, 'MD79Q864VU3YK', 'IBUWIN 600 CAPSULAS CAPLIN', 1, '2025-06-09 16:16:40', 2.00, 0.80, 1.00, 1, '10', '100', '0', 14, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '752819227503', 0.00, 20.00, 20.00, '2026-08-09', 80.00, 19),
(12125, 'FR1P6AM3MYUW8', 'IBUPROFENO 800MG TABLETAS CAPLIN', 1, '2025-06-09 16:19:16', 1.00, 0.40, 1.00, 1, '10', '100', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '429423157806', 0.00, 20.00, 10.00, '2027-02-09', 40.00, 19),
(12126, 'G7TPU7217T4YG', 'IBUPROFENO 600MG TABLETAS CAPLIN', 1, '2025-06-09 16:21:08', 1.00, 0.35, 1.00, 1, '10', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '475955502564', 0.00, 20.00, 10.00, '2026-03-09', 35.00, 19),
(12127, 'T16VRD2KG8RCA', 'EXFLU ANTIGRIPAL DIA CAPSULAS GELATINA SELECTPHARMA', 1, '2025-06-09 16:26:03', 5.00, 2.03, 1.00, 1, '0', '', '0', 18, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '393839447815', 0.00, 10.00, 0.00, '2025-07-09', 61.00, 15),
(12128, 'A9JRGQ6XYWRB1', 'ASPIRINA 500MG TABLETAS BAYER', 1, '2025-06-09 16:28:39', 1.00, 0.60, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '774411178707', 0.00, 20.00, 0.00, '2025-10-09', 60.00, 23),
(12129, 'JMA8GPJHKXV1N', 'NEOFEBRINA (METAMIZOL SODICO) TABLETAS 500MG THERFAM', 1, '2025-06-09 16:38:57', 1.00, 0.45, 1.00, 1, '0', '', '0', 79, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '930448962986', 0.00, 20.00, 0.00, '2027-09-09', 45.00, 13),
(12130, 'TWG22UH4D1HB1', 'VIROGRIP LIMON AM SOBRES VIJOSA', 1, '2025-06-09 16:41:16', 5.00, 2.50, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '518749639331', 0.00, 5.00, 0.00, '2025-10-09', 60.00, 72),
(12131, 'MUU82KZZPHKG4', 'ALKA SELTZER TABLETAS EFERVESCENTE BAYER', 1, '2025-06-09 16:42:15', 1.75, 1.25, 1.00, 1, '0', '', '0', 52, 0, 0, 0, 0, 0, 133, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.75, '', '', 0, 0, 0.00, 0.00, 1, '743717838856', 0.00, 30.00, 0.00, '2027-01-09', 75.00, 23),
(12132, 'GFZ6KNZYRMKPH', 'SERTAL COMPUESTO COMPRIMIDOS RECUBIERTOS MEGALABS', 1, '2025-06-09 16:48:30', 4.50, 1.00, 1.00, 1, '10', '200', '0', 72, 0, 0, 0, 0, 0, 70, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 4.50, '', '', 0, 0, 0.00, 0.00, 1, '520257442487', 0.00, 50.00, 45.00, '2028-02-09', 200.00, 97),
(12133, '81GR7UDBNDMZZ', 'IBUPROFENO 400MG TABLETAS CAPLIN', 1, '2025-06-09 16:53:47', 0.50, 0.20, 1.00, 1, '10', '100', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.50, '', '', 0, 0, 0.00, 0.00, 1, '261231501085', 0.00, 20.00, 5.00, '2027-02-09', 20.00, 19),
(12134, '5NTNC2YDGQWWP', 'ALICOL JARABE 120ML UNIPHARM', 1, '2025-06-09 17:05:06', 95.00, 40.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 95.00, '', '', 0, 0, 0.00, 0.00, 1, '330862764628', 0.00, 2.00, 0.00, '2026-05-09', 40.00, 45),
(12135, '1ZGMY3HX93URB', 'ALICOL D JARABE 120ML UNIPHARM', 1, '2025-06-09 17:06:26', 100.00, 45.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 100.00, '', '', 0, 0, 0.00, 0.00, 1, '269466622407', 0.00, 2.00, 0.00, '2026-06-09', 45.00, 45),
(12136, 'KR7PZNYG4BWN4', 'ACETAMINOFEN 160MG/5ML JARABE NIÑOS MK', 1, '2025-06-09 17:10:22', 42.00, 20.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 42.00, '', '', 0, 0, 0.00, 0.00, 1, '433648150000', 0.00, 1.00, 0.00, '2026-05-09', 20.00, 24),
(12137, 'UFMXRY59K6TPM', 'ACETAMINOFEN 120MG/5ML JARABE 120ML INFASA', 1, '2025-06-09 17:19:41', 25.00, 10.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '477716923276', 0.00, 2.00, 0.00, '2026-01-09', 10.00, 88),
(12138, 'FXF511BB032E1', 'AZITROMICINA 200MG/5ML JARABE SELECTPHARMA', 1, '2025-06-09 17:24:09', 25.00, 10.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '481397496985', 0.00, 1.00, 0.00, '2027-10-09', 10.00, 15),
(12139, 'W3XCMHQTPEUX8', 'AFLAC (DICLOFENACO RESINATO) GOTAS 15ML INTECFA', 1, '2025-06-09 17:27:58', 60.00, 15.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 60.00, '', '', 0, 0, 0.00, 0.00, 1, '167547686683', 0.00, 1.00, 0.00, '2027-10-09', 15.00, 98),
(12140, 'QXE6YE16AW4VZ', 'CLAVIMOX BID POLVO PARA SUSPENSION 70ML INFASA', 1, '2025-06-09 17:29:50', 145.00, 80.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 84, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 145.00, '', '', 0, 0, 0.00, 0.00, 1, '472096862626', 0.00, 1.00, 0.00, '2025-11-09', 80.00, 88),
(12141, 'FK64U6JV2HM8Q', 'ALBENDAZOL 200MG/5ML SUSPENSION 10ML SELECTPHARMA', 1, '2025-06-09 17:43:38', 12.00, 6.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 126, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 12.00, '', '', 0, 0, 0.00, 0.00, 1, '172805667196', 0.00, 2.00, 0.00, '2027-11-09', 6.00, 15),
(12142, 'MFQ97TVT7VWPK', 'ALBENDAZOL 200MG TABLETAS MASTICABLES SELECTPHARMA', 1, '2025-06-09 17:55:04', 5.00, 1.53, 1.00, 1, '0', '', '0', 12, 0, 0, 0, 0, 0, 85, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '966346764890', 0.00, 10.00, 0.00, '2027-01-09', 36.80, 15),
(12143, 'T2K8JJQJ7Y43C', 'ADEC ADULTO SOLUCION ORAL SELECTPHARMA', 1, '2025-06-09 17:59:19', 10.00, 6.00, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 126, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '301338406922', 0.00, 2.00, 0.00, '2027-08-09', 6.00, 15),
(12144, '34AAD4NHQ8DPC', 'ASTROTON GINSENG Y MACA F4', 1, '2025-06-09 18:03:53', 100.00, 60.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 100.00, '', '', 0, 0, 0.00, 0.00, 1, '463245696266', 0.00, 1.00, 0.00, '2026-12-09', 60.00, 64),
(12145, 'Q2TNVX13ZG7BR', 'ACICLOVIR 400MG TABLETAS SELECTPHARMA', 1, '2025-06-09 18:08:12', 1.50, 0.96, 1.00, 1, '10', '50', '0', 50, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.50, '', '', 0, 0, 0.00, 0.00, 1, '025993006217', 0.00, 20.00, 15.00, '2029-02-09', 47.80, 15),
(12146, 'U0FD6XXEREMP7', 'AZITROMICINA 500MG TABLETAS SELECTPHARMA', 1, '2025-06-09 18:10:44', 25.00, 15.10, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '507418316942', 0.00, 3.00, 0.00, '2028-07-09', 15.10, 15),
(12147, 'DVP3H94HZ25ZF', 'AVAMIGRAN COMPRIMIDOS RECUBIERTOS EXELTIS', 1, '2025-06-09 18:15:01', 6.00, 3.50, 1.00, 1, '0', '', '0', 8, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 6.00, '', '', 0, 0, 0.00, 0.00, 1, '920683122178', 0.00, 5.00, 0.00, '2027-11-09', 35.00, 99),
(12148, 'WZ6BQPR6N8G2J', 'AZITROMICINA 500MG TABLETAS UMEDICA', 1, '2025-06-09 18:24:06', 25.00, 10.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '666997634616', 0.00, 3.00, 0.00, '2026-04-09', 10.00, 48),
(12149, 'Y3XM78HHYJBXU', 'ACETAMINOFEN 500MG TABLETAS THERFAM', 1, '2025-06-09 18:35:34', 0.50, 0.20, 1.00, 1, '10', '100', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.50, '', '', 0, 0, 0.00, 0.00, 1, '932345365880', 0.00, 20.00, 5.00, '2027-06-09', 20.00, 13),
(12150, '8Q5K6E6C7KJXM', 'BROMHEXINA 4MG/5ML SOLUCION ORAL LANCASCO', 1, '2025-06-09 19:17:55', 45.00, 25.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 137, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 45.00, '', '', 0, 0, 0.00, 0.00, 1, '886156514249', 0.00, 1.00, 0.00, '2026-10-10', 25.00, 64),
(12151, '965D7J4R3VYTB', 'BETA2PAN SUSPENSION INYECTABLE 2ML PIERSAN', 1, '2025-06-09 19:19:30', 80.00, 41.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 80.00, '', '', 0, 0, 0.00, 0.00, 1, '370253335257', 0.00, 1.00, 0.00, '2029-11-10', 41.00, 7),
(12152, 'A99RXTWGH284K', 'BRONCO GRIP TOS JARABE 120ML NUNZ', 1, '2025-06-09 19:21:16', 40.00, 12.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 40.00, '', '', 0, 0, 0.00, 0.00, 1, '737121518298', 0.00, 1.00, 0.00, '2028-12-10', 12.00, 100),
(12153, 'KZZ8UDV3F95Q7', 'BRONCOMAT SALBUTAMOL 0.5% 20ML UNIPHARM', 1, '2025-06-09 19:23:37', 80.00, 40.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 83, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 80.00, '', '', 0, 0, 0.00, 0.00, 1, '919376691205', 0.00, 1.00, 0.00, '2027-04-10', 40.00, 45),
(12154, '8H66FRTRFVWFE', 'BEDOYECTA TRI SOLUCION INYECTABLE 10000MCG,50G/2ML GROSSMAN', 1, '2025-06-09 19:30:36', 319.00, 120.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 319.00, '', '', 0, 0, 0.00, 0.00, 1, '231294467625', 0.00, 1.00, 0.00, '2026-11-10', 120.00, 101),
(12155, 'G06Y6B1UPCGD9', 'BICARBONATO DE SODIO SOBRE 28GRAMOS DISFAVIL', 1, '2025-06-09 19:33:01', 1.00, 0.50, 1.00, 1, '0', '', '0', 31, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '436660697589', 0.00, 16.00, 0.00, '2026-12-10', 8.00, 4),
(12156, 'RE7G7UATF45QV', 'BICARBONATO DE SODIO 454GRAMOS DISFAVIL', 1, '2025-06-09 19:34:22', 16.00, 8.00, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 16.00, '', '', 0, 0, 0.00, 0.00, 1, '060119509582', 0.00, 4.00, 0.00, '2026-06-10', 8.00, 4),
(12157, 'UX3RWN85RFCTG', 'BICARBONATO DE SODIO 227GRAMOS DISFAVIL', 1, '2025-06-09 19:35:16', 8.00, 4.00, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 8.00, '', '', 0, 0, 0.00, 0.00, 1, '708304955244', 0.00, 4.00, 0.00, '2026-06-10', 4.00, 4),
(12158, 'HW4AMAGH86CT8', 'BICARBONATO BOTE 1 LIBRA VESA', 1, '2025-06-09 19:38:09', 16.00, 8.00, 1.00, 1, '0', '', '0', 4, 0, 0, 0, 0, 0, 139, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 16.00, '', '', 0, 0, 0.00, 0.00, 1, '962763290683', 0.00, 2.00, 0.00, '2027-04-10', 8.00, 63),
(12159, 'XN3N31YN8FCNV', 'BROMURO DE OTILONIO 40GRAMOS TABLETAS SELECTPHARMA', 1, '2025-06-09 19:41:16', 3.35, 2.28, 1.00, 1, '15', '30', '0', 30, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.35, '', '', 0, 0, 0.00, 0.00, 1, '384108789505', 0.00, 15.00, 50.00, '2026-11-10', 68.65, 15),
(12160, 'HHWN7XK9DA5EZ', 'CEFTRIAXONA 1GRAMO SOLUCION INYECTABLE INFASA', 1, '2025-06-09 19:43:15', 60.00, 28.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 60.00, '', '', 0, 0, 0.00, 0.00, 1, '745953504773', 0.00, 4.00, 0.00, '2027-05-10', 28.00, 88),
(12161, '2MJ0JA1KAQ5V0', 'CEFTRIAXONA 1GRAMO SOLUCION INYECTABLE BONIN', 1, '2025-06-09 19:44:44', 50.00, 28.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '691962901601', 0.00, 2.00, 0.00, '2028-04-10', 28.00, 31),
(12162, 'YF7PVUM0U97F6', 'CLAVULIN C/12 (AMOXICILINA 875MG Y ACIDO CLAVULANICO125MG) COMPRIMIDOS ROEMMERS', 1, '2025-06-09 19:47:49', 265.00, 120.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 70, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 265.00, '', '', 0, 0, 0.00, 0.00, 1, '000956626588', 0.00, 1.00, 0.00, '2027-08-10', 120.00, 53),
(12163, 'C2MRA0FNBH38Y', 'CLOTRIMAZOLE 100MG OVULOS MEDPHARMA', 1, '2025-06-09 19:50:48', 50.00, 17.50, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 69, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '801897265197', 0.00, 2.00, 0.00, '2027-04-10', 17.50, 46),
(12164, '9U4GHAKU45JYC', 'CLINDAMICINA 2% VAGINAL CREMA VAGINAL SELECTPHARMA', 1, '2025-06-09 19:56:12', 55.00, 30.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 121, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 55.00, '', '', 0, 0, 0.00, 0.00, 1, '743639087961', 0.00, 1.00, 0.00, '2027-09-10', 30.00, 15);
INSERT INTO `products` (`id_producto`, `codigo_producto`, `nombre_producto`, `status_producto`, `date_added`, `precio_producto`, `costo_producto`, `mon_costo`, `mon_venta`, `cantidad_blister`, `pro_contiene`, `pro_puntos`, `b1`, `b2`, `b3`, `b4`, `b5`, `b6`, `cat_pro`, `pro_ser`, `foto1`, `foto2`, `foto3`, `foto4`, `web`, `pre_web`, `descripcion`, `descripcion1`, `megusta`, `nomegusta`, `precio2`, `precio3`, `und_pro`, `barras`, `dcto`, `min`, `precio_blister`, `fecha_caducidad`, `costo_total`, `cod_laboratorio`) VALUES
(12165, 'RGETCDGF4ECE3', 'CLORFENIRAMINA MALEATO 10MG/1ML AMPOLLA SELECTPHARMA', 1, '2025-06-09 19:59:00', 10.00, 1.80, 1.00, 1, '0', '', '0', 25, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '940780631508', 0.00, 5.00, 0.00, '2029-03-10', 45.00, 15),
(12166, 'UHT4CNT6HBED1', 'CIKRASEL CLOSTEBOL 0.5% + NEOMICINA 0.5% AEROSOL 40G SELECTPHARMA', 1, '2025-06-09 20:01:21', 70.00, 40.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 134, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 70.00, '', '', 0, 0, 0.00, 0.00, 1, '992799724593', 0.00, 1.00, 0.00, '2027-09-10', 40.00, 15),
(12167, 'KKJUW597AD1M1', 'CIKRASEL CLOSTEBOL 0.5% + NEOMICINA 0.5% CREMA 30GRAMOS SELECTPHARMA', 1, '2025-06-09 20:02:35', 35.00, 18.70, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 35.00, '', '', 0, 0, 0.00, 0.00, 1, '878911023125', 0.00, 1.00, 0.00, '2026-12-10', 18.70, 15),
(12168, 'PZ03RB6KHRRUX', 'CODERPINA (CODEINA) 10MG TABLETAS FRYCIA', 1, '2025-06-09 20:16:07', 3.00, 1.72, 1.00, 1, '10', '20', '0', 18, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.50, '', '', 0, 0, 0.00, 0.00, 1, '180889375811', 0.00, 10.00, 25.00, '2028-03-10', 34.50, 103),
(12169, 'TJREC39UU3WGU', 'BICARBONATO DE SODIO 112GRAMOS DISFAVIL', 1, '2025-06-09 20:22:59', 4.00, 1.50, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 4.00, '', '', 0, 0, 0.00, 0.00, 1, '238171344982', 0.00, 2.00, 0.00, '2026-12-10', 1.50, 4),
(12170, 'GZR5DXKUXXCYB', 'COMBIDEX VITAMINAS NEUROTROPAS SOLUCION INYECTABLE BONIN', 1, '2025-06-09 20:24:25', 50.00, 20.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '282062838044', 0.00, 1.00, 0.00, '2026-02-10', 20.00, 31),
(12171, 'E09UACXNG8AQH', 'CITRATO DE MAGNESIA SOBRE 30GRAMOS SANTE', 1, '2025-06-09 20:26:54', 2.00, 1.06, 1.00, 1, '0', '', '0', 15, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '160008775614', 0.00, 10.00, 0.00, '2027-02-10', 17.00, 26),
(12172, 'C1UH1C80VB1PB', 'CALMANTHE 3GRAMOS SOBRES THERFAM', 1, '2025-06-09 20:28:59', 0.50, 0.14, 1.00, 1, '0', '', '0', 84, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.50, '', '', 0, 0, 0.00, 0.00, 1, '423095529940', 0.00, 50.00, 0.00, '2027-04-10', 14.60, 13),
(12173, 'B029CTDMT0CC1', 'COMPLEJOB + HIERRO  DOSIS ORAL 10 UNIDADES VITAPHARMA', 1, '2025-06-09 20:33:35', 80.00, 32.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 137, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 80.00, '', '', 0, 0, 0.00, 0.00, 1, '742243247971', 0.00, 1.00, 0.00, '2027-07-10', 32.00, 104),
(12174, '39B3PVVJF48DU', 'VITAMINA C 500MG TABLETAS MASTICABLES CAPLIN', 1, '2025-06-09 20:50:25', 1.50, 0.60, 1.00, 1, '10', '100', '0', 60, 0, 0, 0, 0, 0, 85, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.50, '', '', 0, 0, 0.00, 0.00, 1, '803461627998', 0.00, 50.00, 15.00, '2027-09-10', 60.00, 19),
(12175, '9JTRUP8C5GA6M', 'VITAL FUERTE AMPOLLAS BEBIBLES FARMAMEDICA', 1, '2025-06-09 20:57:05', 60.00, 46.80, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 60.00, '', '', 0, 0, 0.00, 0.00, 1, '113096111110', 0.00, 2.00, 0.00, '2027-03-10', 46.80, 61),
(12176, 'MC32DHD0WF2JP', 'EQUIPO DE SUERO', 1, '2025-06-09 21:02:36', 10.00, 3.50, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 140, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '427585542241', 0.00, 5.00, 0.00, '2028-07-10', 3.50, 105),
(12177, 'CMB150C8DYU6Z', 'KETOROLACO CAPSULAS GELATINA BLANDA CONAMED', 1, '2025-06-09 21:05:39', 3.00, 1.29, 1.00, 1, '10', '30', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.00, '', '', 0, 0, 0.00, 0.00, 1, '680526678080', 0.00, 15.00, 25.00, '2027-08-10', 38.95, 65),
(12178, 'HXM23C0MFDV3F', 'PIROXICAM 20MG CAPSULAS FLAMINGO', 1, '2025-06-09 21:08:58', 0.60, 0.15, 1.00, 1, '10', '100', '0', 30, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.60, '', '', 0, 0, 0.00, 0.00, 1, '000711364281', 0.00, 50.00, 6.00, '2026-07-10', 15.00, 66),
(12179, '6107C9VTMJEMV', 'ZORRITONE CARAMELO BARRA ANCALMO', 1, '2025-06-09 21:15:52', 5.00, 2.99, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 141, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '089424292204', 0.00, 5.00, 0.00, '2027-11-10', 35.95, 84),
(12180, 'UGPR6D83PMHCW', 'RECOLECTORES', 1, '2025-06-09 21:18:05', 5.00, 1.25, 1.00, 1, '0', '', '0', 21, 0, 0, 0, 0, 0, 142, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '896551585562', 0.00, 20.00, 0.00, '2025-06-10', 1.25, 106),
(12181, 'BPHX224A6J6XU', 'SANTONINA TABLETAS PIERSAN', 1, '2025-06-09 21:20:11', 2.50, 1.00, 1.00, 1, '0', '', '0', 6, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.50, '', '', 0, 0, 0.00, 0.00, 1, '768504070826', 0.00, 10.00, 0.00, '2025-08-10', 10.00, 7),
(12182, 'KFYEU5W3URKU2', 'ALGODON 2GRAMOS VESA SOBRES', 1, '2025-06-09 21:23:54', 0.75, 0.36, 1.00, 1, '0', '', '0', 35, 0, 0, 0, 0, 0, 143, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.75, '', '', 0, 0, 0.00, 0.00, 1, '448387411030', 0.00, 50.00, 0.00, '2025-06-10', 9.00, 63),
(12183, 'BCYXR0TAZ64TB', 'CEFADROXILO 250MG/5ML JARABE 60ML SELECTPHARMA', 1, '2025-06-10 14:11:01', 30.00, 12.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '551803101241', 0.00, 1.00, 0.00, '2028-11-10', 12.00, 15),
(12184, 'EWVNZD7N0M55W', 'CEFIXIMA 100MG/5ML JARABE 50ML SELECTPHARMA ', 1, '2025-06-10 14:16:06', 45.00, 21.15, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 45.00, '', '', 0, 0, 0.00, 0.00, 1, '477905732260', 0.00, 1.00, 0.00, '2027-06-10', 21.15, 15),
(12185, 'EW4GMP88U7EAM', 'CON-KA (GLUCONATO DE POTASIO) JARABE 240ML LEGSA', 1, '2025-06-10 14:18:08', 70.00, 56.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 70.00, '', '', 0, 0, 0.00, 0.00, 1, '959831656057', 0.00, 1.00, 0.00, '2028-09-10', 56.00, 107),
(12186, 'M73JP15DEH87K', 'DEXTROMETORFANO 10MG/5ML JARABE 120ML SELECTPHARMA', 1, '2025-06-10 14:19:42', 25.00, 10.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '268065321214', 0.00, 2.00, 0.00, '2027-11-10', 10.00, 15),
(12187, 'WV218HNH5010U', 'DOLAREN (METAMIZOL SODICO) 250MG/5ML JARABE 120ML VIJOSA', 1, '2025-06-10 14:21:02', 32.50, 16.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 32.50, '', '', 0, 0, 0.00, 0.00, 1, '278360919784', 0.00, 2.00, 0.00, '2027-04-10', 16.00, 72),
(12188, '2WA1PYHVHP0DN', 'DEXA-NERVISEL SOLUCION INYECTABLE SELECTPHARMA', 1, '2025-06-10 14:24:24', 30.00, 10.95, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '015537292078', 0.00, 2.00, 0.00, '2028-02-10', 10.95, 15),
(12189, 'UKVHYKAUHZ0PA', 'DOLO-NERVISEL SOLUCION INYECTABLE SELECTPHARMA', 1, '2025-06-10 14:25:25', 30.00, 11.15, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '094305647448', 0.00, 2.00, 0.00, '2028-01-10', 11.15, 15),
(12190, 'T0H2XNG0KUXFX', 'DOLO ARTROMED SOBRES MEDIPRODUCTS', 1, '2025-06-10 14:29:39', 110.00, 83.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 110.00, '', '', 0, 0, 0.00, 0.00, 1, '701465744278', 0.00, 1.00, 0.00, '2029-04-10', 83.00, 14),
(12191, '51QKR78VZPMUV', 'DEXKEDOL-L (DEXKETOPROFENO) 25MG SOBRES SOLUCION ORAL QUALIPHARM', 1, '2025-06-10 14:35:25', 13.00, 7.87, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 13.00, '', '', 0, 0, 0.00, 0.00, 1, '135186106497', 0.00, 5.00, 0.00, '2027-04-10', 78.70, 21),
(12192, '2XWQWFPW4P369', 'KALYVIA PLUS TABLETAS SELECTPHARMA', 1, '2025-06-10 14:39:55', 12.00, 4.74, 1.00, 1, '0', '', '0', 20, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 12.00, '', '', 0, 0, 0.00, 0.00, 1, '520740817162', 0.00, 10.00, 0.00, '2027-02-10', 94.75, 15),
(12193, 'F1KT3YCCM33KC', 'DEXKETOPROFENO 25GRAMOS TABLETAS ECOMED', 1, '2025-06-10 14:43:15', 5.00, 1.55, 1.00, 1, '0', '100', '0', 89, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '275906172381', 0.00, 50.00, 50.00, '2027-06-10', 155.00, 65),
(12194, '6Y33VRVD0382W', 'DEXTRIUM (DEXKETOPROFENO) 25MG TABLETAS INFASA', 1, '2025-06-10 14:46:26', 10.00, 8.00, 1.00, 1, '0', '', '0', 4, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '259008716585', 0.00, 5.00, 0.00, '2026-06-10', 80.00, 88),
(12195, 'F3DRTHBE3TH8A', 'DOLOFENIL (DICLOFENACO SODICO) 50MG CAPSULAS UNIPHARM', 1, '2025-06-10 14:48:10', 7.00, 1.70, 1.00, 1, '0', '', '0', 4, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 7.00, '', '', 0, 0, 0.00, 0.00, 1, '746864734733', 0.00, 10.00, 0.00, '2026-03-10', 17.00, 45),
(12196, 'VG3HA0TF9XFWU', 'DICLOFENACO CON VITAMINAS NEUROTROPAS CAPCULAS 50MG HV', 1, '2025-06-10 15:00:15', 1.00, 0.60, 1.00, 1, '10', '100', '0', 20, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '005079569811', 0.00, 50.00, 10.00, '2028-01-10', 60.00, 108),
(12197, 'VR02QE2QNM8VC', 'DICLOFENACO SODICO 1% GEL TOPICO SELECTPHARMA', 1, '2025-06-10 15:03:07', 15.00, 6.35, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 124, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '180942552267', 0.00, 1.00, 0.00, '2028-03-10', 6.35, 15),
(12198, 'MUMAW2AMF6YVT', 'DOLO-NERVISEL TABLETAS SELECTPHARMA', 1, '2025-06-10 15:06:35', 1.20, 0.63, 1.00, 1, '10', '100', '0', 50, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.20, '', '', 0, 0, 0.00, 0.00, 1, '376137645126', 0.00, 50.00, 12.00, '2027-11-10', 62.40, 15),
(12199, '409434EFCVTJQ', 'DOLO-TETRAVIT TABLETAS DONOVAN', 1, '2025-06-10 15:08:33', 5.00, 3.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 4.00, '', '', 0, 0, 0.00, 0.00, 1, '884937604882', 0.00, 10.00, 40.00, '2028-02-10', 30.00, 41),
(12200, 'K0HTYVCYXC1ZT', 'DOLANTAG (DEXKETOPROFENO) 25MG/10ML AMPOLLAS BEBIBLES PROCAPS', 1, '2025-06-10 17:17:35', 15.00, 6.00, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '663680766848', 0.00, 5.00, 0.00, '2026-03-10', 30.00, 109),
(12201, '7473RW5A2YVNB', 'EXFLU SINUS ADULTO JARABE 120ML SELECTPHARMA', 1, '2025-06-10 17:21:22', 35.00, 19.50, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 35.00, '', '', 0, 0, 0.00, 0.00, 1, '539821419686', 0.00, 1.00, 0.00, '2026-09-10', 19.59, 15),
(12202, 'KURQ99ZUE783Z', 'EXFLU SINUS INFANTIL JARABE 120ML SELECTPHARMA', 1, '2025-06-10 17:22:25', 25.00, 12.20, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '923418954135', 0.00, 1.00, 0.00, '2026-05-10', 12.20, 15),
(12204, 'H3ZDVZJDXZ0QX', 'ENZIMAS DIGESTIVAS TABLETAS SELECTPHARMA', 1, '2025-06-10 17:27:33', 1.00, 0.68, 1.00, 1, '10', '', '0', 90, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '244774546889', 0.00, 50.00, 10.00, '2026-10-10', 68.40, 15),
(12205, 'GC1QHBBFYGU22', 'EXFLU SOLUCION INYECTABLE AMPOLLA 2ML SELECTPHARMA', 1, '2025-06-10 17:34:03', 20.00, 4.02, 1.00, 1, '0', '', '0', 23, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '873901343019', 0.00, 5.00, 0.00, '2028-01-10', 100.58, 15),
(12206, '9E98NJPKJA7V1', 'EMULSION SCOTT 400ML SABOR NARANJA GLAXO', 1, '2025-06-10 17:37:35', 71.00, 50.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 125, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 71.00, '', '', 0, 0, 0.00, 0.00, 1, '629545996599', 0.00, 1.00, 0.00, '2025-12-10', 50.00, 54),
(12207, 'D68D1PQ8NRMRW', 'ESTOMICINA (LOPERAMIDA) 2MG TABLETAS ', 1, '2025-06-10 17:40:49', 1.50, 0.70, 1.00, 1, '10', '100', '0', 50, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.50, '', '', 0, 0, 0.00, 0.00, 1, '424500381242', 0.00, 50.00, 15.00, '2026-09-10', 70.00, 85),
(12208, 'TUYJWPMTB96PH', 'FLUDISIN (AMBROXOL) 15MG/5ML JARABE 120ML PHARMACROSS', 1, '2025-06-10 17:44:31', 53.00, 16.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 53.00, '', '', 0, 0, 0.00, 0.00, 1, '270006970483', 0.00, 1.00, 0.00, '2027-06-10', 16.00, 56),
(12209, 'RW4G6XHMYDFWE', 'FOSFOBAC (FOSFOMICINA) 3GRAMOS POLVO PARA SUSPENSION QUALIPHARM', 1, '2025-06-10 17:46:11', 115.00, 86.75, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 84, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 115.00, '', '', 0, 0, 0.00, 0.00, 1, '000505197746', 0.00, 1.00, 0.00, '2027-03-10', 86.75, 21),
(12210, 'H2G3VY7YDUNB1', 'MAGNESIA DE SALUD SOBRES THERFAM', 1, '2025-06-10 17:56:55', 2.00, 0.97, 1.00, 1, ' ', '', '0', 61, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '367790184183', 0.00, 20.00, 0.00, '2028-04-10', 70.00, 13),
(12211, 'E9J0QH8PQPTH1', 'DOLOFOR 500 TABLETAS UNIPHARM', 1, '2025-06-10 17:59:31', 2.00, 1.00, 1.00, 1, '0', '', '0', 5, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '101748247755', 0.00, 10.00, 0.00, '2026-11-10', 10.00, 45),
(12212, '2F9D9W3BXGV4Y', 'DICLOFENACO SODICO SOLUCION INYECTABLE VITALIS', 1, '2025-06-10 18:03:02', 15.00, 2.10, 1.00, 1, '0', '', '0', 6, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '747742148957', 0.00, 5.00, 0.00, '2026-04-10', 21.00, 110),
(12213, '7M1P6X6BJDRKU', 'DEXAMETASONA FOSFATO SOLUCION INYECTABLE VITALIS', 1, '2025-06-10 18:04:18', 15.00, 2.80, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '617149087527', 0.00, 5.00, 0.00, '2027-05-10', 28.00, 110),
(12214, 'B2F455HRX6181', 'FLUDISIN (AMBROXOL) 30MG TABLETAS PHARMACROSS', 1, '2025-06-10 18:06:28', 3.00, 0.40, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.00, '', '', 0, 0, 0.00, 0.00, 1, '725680859155', 0.00, 10.00, 0.00, '2027-01-10', 4.00, 56),
(12215, 'A3EVZ89A5DMGN', 'FLAMYDOL 75MG/2ML SOLUCION INYECTABLE CAJA UNIPHARM', 1, '2025-06-10 18:09:49', 60.00, 34.65, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 45.00, '', '', 0, 0, 0.00, 0.00, 1, '565488229336', 0.00, 5.00, 0.00, '2027-02-10', 34.65, 45),
(12216, '1PX7WXPD4BMXJ', 'LAXANES (LAXANTE OSMOTICO) SOLUCION ORAL 200ML INTECFA', 1, '2025-06-10 18:23:35', 165.00, 130.70, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 165.00, '', '', 0, 0, 0.00, 0.00, 1, '292896489614', 0.00, 1.00, 0.00, '2026-10-10', 130.70, 98),
(12217, 'XNUGWRDE2U9K3', 'LORATADINA 10MG(ANTIHISTAMINICO) TABLETAS ECOMED', 1, '2025-06-10 18:25:36', 1.00, 0.60, 1.00, 1, '10', '100', '0', 80, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '889471022164', 0.00, 50.00, 10.00, '2026-09-10', 60.00, 65),
(12218, 'X21TA1RF70PZ6', 'LIPOTRON MEDIPRODUCTS', 1, '2025-06-10 18:29:22', 77.00, 55.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 144, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 77.00, '', '', 0, 0, 0.00, 0.00, 1, '374433775525', 0.00, 1.00, 0.00, '2026-06-10', 55.00, 14),
(12219, 'EV21TBBR4YHKJ', 'KETOC (KETOCONAZOL) 400MG 3 OVULOS PHARMA DEL', 1, '2025-06-10 18:31:33', 100.00, 42.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 69, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 100.00, '', '', 0, 0, 0.00, 0.00, 1, '506346421635', 0.00, 1.00, 0.00, '2027-10-10', 42.00, 111),
(12220, 'XZV0XR7H03NYZ', 'LAVERINA JARABE MULTIVITAMINICO JARABE LANCASCO', 1, '2025-06-10 18:48:50', 51.00, 30.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 51.00, '', '', 0, 0, 0.00, 0.00, 1, '816167750175', 0.00, 1.00, 0.00, '2026-09-10', 30.00, 64),
(12221, '610EWXAAJG73J', 'LEMOVIT PLUS ANTIGRIPAL TABLETAS PHARMALAT', 1, '2025-06-10 18:50:07', 38.00, 25.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 38.00, '', '', 0, 0, 0.00, 0.00, 1, '355684878594', 0.00, 1.00, 0.00, '2026-02-10', 25.00, 17),
(12222, '2MYTP8BF2TR1K', 'LUK-V (AMOXICILINA 875 + ACIDO CLAVULANICO 125) TABLETAS LUKAHM', 1, '2025-06-10 18:53:10', 7.00, 4.33, 1.00, 1, '0', '', '0', 8, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 7.00, '', '', 0, 0, 0.00, 0.00, 1, '001748539627', 0.00, 4.00, 0.00, '2026-04-10', 65.00, 112),
(12223, 'CAXZ4C0MTNXAF', 'LUK-V (AMOXICILINA 500 + ACIDO CLAVULANICO 125) TABLETAS LUKAHM', 1, '2025-06-10 18:54:57', 5.00, 2.67, 1.00, 1, '0', '', '0', 21, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '885503188647', 0.00, 10.00, 0.00, '2026-04-10', 40.00, 112),
(12224, 'DQBRPH5ERQ3M2', 'LICOPODIO POLVO SOBRE DISFAVIL', 1, '2025-06-10 18:56:30', 5.00, 0.80, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '794218946033', 0.00, 2.00, 0.00, '2026-01-10', 8.00, 4),
(12225, 'HQHKVWBMQEH7K', 'LIDOCAINA HCI 1% SOLUCION INYECTABLE SELECTPHARMA', 1, '2025-06-10 18:58:33', 5.00, 1.25, 1.00, 1, '0', '', '0', 11, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '753186823862', 0.00, 10.00, 0.00, '2025-06-10', 12.50, 15),
(12226, '07E0U6YNK7Q3B', 'LEDESTIL SUSPENSION INYECTABLE VIZCAINO', 1, '2025-06-10 19:00:03', 550.00, 250.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 550.00, '', '', 0, 0, 0.00, 0.00, 1, '486642497845', 0.00, 1.00, 0.00, '2027-09-10', 250.00, 73),
(12227, 'N5HAE68RDYQZW', 'PRUEBA DE EMBARAZO REDI', 1, '2025-06-10 19:04:37', 15.00, 5.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 131, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '471718605657', 0.00, 5.00, 0.00, '2028-01-11', 5.00, 106),
(12228, 'ZC23JWXC2CW9F', 'PRUEBA DE EMBARAZO YES NOT', 1, '2025-06-10 19:06:35', 15.00, 5.50, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 131, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '444937559099', 0.00, 5.00, 0.00, '2025-06-11', 5.50, 106),
(12229, '5CTRPZPT12JVT', 'PRUEBA DE EMBARAZO YES OR NOT', 1, '2025-06-10 19:07:39', 15.00, 5.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 131, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '440992036365', 0.00, 15.00, 0.00, '2025-06-11', 5.00, 106),
(12230, 'Q1V42YWHJVN73', 'PHYLUXONE (CEFTRIAXONA) 1GRAMO SOLUCION QUALIPHARM', 1, '2025-06-10 19:09:19', 95.00, 28.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 95.00, '', '', 0, 0, 0.00, 0.00, 1, '845790686430', 0.00, 3.00, 0.00, '2027-12-11', 28.00, 21),
(12231, 'Y5JGE0D41V3Y3', 'PANADOL MULTISINTOMAS SOBRES GLAXO', 1, '2025-06-10 19:12:15', 4.00, 3.33, 1.00, 1, '0', '', '0', 10, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 4.00, '', '', 0, 0, 0.00, 0.00, 1, '315608754958', 0.00, 20.00, 0.00, '2026-12-11', 80.00, 54),
(12232, 'R4AJPUT1XZV31', 'POSTAVIT B', 1, '2025-06-10 19:14:20', 128.00, 80.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 128.00, '', '', 0, 0, 0.00, 0.00, 1, '064888510374', 0.00, 1.00, 0.00, '2029-04-11', 80.00, 106),
(12233, 'BUR0YUKQT784C', 'PREDNISONA 5MG TABLETAS SELECTPHARMA', 1, '2025-06-10 19:28:05', 0.60, 0.25, 1.00, 1, '20', '100', '0', 80, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.60, '', '', 0, 0, 0.00, 0.00, 1, '214824987039', 0.00, 50.00, 12.00, '2028-04-11', 25.05, 15),
(12234, 'FD1PV547R74MC', 'CLOTRIPLEX POMADA LATA SELECTPHARMA', 1, '2025-06-10 19:46:58', 10.00, 5.63, 1.00, 1, '0', '', '0', 36, 0, 0, 0, 0, 0, 106, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '148598172703', 0.00, 40.00, 0.00, '2027-12-11', 228.25, 15),
(12235, 'EZD1UCU0FRMKK', 'ACEITE DE OLIVA PREDILECTO', 1, '2025-06-10 19:53:25', 10.00, 4.64, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 145, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '293013905314', 0.00, 6.00, 0.00, '2027-06-11', 27.86, 106),
(12236, 'J17QVK52PPUCJ', 'VIROGRIP BALSAMICO SOLUCION INYECTABLE VIJOSA', 1, '2025-06-10 20:14:34', 30.00, 16.50, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '516714477256', 0.00, 3.00, 0.00, '2026-02-11', 16.50, 72),
(12237, '60M0RB91N6NJY', 'VIROGRIP DOBLE TERAPIA SOLUCION INYECTABLE VIJOSA', 1, '2025-06-10 20:15:33', 30.00, 16.50, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '608631836827', 0.00, 3.00, 0.00, '2027-02-11', 16.50, 72),
(12238, '65W694XK7AYAD', 'VITACAP (GINSEG COREANO + JALEA REAL) CAPSULAS INTECFA', 1, '2025-06-10 20:28:18', 100.00, 66.70, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 100.00, '', '', 0, 0, 0.00, 0.00, 1, '863148990649', 0.00, 1.00, 0.00, '2027-02-11', 66.70, 98),
(12239, 'PNR3E14N6A9TN', 'VIROGRIP GRIPE Y TOS JARABE 120ML VIJOSA', 1, '2025-06-10 20:41:10', 35.00, 23.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 35.00, '', '', 0, 0, 0.00, 0.00, 1, '617894344378', 0.00, 1.00, 0.00, '2027-08-11', 23.00, 72),
(12240, 'Q3ZBJ8B5RZM4T', 'NODIK (NITAZOXANIDA) 500MG TABLETAS X6 UNIPHARM', 1, '2025-06-11 14:17:53', 90.00, 36.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 45.00, '', '', 0, 0, 0.00, 0.00, 1, '986212869309', 0.00, 2.00, 0.00, '2026-09-11', 72.00, 45),
(12241, '4GGFBBQEM3ABF', 'INMOBILIZADOR DE DEDO (RANITA)', 1, '2025-06-11 14:21:09', 30.00, 20.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 146, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '833135494882', 0.00, 1.00, 0.00, '2025-06-11', 20.00, 106),
(12242, 'BNW25FYME487D', 'JERINGA 10ML/CC AGUJJA 22G X 1 1/2', 1, '2025-06-11 14:28:03', 2.00, 0.62, 1.00, 1, '0', '', '0', 56, 0, 0, 0, 0, 0, 100, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '786466391907', 0.00, 50.00, 0.00, '2025-06-11', 62.00, 106),
(12243, '83FTWGBPUK1YU', 'JERINGA 5ML/CC AGUJA 22G X 1 1/2', 1, '2025-06-11 14:33:47', 1.50, 0.42, 1.00, 1, '0', '', '0', 11, 0, 0, 0, 0, 0, 100, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.50, '', '', 0, 0, 0.00, 0.00, 1, '069839879328', 0.00, 50.00, 0.00, '2025-06-11', 42.00, 106),
(12244, 'VR5BPEN5WV9J0', 'JERINGA 3ML/CC AGUJJA 22G X 1 1/2', 1, '2025-06-11 14:37:31', 1.00, 0.35, 1.00, 1, '0', '', '0', 65, 0, 0, 0, 0, 0, 100, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '761583646782', 0.00, 50.00, 0.00, '2025-06-11', 35.00, 106),
(12245, 'UWCM3XQMEAZUF', 'JERINGA 3ML/CC AGUJJA 23G X 1 1/4', 1, '2025-06-11 14:38:41', 1.00, 0.35, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 100, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '381661045887', 0.00, 50.00, 0.00, '2025-06-11', 35.00, 106),
(12246, 'W3RCGGA2E4544', 'JERINGA DE INSULINA', 1, '2025-06-11 14:42:52', 1.00, 0.40, 1.00, 1, '0', '', '0', 170, 0, 0, 0, 0, 0, 100, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '784438880482', 0.00, 50.00, 0.00, '2025-06-11', 40.00, 106),
(12247, '6BPP069PQ5VUV', 'AGUJA 21G X 1 1/2', 1, '2025-06-11 14:45:24', 0.50, 0.12, 1.00, 1, '0', '', '0', 12, 0, 0, 0, 0, 0, 147, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.50, '', '', 0, 0, 0.00, 0.00, 1, '474101977942', 0.00, 40.00, 0.00, '2025-06-11', 12.00, 106),
(12248, 'RNDFUAYREQV2J', 'AGUJA 22G X 1 1/2', 1, '2025-06-11 14:48:03', 0.50, 0.12, 1.00, 1, '0', '', '0', 92, 0, 0, 0, 0, 0, 147, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.50, '', '', 0, 0, 0.00, 0.00, 1, '396303361816', 0.00, 50.00, 0.00, '2025-06-11', 12.00, 106),
(12249, '6MM3T9N28CG0Z', 'IBUPROFENO 100MG/5ML SUSPENSION ORAL SELECTPHARMA', 1, '2025-06-11 14:55:23', 20.00, 6.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '670025309889', 0.00, 3.00, 0.00, '2029-02-11', 6.00, 15),
(12250, 'G877QQH35H97Q', 'HISTAPRIN (MALEATO DE CLORFENIRAMINA) COMPRIMIDOS EUROFARMA', 1, '2025-06-11 15:00:57', 5.00, 2.50, 1.00, 1, '0', '', '0', 5, 0, 0, 0, 0, 0, 70, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '647396597702', 0.00, 10.00, 0.00, '2028-10-11', 25.00, 47),
(12251, 'K3GMZ575P1P1E', 'INTRAFER F-800 CAPSULAS UNIPHARM', 1, '2025-06-11 15:04:00', 4.00, 2.12, 1.00, 1, '10', '', '0', 30, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 4.00, '', '', 0, 0, 0.00, 0.00, 1, '776752532623', 0.00, 10.00, 40.00, '2026-08-11', 21.21, 45),
(12252, 'KFXZB7EGA1C8E', 'HOJA DE BISTURI ESTERIL', 1, '2025-06-11 15:11:30', 10.00, 2.00, 1.00, 1, '0', '', '0', 14, 0, 0, 0, 0, 0, 148, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 19.00, '', '', 0, 0, 0.00, 0.00, 1, '828284669616', 0.00, 5.00, 0.00, '2028-07-11', 2.00, 106),
(12253, 'UNDR31PFJRXEU', 'VITAL FUERTE CAPSULAS X100 FARMAMEDICA', 1, '2025-06-11 15:13:45', 105.00, 79.20, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 105.00, '', '', 0, 0, 0.00, 0.00, 1, '570537236403', 0.00, 1.00, 0.00, '2028-02-11', 79.20, 61),
(12254, '84PZBAUQAUAYR', 'VITAL FUERTE CAPSULAS X30 FARMAMEDICA', 1, '2025-06-11 15:14:51', 45.00, 32.80, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 45.00, '', '', 0, 0, 0.00, 0.00, 1, '702578930663', 0.00, 1.00, 0.00, '2028-03-11', 32.80, 61),
(12255, 'NTXKZD3FYZBZ5', 'VITAL FUERTE H3 CAPSULAS X 100 FARMAMEDICA', 1, '2025-06-11 15:16:03', 145.00, 100.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 145.00, '', '', 0, 0, 0.00, 0.00, 1, '812830620817', 0.00, 1.00, 0.00, '2027-10-11', 100.00, 61),
(12256, '60743NH1A6EKR', 'VITAL FUERTE H3 CAPSULAS X 30 FARMAMEDICA', 1, '2025-06-11 15:17:19', 60.00, 45.40, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 60.00, '', '', 0, 0, 0.00, 0.00, 1, '097517529210', 0.00, 1.00, 0.00, '2027-10-11', 45.40, 61),
(12257, 'B1BC5DKRF2MQM', 'SUKROL BEBIBLE X 10 FARMAMEDICA', 1, '2025-06-11 15:21:51', 70.00, 54.90, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 70.00, '', '', 0, 0, 0.00, 0.00, 1, '233118504296', 0.00, 1.00, 0.00, '2027-01-11', 54.90, 61),
(12258, 'DEDJBMBQX43KZ', 'VITAFLENACO CAPSULAS', 1, '2025-06-11 15:25:15', 2.00, 1.00, 1.00, 1, '0', '', '0', 21, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '739711081547', 0.00, 15.00, 0.00, '2026-08-11', 30.00, 106),
(12259, 'N6F8F4UKK4EWM', 'VITABALANCE MULTIVITAMINICO SABOR CEREZA', 1, '2025-06-11 17:27:54', 106.00, 81.70, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 24, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 106.00, '', '', 0, 0, 0.00, 0.00, 1, '955488657144', 0.00, 1.00, 0.00, '2027-06-11', 81.70, 106),
(12260, 'AQ20QW4ZKFF28', 'VITABALANCE MULTIVINATAMINICO SABOR LIMON,NARANJA ,PINA Y CEREZA', 1, '2025-06-11 17:29:40', 106.00, 81.70, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 24, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 106.00, '', '', 0, 0, 0.00, 0.00, 1, '132630596747', 0.00, 1.00, 0.00, '2026-09-11', 81.70, 106),
(12261, 'HNXNQ5VPNMBZN', 'CURITAS CURE BAND', 1, '2025-06-11 17:33:55', 0.25, 0.10, 1.00, 1, '0', '', '0', 99, 0, 0, 0, 0, 0, 43, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.25, '', '', 0, 0, 0.00, 0.00, 1, '413564848025', 0.00, 50.00, 0.00, '2028-10-11', 10.00, 106),
(12262, '7X8ZKMWA6VHZX', 'GAMMATOS ANTITUSIVO JARABE 120ML GAMMA', 1, '2025-06-11 17:36:42', 107.00, 68.50, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 107.00, '', '', 0, 0, 0.00, 0.00, 1, '521153631279', 0.00, 1.00, 0.00, '2027-05-11', 68.50, 58),
(12263, 'N9D2P01YCQU70', 'ZORRITONE CARAMELO ANCALMO', 1, '2025-06-11 17:50:35', 0.50, 0.32, 1.00, 1, '0', '', '0', 482, 0, 0, 0, 0, 0, 68, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 0.50, '', '', 0, 0, 0.00, 0.00, 1, '379206812730', 0.00, 500.00, 0.00, '2027-10-11', 164.45, 84),
(12264, 'A4FP1KZDBZY9U', 'GRANEODIN B 10MG PASTILLA ', 1, '2025-06-11 17:52:16', 4.00, 1.25, 1.00, 1, '0', '', '0', 8, 0, 0, 0, 0, 0, 85, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 4.00, '', '', 0, 0, 0.00, 0.00, 1, '035441008388', 0.00, 10.00, 0.00, '2026-01-11', 30.00, 106),
(12265, 'TNMPJ8JNGMBEN', 'METRONIDAZOL + NISTATINA OVULOS VAGINALES CAPLIN', 1, '2025-06-11 18:00:38', 50.00, 16.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 69, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '635072169328', 0.00, 1.00, 0.00, '2026-09-11', 16.00, 19),
(12266, 'K72EXG95UPFG7', 'MILORIX CREMA ANTIHEMORROIDAL BMA PHARMA', 1, '2025-06-11 18:03:35', 84.00, 65.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 150, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 84.00, '', '', 0, 0, 0.00, 0.00, 1, '606854753654', 0.00, 1.00, 0.00, '2027-06-11', 65.00, 113),
(12267, '3RY3MT8RCZ73V', 'METHYCOBAL SOLUCION INYECTABLE EISAI', 1, '2025-06-11 18:05:21', 600.00, 160.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 600.00, '', '', 0, 0, 0.00, 0.00, 1, '933741464048', 0.00, 1.00, 0.00, '2026-12-11', 160.00, 106),
(12268, 'MRWMZK1DAVY77', 'NATELE EASY GEL CAPSULAS X28', 1, '2025-06-11 18:11:46', 205.00, 195.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 205.00, '', '', 0, 0, 0.00, 0.00, 1, '979498533182', 0.00, 1.00, 0.00, '2025-10-11', 195.00, 106),
(12269, '0G1Z3VDD5Q31B', 'METAMIZOL SODICO 1G/2ML SOLUCION INYECTABLE SELECTPHARMA', 1, '2025-06-11 18:22:02', 10.00, 2.75, 1.00, 1, '0', '', '0', 4, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '922132690947', 0.00, 5.00, 0.00, '2027-02-11', 2.25, 15),
(12270, 'A83B4CURRJPUP', 'PROBANOVA FORTE SOLUCION INYECTABLE UNIPHARM', 1, '2025-06-11 18:28:20', 30.00, 10.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '852692544222', 0.00, 1.00, 0.00, '2026-12-11', 10.00, 45),
(12271, '7V989Y1F56EM6', 'VEGETAL ROJO 4 ONZAS', 1, '2025-06-11 18:29:33', 15.00, 7.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '316896623034', 0.00, 1.00, 0.00, '2025-06-11', 7.00, 106),
(12272, 'MZGJPDM9V1CKA', 'VETAL ROJO MEDIA LIBRA', 1, '2025-06-11 18:30:16', 30.00, 15.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '244292293094', 0.00, 1.00, 0.00, '2025-06-11', 15.00, 106),
(12273, 'C7XRT13PW81NH', 'SULFABAC 40MG/200MG/5ML JARABE 120ML SELECTPHARMA', 1, '2025-06-11 18:38:02', 20.00, 9.12, 1.00, 1, '0', '', '0', 6, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '601879776991', 0.00, 6.00, 0.00, '2028-10-11', 9.12, 15),
(12274, '9QP8RZJXTG8G3', 'TUSIVANZ (CARBOXIMETILCISTEINA) 250MG/5ML JARABE 120ML MEDPHARMA', 1, '2025-06-11 18:45:42', 75.00, 57.35, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 75.00, '', '', 0, 0, 0.00, 0.00, 1, '649074840704', 0.00, 1.00, 0.00, '2026-08-11', 57.35, 46),
(12275, '5UHB37UY04F6M', 'SALBUTAMOL AEROSOL SUSPENSION 100MCG CAPLIN', 1, '2025-06-11 19:49:52', 40.00, 32.70, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 134, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 40.00, '', '', 0, 0, 0.00, 0.00, 1, '077530691191', 0.00, 1.00, 0.00, '2027-08-12', 32.70, 19),
(12276, 'A3U7D54M7Z1QE', 'SUCRALFATO 1G/5ML SUSPENSION 200ML IINTECFA', 1, '2025-06-12 12:24:51', 70.00, 39.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 70.00, '', '', 0, 0, 0.00, 0.00, 1, '951030718466', 0.00, 1.00, 0.00, '2028-02-12', 39.00, 98),
(12277, 'Q91RKQX5R4BMX', 'SERAFON SOLUCION INYECTABLE LAPRIN', 1, '2025-06-12 12:35:06', 25.00, 7.66, 1.00, 1, '0', '', '0', 12, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '340996723213', 0.00, 10.00, 0.00, '2025-12-12', 115.00, 114),
(12278, '295K4R4FAP4G0', 'ARGININA FORTE AMPOLLAS BEBIBLES CAJA INFASA', 1, '2025-06-12 12:43:31', 147.00, 147.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 147.00, '', '', 0, 0, 0.00, 0.00, 1, '466981986015', 0.00, 1.00, 0.00, '2027-11-12', 100.00, 88),
(12279, 'ZDG0U097B3X97', 'FUNGEX 20MG X15 COMPRIMIDOS INFASA', 1, '2025-06-12 12:46:13', 280.00, 200.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 70, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 280.00, '', '', 0, 0, 0.00, 0.00, 1, '929932201012', 0.00, 2.00, 0.00, '2027-02-12', 200.00, 88),
(12280, 'RG1H16TNMYJAT', 'TRINOACTIN (SUCRALFATO) 1G/5ML SACHETS RINCMED', 1, '2025-06-12 12:53:52', 6.00, 3.10, 1.00, 1, '0', '', '0', 23, 0, 0, 0, 0, 0, 151, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 6.00, '', '', 0, 0, 0.00, 0.00, 1, '434716769510', 0.00, 10.00, 0.00, '2027-04-12', 93.00, 115),
(12281, 'PEGUWVP6Z8XYV', 'UROFIN TABLETAS PROCAPS', 1, '2025-06-12 13:07:09', 3.50, 1.00, 1.00, 1, '0', '', '0', 54, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.50, '', '', 0, 0, 0.00, 0.00, 1, '665487986244', 0.00, 50.00, 0.00, '2027-03-12', 100.00, 109),
(12282, 'N9EHN6PX1N07A', 'PULMO GRIP BALSAMICO JARABE 120ML NORDIC', 1, '2025-06-12 13:21:08', 50.00, 15.00, 1.00, 1, '0', '', '0', 6, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '956290007165', 0.00, 2.00, 0.00, '2028-12-12', 90.00, 34),
(12283, 'W8Q44DP91QWTW', 'LEVUSOL SUERO ORAL 475ML SABOR COCO', 1, '2025-06-12 13:55:21', 20.00, 15.50, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '542153599601', 0.00, 1.00, 0.00, '2027-03-12', 15.50, 103),
(12284, 'H63M432B4FRKD', 'LEVUSOL SUERO ORAL 475ML SABOR CEREZA', 1, '2025-06-12 13:56:50', 20.00, 15.50, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '745345901794', 0.00, 1.00, 0.00, '2027-03-12', 15.50, 103),
(12285, 'GX0E5D6GQ78RT', 'LEVUSOL SUERO ORAL 475ML SABOR MANZANA', 1, '2025-06-12 14:02:48', 20.00, 15.50, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '151627060619', 0.00, 1.00, 0.00, '2027-02-12', 15.50, 103),
(12286, '4N1CHNF9VEF0M', 'LEVUSOL SUERO ORAL 475ML SABOR PINA', 1, '2025-06-12 14:07:30', 20.00, 15.50, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '565947243428', 0.00, 1.00, 0.00, '2027-02-12', 15.50, 103),
(12287, '5B1DJWVMZZE5Q', 'SUEROX 630ML SABOR MANZANA', 1, '2025-06-12 14:15:00', 20.00, 14.10, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '076530665643', 0.00, 1.00, 0.00, '2026-03-12', 14.10, 106),
(12288, '8ZN019V4J8CRE', 'SUEROX 630ML SABOR FRESA KIWI', 1, '2025-06-12 14:16:17', 20.00, 14.10, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '431446079169', 0.00, 1.00, 0.00, '2026-08-12', 14.10, 106),
(12289, '0K3T4TKNTUE8G', 'SUEROX 630ML SABOR MORA AZUL HIERBABUENA', 1, '2025-06-12 14:18:24', 20.00, 14.10, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '477092262346', 0.00, 1.00, 0.00, '2026-02-12', 14.10, 106),
(12290, 'RKGHAQE35GKX7', 'PEDIALYTE 500ML SABOR FRESA', 1, '2025-06-12 15:04:15', 26.00, 20.45, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 26.00, '', '', 0, 0, 0.00, 0.00, 1, '485854071454', 0.00, 1.00, 0.00, '2026-10-12', 20.45, 106),
(12291, '9CV1YYQ7FAF3X', 'PEDIALYTE 500ML SABOR UVA', 1, '2025-06-12 15:05:09', 26.00, 20.45, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 26.00, '', '', 0, 0, 0.00, 0.00, 1, '802970477434', 0.00, 1.00, 0.00, '2026-10-12', 20.45, 106),
(12292, 'DKDA0FFTEX6F8', 'PEDIALYTE 500ML SABOR COCO', 1, '2025-06-12 15:05:46', 26.00, 20.45, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 26.00, '', '', 0, 0, 0.00, 0.00, 1, '785523422250', 0.00, 1.00, 0.00, '2026-10-12', 20.45, 106),
(12293, '9BG0GBUQANA8D', 'PEDIALYTE 500ML SABOR MANZANA', 1, '2025-06-12 15:06:34', 25.00, 20.45, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '356204989208', 0.00, 1.00, 0.00, '2026-10-12', 20.45, 106),
(12294, '1QXJVTVBM5R4H', 'PEDIALYTE 500ML SABOR CEREZA', 1, '2025-06-12 15:07:16', 26.00, 20.45, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 26.00, '', '', 0, 0, 0.00, 0.00, 1, '916950683900', 0.00, 1.00, 0.00, '2026-10-12', 20.45, 106),
(12295, 'KE0PYBDP129YE', 'HIDRAVIDA 652ML SABOR FRESA', 1, '2025-06-12 15:16:12', 22.00, 13.50, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 22.00, '', '', 0, 0, 0.00, 0.00, 1, '108446811074', 0.00, 1.00, 0.00, '2026-09-12', 27.00, 106),
(12296, '6W87G7BN906RR', 'HIDRAVIDA 652ML SABOR JAMAICA', 1, '2025-06-12 15:16:56', 22.00, 13.50, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 22.00, '', '', 0, 0, 0.00, 0.00, 1, '848457451331', 0.00, 1.00, 0.00, '2026-09-12', 27.00, 106),
(12297, '5D9TT70PZFJGC', 'HIDRAVIDA 652ML MARACUYA', 1, '2025-06-12 15:17:48', 22.00, 13.50, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 22.00, '', '', 0, 0, 0.00, 0.00, 1, '294791404166', 0.00, 1.00, 0.00, '2026-09-12', 27.00, 106),
(12298, 'FTP7ATXPGX2DF', 'HIDRAVIDA 652ML SABOR UVA', 1, '2025-06-12 15:18:34', 22.00, 13.50, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 22.00, '', '', 0, 0, 0.00, 0.00, 1, '166883306670', 0.00, 1.00, 0.00, '2026-09-12', 27.00, 106),
(12299, 'MHX8WBC2PNPUE', 'HIDRAVIDA 652ML SABOR MORA AZUL', 1, '2025-06-12 15:19:49', 22.00, 13.50, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 22.00, '', '', 0, 0, 0.00, 0.00, 1, '252138286671', 0.00, 1.00, 0.00, '2026-09-12', 27.00, 106),
(12300, 'X6N92AW2RCW4M', 'HIDRAVIDA 652ML SABOR NARANJA MANDARINA', 1, '2025-06-12 15:20:37', 22.00, 13.50, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 22.00, '', '', 0, 0, 0.00, 0.00, 1, '482380076815', 0.00, 1.00, 0.00, '2026-09-12', 27.00, 106),
(12301, '26ZEC7PUWWHUK', 'HIDRAVIDA 652ML SABOR LIMA LIMON', 1, '2025-06-12 15:21:52', 22.00, 13.50, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 22.00, '', '', 0, 0, 0.00, 0.00, 1, '605554690432', 0.00, 1.00, 0.00, '2026-09-12', 27.00, 106),
(12302, 'ETQCQBJBCFBUC', 'HIDRAVIDA 652ML SABOR FRESA KIWI', 1, '2025-06-12 15:22:47', 22.00, 13.50, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 22.00, '', '', 0, 0, 0.00, 0.00, 1, '835794296792', 0.00, 1.00, 0.00, '2026-09-12', 27.00, 106),
(12303, 'JR58FKM13E6TR', 'RECOVER 1000ML SABOR PINA', 1, '2025-06-12 15:26:20', 20.00, 13.30, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '693739897628', 0.00, 1.00, 0.00, '2027-03-12', 13.30, 106),
(12304, '5457XH7AC3DU0', 'RECOVER 1000ML SABOR MELOCOTON', 1, '2025-06-12 15:27:05', 20.00, 13.30, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '082534759081', 0.00, 1.00, 0.00, '2027-03-12', 13.30, 106),
(12305, '40WR4R3RX08KZ', 'RECOVER 1000ML SABOR UVA', 1, '2025-06-12 15:28:02', 20.00, 13.30, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '220570306906', 0.00, 1.00, 0.00, '2027-03-12', 13.30, 106),
(12306, 'YXYTJUZF0BKAG', 'RECOVER 1000ML SABOR CEREZA', 1, '2025-06-12 15:28:51', 20.00, 13.30, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '578965681366', 0.00, 1.00, 0.00, '2027-03-12', 13.30, 106),
(12307, '9AV0P1QHBQN62', 'RECOVER 1000ML SABOR COCO', 1, '2025-06-12 15:29:52', 20.00, 13.30, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '249821766594', 0.00, 1.00, 0.00, '2027-03-12', 13.30, 106),
(12308, 'CWX84YF1ENKUU', 'GLUCOSORAL 450ML SABOR CEREZA', 1, '2025-06-12 15:35:13', 20.00, 15.80, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '819758271877', 0.00, 1.00, 0.00, '2027-11-12', 15.80, 106),
(12309, 'TQHNQTR6G55CM', 'GLUCOSORAL 450ML SABOR MANZA', 1, '2025-06-12 15:36:02', 20.00, 15.80, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '176832893964', 0.00, 1.00, 0.00, '2027-09-12', 15.80, 106),
(12310, 'WDMQZ039RY1JE', 'GLUCOSORAL 450ML SABOR MELOCOTON', 1, '2025-06-12 15:36:42', 20.00, 15.80, 1.00, 1, '0', '', '0', 4, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '331306505007', 0.00, 1.00, 0.00, '2027-09-12', 15.80, 106),
(12311, 'A1PVH73GZ4JMT', 'GLUCOSORAL 450ML SABOR COCO', 1, '2025-06-12 15:37:19', 20.00, 15.80, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '583338202553', 0.00, 1.00, 0.00, '2027-09-12', 15.80, 106),
(12312, '1M6DDD20JY5ZY', 'ELECTORAL 475ML SABOR COCO', 1, '2025-06-12 15:38:08', 15.00, 29.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '661619642366', 0.00, 1.00, 0.00, '2029-05-12', 9.00, 106),
(12313, 'YE1MDR66V4KU9', 'SUEROS SOBRES PIERSAN', 1, '2025-06-12 15:40:13', 2.00, 1.04, 1.00, 1, '0', '', '0', 8, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '884415723961', 0.00, 10.00, 0.00, '2027-05-12', 26.00, 7),
(12314, 'AVJVXCJXQA3QX', 'SOLUCION ISOTONICA 1000ML BONIN', 1, '2025-06-12 15:41:43', 20.00, 9.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 152, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '545115448804', 0.00, 1.00, 0.00, '2028-10-12', 9.00, 31),
(12315, '5R0H76VY2RP1D', 'CONDONES VIVE AMOR', 1, '2025-06-12 16:55:06', 10.00, 5.49, 1.00, 1, '0', '', '0', 13, 0, 0, 0, 0, 0, 153, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '942715947765', 0.00, 10.00, 0.00, '2029-05-12', 87.95, 106),
(12316, '7F83ZJTEWWGR2', 'LUBRICANTE VIVE SOBRE SABOR FRESA', 1, '2025-06-12 16:58:49', 5.00, 3.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 154, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '239247031356', 0.00, 1.00, 0.00, '2026-05-12', 3.00, 106),
(12317, 'ANYR5KENWUBX4', 'LUBRICANTE VIVE SOBRE SIN OLOR SIN SABOR', 1, '2025-06-12 17:02:39', 5.00, 3.00, 1.00, 1, '0', '', '0', 9, 0, 0, 0, 0, 0, 154, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '229139266650', 0.00, 5.00, 0.00, '2026-05-12', 27.00, 106),
(12318, '36DY3U16UYQK1', 'ALCOHOL MEDICINAL 70GRADOS SPRAY 120ML VESA', 1, '2025-06-12 17:06:18', 12.00, 4.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 75, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 12.00, '', '', 0, 0, 0.00, 0.00, 1, '723246962057', 0.00, 1.00, 0.00, '2027-03-12', 8.00, 63),
(12319, '0TA2XMMZAUHHB', 'AGUA FLORIDA VESA', 1, '2025-06-12 17:12:13', 5.00, 2.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 74, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '544574835978', 0.00, 1.00, 0.00, '2025-06-12', 2.00, 106),
(12320, '28ZFPAE0GT3JC', 'ESCENCIA MARAVILLOSA 15ML', 1, '2025-06-12 17:14:41', 14.75, 8.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 155, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 14.75, '', '', 0, 0, 0.00, 0.00, 1, '696300531458', 0.00, 1.00, 0.00, '2026-10-12', 8.00, 106),
(12321, 'VC7K5N8BG5BD4', 'ACEITE DE RICINO (LAXANTE) 60ML', 1, '2025-06-12 17:17:43', 15.75, 10.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 156, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.75, '', '', 0, 0, 0.00, 0.00, 1, '378248376990', 0.00, 1.00, 0.00, '2027-03-12', 20.00, 106),
(12322, 'FYM9AEYJBK46D', 'ACEITE DE RICINO (LAXANTE) 30ML', 1, '2025-06-12 17:19:50', 11.00, 7.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 156, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 11.00, '', '', 0, 0, 0.00, 0.00, 1, '576414908512', 0.00, 1.00, 0.00, '2027-04-12', 14.00, 106),
(12323, 'FHDX7X48C9U7K', 'MERCUROCROMO ATOMIZADOR', 1, '2025-06-12 17:22:02', 9.25, 5.15, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 74, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 9.25, '', '', 0, 0, 0.00, 0.00, 1, '522125444972', 0.00, 1.00, 0.00, '2027-04-12', 5.15, 106),
(12324, '2EN7QT6JP1M97', 'MERCUROCROMO GOTAS', 1, '2025-06-12 17:23:34', 7.75, 5.75, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 7.75, '', '', 0, 0, 0.00, 0.00, 1, '338113490921', 0.00, 1.00, 0.00, '2027-02-12', 5.75, 106),
(12325, 'JG673C17P4BFH', 'GLICERINA LASANA LIQUIDO', 1, '2025-06-12 17:25:11', 9.50, 6.15, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 157, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 9.50, '', '', 0, 0, 0.00, 0.00, 1, '704114266837', 0.00, 1.00, 0.00, '2027-03-12', 12.30, 106),
(12326, 'R26FDRN72A32J', 'ACEITE DE AJENTO 1.5% GOTA 30ML', 1, '2025-06-12 17:26:48', 12.00, 8.20, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 12.00, '', '', 0, 0, 0.00, 0.00, 1, '480249566782', 0.00, 1.00, 0.00, '2027-02-12', 16.40, 106),
(12327, 'RTZJZJW40HHQM', 'CORDIAL DEL SUSTO GOTAS 30ML', 1, '2025-06-12 17:27:55', 13.00, 7.80, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 13.00, '', '', 0, 0, 0.00, 0.00, 1, '283996874494', 0.00, 1.00, 0.00, '2027-02-12', 7.80, 106);
INSERT INTO `products` (`id_producto`, `codigo_producto`, `nombre_producto`, `status_producto`, `date_added`, `precio_producto`, `costo_producto`, `mon_costo`, `mon_venta`, `cantidad_blister`, `pro_contiene`, `pro_puntos`, `b1`, `b2`, `b3`, `b4`, `b5`, `b6`, `cat_pro`, `pro_ser`, `foto1`, `foto2`, `foto3`, `foto4`, `web`, `pre_web`, `descripcion`, `descripcion1`, `megusta`, `nomegusta`, `precio2`, `precio3`, `und_pro`, `barras`, `dcto`, `min`, `precio_blister`, `fecha_caducidad`, `costo_total`, `cod_laboratorio`) VALUES
(12328, 'Q43W7B18AYC3E', 'VIOLETA GENCIANA TINTURA 1% ', 1, '2025-06-12 17:30:19', 8.75, 5.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 8.75, '', '', 0, 0, 0.00, 0.00, 1, '148880685343', 0.00, 1.00, 0.00, '2026-08-12', 5.00, 106),
(12329, '2HD5EU9QZZM3R', 'CORDIAL DEL SUSTO GOTAS DISFAVIL', 1, '2025-06-12 17:32:35', 13.00, 6.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 13.00, '', '', 0, 0, 0.00, 0.00, 1, '209157316367', 0.00, 1.00, 0.00, '2025-11-12', 6.00, 106),
(12330, 'W7GUBH29YT78B', 'TRES JARABES DISFAVIL', 1, '2025-06-12 17:33:15', 12.00, 5.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 12.00, '', '', 0, 0, 0.00, 0.00, 1, '694687207571', 0.00, 1.00, 0.00, '2025-09-12', 5.00, 106),
(12331, 'QN94FZ1PF921K', 'TINTURA DE RUIBARBO (LAXANTE)', 1, '2025-06-12 17:34:20', 9.50, 5.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 155, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 9.50, '', '', 0, 0, 0.00, 0.00, 1, '007622673158', 0.00, 1.00, 0.00, '2025-12-12', 5.00, 106),
(12332, 'QKW70YMWPZ1C4', 'ACEITE DE NERVINO 30ML', 1, '2025-06-12 17:35:08', 13.00, 9.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 13.00, '', '', 0, 0, 0.00, 0.00, 1, '350135261290', 0.00, 1.00, 0.00, '2026-07-12', 9.00, 106),
(12333, '8MNA9UJDYED5G', 'ACEITE ALCANFORADO DISFAVIL', 1, '2025-06-12 17:37:46', 15.00, 6.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '831902434589', 0.00, 1.00, 0.00, '2027-03-12', 6.00, 106),
(12334, 'UN4TA30E4JRWY', 'POMADA ALCANFORADA 10%', 1, '2025-06-12 17:38:50', 12.00, 5.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 106, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 12.00, '', '', 0, 0, 0.00, 0.00, 1, '218708034975', 0.00, 1.00, 0.00, '2026-09-12', 10.00, 106),
(12335, 'EBQPC0DQZ1W2R', 'ESCENCIA DE CLAVO DISFAVIL', 1, '2025-06-12 17:39:45', 15.00, 5.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '247287985429', 0.00, 1.00, 0.00, '2026-01-12', 5.00, 106),
(12336, 'YJ2K5WHPRE522', 'TINTURA DE YODO 2%', 1, '2025-06-12 17:40:26', 13.00, 6.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 155, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 13.00, '', '', 0, 0, 0.00, 0.00, 1, '967130096268', 0.00, 1.00, 0.00, '2026-06-12', 6.00, 106),
(12337, 'N7UHY8KQMFP7U', 'NIVEA CREMA LATA 20ML', 1, '2025-06-12 17:42:49', 10.00, 6.00, 1.00, 1, '0', '', '0', 7, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '087003252679', 0.00, 2.00, 0.00, '2025-06-12', 42.00, 106),
(12338, '6AKT7ED7HHEPE', 'NIVEA CREMA LATA 50ML', 1, '2025-06-12 17:44:44', 20.00, 10.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '412535509985', 0.00, 1.00, 0.00, '2025-06-12', 10.00, 106),
(12339, 'XU2W4DWUP6PW1', 'KURA KURA CREMA LATA 13GRAMOS', 1, '2025-06-12 17:45:39', 15.50, 8.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.50, '', '', 0, 0, 0.00, 0.00, 1, '506744417583', 0.00, 1.00, 0.00, '2027-05-12', 8.00, 106),
(12340, 'NNUUTMHZWCXF0', 'GMS POMADA LATA 12GRAMOS', 1, '2025-06-12 17:46:46', 12.00, 6.25, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 14.00, '', '', 0, 0, 0.00, 0.00, 1, '511793357859', 0.00, 1.00, 0.00, '2028-08-12', 6.25, 106),
(12341, '7D17RZ28Y6HZQ', 'VICK LATA 12GRAMOS', 1, '2025-06-12 17:48:29', 9.50, 5.83, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 34, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 9.50, '', '', 0, 0, 0.00, 0.00, 1, '907179569497', 0.00, 2.00, 0.00, '2026-08-12', 29.15, 106),
(12342, '75RV9668VAFDV', 'POMADA AZUFRADA LATA 12GRAMOS', 1, '2025-06-12 17:50:45', 14.00, 5.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 106, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 14.00, '', '', 0, 0, 0.00, 0.00, 1, '214898904898', 0.00, 1.00, 0.00, '2025-07-12', 5.00, 106),
(12343, 'BWCBUN6DU70N9', 'MICROPORE COLOR PIEL 1 PULGADA', 1, '2025-06-12 17:52:36', 20.00, 10.40, 1.00, 1, '0', '', '0', 4, 0, 0, 0, 0, 0, 33, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '969573139431', 0.00, 2.00, 0.00, '2025-06-12', 62.40, 106),
(12344, 'HK73MQDCW57RV', 'MICROPORE COLOR BLANCO 1 PULGADA', 1, '2025-06-12 17:53:50', 20.00, 10.80, 1.00, 1, '0', '', '0', 5, 0, 0, 0, 0, 0, 33, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '844047290464', 0.00, 2.00, 0.00, '2025-06-12', 64.80, 106),
(12345, 'N92HZPF086X88', 'ESPARADRAPO', 1, '2025-06-12 17:54:54', 50.00, 20.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 88, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '927724383322', 0.00, 1.00, 0.00, '2025-06-12', 20.00, 106),
(12346, 'BRPNGW7CWGHD6', 'OTIK 10ML SUSPENSION OTICA PIERSAN 10ML', 1, '2025-06-12 18:50:37', 30.00, 15.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 158, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '087385775614', 0.00, 1.00, 0.00, '2027-08-12', 30.00, 106),
(12347, '9TT2FU3T76Y4P', 'SAL ANDREWS SOBRES', 1, '2025-06-12 19:20:34', 1.75, 0.90, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.75, '', '', 0, 0, 0.00, 0.00, 1, '719770412681', 0.00, 25.00, 0.00, '2026-06-13', 45.00, 106),
(12348, 'TCMP8KCHE0468', 'NAFAZOLINA HCI 0.025% SOLUCION OFTALMICA 15ML SELECTPHARMA', 1, '2025-06-12 19:22:20', 20.00, 7.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 159, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '431929361442', 0.00, 1.00, 0.00, '2028-10-12', 7.00, 106),
(12349, 'EXHPMYK5Z9EEN', 'LUBRICANTE VIVE SABOR FRESA 120ML', 1, '2025-06-13 16:00:19', 45.00, 25.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 154, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 45.00, '', '', 0, 0, 0.00, 0.00, 1, '602666222249', 0.00, 1.00, 0.00, '2025-11-13', 25.00, 106),
(12350, 'BAQYK1CKHG4JX', 'CREMA LASSAR USO TOPICO 120GRAMOS', 1, '2025-06-13 16:14:37', 24.50, 15.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 24.50, '', '', 0, 0, 0.00, 0.00, 1, '352128300483', 0.00, 1.00, 0.00, '2030-02-13', 15.00, 106),
(12351, 'P19JAJTDYQ5XF', 'VASELINA SOLIDA USO TOPICO112GRAMOS DISFAVIL', 1, '2025-06-13 16:30:40', 14.25, 7.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 14.25, '', '', 0, 0, 0.00, 0.00, 1, '100217948596', 0.00, 1.00, 0.00, '2026-07-13', 7.00, 4),
(12352, 'CEBNNK2X5B8HQ', 'PASEX LUBRICANTE SOLUBLE SIN ALCOHOL 125ML', 1, '2025-06-13 16:32:26', 30.00, 15.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 154, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '577995493095', 0.00, 1.00, 0.00, '2026-01-13', 15.00, 106),
(12353, 'AMJQC23REZUEE', 'ARNICA GEL USO TOPICO 120GRAMOS', 1, '2025-06-13 16:40:34', 18.00, 9.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 124, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 18.00, '', '', 0, 0, 0.00, 0.00, 1, '269334279620', 0.00, 1.00, 0.00, '2027-02-13', 18.00, 106),
(12354, 'E3C8VQ68GVJZW', 'OIDOL GOTAS OTICAS 15ML', 1, '2025-06-13 16:41:59', 30.00, 15.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '736291002874', 0.00, 1.00, 0.00, '2026-11-13', 15.00, 106),
(12355, 'RWB4U6ZPY3AJN', 'MENTOL DAVIS LATA 12GRAMOS', 1, '2025-06-13 16:44:01', 10.00, 4.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 97, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '786146807580', 0.00, 2.00, 0.00, '2026-02-13', 16.00, 106),
(12356, 'RV1WKDAP09VH4', 'SELLO DE PARINA', 1, '2025-06-13 16:45:33', 5.00, 1.50, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 33, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '053427456057', 0.00, 1.00, 0.00, '2027-12-13', 3.00, 106),
(12357, 'WY8T10B1M75HF', 'DERMO G11 TALCO 300 GRAMOS', 1, '2025-06-13 16:59:55', 25.00, 11.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 20, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '329164472114', 0.00, 1.00, 0.00, '2027-01-13', 22.00, 106),
(12358, 'K3J2UNNX7PT5K', 'ALGODON 25 GRAMOS SUPERIOR', 1, '2025-06-13 17:01:21', 13.00, 5.40, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 143, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 13.00, '', '', 0, 0, 0.00, 0.00, 1, '374786040954', 0.00, 1.00, 0.00, '2030-04-13', 10.80, 106),
(12359, 'WNE1QFQ7AQAJB', 'PROTEX FRESH', 1, '2025-06-13 17:02:30', 7.00, 5.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 18, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 7.00, '', '', 0, 0, 0.00, 0.00, 1, '068416004322', 0.00, 1.00, 0.00, '2027-03-13', 10.00, 106),
(12360, 'RU5QMYYFCQW21', 'PROTEX ALOE', 1, '2025-06-13 17:03:24', 7.00, 5.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 18, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 7.00, '', '', 0, 0, 0.00, 0.00, 1, '306504967241', 0.00, 1.00, 0.00, '2027-03-13', 10.00, 106),
(12361, 'U78ATRGCBUQMZ', 'PROTEX BALANCE SALUDABLE', 1, '2025-06-13 17:04:07', 7.00, 5.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 18, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 7.00, '', '', 0, 0, 0.00, 0.00, 1, '196731448847', 0.00, 1.00, 0.00, '2027-03-13', 10.00, 106),
(12362, 'EDFRXXZ6H1HP9', 'PROTEX NUTRI PROTECT GLICERINA + OMEGA3', 1, '2025-06-13 17:04:51', 7.00, 5.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 18, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 7.00, '', '', 0, 0, 0.00, 0.00, 1, '290591729138', 0.00, 1.00, 0.00, '2027-03-13', 5.00, 106),
(12363, 'AB3YK3D3MJFEQ', 'GASA ANTIADHERENTE ESTERIL', 1, '2025-06-13 17:05:51', 8.00, 3.50, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 94, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 8.00, '', '', 0, 0, 0.00, 0.00, 1, '942064360623', 0.00, 1.00, 0.00, '2029-04-13', 10.50, 106),
(12364, 'VMWAWUV0V1BDK', 'ALGODON 6 GRAMOS SUPERIOR', 1, '2025-06-13 17:08:39', 3.00, 1.60, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 143, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.00, '', '', 0, 0, 0.00, 0.00, 1, '232558973624', 0.00, 1.00, 0.00, '2030-02-13', 3.20, 106),
(12365, '7KAJ1J8YWT6P2', 'ALGODON 3 GRAMOS SUPERIOR', 1, '2025-06-13 17:11:29', 1.50, 0.85, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 143, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.50, '', '', 0, 0, 0.00, 0.00, 1, '431006106045', 0.00, 1.00, 0.00, '2030-01-13', 1.70, 106),
(12366, 'U0V346YN372NK', 'CITOCOL COLOR AZUL OSCURO', 1, '2025-06-13 17:24:10', 15.00, 9.70, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 136, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '226751785688', 0.00, 1.00, 0.00, '2025-06-13', 19.40, 106),
(12367, 'TWWK5QEVGU8FU', 'CITOCOL COLOR AZUL MARINO', 1, '2025-06-13 17:24:55', 15.00, 9.70, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 136, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '426436754731', 0.00, 1.00, 0.00, '2025-06-13', 19.40, 106),
(12368, 'YK51A0AP54KMT', 'CITOCOL COLOR NEGRO INTENSO', 1, '2025-06-13 17:25:42', 15.00, 9.70, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 136, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '484818139680', 0.00, 1.00, 0.00, '2025-06-13', 19.40, 106),
(12369, 'F85V9A5GGE3KR', 'HISOPOS PETIT X100 UNIDADES', 1, '2025-06-13 17:29:31', 9.00, 4.20, 1.00, 1, '0', '', '0', 5, 0, 0, 0, 0, 0, 44, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 9.00, '', '', 0, 0, 0.00, 0.00, 1, '814584043292', 0.00, 2.00, 0.00, '2025-06-13', 21.00, 106),
(12370, 'D0ZXJ26VHVNQH', 'ALCOHOL MEDICINAL 70GRADOS 500ML VESA', 1, '2025-06-13 17:33:22', 13.00, 7.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 75, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 13.00, '', '', 0, 0, 0.00, 0.00, 1, '013812596580', 0.00, 1.00, 0.00, '2027-04-13', 7.00, 63),
(12371, 'DV6YNUN2B05JW', 'ALCOHOL 55GRADOS 120ML', 1, '2025-06-13 17:37:28', 3.00, 1.50, 1.00, 1, '0', '', '0', 10, 0, 0, 0, 0, 0, 75, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.00, '', '', 0, 0, 0.00, 0.00, 1, '433914115879', 0.00, 2.00, 0.00, '2026-08-13', 22.50, 106),
(12372, 'AAURDBDVC01H1', 'AGUA OXIGENADA 120ML', 1, '2025-06-13 17:38:34', 3.00, 1.50, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 33, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.00, '', '', 0, 0, 0.00, 0.00, 1, '478655782053', 0.00, 2.00, 0.00, '2026-10-13', 7.50, 106),
(12373, 'JKJ845MDMXB8G', 'AGUA OXIGENADA 480ML', 1, '2025-06-13 17:39:32', 10.00, 4.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 33, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '614508687196', 0.00, 1.00, 0.00, '2027-02-13', 4.00, 106),
(12374, 'N1PPU8HZM1KTN', 'ALCOHOL MEDICINAL 70GRADOS 100ML VESA', 1, '2025-06-13 17:40:46', 25.00, 15.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 75, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '084127179738', 0.00, 1.00, 0.00, '2026-10-13', 15.00, 63),
(12375, '4VUWX7VJV0NQ0', 'AGUA OXIGENADA 960ML', 1, '2025-06-13 17:46:33', 15.00, 4.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 33, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '038369603026', 0.00, 1.00, 0.00, '2027-03-13', 4.00, 63),
(12376, '024P4DR0QXUGR', 'GASA SUPER VESA', 1, '2025-06-13 17:48:53', 1.50, 0.28, 1.00, 1, '0', '', '0', 93, 0, 0, 0, 0, 0, 94, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.50, '', '', 0, 0, 0.00, 0.00, 1, '228713609929', 0.00, 2.00, 0.00, '2029-07-13', 28.00, 63),
(12377, 'NPH4TZ2550Q6M', 'GOTEROS', 1, '2025-06-13 17:50:29', 4.00, 1.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 101, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 4.00, '', '', 0, 0, 0.00, 0.00, 1, '718979173305', 0.00, 1.00, 0.00, '2025-06-13', 2.00, 106),
(12378, 'DD1MT8958ANTR', 'ALGODON DE BOLITAS X150 UNIDADES', 1, '2025-06-13 17:52:17', 16.00, 8.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 143, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 16.00, '', '', 0, 0, 0.00, 0.00, 1, '183009108845', 0.00, 1.00, 0.00, '2030-02-13', 16.00, 106),
(12379, '41798QJRT3UR1', 'GUANTES LATEX ', 1, '2025-06-13 17:57:47', 2.50, 0.43, 1.00, 1, '0', '', '0', 33, 0, 0, 0, 0, 0, 93, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '202077830691', 0.00, 10.00, 0.00, '2025-06-13', 43.00, 106),
(12380, 'UR1UDRGKF0BUE', 'BOLSA RECOLECTORA DE ORINA', 1, '2025-06-13 17:59:42', 3.00, 1.50, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 142, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.00, '', '', 0, 0, 0.00, 0.00, 1, '787805439245', 0.00, 2.00, 0.00, '2027-03-13', 4.50, 106),
(12381, 'QWNGXTT6BCENV', 'SERAFON PERLAS ', 1, '2025-06-13 18:34:52', 0.50, 0.16, 1.00, 1, '0', '', '0', 970, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '857734023395', 0.00, 1000.00, 0.00, '2027-02-13', 160.00, 106),
(12382, 'PR5QAC3MKQJT3', 'SABA BUENAS NOCHES', 1, '2025-06-13 18:37:49', 24.50, 12.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 16, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 24.50, '', '', 0, 0, 0.00, 0.00, 1, '266369466564', 0.00, 1.00, 0.00, '2027-08-13', 24.00, 106),
(12383, 'Z5KPFTJW1FH1J', 'KOTEX NOCTURNA', 1, '2025-06-13 18:39:28', 19.00, 11.00, 1.00, 1, '0', '', '0', 5, 0, 0, 0, 0, 0, 16, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 19.00, '', '', 0, 0, 0.00, 0.00, 1, '547837268180', 0.00, 2.00, 0.00, '2026-09-13', 55.00, 106),
(12384, '9UW3AJWXQ7BE1', 'GINKGO BILOBA AMPOLLA BEBIBLE X10 VESA', 1, '2025-06-16 13:47:31', 43.00, 22.00, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 43.00, '', '', 0, 0, 0.00, 0.00, 1, '389509603655', 0.00, 1.00, 0.00, '2025-06-16', 22.00, 63),
(12385, 'T047DYPR2CYFG', 'ASPIRINA FORTE 500MG TABLETAS BAYER', 1, '2025-06-16 18:54:24', 1.00, 0.74, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 1.00, '', '', 0, 0, 0.00, 0.00, 1, '514449408018', 0.00, 10.00, 0.00, '2027-01-01', 74.10, 23),
(12386, '7X8GP7R9B1H70', 'HARTMAN SOLUCION INYECTABLE 500ML BONIN', 1, '2025-06-16 18:59:16', 15.00, 10.50, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '099990329445', 0.00, 1.00, 0.00, '2028-11-16', 10.50, 31),
(12387, '926TH7BNW0T53', 'HARTMAN SOLUCION INYECTABLE 1000ML BONIN', 1, '2025-06-16 19:00:17', 20.00, 13.75, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 47, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '526777095999', 0.00, 1.00, 0.00, '2029-03-16', 13.75, 31),
(12388, 'K30PYN0WNZEYY', 'SECNIDAZOL 500MG TABLETAS RECUBIERTAS ECOMED', 1, '2025-06-16 19:03:39', 10.00, 3.55, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '134866733345', 0.00, 2.00, 0.00, '2027-08-17', 35.50, 65),
(12389, '55BTVD7ETTJ8Z', 'ZENTEL 400MG TABLETAS GSK', 1, '2025-06-16 19:11:12', 30.00, 22.40, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '706633947097', 0.00, 1.00, 0.00, '2028-03-17', 22.40, 81),
(12390, 'AGRQHT6CG0FCU', 'SUKROL PRO X30 CAPSULAS FARMA MEDICA', 1, '2025-06-16 19:12:56', 105.00, 82.90, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 105.00, '', '', 0, 0, 0.00, 0.00, 1, '866313765263', 0.00, 1.00, 0.00, '2026-08-17', 82.90, 61),
(12391, 'WPXQZX7NWJ81K', 'COLITRAN TABLETAS GENERICS', 1, '2025-06-16 19:15:51', 3.50, 2.50, 1.00, 1, '0', '', '0', 10, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.50, '', '', 0, 0, 0.00, 0.00, 1, '549939862155', 0.00, 5.00, 0.00, '2027-09-17', 2.50, 106),
(12392, '26KMD4TNADJWE', 'DOLO-TETRAVIT DOBLE TERAPIA DONOVAN', 1, '2025-06-16 19:19:27', 77.00, 59.25, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 77.00, '', '', 0, 0, 0.00, 0.00, 1, '972088198148', 0.00, 1.00, 0.00, '2026-09-17', 59.25, 41),
(12393, 'Z916WH8RKXBXC', 'DOLO-TETRAVIT DOBLE TERAPIA 3X2 DONOVAN', 1, '2025-06-16 19:20:53', 167.00, 119.50, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 167.00, '', '', 0, 0, 0.00, 0.00, 1, '285306875763', 0.00, 1.00, 0.00, '2026-06-17', 119.50, 41),
(12394, '3TGPDBUC0AJFR', 'NAPROXENO 200MG CAPSULAS CONAMED', 1, '2025-06-17 11:12:44', 2.00, 0.82, 1.00, 1, '0', '', '0', 94, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '906681666396', 0.00, 100.00, 0.00, '2027-12-17', 82.00, 18),
(12395, 'QRX39CMQBDC6J', 'DEAREXIN (NIFUROXAZIDA) 220MG/5ML SUSPENSION  120ML MEDIPRODUCTS', 1, '2025-06-17 11:17:37', 40.00, 31.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 126, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 40.00, '', '', 0, 0, 0.00, 0.00, 1, '479112305002', 0.00, 1.00, 0.00, '2030-02-17', 31.00, 14),
(12396, 'XUNGXFHKV39GP', 'DOLO-MENANGIL SOLUCION INYECTABLE MENARINI	', 1, '2025-06-17 11:41:48', 55.00, 25.00, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 55.00, '', '', 0, 0, 0.00, 0.00, 1, '081652935315', 0.00, 4.00, 0.00, '2026-04-17', 25.00, 75),
(12397, 'GAF3JR7WM1Y5K', 'VIROGRIP LIMON PMSOBRES VIJOSA', 1, '2025-06-17 11:56:11', 5.00, 3.14, 1.00, 1, '0', '24', '0', 21, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '496883108680', 0.00, 24.00, 0.00, '2026-09-17', 75.36, 72),
(12398, 'X0YKVBNEEZM58', 'VIROGRIP NOCHE SOBRE VIJOSA', 1, '2025-06-17 11:58:58', 5.00, 3.14, 1.00, 1, '0', '24', '0', 22, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '676260696241', 0.00, 24.00, 0.00, '2027-03-17', 75.36, 72),
(12399, 'B3UABFYHJPUJP', 'VIROGRIP DIA SOBRE VIJOSA	', 1, '2025-06-17 12:03:40', 5.00, 3.14, 1.00, 1, '0', '24', '0', 20, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '368724565763', 0.00, 24.00, 0.00, '2026-10-17', 75.36, 72),
(12400, 'RGQGHJAR1GKFZ', 'NEOMELUBRINA (METAMIZOL SODICO) SOLUCION INYECTABLE SANOFI', 1, '2025-06-17 12:23:06', 12.00, 6.50, 1.00, 1, '0', '', '0', 4, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 12.00, '', '', 0, 0, 0.00, 0.00, 1, '216116036712', 0.00, 5.00, 0.00, '2027-04-17', 6.50, 55),
(12401, 'W6PUZW9M3BRZZ', 'PARENTEN (DIAZEPAN) 10MG TABLETAS BONIN', 1, '2025-06-17 13:06:31', 5.00, 2.97, 1.00, 1, '0', '', '0', 21, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '280099273774', 0.00, 40.00, 0.00, '2028-08-17', 119.00, 106),
(12402, 'VG2TB7VMXA0X7', 'EQUILIV (CLONAZEPAN) 2MG TABLETAS MEDPHARMA', 1, '2025-06-17 13:08:21', 6.00, 3.83, 1.00, 1, '0', '', '0', 10, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 6.00, '', '', 0, 0, 0.00, 0.00, 1, '148833752310', 0.00, 30.00, 0.00, '2027-09-17', 120.00, 106),
(12403, '38CNZYRZWHZ3V', 'GMS BALSAMICO LATA 12 GRAMOS', 1, '2025-06-17 19:33:58', 12.00, 6.25, 1.00, 1, '0', '', '0', 6, 0, 0, 0, 0, 0, 160, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 12.00, '', '', 0, 0, 0.00, 0.00, 1, '403430410360', 0.00, 1.00, 0.00, '2027-08-18', 37.50, 106),
(12404, 'TRWH18K5XYHFC', 'DOLO-NERVILAN SOLUCION INYECTABLE LANCASCO', 1, '2025-06-18 11:38:10', 60.00, 33.10, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 60.00, '', '', 0, 0, 0.00, 0.00, 1, '177946103010', 0.00, 2.00, 0.00, '2027-02-18', 33.10, 64),
(12405, 'W3VE8TE7T3K4W', 'FLUDISIN (AMBROXOL) 30MG TABLETAS', 1, '2025-06-18 11:43:05', 3.00, 0.40, 1.00, 1, '0', '', '0', 10, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.00, '', '', 0, 0, 0.00, 0.00, 1, '942457542654', 0.00, 20.00, 30.00, '2027-01-18', 4.00, 106),
(12406, 'U7VTR3QMQMQUB', 'SUBSALICILATO DE BISMUTO 262MG/15ML JARABE 120ML SELECTPHARMA	', 1, '2025-06-19 10:04:11', 21.00, 10.29, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 21.00, '', '', 0, 0, 0.00, 0.00, 1, '739369564932', 0.00, 2.00, 0.00, '2027-10-19', 10.29, 15),
(12407, '0C6WTB6HZ37RT', 'LECHE DE MAGNESIA (LAXANTE) SUSPENSION 120ML SELECTPHARMA', 1, '2025-06-19 10:07:07', 20.00, 9.36, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '668622321788', 0.00, 1.00, 0.00, '2028-01-19', 9.36, 15),
(12408, 'GT2EEE68VBXN3', 'FLEDEC PLUS JARABE 120ML INTECFA', 1, '2025-06-19 10:43:03', 91.00, 53.95, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 91.00, '', '', 0, 0, 0.00, 0.00, 1, '959458233695', 0.00, 1.00, 0.00, '2028-01-19', 53.95, 98),
(12409, 'MERAZDF6P0YY7', 'HIERRO AMINOQUELADO + ACIDO FOLICO TABLETAS RECUBIERTAS X30 SELECTPHARMA', 1, '2025-06-19 10:50:15', 50.00, 27.37, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '574314998687', 0.00, 1.00, 0.00, '2027-10-19', 27.37, 15),
(12410, '0UKF9ZZ3VCF24', 'AXTAR (CEFTRIAXONA) 1G UNIPHARM', 1, '2025-06-19 11:08:12', 140.00, 50.25, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 140.00, '', '', 0, 0, 0.00, 0.00, 1, '510120600395', 0.00, 2.00, 0.00, '2027-02-19', 50.25, 45),
(12411, 'ZYZU08D2KP79A', 'KETOCLIN (KETOCONAZOL 400MG, CLINDAMICINA 100MG) X 7 OVULOS PHARMA DEL', 1, '2025-06-19 11:11:16', 275.00, 140.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 69, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 275.00, '', '', 0, 0, 0.00, 0.00, 1, '676518345496', 0.00, 1.00, 0.00, '2028-02-19', 140.00, 111),
(12412, 'B4DW3QT2ZEQ36', 'FLAMYDOL 75 SOLUCION INYECTABLE UNIPHARM', 1, '2025-06-19 11:56:25', 50.00, 14.95, 1.00, 1, '0', '', '0', 3, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '764047987406', 0.00, 5.00, 0.00, '2028-04-19', 14.95, 45),
(12413, '2E6CXVVMAZH31', 'FLAMYDOL 9MG/5ML SUSPENSION ORAL 120ML UNIPHARM', 1, '2025-06-19 12:01:21', 100.00, 33.90, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 63, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 100.00, '', '', 0, 0, 0.00, 0.00, 1, '920146662535', 0.00, 1.00, 0.00, '2027-05-19', 33.90, 45),
(12414, 'EX6NZZMJNCN27', 'FLUCONAZOL 200MG CAPSULAS SELECTPHARMA', 1, '2025-06-19 12:10:30', 15.00, 4.25, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '827505968331', 0.00, 3.00, 0.00, '2029-03-19', 4.25, 15),
(12415, 'NDK3997WY6H8A', 'CLOTRIPLEX CREMA TOPICA 1G SELECTPHARMA', 1, '2025-06-19 12:12:00', 20.00, 9.70, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '863730995047', 0.00, 2.00, 0.00, '2027-09-19', 9.70, 15),
(12416, 'M8GKUAFNT6JBV', 'IRBERSARTAN 15OMG TABLETAS SELECTPHARMA', 1, '2025-06-19 12:13:51', 3.00, 1.64, 1.00, 1, '10', '', '0', 30, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.00, '', '', 0, 0, 0.00, 0.00, 1, '707030341759', 0.00, 30.00, 30.00, '2029-02-19', 49.48, 15),
(12417, 'TP4K3MBEE9XD9', 'CARTOR 40MG TABLETAS X20 SELECTPHARMA', 1, '2025-06-19 12:20:08', 105.00, 53.47, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 105.00, '', '', 0, 0, 0.00, 0.00, 1, '178695161120', 0.00, 1.00, 0.00, '2028-03-19', 53.47, 15),
(12418, 'QTBVCN6EV54WQ', 'LEVOGASTRICN (ESOMEPRAZOL) CAPSULAS SELECTPHARMA', 1, '2025-06-19 12:25:31', 5.00, 2.20, 1.00, 1, '0', '', '0', 23, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '045272831686', 0.00, 30.00, 0.00, '2025-10-19', 66.00, 15),
(12419, 'CJER07Q8TZAEU', 'CLONOFAX (CLONAZEPAM) 2MG TABLETAS CHEMINTER', 1, '2025-06-19 13:43:00', 6.00, 2.73, 1.00, 1, '0', '', '0', 24, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 6.00, '', '', 0, 0, 0.00, 0.00, 1, '134588583256', 0.00, 40.00, 0.00, '2029-10-19', 109.00, 106),
(12420, '9634YM229QUYB', 'TENSIL (CLORDIAZEPOXIDO) HCI 25MG TABLETAS INFASA', 1, '2025-06-19 13:45:05', 5.00, 2.87, 1.00, 1, '0', '', '0', 38, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '215202096699', 0.00, 40.00, 0.00, '2027-10-19', 115.00, 88),
(12421, '31U3YW2E9EFKB', 'COLIRIO DOBLE 15ML GOTAS SELECTPHARMA', 1, '2025-06-19 13:47:45', 30.00, 14.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '133980770375', 0.00, 2.00, 0.00, '2026-10-19', 28.00, 15),
(12422, 'KJV3K85TN1217', 'COLIRIO TRIPLE 15ML GOTAS SELECTPHARMA', 1, '2025-06-19 13:48:32', 30.00, 15.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 80, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '577396848379', 0.00, 2.00, 0.00, '2026-11-19', 15.00, 15),
(12423, 'TRVE0NJP36XZQ', 'METFORMINA CLORHIDRATO 850 + GLIBENCLAMIDA 5ML COMPRIMIDOS INFASA', 1, '2025-06-19 13:50:46', 10.00, 4.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 70, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '205499115010', 0.00, 10.00, 0.00, '2027-03-19', 40.00, 88),
(12424, '24D8BF827JJ92', 'IRS TABLETAS INFASA', 1, '2025-06-19 13:55:15', 3.50, 0.96, 1.00, 1, '0', '', '0', 36, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.50, '', '', 0, 0, 0.00, 0.00, 1, '238185243956', 0.00, 60.00, 0.00, '2026-09-19', 58.00, 88),
(12425, 'YC5AUW650Q42N', 'PASINERVA (TRANQUILIZANTE NATURAL) TABLETAS', 1, '2025-06-19 13:57:17', 2.50, 1.20, 1.00, 1, '0', '', '0', 35, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.50, '', '', 0, 0, 0.00, 0.00, 1, '023541392244', 0.00, 100.00, 0.00, '2026-11-19', 120.00, 106),
(12426, 'Y49KWEDZY7G93', 'MANTECA DE CACAO', 1, '2025-06-19 14:06:32', 3.00, 1.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 33, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 3.00, '', '', 0, 0, 0.00, 0.00, 1, '149223652786', 0.00, 20.00, 0.00, '2025-06-19', 2.00, 106),
(12427, 'KUY5Z2FGHDEGF', 'SUKROL DUO PACK TABLETAS', 1, '2025-06-23 13:03:59', 110.00, 85.50, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 110.00, '', '', 0, 0, 0.00, 0.00, 1, '772050141457', 0.00, 1.00, 0.00, '2028-02-23', 85.50, 106),
(12428, 'TK0TBHFG5WGJP', 'VITAMINAS DEL COMPLEJO B PLUS CAPSULAS', 1, '2025-06-23 13:05:43', 60.00, 38.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 60.00, '', '', 0, 0, 0.00, 0.00, 1, '167737458008', 0.00, 1.00, 0.00, '2028-03-23', 38.00, 18),
(12429, 'K586H8BW0XHGA', 'TERMOMETRO CINTA X3 PARA FRENTE', 1, '2025-06-23 13:10:21', 25.00, 13.75, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 162, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '904093239703', 0.00, 1.00, 0.00, '2025-06-23', 13.75, 106),
(12431, 'DRADX447T3N0T', 'AJ CLOMICOTIC (BETAMETASONA DIPROPIONATO, CLOTRIMAZOL Y GENTAMICINA) POMADA 12G AJFASA	', 1, '2025-06-23 13:29:43', 26.00, 15.50, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 106, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '978600625064', 0.00, 1.00, 0.00, '2027-03-23', 15.50, 36),
(12432, '3ZMXYN525B6AG', 'POMADA PENICILINA LATA 11GRAMOS LABORATORIOS LOPEZ', 1, '2025-06-23 13:31:29', 15.00, 6.50, 1.00, 1, '0', '', '0', 5, 0, 0, 0, 0, 0, 106, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '593217086330', 0.00, 1.00, 0.00, '2027-11-23', 6.50, 28),
(12433, 'BKKU1JGRMZ855', 'SERTAL COMPUESTO AMPOLLA SOLUCION INYECTABLE', 1, '2025-06-29 12:54:47', 75.00, 60.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 75.00, '', '', 0, 0, 0.00, 0.00, 1, '452745120992', 0.00, 1.00, 0.00, '2025-06-29', 60.00, 106),
(12434, '103N4YXP54RVZ', 'VITAMINA E CAPSULAS FORALSALUD', 1, '2025-07-03 19:53:47', 65.00, 24.00, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 65.00, '', '', 0, 0, 0.00, 0.00, 1, '205953745954', 0.00, 1.00, 0.00, '2025-07-04', 24.00, 106),
(12435, 'KH1T66WQJWHGD', 'ADEC INFANTIL SOLUCION ORAL SELECTPHARMA', 1, '2025-07-03 20:13:07', 30.00, 12.34, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 137, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '067023300741', 0.00, 3.00, 0.00, '2025-07-04', 12.90, 15),
(12436, 'YP6EPREJQ5GRZ', 'MEDOX TRIPLE 25000 SOLUCION INYECTABLE UNIPHARM', 1, '2025-07-03 20:14:44', 50.00, 19.42, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 90.00, '', '', 0, 0, 0.00, 0.00, 1, '008548116350', 0.00, 1.00, 0.00, '2025-07-04', 19.42, 45),
(12437, '87DCUC666PU1M', 'FLAMYDOL 75 CAPSULAS UNIPHARM', 1, '2025-07-09 20:18:16', 15.00, 10.75, 1.00, 1, '0', '', '0', 9, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 15.00, '', '', 0, 0, 0.00, 0.00, 1, '314426520034', 0.00, 4.00, 0.00, '2025-07-10', 43.00, 45),
(12438, 'B1PXXZPZ6ZFEW', 'INMUNOMIZOL (ACICLOVIR) SUSPENCION 120ML LAFCO', 1, '2025-07-11 13:56:48', 55.00, 25.35, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 126, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 55.00, '', '', 0, 0, 0.00, 0.00, 1, '566291601942', 0.00, 1.00, 0.00, '2025-07-11', 25.35, 43),
(12439, 'GR4JH4UNZPBMZ', 'SECNIDAZOL 500MG TABLETAS RECUBIERTAS SELECTPHARMA', 1, '2025-07-11 14:07:51', 10.00, 5.06, 1.00, 1, '0', '', '0', 10, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '089341187755', 0.00, 2.00, 0.00, '2025-07-11', 60.83, 15),
(12440, 'K2Y8887ZCPY1N', 'NITASEL (NITAZOXANIDA) 500MG CAJA X6 TABLETAS SELECTPHARMA', 1, '2025-07-11 14:10:13', 50.00, 16.80, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 50.00, '', '', 0, 0, 0.00, 0.00, 1, '899655055111', 0.00, 1.00, 0.00, '2025-07-11', 16.80, 15),
(12441, 'U3MPVP1594M1N', 'MERLIX STICK (DEXKETOPROFENO) 25ML SOBRES BEBIBLE', 1, '2025-07-11 14:11:36', 20.00, 11.35, 1.00, 1, '0', '', '0', 5, 0, 0, 0, 0, 0, 67, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 20.00, '', '', 0, 0, 0.00, 0.00, 1, '836640458147', 0.00, 2.00, 0.00, '2025-07-11', 56.75, 106),
(12442, 'W1CJTQZWYJCA6', 'NEOGEL SUSPENSION 360ML UNIPHARM', 1, '2025-07-11 14:17:18', 60.00, 24.10, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 126, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 60.00, '', '', 0, 0, 0.00, 0.00, 1, '136592509105', 0.00, 1.00, 0.00, '2025-07-11', 24.10, 45),
(12443, 'JHQTVPNCFFKD2', 'TRILOX SUSPENSION 360ML SELECTPHARMA', 1, '2025-07-11 14:18:25', 27.00, 15.55, 1.00, 1, '0', '', '0', 2, 0, 0, 0, 0, 0, 126, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 27.00, '', '', 0, 0, 0.00, 0.00, 1, '537190960701', 0.00, 1.00, 0.00, '2025-07-11', 15.55, 15),
(12444, 'M0RKJQVBA7938', 'EXFLU TABLETAS SELECTPHARMA', 1, '2025-07-11 14:27:42', 10.00, 4.30, 1.00, 1, '0', '', '0', 7, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '480306512900', 0.00, 3.00, 0.00, '2025-07-11', 4.30, 15),
(12445, 'CQKFCFBJ2WEKJ', 'EXFLU NOCHE GEL SELECTPHARMA', 1, '2025-07-11 14:30:07', 5.00, 2.02, 1.00, 1, '0', '', '0', 29, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '676405465324', 0.00, 10.00, 0.00, '2025-07-11', 60.83, 15),
(12446, 'Z3U62K15G1AF6', 'ENERHIT X10 AMPOLLAS BEBIBLES', 1, '2025-07-11 14:33:37', 100.00, 62.86, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 62, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 100.00, '', '', 0, 0, 0.00, 0.00, 1, '802581622211', 0.00, 1.00, 0.00, '2025-07-11', 62.86, 106),
(12447, 'YBTRGR75RFT9C', 'BIFONEX 1% AEROSOL 40GRAMOS SELECTPHARMA', 1, '2025-07-11 14:36:37', 55.00, 33.79, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 134, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 55.00, '', '', 0, 0, 0.00, 0.00, 1, '152844186861', 0.00, 1.00, 0.00, '2025-07-11', 33.79, 15),
(12448, '5QP6B9DKP11X2', 'BIFONEX 1% CREMA TOPICA TUBO 15GRAMOS SELECPTHARMA', 1, '2025-07-11 14:38:23', 30.00, 19.05, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 81, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '652933745330', 0.00, 1.00, 0.00, '2025-07-11', 19.05, 15),
(12449, '59A1HYKVQWREP', 'CEFTRIAXONA 1G AMPOLLA SELECTPHARMA', 1, '2025-07-11 14:39:49', 25.00, 12.22, 1.00, 1, '0', '', '0', 5, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 25.00, '', '', 0, 0, 0.00, 0.00, 1, '343517373948', 0.00, 1.00, 0.00, '2025-07-11', 12.22, 15),
(12450, 'MZ819FT0Y40BK', 'SULFABAC (TRIMETROPIN', 1, '2025-07-11 14:41:45', 2.00, 0.56, 1.00, 1, '0', '', '0', 30, 0, 0, 0, 0, 0, 65, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 2.00, '', '', 0, 0, 0.00, 0.00, 1, '470760241617', 0.00, 30.00, 0.00, '2025-07-11', 17.05, 15),
(12451, 'TRJE8GRC1CBYX', 'KLORPROSIN SOLUCION INYECTABLE SELECTPHARMA', 1, '2025-07-11 14:49:46', 30.00, 14.53, 1.00, 1, '0', '', '0', 1, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '394749503305', 0.00, 1.00, 0.00, '2025-07-11', 14.53, 15),
(12452, '4VWYNC5G6RKT6', 'DEXALUK (DEXAMETASONA) AMPOLLA INYECTABLE LUKHAN', 1, '2025-07-23 21:09:38', 10.00, 1.60, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 10.00, '', '', 0, 0, 0.00, 0.00, 1, '863591757867', 0.00, 10.00, 0.00, '2025-07-24', 1.60, 112),
(12453, 'YXQDFMX279E2E', 'DOLO-TETRAVIT PLUS SOLUCION INYECTABLE', 1, '2025-07-24 21:59:56', 78.00, 59.25, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 78.00, '', '', 0, 0, 0.00, 0.00, 1, '625051650642', 0.00, 1.00, 0.00, '2025-07-25', 59.25, 106),
(12454, '63YA6649W3MV6', 'CLINDAMICIINIA 300MG CAPSULAS MEDPHARMA', 1, '2025-07-24 22:01:34', 5.00, 3.00, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 64, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 5.00, '', '', 0, 0, 0.00, 0.00, 1, '984275472706', 0.00, 10.00, 0.00, '2025-07-25', 90.00, 106),
(12455, 'Q5AFMBY110V7W', 'DOLO-VITANERVO SOLUCION INYECTABLE', 1, '2025-07-24 22:02:50', 30.00, 12.50, 1.00, 1, '0', '', '0', 0, 0, 0, 0, 0, 0, 122, 1, 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 'nuevo.jpg', 0, 30.00, '', '', 0, 0, 0.00, 0.00, 1, '833969036391', 0.00, 1.00, 0.00, '2025-07-25', 12.50, 106);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resumen_documentos`
--

CREATE TABLE `resumen_documentos` (
  `id_resumen` int(10) NOT NULL,
  `numero` varchar(8) NOT NULL,
  `fecha` date NOT NULL,
  `aceptado_resumen` varchar(100) NOT NULL,
  `xml` varchar(30) NOT NULL,
  `ticket` varchar(20) NOT NULL,
  `hash_cpe` varchar(100) NOT NULL,
  `cod_sunat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruc`
--

CREATE TABLE `ruc` (
  `id` int(11) NOT NULL,
  `ruc` text NOT NULL,
  `nombre` text NOT NULL,
  `direccion` text NOT NULL,
  `departamento` text NOT NULL,
  `provincia` text NOT NULL,
  `distrito` text NOT NULL,
  `telefono` text NOT NULL,
  `email` text NOT NULL,
  `web` text NOT NULL,
  `rubro` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `id_servicio` int(10) NOT NULL,
  `id_cliente` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `doc_servicio` varchar(30) NOT NULL,
  `tienda` int(2) NOT NULL,
  `nom_ser` varchar(100) NOT NULL,
  `tipo` int(2) NOT NULL,
  `pre_ser` decimal(5,2) NOT NULL,
  `ade_ser` decimal(5,2) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `des_ser` text NOT NULL,
  `car1` varchar(200) NOT NULL,
  `car2` varchar(200) NOT NULL,
  `car3` varchar(200) NOT NULL,
  `car4` varchar(200) NOT NULL,
  `car5` varchar(200) NOT NULL,
  `car6` varchar(200) NOT NULL,
  `com_ser` text NOT NULL,
  `ter_ser` int(2) NOT NULL,
  `cancelado` int(2) NOT NULL,
  `telefono1` varchar(100) NOT NULL,
  `guia` varchar(100) NOT NULL,
  `tip_doc` int(2) NOT NULL,
  `activo` int(2) NOT NULL,
  `detalle` int(10) NOT NULL,
  `fecha_emision` datetime NOT NULL,
  `fecha_reparado` datetime NOT NULL,
  `saliente` datetime NOT NULL,
  `desechado` datetime NOT NULL,
  `aceptar_guia` int(2) NOT NULL,
  `reparado` int(2) NOT NULL,
  `entregado` int(10) NOT NULL,
  `id_reparado` int(10) NOT NULL,
  `id_entregado` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL,
  `nom_servicio` text NOT NULL,
  `cod_servicio` varchar(10) NOT NULL,
  `pre_servicio` decimal(10,2) NOT NULL,
  `tipo` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicio`, `nom_servicio`, `cod_servicio`, `pre_servicio`, `tipo`) VALUES
(9, 'PUESTA INYECCION PENICILINA', '001', 10.00, 0),
(11, 'PUESTA DE INYECCION NORMAL', '1234', 5.00, 0),
(12, 'TOMA PRESION', '123456', 5.00, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_tipo`
--

CREATE TABLE `sub_tipo` (
  `id_sub_tipo` int(2) NOT NULL,
  `id_tipo` int(2) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `sub_tipo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `sub_tipo`
--

INSERT INTO `sub_tipo` (`id_sub_tipo`, `id_tipo`, `nombre`, `sub_tipo`) VALUES
(1, 1, 'Laptop', 'Marca'),
(2, 1, 'Laptop', 'Modelo'),
(3, 1, 'Laptop', 'Nro Serie'),
(4, 1, 'Laptop', 'Procesador'),
(5, 1, 'Laptop', 'Memoria Ram'),
(7, 2, 'Computadora', 'Marca'),
(8, 2, 'Computadora', 'Modelo'),
(9, 2, 'Computadora', 'Placa'),
(10, 2, 'Computadora', 'Procesador'),
(11, 2, 'Computadora', 'Memoria Ram'),
(13, 3, 'Impresora', 'Tipo'),
(14, 3, 'Impresora', 'Marca'),
(15, 3, 'Impresora', 'Modelo'),
(16, 3, 'Impresora', 'Nro Serie');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `id_sucursal` int(10) NOT NULL,
  `tienda` int(10) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ruc` varchar(20) NOT NULL,
  `direccion` text NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `ubigeo` varchar(10) NOT NULL,
  `caja` int(2) NOT NULL,
  `dep_suc` varchar(100) NOT NULL,
  `pro_suc` varchar(100) NOT NULL,
  `dis_suc` varchar(100) NOT NULL,
  `descripcion_sucursal` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `sucursal`
--

INSERT INTO `sucursal` (`id_sucursal`, `tienda`, `nombre`, `ruc`, `direccion`, `correo`, `telefono`, `foto`, `ubigeo`, `caja`, `dep_suc`, `pro_suc`, `dis_suc`, `descripcion_sucursal`) VALUES
(1, 1, 'FARMACIA DE PAZ', '55425925', '10 ave 4-99 D zona 4 de linda vista villa nueva', 'belsoftinc@gmail.com', 'CEL: 53894592/46398632', 'LOGOFARMACIADEPAZ.jpg', '01064', 1, 'Guatemala', 'Villa Nueva', 'Linda Vista', 'Mas vida y salud a tu alcance ...!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id_tipo` int(2) NOT NULL,
  `tipo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id_tipo`, `tipo`) VALUES
(1, 'Laptops'),
(2, 'Computadoras'),
(3, 'Impresoras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp`
--

CREATE TABLE `tmp` (
  `id_tmp` int(11) NOT NULL,
  `id_producto` varchar(100) NOT NULL,
  `cantidad_tmp` decimal(10,2) NOT NULL,
  `precio_tmp` decimal(10,2) DEFAULT NULL,
  `session_id` varchar(100) NOT NULL,
  `tienda` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Volcado de datos para la tabla `tmp`
--

INSERT INTO `tmp` (`id_tmp`, `id_producto`, `cantidad_tmp`, `precio_tmp`, `session_id`, `tienda`) VALUES
(12050, '11750', 1.00, 1.30, '69657a38a204a82eef671fb80ba2c865', 53.00),
(12051, '11817', 1.00, 1.00, '69657a38a204a82eef671fb80ba2c865', 3.00),
(12056, '11782', 1.00, 13.00, 'f69365b734af5e9cb593cf7e9d15fd8f', 3.00),
(12058, '11772', 1.00, 28.00, '5c64feb85da87c55b1fc06a2aef21a6a', 26.00),
(12059, '11748', 1.00, 0.50, '730391f18b3c0be799a336e2c3ea5f10', 306.00),
(12129, '11748', 1.00, 0.50, 'e715b64464951d85f97e0fa911be8be2', 306.00),
(12130, '11748', 1.00, 0.50, 'e715b64464951d85f97e0fa911be8be2', 306.00),
(12195, '11748', 1.00, 0.50, 'decc8b215b9ae61318b389839202d087', 306.00),
(12196, '11816', 1.00, 1.80, 'c671c9bd44e0ec3e25260b64c5e84cc7', 43.00),
(13507, '12121', 1.00, 2.00, '5b86f2e0015d468eebcf0d182713694a', 89.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `und`
--

CREATE TABLE `und` (
  `id_und` int(2) NOT NULL,
  `nom_und` varchar(100) NOT NULL,
  `cod_und` varchar(4) NOT NULL,
  `xml_und` varchar(4) NOT NULL,
  `etiqueta` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `und`
--

INSERT INTO `und` (`id_und`, `nom_und`, `cod_und`, `xml_und`, `etiqueta`) VALUES
(1, 'UNIDAD                           ', '1', 'NIU', 'UND'),
(2, 'CAJA                                                  ', '2', 'NIU', 'CAJA'),
(3, 'BLISTER', '3', 'NIU', 'BLISTER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `nombres` varchar(50) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `user_name` varchar(64) NOT NULL COMMENT 'user''s name, unique',
  `hora` time NOT NULL,
  `user_email` varchar(64) NOT NULL COMMENT 'user''s email, unique',
  `date_added` datetime NOT NULL,
  `accesos` varchar(150) NOT NULL,
  `dni` varchar(200) NOT NULL,
  `domicilio` text NOT NULL,
  `telefono` text NOT NULL,
  `sucursal` int(2) NOT NULL,
  `foto` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci COMMENT='user data';

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `nombres`, `clave`, `user_name`, `hora`, `user_email`, `date_added`, `accesos`, `dni`, `domicilio`, `telefono`, `sucursal`, `foto`) VALUES
(1, 'admin', 'admin', 'admin', '00:00:00', 'contacto@gmail.com', '2016-05-21 15:06:00', '1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1', '87654321', 'lima', '987654321', 1, 'usuario1.jpg'),
(9, 'Telma Patricia Lucero', 'lucero', 'telma', '00:00:00', 'telmapatricia1976@gmail.com', '2023-07-22 15:53:12', '.1.....1..1.1.1.1.1.1.1.1.1...1.1..1...1.1.1.1.1...1...........1.......', '2502786770609', '1AVE 7-75 Casa 74B Playa de ORO Zona 11 SMS', '53894592', 1, 'usuario9.jpg'),
(10, 'Bryan Eduardo Lucero de Paz', 'lucero', 'bryan', '00:00:00', 'bryaneduardlucero@gmail.com', '2023-07-22 16:22:17', '1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1.1......1.1', '3169012290505', '1AVE 7-75 Casa 74B Playa de ORO Zona 11 SMS', '46398632', 1, 'usuario10.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(10) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `documento` int(11) NOT NULL,
  `direccion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video`
--

CREATE TABLE `video` (
  `id_video` int(12) NOT NULL,
  `menu` text NOT NULL,
  `submenu` text NOT NULL,
  `descripcion` text NOT NULL,
  `video` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `video`
--

INSERT INTO `video` (`id_video`, `menu`, `submenu`, `descripcion`, `video`) VALUES
(2, 'Empresa', 'Empresa', 'Empresa', 'https://www.youtube.com/watch?v=Oocazta9OmM'),
(3, 'Empresa', 'Resumen', 'Resumen', 'https://www.youtube.com/watch?v=PVT_41NYqY4'),
(4, 'Empresa', 'Sucursal', 'Sucursal', 'https://www.youtube.com/watch?v=i5aC_FEf8v8'),
(5, 'Empresa', 'Caja', 'Caja', 'https://www.youtube.com/watch?v=rpA5jGMpyBM'),
(6, 'Usuarios', 'Usuarios', 'Usuarios', 'https://www.youtube.com/watch?v=mrYM6gGwRLw'),
(7, 'Usuarios', 'Accesos', 'Accesos', 'https://www.youtube.com/watch?v=iM1_aZalvFs'),
(8, 'Productos y Servicios', 'Categorias', 'Categorias', 'https://www.youtube.com/watch?v=buLSuOs4cgw'),
(9, 'Productos y Servicios', 'Ingreso productos', 'Ingreso productos', 'https://www.youtube.com/watch?v=kClo-YxD6R4'),
(10, 'Productos y Servicios', 'Lista de productos', 'Lista de productos', 'https://www.youtube.com/watch?v=nveP-cCKCtc'),
(11, 'Productos y Servicios', 'Lista de Servicios', 'Lista de Servicios', 'https://www.youtube.com/watch?v=FeewPH5AN1g'),
(12, 'Productos y Servicios', 'Kardex de productos', 'Kardex de productos', 'https://www.youtube.com/watch?v=0Tndqld98c0'),
(13, 'Productos y Servicios', 'Entradas y salidas de productos', 'Entradas y salidas de productos', 'https://www.youtube.com/watch?v=q4O3a6drZ8Q'),
(14, 'Productos y Servicios', 'Transferencia de productos', 'Transferencia de productos', 'https://www.youtube.com/watch?v=4fcF9mgdqoA'),
(15, 'Productos y Servicios', 'Lista de Transferencia de productos', 'Lista de Transferencia de productos', 'https://www.youtube.com/watch?v=krWNC9ULZO0'),
(16, 'Productos y Servicios', 'Consulta de productos', 'Consulta de productos', 'https://www.youtube.com/watch?v=-WR8peSfkqM'),
(17, 'Productos y Servicios', 'Productos mas vendidos', 'Productos mas vendidos', 'https://www.youtube.com/watch?v=Y3D5YiWtaM8'),
(18, 'Productos y Servicios', 'Consulta de precios', 'Consulta de precios', 'https://www.youtube.com/watch?v=ui5PSEjx6Ek'),
(19, 'Proveedores', 'Proveedores', 'Agregar,editar,eliminar proveedores', 'https://www.youtube.com/watch?v=udFw7qsraLE'),
(20, 'Clientes', 'Clientes', 'Agregar,editar,eliminar clientes', 'https://www.youtube.com/watch?v=CXId2GCi7uk'),
(21, 'Ventas de productos', 'ConfiguraciÃ³n de documentos', 'ConfiguraciÃ³n de documentos', 'https://www.youtube.com/watch?v=GNdg-Br1HFc'),
(23, 'Ventas de productos', 'Ingreso factura/Boleta/Nota de venta', 'Ingreso factura/Boleta/Nota de venta', 'https://www.youtube.com/watch?v=7eghFzpiy9I'),
(24, 'Ventas de productos', 'Ingreso CotizaciÃ³n', 'Documento que tiene el mismo procedimiento de una venta pero que no descuenta el stock, ni se considera venta', ''),
(25, 'Ventas de productos', 'Ingreso nota de debito/credito', 'Ingreso nota de debito/credito', 'https://www.youtube.com/watch?v=V49tchOMI4U'),
(26, 'Ventas de productos', 'Lista de ventas', 'Lista de ventas', 'https://www.youtube.com/watch?v=3_MxjggA4YQ'),
(27, 'Ventas de productos', 'Lista de cotizaciÃ³n', 'Lista de cotizaciÃ³n', 'https://www.youtube.com/watch?v=9L9Isub4i6k'),
(28, 'Ventas de productos', 'Lista de notas de credito/debito', 'Lista de notas de credito/debito', 'https://www.youtube.com/watch?v=FWxo_z4vJMg'),
(29, 'Ventas de productos', 'Ventas por cobrar', 'Ventas por cobrar', 'https://www.youtube.com/watch?v=E5uJYKRv55A'),
(30, 'Ventas de productos', 'Lista de cobros', 'Lista de cobros', 'https://www.youtube.com/watch?v=E5uJYKRv55A'),
(31, 'FacturaciÃ³n ElectrÃ³nica', 'ConfiguraciÃ³n de documentos electrÃ³nicos', 'Ingresar usuario  y clave sol secundarios asÃ­ como el certificado digital en formato .pfx', ''),
(32, 'FacturaciÃ³n ElectrÃ³nica', 'EnvÃ­o de documentos electrÃ³nicos', 'EnvÃ­o de documentos electrÃ³nicos factura, boletas y notas de crÃ©dito/dÃ©bito', 'https://www.youtube.com/watch?v=CSrb6nzgnag'),
(33, 'FacturaciÃ³n ElectrÃ³nica', 'Resumen diario de boletas', 'Resumen diario de boletas', 'https://www.youtube.com/watch?v=eeNZLkpPSqE'),
(34, 'FacturaciÃ³n ElectrÃ³nica', 'ComunicaciÃ³n de baja', 'ComunicaciÃ³n de baja', 'https://www.youtube.com/watch?v=hYKytHY6KbU'),
(35, 'FacturaciÃ³n ElectrÃ³nica', 'GuÃ­a de remisiÃ³n', 'GuÃ­a de remisiÃ³n', 'https://www.youtube.com/watch?v=hyP-i5Wro2E'),
(36, 'Compras', 'Compras factura/boleta/Nota de venta', 'Compras factura/boleta/Nota de venta', 'https://www.youtube.com/watch?v=P4-FpmvWs6c'),
(37, 'Compras', 'Requerimiento', 'Documento que tiene el mismo procedimiento de una compra pero que no aumenta el stock, ni se considera una compra', ''),
(38, 'Compras', 'Consulta de compras', 'Contiene toda la lista de compras', 'https://www.youtube.com/watch?v=Exh5Q2Bm2uY'),
(39, 'Compras', 'Compras por pagar', 'Compras por pagar', 'https://www.youtube.com/watch?v=W0DyBLPoge4'),
(40, 'Compras', 'Lista de pagos', 'Lista de pagos', 'https://www.youtube.com/watch?v=W0DyBLPoge4'),
(41, 'Ent/Sal Mercaderia', 'GuÃ­a entrada y salida de mercaderÃ­as', 'GuÃ­a entrada y salida de mercaderÃ­as', 'https://www.youtube.com/watch?v=coL9_rJf2cY'),
(42, 'Ent/Sal Mercaderia', 'Lista de guias', 'Lista de guias', 'https://www.youtube.com/watch?v=l7sjwDJA3yA'),
(43, 'Pagos/Cobros-Reportes', 'Reporte de entrada y salida', 'Reporte de entrada y salida', 'https://www.youtube.com/watch?v=lK3k6CUoPmY'),
(44, 'Pagos/Cobros-Reportes', 'Otros pagos/cobros', 'Otros pagos/cobros', 'https://www.youtube.com/watch?v=3oK0g6r6e2s'),
(45, 'Pagos/Cobros-Reportes', 'Reporte de ventas/compras', 'Reporte de ventas/compras', ''),
(46, 'Reporte de Ventas', 'Ventas por vendedor mensual/anual', 'Ventas por vendedor mensual/anual', 'https://www.youtube.com/watch?v=v5j2ZVuNBK4'),
(47, 'Reporte de Ventas', 'Ventas por vendedor diario', 'Ventas por vendedor diario', 'https://www.youtube.com/watch?v=LqdEOFszNR4'),
(48, 'Reporte de Ventas', 'Ventas por cliente mensual/anual', 'Ventas por cliente mensual/anual', 'https://www.youtube.com/watch?v=1qHP-Qqqk7k'),
(49, 'Reporte de Ventas', 'Ventas por cliente diario', 'Ventas por cliente diario', 'https://www.youtube.com/watch?v=pPQvQmkY0f0'),
(51, 'Reporte de Ventas', 'Ventas por producto mensual/anual', 'Ventas por producto mensual/anual', 'https://www.youtube.com/watch?v=BLlFHGbHxFc'),
(52, 'Reporte de Ventas', 'Ventas por producto diario', 'Ventas por producto diario', 'https://www.youtube.com/watch?v=2WNUMBhunAI'),
(53, 'Reporte de Compras', 'Compras por vendedor mensual/anual', 'Compras por vendedor mensual/anual', 'https://www.youtube.com/watch?v=ZSUD7PgSX64'),
(54, 'Reporte de Compras', 'Compras por vendedor diario', 'Compras por vendedor diario', 'https://www.youtube.com/watch?v=xjknmEBvflE'),
(55, 'Reporte de Compras', 'Compras por proveedor mensual/anual', 'Compras por proveedor mensual/anual', 'https://www.youtube.com/watch?v=bW2n0p9ruhs'),
(56, 'Reporte de Compras', 'Compras por proveedor diario', 'Compras por proveedor diario', 'https://www.youtube.com/watch?v=gL7Jo60yO30'),
(57, 'Reporte de Compras', 'Compras por producto mensual/anual', 'Compras por producto mensual/anual', 'https://www.youtube.com/watch?v=PeRUzOQgfHw'),
(58, 'Reporte de Compras', 'Compras por producto diario', 'Compras por producto diario', 'https://www.youtube.com/watch?v=2LDZUjYegpU'),
(59, 'Contabilidad', 'Calculo de IGV', 'Calculo de IGV', 'https://www.youtube.com/watch?v=97IFMrYNeY0'),
(60, 'Contabilidad', 'Kardex valorizado', 'Kardex valorizado', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`id_asistencia`),
  ADD UNIQUE KEY `unico` (`unico`);

--
-- Indices de la tabla `baja_sunat`
--
ALTER TABLE `baja_sunat`
  ADD PRIMARY KEY (`id_baja`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`id_caja`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id_carrito`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `nom_cat` (`nom_cat`);

--
-- Indices de la tabla `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_online`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`);

--
-- Indices de la tabla `comprobante_pago`
--
ALTER TABLE `comprobante_pago`
  ADD PRIMARY KEY (`id_comprobante`);

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id_contacto`);

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datosempresa`
--
ALTER TABLE `datosempresa`
  ADD PRIMARY KEY (`id_emp`);

--
-- Indices de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `numero_cotizacion` (`numero_factura`,`id_producto`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`id_documento`);

--
-- Indices de la tabla `documentos_electronicos`
--
ALTER TABLE `documentos_electronicos`
  ADD PRIMARY KEY (`id_doc`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id_factura`);

--
-- Indices de la tabla `factura_carrito`
--
ALTER TABLE `factura_carrito`
  ADD PRIMARY KEY (`id_factura1`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indices de la tabla `fotos1`
--
ALTER TABLE `fotos1`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indices de la tabla `globales`
--
ALTER TABLE `globales`
  ADD PRIMARY KEY (`id_global`);

--
-- Indices de la tabla `guia`
--
ALTER TABLE `guia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_inventario`);

--
-- Indices de la tabla `laborales`
--
ALTER TABLE `laborales`
  ADD PRIMARY KEY (`id_laboral`);

--
-- Indices de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  ADD PRIMARY KEY (`id_laboratorio`);

--
-- Indices de la tabla `pack`
--
ALTER TABLE `pack`
  ADD PRIMARY KEY (`id_pack`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `resumen_documentos`
--
ALTER TABLE `resumen_documentos`
  ADD PRIMARY KEY (`id_resumen`);

--
-- Indices de la tabla `ruc`
--
ALTER TABLE `ruc`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`),
  ADD UNIQUE KEY `cod` (`cod_servicio`),
  ADD UNIQUE KEY `nom` (`nom_servicio`(10));

--
-- Indices de la tabla `sub_tipo`
--
ALTER TABLE `sub_tipo`
  ADD PRIMARY KEY (`id_sub_tipo`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`id_sucursal`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `tmp`
--
ALTER TABLE `tmp`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indices de la tabla `und`
--
ALTER TABLE `und`
  ADD PRIMARY KEY (`id_und`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `id_asistencia` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `baja_sunat`
--
ALTER TABLE `baja_sunat`
  MODIFY `id_baja` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `id_caja` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id_carrito` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=604;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=682;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8742;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id_contacto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_factura`
--
ALTER TABLE `detalle_factura`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6735;

--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `id_documento` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `documentos_electronicos`
--
ALTER TABLE `documentos_electronicos`
  MODIFY `id_doc` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3689;

--
-- AUTO_INCREMENT de la tabla `factura_carrito`
--
ALTER TABLE `factura_carrito`
  MODIFY `id_factura1` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id_foto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `fotos1`
--
ALTER TABLE `fotos1`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `globales`
--
ALTER TABLE `globales`
  MODIFY `id_global` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `guia`
--
ALTER TABLE `guia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_inventario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `laborales`
--
ALTER TABLE `laborales`
  MODIFY `id_laboral` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `laboratorio`
--
ALTER TABLE `laboratorio`
  MODIFY `id_laboratorio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT de la tabla `pack`
--
ALTER TABLE `pack`
  MODIFY `id_pack` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12456;

--
-- AUTO_INCREMENT de la tabla `resumen_documentos`
--
ALTER TABLE `resumen_documentos`
  MODIFY `id_resumen` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ruc`
--
ALTER TABLE `ruc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12052;

--
-- AUTO_INCREMENT de la tabla `servicio`
--
ALTER TABLE `servicio`
  MODIFY `id_servicio` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `sub_tipo`
--
ALTER TABLE `sub_tipo`
  MODIFY `id_sub_tipo` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `id_sucursal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id_tipo` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tmp`
--
ALTER TABLE `tmp`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13950;

--
-- AUTO_INCREMENT de la tabla `und`
--
ALTER TABLE `und`
  MODIFY `id_und` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
