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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `caracfisicas` */

LOCK TABLES `caracfisicas` WRITE;

insert  into `caracfisicas`(`id`,`dimencion`,`peso`,`color`,`estado`) values (1,'SIN CARACTERISTICAS','0','FF004040',0);

UNLOCK TABLES;

/*Table structure for table `categoria` */

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `id` int(8) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `imagen` blob,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `categoria` */

LOCK TABLES `categoria` WRITE;

insert  into `categoria`(`id`,`nombre`,`imagen`,`estado`) values (1,'SIN CATEGORIA','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0c\0\0\0c\0\0\0�;��\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0IDATx^��K�}S\0��<�����gLP\"�(1!\"<I)�/1��D�cd�1`fh������#���7y��{���{�޽�k����է����k���9���Zk�5���_ɜ9X��������b]�˜�\\%��c�6Zn/��ds�<\'ߊ�HC�>�ˤ�|!n��{�~��貏��Uq�V?Ȣ��K�Z�m̓r�4�+�~qo�U����T.��Ž���&�J�9P8��I��߅�y�T�#�U|�N��r�|,��Sp��\r�9�/��S�Β���M�Gr�\'D�BS������3\Z��7d����y]������Xw��\\)Y��iʇ�!8�J~�˙�[YN��.\\,��P6�������ĐS�����s��P�[wNI�E�ך������R\"�Oj�JT�^���2DN�û:��.2�jo�����2t���_Jt9�n��C�\'�&�)|K�}�n��)������R�Y�H��n���=��r�tN�ƈ�1+���B�s���88:k%�ս�X\\ۣe��R�[�Jr�!:mN���{i�$�C\\�[=#�>��Ӆ��Oa���2WO���d	\r�\\���SbB���+;�e�2�5u�B�C�M�E~WnKLr�o���,4W\'�7�H	ɍB�WWnW\nפB��18�yH��.��R:�TR�C�H쀝U�-�ì�w�B6�~BWJW^��]e��xI��0�ǽ0�����&�ae�����:9#t<�d#���1v���*�q/�Z����sl�p���8yK\\��L�1�d��o�+3�������\'�{?y)�����Ѓr��Ѵ�]8�N%��W�Wvv�p���\r����.l�_r��{��=����.l�y���Q������с� �\r��-n�م-�\0��ȵ��Q�]؊g%ECp��fq�(�.l���=��0��)�ح�4��vOH�~G+r�|*���؅5��5��3��C���]X3��\r߆�ŕ[��V?J�u~E\\���k�\0ϐp��Mqe��.�Uhc|&���<+�1WVm���������7��]o�kH���$$scd��\Z��Ԇ�/}�0�h��-5�����^8ˋ�3{�v.�s|�l�m�3��ð�Ar��m�rL�h������ʪ��cr��\ZWV\rv\rOTqX�и���䛝R�¡qe\r��4]�1�+�и���kڎ�1�yMN��a�:��\ZW�P��ҥ�g��\ZW�^���^�P0Do�UB��*��^!w*��8��(�\ZWVit#M�Z:-�ƕUZ��Aح��и�Jb���aru����]�pe��D\0��<����}�v�e�%Y3?Y���O�!<���n�\n���4|�H�У��<�����N��d߈A\Z��\ra��Þ\\如k�C�]�Na�)ee?j�{]E�.tB���İ$ά��ХS>}�W_�]�+���m�7�GD_2����6�͵�[���؉\0������%s�J�{ݳn%|�j����:w�i=�dC�Ś~�Ϯ].��A�kf�w(7�G�������0,�\r�6\\J�um�2g9l ��-0�۠]1�}sy�,kk�d0�N���\0\0\0\0IEND�B`�',0),(2,'CHOMPAS','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0c\0\0\0c\0\0\0�;��\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0IDATx^��K�}S\0��<�����gLP\"�(1!\"<I)�/1��D�cd�1`fh������#���7y��{���{�޽�k����է����k���9���Zk�5���_ɜ9X��������b]�˜�\\%��c�6Zn/��ds�<\'ߊ�HC�>�ˤ�|!n��{�~��貏��Uq�V?Ȣ��K�Z�m̓r�4�+�~qo�U����T.��Ž���&�J�9P8��I��߅�y�T�#�U|�N��r�|,��Sp��\r�9�/��S�Β���M�Gr�\'D�BS������3\Z��7d����y]������Xw��\\)Y��iʇ�!8�J~�˙�[YN��.\\,��P6�������ĐS�����s��P�[wNI�E�ך������R\"�Oj�JT�^���2DN�û:��.2�jo�����2t���_Jt9�n��C�\'�&�)|K�}�n��)������R�Y�H��n���=��r�tN�ƈ�1+���B�s���88:k%�ս�X\\ۣe��R�[�Jr�!:mN���{i�$�C\\�[=#�>��Ӆ��Oa���2WO���d	\r�\\���SbB���+;�e�2�5u�B�C�M�E~WnKLr�o���,4W\'�7�H	ɍB�WWnW\nפB��18�yH��.��R:�TR�C�H쀝U�-�ì�w�B6�~BWJW^��]e��xI��0�ǽ0�����&�ae�����:9#t<�d#���1v���*�q/�Z����sl�p���8yK\\��L�1�d��o�+3�������\'�{?y)�����Ѓr��Ѵ�]8�N%��W�Wvv�p���\r����.l�_r��{��=����.l�y���Q������с� �\r��-n�م-�\0��ȵ��Q�]؊g%ECp��fq�(�.l���=��0��)�ح�4��vOH�~G+r�|*���؅5��5��3��C���]X3��\r߆�ŕ[��V?J�u~E\\���k�\0ϐp��Mqe��.�Uhc|&���<+�1WVm���������7��]o�kH���$$scd��\Z��Ԇ�/}�0�h��-5�����^8ˋ�3{�v.�s|�l�m�3��ð�Ar��m�rL�h������ʪ��cr��\ZWV\rv\rOTqX�и���䛝R�¡qe\r��4]�1�+�и���kڎ�1�yMN��a�:��\ZW�P��ҥ�g��\ZW�^���^�P0Do�UB��*��^!w*��8��(�\ZWVit#M�Z:-�ƕUZ��Aح��и�Jb���aru����]�pe��D\0��<����}�v�e�%Y3?Y���O�!<���n�\n���4|�H�У��<�����N��d߈A\Z��\ra��Þ\\如k�C�]�Na�)ee?j�{]E�.tB���İ$ά��ХS>}�W_�]�+���m�7�GD_2����6�͵�[���؉\0������%s�J�{ݳn%|�j����:w�i=�dC�Ś~�Ϯ].��A�kf�w(7�G�������0,�\r�6\\J�um�2g9l ��-0�۠]1�}sy�,kk�d0�N���\0\0\0\0IEND�B`�',0),(3,'PANTALONES','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0c\0\0\0c\0\0\0�;��\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0IDATx^��K�}S\0��<�����gLP\"�(1!\"<I)�/1��D�cd�1`fh������#���7y��{���{�޽�k����է����k���9���Zk�5���_ɜ9X��������b]�˜�\\%��c�6Zn/��ds�<\'ߊ�HC�>�ˤ�|!n��{�~��貏��Uq�V?Ȣ��K�Z�m̓r�4�+�~qo�U����T.��Ž���&�J�9P8��I��߅�y�T�#�U|�N��r�|,��Sp��\r�9�/��S�Β���M�Gr�\'D�BS������3\Z��7d����y]������Xw��\\)Y��iʇ�!8�J~�˙�[YN��.\\,��P6�������ĐS�����s��P�[wNI�E�ך������R\"�Oj�JT�^���2DN�û:��.2�jo�����2t���_Jt9�n��C�\'�&�)|K�}�n��)������R�Y�H��n���=��r�tN�ƈ�1+���B�s���88:k%�ս�X\\ۣe��R�[�Jr�!:mN���{i�$�C\\�[=#�>��Ӆ��Oa���2WO���d	\r�\\���SbB���+;�e�2�5u�B�C�M�E~WnKLr�o���,4W\'�7�H	ɍB�WWnW\nפB��18�yH��.��R:�TR�C�H쀝U�-�ì�w�B6�~BWJW^��]e��xI��0�ǽ0�����&�ae�����:9#t<�d#���1v���*�q/�Z����sl�p���8yK\\��L�1�d��o�+3�������\'�{?y)�����Ѓr��Ѵ�]8�N%��W�Wvv�p���\r����.l�_r��{��=����.l�y���Q������с� �\r��-n�م-�\0��ȵ��Q�]؊g%ECp��fq�(�.l���=��0��)�ح�4��vOH�~G+r�|*���؅5��5��3��C���]X3��\r߆�ŕ[��V?J�u~E\\���k�\0ϐp��Mqe��.�Uhc|&���<+�1WVm���������7��]o�kH���$$scd��\Z��Ԇ�/}�0�h��-5�����^8ˋ�3{�v.�s|�l�m�3��ð�Ar��m�rL�h������ʪ��cr��\ZWV\rv\rOTqX�и���䛝R�¡qe\r��4]�1�+�и���kڎ�1�yMN��a�:��\ZW�P��ҥ�g��\ZW�^���^�P0Do�UB��*��^!w*��8��(�\ZWVit#M�Z:-�ƕUZ��Aح��и�Jb���aru����]�pe��D\0��<����}�v�e�%Y3?Y���O�!<���n�\n���4|�H�У��<�����N��d߈A\Z��\ra��Þ\\如k�C�]�Na�)ee?j�{]E�.tB���İ$ά��ХS>}�W_�]�+���m�7�GD_2����6�͵�[���؉\0������%s�J�{ݳn%|�j����:w�i=�dC�Ś~�Ϯ].��A�kf�w(7�G�������0,�\r�6\\J�um�2g9l ��-0�۠]1�}sy�,kk�d0�N���\0\0\0\0IEND�B`�',0),(4,'CASACAS','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0c\0\0\0c\0\0\0�;��\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\0IDATx^��K�}S\0��<�����gLP\"�(1!\"<I)�/1��D�cd�1`fh������#���7y��{���{�޽�k����է����k���9���Zk�5���_ɜ9X��������b]�˜�\\%��c�6Zn/��ds�<\'ߊ�HC�>�ˤ�|!n��{�~��貏��Uq�V?Ȣ��K�Z�m̓r�4�+�~qo�U����T.��Ž���&�J�9P8��I��߅�y�T�#�U|�N��r�|,��Sp��\r�9�/��S�Β���M�Gr�\'D�BS������3\Z��7d����y]������Xw��\\)Y��iʇ�!8�J~�˙�[YN��.\\,��P6�������ĐS�����s��P�[wNI�E�ך������R\"�Oj�JT�^���2DN�û:��.2�jo�����2t���_Jt9�n��C�\'�&�)|K�}�n��)������R�Y�H��n���=��r�tN�ƈ�1+���B�s���88:k%�ս�X\\ۣe��R�[�Jr�!:mN���{i�$�C\\�[=#�>��Ӆ��Oa���2WO���d	\r�\\���SbB���+;�e�2�5u�B�C�M�E~WnKLr�o���,4W\'�7�H	ɍB�WWnW\nפB��18�yH��.��R:�TR�C�H쀝U�-�ì�w�B6�~BWJW^��]e��xI��0�ǽ0�����&�ae�����:9#t<�d#���1v���*�q/�Z����sl�p���8yK\\��L�1�d��o�+3�������\'�{?y)�����Ѓr��Ѵ�]8�N%��W�Wvv�p���\r����.l�_r��{��=����.l�y���Q������с� �\r��-n�م-�\0��ȵ��Q�]؊g%ECp��fq�(�.l���=��0��)�ح�4��vOH�~G+r�|*���؅5��5��3��C���]X3��\r߆�ŕ[��V?J�u~E\\���k�\0ϐp��Mqe��.�Uhc|&���<+�1WVm���������7��]o�kH���$$scd��\Z��Ԇ�/}�0�h��-5�����^8ˋ�3{�v.�s|�l�m�3��ð�Ar��m�rL�h������ʪ��cr��\ZWV\rv\rOTqX�и���䛝R�¡qe\r��4]�1�+�и���kڎ�1�yMN��a�:��\ZW�P��ҥ�g��\ZW�^���^�P0Do�UB��*��^!w*��8��(�\ZWVit#M�Z:-�ƕUZ��Aح��и�Jb���aru����]�pe��D\0��<����}�v�e�%Y3?Y���O�!<���n�\n���4|�H�У��<�����N��d߈A\Z��\ra��Þ\\如k�C�]�Na�)ee?j�{]E�.tB���İ$ά��ХS>}�W_�]�+���m�7�GD_2����6�͵�[���؉\0������%s�J�{ݳn%|�j����:w�i=�dC�Ś~�Ϯ].��A�kf�w(7�G�������0,�\r�6\\J�um�2g9l ��-0�۠]1�}sy�,kk�d0�N���\0\0\0\0IEND�B`�',0);

