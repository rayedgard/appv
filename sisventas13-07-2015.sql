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

insert  into `caracfisicas`(`id`,`dimencion`,`peso`,`color`,`estado`) values (1,'141','41','FF0000A0',0),(2,'12CMX15CMX25CM','124G','FFFF0080',0);

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

insert  into `categoria`(`id`,`nombre`,`imagen`,`estado`) values (1,'HERRMIENTAS','âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0c\0\0\0c\0\0\0è;æï\0\0\0sRGB\0ÆŒÈ\0\0\0gAMA\0\0±è¸a\0\0\0	pHYs\0\0√\0\0√«o®d\0\0IDATx^Ì›K®}S\0«Òã< ¿ÑÑÅgLP\"è(1!\"<I)‚/1»D…cdË1`fh†îàîí»#èºì7y≈Ô{›ÛÔû{ÁﬁΩ◊kØµ˜˛’ß˛ÌˇπkØ≥◊9˚Ï«ZkØ5íÂﬂ_…ú9XŒ‹â∏çö“b]áÀúç\\%∑…c‚6Zn/Î«dsÆ<\'ﬂä€HC†>◊À§ÚÅ|!nÉÌ{°~« Ë≤è≤·Uq†V?»¢Ó˚KÛπZ‹mÕÉrÄ4ô+‰~qo¨Uè»Ì“T.óœ≈Ω°÷˝&˜Jı9P8¡˙I‹ãﬂÖ˜y∂Tô#ƒU|ÏNî™rÜ|,Æ≤Spëæ\rú9ø/ÆíSÒç∞Œí¡Úé∏ M’Grº\'DÆBS˜áª¶˘±3\Z§»7d®´´≠y]≤Ü£¶©ˇXwı•\\)Y¬Ói áØ!8 J~ÿÀôµ[YNúÂ.\\,°˘P6óıè∏ıÂîÙƒêS∑í∏óês˚∏Pæ[wNI¬Eø◊ö∏Ÿƒ¡¡ÈR\"¨Ôä´Oj∑JT∏^ÍÍÎ2DNÓ√ª:•ƒ.2Íjoâ˚ó —2t®É´_Jt9ÍnïÊæC«\'Â&©)|K¯}§nÆŒ)ÔÓ˘∫ÇR˘YˆH≠°n‘—’=÷ÛròtNÓ∆à˛1+ÍËÍûBØsèúΩ88:k%‘’ΩáX\\€£eß∏R·[◊JrÓ!:mN∫‹ß{i‡$πC\\Ÿ[=#º>∂ø”Ö‚ Oa«–Â2WOø˜‰d	\r›\\πªπSbBù©ª+;÷e≤2Ù5uîBÔC∫MπE~WnKLrùo±≤·,4W\'‰7‰H	…çBˇWWnW\n◊§Bì´18üyH∂Ö.ÒÓR:ÛTRÓØCÎ∞HÏÄùUÿ-Ö√¨úwB6ƒ~BWJW^®ò]eÆ∆xIñÏ0Ç«Ω0ˆıÏÛ˚&«aeççÅ•Å:9#t<›d#Á∫π1v˜µú*Îq/£ZÏù÷„˛slËpçÑ‰8yK\\π©L™1¯dáÜoî+3•ı∆»˝ı´\'ç{?y)—ú€ˇõ–Éræ‰∫—¥ï]8¸N%°ŸWÆWvv·pÓâ…\r‚ Œ≈.lŸ_r∑∞{â…=‚ œ….lŸyõ˚ÑQ≠Æ¸úÏ¬—Å‡ â\rÂ¸-nπŸÖ-·û\0≥§»µ‚÷Qä]ÿäg%ECp˚ÛfqÎ(….l¡£¬=èò0®˛)·ÿ≠£4ª∞vOHÁ~G+rå|*Æ¸°ÿÖ5„«5¶«3„CÔ ö]X3¶±\rﬂÜ∑≈ï[ª∞V?JË¥u~E\\πµ∞k≈\0œêp◊Mqe÷ƒ.¨Uhc|&Æº⁄<+§1WVmæìı∏ˇ¨—”“7≠å]oÓ∂kHÊ∆»$$scdíÊ\ZÉ∏‘Ü¡/}µ0ãh±Óù≥›-5Ω†πÃ‡^8ÀãÀ3{ªv.ís|∆lµm„3»‹√∞çAréÈõm∑rL·ähÏ¯πúû‰ ™¡≤créè\ZWV\rv\rOTqXÉ–∏≤Ü∆‰õùRÎ¬°qe\rÈÈ4]…1Ñ+Ö–∏≤Ü‘k⁄éπ1ÚyMNêŒaÚ:áπ¬Ü\ZW÷PÇ∆“•Ögπá\ZW÷^ñ‡˛^ÃP0DoÏUB„ *ç˛^!w*ó¬8Öú(ˆ\ZWVit#MíZ:-Ñ∆ïUZ≤–Aÿ≠†¥–∏≤Jb˙®§aru∑¢íÿ]Üpeï¬D\0Ãú<ú¨‘“}ævúeﬂ%Y3?Y¶õÏOñ!<˛åßnπ\nÃ˛«4|óHë–£õá<πäÃ÷÷Në‚ôdﬂàA\ZÇ\raﬂ»√û\\Â¶Çk∂C±]”Na‡)ee?jÍ{]E«.tB±Ï©·ƒ∞$Œ¨≥ú–•S>}ÊõW_ì]Ù+Æˆémñ7ÓGD_2‹Ÿ‚—6ÓÕµÇ[•ºèÿâ\0™œ‚æµß%s»JΩ{›≥n%|≤jÌÏ∞˝ö:wßi=ÃdCÔ≈ö~Ë©œÆ].«ûAákfÀw(7∆G∞˛ïΩ¡ßÏ0,Ã\rÓ6\\Jãum®2g9l Ü∂-0Ø€†]1‡}sy®,kkˇd0±N¡òÅ\0\0\0\0IENDÆB`Ç',0),(2,'ESCALERAS','âPNG\r\n\Z\n\0\0\0\rIHDR\0\0\0c\0\0\0c\0\0\0è;æï\0\0\0sRGB\0ÆŒÈ\0\0\0gAMA\0\0±è¸a\0\0\0	pHYs\0\0√\0\0√«o®d\0\0IDATx^Ì›K®}S\0«Òã< ¿ÑÑÅgLP\"è(1!\"<I)‚/1»D…cdË1`fh†îàîí»#èºì7y≈Ô{›ÛÔû{ÁﬁΩ◊kØµ˜˛’ß˛ÌˇπkØ≥◊9˚Ï«ZkØ5íÂﬂ_…ú9XŒ‹â∏çö“b]áÀúç\\%∑…c‚6Zn/Î«dsÆ<\'ﬂä€HC†>◊À§ÚÅ|!nÉÌ{°~« Ë≤è≤·Uq†V?»¢Ó˚KÛπZ‹mÕÉrÄ4ô+‰~qo¨Uè»Ì“T.óœ≈Ω°÷˝&˜Jı9P8¡˙I‹ãﬂÖ˜y∂Tô#ƒU|ÏNî™rÜ|,Æ≤Spëæ\rú9ø/ÆíSÒç∞Œí¡Úé∏ M’Grº\'DÆBS˜áª¶˘±3\Z§»7d®´´≠y]≤Ü£¶©ˇXwı•\\)Y¬Ói áØ!8 J~ÿÀôµ[YNúÂ.\\,°˘P6óıè∏ıÂîÙƒêS∑í∏óês˚∏Pæ[wNI¬Eø◊ö∏Ÿƒ¡¡ÈR\"¨Ôä´Oj∑JT∏^ÍÍÎ2DNÓ√ª:•ƒ.2Íjoâ˚ó —2t®É´_Jt9ÍnïÊæC«\'Â&©)|K¯}§nÆŒ)ÔÓ˘∫ÇR˘YˆH≠°n‘—’=÷ÛròtNÓ∆à˛1+ÍËÍûBØsèúΩ88:k%‘’ΩáX\\€£eß∏R·[◊JrÓ!:mN∫‹ß{i‡$πC\\Ÿ[=#º>∂ø”Ö‚ Oa«–Â2WOø˜‰d	\r›\\πªπSbBù©ª+;÷e≤2Ù5uîBÔC∫MπE~WnKLrùo±≤·,4W\'‰7‰H	…çBˇWWnW\n◊§Bì´18üyH∂Ö.ÒÓR:ÛTRÓØCÎ∞HÏÄùUÿ-Ö√¨úwB6ƒ~BWJW^®ò]eÆ∆xIñÏ0Ç«Ω0ˆıÏÛ˚&«aeççÅ•Å:9#t<›d#Á∫π1v˜µú*Îq/£ZÏù÷„˛slËpçÑ‰8yK\\π©L™1¯dáÜoî+3•ı∆»˝ı´\'ç{?y)—ú€ˇõ–Éræ‰∫—¥ï]8¸N%°ŸWÆWvv·pÓâ…\r‚ Œ≈.lŸ_r∑∞{â…=‚ œ….lŸyõ˚ÑQ≠Æ¸úÏ¬—Å‡ â\rÂ¸-nπŸÖ-·û\0≥§»µ‚÷Qä]ÿäg%ECp˚ÛfqÎ(….l¡£¬=èò0®˛)·ÿ≠£4ª∞vOHÁ~G+rå|*Æ¸°ÿÖ5„«5¶«3„CÔ ö]X3¶±\rﬂÜ∑≈ï[ª∞V?JË¥u~E\\πµ∞k≈\0œêp◊Mqe÷ƒ.¨Uhc|&Æº⁄<+§1WVmæìı∏ˇ¨—”“7≠å]oÓ∂kHÊ∆»$$scdíÊ\ZÉ∏‘Ü¡/}µ0ãh±Óù≥›-5Ω†πÃ‡^8ÀãÀ3{ªv.ís|∆lµm„3»‹√∞çAréÈõm∑rL·ähÏ¯πúû‰ ™¡≤créè\ZWV\rv\rOTqXÉ–∏≤Ü∆‰õùRÎ¬°qe\rÈÈ4]…1Ñ+Ö–∏≤Ü‘k⁄éπ1ÚyMNêŒaÚ:áπ¬Ü\ZW÷PÇ∆“•Ögπá\ZW÷^ñ‡˛^ÃP0DoÏUB„ *ç˛^!w*ó¬8Öú(ˆ\ZWVit#MíZ:-Ñ∆ïUZ≤–Aÿ≠†¥–∏≤Jb˙®§aru∑¢íÿ]Üpeï¬D\0Ãú<ú¨‘“}ævúeﬂ%Y3?Y¶õÏOñ!<˛åßnπ\nÃ˛«4|óHë–£õá<πäÃ÷÷Në‚ôdﬂàA\ZÇ\raﬂ»√û\\Â¶Çk∂C±]”Na‡)ee?jÍ{]E«.tB±Ï©·ƒ∞$Œ¨≥ú–•S>}ÊõW_ì]Ù+Æˆémñ7ÓGD_2‹Ÿ‚—6ÓÕµÇ[•ºèÿâ\0™œ‚æµß%s»JΩ{›≥n%|≤jÌÏ∞˝ö:wßi=ÃdCÔ≈ö~Ë©œÆ].«ûAákfÀw(7∆G∞˛ïΩ¡ßÏ0,Ã\rÓ6\\Jãum®2g9l Ü∂-0Ø€†]1‡}sy®,kkˇd0±N¡òÅ\0\0\0\0IENDÆB`Ç',0);

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
  `idTipoDescuento` int(8) DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idProducto` (`idProducto`),
  KEY `idTipoDescuento` (`idTipoDescuento`),
  CONSTRAINT `descuento_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`id`),
  CONSTRAINT `descuento_ibfk_2` FOREIGN KEY (`idTipoDescuento`) REFERENCES `tipodescuento` (`id`)
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

