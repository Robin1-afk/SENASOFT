-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2020 a las 01:44:21
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `senasoft`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `ID_Cliente` int(10) NOT NULL,
  `ID_Sucursal` int(10) NOT NULL,
  `Identificacion` varchar(10) NOT NULL,
  `Nombre_Completo` varchar(120) NOT NULL,
  `Direccion` text NOT NULL,
  `Email` text NOT NULL,
  `Telefono` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_entrada`
--

CREATE TABLE `detalle_entrada` (
  `ID_Detalle` int(10) NOT NULL,
  `ID_Entrada` int(10) NOT NULL,
  `ID_Productos` int(10) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Valor_Unitario` decimal(45,0) NOT NULL,
  `Cantidad` int(45) NOT NULL,
  `Toltal` decimal(45,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_salida`
--

CREATE TABLE `detalle_salida` (
  `ID_Detalle` int(10) NOT NULL,
  `ID_Salida` int(10) NOT NULL,
  `ID_Productos` int(10) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Valor_Unitario` decimal(10,0) NOT NULL,
  `Cantidad` int(45) NOT NULL,
  `Toltal` decimal(45,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `Nit` varchar(45) NOT NULL,
  `Razon_Social` varchar(60) NOT NULL,
  `Direccion` varchar(60) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Email` text NOT NULL,
  `ID_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_de_entrada`
--

CREATE TABLE `factura_de_entrada` (
  `ID_Entrada` int(10) NOT NULL,
  `ID_Sucursal` int(11) NOT NULL,
  `ID_Proveedor` int(10) NOT NULL,
  `Fecha` varchar(45) NOT NULL,
  `Subtotal` decimal(45,0) NOT NULL,
  `Valor_Neto` decimal(45,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_de_salida`
--

CREATE TABLE `factura_de_salida` (
  `ID_Salida` int(10) NOT NULL,
  `ID_Sucursal` int(10) NOT NULL,
  `ID_Cliente` int(10) NOT NULL,
  `Fecha` varchar(45) NOT NULL,
  `Subtotal` decimal(45,0) NOT NULL,
  `Valor_Neto` decimal(45,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `ID_Proveedor` int(10) NOT NULL,
  `Nit` varchar(45) NOT NULL,
  `Razon_Social` varchar(60) NOT NULL,
  `Telefono_1` varchar(45) NOT NULL,
  `Telefono_2` varchar(45) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Direccion` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock_productos_bodega`
--

CREATE TABLE `stock_productos_bodega` (
  `ID_Productos` int(10) NOT NULL,
  `ID_Sucursal` int(10) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Precio` decimal(45,0) NOT NULL,
  `Descripcion` text NOT NULL,
  `Stock` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursal`
--

CREATE TABLE `sucursal` (
  `ID_Sucursal` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` text NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Email` text NOT NULL,
  `Nit_Empresa` varchar(45) NOT NULL,
  `ID_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usuario` int(11) NOT NULL,
  `Nombre_Completo` varchar(60) NOT NULL,
  `Identificacion` varchar(30) NOT NULL,
  `Email` text NOT NULL,
  `Password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID_Cliente`),
  ADD UNIQUE KEY `ID_Sucursal` (`ID_Sucursal`);

--
-- Indices de la tabla `detalle_entrada`
--
ALTER TABLE `detalle_entrada`
  ADD PRIMARY KEY (`ID_Detalle`),
  ADD UNIQUE KEY `ID_Entrada` (`ID_Entrada`,`ID_Productos`),
  ADD KEY `ID_Productos` (`ID_Productos`);

--
-- Indices de la tabla `detalle_salida`
--
ALTER TABLE `detalle_salida`
  ADD PRIMARY KEY (`ID_Detalle`),
  ADD UNIQUE KEY `ID_Salida` (`ID_Salida`,`ID_Productos`),
  ADD KEY `ID_Productos` (`ID_Productos`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`Nit`),
  ADD UNIQUE KEY `ID_Usuario` (`ID_Usuario`);

--
-- Indices de la tabla `factura_de_entrada`
--
ALTER TABLE `factura_de_entrada`
  ADD PRIMARY KEY (`ID_Entrada`),
  ADD UNIQUE KEY `ID_Sucursal` (`ID_Sucursal`,`ID_Proveedor`),
  ADD KEY `ID_Proveedor` (`ID_Proveedor`);

--
-- Indices de la tabla `factura_de_salida`
--
ALTER TABLE `factura_de_salida`
  ADD PRIMARY KEY (`ID_Salida`),
  ADD UNIQUE KEY `ID_Sucursal` (`ID_Sucursal`,`ID_Cliente`),
  ADD KEY `ID_Cliente` (`ID_Cliente`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`ID_Proveedor`);

--
-- Indices de la tabla `stock_productos_bodega`
--
ALTER TABLE `stock_productos_bodega`
  ADD PRIMARY KEY (`ID_Productos`),
  ADD UNIQUE KEY `ID_Sucursal` (`ID_Sucursal`);

--
-- Indices de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD PRIMARY KEY (`ID_Sucursal`),
  ADD UNIQUE KEY `ID_Usuario` (`ID_Usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalle_entrada`
--
ALTER TABLE `detalle_entrada`
  MODIFY `ID_Detalle` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `factura_de_entrada`
--
ALTER TABLE `factura_de_entrada`
  MODIFY `ID_Entrada` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `factura_de_salida`
--
ALTER TABLE `factura_de_salida`
  MODIFY `ID_Salida` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `ID_Proveedor` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `stock_productos_bodega`
--
ALTER TABLE `stock_productos_bodega`
  MODIFY `ID_Productos` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sucursal`
--
ALTER TABLE `sucursal`
  MODIFY `ID_Sucursal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`ID_Sucursal`) REFERENCES `sucursal` (`ID_Sucursal`);

--
-- Filtros para la tabla `detalle_entrada`
--
ALTER TABLE `detalle_entrada`
  ADD CONSTRAINT `detalle_entrada_ibfk_2` FOREIGN KEY (`ID_Productos`) REFERENCES `stock_productos_bodega` (`ID_Productos`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_entrada_ibfk_3` FOREIGN KEY (`ID_Entrada`) REFERENCES `factura_de_entrada` (`ID_Entrada`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_salida`
--
ALTER TABLE `detalle_salida`
  ADD CONSTRAINT `detalle_salida_ibfk_1` FOREIGN KEY (`ID_Productos`) REFERENCES `stock_productos_bodega` (`ID_Productos`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_salida_ibfk_2` FOREIGN KEY (`ID_Salida`) REFERENCES `factura_de_salida` (`ID_Salida`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuarios` (`ID_Usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura_de_entrada`
--
ALTER TABLE `factura_de_entrada`
  ADD CONSTRAINT `factura_de_entrada_ibfk_1` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedor` (`ID_Proveedor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_de_entrada_ibfk_2` FOREIGN KEY (`ID_Sucursal`) REFERENCES `sucursal` (`ID_Sucursal`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `factura_de_salida`
--
ALTER TABLE `factura_de_salida`
  ADD CONSTRAINT `factura_de_salida_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`) ON UPDATE CASCADE,
  ADD CONSTRAINT `factura_de_salida_ibfk_2` FOREIGN KEY (`ID_Sucursal`) REFERENCES `sucursal` (`ID_Sucursal`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `stock_productos_bodega`
--
ALTER TABLE `stock_productos_bodega`
  ADD CONSTRAINT `stock_productos_bodega_ibfk_1` FOREIGN KEY (`ID_Sucursal`) REFERENCES `sucursal` (`ID_Sucursal`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `sucursal`
--
ALTER TABLE `sucursal`
  ADD CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuarios` (`ID_Usuario`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
