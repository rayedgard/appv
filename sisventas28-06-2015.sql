/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 6.0.4-alpha-community-log : Database - sisventas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sisventas` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sisventas`;

/*Table structure for table `caracfisicas` */

DROP TABLE IF EXISTS `caracfisicas`;

CREATE TABLE `caracfisicas` (
  `id` int(10) NOT NULL,
  `dimencion` varchar(200) DEFAULT NULL,
  `peso` varchar(100) DEFAULT NULL,
  `color` char(30) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `caracfisicas` */

LOCK TABLES `caracfisicas` WRITE;

UNLOCK TABLES;

/*Table structure for table `categoria` */

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `id` int(10) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` text,
  `idProveedor` int(10) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `categoria` */

LOCK TABLES `categoria` WRITE;

UNLOCK TABLES;

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `documento` int(11) NOT NULL,
  `razon` varchar(300) DEFAULT NULL,
  `telefono` char(20) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `fechaRegistro` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cliente` */

LOCK TABLES `cliente` WRITE;

UNLOCK TABLES;

/*Table structure for table `compras` */

DROP TABLE IF EXISTS `compras`;

CREATE TABLE `compras` (
  `id` int(10) NOT NULL,
  `idProveedor` int(11) DEFAULT NULL,
  `fechaCompra` date DEFAULT NULL,
  `nroFactura` char(20) DEFAULT NULL,
  `observacion` text,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `impuesto` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idProveedor` (`idProveedor`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`idProveedor`) REFERENCES `proveedor` (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `compras` */

LOCK TABLES `compras` WRITE;

UNLOCK TABLES;

/*Table structure for table `compraxproducto` */

DROP TABLE IF EXISTS `compraxproducto`;

CREATE TABLE `compraxproducto` (
  `idProducto` int(10) NOT NULL,
  `idCompra` int(10) NOT NULL,
  `cantidad` double DEFAULT NULL,
  `precioUnitario` decimal(10,2) DEFAULT NULL,
  `precioTotal` decimal(10,2) DEFAULT NULL,
  `estado` int(1) DEFAULT '0',
  PRIMARY KEY (`idProducto`,`idCompra`),
  KEY `idCompra` (`idCompra`),
  CONSTRAINT `compraxproducto_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`),
  CONSTRAINT `compraxproducto_ibfk_1` FOREIGN KEY (`idCompra`) REFERENCES `compras` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `compraxproducto` */

LOCK TABLES `compraxproducto` WRITE;

UNLOCK TABLES;

/*Table structure for table `comprobante` */

DROP TABLE IF EXISTS `comprobante`;

CREATE TABLE `comprobante` (
  `id` int(10) NOT NULL,
  `idVenta` int(10) DEFAULT NULL,
  `numero` int(10) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  `idTipo` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idTipo` (`idTipo`),
  KEY `idVenta` (`idVenta`),
  CONSTRAINT `comprobante_ibfk_2` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`id`),
  CONSTRAINT `comprobante_ibfk_1` FOREIGN KEY (`idTipo`) REFERENCES `tipocomprobante` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comprobante` */

LOCK TABLES `comprobante` WRITE;

UNLOCK TABLES;

/*Table structure for table `cuentacobrar` */

DROP TABLE IF EXISTS `cuentacobrar`;

CREATE TABLE `cuentacobrar` (
  `id` int(10) DEFAULT NULL,
  `idVenta` int(10) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `fechaPago` date DEFAULT NULL,
  `fechaVence` date DEFAULT NULL,
  `interes` int(3) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  KEY `idVenta` (`idVenta`),
  CONSTRAINT `cuentacobrar_ibfk_1` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cuentacobrar` */

LOCK TABLES `cuentacobrar` WRITE;

UNLOCK TABLES;

/*Table structure for table `cuentapagar` */

DROP TABLE IF EXISTS `cuentapagar`;

CREATE TABLE `cuentapagar` (
  `id` int(10) NOT NULL,
  `idCompra` int(10) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `fechaPago` date DEFAULT NULL,
  `fechaVence` date DEFAULT NULL,
  `interes` double DEFAULT NULL,
  `estado` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idCompra` (`idCompra`),
  CONSTRAINT `cuentapagar_ibfk_1` FOREIGN KEY (`idCompra`) REFERENCES `compras` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cuentapagar` */

LOCK TABLES `cuentapagar` WRITE;

UNLOCK TABLES;

/*Table structure for table `descuento` */

DROP TABLE IF EXISTS `descuento`;

CREATE TABLE `descuento` (
  `id` int(10) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `porcentaje` int(11) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `descuento` */

LOCK TABLES `descuento` WRITE;

UNLOCK TABLES;

/*Table structure for table `formaspago` */

DROP TABLE IF EXISTS `formaspago`;

CREATE TABLE `formaspago` (
  `id` int(10) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `estado` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `formaspago` */

LOCK TABLES `formaspago` WRITE;

UNLOCK TABLES;

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `detalle` text,
  `imagen` blob,
  `precio` decimal(8,2) DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL,
  `stock` int(10) DEFAULT NULL,
  `idDescuento` int(10) DEFAULT NULL,
  `idPromocion` int(10) DEFAULT NULL,
  `idUnidades` int(10) DEFAULT NULL,
  `idCaractFisicas` int(10) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idPromocion` (`idPromocion`),
  KEY `idUnidades` (`idUnidades`),
  KEY `idDescuento` (`idDescuento`),
  KEY `idCategoria` (`idCategoria`),
  KEY `idCaractFisicas` (`idCaractFisicas`),
  CONSTRAINT `producto_ibfk_5` FOREIGN KEY (`idCaractFisicas`) REFERENCES `caracfisicas` (`id`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idPromocion`) REFERENCES `promocion` (`id`),
  CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`idUnidades`) REFERENCES `unidades` (`id`),
  CONSTRAINT `producto_ibfk_3` FOREIGN KEY (`idDescuento`) REFERENCES `descuento` (`id`),
  CONSTRAINT `producto_ibfk_4` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `producto` */

LOCK TABLES `producto` WRITE;

UNLOCK TABLES;

/*Table structure for table `promocion` */

DROP TABLE IF EXISTS `promocion`;

CREATE TABLE `promocion` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `descripcion` text,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `promocion` */

LOCK TABLES `promocion` WRITE;

UNLOCK TABLES;

/*Table structure for table `proveedor` */

DROP TABLE IF EXISTS `proveedor`;

CREATE TABLE `proveedor` (
  `documento` int(11) NOT NULL,
  `razon` varchar(200) DEFAULT NULL,
  `fechaRegistro` date DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` char(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `estado` int(1) DEFAULT '0',
  PRIMARY KEY (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `proveedor` */

LOCK TABLES `proveedor` WRITE;

UNLOCK TABLES;

/*Table structure for table `tipocomprobante` */

DROP TABLE IF EXISTS `tipocomprobante`;

CREATE TABLE `tipocomprobante` (
  `id` int(10) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tipocomprobante` */

LOCK TABLES `tipocomprobante` WRITE;

UNLOCK TABLES;

/*Table structure for table `unidades` */

DROP TABLE IF EXISTS `unidades`;

CREATE TABLE `unidades` (
  `id` int(10) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `abreviatura` char(10) DEFAULT NULL,
  `valorBase` int(10) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `unidades` */

LOCK TABLES `unidades` WRITE;

UNLOCK TABLES;

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `dni` int(8) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apaterno` varchar(100) DEFAULT NULL,
  `amaterno` varchar(100) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `user` char(50) DEFAULT NULL,
  `pass` char(50) DEFAULT NULL,
  `telefono` char(10) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `tipo` int(1) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usuario` */

LOCK TABLES `usuario` WRITE;

UNLOCK TABLES;

/*Table structure for table `ventas` */

DROP TABLE IF EXISTS `ventas`;

CREATE TABLE `ventas` (
  `id` int(10) NOT NULL,
  `idTipoVenta` int(10) DEFAULT NULL,
  `idClinete` int(11) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `impuesto` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `idFormaPago` int(10) DEFAULT NULL,
  `idUsuario` int(8) DEFAULT NULL,
  `fechaVenta` date DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idTipoVenta` (`idTipoVenta`),
  KEY `idFormaPago` (`idFormaPago`),
  KEY `idClinete` (`idClinete`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`idFormaPago`) REFERENCES `formaspago` (`id`),
  CONSTRAINT `ventas_ibfk_3` FOREIGN KEY (`idClinete`) REFERENCES `cliente` (`documento`),
  CONSTRAINT `ventas_ibfk_4` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ventas` */

LOCK TABLES `ventas` WRITE;

UNLOCK TABLES;

/*Table structure for table `ventasxproducto` */

DROP TABLE IF EXISTS `ventasxproducto`;

CREATE TABLE `ventasxproducto` (
  `idVentas` int(10) NOT NULL,
  `idProducto` int(10) NOT NULL,
  `cantidad` int(8) DEFAULT NULL,
  `unidad` char(10) DEFAULT NULL,
  `precioUnitario` decimal(8,2) DEFAULT NULL,
  `precioTotal` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`idVentas`,`idProducto`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `ventasxproducto_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`),
  CONSTRAINT `ventasxproducto_ibfk_1` FOREIGN KEY (`idVentas`) REFERENCES `ventas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ventasxproducto` */

LOCK TABLES `ventasxproducto` WRITE;

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
