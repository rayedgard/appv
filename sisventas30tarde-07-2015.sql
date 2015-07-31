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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `caracfisicas` */

LOCK TABLES `caracfisicas` WRITE;

insert  into `caracfisicas`(`id`,`dimencion`,`peso`,`color`,`estado`) values (1,'SIN CARACTERISTICAS','0','FF004040',0);

UNLOCK TABLES;

/*Table structure for table `categoria` */

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `id` int(8) NOT NULL,
  `nombre` varchar(200) default NULL,
  `imagen` blob,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `categoria` */

LOCK TABLES `categoria` WRITE;

insert  into `categoria`(`id`,`nombre`,`imagen`,`estado`) values (1,'SIN CATEGORIA','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0c\0\0\0c\0\0\0;¾•\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0IDATx^íİK¨}S\0Çñ‹<ÊÀ„„gLP\"(1!\"<I)â/1ğÈDÉcdè1`fh ”ˆ”’È#¼“7yÅï{İóï{çŞ½×k¯µ÷şÕ§şíÿ¹k¯³×9ûìÇZk¯5’åß_Éœ9XÎÜğ‰¸šÒb]‡Ëœ\\%·Écâ6Zn/ëÇds®<\'ßŠÛHC >×Ë¤ò|!nƒí{¡~ÇÊè²²áUq V?È¢îûKó¹ZÜmÍƒr€4™+ä~qo¬UÈíÒT.—ÏÅ½¡Öı&÷Jõ9P8ÁúIÜ‹ß…÷y¶T™#ÄU|ìN”ªr†|,®²Sp‘¾\rœ9¿/®’Sñ°Î’Áò¸ÊMÕGr¼\'D®BS÷‡»¦ù±3\Z¤È7d¨««­y]²†£¦©ÿXwõ¥\\)YÂîiÊ‡¯!8ÊJ~ØË™µ[YNœå.\\,¡ùP6—õ¸õå”ôÄS·’¸—sû¸P¾[wNIÂE¿×š¸ÙÄÁÁéR\"¬ïŠ«Oj·JT¸^êêë2DNîÃ»:¥Ä.2êjo‰û—ÊÑ2t¨ƒ«_Jt9ên•æ¾CÇ\'å&©)|Kø}¤n®Î)ğïîùº‚RùYöH­¡nÔÑÕ=Öór˜tNîÆˆş1+êèêB¯sœ½88:k%ÔÕ½‡X\\Û£e§¸Rá[×Jrî!:mNºÜ§{ià$¹C\\Ù[=#¼>¶¿Ó…âÊOaÇĞå2WO¿÷äd	\rİ\\¹»¹SbB©»+;Öe²2ô5u”BïCºM¹E~WnKLro±²á,4W\'ä7äH	ÉBÿWWnW\n×¤B“«18ŸyH¶….ñîR:óTRî¯Cë°Hì€UØ-…Ã¬œwğB6Ä~BWJW^¨˜]e®ÆxI–ì0‚Ç½0öõìóû&Çae¥:9#t<İd#çº¹1v÷µœ*ëq/£ZìÖãşslèp„ä8yK\\¹©Lª1ød‡†o”+3¥õÆÈıõ«\'{?y)ÑœÛÿ›Ğƒr¾äºÑ´•]8üN%¡ÙW®Wvvápî‰É\râÊÎÅ.lÙ_r·°{‰É=âÊÏÉ.lÙy›û„Q­®üœìÂÑà ‰\råü-n¹Ù…-á\0³¤ÈµâÖQŠ]ØŠg%ECpûófqë(É.lÁ£Â=˜0¨ş)áØ­£4»°vOHç~G+rŒ|*®ü¡Ø…5ãÇ5¦Ç3ãğCïÊš]X3¦±\rß†·Å•[»°V?Jè´u~E\\¹µ°kÅ\0Ïp×ğMqeÖÄ.¬Uhc|&®¼Ú<+¤1WVm¾“õ¸ÿ¬ÑÓÒ7­Œ]oî¶kHæÆÈ$$scd’æ\Zƒ¸Ô†Á/}µ0‹h±î³İ-5½ ¹Ìà^8Ë‹Ë3{»v.’s|Ælµmã3ÈÜÃ°Aré›m·rLáŠhìø¹œäÊªÁ²cr\ZWV\rv\rOTqXƒĞ¸²†Æä›RëÂ¡qe\réé4]É1„+…Ğ¸²†ÔkÚ¹1òyMNÎaò:‡¹Â†\ZWÖP‚ÆÒ¥…g¹‡\ZWÖ^–àş^ÌP0DoìUBãÊ*ş^!w*—Â8…œ(ö\ZWVit#M’Z:-„Æ•UZ²ĞAØ­ ´Ğ¸²Jbú¨¤aru·¢’Ø]†pe•ÂD\0Ìœ<œ¬ÔÒ}¾vœeß%Y3?Y¦›ìO–!<şŒ§n¹\nÌşÇ4|—H‘Ğ£›‡<¹ŠÌÖÖN‘â™dßˆA\Z‚ğ\raßÈÃ\\å¦‚k¶C±]ÓNaà)ee?jê{]EÇ.tB±ì©áÄ°$Î¬³œĞ¥S>}æ›W_“]ô+®öm–7îGD_2ÜÙâÑ6îÍµ‚[¥¼Ø‰\0ªÏâ¾µ§%sÈJ½{İ³n%|²jíì°ıš:w§i=ÌdCïÅš~è©Ï®].ÇA‡kfËw(7ÆG°ş•½Á§ì0,Ì\rî6\\J‹um¨2g9l †¶-0¯Û ]1à}sy¨,kkÿd0±NÁ˜\0\0\0\0IEND®B`‚',0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cliente` */

LOCK TABLES `cliente` WRITE;

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
  `cantidad` double default NULL,
  `precioUnitario` decimal(10,2) default NULL,
  `precioTotal` decimal(10,2) default NULL,
  `estado` int(1) default '0',
  PRIMARY KEY  (`idProducto`,`idCompra`),
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
  `idVenta` int(10) default NULL,
  `numero` int(10) default NULL,
  `estado` int(1) default NULL,
  `idTipo` int(10) default NULL,
  PRIMARY KEY  (`id`),
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
  `id` int(10) default NULL,
  `idVenta` int(10) default NULL,
  `monto` decimal(10,2) default NULL,
  `fechaPago` date default NULL,
  `fechaVence` date default NULL,
  `interes` int(3) default NULL,
  `estado` int(1) default NULL,
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
  `idCompra` int(10) default NULL,
  `monto` decimal(10,2) default NULL,
  `fechaPago` date default NULL,
  `fechaVence` date default NULL,
  `interes` double default NULL,
  `estado` int(1) default '0',
  PRIMARY KEY  (`id`),
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
  `criterio` varchar(200) default NULL,
  `idProducto` int(8) default NULL,
  `nomProducto` varchar(300) default NULL,
  `idTipoDescuento` int(8) default NULL,
  `nomDescuento` varchar(300) default NULL,
  `fechaInicio` date default NULL,
  `fechaFin` date default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idProducto` (`idProducto`),
  KEY `idTipoDescuento` (`idTipoDescuento`),
  CONSTRAINT `descuento_ibfk_2` FOREIGN KEY (`idTipoDescuento`) REFERENCES `tipodescuento` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `descuento` */

LOCK TABLES `descuento` WRITE;

insert  into `descuento`(`id`,`criterio`,`idProducto`,`nomProducto`,`idTipoDescuento`,`nomDescuento`,`fechaInicio`,`fechaFin`,`estado`) values (3,'CATEGORIA',2,'ESCALERAS',4,'DESCUENTO 03','2015-02-02','2015-02-02',0),(5,'CATEGORIA',1,'HERRMIENTAS',6,'FIESTAS PATRIAAS','2015-02-02','2015-02-02',0),(6,'CATEGORIA',1,'HERRMIENTAS',1,'DESCUENTO NAVIDEÃ‘O','2015-07-22','2015-07-22',0);

UNLOCK TABLES;

/*Table structure for table `formaspago` */

DROP TABLE IF EXISTS `formaspago`;

CREATE TABLE `formaspago` (
  `id` int(10) NOT NULL,
  `nombre` varchar(100) default NULL,
  `estado` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `formaspago` */

LOCK TABLES `formaspago` WRITE;

insert  into `formaspago`(`id`,`nombre`,`estado`) values (1,'EFECTIVO',0),(2,'CHEQUE',0),(3,'TARJETA',0),(4,'PAGARE',1);

UNLOCK TABLES;

/*Table structure for table `negocio` */

DROP TABLE IF EXISTS `negocio`;

CREATE TABLE `negocio` (
  `id` int(8) NOT NULL,
  `nombre` varchar(300) default NULL,
  `direccion` varchar(300) default NULL,
  `ruc` char(20) default NULL,
  `telefono` char(15) default NULL,
  `logo` blob,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `negocio` */

LOCK TABLES `negocio` WRITE;

UNLOCK TABLES;

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `id` int(8) NOT NULL auto_increment,
  `nombre` varchar(300) default NULL,
  `detalle` text,
  `imagen` blob,
  `precio` decimal(8,2) default NULL,
  `idCategoria` int(8) default NULL,
  `stock` int(8) default NULL,
  `stockminimo` int(8) default NULL,
  `idUnidades` int(8) default NULL,
  `nroserie` char(50) default NULL,
  `idCaractFisicas` int(8) default NULL,
  `estado` int(1) default NULL,
  `promocion` int(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `idUnidades` (`idUnidades`),
  KEY `idCategoria` (`idCategoria`),
  KEY `idCaractFisicas` (`idCaractFisicas`),
  CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`idUnidades`) REFERENCES `unidades` (`id`),
  CONSTRAINT `producto_ibfk_4` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id`),
  CONSTRAINT `producto_ibfk_5` FOREIGN KEY (`idCaractFisicas`) REFERENCES `caracfisicas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `producto` */

LOCK TABLES `producto` WRITE;

insert  into `producto`(`id`,`nombre`,`detalle`,`imagen`,`precio`,`idCategoria`,`stock`,`stockminimo`,`idUnidades`,`nroserie`,`idCaractFisicas`,`estado`,`promocion`) values (1,'CERA','CERA PARA VIDRIOS','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0X\0\0\0d\0\0\0-÷â\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\02IDATx^İİ°ìXğ»ßÚ¶mÛ¶mÛ¨µmÛ¶m£Ö¶mÛ{¾úš¼ÊËËL2ºwæuU×¾½ƒ$ÿôéş7N¦\'t‘üøã•utÀä¢‹.\nıõWåÿ:OşøãşÎ¯ë\0şüóÏÃwÜşùçŸÊ_:Cşûï¿ğÃ?„o¼1<óÌ3áï¿ÿï:€ÉN;í/ÂEu‚$à^vÙeaî¹çÇ|øé§Ÿâk]	ğK/½¶ß~ûğÕW_UşÒwòï¿ÿÆó¸öÚkÃ\"‹,†rÈ°òÊ+‡7ß|3ß•\0ÿı÷áˆ#guVøóÏ?+íùøãÃQG-wè¡‡===aÔQG\r÷İw_¿+æyä‘°ñÆ‡ç{®O\\…ûŞ{ï…}÷İ7L0Ááÿû_7ÑsÏ=7üşûïİ	0@YÎŞ{ï8à€ğÍ7ßT^i¿°ÊÏ>û,Ü~ûíaıõ×£6ZdAú—.³Ì21 w%À„u*K-µT¸õÖ[ÛÎ*ÜÔo¿ı6<øàƒa·İvÓL3M?—§£Œ2JôÃ]0Kzíµ×Âæ›ovŞyçhÑíÇùùçŸc`=úè£Ã,³ÌYÕ¦ÕëÜX×LP¡O<1Ì?ÿü1Š#ù­Öj…`>úh8ì°ÃÂJ+­Fyä\\0«é…^Øİ\0#óO<ñDXqÅcÀ{çwš\nxÜÌ—_~¿ç†n{î¹g¤^yà•Q«««&_|ñEØvÛm£O¼à‚¢åÕ#n’ É_²VASğšuÖYÃC‘\\Yüñ»à_ı5»™fš)¬¹æš‘:•™×c=ÙÀ	\'œWÀb‹-YAX\rkåx]+\\Âë¯¿³§©¦š*ƒ¦Z‚;Ÿzê©añÅsÌ1G˜xâ‰Ã°Ã›P³Z9fW‹ÌN8á„aİu×\rŸ~úiå•şE¼ûî»Ã:ë¬&Ÿ|ò0Ø`ƒåƒÒJ­»«EpzàÂSL&™d’½óDnÉ%—#8b!Íj™VİõòöÛo‡µ×^;7Üp1z³ê´<ôĞCaÙe—¯÷\Z¸´rü®—_~ù%œsÎ9‘«rçw^å•ùìşûïÆ{ìŞ—VÎ¡ëE°»ç{ÂDM†\Zj¨°Ç{„ß~û­ßßç›o¾0øàƒçƒĞN­œß@!„õÖ[/òW\rcÙ*[“M6Y>\0íÖÊ¹\r¢vöÙgGv0Î8ã„3Î8#¼õÖ[a‡vˆ5Ú\\\0\ZP+¡ôj¨œÛ@#×_}LğÚ6Ú(\\qÅ1•V É NU%³\ZF\Zi¤B>Şxã\r|\0¿úê«aÕUW?í´ÓÆzÂ‚.˜@½:ÖXcÅloÆg,uÃvÜqÇ`íÈ#Œ8î¸ã†UVY%½øzuôÑG+¬°B¤ze«j*|ÀXƒDc„Fˆq¬bŒ1Æƒ:h.e”ÿŞd“MÂAoV¶=TM_xá…ŞX@?KÕË¤B¹eídüñpóÍ7‡»îº+<ıôÓáÅ_ï¾ûnøî»ïbQGª›ÌÔU1´Œ›\0òğÃßEóyş\\û–[n	Ë-·\\éïáF>úè£öÌš\0\n˜¯¿ş:Ö€§r5İtÓÅ”g¥|\ZE±hòÿ^+¬Ô”(•u\Z¤É“½°í¶Û®ßÅª( e‘z;ŞË/¿f=«ÀçPÄ¶\0ì¢Y¨æ Ë<ùä“kö¯\ZQ7ÇEãºÙ´˜>ğÀãû€â†•]ÖŞ?Ì0Ã„%–X\"¶‰¬ ôÍ*£VŒä†qµ`<TÕÒ¾ôÒKcey\'Ñ\n†¥¨ˆ“7×¬B=7•Å¢v\níV·ôşûï‡]wİµcHÔJY}õÕcmÄÊj	Àî”+jlH•wğV+@¶Ùf›¸RÒâFãÃ3Ì0CîçÒÊ²Yœµé¦›FÿÍ¥w¿ıö«ÛwãÇbÄÒ4ÀüŒ»uøá‡ÇeÕl›¥µ:Döl›È\r8W[mµÜÏQ–†nM=õÔ‘! T¬–{{ã7¢[Tä}¶šZhœ¹9ßC\ZØE6×\\sMØl³ÍÚê\nò@I:œKSç£“÷³T\n	º…h7%m&E@cÉ°=¸3Ï<3ßD\ZØr—=ôĞ0Ûl³µ<€•Qş—¿ÌúßDt‡Y!@½ŸµjŒê³zÃ*|ğA?Úg@ÀÔğä²Ç+Rlg­µÖ\n¯¼òJ?ë%uìîèğ}H|=Ô¥•ÊI‰”\'–ûÁÜ¯È£.°Ï>ûDüÖ>ª%ëv(ÈgU¤0àï­.3-uìÃ7İtSX~ùåã‰—¥>µT€™~úéãÅá¹š—Ô1$ŠäyÇÙ·Új«ª‰C\0šŞ›÷»!Vœ`œHâvß}÷8À×hüŒh÷»QYN^\Z`QÑ0†%f	ÕKÜ½ßsÌ1ã<™¶AjVæ{]¨Èıá‡FUÛµdO9å”H•¼WKhæ™gîùı½š|ŒaöÙgïw¸q°ÿvÚi±VÑL‰{$•EÅ¥¬”q‚ØÄ§•UVº°R€œ~úéáùçŸï7^|òÉ\'ÑwšªøÕW_]ye@áĞÆ4e4jª}äzdZÍÖˆ‹5HëóÀ%…\0³éíB-”{jÊZ¥·Nà¸ã‹Ö”pÃfÅÅH½i5±TQ5n\'9\'.càêÌO¸¦jã§µ”Ñ¨®m¸á†qÀÏ\r«&5V”1®	$Q2ï`yŠ²è°üÍa}!Æ¡øóä¼€mè„uÓûï¿?®««LL¬¨š0nº³šå&R`€Šá„õL½ Cü«‘$Ñ:ëô{S²\0›ÂdqÉ6+àp;²¾]vÙ%&J#é>S×nbHÀå¯ÕšWSæÚªììƒˆm€Õ”Kprü¬Q¦ô^±¾’,À’¼9»¯Ã\nC÷|òÉpÛm·EëTG1„K@MÅFS¦dšH.À(Îå—_óó²<3nb\0EË¦·$°Ìïºë®«ê²œ·×d¨ÒÌ\0ğ\nX@md5\0°ƒÈFÖXcÒ~WÎÏŸa}é²’Xl`8ÙÚE;e\0€ñC|Q”,]õ©dG\"i\'K²\0£˜fˆkEıVK\0óM÷Ş{o˜wŞyK+šzop=’˜\ZBé3€åïòõ2®AF†¬kİtšå&ÒQ\0sâè‡l-}ByŠŠaRÛN	hyÒQ\0ëğâxE©0²-¨%„½“%0Ftşùç÷>À–¸_™	˜I\'4Ö¸“N—,À}Æ\"¸E”¢Â¹ª“éE4®$0ã0wQ34¼—ÑzŠjÖöÖ>Iƒ™§Æóe5Ê\Z²’x®¹æŠq&*û·ÕxS˜&1Æ·ì­Y‰\0ëım_R–:r%İ\"Rv;4“kPkP|ªììá‡z/¼p,Ì§Ûó˜”t¹Y‰\0›cH¾¸š¢eÊ­*9¶[,o\0/¹†\r6Ø ‚Îk7±Òj…,•µX éë\0ÒÈ;H¢¢¯æ&?İ-=2#ZÉuØ§¡†Ì×\Z.©Å÷%Zúl\n@ÍHX).ï ‰¢fÚ\"\n9İ\"h§‘-Vš\\GºeÄX4Ò×™V\0«ıÚ°ØŒôà²yH+ÿ«xŞM\"ÃTL×»s\rü«òkB/¦Šöm`Uf+šÉT{(ïËÓjP£Ù;ÙÛ¢Ã«Y\\ƒ¢9œ´ÕıwÑE­™Xq!üv3µíT&ïËÓŠŞ´‚²ô–°8İ%×ä\ZüJ²O…-±§V·†Õä«Õû+’øĞˆœ/O«V‰Q¤nBçbÎ9çŒç/†”‘D$ËĞÚZµF¾ŒOÉnQ»F¥g‹-¶Èıò´ê6Òfï+AÃLyÚFàüµ½=öØş,Ğ€“Td¯7QìI›ÉN¥F¥\'Í«©á¾l«“…1pÉù«o³èl\rBÊ_k6“ÀB¿4*=æËò¾<­[n¹eG—%³\"35ÄçÜY¡tY2•eâOÑğ	*§	Ú¨ô”™n1°ÑM¢®Ì¤á²\0²o#+e\06#,AiTz’©¥İdÁ\\™\'Q¡_–¸@g2)¯2VÖ‚=uªQé)3îOöf\rµÑe‘u:oAÎ¿ÕòÄÀa‘æB\r	6*=eÊ”üYv\'O\'\nk?›IsàX:yï5½YÄ\"Ô2®ºêªÊ§ê—+¯¼2÷ËÓ*HTtî$10sÌ1ÇD`dafŒ«kğ`#SmçÁ–TŞ—§Õ¨şwŞYùHç\n¦°ôÒKÇRcÂ}Õ}ó„¯¶• Öv$“kæá£=rò¼/O«b<âŞÉ¢ËrÉ%—ÄÁ=–\'ûÌ£f‰p†ÉY{Ş5Ó¤ÑLë¨;Èûò´ºËîv\'‹92İni±â”™Zc³e«iêÆÕnR‰õà\"&á¤İÉ²OÕëmÁpõ	j‚›6QÑ¹ªCèÒä]/õ=8t3Y‰\0+Lç$Q>Í({â:Q4t»Yœ\rÜ¶ñÍlxcº—U\0›.µ= ‰\0µÏ;HZ\rŠĞÖ“ãÑ-	CĞ¨,:G3¾éVRú.[šñ¿$lG*yJ”›Ğ•5IÙ)Â7*£ÕùÙ\n¦\\ä3efEÛdJ®¦Y‰\0søZByJ«¹ˆF!Û.Äì~Òœtn6¶›ájÕ5šw‰ª¢™ynV\"Àü[dÅªÿ¶‹\Z¥ïëÚ„ã›BO™ ^b¿E-ÑúÑÅÀ2øØ¼k¤¨[+Ü‰\0[RòuLÉ;`ZEÖC9d€Gô¶°Ô‹/¾85ÇŸZ®Ák_Yæ	€­U¼?L´¹±Z‘5Qé£âè«\"<ëõ$É„Æ¥~a‘µi×¹-ª±l\rÒVQÒ~\0sòvSëyN«‰‘#å¾\":ÔÑzßk¯½âS¯íGN?> O°\nÖîıEã¹Ü 1ŞVO?€‰W\\®ÕiMÈ£BvQÔnµ(ÒH*<t®¨Ê(C&Æ 0¼kI”õr9ZI­º¦ş\0Ğ°²OÊ“|Èÿ{ó‡ô´ƒ”#­ ¢F¬ë‘((·Öªš%ê‚E+¢é`ÂWÙ4ÍWÕŠ´‰ÚÍ®›t´KXŠ%Óå.²0à²D#©µF¤u­vò?ûì³•oh\0°Oš†EÙ‰â•j\\L»Ü…ï„W×ÅA¿£º–wÎYM6)¶:¦\00ìÚDà‹y¢~‚ÆóspÑVŸ¤š®ój\r»¹V’±U£e,—ªn½õÖ…<ºÉ˜Xº±’wRYµÄü\\‚Ga©Ã¶Ê)vK‚<*«Vá›K\0‚”_ÂJ†şŠTÍW‘Ş³%Ú!Uf\r¸ e¦Ğ“wryÊw[Æ‚Ÿ*W3Ù›d££˜ç~ü…ÎjÖ6¤—‰TÂ1Ï<óD–Ñ®Ì´*À8¶ké*ô´ZrÁà9ê~D´‘Ç\Zpª|²/–™€÷J6¬(ÌÈ2Ëº4ïÃ‹5EÛ9V`\"`(z^NÙe—(È7óæ»¬ˆ2ş˜nŠÊ˜à–WŒğÜ‡“N:)²\n…²9Q=;#¹eŸûĞ¨LXŠ¥ª%STÊ*K´\'ì	<† ¹-~3ïâÜVH¯sp²,~^i’Å6ò.­\"ç¡ÒNpI)€‰è,ç×9¨÷‘ƒĞ2DŸ•-©#ø-õôËp´=.²5OÑ³w\Z—5¾Å_Ê %\rej&yjZÛáÓÛåwÓR\Z`Â’E[–Xöqyêsj‚Œ¥ÍÂ§œrÊHô)nt0nI†å½eıkú¬®‡yèŞÜÀ^ÀDn/Cò»–ŠÒµÚŞ n¦ ‹º	¸j½.©`biy4¸ÁY\\­á¾TVo¶ÌŠãz¸¹Ş—4p\"–š¬	³¸¨Ø[ÊjùjãÉ•Ôš‘h§40Áìèñ,£O~)¥|:nÂ•Séë`VMš8Y—¶È¯…SOö×\n•òz˜ÎíÑ\\x´›ß×Ò2€	KÁ]H,XQüáĞ@Z¥¨Ÿ3ág%&qoûÚjÒR€´‹ä£eÊ€êém­Í(¬yé±æzƒZWX+ºÀ­–¶\0œ`»p`•}ê©§â3\'lQ•‰å˜§\0•Ø`…ÈÂ€êû;ÅZ”ş™>SXhôI\0\0\0\0IEND®B`‚',52.00,1,25,5,1,'77518515',1,0,0),(2,'OTRO','DAS','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0X\0\0\0d\0\0\0-÷â\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Â\0\0Â(J€\0\02IDATx^İİ°ìXğ»ßÚ¶mÛ¶mÛ¨µmÛ¶m£Ö¶mÛ{¾úš¼ÊËËL2ºwæuU×¾½ƒ$ÿôéş7N¦\'t‘üøã•utÀä¢‹.\nıõWåÿ:OşøãşÎ¯ë\0şüóÏÃwÜşùçŸÊ_:Cşûï¿ğÃ?„o¼1<óÌ3áï¿ÿï:€ÉN;í/ÂEu‚$à^vÙeaî¹çÇ|øé§Ÿâk]	ğK/½¶ß~ûğÕW_UşÒwòï¿ÿÆó¸öÚkÃ\"‹,†rÈ°òÊ+‡7ß|3ß•\0ÿı÷áˆ#guVøóÏ?+íùøãÃQG-wè¡‡===aÔQG\r÷İw_¿+æyä‘°ñÆ‡ç{®O\\…ûŞ{ï…}÷İ7L0Ááÿû_7ÑsÏ=7üşûïİ	0@YÎŞ{ï8à€ğÍ7ßT^i¿°ÊÏ>û,Ü~ûíaıõ×£6ZdAú—.³Ì21 w%À„u*K-µT¸õÖ[ÛÎ*ÜÔo¿ı6<øàƒa·İvÓL3M?—§£Œ2JôÃ]0Kzíµ×Âæ›ovŞyçhÑíÇùùçŸc`=úè£Ã,³ÌYÕ¦ÕëÜX×LP¡O<1Ì?ÿü1Š#ù­Öj…`>úh8ì°ÃÂJ+­Fyä\\0«é…^Øİ\0#óO<ñDXqÅcÀ{çwš\nxÜÌ—_~¿ç†n{î¹g¤^yà•Q«««&_|ñEØvÛm£O¼à‚¢åÕ#n’ É_²VASğšuÖYÃC‘\\Yüñ»à_ı5»™fš)¬¹æš‘:•™×c=ÙÀ	\'œWÀb‹-YAX\rkåx]+\\Âë¯¿³§©¦š*ƒ¦Z‚;Ÿzê©añÅsÌ1G˜xâ‰Ã°Ã›P³Z9fW‹ÌN8á„aİu×\rŸ~úiå•şE¼ûî»Ã:ë¬&Ÿ|ò0Ø`ƒåƒÒJ­»«EpzàÂSL&™d’½óDnÉ%—#8b!Íj™VİõòöÛo‡µ×^;7Üp1z³ê´<ôĞCaÙe—¯÷\Z¸´rü®—_~ù%œsÎ9‘«rçw^å•ùìşûïÆ{ìŞ—VÎ¡ëE°»ç{ÂDM†\Zj¨°Ç{„ß~û­ßßç›o¾0øàƒçƒĞN­œß@!„õÖ[/òW\rcÙ*[“M6Y>\0íÖÊ¹\r¢vöÙgGv0Î8ã„3Î8#¼õÖ[a‡vˆ5Ú\\\0\ZP+¡ôj¨œÛ@#×_}LğÚ6Ú(\\qÅ1•V É NU%³\ZF\Zi¤B>Şxã\r|\0¿úê«aÕUW?í´ÓÆzÂ‚.˜@½:ÖXcÅloÆg,uÃvÜqÇ`íÈ#Œ8î¸ã†UVY%½øzuôÑG+¬°B¤ze«j*|ÀXƒDc„Fˆq¬bŒ1Æƒ:h.e”ÿŞd“MÂAoV¶=TM_xá…ŞX@?KÕË¤B¹eídüñpóÍ7‡»îº+<ıôÓáÅ_ï¾ûnøî»ïbQGª›ÌÔU1´Œ›\0òğÃßEóyş\\û–[n	Ë-·\\éïáF>úè£öÌš\0\n˜¯¿ş:Ö€§r5İtÓÅ”g¥|\ZE±hòÿ^+¬Ô”(•u\Z¤É“½°í¶Û®ßÅª( e‘z;ŞË/¿f=«ÀçPÄ¶\0ì¢Y¨æ Ë<ùä“kö¯\ZQ7ÇEãºÙ´˜>ğÀãû€â†•]ÖŞ?Ì0Ã„%–X\"¶‰¬ ôÍ*£VŒä†qµ`<TÕÒ¾ôÒKcey\'Ñ\n†¥¨ˆ“7×¬B=7•Å¢v\níV·ôşûï‡]wİµcHÔJY}õÕcmÄÊj	Àî”+jlH•wğV+@¶Ùf›¸RÒâFãÃ3Ì0CîçÒÊ²Yœµé¦›FÿÍ¥w¿ıö«ÛwãÇbÄÒ4ÀüŒ»uøá‡ÇeÕl›¥µ:Döl›È\r8W[mµÜÏQ–†nM=õÔ‘! T¬–{{ã7¢[Tä}¶šZhœ¹9ßC\ZØE6×\\sMØl³ÍÚê\nò@I:œKSç£“÷³T\n	º…h7%m&E@cÉ°=¸3Ï<3ßD\ZØr—=ôĞ0Ûl³µ<€•Qş—¿ÌúßDt‡Y!@½ŸµjŒê³zÃ*|ğA?Úg@ÀÔğä²Ç+Rlg­µÖ\n¯¼òJ?ë%uìîèğ}H|=Ô¥•ÊI‰”\'–ûÁÜ¯È£.°Ï>ûDüÖ>ª%ëv(ÈgU¤0àï­.3-uìÃ7İtSX~ùåã‰—¥>µT€™~úéãÅá¹š—Ô1$ŠäyÇÙ·Új«ª‰C\0šŞ›÷»!Vœ`œHâvß}÷8À×hüŒh÷»QYN^\Z`QÑ0†%f	ÕKÜ½ßsÌ1ã<™¶AjVæ{]¨Èıá‡FUÛµdO9å”H•¼WKhæ™gîùı½š|ŒaöÙgïw¸q°ÿvÚi±VÑL‰{$•EÅ¥¬”q‚ØÄ§•UVº°R€œ~úéáùçŸï7^|òÉ\'ÑwšªøÕW_]ye@áĞÆ4e4jª}äzdZÍÖˆ‹5HëóÀ%…\0³éíB-”{jÊZ¥·Nà¸ã‹Ö”pÃfÅÅH½i5±TQ5n\'9\'.càêÌO¸¦jã§µ”Ñ¨®m¸á†qÀÏ\r«&5V”1®	$Q2ï`yŠ²è°üÍa}!Æ¡øóä¼€mè„uÓûï¿?®««LL¬¨š0nº³šå&R`€Šá„õL½ Cü«‘$Ñ:ëô{S²\0›ÂdqÉ6+àp;²¾]vÙ%&J#é>S×nbHÀå¯ÕšWSæÚªììƒˆm€Õ”Kprü¬Q¦ô^±¾’,À’¼9»¯Ã\nC÷|òÉpÛm·EëTG1„K@MÅFS¦dšH.À(Îå—_óó²<3nb\0EË¦·$°Ìïºë®«ê²œ·×d¨ÒÌ\0ğ\nX@md5\0°ƒÈFÖXcÒ~WÎÏŸa}é²’Xl`8ÙÚE;e\0€ñC|Q”,]õ©dG\"i\'K²\0£˜fˆkEıVK\0óM÷Ş{o˜wŞyK+šzop=’˜\ZBé3€åïòõ2®AF†¬kİtšå&ÒQ\0sâè‡l-}ByŠŠaRÛN	hyÒQ\0ëğâxE©0²-¨%„½“%0Ftşùç÷>À–¸_™	˜I\'4Ö¸“N—,À}Æ\"¸E”¢Â¹ª“éE4®$0ã0wQ34¼—ÑzŠjÖöÖ>Iƒ™§Æóe5Ê\Z²’x®¹æŠq&*û·ÕxS˜&1Æ·ì­Y‰\0ëım_R–:r%İ\"Rv;4“kPkP|ªììá‡z/¼p,Ì§Ûó˜”t¹Y‰\0›cH¾¸š¢eÊ­*9¶[,o\0/¹†\r6Ø ‚Îk7±Òj…,•µX éë\0ÒÈ;H¢¢¯æ&?İ-=2#ZÉuØ§¡†Ì×\Z.©Å÷%Zúl\n@ÍHX).ï ‰¢fÚ\"\n9İ\"h§‘-Vš\\GºeÄX4Ò×™V\0«ıÚ°ØŒôà²yH+ÿ«xŞM\"ÃTL×»s\rü«òkB/¦Šöm`Uf+šÉT{(ïËÓjP£Ù;ÙÛ¢Ã«Y\\ƒ¢9œ´ÕıwÑE­™Xq!üv3µíT&ïËÓŠŞ´‚²ô–°8İ%×ä\ZüJ²O…-±§V·†Õä«Õû+’øĞˆœ/O«V‰Q¤nBçbÎ9çŒç/†”‘D$ËĞÚZµF¾ŒOÉnQ»F¥g‹-¶Èıò´ê6Òfï+AÃLyÚFàüµ½=öØş,Ğ€“Td¯7QìI›ÉN¥F¥\'Í«©á¾l«“…1pÉù«o³èl\rBÊ_k6“ÀB¿4*=æËò¾<­[n¹eG—%³\"35ÄçÜY¡tY2•eâOÑğ	*§	Ú¨ô”™n1°ÑM¢®Ì¤á²\0²o#+e\06#,AiTz’©¥İdÁ\\™\'Q¡_–¸@g2)¯2VÖ‚=uªQé)3îOöf\rµÑe‘u:oAÎ¿ÕòÄÀa‘æB\r	6*=eÊ”üYv\'O\'\nk?›IsàX:yï5½YÄ\"Ô2®ºêªÊ§ê—+¯¼2÷ËÓ*HTtî$10sÌ1ÇD`dafŒ«kğ`#SmçÁ–TŞ—§Õ¨şwŞYùHç\n¦°ôÒKÇRcÂ}Õ}ó„¯¶• Öv$“kæá£=rò¼/O«b<âŞÉ¢ËrÉ%—ÄÁ=–\'ûÌ£f‰p†ÉY{Ş5Ó¤ÑLë¨;Èûò´ºËîv\'‹92İni±â”™Zc³e«iêÆÕnR‰õà\"&á¤İÉ²OÕëmÁpõ	j‚›6QÑ¹ªCèÒä]/õ=8t3Y‰\0+Lç$Q>Í({â:Q4t»Yœ\rÜ¶ñÍlxcº—U\0›.µ= ‰\0µÏ;HZ\rŠĞÖ“ãÑ-	CĞ¨,:G3¾éVRú.[šñ¿$lG*yJ”›Ğ•5IÙ)Â7*£ÕùÙ\n¦\\ä3efEÛdJ®¦Y‰\0søZByJ«¹ˆF!Û.Äì~Òœtn6¶›ájÕ5šw‰ª¢™ynV\"Àü[dÅªÿ¶‹\Z¥ïëÚ„ã›BO™ ^b¿E-ÑúÑÅÀ2øØ¼k¤¨[+Ü‰\0[RòuLÉ;`ZEÖC9d€Gô¶°Ô‹/¾85ÇŸZ®Ák_Yæ	€­U¼?L´¹±Z‘5Qé£âè«\"<ëõ$É„Æ¥~a‘µi×¹-ª±l\rÒVQÒ~\0sòvSëyN«‰‘#å¾\":ÔÑzßk¯½âS¯íGN?> O°\nÖîıEã¹Ü 1ŞVO?€‰W\\®ÕiMÈ£BvQÔnµ(ÒH*<t®¨Ê(C&Æ 0¼kI”õr9ZI­º¦ş\0Ğ°²OÊ“|Èÿ{ó‡ô´ƒ”#­ ¢F¬ë‘((·Öªš%ê‚E+¢é`ÂWÙ4ÍWÕŠ´‰ÚÍ®›t´KXŠ%Óå.²0à²D#©µF¤u­vò?ûì³•oh\0°Oš†EÙ‰â•j\\L»Ü…ï„W×ÅA¿£º–wÎYM6)¶:¦\00ìÚDà‹y¢~‚ÆóspÑVŸ¤š®ój\r»¹V’±U£e,—ªn½õÖ…<ºÉ˜Xº±’wRYµÄü\\‚Ga©Ã¶Ê)vK‚<*«Vá›K\0‚”_ÂJ†şŠTÍW‘Ş³%Ú!Uf\r¸ e¦Ğ“wryÊw[Æ‚Ÿ*W3Ù›d££˜ç~ü…ÎjÖ6¤—‰TÂ1Ï<óD–Ñ®Ì´*À8¶ké*ô´ZrÁà9ê~D´‘Ç\Zpª|²/–™€÷J6¬(ÌÈ2Ëº4ïÃ‹5EÛ9V`\"`(z^NÙe—(È7óæ»¬ˆ2ş˜nŠÊ˜à–WŒğÜ‡“N:)²\n…²9Q=;#¹eŸûĞ¨LXŠ¥ª%STÊ*K´\'ì	<† ¹-~3ïâÜVH¯sp²,~^i’Å6ò.­\"ç¡ÒNpI)€‰è,ç×9¨÷‘ƒĞ2DŸ•-©#ø-õôËp´=.²5OÑ³w\Z—5¾Å_Ê %\rej&yjZÛáÓÛåwÓR\Z`Â’E[–Xöqyêsj‚Œ¥ÍÂ§œrÊHô)nt0nI†å½eıkú¬®‡yèŞÜÀ^ÀDn/Cò»–ŠÒµÚŞ n¦ ‹º	¸j½.©`biy4¸ÁY\\­á¾TVo¶ÌŠãz¸¹Ş—4p\"–š¬	³¸¨Ø[ÊjùjãÉ•Ôš‘h§40Áìèñ,£O~)¥|:nÂ•Séë`VMš8Y—¶È¯…SOö×\n•òz˜ÎíÑ\\x´›ß×Ò2€	KÁ]H,XQüáĞ@Z¥¨Ÿ3ág%&qoûÚjÒR€´‹ä£eÊ€êém­Í(¬yé±æzƒZWX+ºÀ­–¶\0œ`»p`•}ê©§â3\'lQ•‰å˜§\0•Ø`…ÈÂ€êû;ÅZ”ş™>SXhôI\0\0\0\0IEND®B`‚',10.00,1,50,5,1,'',1,1,0);

UNLOCK TABLES;

/*Table structure for table `promocion` */

DROP TABLE IF EXISTS `promocion`;

CREATE TABLE `promocion` (
  `id` int(10) NOT NULL auto_increment,
  `nombre` varchar(200) default NULL,
  `descripcion` text,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `proveedor` */

LOCK TABLES `proveedor` WRITE;

insert  into `proveedor`(`documento`,`razon`,`telefono`,`direccion`,`fechaRegistro`,`email`,`estado`) values ('20490253867','ITDECSA','245844','AV LA CULTURA NÂ° 772','2015-07-01','informes@itdecsa.com',0),('45454545454','CUSCO HOSTING','44444444','CUSCO PERU','2015-07-01','cuscohos@hotmail.com',1);

UNLOCK TABLES;

/*Table structure for table `tipocomprobante` */

DROP TABLE IF EXISTS `tipocomprobante`;

CREATE TABLE `tipocomprobante` (
  `id` int(10) NOT NULL,
  `nombre` varchar(100) default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tipocomprobante` */

LOCK TABLES `tipocomprobante` WRITE;

insert  into `tipocomprobante`(`id`,`nombre`,`estado`) values (1,'BOLETA',0),(2,'FACTURA',0),(3,'NOTA DE PEDIDO',1);

UNLOCK TABLES;

/*Table structure for table `tipodescuento` */

DROP TABLE IF EXISTS `tipodescuento`;

CREATE TABLE `tipodescuento` (
  `id` int(8) NOT NULL auto_increment,
  `nombre` varchar(200) default NULL,
  `porcentaje` int(5) default NULL,
  `estado` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `tipodescuento` */

LOCK TABLES `tipodescuento` WRITE;

insert  into `tipodescuento`(`id`,`nombre`,`porcentaje`,`estado`) values (1,'DESCUENTO NAVIDEÃ‘O',10,0),(2,'DESCUENTO 01',5,0),(3,'DESCUENTO 02',4,0),(4,'DESCUENTO 03 ',12,0),(5,'DESCEUNTO 05',13,0),(6,'FIESTAS PATRIAAS',8,0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `unidades` */

LOCK TABLES `unidades` WRITE;

insert  into `unidades`(`id`,`nombre`,`abreviatura`,`valorBase`,`estado`) values (1,'SIN UNIDAD','S/U',0,0),(2,'UNIDADES','UNI',1,0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `usuario` */

LOCK TABLES `usuario` WRITE;

insert  into `usuario`(`dni`,`nombre`,`apaterno`,`amaterno`,`sexo`,`nick`,`pass`,`telefono`,`direccion`,`nacimiento`,`privilegio`,`estado`) values (40494250,'EDGARD','RAYME','QUISPE','M','edgard','1234','45454545','AV. LA CULTURA NÂ° 772','2015-06-30',0,0);

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
  `cantidad` int(8) default NULL,
  `unidad` char(10) default NULL,
  `precioUnitario` decimal(8,2) default NULL,
  `precioTotal` decimal(8,2) default NULL,
  PRIMARY KEY  (`idVentas`,`idProducto`),
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
