/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.14 : Database - sisventas
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `categoria` */

LOCK TABLES `categoria` WRITE;

UNLOCK TABLES;

/*Table structure for table `cliente-proveedor` */

DROP TABLE IF EXISTS `cliente-proveedor`;

CREATE TABLE `cliente-proveedor` (
  `documento` char(12) NOT NULL,
  `razon` varchar(300) DEFAULT NULL,
  `telefono` char(20) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `tipo` int(1) DEFAULT NULL,
  PRIMARY KEY (`documento`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `cliente-proveedor` */

LOCK TABLES `cliente-proveedor` WRITE;

UNLOCK TABLES;

/*Table structure for table `descuento` */

DROP TABLE IF EXISTS `descuento`;

CREATE TABLE `descuento` (
  `id` int(10) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `porcentaje` int(11) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `promocion` */

LOCK TABLES `promocion` WRITE;

UNLOCK TABLES;

/*Table structure for table `tipoventa` */

DROP TABLE IF EXISTS `tipoventa`;

CREATE TABLE `tipoventa` (
  `id` int(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tipoventa` */

LOCK TABLES `tipoventa` WRITE;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `usuario` */

LOCK TABLES `usuario` WRITE;

UNLOCK TABLES;

/*Table structure for table `ventas` */

DROP TABLE IF EXISTS `ventas`;

CREATE TABLE `ventas` (
  `id` int(10) NOT NULL,
  `idTipoVenta` int(10) DEFAULT NULL,
  `idClinete` int(10) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `impuesto` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `idFormaPago` int(10) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`idVentas`,`idProducto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ventasxproducto` */

LOCK TABLES `ventasxproducto` WRITE;

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
