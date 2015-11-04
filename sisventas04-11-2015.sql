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

insert  into `cliente`(`documento`,`razon`,`telefono`,`direccion`,`fechaRegistro`,`email`,`estado`) values ('10404942501','EDGARD RAYME','','AV. LA CULTURA 772','2015-09-02','',0),('10494252000','INFORMATIC TECHNOLOGY DEVELOPMENT CORPORATION S.A.','','AV LA CULTURA 772 INT 205','2015-09-05','',0),('20490253867','SDASD','','DSA','2015-09-18','',0);

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

insert  into `compras`(`id`,`idProveedor`,`fechaCompra`,`nroFactura`,`observacion`,`subtotal`,`impuesto`,`total`,`estado`) values (2,'45454545454','2015-09-10','SSSS','',428.81,77.19,506.00,0),(3,'45454545454','2015-09-18','DHGD','',338.98,61.02,400.00,0);

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

insert  into `compraxproducto`(`idProducto`,`idCompra`,`cantidad`,`precioCompra`,`subtotal`,`igv`,`precioTotal`) values (1,2,22,12.00,223.73,40.27,264.00),(2,2,11,22.00,205.08,36.92,242.00),(3,2,10,20.00,169.49,30.51,200.00),(4,2,20,10.00,169.49,30.51,200.00);

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
  `precioCompra` decimal(8,2) DEFAULT NULL,
  `precioVenta` decimal(8,2) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `producto` */

LOCK TABLES `producto` WRITE;

