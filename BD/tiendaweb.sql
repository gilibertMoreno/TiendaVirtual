-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 31-10-2020 a las 01:56:35
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id15234578_tiendaweb`
--
CREATE DATABASE IF NOT EXISTS `id15234578_tiendaweb` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id15234578_tiendaweb`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `clave` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `nombres`, `apellidos`, `email`, `clave`) VALUES
(1, 'Admin', 'Admin', 'G&G@ufps.edu.co', '12345');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `estado` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `descripcion`, `estado`) VALUES
(1, 'Moda y Accesorios', '1'),
(3, 'Tecnología y Computadoras', '1'),
(4, 'Electrodomésticos', '1'),
(5, 'Salud y Belleza', '1'),
(8, 'Bebes, Niños y juguetería', '1'),
(9, 'Deportes y Tiempo Libre', '0'),
(10, 'Ferretería Y Vehículos', '1'),
(11, 'Teléfonos celulares', '1'),
(12, 'General motors', 'E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `quines_somos` varchar(500) NOT NULL,
  `email_contacto` varchar(50) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono_contacto` varchar(20) NOT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `quines_somos`, `email_contacto`, `direccion`, `telefono_contacto`, `facebook`, `twitter`, `instagram`) VALUES
(0, 'G&G software', 'Grupo Éxito es una empresa multilatina colombiana del sector retail. Nació en 1905 con la marca Carulla y desde 1999 su accionista mayoritario es el grupo francés Casino. Es líder del retail en Colombia, con las marcas Éxito, Carulla, Super Inter, Surtimax, Surtimayorista, y su marca de centros comerciales Viva. También tiene presencia en Uruguay con las marcas Grupo Disco y Grupo Devoto, y en Argentina con las marcas Libertad y Paseo.', 'G&G@ufps.edu.co', 'Avenida Siempreviva 742', '3103486239', 'https://www.facebook.com/', 'https://twitter.com/', 'instagram.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Arturo Calle', 'Reconocida empresa de origen colombiano'),
(2, 'ACER', 'marca española '),
(3, 'HP', 'marca hp'),
(4, 'Lenovo', 'Marca lenovo en alianza con motorola'),
(5, 'ASUS', 'Marca Asus'),
(6, 'EPSON', 'Marca EPSON'),
(7, 'HACEB', 'Marca HACEB'),
(8, 'SAMSUNG', 'Marca SAMSUNG'),
(9, 'OSTER', 'Marca OSTER'),
(10, 'HOME ELEMENTS', 'MARCA HOME'),
(11, 'NESQUIK', 'Marca NESQUIK'),
(13, 'Tesla', 'Tesla es una reconocida marca de automóviles eléctricos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `referencia` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion_corta` varchar(250) NOT NULL,
  `detalle` text NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `palabras_clave` varchar(100) NOT NULL,
  `estado` varchar(1) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `img` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `referencia`, `nombre`, `descripcion_corta`, `detalle`, `valor`, `palabras_clave`, `estado`, `id_categoria`, `id_marca`, `img`) VALUES