insert  into `formaspago`(`id`,`nombre`,`estado`) values (1,'EFECTIVO',0),(2,'CHEQUE',0),(3,'TARJETA',0),(4,'PAGARE',1);

UNLOCK TABLES;

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) DEFAULT NULL,
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
  PRIMARY KEY (`id`),
  KEY `idUnidades` (`idUnidades`),
  KEY `idCategoria` (`idCategoria`),
  KEY `idCaractFisicas` (`idCaractFisicas`),
  CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`idUnidades`) REFERENCES `unidades` (`id`),
  CONSTRAINT `producto_ibfk_4` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id`),
  CONSTRAINT `producto_ibfk_5` FOREIGN KEY (`idCaractFisicas`) REFERENCES `caracfisicas` (`id`)
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

insert  into `proveedor`(`documento`,`razon`,`telefono`,`direccion`,`fechaRegistro`,`email`,`estado`) values ('20490253867','ITDECSA','245844','AV LA CULTURA N¬∞ 772','2015-07-01','informes@itdecsa.com',0),('45454545454','CUSCO HOSTING','44444444','CUSCO PERU','2015-07-01','cuscohos@hotmail.com',1);

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

insert  into `tipocomprobante`(`id`,`nombre`,`estado`) values (1,'BOLETA',0),(2,'FACTURA',0),(3,'NOTA DE PEDIDO',1);

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

insert  into `tipodescuento`(`id`,`nombre`,`porcentaje`,`estado`) values (1,'DESCUENTO NAVIDE√ëO',10,0),(2,'DESCUENTO 01',5,0),(3,'DESCUENTO 02',4,0),(4,'DESCUENTO 03 ',12,0),(5,'DESCEUNTO 05',13,0),(6,'FIESTAS PATRIAAS',8,0);

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

insert  into `unidades`(`id`,`nombre`,`abreviatura`,`valorBase`,`estado`) values (5,'DSAD','DAS',2,0),(6,'OSAIDPOSAD','DAS',0,0);

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

insert  into `usuario`(`dni`,`nombre`,`apaterno`,`amaterno`,`sexo`,`nick`,`pass`,`telefono`,`direccion`,`nacimiento`,`privilegio`,`estado`) values (40494250,'EDGARD','RAYME','QUISPE','M','edgard','1234','45454545','AV. LA CULTURA N¬∞ 772','2015-06-30',0,0);

UNLOCK TABLES;

/*Table structure for table `ventas` */

DROP TABLE IF EXISTS `ventas`;

CREATE TABLE `ventas` (
  `id` int(8) NOT NULL,
  `idTipoVenta` int(10) DEFAULT NULL,
  `idClinete` char(11) DEFAULT NULL,
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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