insert  into `producto`(`id`,`nombre`,`detalle`,`imagen`,`precioCompra`,`precioVenta`,`idCategoria`,`stock`,`stockminimo`,`idUnidades`,`nroserie`,`idCaractFisicas`,`estado`,`promocion`) values (1,'CERA','CERA PARA VIDRIOS','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0X\0\0\0d\0\0\0-��\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\02IDATx^����X��ڶm۶mۨ�m۶m�ֶm�{��������L2�w�uU׾��$����7N�\'t���㏕u�t�䢋.\n��W��:O����ί�\0�����w�����_:C�����?�o�1<��3�����:��N;�/�Eu�$�^v�ea���|�駟�k]	�K/���~���W_U��w�������k�\"�,�rȰ��+�7�|3ߕ\0����#�g�uV���?+�����QG-w衇===a�QG\r��w_�+�y䑰����{�O\\���{�}��7L0����_7�s�=7�����	0@Y��{�8����7�T^i����>�,�~��a�����6Zd�A��.��21 w%��u*K-�T���[��*��o��6<���a��v�L3M?�����2J��]0Kz����ov�y�h������c`=���,��Y�զ���X�LP�O<1�?��1�#���j�`�>�h8���J+�Fy�\\0��^��\0#�O<�DXq�c�{�w�\nx�̗_~��n{�g�^y��Q���&_|�E�v�m�O������#n� �_�VAS�u�Y�C�\\Y���_�5��f�)��暑:���c�=��	\'�W�b�-YAX\rk�x]+\\�믿�����*��Z�;�z�a��s�1G�x�ð��P�Z9fW�̎N8�a�u�\r�~�i��E����:�&�|�0�`���J���Epz���SL&�d���Dn�%�#�8b!�j�V������o���^;7�p1z��<��Ca�e����\Z��r���_~�%�s�9��r�w^�������{���VΡ�E���{�DM�\Zj���{��~�����o�0�����N���@!���[/�W\rc�*[�M6Y>\0��ʹ\r�v��gGv0�8�3�8#���[a�v�5�\\\0\ZP+��j���@#�_}L�ڍ6�(\\q�1�V���NU%�\ZF\Zi�B>�x�\r|\0���a�UW�?���z.�@�:�Xc�lo�g,u�v�qǁ`���#��8��UVY%���zu��G+��B�ze�j*|�X�Dc�F�q�b�1��:h.e���d�M�AoV�=TM_x��X�@?K�ˤ�B�e�d��p��7���+<�����_��n���bQG����U1���\0����E�y�\\��[n	�-�\\���F>���̚\0\n����:���r5�t�Ŕg�|\ZE�h��^+���(�u\Z�Ɏ����ۮ���( e�z;��/�f=���PĶ\0�Y�� �<��k��\ZQ7�E�ٴ�>�����↕]��?�0Ä%�X\"������*�V��q�`<T��Ҿ��Kcey\'�\n�����7׬B=7�Ţv\n�V�����]wݵcH�JY}��cm��j	�+jlH�w�V+@��f��R��F��3�0C���ʲY��馛F�ͥw�����w��b��4����u���e�l���:D�l��\r8W[m���Q��nM=�ԑ!�T��{{�7�[�T�}��Zh��9�C\Z�E6�\\sM�l����\n�@I:�KS磓��T\n	��h7%m&E@cɍ�=�3�<3�D\Z�r�=��0�l��<��Q������Dt�Y!@���j���z�*|�A?�g@�����+Rlg���\n���J?�%u����}H|=ԥ��I���\'���ܯȣ.��>�D�֎>�%�v(�g�U�0��.3-u��7�tSX~��㉗�>�T��~����Ṛ��1$��y�ٷ�j���C\0�ޛ��!V�`�H�v�}�8��h���h��QYN^\Z`Q�0�%f	�Kܽߝs�1�<���AjV�{]����FU۵dO9�H��WKh�g�����|�a��g�w�q���v�i�V�L�{$�Eť��q��ħ�UV���R��~������7^�|��\'�w����W_]ye@���4e4j�}�zdZ�ֈ��5H���%�\0���B-�{�j�Z��N�㎋֔p�f��H�i5�TQ5n\'9\'.c���O��j㧵�Ѩ�m��q��\r�&5V�1�	$Q2�`y����͎a}!ơ��伀m�u���?���LL���0n����&R`����L��C���$�:��{S�\0��dq�6+�p;��]v�%&J#�>S�nbH��՚WS�ڪ�새m��ՔKpr��Q��^���,���9���\nC��|��p�m�E�TG1�K@M�FS�d�H.�(��_��<3�nb\0E˦�$���뮫겜��d���\0�\nX@md5\0���F�Xc��~W�ϟa}���Xl`8��E;e\0��C|Q�,]��dG\"i\'�K�\0��f�kE�VK\0�M��{o�w�yK�+�zo�p=��\ZB�3�����2�AF��k�t��&�Q\0s��l-}By��aR�N	hy�Q\0���xE�0�-�%���%0Ft����>���_�	�I\'�4���N�,�}�\"�E��¹���E4�$0�0wQ�34���z�j���>I�����e5��\Z��x���q&�*���xS�&1���Y�\0��m_R�:r%�\"Rv;4�kPkP|�����z/�p,̧��t�Y�\0�cH����eʎ�*9�[,o\0/��\r6� ��k7��j�,��X���\0��;H����&?�-=2#Z�uا����\Z.���%Z�l\n@�HX).� ��f�\"\n9�\"h��-V�\\G�e�X4�יV\0��ڰ،��yH+��x�M\"�TL׻s\r���kB/���m`Uf+��T{(���jP��;�ۢëY�\\��9����w�E��Xq!�v3��T&��ӊ޴�����8�%��\Z�J�O�-��V������+���Ј�/O�V�Q�nB�b�9��/���D$���Z�F��O�nQ�F�g�-�����6�f�+A�Ly�F�����=���,Ѐ�Td�7Q�I��N�F�\'����l���1p���o��l\rB�_k6��B�4*=���<�[n�eG�%�\"35���Y�tY2�e�O��	*�	ڨ���n1��M���̤�\0�o#+e\06#,AiTz����d�\\�\'Q�_��@g2)�2Vւ=u�Q�)3�O�f\r��e�u:oAο����a��B\r	6*=eʔ�Yv\'O\'\nk?�Is�X�:y�5�Y�\"�2���ʧꗞ+��2���*HTt�$10s�1�D`daf��k�`#Sm���Tޗ�ը��w�Y�H�\n����K�Rc�}�}󄯶���v�$�k��=r�/O�b<��ɢ�r�%���=�\'�̣f�p��Y{�5Ӥ�L�;�����v\'�92�ni�┙�Zc�e�i���nR���\"&��ɲO��m�p�	j��6Qѹ�C���]/�=8t3Y�\0+L�$Q>�({�:Q4t�Y�\rܶ��lxc��U\0�.�=��\0��;HZ\r�Н֓��-	CШ,:G3��VR��.[��$lG��*yJ��Е5I�)�7*����\n�\\�3efE�dJ��Y�\0s�ZByJ���F!�.��~Ҝtn6����j�5�w�����ynV\"���[dŪ���\Z���ڄ�BO��^b�E-�����2�ؼk��[+��\0[R�u�L�;`ZE�C9d�G���ԋ/�85ǎ�Z��k�_Y�	��U�?L���Z�5Q���\"<��$Ʉƥ~a��i��-���l\r�VQ�~\0s�vS�yN���#�\":��z�k���S��GN?> O�\n���E�ܠ1�VO?��W\\��iM��BvQ�n�(�H*<t���(C&Ơ0��kI��r9ZI����\0а�Oʓ|��{�����#���F��((�֪�%��E+��`�W�4�WՊ���ͮ�t�KX�%��.�0�D#��F�u�v�?�쳕oh�\0�O��Eى�j\\L�܅���W�ŏA����w�YM6)�:�\00��D��y�~���sp�V�����j\r��V��U�e,��n��օ<���X�����wRY���\\�Ga�öʏ)vK�<*�V�K\0���_�J���T�W�޳%�!Uf\r��e�Гwry�w[Ƃ�*W3ِ�d������~����j�6���T�1�<�D�Ѯ̴*�8�k�*��Zr���9�~D���\Zp�|�/����J6�(��2˺4�Ë5E�9V`\"`(z^N�e�(�7�滬�2��n�ʘ��W��܇�N:)�\n���9Q=;#�e��ШLX���%ST�*K�\'�	<���-~3���VH�sp�,~^i��6�.�\"硞�NpI)���,��9�����2D��-�#�-���p�=.��5Oѳw\Z�5��_� %\rej&yjZ�����w�R\Z`E[�X�qy�sj����§�r�H�)nt0nI��e�k�����y����^�Dn/C򻖊ҵ�ޝ�n����	�j�.�`biy4��Y\\�፾TVo�̊�z����4p\"���	�����[�j�j�ɏ�Ԛ�h�40����,�O~�)�|:n��S��`VM�8Y���ȯ�SO��\n��z����\\x�����2�	K�]�H,XQ���@Z���3��g%&qo��j�R����e�ʀ��m��(�y��z�ZWX+�����\0�`�p`�}ꩧ�3\'lQ�����\0���`����;�Z���>SXh��I\0\0\0\0IEND�B`�',52.00,0.00,1,22,5,1,'7751851559096',1,0,0),(2,'MESAS','DAS','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0B\0\0\0d\0\0\02���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0���k�\0\0C�IDATx^��wX�y�-�7Q�������E�D1��ss��9`�9!DED	��9v���{�̜{�s��[��l�{���QϛC�Z���e���=�?�~e�>h�j������:���mޫ�>hzgq� 4�x���39G��m�6����Zӊ���z���9b=�l1�k{�5^�}��u��1����n�� �����u��z�( �����3���;W�O=(�X�g��<^g���`G\'{�W&�z�;OL��]j�����Ȳ�j�������]+�;G�Ogj]�ћ/ً���3m,ϭ��[��n��S��E��>��GQߴ��t���]��L���7���I�~�`؟�שk����k��(�$���)�i���n�O�[Ω�~�j���pL����ʴ��x�z/�鯳���y�އKqXg���\'����/��g�O�=W�����{�8�\0��ҵ��և���\0j��t���A�YL���2���Z�t/\"�brL\0ӛ�\\�dyB-�����1�t�S����v����L����;�����?W�~:_�����Qk��u/�-Zj�_���־x�C:\'���מ��>��P�\'�i��3��{j�=���w����m���i�w��>�����4��=\\�:ӽ쟎�ܿ����s���pe��3t�6��������xN�#����|Z���O@Ӄ_�9:R?1��|F�}��4������uZ#/�����q�����;���jC.�`�yh��y�:w(��%��9�ar-���S���;��F\'��mygu>�3�B-��T�����T�4�@y�C��j���v��?o�C���l�eh����ŲitXL�#6����yj���5�>(Z_���Ӄ�YS�=�`p]��N���ΡOu�I#/�w@9\'�M^��:T����mq�6���F��׳����M���F�\Ze����F����)&�!qV�/���L���u�鯕���\0#V�)I�Cï�:�e��_�kM;\"�Ή��&�B�����[����$��������r���[곩�o&�Ԛ\\åv��S�r��NT-��a�H��^@\0Ў����o� �ϡ���m���Wg���y�NށF����ڑEЌ*�f�=h�=�6��Fހq�G�X�\r�$�ꮗ{	��zy��le��g�1�K��Tm0����WS@�9/��\n�%Rt�.Z��\0�q� /���|��&ѹ���M.�ѨB��O\0J`$�������#�`�R\n��`8��&��z@��\r�=S�L����$=�Hݶ��1}Z�N�E]�p��[T���!����r���%=`��yq��Ɍ��r��y�|X�+B@b���6NX�抆�`8����aL@��1��0H�\'8��T�e\0�\'ӟ�{�ZP�ޟ:A�d)\0(�y���Yyx �VǀD�i.\0$\0�vd�2C�n8�&��rt)�SK�(�������q\n�c�0�xt�sd\'U`4H$cF�)��p���Zӎ���cd\"�\n���?Y-�5��AЯ��D����i��T�d;�K\"�QO*&\0e:_ä2�\'W�l�[�c��U�)�2�b�^L]�qC��1m+������������y\nL.�Q2��\\�?�M��f0�Ϧ���$8�^ M�Gp)&z��`�V��.�E]��K�iBs�w}���c���k�Ku��kS*��TH}˴pN͇[���IBʤ��g�@�/�8�r����<�!�L|��5h8��R��ar9��ʕ�h�x���\0J,�2�JY&��d�b��ǥ�9��]�N�W�΃���#�T]Q��Ĩj�����p\\5LӪa<�\ZLz����626�A0w��q3G4����\ZF���<�=`3&�Sk`5�Vk`AV��#�R*��j��R��XW�Xm:��jӛf��U�?�뉼W\"����R3�΋c��Y\0��zu��4)<&�}�Fh�F���Ʉ\'\n�i��b�s�t��6~hf��V`���6h��.�]aj���3``��y`7�)ZL}���|b5�R	�5d���E�A�NtPX8ꯦcQp�<�+ӝ��\0����-\rGKt%��\"݉�@4[��Ԍ�4�:_f,oH3���j`��F��d�4�T�擫�|�gF��.~h���]`�����ت5m;�ӳ#�\\��5���U{8�π���h>�-�����J�N�Q 0e�c�$(j��b�m�8y:.��LO��V��\ZI�*�;�e�F3���s��q��<7`44����Kp]o��jh�r��!���d2a�4�Nm6,}��O��3�N������Ѹ�+L,a��M\Z:�P����`h�ƚ�0h�ו�`7�%�S��=U)f:�\n�*u���J��284��\0��jA������1L=.5ډ<i���Sx`w��)��L�E���\ZM}���)�a@��K�a�c�1�t���*�.y\r�u`Ւ)��\Z+h����\rLMl���fF-`���v�04��VC�Z�&jl����h>�\Z��fS�a��0�{L��U�Pޗ��o<ME��E�4�֦�GP]\0%�\Z�S����}F�y��rM���,.g��\\�ɛ�df1\Z��\"sy.�jf�j�`�c4Z�VK��ٲg�[�m�!��hXX� �L��5R�Z��t�]+4o�	s�Rc�Cc�ZC�[�N��1�_�����@�`��3��)1d(&����+j�J�M6Ip%�:��iO�R���شgj�1��bs��p6�?f>�%lmn`?���<R��6_P�EU0�W��\n4XX�����)h��%<�>���Wp������4q���3L,[�̬9E�L�fph�_�.��h��\r[ sh�a�!+�/��ڷpY��ZT�&Kٌ�yF�ءΦ�|7}��g2@4Ig�`�t��o6��=�p�L��i��u6���Y���jחT�Y�%ܷ�͖�+k���W���\n�.��új�g<F��Wh��\Z����M;X����3�m��hIf4���-\Z�����,��̤�\Z�)d��a�nh��#\\ֽ��r2c�4]X˹���ϓ�T�\0��-Sf�`����2�:c_Sgܞ�cbs�=4�9l2�Uz1T�t��,�v�:G[Y���e��E�[U�Vkyު����>�u�༾�*�vK%�w<�S�Xx���[pZ��\"8�D6Q:add	��h`�f��jK��[�	\Z�0FR�!���W�c������2��#�H\'���dI	U��=R�o����z�\\TQk(���*�\Z�Up]�g���p_�\0����j��>���|).3\n���+T�!����aK	�l/G�aүqGX���]�A�����-L\Z;Ü�iѨ\Z7qF�F.pw��GS�gc8z���ad`#MR�����gk1�3�~���^cu!�Z��z��&�>Z-c���@�Rخ(E��%�Gh��TG������y�CAW�1�7�F�u��>�����B�e^Ǡ��~�=tۘ�� t�-Lٕ��{n!lg	z�+AlV�r�ѻ���Є}��EШL�mm#1-�anf�F�\r�.\r�94\n�\Z��ց�I��`�rl:skO���ùXu��﹄�{�������6����cuZ�f�V2h�ບ�ZS7ЙAs#s=3\nᵶ\0m�݃��p!��2Jᴎ$X�^j��k�����D��\\�ؙ��n`��[�c+O�G��k|�5�켇�m�ܔ��y�>������0���)G�]w)x6pn�Μ\'�¥} <��¨QKX�Zػ���;�)C���~X�]�0������Fvؚ]�G���}$f\\�P+f�5�^����.a�3���A��sm6�������6:�σ�-����Ӗ�˸��w�1��m�_��/�F�kfﾆ)��`��[�}<ۏ�B���H�s�� m�1�9zs��aD�%�9S�]9�2���?�%G�Q�}�.��|�7�&;���E[ط��qso4ql��p��k\'�x��ɵL��qa\Z�©]4�o;��ٔ:�k5��;a&���o\"e�uݔ���ǆlDm����D������t��n\"z�u������rݷ�C�ͷ��&�n+@����[���G�滊ٚԍg0f�1�<t��oc쪳��4/:�����3v\'�d�A��l�=y[��C����q�~��}�O��\0;t�\n+��H6L�Y\n#z�(�t��_Pt�3>�pk�	Aaqh�\n�����-]T����_3�k���f�Ús1�P&g�a�.$+s��1y�iL�|7gcȆ���m��1�/b����ސ�a��H;T�>ks�j�FD,<���\'�k]�m��!��c����]���9�u�.`��s�6���F����l;}��_�咦W0���z�.>@|�AL�~�+��A�w���c�֌hS�OLCLl<��Bb�D��E÷}�Юcx�E�ȴ!�ڸ�Њ,`���8��fb��*����rd���3����Y�U�/bs����=��Kc��+ؗ}.�&�.�o�6��8���a��0�^���\"r�q4���-h�g\'��dA�3�8F�rS3/�}�4�.���m�>L�x+��ĔW�s��_w~�v#~�9,>p�O]��s�v�i�=w\\�O� ��&Z4�����Q����Ó1`p�\r����\Zk���w�q��k�L��.�)��M��#���ʩ���u!Y�J�(�A8z	�N33Ob�+��;,�\\��B��-X|�2f�\r�����sw n�9���˸�oޣ���Z�>������y�-0��Þ�`�F����a�F}��d�AX�B�{t?��m�0�f�N�Y�)X�F��	J�\r4-�б��/F�C0v\\\Z��1l���5��`��\rH%1�Y!$6M�1t�\\VW�ͻ�@T�N$/;�փV�+i+:N�B��z\\Eچ��>f+�m?����#$u7�c7�{�.�\\}��Ľ������&p������e�|��]�##7�0z+�zf�4f;�F�`B�AӸh14�@�i�L4�P�4n\Z�ڌ&�[д�&X��\0��mh�����Hj4�m�h8���u\n ˧��2Xi4�1f�*�f���\n��\Z����3Ö́�V�Ѡi�btLم�I�!q=���]W`��<djN�t釮#�X.�f�Ƭ���94�q�Hو���X~2s��e����,:�ۅ���3l��@Ғ�ИGmD㘵h�ͺ��u�\n��\n-cסE�Xw_���h�m�o�s,���\"b=�z�F�^kм�:�p=\\�n��`�Jk�K�c�3t��t��u5wciԨ^��ɋM�4P�`h�ͬ�a�쁖N��0�`YBkl�FM�i�Nt���P�b��[�3��l���%g���$BG�E��S��N}�)�G��}�(����;�m�6��A��G���4B�@܌�H\\z\Z���p�]�6��Gl:<�C�D�1v)\\{��S��p�~w�o�m���g�e�<��k��o\r����O��p�}:��J`B\r��e|���e�f=���>�@h\Z 2�/�4jH�$5Ȓ&��a�������͹Oc�=�nǅ��q�1�g;?h=8���[����a�Λ��CV�i�<4�6���W���$;X���q�R�D�YY8W���_��=��1�ѺW:Z�,�;�n�s��Y�>���k!�Wþ{:�{.�[�B��^m����x�-�o����G�M������\Z��� ��Z�G{�>��v��Z:m\n#���\rB[gv�\rab�Ρp�\'h�Ɛ�i,�`呇�����g���O\\��p����㈕N^���h�]F퇹_*zMދ��m�\Z��k`�y2���q�\\�V!p,��&gb_N	4�=���%��\\��a��xRӰ�h�-��6b>���>j!���!r���M�\"���\"f��g\nf��6�K��Z�^0��Ũ�P;��ړ�2mi���M-�\r`nނ��k�-����M�\ZY�u�e�I߄]��z��{�ஆ�հ�\0&�f©�j��f v�^�r:\\bf���\"�����)�H����\"K��·S�\\Ŧ�U���N��\Z7:�����g�%p�\0^q��F�C�H�޳0h)�z̅w�t�p٦�<4�0��@�~4^ɬéдM���x��Zj���o�e(\Z����Es�5��L�V��Ę�4�>.�	F��s�O:��/\Z�����t�-��6!�`:6L��!K0q�a��>�����9q?�O����1fd�7i%�c+���)p��va�X�s)����>�g�-lZG̀k�Tx���m�T�����Qs�Jx�X�Ѷ�,Fh:L|�ðs\Z,�¨�D��@&L�A�4v%�X##s4�xm�9	>�R9La`a�Mu��Fh�!\r��LWQ�D����k����0X�̆i�Ih1��V� t&$��F,�i ���*�1�6�]�\n��)�[�L��\\����h�Ĥ����J%e���R�����\nћ:�@�o�B����I��L�w�ih7�{�A����7qs��c��\'�=|\Z�#����d�NCsn�$o�U��:��fä�x4�2-Zu�}���!���ѝ)b+6`i$IC2A��!�U>��(��n���c1���՟\"=d\rSx\Z�.�f��˯�e�4,��)��|$�^v�Z��b�B{\nuԸm�I�����I�\r���h��V����oZ�Yֳֽ��6��S�2\r.4�)ǰ�p��\n��Ip	���ә\Z���}\Z+�t8��D�.�h�?ͻN��e8���^�y�9H��\r�����d�@��OC\'o��nhh�	c�01��UK��;�pc��-a�̗�GoV`�B6q�q�3e�^\n�!,���y�|��lƁ�H]�Q�T	6����5/4b���K�[��:�\0V�GԴ��>���l�[�,�m��/v�~\Z�n�Ѣ�8�����8�MGs�y��Ц\n�C�d:6���fo0~}�A�d���a3v`���]0�+&\r�����s(L��è�4�]\r;��.Qꓝ胡�)�{?��l�-�`ب\\[��oL\"Vy�6�O�D����˗�F��uwK!f�B�<�T�2��[��azLGx�L�qkN�Gt\Zǆ^����ט�i����glɬ��h��ִ���P:3���e�H�<V�`2�!�`�>�	h�e̼��G�����Gr��c�a0�h:���g�#�?fm>��������>p\r���0�mC]hDMad�u����FV�`��\Z��Ì�3���(F��J�\Z��Qkо�2�Z����^���V6��Q�ba�y��fz���O\\C��,��ԃ�)��2��6h�&l�q�Z�iԴ�h>�)5·�DX�\rG�t�}0|{�E�mS�>h�\nc�A0t���tܡ\'4������y �tB�Va��LcO��#\r歃4h�P�#Ƣk�\n��;���h�E���a3�b	o���w�|*~��\r�?y+�\"21��q��	��U�(4���/]u¶l�\Z��f:lg9���2�1��0f*��M�����*�#y�Xv����1���gLB���a<Z_�s���N����9pNC���0ug�gO��n���0���~����i�D�Y�����: \rm(��(�c`�1N�\'z\n\\���	p��a>��є� +�	Z#V3v�\\�Z:�ܦ+�{�aɮ�X�u	���1m��]����q���k�r�L߅�Swb���h���\'̺�@��=X��L��E��G`�m�O�����1�\rF~\Z�[SV��!��4t�y]#�a�M;��@Fqz��ĈNF�->s��\'�k�98zM�sc��+ޤ�s�$8�\"\0�a�5Y���o\"L<G���x�P���o\ZuJ�%�i̚�rij`��N0�j�ك`�%\Zc;h��G4Y���s���p�Ψ�DP�l$��\rǞ��p�MT++��/������akL�������Yn��i[���}D�zDPx��98ƤS�fð�8���ep\ZG�̭?���\nߞ���OSQ�6p:ZG��_����&�}�ȣ�>�}&��,(�&m�¨�v��L��\n3�D4�8\Z-��8x���Xy�mV��T��-[�f��}�:�;����>�\rX\n���`�6떆Żr1qq�.�e?���#V#h�؄͇M������>yO��]WT��1~#�݆�E5X��b��S��1,�s�c�>t�	r8K�E��\'��֡���?RҮS\"�C�Ȋ	h�7����ی��� X�J0a�C��3�m�²m\"m8�-@ٗ���7�܇��t��g<Z�&��{4�`l�\\�I�[�u0���@��ܨ���ca��[���\n����h��1j��ǥ���b�YD`ٽ�M�Y�	��a����y�gV\"<a�>|��\"�O~���ϰ�J!�Ru�dv��|�.�T�fY\r.�k��15����U$u �Q\0��x��`N����`4mO���>�h�>��D4���9w���k��t>�?���7?bΦ�p��.�1b>���Ó%O#�h��̑i`�~I0h#6^Z�N0��3�@2i8\Z���y�hĥf\"p�L���^I0r�k<���LAd�V�)b�o�]�iX��.<,Ƶ�WH]��!�21k�)��~�9�r�w�_(��G�q��3�^H��T�\0:�\"�����e,���H6�H�U��h�9���� ص�0����mot��\rӶ� ��*>���Ͽ\"~�z��l�죡u��vIp��g�	��SW��l��р�f�	c�`�uf0�����5~5\ZuL���1h�.x�Q�|��<3HmY�M������5.�űkt��=\n�\0��zk�\\��ۏ�t=@N�[\\.����U��\"�M�ɛ�8�[��Y�={(�H�:���}�\'\0������{OX���C`߅գ{�1�6�P�iB�Hݕ�!+�!�6n�I�|����Թ\'��l��6��p�V����#��pP͛9,3�hs��4���[8R����]GٴMC3�l��h5���֡X�E�{N؊=���8vK���񛅸R���\\��+��b>g�1;��Nb�l��a�\'#}�YD��Y٪���0Y��>qp�����Ѭ�P����{w�L�M�\\�`���\0h�9�-��P�DODr�yį<�	ۯaj�\r�Y��w�\0+��e�\Z�أ���SP�_���>�۱h��Na0t��C0l�z�4�z\"�T�4M�\'1c�U�ٻ#��a��w�N�ͭDv�c��z=f!|�\\��E�I����� ����J�\r�{N`J\'�+t2��R1\'�,���fg�!�šC�P�MEP\\�OFx#`Ҏ�wcLgZù�p���(��@��#��0,:��3�`��C�5��֝Ÿ��0t�6]q0t�����A��U;�ĺ|X�\r�B`���E��B�}0s�.�����\0s��4{\Z�>�h������-g�q1��N�r�F�d�D����bOF��1���\0�>����?v�cR���9�[�u�`u����-d�\0M�^�7a݇!��pxw����|aظ��c�֪\\:��ڵ7�ɠ��t$�>���;s���Fp�VLߏ�L�1[.a�Ӭ凔#�q)h�1�C\\?�c���X٥ZG��1\r����<F҂��U���%�9�X3�D�FCW��^l�`��5�]�πC7��Ni0���!��\" �Ac�&$��&sV�$L��aY�a�c�9�	��К�aw6���s���.��.d ܺD��apn��[G��k$�;fy�.��j���?K����,����S2	�N_s\n)��N\"i�Q�Zi��a��8��C׾h��6�����\'X��Q�cFVX������Bћ�0r�^XuI�e��Зm0�ێD\'v�&m�am��L�X�[O�E�x�\0���E=K�K�d��Y�\r�ch*��\0��Q�:q8dere`�zMB\'��C�ׯ�@���BԠt�\0��>t�w��Aі�|�x+���t�@C�HL�{#V���95=�S2���� v�>�$�B��=\n���n���?�>�eا\Z�D\"t�4T}�\r�?�NݕN�~F��_P��{�{�	W��B�4.#88�!v���~���˯�[?2fEU��1{*S�-~��<�M]�!��9t�z%7.�����m�r�SH\"�F��?$���r���֝{��7\\��u��X8���S;:ߪ�9G��c(bF-�D*s켽�4:�V��[�6CV�o�f�[��C��w?����x��?��;�]z��Ww�#}Y�JX:�Cc��.!螴U_~Cٛ_Ȋ�j�N��y�+�Po���5�.��8xPZ�Y�c�9����\0]�/#��\"Z��e�F�g����.���e�% (v<:G��?˲\0�1|g+�hXz���\r��{l�`���\\���;.��p��[��f�}0��N�ʣ��~�d@\0�\\�љh=h\\o@��Q��g<x�E/@��_:<\r�Q�\Z:�`��895X:�\n�HXy�����ǿ�ͯ�o~�/T}�^E������{��A�aߙ\'\0�!#ќ���/Q������y���pgĽ�F�C��И4�t�n�S(Րx�\Z�va▎�a�&��w��{7�rgw������g,���an������R֜ER�Qt�������	����1h	�P���w��×����w(z�9���}��qxZy��cf�y���(��zÀ]�i���#j�n3`2G�G��h7d)&f��ŒW����T\r���J;%���8t\Z�j$y���]��4hÊ�6\n�C�ѕ# :U��s�Ht�P�9j$�Ŧ  6��D�v\rE+�`��\n��O�]��ܥ;�XҚy�(0Z����63�břD�؉Nc6���]p�?�7_A��_���;<g���#2�E��ǵ�U�Ѯ�b4��3~�\"�q�J4\r_\nM�bh�͇Q�\"�7��\\�.�y�B4�`%_��\r���y�]�������1z��%v��3��;d<	�8�)b4��!8z<�{�C��dBט1����>�;�z��+E{��m�0�z��R���+N���T��\r��f^Ѱ��C�����\"z�ى(�����蚼�^����?(�ռ�K��]��ޓ��g�\"��g\\)��/a�K� t!\ZE��E0G�t/�r5��A�Ju��m	�	��q&!��}���Z��-�;�+~�=S�>�i�̜�N�I�\ZM��StC@z�Gh_:�o�Z�d�/M�F�M��w4��!0�\'��z��}�:Ƣ�_w�e\'ئm���Ťmy���������;��ÒW_���GeO����7���d�{�J�|��/X	xޛ/H\\q\n�����0r4�t6p\rL���6`��,d%:��6p	�]��q���5��Q�En�;\\,{�s���s�sf:w��1=Ƣ���]��G�o�hxGQh�����d�[�x8tf���5�L�\0�N�9�5���;��cz_t	�N`Ċ���0�>��������+GK^�s�9V�jQ��;��\'V�ۯ(�e�>(!�㱤����s	ZD��S��k�-�Q�v^�?S\'p4���6,�y� |U��Q��T�l�\\*}�g�юy�5\Zm���t��Il�|��W��+K�+Y��Ɛ�.A#a�m�����\Z����-���Qf	4ᜡ��c��>H�t=�n��\Z�����������Z* �أ�_PNm(yN��Ⱦ*2G��BZA\r�y�K�ٕ��-b��y�9�I��PZ��4���aH�w]���s��p?ҏ����\n��[�S�����r��ty�DR%M5Z-;$�q���oǲڊ�ʎkMa�f*Ⱥ}�H8r�oّ}�I�.\n�U{�6���/,���6M؍������WQ��g�?y�G�~�0����?�����	EtV�.�������Q��\'T��������(�������\n\\.~�����G��t�Y�\ZyO>���7�y0h?ڮK`�/?e��E��k8s�9�>x����9_�\Z�K�`̲��Y���������z�E�)h�~0�6c#��?�Ou`h�	��4MBa!�n�nhڦ\'��z�Z������b�|Q�GQc�:^������tZ���W<~���|������x���\\���/?��������>�L}��ܚw�y��β�_�֣/�Y�\Z�f쇦�ub�t]M�j�M܎�d�j�U��7�d�S�yP��JɏD��݇��;�u�*�g�8\n��S�(d�V��dW~��k����j2��i�C�\0���B��E(cGX���(��7�~��|�\":% �	�[.e?���K�\rYJ���* c\nX�۟	��UX�+������=���op��9.>|���8q�N>���WԌ�L���v�´��v���m�ʽ7�Y�e8�[�~ku0��\n^c�R���=o���T}V��u�!6�,��㷰�B!4�����oh�&h����*P��/����)~�c���tR@)�C��~�K�}ҝWH!}��+�2E�҉�����ҧ�M]�G�<|�����g~bT�p��S��)ő�G���8�Ǽ�W�7+p��έbU������&������!a%ܮ���2�R��W�#�F)�]/��\"^_�����������?���%�|�>�\\z��n�i4V��p�@D%.T��e�>�\r�T���O*�ƥ������u��3[`{�Q�s�\0�|y�\'K����wx��?q��Gܡ�J���;v�����j��+�!����S���8]��:AA�{��-��4rƬ>����HYm�sj��\r�˰��}t.+����`����{����Y5�8�P}0�x�l8S����N��z����S,,8L�[��_p��Ec��0B�+`������?.L���oL��xDp��?����*��CW����}���ELX��%���1.�a\Z���\'�+�\\Ǧ�8q���������즓n����\Z�ڊ���oB���c�\\�ۯ�c��|�{��d�q������Xw�����\"*~ʾ�?���$��\r���y�;N�?�h�Fȶ��\0��\'���\rE~@������Q���U\n��3.� ��p���1���o>Mf���e{n��`�}���b#Gx1������O��]y�����Ǟk��v�6���u��b��z��.�`���?s_E^l��,Տ��}�>qW�l��kXr�:4w�؍�o�Ǻ~��\'��=#d��;,\0���cG}F���	���\'�(&C�������܂ןp���\Z�����a��HX�s�Ԩ2jB��i���L�k��){��u���R����jQ�z95��_�ǡ�\Z��oԯ���W*�g���L~�/��p�P���m���U�u���\\��Y��j�#���b����ES\"����\"&�SJ��y��t�9�Y21����Ǿ�o���G>E���o��=��#N�W���olѿ`�5�����)W�r��BU�]Wɜ\n��H�$@~s������ȝ\'�it ��y�}7*�Fe�y��B�� S6�.$@Xs�.�A\0�W�\Z�ֳ��% �r��\0b���d�C���~���A�F/�:���)�7�E��1<O��ۿ��J$����j~���YE�����7?�D�l�@��P�s+U�8�_�c��q�U�4��z5�R�C٬��J+�X��9yGU�}��y�cޣ\n�n�x|��J�Fp������&Z���ud�-ԥ�\0!/yWZ_:��P>s[�8-\0��޻�պ�T=(��\r�tP����	����+o(�?��?����?���M�sΨ�ʦ����5\"��\n}��R�D�����Y��TE��\r���dE���8x�X�L�<�C�\rg��.H��}�÷�b��\n�ž�i\"�������[�������@L���@�g��n������J���v���aH���?�Sً��SUa��H\Z�5��y�\0��)����\n)Ħs��X�r��)�߫����#ʭV?�$�ǯ>��u\'�+�6�+$�ocɾ�d�W�J6_��[Rc��\\\n�#�\"\Zq�>ul ����ALX!V��{�8�[���-�(�P������A͏���B������zʶ��3����]�*:�? �aR�IU��λ���O�ǎ�t��_�W��rV\rY���m�e�����_���g��[X~X\'�R1���YJ����c���cj�fj�R��Oq �\n�X�]�ԗN}�[!�4J7�ߪr*�����7ʿp�`i����=w_~��\'�) �\'A[ɭTu�$j��r�<l>{O��l��St�6�P��z�i���Wa�Ň�z�D5KR$6�/�&TQ�c��������ɪ�cĚ���a�\0p�c�,����B}f(&Ԗ��M��ɒ~�ox���UՑ�I\"/}������S��g�y����/�.�\Z+ч���b��+�<���*��$m&d��ܽה�/?tC1a�5v��\rD�K�fW6.��4V)�c��j�^��{7��x� ��-�IGa�bD��6���Zq��hՖPB�mݾ���.�\'v���?�����9d�ͪO�V���sd��Cv�G�E����N�B%h�����ݗUc$��}�\Z���4	p��{s�����8��ZV��f�V�_�/��\"3v^��m0i�I,�G�IjHZ�g�T\r��m=u��b�\0!�H�ˬ�f��T�j!\Z!B*�o�O�Q���\n��	�[%�BݽT��Gi������4<�\0����0�*֐�c�0��=���r�!������=u�\0S@�2)����h�~��d��;J�����;3w\\��z@���ͱX�ٯXB ��Ҥ�JT\'��<�*Hc%�e�O�PlQ�^�	��_q���%�p��g5�H\n]*}��ﱗ���z�Ja������	�I��#�B�{ݹb�\\y6�UΉ�M˼��G1ֲ�,ݗ�v�­�J�?�GQ.T�)�K?pC�I��S\n�ͧl��Z�2�5��s6X�\\6Y���у�O�^HϠ�J9�+��&(�.�e��Q�W+ޫ�Q����(��ʾ0}�4\\�ǉ���C��F�\0�rWN���*���\rJ��`.�@�P@��]����M���Xu�\Z����&�+�D;D�p\r������O>(�u=b�\0 V�|�h�㪽�R���}����#�`�~�nT����׊a\"�2�T~��j�r�>��×�ߨ�KZd��3wUs$��AV�q+��u�e��f����_�IJH��lɡ[b��c�8.�+�!�@�mb�k5��� �s&�M�V�A�+#�i}j��וXe��\"���SNZ��~U�X%;�����BE/n=�\'���>S��,|��oy񴍧�c\"|��8y\n͏�V�t&d^*���*���B\Zg�q�6U%i��u���L�\Za���\0�_�k�\0��V���Q����\0�TP)��컟�VH!��1jD�R��w�{�Q\'�PZ��7\n��U�ԗ���?�BU���g]�\"���S���\\���֫�J$�7��+��>TNI���ceS��S�O����Z�RA�b���\"� + �	�� ���R�����:@�\"#�Y}Z��w�)��;��_�C�P��J��0m>����\n��/���{j�\\���ݜ/�P�&g�Dy����*ń\r�\Z┤�26H�E� ��2*�#b�F�����[�Xje�$��q^J�\0!��ӈl殪��Ϋz3G}����7��V�|���~U�w���)O:O]�3�������W\\.����t) \"y8�	N���J8e)%��}I�\"���rkԺ|�їDG��6[�>us4�G!rB��5d��VL�X@S����w��ke�\Z!��g����B!\0Hԫ�EJQ#6S���/x��?�t�z\"����UM�ת�x�u!�����]�#$����z)��\r������7�c�TK- �R\0�vZ��A?����Нg8z�F#�1��\0Ӧ��)җ��\"��ܣ�z6�I�$=��\\F��! (d�E\0�&��2p}��\Z�w��v�m��W���2�_,y�T���?��{�L�����!:/ʤy����\Z]�{���\nL���dH��j%~�YJt a��;�q���ږ�m�u��8��\n��HZ	3�c�|�Q}��y�X�U���c�t�tB���D���\r�A�7Ew�t/�,�@H�H�- �dI�k�d;��-������h#G��])R�\'IaÍ���l��^~�R�B�����r�(@�@��^�$�^���&r������\Zݗ�*���:1�8./�Hɿ��z ��0aG���yYJe�4�������Ȯ���l�n<!�/T�;ɜ�/Ի9&&I�w�h�{��\n�Ds.�-?˒z�HҨF9*����r<W>�����r��Ǻ��и\'��.ٟ�*�a6m�E;��	V>�i$Bzd)��냪����G�T\0pW`��@�E��R��� /��R���ŕJ\n\"��3El�J^*�/�0r����`ޓ��q�\r9����d�6^x��\\�k��W%�RI\0��	.�Ii-�D~ύR$�8�E�Xe��2,Z�D��n�=z��.5t��L��w�7�J_�n��[U=Tz�\\�r:���\n�@��y���ZJ��G\"{���ă�t�-�\\*�?V \\(����TU8O\r�����{�]�u@<����0��ϊ����ꫵ��8�����U��:U�J�$�-�~c��<�>.���[�`�\'�Tj�5Bءk���|�uN��> ��{�����c��D����jH��&�O�+���\0q���ɇ�,�7W�1F�:���2EQ�mI!����_�ǜǿ�M}��T&z��l��#�@�&�I��%�i����U5���J�j�g��/�U}�ͩ~���)��,�B@���*~�C9�+���~�$(��ja{-˩���(��� ��V�H��=SeR��<�����|��}�*~���M��Ųw8��Ζ|V=�8)�\"l@��)��	�YN��,���\0#�ɗ�-�n�>�li�Tg�g������\"��Z��_��i�8����Oj�/xϖ���*��!�y�&Ή��D}߭J�4�I9Md������b�\r��2ݾ�����?��_|��d�q��)A���1�Z\')���R�\'��\Z�H#��5ioԬ!C�h����<���+H�qF�\0\0\0\0IEND�B`�',10.00,17.00,1,61,5,1,'',1,0,0),(3,'PANTALON JEANS','PANTALONES','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0X\0\0\0d\0\0\0-��\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\02IDATx^����X��ڶm۶mۨ�m۶m�ֶm�{��������L2�w�uU׾��$����7N�\'t���㏕u�t�䢋.\n��W��:O����ί�\0�����w�����_:C�����?�o�1<��3�����:��N;�/�Eu�$�^v�ea���|�駟�k]	�K/���~���W_U��w�������k�\"�,�rȰ��+�7�|3ߕ\0����#�g�uV���?+�����QG-w衇===a�QG\r��w_�+�y䑰����{�O\\���{�}��7L0����_7�s�=7�����	0@Y��{�8����7�T^i����>�,�~��a�����6Zd�A��.��21 w%��u*K-�T���[��*��o��6<���a��v�L3M?�����2J��]0Kz����ov�y�h������c`=���,��Y�զ���X�LP�O<1�?��1�#���j�`�>�h8���J+�Fy�\\0��^��\0#�O<�DXq�c�{�w�\nx�̗_~��n{�g�^y��Q���&_|�E�v�m�O������#n� �_�VAS�u�Y�C�\\Y���_�5��f�)��暑:���c�=��	\'�W�b�-YAX\rk�x]+\\�믿�����*��Z�;�z�a��s�1G�x�ð��P�Z9fW�̎N8�a�u�\r�~�i��E����:�&�|�0�`���J���Epz���SL&�d���Dn�%�#�8b!�j�V������o���^;7�p1z��<��Ca�e����\Z��r���_~�%�s�9��r�w^�������{���VΡ�E���{�DM�\Zj���{��~�����o�0�����N���@!���[/�W\rc�*[�M6Y>\0��ʹ\r�v��gGv0�8�3�8#���[a�v�5�\\\0\ZP+��j���@#�_}L�ڍ6�(\\q�1�V���NU%�\ZF\Zi�B>�x�\r|\0���a�UW�?���z.�@�:�Xc�lo�g,u�v�qǁ`���#��8��UVY%���zu��G+��B�ze�j*|�X�Dc�F�q�b�1��:h.e���d�M�AoV�=TM_x��X�@?K�ˤ�B�e�d��p��7���+<�����_��n���bQG����U1���\0����E�y�\\��[n	�-�\\���F>���̚\0\n����:���r5�t�Ŕg�|\ZE�h��^+���(�u\Z�Ɏ����ۮ���( e�z;��/�f=���PĶ\0�Y�� �<��k��\ZQ7�E�ٴ�>�����↕]��?�0Ä%�X\"������*�V��q�`<T��Ҿ��Kcey\'�\n�����7׬B=7�Ţv\n�V�����]wݵcH�JY}��cm��j	�+jlH�w�V+@��f��R��F��3�0C���ʲY��馛F�ͥw�����w��b��4����u���e�l���:D�l��\r8W[m���Q��nM=�ԑ!�T��{{�7�[�T�}��Zh��9�C\Z�E6�\\sM�l����\n�@I:�KS磓��T\n	��h7%m&E@cɍ�=�3�<3�D\Z�r�=��0�l��<��Q������Dt�Y!@���j���z�*|�A?�g@�����+Rlg���\n���J?�%u����}H|=ԥ��I���\'���ܯȣ.��>�D�֎>�%�v(�g�U�0��.3-u��7�tSX~��㉗�>�T��~����Ṛ��1$��y�ٷ�j���C\0�ޛ��!V�`�H�v�}�8��h���h��QYN^\Z`Q�0�%f	�Kܽߝs�1�<���AjV�{]����FU۵dO9�H��WKh�g�����|�a��g�w�q���v�i�V�L�{$�Eť��q��ħ�UV���R��~������7^�|��\'�w����W_]ye@���4e4j�}�zdZ�ֈ��5H���%�\0���B-�{�j�Z��N�㎋֔p�f��H�i5�TQ5n\'9\'.c���O��j㧵�Ѩ�m��q��\r�&5V�1�	$Q2�`y����͎a}!ơ��伀m�u���?���LL���0n����&R`����L��C���$�:��{S�\0��dq�6+�p;��]v�%&J#�>S�nbH��՚WS�ڪ�새m��ՔKpr��Q��^���,���9���\nC��|��p�m�E�TG1�K@M�FS�d�H.�(��_��<3�nb\0E˦�$���뮫겜��d���\0�\nX@md5\0���F�Xc��~W�ϟa}���Xl`8��E;e\0��C|Q�,]��dG\"i\'�K�\0��f�kE�VK\0�M��{o�w�yK�+�zo�p=��\ZB�3�����2�AF��k�t��&�Q\0s��l-}By��aR�N	hy�Q\0���xE�0�-�%���%0Ft����>���_�	�I\'�4���N�,�}�\"�E��¹���E4�$0�0wQ�34���z�j���>I�����e5��\Z��x���q&�*���xS�&1���Y�\0��m_R�:r%�\"Rv;4�kPkP|�����z/�p,̧��t�Y�\0�cH����eʎ�*9�[,o\0/��\r6� ��k7��j�,��X���\0��;H����&?�-=2#Z�uا����\Z.���%Z�l\n@�HX).� ��f�\"\n9�\"h��-V�\\G�e�X4�יV\0��ڰ،��yH+��x�M\"�TL׻s\r���kB/���m`Uf+��T{(���jP��;�ۢëY�\\��9����w�E��Xq!�v3��T&��ӊ޴�����8�%��\Z�J�O�-��V������+���Ј�/O�V�Q�nB�b�9��/���D$���Z�F��O�nQ�F�g�-�����6�f�+A�Ly�F�����=���,Ѐ�Td�7Q�I��N�F�\'����l���1p���o��l\rB�_k6��B�4*=���<�[n�eG�%�\"35���Y�tY2�e�O��	*�	ڨ���n1��M���̤�\0�o#+e\06#,AiTz����d�\\�\'Q�_��@g2)�2Vւ=u�Q�)3�O�f\r��e�u:oAο����a��B\r	6*=eʔ�Yv\'O\'\nk?�Is�X�:y�5�Y�\"�2���ʧꗞ+��2���*HTt�$10s�1�D`daf��k�`#Sm���Tޗ�ը��w�Y�H�\n����K�Rc�}�}󄯶���v�$�k��=r�/O�b<��ɢ�r�%���=�\'�̣f�p��Y{�5Ӥ�L�;�����v\'�92�ni�┙�Zc�e�i���nR���\"&��ɲO��m�p�	j��6Qѹ�C���]/�=8t3Y�\0+L�$Q>�({�:Q4t�Y�\rܶ��lxc��U\0�.�=��\0��;HZ\r�Н֓��-	CШ,:G3��VR��.[��$lG��*yJ��Е5I�)�7*����\n�\\�3efE�dJ��Y�\0s�ZByJ���F!�.��~Ҝtn6����j�5�w�����ynV\"���[dŪ���\Z���ڄ�BO��^b�E-�����2�ؼk��[+��\0[R�u�L�;`ZE�C9d�G���ԋ/�85ǎ�Z��k�_Y�	��U�?L���Z�5Q���\"<��$Ʉƥ~a��i��-���l\r�VQ�~\0s�vS�yN���#�\":��z�k���S��GN?> O�\n���E�ܠ1�VO?��W\\��iM��BvQ�n�(�H*<t���(C&Ơ0��kI��r9ZI����\0а�Oʓ|��{�����#���F��((�֪�%��E+��`�W�4�WՊ���ͮ�t�KX�%��.�0�D#��F�u�v�?�쳕oh�\0�O��Eى�j\\L�܅���W�ŏA����w�YM6)�:�\00��D��y�~���sp�V�����j\r��V��U�e,��n��օ<���X�����wRY���\\�Ga�öʏ)vK�<*�V�K\0���_�J���T�W�޳%�!Uf\r��e�Гwry�w[Ƃ�*W3ِ�d������~����j�6���T�1�<�D�Ѯ̴*�8�k�*��Zr���9�~D���\Zp�|�/����J6�(��2˺4�Ë5E�9V`\"`(z^N�e�(�7�滬�2��n�ʘ��W��܇�N:)�\n���9Q=;#�e��ШLX���%ST�*K�\'�	<���-~3���VH�sp�,~^i��6�.�\"硞�NpI)���,��9�����2D��-�#�-���p�=.��5Oѳw\Z�5��_� %\rej&yjZ�����w�R\Z`E[�X�qy�sj����§�r�H�)nt0nI��e�k�����y����^�Dn/C򻖊ҵ�ޝ�n����	�j�.�`biy4��Y\\�፾TVo�̊�z����4p\"���	�����[�j�j�ɏ�Ԛ�h�40����,�O~�)�|:n��S��`VM�8Y���ȯ�SO��\n��z����\\x�����2�	K�]�H,XQ���@Z���3��g%&qo��j�R����e�ʀ��m��(�y��z�ZWX+�����\0�`�p`�}ꩧ�3\'lQ�����\0���`����;�Z���>SXh��I\0\0\0\0IEND�B`�',120.00,0.00,1,30,5,2,'40494250',1,0,0),(4,'CHOMPA DE LANA ','CHOMPAS','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0X\0\0\0d\0\0\0-��\0\0\0sRGB\0���\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��o�d\0\02IDATx^����X��ڶm۶mۨ�m۶m�ֶm�{��������L2�w�uU׾��$����7N�\'t���㏕u�t�䢋.\n��W��:O����ί�\0�����w�����_:C�����?�o�1<��3�����:��N;�/�Eu�$�^v�ea���|�駟�k]	�K/���~���W_U��w�������k�\"�,�rȰ��+�7�|3ߕ\0����#�g�uV���?+�����QG-w衇===a�QG\r��w_�+�y䑰����{�O\\���{�}��7L0����_7�s�=7�����	0@Y��{�8����7�T^i����>�,�~��a�����6Zd�A��.��21 w%��u*K-�T���[��*��o��6<���a��v�L3M?�����2J��]0Kz����ov�y�h������c`=���,��Y�զ���X�LP�O<1�?��1�#���j�`�>�h8���J+�Fy�\\0��^��\0#�O<�DXq�c�{�w�\nx�̗_~��n{�g�^y��Q���&_|�E�v�m�O������#n� �_�VAS�u�Y�C�\\Y���_�5��f�)��暑:���c�=��	\'�W�b�-YAX\rk�x]+\\�믿�����*��Z�;�z�a��s�1G�x�ð��P�Z9fW�̎N8�a�u�\r�~�i��E����:�&�|�0�`���J���Epz���SL&�d���Dn�%�#�8b!�j�V������o���^;7�p1z��<��Ca�e����\Z��r���_~�%�s�9��r�w^�������{���VΡ�E���{�DM�\Zj���{��~�����o�0�����N���@!���[/�W\rc�*[�M6Y>\0��ʹ\r�v��gGv0�8�3�8#���[a�v�5�\\\0\ZP+��j���@#�_}L�ڍ6�(\\q�1�V���NU%�\ZF\Zi�B>�x�\r|\0���a�UW�?���z.�@�:�Xc�lo�g,u�v�qǁ`���#��8��UVY%���zu��G+��B�ze�j*|�X�Dc�F�q�b�1��:h.e���d�M�AoV�=TM_x��X�@?K�ˤ�B�e�d��p��7���+<�����_��n���bQG����U1���\0����E�y�\\��[n	�-�\\���F>���̚\0\n����:���r5�t�Ŕg�|\ZE�h��^+���(�u\Z�Ɏ����ۮ���( e�z;��/�f=���PĶ\0�Y�� �<��k��\ZQ7�E�ٴ�>�����↕]��?�0Ä%�X\"������*�V��q�`<T��Ҿ��Kcey\'�\n�����7׬B=7�Ţv\n�V�����]wݵcH�JY}��cm��j	�+jlH�w�V+@��f��R��F��3�0C���ʲY��馛F�ͥw�����w��b��4����u���e�l���:D�l��\r8W[m���Q��nM=�ԑ!�T��{{�7�[�T�}��Zh��9�C\Z�E6�\\sM�l����\n�@I:�KS磓��T\n	��h7%m&E@cɍ�=�3�<3�D\Z�r�=��0�l��<��Q������Dt�Y!@���j���z�*|�A?�g@�����+Rlg���\n���J?�%u����}H|=ԥ��I���\'���ܯȣ.��>�D�֎>�%�v(�g�U�0��.3-u��7�tSX~��㉗�>�T��~����Ṛ��1$��y�ٷ�j���C\0�ޛ��!V�`�H�v�}�8��h���h��QYN^\Z`Q�0�%f	�Kܽߝs�1�<���AjV�{]����FU۵dO9�H��WKh�g�����|�a��g�w�q���v�i�V�L�{$�Eť��q��ħ�UV���R��~������7^�|��\'�w����W_]ye@���4e4j�}�zdZ�ֈ��5H���%�\0���B-�{�j�Z��N�㎋֔p�f��H�i5�TQ5n\'9\'.c���O��j㧵�Ѩ�m��q��\r�&5V�1�	$Q2�`y����͎a}!ơ��伀m�u���?���LL���0n����&R`����L��C���$�:��{S�\0��dq�6+�p;��]v�%&J#�>S�nbH��՚WS�ڪ�새m��ՔKpr��Q��^���,���9���\nC��|��p�m�E�TG1�K@M�FS�d�H.�(��_��<3�nb\0E˦�$���뮫겜��d���\0�\nX@md5\0���F�Xc��~W�ϟa}���Xl`8��E;e\0��C|Q�,]��dG\"i\'�K�\0��f�kE�VK\0�M��{o�w�yK�+�zo�p=��\ZB�3�����2�AF��k�t��&�Q\0s��l-}By��aR�N	hy�Q\0���xE�0�-�%���%0Ft����>���_�	�I\'�4���N�,�}�\"�E��¹���E4�$0�0wQ�34���z�j���>I�����e5��\Z��x���q&�*���xS�&1���Y�\0��m_R�:r%�\"Rv;4�kPkP|�����z/�p,̧��t�Y�\0�cH����eʎ�*9�[,o\0/��\r6� ��k7��j�,��X���\0��;H����&?�-=2#Z�uا����\Z.���%Z�l\n@�HX).� ��f�\"\n9�\"h��-V�\\G�e�X4�יV\0��ڰ،��yH+��x�M\"�TL׻s\r���kB/���m`Uf+��T{(���jP��;�ۢëY�\\��9����w�E��Xq!�v3��T&��ӊ޴�����8�%��\Z�J�O�-��V������+���Ј�/O�V�Q�nB�b�9��/���D$���Z�F��O�nQ�F�g�-�����6�f�+A�Ly�F�����=���,Ѐ�Td�7Q�I��N�F�\'����l���1p���o��l\rB�_k6��B�4*=���<�[n�eG�%�\"35���Y�tY2�e�O��	*�	ڨ���n1��M���̤�\0�o#+e\06#,AiTz����d�\\�\'Q�_��@g2)�2Vւ=u�Q�)3�O�f\r��e�u:oAο����a��B\r	6*=eʔ�Yv\'O\'\nk?�Is�X�:y�5�Y�\"�2���ʧꗞ+��2���*HTt�$10s�1�D`daf��k�`#Sm���Tޗ�ը��w�Y�H�\n����K�Rc�}�}󄯶���v�$�k��=r�/O�b<��ɢ�r�%���=�\'�̣f�p��Y{�5Ӥ�L�;�����v\'�92�ni�┙�Zc�e�i���nR���\"&��ɲO��m�p�	j��6Qѹ�C���]/�=8t3Y�\0+L�$Q>�({�:Q4t�Y�\rܶ��lxc��U\0�.�=��\0��;HZ\r�Н֓��-	CШ,:G3��VR��.[��$lG��*yJ��Е5I�)�7*����\n�\\�3efE�dJ��Y�\0s�ZByJ���F!�.��~Ҝtn6����j�5�w�����ynV\"���[dŪ���\Z���ڄ�BO��^b�E-�����2�ؼk��[+��\0[R�u�L�;`ZE�C9d�G���ԋ/�85ǎ�Z��k�_Y�	��U�?L���Z�5Q���\"<��$Ʉƥ~a��i��-���l\r�VQ�~\0s�vS�yN���#�\":��z�k���S��GN?> O�\n���E�ܠ1�VO?��W\\��iM��BvQ�n�(�H*<t���(C&Ơ0��kI��r9ZI����\0а�Oʓ|��{�����#���F��((�֪�%��E+��`�W�4�WՊ���ͮ�t�KX�%��.�0�D#��F�u�v�?�쳕oh�\0�O��Eى�j\\L�܅���W�ŏA����w�YM6)�:�\00��D��y�~���sp�V�����j\r��V��U�e,��n��օ<���X�����wRY���\\�Ga�öʏ)vK�<*�V�K\0���_�J���T�W�޳%�!Uf\r��e�Гwry�w[Ƃ�*W3ِ�d������~����j�6���T�1�<�D�Ѯ̴*�8�k�*��Zr���9�~D���\Zp�|�/����J6�(��2˺4�Ë5E�9V`\"`(z^N�e�(�7�滬�2��n�ʘ��W��܇�N:)�\n���9Q=;#�e��ШLX���%ST�*K�\'�	<���-~3���VH�sp�,~^i��6�.�\"硞�NpI)���,��9�����2D��-�#�-���p�=.��5Oѳw\Z�5��_� %\rej&yjZ�����w�R\Z`E[�X�qy�sj����§�r�H�)nt0nI��e�k�����y����^�Dn/C򻖊ҵ�ޝ�n����	�j�.�`biy4��Y\\�፾TVo�̊�z����4p\"���	�����[�j�j�ɏ�Ԛ�h�40����,�O~�)�|:n��S��`VM�8Y���ȯ�SO��\n��z����\\x�����2�	K�]�H,XQ���@Z���3��g%&qo��j�R����e�ʀ��m��(�y��z�ZWX+�����\0�`�p`�}ꩧ�3\'lQ�����\0���`����;�Z���>SXh��I\0\0\0\0IEND�B`�',60.00,0.00,1,25,5,2,'',1,0,0),(5,'NUEVO','NADA','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0X\0\0\0d\0\0\0-��\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0��B��\0\02IDATx^����X��ڶm۶mۨ�m۶m�ֶm�{��������L2�w�uU׾��$����7N�\'t���㏕u�t�䢋.\n��W��:O����ί�\0�����w�����_:C�����?�o�1<��3�����:��N;�/�Eu�$�^v�ea���|�駟�k]	�K/���~���W_U��w�������k�\"�,�rȰ��+�7�|3ߕ\0����#�g�uV���?+�����QG-w衇===a�QG\r��w_�+�y䑰����{�O\\���{�}��7L0����_7�s�=7�����	0@Y��{�8����7�T^i����>�,�~��a�����6Zd�A��.��21 w%��u*K-�T���[��*��o��6<���a��v�L3M?�����2J��]0Kz����ov�y�h������c`=���,��Y�զ���X�LP�O<1�?��1�#���j�`�>�h8���J+�Fy�\\0��^��\0#�O<�DXq�c�{�w�\nx�̗_~��n{�g�^y��Q���&_|�E�v�m�O������#n� �_�VAS�u�Y�C�\\Y���_�5��f�)��暑:���c�=��	\'�W�b�-YAX\rk�x]+\\�믿�����*��Z�;�z�a��s�1G�x�ð��P�Z9fW�̎N8�a�u�\r�~�i��E����:�&�|�0�`���J���Epz���SL&�d���Dn�%�#�8b!�j�V������o���^;7�p1z��<��Ca�e����\Z��r���_~�%�s�9��r�w^�������{���VΡ�E���{�DM�\Zj���{��~�����o�0�����N���@!���[/�W\rc�*[�M6Y>\0��ʹ\r�v��gGv0�8�3�8#���[a�v�5�\\\0\ZP+��j���@#�_}L�ڍ6�(\\q�1�V���NU%�\ZF\Zi�B>�x�\r|\0���a�UW�?���z.�@�:�Xc�lo�g,u�v�qǁ`���#��8��UVY%���zu��G+��B�ze�j*|�X�Dc�F�q�b�1��:h.e���d�M�AoV�=TM_x��X�@?K�ˤ�B�e�d��p��7���+<�����_��n���bQG����U1���\0����E�y�\\��[n	�-�\\���F>���̚\0\n����:���r5�t�Ŕg�|\ZE�h��^+���(�u\Z�Ɏ����ۮ���( e�z;��/�f=���PĶ\0�Y�� �<��k��\ZQ7�E�ٴ�>�����↕]��?�0Ä%�X\"������*�V��q�`<T��Ҿ��Kcey\'�\n�����7׬B=7�Ţv\n�V�����]wݵcH�JY}��cm��j	�+jlH�w�V+@��f��R��F��3�0C���ʲY��馛F�ͥw�����w��b��4����u���e�l���:D�l��\r8W[m���Q��nM=�ԑ!�T��{{�7�[�T�}��Zh��9�C\Z�E6�\\sM�l����\n�@I:�KS磓��T\n	��h7%m&E@cɍ�=�3�<3�D\Z�r�=��0�l��<��Q������Dt�Y!@���j���z�*|�A?�g@�����+Rlg���\n���J?�%u����}H|=ԥ��I���\'���ܯȣ.��>�D�֎>�%�v(�g�U�0��.3-u��7�tSX~��㉗�>�T��~����Ṛ��1$��y�ٷ�j���C\0�ޛ��!V�`�H�v�}�8��h���h��QYN^\Z`Q�0�%f	�Kܽߝs�1�<���AjV�{]����FU۵dO9�H��WKh�g�����|�a��g�w�q���v�i�V�L�{$�Eť��q��ħ�UV���R��~������7^�|��\'�w����W_]ye@���4e4j�}�zdZ�ֈ��5H���%�\0���B-�{�j�Z��N�㎋֔p�f��H�i5�TQ5n\'9\'.c���O��j㧵�Ѩ�m��q��\r�&5V�1�	$Q2�`y����͎a}!ơ��伀m�u���?���LL���0n����&R`����L��C���$�:��{S�\0��dq�6+�p;��]v�%&J#�>S�nbH��՚WS�ڪ�새m��ՔKpr��Q��^���,���9���\nC��|��p�m�E�TG1�K@M�FS�d�H.�(��_��<3�nb\0E˦�$���뮫겜��d���\0�\nX@md5\0���F�Xc��~W�ϟa}���Xl`8��E;e\0��C|Q�,]��dG\"i\'�K�\0��f�kE�VK\0�M��{o�w�yK�+�zo�p=��\ZB�3�����2�AF��k�t��&�Q\0s��l-}By��aR�N	hy�Q\0���xE�0�-�%���%0Ft����>���_�	�I\'�4���N�,�}�\"�E��¹���E4�$0�0wQ�34���z�j���>I�����e5��\Z��x���q&�*���xS�&1���Y�\0��m_R�:r%�\"Rv;4�kPkP|�����z/�p,̧��t�Y�\0�cH����eʎ�*9�[,o\0/��\r6� ��k7��j�,��X���\0��;H����&?�-=2#Z�uا����\Z.���%Z�l\n@�HX).� ��f�\"\n9�\"h��-V�\\G�e�X4�יV\0��ڰ،��yH+��x�M\"�TL׻s\r���kB/���m`Uf+��T{(���jP��;�ۢëY�\\��9����w�E��Xq!�v3��T&��ӊ޴�����8�%��\Z�J�O�-��V������+���Ј�/O�V�Q�nB�b�9��/���D$���Z�F��O�nQ�F�g�-�����6�f�+A�Ly�F�����=���,Ѐ�Td�7Q�I��N�F�\'����l���1p���o��l\rB�_k6��B�4*=���<�[n�eG�%�\"35���Y�tY2�e�O��	*�	ڨ���n1��M���̤�\0�o#+e\06#,AiTz����d�\\�\'Q�_��@g2)�2Vւ=u�Q�)3�O�f\r��e�u:oAο����a��B\r	6*=eʔ�Yv\'O\'\nk?�Is�X�:y�5�Y�\"�2���ʧꗞ+��2���*HTt�$10s�1�D`daf��k�`#Sm���Tޗ�ը��w�Y�H�\n����K�Rc�}�}󄯶���v�$�k��=r�/O�b<��ɢ�r�%���=�\'�̣f�p��Y{�5Ӥ�L�;�����v\'�92�ni�┙�Zc�e�i���nR���\"&��ɲO��m�p�	j��6Qѹ�C���]/�=8t3Y�\0+L�$Q>�({�:Q4t�Y�\rܶ��lxc��U\0�.�=��\0��;HZ\r�Н֓��-	CШ,:G3��VR��.[��$lG��*yJ��Е5I�)�7*����\n�\\�3efE�dJ��Y�\0s�ZByJ���F!�.��~Ҝtn6����j�5�w�����ynV\"���[dŪ���\Z���ڄ�BO��^b�E-�����2�ؼk��[+��\0[R�u�L�;`ZE�C9d�G���ԋ/�85ǎ�Z��k�_Y�	��U�?L���Z�5Q���\"<��$Ʉƥ~a��i��-���l\r�VQ�~\0s�vS�yN���#�\":��z�k���S��GN?> O�\n���E�ܠ1�VO?��W\\��iM��BvQ�n�(�H*<t���(C&Ơ0��kI��r9ZI����\0а�Oʓ|��{�����#���F��((�֪�%��E+��`�W�4�WՊ���ͮ�t�KX�%��.�0�D#��F�u�v�?�쳕oh�\0�O��Eى�j\\L�܅���W�ŏA����w�YM6)�:�\00��D��y�~���sp�V�����j\r��V��U�e,��n��օ<���X�����wRY���\\�Ga�öʏ)vK�<*�V�K\0���_�J���T�W�޳%�!Uf\r��e�Гwry�w[Ƃ�*W3ِ�d������~����j�6���T�1�<�D�Ѯ̴*�8�k�*��Zr���9�~D���\Zp�|�/����J6�(��2˺4�Ë5E�9V`\"`(z^N�e�(�7�滬�2��n�ʘ��W��܇�N:)�\n���9Q=;#�e��ШLX���%ST�*K�\'�	<���-~3���VH�sp�,~^i��6�.�\"硞�NpI)���,��9�����2D��-�#�-���p�=.��5Oѳw\Z�5��_� %\rej&yjZ�����w�R\Z`E[�X�qy�sj����§�r�H�)nt0nI��e�k�����y����^�Dn/C򻖊ҵ�ޝ�n����	�j�.�`biy4��Y\\�፾TVo�̊�z����4p\"���	�����[�j�j�ɏ�Ԛ�h�40����,�O~�)�|:n��S��`VM�8Y���ȯ�SO��\n��z����\\x�����2�	K�]�H,XQ���@Z���3��g%&qo��j�R����e�ʀ��m��(�y��z�ZWX+�����\0�`�p`�}ꩧ�3\'lQ�����\0���`����;�Z���>SXh��I\0\0\0\0IEND�B`�',10.00,13.00,2,20,5,2,'42013631',1,0,0),(6,'OTRO','DDD','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0X\0\0\0d\0\0\0-��\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0�\0\0�(J�\0\02IDATx^����X��ڶm۶mۨ�m۶m�ֶm�{��������L2�w�uU׾��$����7N�\'t���㏕u�t�䢋.\n��W��:O����ί�\0�����w�����_:C�����?�o�1<��3�����:��N;�/�Eu�$�^v�ea���|�駟�k]	�K/���~���W_U��w�������k�\"�,�rȰ��+�7�|3ߕ\0����#�g�uV���?+�����QG-w衇===a�QG\r��w_�+�y䑰����{�O\\���{�}��7L0����_7�s�=7�����	0@Y��{�8����7�T^i����>�,�~��a�����6Zd�A��.��21 w%��u*K-�T���[��*��o��6<���a��v�L3M?�����2J��]0Kz����ov�y�h������c`=���,��Y�զ���X�LP�O<1�?��1�#���j�`�>�h8���J+�Fy�\\0��^��\0#�O<�DXq�c�{�w�\nx�̗_~��n{�g�^y��Q���&_|�E�v�m�O������#n� �_�VAS�u�Y�C�\\Y���_�5��f�)��暑:���c�=��	\'�W�b�-YAX\rk�x]+\\�믿�����*��Z�;�z�a��s�1G�x�ð��P�Z9fW�̎N8�a�u�\r�~�i��E����:�&�|�0�`���J���Epz���SL&�d���Dn�%�#�8b!�j�V������o���^;7�p1z��<��Ca�e����\Z��r���_~�%�s�9��r�w^�������{���VΡ�E���{�DM�\Zj���{��~�����o�0�����N���@!���[/�W\rc�*[�M6Y>\0��ʹ\r�v��gGv0�8�3�8#���[a�v�5�\\\0\ZP+��j���@#�_}L�ڍ6�(\\q�1�V���NU%�\ZF\Zi�B>�x�\r|\0���a�UW�?���z.�@�:�Xc�lo�g,u�v�qǁ`���#��8��UVY%���zu��G+��B�ze�j*|�X�Dc�F�q�b�1��:h.e���d�M�AoV�=TM_x��X�@?K�ˤ�B�e�d��p��7���+<�����_��n���bQG����U1���\0����E�y�\\��[n	�-�\\���F>���̚\0\n����:���r5�t�Ŕg�|\ZE�h��^+���(�u\Z�Ɏ����ۮ���( e�z;��/�f=���PĶ\0�Y�� �<��k��\ZQ7�E�ٴ�>�����↕]��?�0Ä%�X\"������*�V��q�`<T��Ҿ��Kcey\'�\n�����7׬B=7�Ţv\n�V�����]wݵcH�JY}��cm��j	�+jlH�w�V+@��f��R��F��3�0C���ʲY��馛F�ͥw�����w��b��4����u���e�l���:D�l��\r8W[m���Q��nM=�ԑ!�T��{{�7�[�T�}��Zh��9�C\Z�E6�\\sM�l����\n�@I:�KS磓��T\n	��h7%m&E@cɍ�=�3�<3�D\Z�r�=��0�l��<��Q������Dt�Y!@���j���z�*|�A?�g@�����+Rlg���\n���J?�%u����}H|=ԥ��I���\'���ܯȣ.��>�D�֎>�%�v(�g�U�0��.3-u��7�tSX~��㉗�>�T��~����Ṛ��1$��y�ٷ�j���C\0�ޛ��!V�`�H�v�}�8��h���h��QYN^\Z`Q�0�%f	�Kܽߝs�1�<���AjV�{]����FU۵dO9�H��WKh�g�����|�a��g�w�q���v�i�V�L�{$�Eť��q��ħ�UV���R��~������7^�|��\'�w����W_]ye@���4e4j�}�zdZ�ֈ��5H���%�\0���B-�{�j�Z��N�㎋֔p�f��H�i5�TQ5n\'9\'.c���O��j㧵�Ѩ�m��q��\r�&5V�1�	$Q2�`y����͎a}!ơ��伀m�u���?���LL���0n����&R`����L��C���$�:��{S�\0��dq�6+�p;��]v�%&J#�>S�nbH��՚WS�ڪ�새m��ՔKpr��Q��^���,���9���\nC��|��p�m�E�TG1�K@M�FS�d�H.�(��_��<3�nb\0E˦�$���뮫겜��d���\0�\nX@md5\0���F�Xc��~W�ϟa}���Xl`8��E;e\0��C|Q�,]��dG\"i\'�K�\0��f�kE�VK\0�M��{o�w�yK�+�zo�p=��\ZB�3�����2�AF��k�t��&�Q\0s��l-}By��aR�N	hy�Q\0���xE�0�-�%���%0Ft����>���_�	�I\'�4���N�,�}�\"�E��¹���E4�$0�0wQ�34���z�j���>I�����e5��\Z��x���q&�*���xS�&1���Y�\0��m_R�:r%�\"Rv;4�kPkP|�����z/�p,̧��t�Y�\0�cH����eʎ�*9�[,o\0/��\r6� ��k7��j�,��X���\0��;H����&?�-=2#Z�uا����\Z.���%Z�l\n@�HX).� ��f�\"\n9�\"h��-V�\\G�e�X4�יV\0��ڰ،��yH+��x�M\"�TL׻s\r���kB/���m`Uf+��T{(���jP��;�ۢëY�\\��9����w�E��Xq!�v3��T&��ӊ޴�����8�%��\Z�J�O�-��V������+���Ј�/O�V�Q�nB�b�9��/���D$���Z�F��O�nQ�F�g�-�����6�f�+A�Ly�F�����=���,Ѐ�Td�7Q�I��N�F�\'����l���1p���o��l\rB�_k6��B�4*=���<�[n�eG�%�\"35���Y�tY2�e�O��	*�	ڨ���n1��M���̤�\0�o#+e\06#,AiTz����d�\\�\'Q�_��@g2)�2Vւ=u�Q�)3�O�f\r��e�u:oAο����a��B\r	6*=eʔ�Yv\'O\'\nk?�Is�X�:y�5�Y�\"�2���ʧꗞ+��2���*HTt�$10s�1�D`daf��k�`#Sm���Tޗ�ը��w�Y�H�\n����K�Rc�}�}󄯶���v�$�k��=r�/O�b<��ɢ�r�%���=�\'�̣f�p��Y{�5Ӥ�L�;�����v\'�92�ni�┙�Zc�e�i���nR���\"&��ɲO��m�p�	j��6Qѹ�C���]/�=8t3Y�\0+L�$Q>�({�:Q4t�Y�\rܶ��lxc��U\0�.�=��\0��;HZ\r�Н֓��-	CШ,:G3��VR��.[��$lG��*yJ��Е5I�)�7*����\n�\\�3efE�dJ��Y�\0s�ZByJ���F!�.��~Ҝtn6����j�5�w�����ynV\"���[dŪ���\Z���ڄ�BO��^b�E-�����2�ؼk��[+��\0[R�u�L�;`ZE�C9d�G���ԋ/�85ǎ�Z��k�_Y�	��U�?L���Z�5Q���\"<��$Ʉƥ~a��i��-���l\r�VQ�~\0s�vS�yN���#�\":��z�k���S��GN?> O�\n���E�ܠ1�VO?��W\\��iM��BvQ�n�(�H*<t���(C&Ơ0��kI��r9ZI����\0а�Oʓ|��{�����#���F��((�֪�%��E+��`�W�4�WՊ���ͮ�t�KX�%��.�0�D#��F�u�v�?�쳕oh�\0�O��Eى�j\\L�܅���W�ŏA����w�YM6)�:�\00��D��y�~���sp�V�����j\r��V��U�e,��n��օ<���X�����wRY���\\�Ga�öʏ)vK�<*�V�K\0���_�J���T�W�޳%�!Uf\r��e�Гwry�w[Ƃ�*W3ِ�d������~����j�6���T�1�<�D�Ѯ̴*�8�k�*��Zr���9�~D���\Zp�|�/����J6�(��2˺4�Ë5E�9V`\"`(z^N�e�(�7�滬�2��n�ʘ��W��܇�N:)�\n���9Q=;#�e��ШLX���%ST�*K�\'�	<���-~3���VH�sp�,~^i��6�.�\"硞�NpI)���,��9�����2D��-�#�-���p�=.��5Oѳw\Z�5��_� %\rej&yjZ�����w�R\Z`E[�X�qy�sj����§�r�H�)nt0nI��e�k�����y����^�Dn/C򻖊ҵ�ޝ�n����	�j�.�`biy4��Y\\�፾TVo�̊�z����4p\"���	�����[�j�j�ɏ�Ԛ�h�40����,�O~�)�|:n��S��`VM�8Y���ȯ�SO��\n��z����\\x�����2�	K�]�H,XQ���@Z���3��g%&qo��j�R����e�ʀ��m��(�y��z�ZWX+�����\0�`�p`�}ꩧ�3\'lQ�����\0���`����;�Z���>SXh��I\0\0\0\0IEND�B`�',15.00,41.00,1,20,5,1,'',1,0,0);

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