UNLOCK TABLES;

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `documento` char(11) NOT NULL,
  `razon` varchar(300) DEFAULT NULL,
  `telefono` char(20) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `fechaRegistro` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cliente` */

LOCK TABLES `cliente` WRITE;

insert  into `cliente`(`documento`,`razon`,`telefono`,`direccion`,`fechaRegistro`,`email`,`estado`) values ('10404942501','EDGARD RAYME','','AV. LA CULTURA 772','2015-09-02','',0),('10494252000','INFORMATIC TECHNOLOGY DEVELOPMENT CORPORATION S.A.','','AV LA CULTURA 772 INT 205','2015-09-05','',0);

UNLOCK TABLES;

/*Table structure for table `compras` */

DROP TABLE IF EXISTS `compras`;

CREATE TABLE `compras` (
  `id` int(10) NOT NULL,
  `idProveedor` char(11) DEFAULT NULL,
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

insert  into `compras`(`id`,`idProveedor`,`fechaCompra`,`nroFactura`,`observacion`,`subtotal`,`impuesto`,`total`,`estado`) values (1,'45454545454','2015-09-09','QW-123','',542.37,97.63,640.00,0);

UNLOCK TABLES;

/*Table structure for table `compraxproducto` */

DROP TABLE IF EXISTS `compraxproducto`;

CREATE TABLE `compraxproducto` (
  `idProducto` int(10) NOT NULL,
  `idCompra` int(10) NOT NULL,
  `cantidad` double DEFAULT NULL,
  `precioCompra` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `igv` decimal(10,2) DEFAULT NULL,
  `precioTotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idProducto`,`idCompra`),
  KEY `idCompra` (`idCompra`),
  CONSTRAINT `compraxproducto_ibfk_1` FOREIGN KEY (`idCompra`) REFERENCES `compras` (`id`),
  CONSTRAINT `compraxproducto_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`)
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
  CONSTRAINT `comprobante_ibfk_1` FOREIGN KEY (`idTipo`) REFERENCES `tipocomprobante` (`id`),
  CONSTRAINT `comprobante_ibfk_2` FOREIGN KEY (`idVenta`) REFERENCES `ventas` (`id`)
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
  `id` int(8) NOT NULL,
  `criterio` varchar(200) DEFAULT NULL,
  `idProducto` int(8) DEFAULT NULL,
  `nomProducto` varchar(300) DEFAULT NULL,
  `idTipoDescuento` int(8) DEFAULT NULL,
  `nomDescuento` varchar(300) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idProducto` (`idProducto`),
  KEY `idTipoDescuento` (`idTipoDescuento`),
  CONSTRAINT `descuento_ibfk_2` FOREIGN KEY (`idTipoDescuento`) REFERENCES `tipodescuento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `descuento` */

LOCK TABLES `descuento` WRITE;

insert  into `descuento`(`id`,`criterio`,`idProducto`,`nomProducto`,`idTipoDescuento`,`nomDescuento`,`fechaInicio`,`fechaFin`,`estado`) values (1,'PRODUCTO',4,'CHOMPA DE LANA',2,'DESCUENTO DE 10%','2015-09-07','2015-09-30',0),(2,'CATEGORIA',1,'SIN CATEGORIA',3,'DESCUENTO 02','2015-09-07','2015-09-29',0),(3,'PROVEEDOR',2147483647,'ITDECSA',1,'DESCUENTO NAVIDEÑO','2015-09-07','2015-09-29',0);

UNLOCK TABLES;

/*Table structure for table `empresa` */

DROP TABLE IF EXISTS `empresa`;

CREATE TABLE `empresa` (
  `id` int(8) NOT NULL,
  `denominacion` text,
  `ruc` char(11) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `logo` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `empresa` */

LOCK TABLES `empresa` WRITE;

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

insert  into `formaspago`(`id`,`nombre`,`estado`) values (1,'EFECTIVO',0),(2,'CHEQUE',0),(3,'TARJETA',0),(4,'PAGARE',0);

UNLOCK TABLES;

/*Table structure for table `negocio` */

DROP TABLE IF EXISTS `negocio`;

CREATE TABLE `negocio` (
  `id` int(8) NOT NULL,
  `nombre` varchar(300) DEFAULT NULL,
  `direccion` varchar(300) DEFAULT NULL,
  `ruc` char(20) DEFAULT NULL,
  `telefono` char(15) DEFAULT NULL,
  `logo` blob,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `negocio` */

LOCK TABLES `negocio` WRITE;

UNLOCK TABLES;

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(300) DEFAULT NULL,
  `detalle` text,
  `imagen` blob,
  `precio` decimal(8,2) DEFAULT NULL,
  `idCategoria` int(8) DEFAULT NULL,
  `stock` int(8) DEFAULT NULL,
  `stockminimo` int(8) DEFAULT NULL,
  `idUnidades` int(8) DEFAULT NULL,
  `nroserie` char(50) DEFAULT NULL,
  `idCaractFisicas` int(8) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  `promocion` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idUnidades` (`idUnidades`),
  KEY `idCategoria` (`idCategoria`),
  KEY `idCaractFisicas` (`idCaractFisicas`),
  CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`idUnidades`) REFERENCES `unidades` (`id`),
  CONSTRAINT `producto_ibfk_4` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id`),
  CONSTRAINT `producto_ibfk_5` FOREIGN KEY (`idCaractFisicas`) REFERENCES `caracfisicas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `producto` */

LOCK TABLES `producto` WRITE;

