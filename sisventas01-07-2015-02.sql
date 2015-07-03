/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.0.51b-community-nt-log : Database - sisventas
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
  `dimencion` varchar(200) default NULL,
  `peso` varchar(100) default NULL,
  `color` char(30) default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `caracfisicas` */

LOCK TABLES `caracfisicas` WRITE;

UNLOCK TABLES;

/*Table structure for table `categoria` */

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `id` int(10) NOT NULL,
  `nombre` varchar(200) default NULL,
  `descripcion` text,
  `idProveedor` int(10) default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `categoria` */

LOCK TABLES `categoria` WRITE;

UNLOCK TABLES;

/*Table structure for table `cliente-proveedor` */

DROP TABLE IF EXISTS `cliente-proveedor`;

CREATE TABLE `cliente-proveedor` (
  `documento` char(12) NOT NULL,
  `razon` varchar(300) default NULL,
  `telefono` char(20) default NULL,
  `direccion` varchar(200) default NULL,
  `tipo` int(1) default NULL,
  PRIMARY KEY  (`documento`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `cliente-proveedor` */

LOCK TABLES `cliente-proveedor` WRITE;

UNLOCK TABLES;

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `documento` char(11) NOT NULL,
  `razon` varchar(300) default NULL,
  `telefono` char(20) default NULL,
  `direccion` varchar(200) default NULL,
  `fechaRegistro` date default NULL,
  `email` varchar(100) default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`documento`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `cliente` */

LOCK TABLES `cliente` WRITE;

insert  into `cliente`(`documento`,`razon`,`telefono`,`direccion`,`fechaRegistro`,`email`,`estado`) values ('45214522222','GGGGGGGGGGGGGG','4152141','CUSCO ','2015-07-01','llllllluhfff',0);

UNLOCK TABLES;

/*Table structure for table `compras` */

DROP TABLE IF EXISTS `compras`;

CREATE TABLE `compras` (
  `id` int(10) NOT NULL,
  `idProveedor` char(11) default NULL,
  `fechaCompra` date default NULL,
  `nroFactura` char(20) default NULL,
  `observacion` text,
  `subtotal` decimal(10,2) default NULL,
  `impuesto` decimal(10,2) default NULL,
  `total` decimal(10,2) default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idProveedor` (`idProveedor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `compras` */

LOCK TABLES `compras` WRITE;

UNLOCK TABLES;

/*Table structure for table `compraxproducto` */

DROP TABLE IF EXISTS `compraxproducto`;

CREATE TABLE `compraxproducto` (
  `idProducto` int(10) NOT NULL,
  `idCompra` int(10) NOT NULL,
  `cantidad` double default NULL,
  `precioUnitario` decimal(10,2) default NULL,
  `precioTotal` decimal(10,2) default NULL,
  `estado` int(1) default '0',
  PRIMARY KEY  (`idProducto`,`idCompra`),
  KEY `idCompra` (`idCompra`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `compraxproducto` */

LOCK TABLES `compraxproducto` WRITE;

UNLOCK TABLES;

/*Table structure for table `comprobante` */

DROP TABLE IF EXISTS `comprobante`;

CREATE TABLE `comprobante` (
  `id` int(10) NOT NULL,
  `idVenta` int(10) default NULL,
  `numero` int(10) default NULL,
  `estado` int(1) default NULL,
  `idTipo` int(10) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idTipo` (`idTipo`),
  KEY `idVenta` (`idVenta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `comprobante` */

LOCK TABLES `comprobante` WRITE;

UNLOCK TABLES;

/*Table structure for table `cuentacobrar` */

DROP TABLE IF EXISTS `cuentacobrar`;

CREATE TABLE `cuentacobrar` (
  `id` int(10) default NULL,
  `idVenta` int(10) default NULL,
  `monto` decimal(10,2) default NULL,
  `fechaPago` date default NULL,
  `fechaVence` date default NULL,
  `interes` int(3) default NULL,
  `estado` int(1) default NULL,
  KEY `idVenta` (`idVenta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `cuentacobrar` */

LOCK TABLES `cuentacobrar` WRITE;

UNLOCK TABLES;

/*Table structure for table `cuentapagar` */

DROP TABLE IF EXISTS `cuentapagar`;

CREATE TABLE `cuentapagar` (
  `id` int(10) NOT NULL,
  `idCompra` int(10) default NULL,
  `monto` decimal(10,2) default NULL,
  `fechaPago` date default NULL,
  `fechaVence` date default NULL,
  `interes` double default NULL,
  `estado` int(1) default '0',
  PRIMARY KEY  (`id`),
  KEY `idCompra` (`idCompra`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `cuentapagar` */

LOCK TABLES `cuentapagar` WRITE;

UNLOCK TABLES;

/*Table structure for table `descuento` */

DROP TABLE IF EXISTS `descuento`;

CREATE TABLE `descuento` (
  `id` int(8) unsigned NOT NULL,
  `idProducto` int(8) default NULL,
  `tipoDescuento` int(11) default NULL,
  `fechaInicio` date default NULL,
  `fechaFin` date default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `descuento` */

LOCK TABLES `descuento` WRITE;

UNLOCK TABLES;

/*Table structure for table `formaspago` */

DROP TABLE IF EXISTS `formaspago`;

CREATE TABLE `formaspago` (
  `id` int(10) NOT NULL,
  `nombre` varchar(100) default NULL,
  `estado` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `formaspago` */

LOCK TABLES `formaspago` WRITE;

UNLOCK TABLES;

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `id` int(8) NOT NULL auto_increment,
  `nombre` varchar(200) default NULL,
  `detalle` text,
  `imagen` blob,
  `precio` decimal(8,2) default NULL,
  `idCategoria` int(11) default NULL,
  `stock` int(10) default NULL,
  `idDescuento` int(10) default NULL,
  `idPromocion` int(10) default NULL,
  `idUnidades` int(10) default NULL,
  `idCaractFisicas` int(10) default NULL,
  `serie` char(50) default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idPromocion` (`idPromocion`),
  KEY `idUnidades` (`idUnidades`),
  KEY `idDescuento` (`idDescuento`),
  KEY `idCategoria` (`idCategoria`),
  KEY `idCaractFisicas` (`idCaractFisicas`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `producto` */

LOCK TABLES `producto` WRITE;

UNLOCK TABLES;

/*Table structure for table `promocion` */

DROP TABLE IF EXISTS `promocion`;

CREATE TABLE `promocion` (
  `id` int(10) NOT NULL auto_increment,
  `nombre` varchar(200) default NULL,
  `descripcion` text,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `promocion` */

LOCK TABLES `promocion` WRITE;

UNLOCK TABLES;

/*Table structure for table `proveedor` */

DROP TABLE IF EXISTS `proveedor`;

CREATE TABLE `proveedor` (
  `documento` char(11) NOT NULL,
  `razon` varchar(200) default NULL,
  `telefono` char(10) default NULL,
  `direccion` varchar(100) default NULL,
  `fechaRegistro` date default NULL,
  `email` varchar(100) default NULL,
  `estado` int(1) default '0',
  PRIMARY KEY  (`documento`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `proveedor` */

LOCK TABLES `proveedor` WRITE;

insert  into `proveedor`(`documento`,`razon`,`telefono`,`direccion`,`fechaRegistro`,`email`,`estado`) values ('20490253867','ITDECSA','245844','AV LA CULTURA N° 772','2015-07-01','informes@itdecsa.com',0),('45454545454','CUSCO HOSTING','44444444','CUSCO PERU','2015-07-01','cuscohos@hotmail.com',1);

UNLOCK TABLES;

/*Table structure for table `tipocomprobante` */

DROP TABLE IF EXISTS `tipocomprobante`;

CREATE TABLE `tipocomprobante` (
  `id` int(10) NOT NULL,
  `nombre` varchar(100) default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tipocomprobante` */

LOCK TABLES `tipocomprobante` WRITE;

UNLOCK TABLES;

/*Table structure for table `tipodescuento` */

DROP TABLE IF EXISTS `tipodescuento`;

CREATE TABLE `tipodescuento` (
  `id` int(8) NOT NULL,
  `nombre` varchar(200) default NULL,
  `porcentaje` int(3) default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tipodescuento` */

LOCK TABLES `tipodescuento` WRITE;

UNLOCK TABLES;

/*Table structure for table `unidades` */

DROP TABLE IF EXISTS `unidades`;

CREATE TABLE `unidades` (
  `id` int(10) NOT NULL,
  `nombre` varchar(200) default NULL,
  `abreviatura` char(10) default NULL,
  `valorBase` int(10) default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `unidades` */

LOCK TABLES `unidades` WRITE;

UNLOCK TABLES;

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `dni` int(8) NOT NULL,
  `nombre` varchar(100) default NULL,
  `apaterno` varchar(100) default NULL,
  `amaterno` varchar(100) default NULL,
  `sexo` char(1) default NULL,
  `nick` char(50) default NULL,
  `pass` char(50) default NULL,
  `telefono` char(10) default NULL,
  `direccion` varchar(200) default NULL,
  `nacimiento` date default NULL,
  `privilegio` int(1) default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`dni`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `usuario` */

LOCK TABLES `usuario` WRITE;

insert  into `usuario`(`dni`,`nombre`,`apaterno`,`amaterno`,`sexo`,`nick`,`pass`,`telefono`,`direccion`,`nacimiento`,`privilegio`,`estado`) values (40494250,'EDGARD','RAYME','QUISPE','M','edgard','1234','45454545','AV. LA CULTURA N° 772','2015-06-30',0,0);

UNLOCK TABLES;

/*Table structure for table `ventas` */

DROP TABLE IF EXISTS `ventas`;

CREATE TABLE `ventas` (
  `id` int(8) NOT NULL,
  `idTipoVenta` int(10) default NULL,
  `idClinete` char(11) default NULL,
  `subtotal` decimal(8,2) default NULL,
  `impuesto` decimal(8,2) default NULL,
  `total` decimal(8,2) default NULL,
  `idFormaPago` int(10) default NULL,
  `idUsuario` int(8) default NULL,
  `fechaVenta` date default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idTipoVenta` (`idTipoVenta`),
  KEY `idFormaPago` (`idFormaPago`),
  KEY `idClinete` (`idClinete`),
  KEY `idUsuario` (`idUsuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ventas` */

LOCK TABLES `ventas` WRITE;

UNLOCK TABLES;

/*Table structure for table `ventasxproducto` */

DROP TABLE IF EXISTS `ventasxproducto`;

CREATE TABLE `ventasxproducto` (
  `idVentas` int(10) NOT NULL,
  `idProducto` int(10) NOT NULL,
  `cantidad` int(8) default NULL,
  `unidad` char(10) default NULL,
  `precioUnitario` decimal(8,2) default NULL,
  `precioTotal` decimal(8,2) default NULL,
  PRIMARY KEY  (`idVentas`,`idProducto`),
  KEY `idProducto` (`idProducto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `ventasxproducto` */

LOCK TABLES `ventasxproducto` WRITE;

UNLOCK TABLES;

/* Procedure structure for procedure `cliente_elimina` */

/*!50003 DROP PROCEDURE IF EXISTS  `cliente_elimina` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `cliente_elimina`(pDocumento CHAR(20))
BEGIN
    
    DELETE FROM cliente	
    WHERE documento = pDocumento;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `cliente_guarda` */

/*!50003 DROP PROCEDURE IF EXISTS  `cliente_guarda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `cliente_guarda`(pDocumento char(11), pRazon varchar(300), pTelefono char(20), pDireccion varchar(200), pFechaRegistro date, pEmail varchar(100),pEstado int(1))
BEGIN
    
    
    REPLACE INTO cliente VALUES(pDocumento,pRazon,pTelefono,pDireccion,pFechaRegistro,pEmail, pEstado);
    		
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `cliente_lista` */

/*!50003 DROP PROCEDURE IF EXISTS  `cliente_lista` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `cliente_lista`()
BEGIN
    
    SELECT documento,razon,fechaRegistro,telefono,direccion,email,estado
    FROM cliente
    ORDER BY razon asc;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `proveedor_elimina` */

/*!50003 DROP PROCEDURE IF EXISTS  `proveedor_elimina` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `proveedor_elimina`(pDocumento CHAR(20))
BEGIN
    
    DELETE FROM proveedor	
    WHERE documento = pDocumento;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `proveedor_guarda` */

/*!50003 DROP PROCEDURE IF EXISTS  `proveedor_guarda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `proveedor_guarda`(pDocumento char(11), pRazon VARCHAR(300), pTelefono CHAR(20), pDireccion VARCHAR(200), pFechaRegistro DATE, pEmail VARCHAR(100),pEstado INT(1))
BEGIN
    
    
    REPLACE INTO proveedor VALUES(pDocumento,pRazon,pTelefono,pDireccion,pFechaRegistro,pEmail, pEstado);
    		
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `proveedor_lista` */

/*!50003 DROP PROCEDURE IF EXISTS  `proveedor_lista` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `proveedor_lista`()
BEGIN
    
    SELECT documento,razon,fechaRegistro,telefono,direccion,email,estado
    FROM proveedor
    ORDER BY razon ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usuario_elimina` */

/*!50003 DROP PROCEDURE IF EXISTS  `usuario_elimina` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usuario_elimina`(pDni CHAR(20))
BEGIN
    
    DELETE FROM usuario	
    WHERE dni = pDni;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usuario_guarda` */

/*!50003 DROP PROCEDURE IF EXISTS  `usuario_guarda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usuario_guarda`(pDni int(8), pNombre char(100), pApaterno char(100), pAmaterno char(100), pSexo char(1), pNacimiento date, pTelefono char(10), pDireccion char(200), pPrivilegio int(1), pNick char(50), pPass char(100), pEstado int(1))
BEGIN
    
    
    REPLACE INTO usuario VALUES(pDni,pNombre,pApaterno,pAmaterno,pSexo,pNick,pPass,pTelefono,pDireccion,pNacimiento,pPrivilegio, pEstado);
    		
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usuario_lista` */

/*!50003 DROP PROCEDURE IF EXISTS  `usuario_lista` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usuario_lista`()
BEGIN
    
    SELECT dni,nombre,apaterno,amaterno,sexo,nacimiento, telefono,direccion,privilegio,nick,pass,estado
    FROM usuario
    ORDER BY nombre;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usuario_privilegios` */

/*!50003 DROP PROCEDURE IF EXISTS  `usuario_privilegios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usuario_privilegios`(pIdUsuario CHAR(50),pPassword CHAR(50))
BEGIN
    
    
    SELECT privilegio,concat(nombre,' ',apaterno,' ',amaterno)
    FROM usuario
    WHERE nick = pIdUsuario AND pPassword=pass;        
    END */$$
DELIMITER ;

/* Procedure structure for procedure `usuario_valida` */

/*!50003 DROP PROCEDURE IF EXISTS  `usuario_valida` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `usuario_valida`(pIdUsuario CHAR(50),pPassword CHAR(50))
BEGIN
    
    DECLARE pContador INT(4);
    DECLARE Mensaje CHAR(10);
    
    SELECT COUNT(*) INTO pContador  FROM usuario
    WHERE nick = pIdUsuario AND pass = pPassword and estado=0;
    
    SET Mensaje = 'false';
    IF(pContador>0)
    THEN
	SET Mensaje = 'true';	
    END IF;
    
    SELECT Mensaje;
        SELECT COUNT(*) 
    FROM usuario
    WHERE nick = "carlos" AND pass = "12345";
    
   END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