insert  into `tipotarjeta`(`id`,`nombre`,`estado`) values (1,'VISA',0),(2,'MASTER CARD',0),(3,'AMERICAN EXPRESS',0),(4,'PAYPAL',0),(5,'BITCOIN',0);

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
		SELECT id, nombre, precioCompra   
		FROM producto
		WHERE id LIKE CONCAT('%',pFiltro,'%') OR nombre LIKE CONCAT('%',pFiltro,'%') 
		ORDER BY nombre;
		
	END IF;
	/*para la busquedad e productos-- formulario producto*/
	IF(pCriterio='PRODUCTOS')
	THEN 
		SELECT id,nombre,detalle,imagen,precioCompra,idCategoria,stock,stockminimo,idUnidades,nroserie,idCaractFisicas,estado,promocion
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

/* Procedure structure for procedure `compras_elimina` */

/*!50003 DROP PROCEDURE IF EXISTS  `compras_elimina` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `compras_elimina`(pId int(10))
BEGIN
    
    DELETE FROM compras	
    WHERE id = pId;
	
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

/* Procedure structure for procedure `compraxproducto_elimina` */

/*!50003 DROP PROCEDURE IF EXISTS  `compraxproducto_elimina` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `compraxproducto_elimina`(pIdProducto INT(10),pIdCompra INT(10))
BEGIN
    
	DECLARE pStock DOUBLE;
	DECLARE pCantidad DOUBLE;
	SELECT stock INTO pStock FROM producto WHERE id=pIdProducto; /*--------AQUI OBTENEMOS EL STOCK DEL PRODUCTO-------*/
	select cantidad into pCantidad from compraxproducto where idCompra = pIdCompra AND idProducto=pIdProducto; /*------obtenemos la cantidad comprada -----*/   
	UPDATE producto SET stock = pStock-pCantidad  WHERE id= pIdProducto;  /*-----AQUI MODIFICAMOS EL STOCK DEL PRODUCTO----*/
        
    
    
    DELETE FROM compraxproducto	
    WHERE idCompra = pIdCompra and idProducto=pIdProducto;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `compraxproducto_guarda` */