insert  into `producto`(`id`,`nombre`,`detalle`,`imagen`,`precio`,`idCategoria`,`stock`,`stockminimo`,`idUnidades`,`nroserie`,`idCaractFisicas`,`estado`,`promocion`) values (1,'CERA','CERA PARA VIDRIOS','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0X\0\0\0d\0\0\0-��\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\02IDATx^����X��ڶm۶mۨ�m۶m�ֶm�{��������L2�w�uU׾��$����7N�\'t���㏕u�t�䢋.\n��W��:O����ί�\0�����w�����_:C�����?�o�1<��3�����:��N;�/�Eu�$�^v�ea���|�駟�k]	�K/���~���W_U��w�������k�\"�,�rȰ��+�7�|3ߕ\0����#�g�uV���?+�����QG-w衇===a�QG\r��w_�+�y䑰����{�O\\���{�}��7L0����_7�s�=7�����	0@Y��{�8����7�T^i����>�,�~��a�����6Zd�A��.��21 w%��u*K-�T���[��*��o��6<���a��v�L3M?�����2J��]0Kz����ov�y�h������c`=���,��Y�զ���X�LP�O<1�?��1�#���j�`�>�h8���J+�Fy�\\0��^��\0#�O<�DXq�c�{�w�\nx�̗_~��n{�g�^y��Q���&_|�E�v�m�O������#n� �_�VAS�u�Y�C�\\Y���_�5��f�)��暑:���c�=��	\'�W�b�-YAX\rk�x]+\\�믿�����*��Z�;�z�a��s�1G�x�ð��P�Z9fW�̎N8�a�u�\r�~�i��E����:�&�|�0�`���J���Epz���SL&�d���Dn�%�#�8b!�j�V������o���^;7�p1z��<��Ca�e����\Z��r���_~�%�s�9��r�w^�������{���VΡ�E���{�DM�\Zj���{��~�����o�0�����N���@!���[/�W\rc�*[�M6Y>\0��ʹ\r�v��gGv0�8�3�8#���[a�v�5�\\\0\ZP+��j���@#�_}L�ڍ6�(\\q�1�V���NU%�\ZF\Zi�B>�x�\r|\0���a�UW�?���z.�@�:�Xc�lo�g,u�v�qǁ`���#��8��UVY%���zu��G+��B�ze�j*|�X�Dc�F�q�b�1��:h.e���d�M�AoV�=TM_x��X�@?K�ˤ�B�e�d��p��7���+<�����_��n���bQG����U1���\0����E�y�\\��[n	�-�\\���F>���̚\0\n����:���r5�t�Ŕg�|\ZE�h��^+���(�u\Z�Ɏ����ۮ���( e�z;��/�f=���PĶ\0�Y�� �<��k��\ZQ7�E�ٴ�>�����↕]��?�0Ä%�X\"������*�V��q�`<T��Ҿ��Kcey\'�\n�����7׬B=7�Ţv\n�V�����]wݵcH�JY}��cm��j	�+jlH�w�V+@��f��R��F��3�0C���ʲY��馛F�ͥw�����w��b��4����u���e�l���:D�l��\r8W[m���Q��nM=�ԑ!�T��{{�7�[�T�}��Zh��9�C\Z�E6�\\sM�l����\n�@I:�KS磓��T\n	��h7%m&E@cɍ�=�3�<3�D\Z�r�=��0�l��<��Q������Dt�Y!@���j���z�*|�A?�g@�����+Rlg���\n���J?�%u����}H|=ԥ��I���\'���ܯȣ.��>�D�֎>�%�v(�g�U�0��.3-u��7�tSX~��㉗�>�T��~����Ṛ��1$��y�ٷ�j���C\0�ޛ��!V�`�H�v�}�8��h���h��QYN^\Z`Q�0�%f	�Kܽߝs�1�<���AjV�{]����FU۵dO9�H��WKh�g�����|�a��g�w�q���v�i�V�L�{$�Eť��q��ħ�UV���R��~������7^�|��\'�w����W_]ye@���4e4j�}�zdZ�ֈ��5H���%�\0���B-�{�j�Z��N�㎋֔p�f��H�i5�TQ5n\'9\'.c���O��j㧵�Ѩ�m��q��\r�&5V�1�	$Q2�`y����͎a}!ơ��伀m�u���?���LL���0n����&R`����L��C���$�:��{S�\0��dq�6+�p;��]v�%&J#�>S�nbH��՚WS�ڪ�새m��ՔKpr��Q��^���,���9���\nC��|��p�m�E�TG1�K@M�FS�d�H.�(��_��<3�nb\0E˦�$���뮫겜��d���\0�\nX@md5\0���F�Xc��~W�ϟa}���Xl`8��E;e\0��C|Q�,]��dG\"i\'�K�\0��f�kE�VK\0�M��{o�w�yK�+�zo�p=��\ZB�3�����2�AF��k�t��&�Q\0s��l-}By��aR�N	hy�Q\0���xE�0�-�%���%0Ft����>���_�	�I\'�4���N�,�}�\"�E��¹���E4�$0�0wQ�34���z�j���>I�����e5��\Z��x���q&�*���xS�&1���Y�\0��m_R�:r%�\"Rv;4�kPkP|�����z/�p,̧��t�Y�\0�cH����eʎ�*9�[,o\0/��\r6� ��k7��j�,��X���\0��;H����&?�-=2#Z�uا����\Z.���%Z�l\n@�HX).� ��f�\"\n9�\"h��-V�\\G�e�X4�יV\0��ڰ،��yH+��x�M\"�TL׻s\r���kB/���m`Uf+��T{(���jP��;�ۢëY�\\��9����w�E��Xq!�v3��T&��ӊ޴�����8�%��\Z�J�O�-��V������+���Ј�/O�V�Q�nB�b�9��/���D$���Z�F��O�nQ�F�g�-�����6�f�+A�Ly�F�����=���,Ѐ�Td�7Q�I��N�F�\'����l���1p���o��l\rB�_k6��B�4*=���<�[n�eG�%�\"35���Y�tY2�e�O��	*�	ڨ���n1��M���̤�\0�o#+e\06#,AiTz����d�\\�\'Q�_��@g2)�2Vւ=u�Q�)3�O�f\r��e�u:oAο����a��B\r	6*=eʔ�Yv\'O\'\nk?�Is�X�:y�5�Y�\"�2���ʧꗞ+��2���*HTt�$10s�1�D`daf��k�`#Sm���Tޗ�ը��w�Y�H�\n����K�Rc�}�}󄯶���v�$�k��=r�/O�b<��ɢ�r�%���=�\'�̣f�p��Y{�5Ӥ�L�;�����v\'�92�ni�┙�Zc�e�i���nR���\"&��ɲO��m�p�	j��6Qѹ�C���]/�=8t3Y�\0+L�$Q>�({�:Q4t�Y�\rܶ��lxc��U\0�.�=��\0��;HZ\r�Н֓��-	CШ,:G3��VR��.[��$lG��*yJ��Е5I�)�7*����\n�\\�3efE�dJ��Y�\0s�ZByJ���F!�.��~Ҝtn6����j�5�w�����ynV\"���[dŪ���\Z���ڄ�BO��^b�E-�����2�ؼk��[+��\0[R�u�L�;`ZE�C9d�G���ԋ/�85ǎ�Z��k�_Y�	��U�?L���Z�5Q���\"<��$Ʉƥ~a��i��-���l\r�VQ�~\0s�vS�yN���#�\":��z�k���S��GN?> O�\n���E�ܠ1�VO?��W\\��iM��BvQ�n�(�H*<t���(C&Ơ0��kI��r9ZI����\0а�Oʓ|��{�����#���F��((�֪�%��E+��`�W�4�WՊ���ͮ�t�KX�%��.�0�D#��F�u�v�?�쳕oh�\0�O��Eى�j\\L�܅���W�ŏA����w�YM6)�:�\00��D��y�~���sp�V�����j\r��V��U�e,��n��օ<���X�����wRY���\\�Ga�öʏ)vK�<*�V�K\0���_�J���T�W�޳%�!Uf\r��e�Гwry�w[Ƃ�*W3ِ�d������~����j�6���T�1�<�D�Ѯ̴*�8�k�*��Zr���9�~D���\Zp�|�/����J6�(��2˺4�Ë5E�9V`\"`(z^N�e�(�7�滬�2��n�ʘ��W��܇�N:)�\n���9Q=;#�e��ШLX���%ST�*K�\'�	<���-~3���VH�sp�,~^i��6�.�\"硞�NpI)���,��9�����2D��-�#�-���p�=.��5Oѳw\Z�5��_� %\rej&yjZ�����w�R\Z`E[�X�qy�sj����§�r�H�)nt0nI��e�k�����y����^�Dn/C򻖊ҵ�ޝ�n����	�j�.�`biy4��Y\\�፾TVo�̊�z����4p\"���	�����[�j�j�ɏ�Ԛ�h�40����,�O~�)�|:n��S��`VM�8Y���ȯ�SO��\n��z����\\x�����2�	K�]�H,XQ���@Z���3��g%&qo��j�R����e�ʀ��m��(�y��z�ZWX+�����\0�`�p`�}ꩧ�3\'lQ�����\0���`����;�Z���>SXh��I\0\0\0\0IEND�B`�',52.00,1,0,5,1,'7751851559096',1,0,0),(2,'MESAS','DAS','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0X\0\0\0d\0\0\0-��\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0�8S$\0\02IDATx^����X��ڶm۶mۨ�m۶m�ֶm�{��������L2�w�uU׾��$����7N�\'t���㏕u�t�䢋.\n��W��:O����ί�\0�����w�����_:C�����?�o�1<��3�����:��N;�/�Eu�$�^v�ea���|�駟�k]	�K/���~���W_U��w�������k�\"�,�rȰ��+�7�|3ߕ\0����#�g�uV���?+�����QG-w衇===a�QG\r��w_�+�y䑰����{�O\\���{�}��7L0����_7�s�=7�����	0@Y��{�8����7�T^i����>�,�~��a�����6Zd�A��.��21 w%��u*K-�T���[��*��o��6<���a��v�L3M?�����2J��]0Kz����ov�y�h������c`=���,��Y�զ���X�LP�O<1�?��1�#���j�`�>�h8���J+�Fy�\\0��^��\0#�O<�DXq�c�{�w�\nx�̗_~��n{�g�^y��Q���&_|�E�v�m�O������#n� �_�VAS�u�Y�C�\\Y���_�5��f�)��暑:���c�=��	\'�W�b�-YAX\rk�x]+\\�믿�����*��Z�;�z�a��s�1G�x�ð��P�Z9fW�̎N8�a�u�\r�~�i��E����:�&�|�0�`���J���Epz���SL&�d���Dn�%�#�8b!�j�V������o���^;7�p1z��<��Ca�e����\Z��r���_~�%�s�9��r�w^�������{���VΡ�E���{�DM�\Zj���{��~�����o�0�����N���@!���[/�W\rc�*[�M6Y>\0��ʹ\r�v��gGv0�8�3�8#���[a�v�5�\\\0\ZP+��j���@#�_}L�ڍ6�(\\q�1�V���NU%�\ZF\Zi�B>�x�\r|\0���a�UW�?���z.�@�:�Xc�lo�g,u�v�qǁ`���#��8��UVY%���zu��G+��B�ze�j*|�X�Dc�F�q�b�1��:h.e���d�M�AoV�=TM_x��X�@?K�ˤ�B�e�d��p��7���+<�����_��n���bQG����U1���\0����E�y�\\��[n	�-�\\���F>���̚\0\n����:���r5�t�Ŕg�|\ZE�h��^+���(�u\Z�Ɏ����ۮ���( e�z;��/�f=���PĶ\0�Y�� �<��k��\ZQ7�E�ٴ�>�����↕]��?�0Ä%�X\"������*�V��q�`<T��Ҿ��Kcey\'�\n�����7׬B=7�Ţv\n�V�����]wݵcH�JY}��cm��j	�+jlH�w�V+@��f��R��F��3�0C���ʲY��馛F�ͥw�����w��b��4����u���e�l���:D�l��\r8W[m���Q��nM=�ԑ!�T��{{�7�[�T�}��Zh��9�C\Z�E6�\\sM�l����\n�@I:�KS磓��T\n	��h7%m&E@cɍ�=�3�<3�D\Z�r�=��0�l��<��Q������Dt�Y!@���j���z�*|�A?�g@�����+Rlg���\n���J?�%u����}H|=ԥ��I���\'���ܯȣ.��>�D�֎>�%�v(�g�U�0��.3-u��7�tSX~��㉗�>�T��~����Ṛ��1$��y�ٷ�j���C\0�ޛ��!V�`�H�v�}�8��h���h��QYN^\Z`Q�0�%f	�Kܽߝs�1�<���AjV�{]����FU۵dO9�H��WKh�g�����|�a��g�w�q���v�i�V�L�{$�Eť��q��ħ�UV���R��~������7^�|��\'�w����W_]ye@���4e4j�}�zdZ�ֈ��5H���%�\0���B-�{�j�Z��N�㎋֔p�f��H�i5�TQ5n\'9\'.c���O��j㧵�Ѩ�m��q��\r�&5V�1�	$Q2�`y����͎a}!ơ��伀m�u���?���LL���0n����&R`����L��C���$�:��{S�\0��dq�6+�p;��]v�%&J#�>S�nbH��՚WS�ڪ�새m��ՔKpr��Q��^���,���9���\nC��|��p�m�E�TG1�K@M�FS�d�H.�(��_��<3�nb\0E˦�$���뮫겜��d���\0�\nX@md5\0���F�Xc��~W�ϟa}���Xl`8��E;e\0��C|Q�,]��dG\"i\'�K�\0��f�kE�VK\0�M��{o�w�yK�+�zo�p=��\ZB�3�����2�AF��k�t��&�Q\0s��l-}By��aR�N	hy�Q\0���xE�0�-�%���%0Ft����>���_�	�I\'�4���N�,�}�\"�E��¹���E4�$0�0wQ�34���z�j���>I�����e5��\Z��x���q&�*���xS�&1���Y�\0��m_R�:r%�\"Rv;4�kPkP|�����z/�p,̧��t�Y�\0�cH����eʎ�*9�[,o\0/��\r6� ��k7��j�,��X���\0��;H����&?�-=2#Z�uا����\Z.���%Z�l\n@�HX).� ��f�\"\n9�\"h��-V�\\G�e�X4�יV\0��ڰ،��yH+��x�M\"�TL׻s\r���kB/���m`Uf+��T{(���jP��;�ۢëY�\\��9����w�E��Xq!�v3��T&��ӊ޴�����8�%��\Z�J�O�-��V������+���Ј�/O�V�Q�nB�b�9��/���D$���Z�F��O�nQ�F�g�-�����6�f�+A�Ly�F�����=���,Ѐ�Td�7Q�I��N�F�\'����l���1p���o��l\rB�_k6��B�4*=���<�[n�eG�%�\"35���Y�tY2�e�O��	*�	ڨ���n1��M���̤�\0�o#+e\06#,AiTz����d�\\�\'Q�_��@g2)�2Vւ=u�Q�)3�O�f\r��e�u:oAο����a��B\r	6*=eʔ�Yv\'O\'\nk?�Is�X�:y�5�Y�\"�2���ʧꗞ+��2���*HTt�$10s�1�D`daf��k�`#Sm���Tޗ�ը��w�Y�H�\n����K�Rc�}�}󄯶���v�$�k��=r�/O�b<��ɢ�r�%���=�\'�̣f�p��Y{�5Ӥ�L�;�����v\'�92�ni�┙�Zc�e�i���nR���\"&��ɲO��m�p�	j��6Qѹ�C���]/�=8t3Y�\0+L�$Q>�({�:Q4t�Y�\rܶ��lxc��U\0�.�=��\0��;HZ\r�Н֓��-	CШ,:G3��VR��.[��$lG��*yJ��Е5I�)�7*����\n�\\�3efE�dJ��Y�\0s�ZByJ���F!�.��~Ҝtn6����j�5�w�����ynV\"���[dŪ���\Z���ڄ�BO��^b�E-�����2�ؼk��[+��\0[R�u�L�;`ZE�C9d�G���ԋ/�85ǎ�Z��k�_Y�	��U�?L���Z�5Q���\"<��$Ʉƥ~a��i��-���l\r�VQ�~\0s�vS�yN���#�\":��z�k���S��GN?> O�\n���E�ܠ1�VO?��W\\��iM��BvQ�n�(�H*<t���(C&Ơ0��kI��r9ZI����\0а�Oʓ|��{�����#���F��((�֪�%��E+��`�W�4�WՊ���ͮ�t�KX�%��.�0�D#��F�u�v�?�쳕oh�\0�O��Eى�j\\L�܅���W�ŏA����w�YM6)�:�\00��D��y�~���sp�V�����j\r��V��U�e,��n��օ<���X�����wRY���\\�Ga�öʏ)vK�<*�V�K\0���_�J���T�W�޳%�!Uf\r��e�Гwry�w[Ƃ�*W3ِ�d������~����j�6���T�1�<�D�Ѯ̴*�8�k�*��Zr���9�~D���\Zp�|�/����J6�(��2˺4�Ë5E�9V`\"`(z^N�e�(�7�滬�2��n�ʘ��W��܇�N:)�\n���9Q=;#�e��ШLX���%ST�*K�\'�	<���-~3���VH�sp�,~^i��6�.�\"硞�NpI)���,��9�����2D��-�#�-���p�=.��5Oѳw\Z�5��_� %\rej&yjZ�����w�R\Z`E[�X�qy�sj����§�r�H�)nt0nI��e�k�����y����^�Dn/C򻖊ҵ�ޝ�n����	�j�.�`biy4��Y\\�፾TVo�̊�z����4p\"���	�����[�j�j�ɏ�Ԛ�h�40����,�O~�)�|:n��S��`VM�8Y���ȯ�SO��\n��z����\\x�����2�	K�]�H,XQ���@Z���3��g%&qo��j�R����e�ʀ��m��(�y��z�ZWX+�����\0�`�p`�}ꩧ�3\'lQ�����\0���`����;�Z���>SXh��I\0\0\0\0IEND�B`�',10.00,1,50,5,1,'',1,1,0),(3,'PANTALON JEANS','PANTALONES','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0X\0\0\0d\0\0\0-��\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\02IDATx^����X��ڶm۶mۨ�m۶m�ֶm�{��������L2�w�uU׾��$����7N�\'t���㏕u�t�䢋.\n��W��:O����ί�\0�����w�����_:C�����?�o�1<��3�����:��N;�/�Eu�$�^v�ea���|�駟�k]	�K/���~���W_U��w�������k�\"�,�rȰ��+�7�|3ߕ\0����#�g�uV���?+�����QG-w衇===a�QG\r��w_�+�y䑰����{�O\\���{�}��7L0����_7�s�=7�����	0@Y��{�8����7�T^i����>�,�~��a�����6Zd�A��.��21 w%��u*K-�T���[��*��o��6<���a��v�L3M?�����2J��]0Kz����ov�y�h������c`=���,��Y�զ���X�LP�O<1�?��1�#���j�`�>�h8���J+�Fy�\\0��^��\0#�O<�DXq�c�{�w�\nx�̗_~��n{�g�^y��Q���&_|�E�v�m�O������#n� �_�VAS�u�Y�C�\\Y���_�5��f�)��暑:���c�=��	\'�W�b�-YAX\rk�x]+\\�믿�����*��Z�;�z�a��s�1G�x�ð��P�Z9fW�̎N8�a�u�\r�~�i��E����:�&�|�0�`���J���Epz���SL&�d���Dn�%�#�8b!�j�V������o���^;7�p1z��<��Ca�e����\Z��r���_~�%�s�9��r�w^�������{���VΡ�E���{�DM�\Zj���{��~�����o�0�����N���@!���[/�W\rc�*[�M6Y>\0��ʹ\r�v��gGv0�8�3�8#���[a�v�5�\\\0\ZP+��j���@#�_}L�ڍ6�(\\q�1�V���NU%�\ZF\Zi�B>�x�\r|\0���a�UW�?���z.�@�:�Xc�lo�g,u�v�qǁ`���#��8��UVY%���zu��G+��B�ze�j*|�X�Dc�F�q�b�1��:h.e���d�M�AoV�=TM_x��X�@?K�ˤ�B�e�d��p��7���+<�����_��n���bQG����U1���\0����E�y�\\��[n	�-�\\���F>���̚\0\n����:���r5�t�Ŕg�|\ZE�h��^+���(�u\Z�Ɏ����ۮ���( e�z;��/�f=���PĶ\0�Y�� �<��k��\ZQ7�E�ٴ�>�����↕]��?�0Ä%�X\"������*�V��q�`<T��Ҿ��Kcey\'�\n�����7׬B=7�Ţv\n�V�����]wݵcH�JY}��cm��j	�+jlH�w�V+@��f��R��F��3�0C���ʲY��馛F�ͥw�����w��b��4����u���e�l���:D�l��\r8W[m���Q��nM=�ԑ!�T��{{�7�[�T�}��Zh��9�C\Z�E6�\\sM�l����\n�@I:�KS磓��T\n	��h7%m&E@cɍ�=�3�<3�D\Z�r�=��0�l��<��Q������Dt�Y!@���j���z�*|�A?�g@�����+Rlg���\n���J?�%u����}H|=ԥ��I���\'���ܯȣ.��>�D�֎>�%�v(�g�U�0��.3-u��7�tSX~��㉗�>�T��~����Ṛ��1$��y�ٷ�j���C\0�ޛ��!V�`�H�v�}�8��h���h��QYN^\Z`Q�0�%f	�Kܽߝs�1�<���AjV�{]����FU۵dO9�H��WKh�g�����|�a��g�w�q���v�i�V�L�{$�Eť��q��ħ�UV���R��~������7^�|��\'�w����W_]ye@���4e4j�}�zdZ�ֈ��5H���%�\0���B-�{�j�Z��N�㎋֔p�f��H�i5�TQ5n\'9\'.c���O��j㧵�Ѩ�m��q��\r�&5V�1�	$Q2�`y����͎a}!ơ��伀m�u���?���LL���0n����&R`����L��C���$�:��{S�\0��dq�6+�p;��]v�%&J#�>S�nbH��՚WS�ڪ�새m��ՔKpr��Q��^���,���9���\nC��|��p�m�E�TG1�K@M�FS�d�H.�(��_��<3�nb\0E˦�$���뮫겜��d���\0�\nX@md5\0���F�Xc��~W�ϟa}���Xl`8��E;e\0��C|Q�,]��dG\"i\'�K�\0��f�kE�VK\0�M��{o�w�yK�+�zo�p=��\ZB�3�����2�AF��k�t��&�Q\0s��l-}By��aR�N	hy�Q\0���xE�0�-�%���%0Ft����>���_�	�I\'�4���N�,�}�\"�E��¹���E4�$0�0wQ�34���z�j���>I�����e5��\Z��x���q&�*���xS�&1���Y�\0��m_R�:r%�\"Rv;4�kPkP|�����z/�p,̧��t�Y�\0�cH����eʎ�*9�[,o\0/��\r6� ��k7��j�,��X���\0��;H����&?�-=2#Z�uا����\Z.���%Z�l\n@�HX).� ��f�\"\n9�\"h��-V�\\G�e�X4�יV\0��ڰ،��yH+��x�M\"�TL׻s\r���kB/���m`Uf+��T{(���jP��;�ۢëY�\\��9����w�E��Xq!�v3��T&��ӊ޴�����8�%��\Z�J�O�-��V������+���Ј�/O�V�Q�nB�b�9��/���D$���Z�F��O�nQ�F�g�-�����6�f�+A�Ly�F�����=���,Ѐ�Td�7Q�I��N�F�\'����l���1p���o��l\rB�_k6��B�4*=���<�[n�eG�%�\"35���Y�tY2�e�O��	*�	ڨ���n1��M���̤�\0�o#+e\06#,AiTz����d�\\�\'Q�_��@g2)�2Vւ=u�Q�)3�O�f\r��e�u:oAο����a��B\r	6*=eʔ�Yv\'O\'\nk?�Is�X�:y�5�Y�\"�2���ʧꗞ+��2���*HTt�$10s�1�D`daf��k�`#Sm���Tޗ�ը��w�Y�H�\n����K�Rc�}�}󄯶���v�$�k��=r�/O�b<��ɢ�r�%���=�\'�̣f�p��Y{�5Ӥ�L�;�����v\'�92�ni�┙�Zc�e�i���nR���\"&��ɲO��m�p�	j��6Qѹ�C���]/�=8t3Y�\0+L�$Q>�({�:Q4t�Y�\rܶ��lxc��U\0�.�=��\0��;HZ\r�Н֓��-	CШ,:G3��VR��.[��$lG��*yJ��Е5I�)�7*����\n�\\�3efE�dJ��Y�\0s�ZByJ���F!�.��~Ҝtn6����j�5�w�����ynV\"���[dŪ���\Z���ڄ�BO��^b�E-�����2�ؼk��[+��\0[R�u�L�;`ZE�C9d�G���ԋ/�85ǎ�Z��k�_Y�	��U�?L���Z�5Q���\"<��$Ʉƥ~a��i��-���l\r�VQ�~\0s�vS�yN���#�\":��z�k���S��GN?> O�\n���E�ܠ1�VO?��W\\��iM��BvQ�n�(�H*<t���(C&Ơ0��kI��r9ZI����\0а�Oʓ|��{�����#���F��((�֪�%��E+��`�W�4�WՊ���ͮ�t�KX�%��.�0�D#��F�u�v�?�쳕oh�\0�O��Eى�j\\L�܅���W�ŏA����w�YM6)�:�\00��D��y�~���sp�V�����j\r��V��U�e,��n��օ<���X�����wRY���\\�Ga�öʏ)vK�<*�V�K\0���_�J���T�W�޳%�!Uf\r��e�Гwry�w[Ƃ�*W3ِ�d������~����j�6���T�1�<�D�Ѯ̴*�8�k�*��Zr���9�~D���\Zp�|�/����J6�(��2˺4�Ë5E�9V`\"`(z^N�e�(�7�滬�2��n�ʘ��W��܇�N:)�\n���9Q=;#�e��ШLX���%ST�*K�\'�	<���-~3���VH�sp�,~^i��6�.�\"硞�NpI)���,��9�����2D��-�#�-���p�=.��5Oѳw\Z�5��_� %\rej&yjZ�����w�R\Z`E[�X�qy�sj����§�r�H�)nt0nI��e�k�����y����^�Dn/C򻖊ҵ�ޝ�n����	�j�.�`biy4��Y\\�፾TVo�̊�z����4p\"���	�����[�j�j�ɏ�Ԛ�h�40����,�O~�)�|:n��S��`VM�8Y���ȯ�SO��\n��z����\\x�����2�	K�]�H,XQ���@Z���3��g%&qo��j�R����e�ʀ��m��(�y��z�ZWX+�����\0�`�p`�}ꩧ�3\'lQ�����\0���`����;�Z���>SXh��I\0\0\0\0IEND�B`�',120.00,1,20,5,2,'40494250',1,0,0),(4,'CHOMPA DE LANA ','CHOMPAS','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0X\0\0\0d\0\0\0-��\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\02IDATx^����X��ڶm۶mۨ�m۶m�ֶm�{��������L2�w�uU׾��$����7N�\'t���㏕u�t�䢋.\n��W��:O����ί�\0�����w�����_:C�����?�o�1<��3�����:��N;�/�Eu�$�^v�ea���|�駟�k]	�K/���~���W_U��w�������k�\"�,�rȰ��+�7�|3ߕ\0����#�g�uV���?+�����QG-w衇===a�QG\r��w_�+�y䑰����{�O\\���{�}��7L0����_7�s�=7�����	0@Y��{�8����7�T^i����>�,�~��a�����6Zd�A��.��21 w%��u*K-�T���[��*��o��6<���a��v�L3M?�����2J��]0Kz����ov�y�h������c`=���,��Y�զ���X�LP�O<1�?��1�#���j�`�>�h8���J+�Fy�\\0��^��\0#�O<�DXq�c�{�w�\nx�̗_~��n{�g�^y��Q���&_|�E�v�m�O������#n� �_�VAS�u�Y�C�\\Y���_�5��f�)��暑:���c�=��	\'�W�b�-YAX\rk�x]+\\�믿�����*��Z�;�z�a��s�1G�x�ð��P�Z9fW�̎N8�a�u�\r�~�i��E����:�&�|�0�`���J���Epz���SL&�d���Dn�%�#�8b!�j�V������o���^;7�p1z��<��Ca�e����\Z��r���_~�%�s�9��r�w^�������{���VΡ�E���{�DM�\Zj���{��~�����o�0�����N���@!���[/�W\rc�*[�M6Y>\0��ʹ\r�v��gGv0�8�3�8#���[a�v�5�\\\0\ZP+��j���@#�_}L�ڍ6�(\\q�1�V���NU%�\ZF\Zi�B>�x�\r|\0���a�UW�?���z.�@�:�Xc�lo�g,u�v�qǁ`���#��8��UVY%���zu��G+��B�ze�j*|�X�Dc�F�q�b�1��:h.e���d�M�AoV�=TM_x��X�@?K�ˤ�B�e�d��p��7���+<�����_��n���bQG����U1���\0����E�y�\\��[n	�-�\\���F>���̚\0\n����:���r5�t�Ŕg�|\ZE�h��^+���(�u\Z�Ɏ����ۮ���( e�z;��/�f=���PĶ\0�Y�� �<��k��\ZQ7�E�ٴ�>�����↕]��?�0Ä%�X\"������*�V��q�`<T��Ҿ��Kcey\'�\n�����7׬B=7�Ţv\n�V�����]wݵcH�JY}��cm��j	�+jlH�w�V+@��f��R��F��3�0C���ʲY��馛F�ͥw�����w��b��4����u���e�l���:D�l��\r8W[m���Q��nM=�ԑ!�T��{{�7�[�T�}��Zh��9�C\Z�E6�\\sM�l����\n�@I:�KS磓��T\n	��h7%m&E@cɍ�=�3�<3�D\Z�r�=��0�l��<��Q������Dt�Y!@���j���z�*|�A?�g@�����+Rlg���\n���J?�%u����}H|=ԥ��I���\'���ܯȣ.��>�D�֎>�%�v(�g�U�0��.3-u��7�tSX~��㉗�>�T��~����Ṛ��1$��y�ٷ�j���C\0�ޛ��!V�`�H�v�}�8��h���h��QYN^\Z`Q�0�%f	�Kܽߝs�1�<���AjV�{]����FU۵dO9�H��WKh�g�����|�a��g�w�q���v�i�V�L�{$�Eť��q��ħ�UV���R��~������7^�|��\'�w����W_]ye@���4e4j�}�zdZ�ֈ��5H���%�\0���B-�{�j�Z��N�㎋֔p�f��H�i5�TQ5n\'9\'.c���O��j㧵�Ѩ�m��q��\r�&5V�1�	$Q2�`y����͎a}!ơ��伀m�u���?���LL���0n����&R`����L��C���$�:��{S�\0��dq�6+�p;��]v�%&J#�>S�nbH��՚WS�ڪ�새m��ՔKpr��Q��^���,���9���\nC��|��p�m�E�TG1�K@M�FS�d�H.�(��_��<3�nb\0E˦�$���뮫겜��d���\0�\nX@md5\0���F�Xc��~W�ϟa}���Xl`8��E;e\0��C|Q�,]��dG\"i\'�K�\0��f�kE�VK\0�M��{o�w�yK�+�zo�p=��\ZB�3�����2�AF��k�t��&�Q\0s��l-}By��aR�N	hy�Q\0���xE�0�-�%���%0Ft����>���_�	�I\'�4���N�,�}�\"�E��¹���E4�$0�0wQ�34���z�j���>I�����e5��\Z��x���q&�*���xS�&1���Y�\0��m_R�:r%�\"Rv;4�kPkP|�����z/�p,̧��t�Y�\0�cH����eʎ�*9�[,o\0/��\r6� ��k7��j�,��X���\0��;H����&?�-=2#Z�uا����\Z.���%Z�l\n@�HX).� ��f�\"\n9�\"h��-V�\\G�e�X4�יV\0��ڰ،��yH+��x�M\"�TL׻s\r���kB/���m`Uf+��T{(���jP��;�ۢëY�\\��9����w�E��Xq!�v3��T&��ӊ޴�����8�%��\Z�J�O�-��V������+���Ј�/O�V�Q�nB�b�9��/���D$���Z�F��O�nQ�F�g�-�����6�f�+A�Ly�F�����=���,Ѐ�Td�7Q�I��N�F�\'����l���1p���o��l\rB�_k6��B�4*=���<�[n�eG�%�\"35���Y�tY2�e�O��	*�	ڨ���n1��M���̤�\0�o#+e\06#,AiTz����d�\\�\'Q�_��@g2)�2Vւ=u�Q�)3�O�f\r��e�u:oAο����a��B\r	6*=eʔ�Yv\'O\'\nk?�Is�X�:y�5�Y�\"�2���ʧꗞ+��2���*HTt�$10s�1�D`daf��k�`#Sm���Tޗ�ը��w�Y�H�\n����K�Rc�}�}󄯶���v�$�k��=r�/O�b<��ɢ�r�%���=�\'�̣f�p��Y{�5Ӥ�L�;�����v\'�92�ni�┙�Zc�e�i���nR���\"&��ɲO��m�p�	j��6Qѹ�C���]/�=8t3Y�\0+L�$Q>�({�:Q4t�Y�\rܶ��lxc��U\0�.�=��\0��;HZ\r�Н֓��-	CШ,:G3��VR��.[��$lG��*yJ��Е5I�)�7*����\n�\\�3efE�dJ��Y�\0s�ZByJ���F!�.��~Ҝtn6����j�5�w�����ynV\"���[dŪ���\Z���ڄ�BO��^b�E-�����2�ؼk��[+��\0[R�u�L�;`ZE�C9d�G���ԋ/�85ǎ�Z��k�_Y�	��U�?L���Z�5Q���\"<��$Ʉƥ~a��i��-���l\r�VQ�~\0s�vS�yN���#�\":��z�k���S��GN?> O�\n���E�ܠ1�VO?��W\\��iM��BvQ�n�(�H*<t���(C&Ơ0��kI��r9ZI����\0а�Oʓ|��{�����#���F��((�֪�%��E+��`�W�4�WՊ���ͮ�t�KX�%��.�0�D#��F�u�v�?�쳕oh�\0�O��Eى�j\\L�܅���W�ŏA����w�YM6)�:�\00��D��y�~���sp�V�����j\r��V��U�e,��n��օ<���X�����wRY���\\�Ga�öʏ)vK�<*�V�K\0���_�J���T�W�޳%�!Uf\r��e�Гwry�w[Ƃ�*W3ِ�d������~����j�6���T�1�<�D�Ѯ̴*�8�k�*��Zr���9�~D���\Zp�|�/����J6�(��2˺4�Ë5E�9V`\"`(z^N�e�(�7�滬�2��n�ʘ��W��܇�N:)�\n���9Q=;#�e��ШLX���%ST�*K�\'�	<���-~3���VH�sp�,~^i��6�.�\"硞�NpI)���,��9�����2D��-�#�-���p�=.��5Oѳw\Z�5��_� %\rej&yjZ�����w�R\Z`E[�X�qy�sj����§�r�H�)nt0nI��e�k�����y����^�Dn/C򻖊ҵ�ޝ�n����	�j�.�`biy4��Y\\�፾TVo�̊�z����4p\"���	�����[�j�j�ɏ�Ԛ�h�40����,�O~�)�|:n��S��`VM�8Y���ȯ�SO��\n��z����\\x�����2�	K�]�H,XQ���@Z���3��g%&qo��j�R����e�ʀ��m��(�y��z�ZWX+�����\0�`�p`�}ꩧ�3\'lQ�����\0���`����;�Z���>SXh��I\0\0\0\0IEND�B`�',60.00,1,5,5,2,'',1,0,0);

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
  `documento` char(11) NOT NULL,
  `razon` varchar(200) DEFAULT NULL,
  `telefono` char(10) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `fechaRegistro` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `estado` int(1) DEFAULT '0',
  PRIMARY KEY (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `proveedor` */

LOCK TABLES `proveedor` WRITE;

insert  into `proveedor`(`documento`,`razon`,`telefono`,`direccion`,`fechaRegistro`,`email`,`estado`) values ('20490253867','ITDECSA','245844','AV LA CULTURA N° 772','2015-07-01','informes@itdecsa.com',0),('45454545454','CUSCO HOSTING','44444444','CUSCO PERU','2015-07-01','cuscohos@hotmail.com',1);

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

insert  into `tipocomprobante`(`id`,`nombre`,`estado`) values (1,'BOLETA',0),(2,'FACTURA',0),(3,'NOTA DE PEDIDO',0),(4,'TICKET',0);

UNLOCK TABLES;

/*Table structure for table `tipodescuento` */

DROP TABLE IF EXISTS `tipodescuento`;

CREATE TABLE `tipodescuento` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
  `porcentaje` int(5) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `tipodescuento` */

LOCK TABLES `tipodescuento` WRITE;

insert  into `tipodescuento`(`id`,`nombre`,`porcentaje`,`estado`) values (1,'DESCUENTO NAVIDEÑO',10,0),(2,'DESCUENTO DE 10%',10,0),(3,'DESCUENTO 02',4,0),(4,'DESCUENTO 03 ',12,0),(5,'DESCEUNTO 05',13,0),(6,'FIESTAS PATRIAAS',8,0);

UNLOCK TABLES;

/*Table structure for table `tipotarjeta` */

DROP TABLE IF EXISTS `tipotarjeta`;

CREATE TABLE `tipotarjeta` (
  `id` int(8) NOT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `tipotarjeta` */

LOCK TABLES `tipotarjeta` WRITE;

insert  into `tipotarjeta`(`id`,`nombre`,`estado`) values (1,'VISA',0),(2,'MASTER CARD',0),(3,'AMERICAN EXPRESS',0);

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

insert  into `unidades`(`id`,`nombre`,`abreviatura`,`valorBase`,`estado`) values (1,'SIN UNIDAD','S/U',0,0),(2,'UNIDADES','UNI',1,0);

UNLOCK TABLES;

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `dni` int(8) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apaterno` varchar(100) DEFAULT NULL,
  `amaterno` varchar(100) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `nick` char(50) DEFAULT NULL,
  `pass` char(50) DEFAULT NULL,
  `telefono` char(10) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `privilegio` int(1) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usuario` */

LOCK TABLES `usuario` WRITE;

insert  into `usuario`(`dni`,`nombre`,`apaterno`,`amaterno`,`sexo`,`nick`,`pass`,`telefono`,`direccion`,`nacimiento`,`privilegio`,`estado`) values (40494250,'EDGARD','RAYME','QUISPE','M','edgard','1234','45454545','AV. LA CULTURA N° 772','2015-06-30',0,0);

UNLOCK TABLES;

/*Table structure for table `ventas` */

DROP TABLE IF EXISTS `ventas`;

CREATE TABLE `ventas` (
  `id` int(8) NOT NULL,
  `idClinete` char(11) DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `impuesto` decimal(8,2) DEFAULT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `idFormaPago` int(10) DEFAULT NULL,
  `idUsuario` int(8) DEFAULT NULL,
  `fechaVenta` date DEFAULT NULL,
  `serie` char(10) DEFAULT NULL,
  `nroVenta` int(8) DEFAULT NULL,
  `nroCaja` int(5) DEFAULT NULL,
  `idTipoComprobante` int(8) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idFormaPago` (`idFormaPago`),
  KEY `idClinete` (`idClinete`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`idFormaPago`) REFERENCES `formaspago` (`id`),
  CONSTRAINT `ventas_ibfk_4` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`dni`),
  CONSTRAINT `ventas_ibfk_5` FOREIGN KEY (`idClinete`) REFERENCES `cliente` (`documento`)
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
  CONSTRAINT `ventasxproducto_ibfk_1` FOREIGN KEY (`idVentas`) REFERENCES `ventas` (`id`),
  CONSTRAINT `ventasxproducto_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ventasxproducto` */

LOCK TABLES `ventasxproducto` WRITE;

UNLOCK TABLES;

/* Procedure structure for procedure `busca_descuento` */

/*!50003 DROP PROCEDURE IF EXISTS  `busca_descuento` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `busca_descuento`(pCriterio char(20), pFiltro varchar(300))
BEGIN
    
	
	
	if(pCriterio='PRODUCTO')
	THEN 
		SELECT id, nombre    
		FROM producto
		WHERE id LIKE CONCAT('%',pFiltro,'%') OR nombre LIKE CONCAT('%',pFiltro,'%') 
		ORDER BY nombre;
		
	END IF;
	/*para la busquedad e productos-- formulario producto*/
	IF(pCriterio='PRODUCTOS')
	THEN 
		SELECT id,nombre,detalle,imagen,precio,idCategoria,stock,stockminimo,idUnidades,nroserie,idCaractFisicas,estado,promocion
		FROM producto
   		WHERE nroserie LIKE CONCAT('%',pFiltro,'%') OR nombre LIKE CONCAT('%',pFiltro,'%') 
		ORDER BY nombre;
		
	END IF;
	IF(pCriterio='CATEGORIA')
	THEN 
		SELECT id, nombre    
		FROM categoria
		WHERE id LIKE CONCAT('%',pFiltro,'%') OR nombre LIKE CONCAT('%',pFiltro,'%') 
		ORDER BY nombre;
		
	END IF;
	IF(pCriterio='PROVEEDOR')
	THEN 
		SELECT documento, razon    
		FROM proveedor
		WHERE documento LIKE CONCAT('%',pFiltro,'%') OR razon LIKE CONCAT('%',pFiltro,'%') 
		ORDER BY razon;
		
	END IF;
	IF(pCriterio='TIPODESCUENTO')
	THEN 
		SELECT id, nombre    
		FROM tipodescuento
		WHERE id LIKE CONCAT('%',pFiltro,'%') OR nombre LIKE CONCAT('%',pFiltro,'%') 
		ORDER BY nombre;
		
	END IF;
	
	
	/*para otroas busquedas*/
	
	IF(pCriterio='UNIDADES')
	THEN 
		SELECT id, nombre    
		FROM unidades
		WHERE id LIKE CONCAT('%',pFiltro,'%') OR nombre LIKE CONCAT('%',pFiltro,'%') 
		ORDER BY nombre;
		
	END IF;
	
	IF(pCriterio='FISICAS')
	THEN 
		SELECT id, dimencion    
		FROM caracfisicas
		WHERE id LIKE CONCAT('%',pFiltro,'%') OR dimencion LIKE CONCAT('%',pFiltro,'%') 
		ORDER BY dimencion;
		
	END IF;
	
END */$$
DELIMITER ;

/* Procedure structure for procedure `caracteristicas_elimina` */

/*!50003 DROP PROCEDURE IF EXISTS  `caracteristicas_elimina` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `caracteristicas_elimina`(pId INT(8))
BEGIN
    
    DELETE FROM caracfisicas	
    WHERE id = pId;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `caracteristicas_guarda` */

/*!50003 DROP PROCEDURE IF EXISTS  `caracteristicas_guarda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `caracteristicas_guarda`(pId INT(8),pDimencion VARCHAR(200), pPeso varchar(100),pColor char(30), pEstado INT(1))
BEGIN
    
    
    DECLARE pContador INT(10);  
        
    SELECT COUNT(*)INTO pContador
    FROM caracfisicas
    WHERE id = pId;
    
    IF(pContador<=0)
    THEN
	SELECT MAX(id)+1 INTO pId
	FROM caracfisicas;
    END IF;
    
    IF(ISNULL(pId)=1)
    THEN
	SET pId = 1;
    END IF;
       
    REPLACE INTO caracfisicas VALUES(pId,pDimencion,pPeso,pColor,pEstado);
    		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `caracteristicas_lista` */

/*!50003 DROP PROCEDURE IF EXISTS  `caracteristicas_lista` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `caracteristicas_lista`()
BEGIN
    
    SELECT id,dimencion,peso,color,estado
    FROM caracfisicas
    ORDER BY peso;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `categoria_elimina` */

/*!50003 DROP PROCEDURE IF EXISTS  `categoria_elimina` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `categoria_elimina`(pId INT(8))
BEGIN
    
    DELETE FROM categoria	
    WHERE id = pId;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `categoria_guarda` */

/*!50003 DROP PROCEDURE IF EXISTS  `categoria_guarda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `categoria_guarda`(pId INT(8),pNombre VARCHAR(200), pImagen blob, pEstado INT(1))
BEGIN
    
    
    DECLARE pContador INT(10);  
        
    SELECT COUNT(*)INTO pContador
    FROM categoria
    WHERE id = pId;
    
    IF(pContador<=0)
    THEN
	SELECT MAX(id)+1 INTO pId
	FROM categoria;
    END IF;
    
    IF(ISNULL(pId)=1)
    THEN
	SET pId = 1;
    END IF;
       
    REPLACE INTO categoria VALUES(pId,pNombre,pImagen,pEstado);
    		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `categoria_lista` */

/*!50003 DROP PROCEDURE IF EXISTS  `categoria_lista` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `categoria_lista`()
BEGIN
    SELECT id,nombre,imagen,estado
    FROM categoria
    ORDER BY nombre;
END */$$
DELIMITER ;

/* Procedure structure for procedure `cliente_busca` */

/*!50003 DROP PROCEDURE IF EXISTS  `cliente_busca` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `cliente_busca`(pFiltro char(11))
BEGIN
    
	SELECT razon, direccion FROM cliente WHERE documento=pFiltro;
	
END */$$
DELIMITER ;

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

/* Procedure structure for procedure `compras_guarda` */

/*!50003 DROP PROCEDURE IF EXISTS  `compras_guarda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `compras_guarda`(pId INT(10),pIdProveedor CHAR(11),pFechaCompra date,pNroFactura char(20), pObservacion text,pSubtotal decimal(10,2),pImpuesto decimal(10,2),pTotal decimal(10,2), pEstado INT(1))
BEGIN
    
    
    DECLARE pContador INT(10);  
        
    SELECT COUNT(*)INTO pContador
    FROM compras
    WHERE id = pId;
    
    IF(pContador<=0)
    THEN
	SELECT MAX(id)+1 INTO pId
	FROM compras;
    END IF;
    
    IF(ISNULL(pId)=1)
    THEN
	SET pId = 1;
    END IF;
       
    REPLACE INTO compras VALUES(pId,pIdProveedor,pFechaCompra,pNroFactura, pObservacion,pSubtotal,pImpuesto,pTotal,pEstado );
    		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `compras_id` */

/*!50003 DROP PROCEDURE IF EXISTS  `compras_id` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `compras_id`()
BEGIN
    
	SELECT COUNT(*) FROM compras;    
    
  
    END */$$
DELIMITER ;

/* Procedure structure for procedure `compras_lista` */

/*!50003 DROP PROCEDURE IF EXISTS  `compras_lista` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `compras_lista`()
BEGIN
    
 
   SELECT c.id,c.idProveedor,p.razon,c.fechaCompra,c.nroFactura,c.observacion,c.subtotal,c.impuesto,c.total,c.estado
    FROM compras c INNER JOIN proveedor p ON c.idProveedor= p.documento
    ORDER BY c.fechaCompra;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `compraxproducto_guarda` */

/*!50003 DROP PROCEDURE IF EXISTS  `compraxproducto_guarda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `compraxproducto_guarda`(pIdProducto INT(10),pIdCompra int(10),pCantidad double,pPrecioCompra decimal(10,2), pSubtotal decimal(10,2),pIgv DECIMAL(10,2),pPrecioTotal DECIMAL(10,2))
BEGIN
    
  
    
    insert INTO compras VALUES(pIdProducto,pIdCompra,pCantidad,pPrecioCompra, pSubtotal,pIgv,pPrecioTotal);
    		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `descuento_elimina` */

/*!50003 DROP PROCEDURE IF EXISTS  `descuento_elimina` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `descuento_elimina`(pId int(8))
BEGIN
    
    DELETE FROM descuento	
    WHERE id = pId;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `descuento_guarda` */

/*!50003 DROP PROCEDURE IF EXISTS  `descuento_guarda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `descuento_guarda`(pId INT(8),pCriterio char(200),pIdProducto char(11),pNomProducto varchar(300), pIdTipoDescuento int(8),pNomDescuento varchar(300),pFechaIni date,pFechaFin date, pEstado INT(1))
BEGIN
    
    
    DECLARE pContador INT(10);  
        
    SELECT COUNT(*)INTO pContador
    FROM descuento
    WHERE id = pId;
    
    IF(pContador<=0)
    THEN
	SELECT MAX(id)+1 INTO pId
	FROM descuento;
    END IF;
    
    IF(ISNULL(pId)=1)
    THEN
	SET pId = 1;
    END IF;
       
    REPLACE INTO descuento VALUES(pId,pCriterio,pIdProducto,pNomProducto,pIdTipoDescuento,pNomDescuento,pFechaIni,pFechaFin,pEstado);
    		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `descuento_lista` */

/*!50003 DROP PROCEDURE IF EXISTS  `descuento_lista` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `descuento_lista`()
BEGIN
    
    SELECT id,criterio,idProducto,nomProducto,idTipoDescuento,nomDescuento,fechaInicio,fechaFin,estado
    FROM descuento
    ORDER BY fechaInicio;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `formaspago_elimina` */

/*!50003 DROP PROCEDURE IF EXISTS  `formaspago_elimina` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `formaspago_elimina`(pId INT(8))
BEGIN
    
    DELETE FROM formaspago	
    WHERE id = pId;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `formaspago_guarda` */

/*!50003 DROP PROCEDURE IF EXISTS  `formaspago_guarda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `formaspago_guarda`(pId INT(8),pNombre VARCHAR(200), pEstado INT(1))
BEGIN
    
    
    DECLARE pContador INT(10);  
        
    SELECT COUNT(*)INTO pContador
    FROM formaspago
    WHERE id = pId;
    
    IF(pContador<=0)
    THEN
	SELECT MAX(id)+1 INTO pId
	FROM formaspago;
    END IF;
    
    IF(ISNULL(pId)=1)
    THEN
	SET pId = 1;
    END IF;
       
    REPLACE INTO formaspago VALUES(pId,pNombre,pEstado);
    		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `formaspago_lista` */

/*!50003 DROP PROCEDURE IF EXISTS  `formaspago_lista` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `formaspago_lista`()
BEGIN
    
    SELECT id,nombre,estado
    FROM formaspago
    ORDER BY nombre ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `producto_elimina` */

/*!50003 DROP PROCEDURE IF EXISTS  `producto_elimina` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `producto_elimina`(pId INT(8))
BEGIN
    
    DELETE FROM producto	
    WHERE id = pId;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `producto_guarda` */

/*!50003 DROP PROCEDURE IF EXISTS  `producto_guarda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `producto_guarda`(pId INT(8), pNombre varchar(300), pDetalle varchar(300), pImagen blob, pPrecio int(8), 
pStock int(8), pStockMin int(8),pIdCategoria int(1), pIdUnidades int(1),pIdCaractFisicas int(8),pEstado int(1),pSerie char(50),pPromocion int(1))
BEGIN
    
    
    DECLARE pContador INT(10);  
        
    SELECT COUNT(*)INTO pContador
    FROM producto
    WHERE id = pId;
    
    IF(pContador<=0)
    THEN
	SELECT MAX(id)+1 INTO pId
	FROM producto;
    END IF;
    
    IF(ISNULL(pId)=1)
    THEN
	SET pId = 1;
    END IF;
       
    REPLACE INTO producto VALUES(pId,pNombre,pDetalle,pImagen,pPrecio,pIdCategoria,pStock,pStockMin,pIdUnidades,pSerie,pIdCaractFisicas,pEstado,pPromocion);
    		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `producto_lista` */

/*!50003 DROP PROCEDURE IF EXISTS  `producto_lista` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `producto_lista`()
BEGIN
  
   
    
    SELECT id,nombre,detalle,imagen,precio,idCategoria,stock,stockminimo,idUnidades,nroserie,idCaractFisicas,estado,promocion
    FROM producto
    ORDER BY nombre;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `producto_retornaNombres` */

/*!50003 DROP PROCEDURE IF EXISTS  `producto_retornaNombres` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `producto_retornaNombres`(pId int(8), pCriterio char(20))
BEGIN
    
    if(pCriterio="categoria")
    then
	    SELECT nombre
	    FROM categoria
	    where id=pId;
    end if;
    IF(pCriterio="unidades")
    THEN
	    SELECT nombre
	    FROM unidades
	    WHERE id=pId;
    END IF;
    IF(pCriterio="fisicas")
    THEN
	    SELECT dimencion
	    FROM caracfisicas
	    WHERE id=pId;
    END IF;
    
    
    
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

/* Procedure structure for procedure `tipocomprobante_elimina` */

/*!50003 DROP PROCEDURE IF EXISTS  `tipocomprobante_elimina` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tipocomprobante_elimina`(pId INT(8))
BEGIN
    
    DELETE FROM tipocomprobante	
    WHERE id = pId;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tipocomprobante_guarda` */

/*!50003 DROP PROCEDURE IF EXISTS  `tipocomprobante_guarda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tipocomprobante_guarda`(pId INT(8),pNombre VARCHAR(200), pEstado INT(1))
BEGIN
    
    
    DECLARE pContador INT(10);  
        
    SELECT COUNT(*)INTO pContador
    FROM tipocomprobante
    WHERE id = pId;
    
    IF(pContador<=0)
    THEN
	SELECT MAX(id)+1 INTO pId
	FROM tipocomprobante;
    END IF;
    
    IF(ISNULL(pId)=1)
    THEN
	SET pId = 1;
    END IF;
       
    REPLACE INTO tipocomprobante VALUES(pId,pNombre,pEstado);
    		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tipoComprobante_lista` */

/*!50003 DROP PROCEDURE IF EXISTS  `tipoComprobante_lista` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tipoComprobante_lista`()
BEGIN
    
    SELECT id,nombre,estado
    FROM tipocomprobante
    ORDER BY nombre ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tipodescuento_elimina` */

/*!50003 DROP PROCEDURE IF EXISTS  `tipodescuento_elimina` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tipodescuento_elimina`(pId int(8))
BEGIN
    
    DELETE FROM tipodescuento	
    WHERE id = pId;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tipodescuento_guarda` */

/*!50003 DROP PROCEDURE IF EXISTS  `tipodescuento_guarda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tipodescuento_guarda`(pId int(8),pNombre varchar(200), pPorcentaje int(5), pEstado INT(1))
BEGIN
    
    
    DECLARE pContador INT(10);  
        
    SELECT COUNT(*)INTO pContador
    FROM tipoDescuento
    WHERE id = pId;
    
    IF(pContador<=0)
    THEN
	SELECT MAX(id)+1 INTO pId
	FROM tipoDescuento;
    END IF;
    
    IF(ISNULL(pId)=1)
    THEN
	SET pId = 1;
    END IF;
       
    REPLACE INTO tipoDescuento VALUES(pId,pNombre,pPorcentaje,pEstado);
    		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tipodescuento_lista` */

/*!50003 DROP PROCEDURE IF EXISTS  `tipodescuento_lista` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tipodescuento_lista`()
BEGIN
    
    SELECT id,nombre,porcentaje,estado
    FROM tipodescuento
    ORDER BY nombre ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tipotarjeta_elimina` */

/*!50003 DROP PROCEDURE IF EXISTS  `tipotarjeta_elimina` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tipotarjeta_elimina`(pId INT(8))
BEGIN
    
    DELETE FROM tipotarjeta	
    WHERE id = pId;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tipotarjeta_guarda` */

/*!50003 DROP PROCEDURE IF EXISTS  `tipotarjeta_guarda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tipotarjeta_guarda`(pId INT(8),pNombre VARCHAR(200), pEstado INT(1))
BEGIN
    
    
    DECLARE pContador INT(10);  
        
    SELECT COUNT(*)INTO pContador
    FROM tipotarjeta
    WHERE id = pId;
    
    IF(pContador<=0)
    THEN
	SELECT MAX(id)+1 INTO pId
	FROM tipotarjeta;
    END IF;
    
    IF(ISNULL(pId)=1)
    THEN
	SET pId = 1;
    END IF;
       
    REPLACE INTO tipotarjeta VALUES(pId,pNombre,pEstado);
    		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `tipotarjeta_listar` */

/*!50003 DROP PROCEDURE IF EXISTS  `tipotarjeta_listar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `tipotarjeta_listar`()
BEGIN
    
    SELECT id,nombre,estado
    FROM tipotarjeta
    ORDER BY nombre ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `unidad_elimina` */

/*!50003 DROP PROCEDURE IF EXISTS  `unidad_elimina` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `unidad_elimina`(pId INT(8))
BEGIN
    
    DELETE FROM unidades	
    WHERE id = pId;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `unidad_guarda` */

/*!50003 DROP PROCEDURE IF EXISTS  `unidad_guarda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `unidad_guarda`(pId INT(8),pNombre VARCHAR(200), pAbreviatura char(10),pValorBase int(8), pEstado INT(1))
BEGIN
    
    
    DECLARE pContador INT(10);  
        
    SELECT COUNT(*)INTO pContador
    FROM unidades
    WHERE id = pId;
    
    IF(pContador<=0)
    THEN
	SELECT MAX(id)+1 INTO pId
	FROM unidades;
    END IF;
    
    IF(ISNULL(pId)=1)
    THEN
	SET pId = 1;
    END IF;
       
    REPLACE INTO unidades VALUES(pId,pNombre,pAbreviatura,pValorBase,pEstado);
    		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `unidad_lista` */

/*!50003 DROP PROCEDURE IF EXISTS  `unidad_lista` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `unidad_lista`()
BEGIN
    
    SELECT id,nombre,abreviatura,valorbase,estado
    FROM unidades
    ORDER BY nombre ASC;
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

/* Procedure structure for procedure `ventas_busca_producto` */

/*!50003 DROP PROCEDURE IF EXISTS  `ventas_busca_producto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ventas_busca_producto`(pFiltro VARCHAR(300))
BEGIN
	
    declare descuento int(1);
    declare pId int(8);
    DECLARE pNombre varchar(300);
    DECLARE pPrecio decimal(8,2);
    DECLARE pStock INT(8);
    DECLARE pStockMinimo INT(8);
    DECLARE pIdCategoria INT(8);
    DECLARE pNombreCategoria VARCHAR(300);
    
    SELECT id, nombre, precio, stock, stockminimo, idCategoria into pId, pNombre, pPrecio, pStock, pStockMinimo,pIdCategoria FROM producto WHERE estado =0 and (nombre=pFiltro OR nroserie=pFiltro);
	/*primero obtenemos a que CATEGORIA pertenece el producto*/
	select nombre into pNombreCategoria from categoria where id=pIdCategoria and estado=0;
	/*segundo obtenemos a que PROVEEDOR pertenece el producto*/
	SELECT nombre INTO pNombreCategoria FROM categoria WHERE id=pIdCategoria AND estado=0;
	
	/*luego evaluamos*/
END */$$
DELIMITER ;

/* Procedure structure for procedure `ventas_formas_pago` */

/*!50003 DROP PROCEDURE IF EXISTS  `ventas_formas_pago` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ventas_formas_pago`()
BEGIN
    
    SELECT id,nombre FROM formaspago WHERE estado='0' order by id;
   
END */$$
DELIMITER ;

/* Procedure structure for procedure `ventas_tipos_comprobante` */

/*!50003 DROP PROCEDURE IF EXISTS  `ventas_tipos_comprobante` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ventas_tipos_comprobante`()
BEGIN
    
    SELECT id,nombre FROM tipocomprobante WHERE estado='0' ORDER BY id;
   
END */$$
DELIMITER ;

/* Procedure structure for procedure `ventas_tipos_tarjeta` */

/*!50003 DROP PROCEDURE IF EXISTS  `ventas_tipos_tarjeta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ventas_tipos_tarjeta`()
BEGIN
    
    SELECT id,nombre FROM tipotarjeta WHERE estado='0' ORDER BY id;
   
END */$$
DELIMITER ;

/* Procedure structure for procedure `venta_serienumero` */

/*!50003 DROP PROCEDURE IF EXISTS  `venta_serienumero` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `venta_serienumero`(pNombreComprobante varchar(100))
BEGIN
    
    
    DECLARE pContador INT(10);
    DECLARE ultimoNro INT(8);
    DECLARE ultimoSerie INT(8);
    declare pId int(8);
    
    select id into pId from tipocomprobante where nombre = pNombreComprobante;
         
    SELECT COUNT(*)INTO pContador
    FROM ventas
    WHERE idTipoComprobante = pId;
    
    IF(pContador<0)
    THEN
	SELECT MAX(serie), MAX(nroVenta) INTO ultimoSerie, ultimoNro 
	FROM ventas WHERE idTipoComprobante = pId;
	
    else 
	set ultimoSerie=0;
	SET ultimoNro=0;
    END IF;
    
    select ultimoSerie, ultimoNro; 
    		
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