(4, '4fUU5ASS5', 'Computador Portátil Acer 2020', 'Computador Portátil Acer 14 Pulgadas R5 8GB 1TB A31422GR8W - ACER', 'Este computador portátil le brinda todo el rendimiento que necesita, ya sea en casa, en la escuela o en el trabajo. Además de contar con un diseño elegante, la Aspire 3 lo acompañara dondequiera que deba ir.', 99.40, 'Exito, Portatil, Laptop, Acer', 'N', 1, 1, '1.webp'),
(5, '6EUU56AA', 'Maletín HP Pavilion Gaming', 'Maletín HP Pavilion Gaming 300 17 Pulgadas 6EUU56AA - HP', 'Número de Piezas\r\n1\r\nUmp del Empaque 1\r\nKILOGRAMO\r\nReferencia\r\n6EUU56AA', 189.90, 'Hp, Maletin, Gaming', '1', 3, 3, '3.webp'),
(6, 'X412FA-EK2', 'Computador Portátil ASUS VivoBook', 'Computador Portátil ASUS VivoBook 14 Pulgadas Ci3 4GB 512GB SSD X412FA-EK296T - ASUS', 'Tamaño de Pantalla\r\n14 Pulgadas\r\nSistema Operativo\r\nWindows 10\r\nDisco Duro\r\n512 Gb\r\nTipo De pantalla\r\nLED\r\nNúmero de Piezas\r\n0\r\nUmp del Empaque 1\r\nKILOGRAMO\r\nResolución\r\nFhd\r\nCapacidad de Disco Duro\r\n501 GB a 1 TB\r\nMarca Procesador\r\nIntel\r\nNombre Procesador\r\nCore i3\r\nTipo de disco duro\r\nDisco de estado solido (SSD)\r\nRango Tamaño Pantalla\r\n14 a 14.9 Pulgadas\r\nMemoria del Sistema Ram\r\n4 Gb\r\nModelo\r\nX412FA-EK296T\r\nNúmero De Puertos USB\r\n3\r\nVelocidad del procesador\r\n2.1 GHz (4M Cache, up to 3.9 GHz)\r\nVersión sistema operativo\r\n10\r\nFuncionalidades\r\nCamara Web Integrada\r\nPuerto HDMI\r\nSi\r\nProcesador\r\nIntel® Core™ i3-8145U\r\nReferencia\r\nX412FA-EK2', 1.61, 'Asus, Portatil, VivoBook', '1', 3, 5, '4.webp'),
(7, 'PLU: 100065442', 'Impresora Multifuncional Epson Ecotank L3110', 'Impresora Multifuncional Epson Ecotank L3110 Carga Continua - EPSON', 'La multifuncional EcoTank L3110 te ofrece la revolucionaria impresión sin cartuchos, con nuevo diseño de tanques frontales, botellas de tinta con llenado automático y codificadas para llenado fácil de color. Con gran economía y tranquilidad en la impresión, la EcoTank L3110 te permite imprimir hasta 7.500 páginas a color o 4.500 páginas en negro con calidad profesional y alta velocidad. Imprime cientos de proyectos sin interrupciones, con los juegos de botellas de tinta original Epson que equivalen a unos 35 juegos de cartuchos de tinta , ahorrando hasta 90% en tinta con las botellas de reemplazo de bajo costo.', 574.77, 'Impresora, EPSON, Multifuncional, EKOTANK', '1', 3, 6, '1.webp'),
(9, '1356326', 'HORNO MICROONDAS', 'HORNO MICROONDAS 1.1 PIES SAMSUNG MS32J5133A - SAMSUNG', 'Mantener temperatura\r\nLa función Mantener temperatura permite mantener la comida caliente sin sobre cocinar. Puedes escoger Modo caliente (70°C) o Modo Tibio (50°C) y tu comida mantiene sabor y textura y lista para servir. Cocina recetas saludables\r\nCuenta con hasta 16 recetas preprogramadas para hacer tu vida más fácil. Cocina desde pechuga de pollo y filetes de salmón hasta habichuelas y arroz integral, con la garantía de que el resultado será comida fresca y deliciosa.', 308.15, 'Horno Miroondas, SAMSUNG', '1', 4, 8, '6.webp'),
(12, '1724045', 'Celular Samsung Galaxy A30s', 'Celular Samsung Galaxy A30s DS 128 GB Violeta - SAMSUNG', 'Diseño único y elegante\r\nDa de qué hablar con el diseño holográfico de la parte posterior de tu teléfono, que se adapta perfectamente a tu mano. Elígelo en tres colores: prisma negro, blanco y violeta.  Diseño único y elegante\r\nDa de qué hablar con el diseño holográfico de la parte posterior de tu teléfono, que se adapta perfectamente a tu mano. Elígelo en tres colores: prisma negro, blanco y violeta.', 699.90, 'Celular, Galaxy, Samsung, A30, Violeta', '1', 3, 8, '9.webp'),
(13, '100379436', 'Diadema Gamer Kotion', 'Diadema Gamer Kotion Each G9000 Con Microfono Usb Led - KOTION EACH', 'KOTION G9000 es un tipo principal de auriculares de juego, que te trae un campo de sonido vivo, claridad de sonido, sensación de choque de sonido. Sus almohadillas super suaves para la oreja son más cómodas para llevar mucho tiempo y es un gran auricular para el jugador.\r\n\r\nCaracterísticas:\r\nControlador de alta precisión de 40mm, te trae un campo de sonido vivo, claridad de sonido, sensación de choque de sonido\r\n\r\nEspléndido aislamiento de ruido ambiental.\r\n\r\n3,5mm conector es adecuado para iPhone 6/6/6 Plus Samsung S5... S4... LG Xiaomi iPad PC portátil tablet etc\r\n\r\nOrejeras usadas con material de cuero respetuoso con la piel, y almohadillas super suaves que son más cómodas para llevar mucho tiempo.\r\n\r\nLas luces LED brillantes están diseñadas en los auriculares, resaltando la atmósfera del juego.\r\n\r\nEl cable trenzado, resistente a la tracción, reduce la resistencia externa; el cable de Velcro, evita que la línea se ensanche.\r\n\r\nLa línea está equipada con un controlador de volumen rotativo, un micrófono silencioso, más cómodo de usar.\r\n\r\nArtesanía exquisita y apariencia a la moda.\r\nA\r\nuriculares de juego profesionales para su elección.\r\n\r\nEspecificaciones:\r\nModelo: KOTION cada G9000\r\nDiámetro del controlador: 40mm\r\nImpedancia: 32Ohm\r\nSensibilidad: 105dB +/-3dB a 1 KHz\r\nRango de frecuencia: 15Hz-20 KHz\r\nDimensiones del micrófono: 6,0x5,0mm\r\nSensibilidad del micrófono:-38dB +/-3dB\r\nImpedancia del micrófono: 2,2 ohm\r\nVoltaje de funcionamiento del LED: DC5V +/-5%', 85.00, 'Diadema, Gamer, Kotion, Microfono', '1', 3, 5, '10.webp'),
(14, '1692781', 'Torre de Sonido Giga Party', 'Torre de Sonido Giga Party Audio Samsung MX-T50 500W - SAMSUNG', 'Ponte en modo fiesta\r\nAumenta el volumen de tu fiesta con un sonido bidereccional y una alta potencia de 500 vatios.  Unico con sonido bidireccional\r\nHaz vibrar las paredes con el sistema de audio bidireccional exclusivo de Samsung Giga Party Audio. Este diseño amplia el área de sonido para que disfrutes de una experiencia de sonido envolvente y potente.\r\n\r\n\r\n\r\nIntensifica los bajos\r\nPotenciador de bajos\r\nPulsa el botón Potenciador de bajos para iniciar la fiesta. Percibe el sonido y agrega poder a tu música a medida que se intensifican las bajas frecuencias de tus canciones favoritas.', 659.81, 'Sonido, Música, Diversión ', '1', 4, 8, '11.webp'),
(15, '971202', 'Nesquik vainilla', 'Nesquik vainilla bolsa x 200 gr - NESQUIK', 'Tipo de Bebida\r\nModificadores De Leche\r\nTipo de Producto\r\nBebidas En Polvo\r\nNúmero de Piezas\r\n1\r\nGrupo de Alimentos\r\nAzucares\r\nUmp del Empaque 1\r\nKILOGRAMO', 4040.00, 'Bebidad, Alimento, Nesquik, Vainilla', '1', 8, 11, '12.webp');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_marca` (`id_marca`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