/*!50003 DROP PROCEDURE IF EXISTS  `compraxproducto_guarda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `compraxproducto_guarda`(pIdProducto INT(10),pIdCompra int(10),pCantidad double,pPrecioCompra decimal(10,2), pSubtotal decimal(10,2),pIgv DECIMAL(10,2),pPrecioTotal DECIMAL(10,2))
BEGIN
    
	DECLARE pStock double;
	SELECT stock INTO pStock FROM producto WHERE id=pIdProducto; /*--------AQUI OBTENEMOS EL STOCK DEL PRODUCTO-------*/
	UPDATE producto SET stock = pStock+pCantidad  wHERE id= pIdProducto;  /*-----AQUI MODIFICAMOS EL STOCK DEL PRODUCTO----*/
    
    insert INTO compraxproducto (idProducto,idCompra,cantidad,precioCompra,subtotal,igv,precioTotal) VALUES(pIdProducto,pIdCompra,pCantidad,pPrecioCompra, pSubtotal,pIgv,pPrecioTotal);
    	
    		
    END */$$
DELIMITER ;

/* Procedure structure for procedure `compraxproducto_lista` */

/*!50003 DROP PROCEDURE IF EXISTS  `compraxproducto_lista` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `compraxproducto_lista`(pIdCompra int(10))
BEGIN
    
    SELECT c.idProducto,c.idCompra,p.nombre,c.cantidad,c.precioCompra,c.subtotal,c.igv,c.precioTotal
    FROM compraxproducto c INNER JOIN  producto p ON c.idProducto=p.id  WHERE c.idCompra =pIdCompra
    ORDER BY idProducto;
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

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `producto_guarda`(pId INT(8), pNombre varchar(300), pDetalle varchar(300), pImagen blob, pPrecioCom decimal(8,2), 
pPrecioVen DECIMAL(8,2), pStock int(8), pStockMin int(8),pIdCategoria int(1), pIdUnidades int(1),pIdCaractFisicas int(8),pEstado int(1),pSerie char(50),pPromocion int(1))
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
       
	
	/*para hacer las modificaciones*/
	/*consulta para saber si el codigo en mension existe*/
	
    if(pContador=1)
    THEN
	UPDATE producto SET `nombre`=pNombre, `detalle`=pDetalle, `imagen`=pImagen,`precioCompra`=pPrecioCom,`precioVenta`=pPrecioVen,`idCategoria`=pIdCategoria,
`stock`=pStock,`stockminimo`=pStockMin,`idUnidades`=pIdUnidades,`nroserie`=pSerie,`idCaractFisicas`=pIdCaractFisicas,`estado`=pEstado,`promocion`=pPromocion WHERE `id`=pId;
    ELSE   
           insert INTO producto VALUES(pId,pNombre,pDetalle,pImagen,pPrecioCom,pPrecioVen,pIdCategoria,pStock,pStockMin,pIdUnidades,pSerie,pIdCaractFisicas,pEstado,pPromocion);
    END IF; 
    	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `producto_lista` */

/*!50003 DROP PROCEDURE IF EXISTS  `producto_lista` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `producto_lista`()
BEGIN
  
   
    
    SELECT id,nombre,detalle,imagen,precioCompra,precioVenta,idCategoria,stock,stockminimo,idUnidades,nroserie,idCaractFisicas,estado,promocion
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
