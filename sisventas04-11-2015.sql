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

insert  into `categoria`(`id`,`nombre`,`imagen`,`estado`) values (1,'SIN CATEGORIA','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0c\0\0\0c\0\0\0;¾•\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0IDATx^íİK¨}S\0Çñ‹<ÊÀ„„gLP\"(1!\"<I)â/1ğÈDÉcdè1`fh ”ˆ”’È#¼“7yÅï{İóï{çŞ½×k¯µ÷şÕ§şíÿ¹k¯³×9ûìÇZk¯5’åß_Éœ9XÎÜğ‰¸šÒb]‡Ëœ\\%·Écâ6Zn/ëÇds®<\'ßŠÛHC >×Ë¤ò|!nƒí{¡~ÇÊè²²áUq V?È¢îûKó¹ZÜmÍƒr€4™+ä~qo¬UÈíÒT.—ÏÅ½¡Öı&÷Jõ9P8ÁúIÜ‹ß…÷y¶T™#ÄU|ìN”ªr†|,®²Sp‘¾\rœ9¿/®’Sñ°Î’Áò¸ÊMÕGr¼\'D®BS÷‡»¦ù±3\Z¤È7d¨««­y]²†£¦©ÿXwõ¥\\)YÂîiÊ‡¯!8ÊJ~ØË™µ[YNœå.\\,¡ùP6—õ¸õå”ôÄS·’¸—sû¸P¾[wNIÂE¿×š¸ÙÄÁÁéR\"¬ïŠ«Oj·JT¸^êêë2DNîÃ»:¥Ä.2êjo‰û—ÊÑ2t¨ƒ«_Jt9ên•æ¾CÇ\'å&©)|Kø}¤n®Î)ğïîùº‚RùYöH­¡nÔÑÕ=Öór˜tNîÆˆş1+êèêB¯sœ½88:k%ÔÕ½‡X\\Û£e§¸Rá[×Jrî!:mNºÜ§{ià$¹C\\Ù[=#¼>¶¿Ó…âÊOaÇĞå2WO¿÷äd	\rİ\\¹»¹SbB©»+;Öe²2ô5u”BïCºM¹E~WnKLro±²á,4W\'ä7äH	ÉBÿWWnW\n×¤B“«18ŸyH¶….ñîR:óTRî¯Cë°Hì€UØ-…Ã¬œwğB6Ä~BWJW^¨˜]e®ÆxI–ì0‚Ç½0öõìóû&Çae¥:9#t<İd#çº¹1v÷µœ*ëq/£ZìÖãşslèp„ä8yK\\¹©Lª1ød‡†o”+3¥õÆÈıõ«\'{?y)ÑœÛÿ›Ğƒr¾äºÑ´•]8üN%¡ÙW®Wvvápî‰É\râÊÎÅ.lÙ_r·°{‰É=âÊÏÉ.lÙy›û„Q­®üœìÂÑà ‰\råü-n¹Ù…-á\0³¤ÈµâÖQŠ]ØŠg%ECpûófqë(É.lÁ£Â=˜0¨ş)áØ­£4»°vOHç~G+rŒ|*®ü¡Ø…5ãÇ5¦Ç3ãğCïÊš]X3¦±\rß†·Å•[»°V?Jè´u~E\\¹µ°kÅ\0Ïp×ğMqeÖÄ.¬Uhc|&®¼Ú<+¤1WVm¾“õ¸ÿ¬ÑÓÒ7­Œ]oî¶kHæÆÈ$$scd’æ\Zƒ¸Ô†Á/}µ0‹h±î³İ-5½ ¹Ìà^8Ë‹Ë3{»v.’s|Ælµmã3ÈÜÃ°Aré›m·rLáŠhìø¹œäÊªÁ²cr\ZWV\rv\rOTqXƒĞ¸²†Æä›RëÂ¡qe\réé4]É1„+…Ğ¸²†ÔkÚ¹1òyMNÎaò:‡¹Â†\ZWÖP‚ÆÒ¥…g¹‡\ZWÖ^–àş^ÌP0DoìUBãÊ*ş^!w*—Â8…œ(ö\ZWVit#M’Z:-„Æ•UZ²ĞAØ­ ´Ğ¸²Jbú¨¤aru·¢’Ø]†pe•ÂD\0Ìœ<œ¬ÔÒ}¾vœeß%Y3?Y¦›ìO–!<şŒ§n¹\nÌşÇ4|—H‘Ğ£›‡<¹ŠÌÖÖN‘â™dßˆA\Z‚ğ\raßÈÃ\\å¦‚k¶C±]ÓNaà)ee?jê{]EÇ.tB±ì©áÄ°$Î¬³œĞ¥S>}æ›W_“]ô+®öm–7îGD_2ÜÙâÑ6îÍµ‚[¥¼Ø‰\0ªÏâ¾µ§%sÈJ½{İ³n%|²jíì°ıš:w§i=ÌdCïÅš~è©Ï®].ÇA‡kfËw(7ÆG°ş•½Á§ì0,Ì\rî6\\J‹um¨2g9l †¶-0¯Û ]1à}sy¨,kkÿd0±NÁ˜\0\0\0\0IEND®B`‚',0),(2,'CHOMPAS','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0c\0\0\0c\0\0\0;¾•\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0IDATx^íİK¨}S\0Çñ‹<ÊÀ„„gLP\"(1!\"<I)â/1ğÈDÉcdè1`fh ”ˆ”’È#¼“7yÅï{İóï{çŞ½×k¯µ÷şÕ§şíÿ¹k¯³×9ûìÇZk¯5’åß_Éœ9XÎÜğ‰¸šÒb]‡Ëœ\\%·Écâ6Zn/ëÇds®<\'ßŠÛHC >×Ë¤ò|!nƒí{¡~ÇÊè²²áUq V?È¢îûKó¹ZÜmÍƒr€4™+ä~qo¬UÈíÒT.—ÏÅ½¡Öı&÷Jõ9P8ÁúIÜ‹ß…÷y¶T™#ÄU|ìN”ªr†|,®²Sp‘¾\rœ9¿/®’Sñ°Î’Áò¸ÊMÕGr¼\'D®BS÷‡»¦ù±3\Z¤È7d¨««­y]²†£¦©ÿXwõ¥\\)YÂîiÊ‡¯!8ÊJ~ØË™µ[YNœå.\\,¡ùP6—õ¸õå”ôÄS·’¸—sû¸P¾[wNIÂE¿×š¸ÙÄÁÁéR\"¬ïŠ«Oj·JT¸^êêë2DNîÃ»:¥Ä.2êjo‰û—ÊÑ2t¨ƒ«_Jt9ên•æ¾CÇ\'å&©)|Kø}¤n®Î)ğïîùº‚RùYöH­¡nÔÑÕ=Öór˜tNîÆˆş1+êèêB¯sœ½88:k%ÔÕ½‡X\\Û£e§¸Rá[×Jrî!:mNºÜ§{ià$¹C\\Ù[=#¼>¶¿Ó…âÊOaÇĞå2WO¿÷äd	\rİ\\¹»¹SbB©»+;Öe²2ô5u”BïCºM¹E~WnKLro±²á,4W\'ä7äH	ÉBÿWWnW\n×¤B“«18ŸyH¶….ñîR:óTRî¯Cë°Hì€UØ-…Ã¬œwğB6Ä~BWJW^¨˜]e®ÆxI–ì0‚Ç½0öõìóû&Çae¥:9#t<İd#çº¹1v÷µœ*ëq/£ZìÖãşslèp„ä8yK\\¹©Lª1ød‡†o”+3¥õÆÈıõ«\'{?y)ÑœÛÿ›Ğƒr¾äºÑ´•]8üN%¡ÙW®Wvvápî‰É\râÊÎÅ.lÙ_r·°{‰É=âÊÏÉ.lÙy›û„Q­®üœìÂÑà ‰\råü-n¹Ù…-á\0³¤ÈµâÖQŠ]ØŠg%ECpûófqë(É.lÁ£Â=˜0¨ş)áØ­£4»°vOHç~G+rŒ|*®ü¡Ø…5ãÇ5¦Ç3ãğCïÊš]X3¦±\rß†·Å•[»°V?Jè´u~E\\¹µ°kÅ\0Ïp×ğMqeÖÄ.¬Uhc|&®¼Ú<+¤1WVm¾“õ¸ÿ¬ÑÓÒ7­Œ]oî¶kHæÆÈ$$scd’æ\Zƒ¸Ô†Á/}µ0‹h±î³İ-5½ ¹Ìà^8Ë‹Ë3{»v.’s|Ælµmã3ÈÜÃ°Aré›m·rLáŠhìø¹œäÊªÁ²cr\ZWV\rv\rOTqXƒĞ¸²†Æä›RëÂ¡qe\réé4]É1„+…Ğ¸²†ÔkÚ¹1òyMNÎaò:‡¹Â†\ZWÖP‚ÆÒ¥…g¹‡\ZWÖ^–àş^ÌP0DoìUBãÊ*ş^!w*—Â8…œ(ö\ZWVit#M’Z:-„Æ•UZ²ĞAØ­ ´Ğ¸²Jbú¨¤aru·¢’Ø]†pe•ÂD\0Ìœ<œ¬ÔÒ}¾vœeß%Y3?Y¦›ìO–!<şŒ§n¹\nÌşÇ4|—H‘Ğ£›‡<¹ŠÌÖÖN‘â™dßˆA\Z‚ğ\raßÈÃ\\å¦‚k¶C±]ÓNaà)ee?jê{]EÇ.tB±ì©áÄ°$Î¬³œĞ¥S>}æ›W_“]ô+®öm–7îGD_2ÜÙâÑ6îÍµ‚[¥¼Ø‰\0ªÏâ¾µ§%sÈJ½{İ³n%|²jíì°ıš:w§i=ÌdCïÅš~è©Ï®].ÇA‡kfËw(7ÆG°ş•½Á§ì0,Ì\rî6\\J‹um¨2g9l †¶-0¯Û ]1à}sy¨,kkÿd0±NÁ˜\0\0\0\0IEND®B`‚',0),(3,'PANTALONES','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0c\0\0\0c\0\0\0;¾•\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0IDATx^íİK¨}S\0Çñ‹<ÊÀ„„gLP\"(1!\"<I)â/1ğÈDÉcdè1`fh ”ˆ”’È#¼“7yÅï{İóï{çŞ½×k¯µ÷şÕ§şíÿ¹k¯³×9ûìÇZk¯5’åß_Éœ9XÎÜğ‰¸šÒb]‡Ëœ\\%·Écâ6Zn/ëÇds®<\'ßŠÛHC >×Ë¤ò|!nƒí{¡~ÇÊè²²áUq V?È¢îûKó¹ZÜmÍƒr€4™+ä~qo¬UÈíÒT.—ÏÅ½¡Öı&÷Jõ9P8ÁúIÜ‹ß…÷y¶T™#ÄU|ìN”ªr†|,®²Sp‘¾\rœ9¿/®’Sñ°Î’Áò¸ÊMÕGr¼\'D®BS÷‡»¦ù±3\Z¤È7d¨««­y]²†£¦©ÿXwõ¥\\)YÂîiÊ‡¯!8ÊJ~ØË™µ[YNœå.\\,¡ùP6—õ¸õå”ôÄS·’¸—sû¸P¾[wNIÂE¿×š¸ÙÄÁÁéR\"¬ïŠ«Oj·JT¸^êêë2DNîÃ»:¥Ä.2êjo‰û—ÊÑ2t¨ƒ«_Jt9ên•æ¾CÇ\'å&©)|Kø}¤n®Î)ğïîùº‚RùYöH­¡nÔÑÕ=Öór˜tNîÆˆş1+êèêB¯sœ½88:k%ÔÕ½‡X\\Û£e§¸Rá[×Jrî!:mNºÜ§{ià$¹C\\Ù[=#¼>¶¿Ó…âÊOaÇĞå2WO¿÷äd	\rİ\\¹»¹SbB©»+;Öe²2ô5u”BïCºM¹E~WnKLro±²á,4W\'ä7äH	ÉBÿWWnW\n×¤B“«18ŸyH¶….ñîR:óTRî¯Cë°Hì€UØ-…Ã¬œwğB6Ä~BWJW^¨˜]e®ÆxI–ì0‚Ç½0öõìóû&Çae¥:9#t<İd#çº¹1v÷µœ*ëq/£ZìÖãşslèp„ä8yK\\¹©Lª1ød‡†o”+3¥õÆÈıõ«\'{?y)ÑœÛÿ›Ğƒr¾äºÑ´•]8üN%¡ÙW®Wvvápî‰É\râÊÎÅ.lÙ_r·°{‰É=âÊÏÉ.lÙy›û„Q­®üœìÂÑà ‰\råü-n¹Ù…-á\0³¤ÈµâÖQŠ]ØŠg%ECpûófqë(É.lÁ£Â=˜0¨ş)áØ­£4»°vOHç~G+rŒ|*®ü¡Ø…5ãÇ5¦Ç3ãğCïÊš]X3¦±\rß†·Å•[»°V?Jè´u~E\\¹µ°kÅ\0Ïp×ğMqeÖÄ.¬Uhc|&®¼Ú<+¤1WVm¾“õ¸ÿ¬ÑÓÒ7­Œ]oî¶kHæÆÈ$$scd’æ\Zƒ¸Ô†Á/}µ0‹h±î³İ-5½ ¹Ìà^8Ë‹Ë3{»v.’s|Ælµmã3ÈÜÃ°Aré›m·rLáŠhìø¹œäÊªÁ²cr\ZWV\rv\rOTqXƒĞ¸²†Æä›RëÂ¡qe\réé4]É1„+…Ğ¸²†ÔkÚ¹1òyMNÎaò:‡¹Â†\ZWÖP‚ÆÒ¥…g¹‡\ZWÖ^–àş^ÌP0DoìUBãÊ*ş^!w*—Â8…œ(ö\ZWVit#M’Z:-„Æ•UZ²ĞAØ­ ´Ğ¸²Jbú¨¤aru·¢’Ø]†pe•ÂD\0Ìœ<œ¬ÔÒ}¾vœeß%Y3?Y¦›ìO–!<şŒ§n¹\nÌşÇ4|—H‘Ğ£›‡<¹ŠÌÖÖN‘â™dßˆA\Z‚ğ\raßÈÃ\\å¦‚k¶C±]ÓNaà)ee?jê{]EÇ.tB±ì©áÄ°$Î¬³œĞ¥S>}æ›W_“]ô+®öm–7îGD_2ÜÙâÑ6îÍµ‚[¥¼Ø‰\0ªÏâ¾µ§%sÈJ½{İ³n%|²jíì°ıš:w§i=ÌdCïÅš~è©Ï®].ÇA‡kfËw(7ÆG°ş•½Á§ì0,Ì\rî6\\J‹um¨2g9l †¶-0¯Û ]1à}sy¨,kkÿd0±NÁ˜\0\0\0\0IEND®B`‚',0),(4,'CASACAS','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0c\0\0\0c\0\0\0;¾•\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\0IDATx^íİK¨}S\0Çñ‹<ÊÀ„„gLP\"(1!\"<I)â/1ğÈDÉcdè1`fh ”ˆ”’È#¼“7yÅï{İóï{çŞ½×k¯µ÷şÕ§şíÿ¹k¯³×9ûìÇZk¯5’åß_Éœ9XÎÜğ‰¸šÒb]‡Ëœ\\%·Écâ6Zn/ëÇds®<\'ßŠÛHC >×Ë¤ò|!nƒí{¡~ÇÊè²²áUq V?È¢îûKó¹ZÜmÍƒr€4™+ä~qo¬UÈíÒT.—ÏÅ½¡Öı&÷Jõ9P8ÁúIÜ‹ß…÷y¶T™#ÄU|ìN”ªr†|,®²Sp‘¾\rœ9¿/®’Sñ°Î’Áò¸ÊMÕGr¼\'D®BS÷‡»¦ù±3\Z¤È7d¨««­y]²†£¦©ÿXwõ¥\\)YÂîiÊ‡¯!8ÊJ~ØË™µ[YNœå.\\,¡ùP6—õ¸õå”ôÄS·’¸—sû¸P¾[wNIÂE¿×š¸ÙÄÁÁéR\"¬ïŠ«Oj·JT¸^êêë2DNîÃ»:¥Ä.2êjo‰û—ÊÑ2t¨ƒ«_Jt9ên•æ¾CÇ\'å&©)|Kø}¤n®Î)ğïîùº‚RùYöH­¡nÔÑÕ=Öór˜tNîÆˆş1+êèêB¯sœ½88:k%ÔÕ½‡X\\Û£e§¸Rá[×Jrî!:mNºÜ§{ià$¹C\\Ù[=#¼>¶¿Ó…âÊOaÇĞå2WO¿÷äd	\rİ\\¹»¹SbB©»+;Öe²2ô5u”BïCºM¹E~WnKLro±²á,4W\'ä7äH	ÉBÿWWnW\n×¤B“«18ŸyH¶….ñîR:óTRî¯Cë°Hì€UØ-…Ã¬œwğB6Ä~BWJW^¨˜]e®ÆxI–ì0‚Ç½0öõìóû&Çae¥:9#t<İd#çº¹1v÷µœ*ëq/£ZìÖãşslèp„ä8yK\\¹©Lª1ød‡†o”+3¥õÆÈıõ«\'{?y)ÑœÛÿ›Ğƒr¾äºÑ´•]8üN%¡ÙW®Wvvápî‰É\râÊÎÅ.lÙ_r·°{‰É=âÊÏÉ.lÙy›û„Q­®üœìÂÑà ‰\råü-n¹Ù…-á\0³¤ÈµâÖQŠ]ØŠg%ECpûófqë(É.lÁ£Â=˜0¨ş)áØ­£4»°vOHç~G+rŒ|*®ü¡Ø…5ãÇ5¦Ç3ãğCïÊš]X3¦±\rß†·Å•[»°V?Jè´u~E\\¹µ°kÅ\0Ïp×ğMqeÖÄ.¬Uhc|&®¼Ú<+¤1WVm¾“õ¸ÿ¬ÑÓÒ7­Œ]oî¶kHæÆÈ$$scd’æ\Zƒ¸Ô†Á/}µ0‹h±î³İ-5½ ¹Ìà^8Ë‹Ë3{»v.’s|Ælµmã3ÈÜÃ°Aré›m·rLáŠhìø¹œäÊªÁ²cr\ZWV\rv\rOTqXƒĞ¸²†Æä›RëÂ¡qe\réé4]É1„+…Ğ¸²†ÔkÚ¹1òyMNÎaò:‡¹Â†\ZWÖP‚ÆÒ¥…g¹‡\ZWÖ^–àş^ÌP0DoìUBãÊ*ş^!w*—Â8…œ(ö\ZWVit#M’Z:-„Æ•UZ²ĞAØ­ ´Ğ¸²Jbú¨¤aru·¢’Ø]†pe•ÂD\0Ìœ<œ¬ÔÒ}¾vœeß%Y3?Y¦›ìO–!<şŒ§n¹\nÌşÇ4|—H‘Ğ£›‡<¹ŠÌÖÖN‘â™dßˆA\Z‚ğ\raßÈÃ\\å¦‚k¶C±]ÓNaà)ee?jê{]EÇ.tB±ì©áÄ°$Î¬³œĞ¥S>}æ›W_“]ô+®öm–7îGD_2ÜÙâÑ6îÍµ‚[¥¼Ø‰\0ªÏâ¾µ§%sÈJ½{İ³n%|²jíì°ıš:w§i=ÌdCïÅš~è©Ï®].ÇA‡kfËw(7ÆG°ş•½Á§ì0,Ì\rî6\\J‹um¨2g9l †¶-0¯Û ]1à}sy¨,kkÿd0±NÁ˜\0\0\0\0IEND®B`‚',0);

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

insert  into `descuento`(`id`,`criterio`,`idProducto`,`nomProducto`,`idTipoDescuento`,`nomDescuento`,`fechaInicio`,`fechaFin`,`estado`) values (1,'PRODUCTO',4,'CHOMPA DE LANA',2,'DESCUENTO DE 10%','2015-09-07','2015-09-30',0),(2,'CATEGORIA',1,'SIN CATEGORIA',3,'DESCUENTO 02','2015-09-07','2015-09-29',0),(3,'PROVEEDOR',2147483647,'ITDECSA',1,'DESCUENTO NAVIDEÃ‘O','2015-09-07','2015-09-29',0);

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

insert  into `producto`(`id`,`nombre`,`detalle`,`imagen`,`precioCompra`,`precioVenta`,`idCategoria`,`stock`,`stockminimo`,`idUnidades`,`nroserie`,`idCaractFisicas`,`estado`,`promocion`) values (1,'CERA','CERA PARA VIDRIOS','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0X\0\0\0d\0\0\0-÷â\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\02IDATx^İİ°ìXğ»ßÚ¶mÛ¶mÛ¨µmÛ¶m£Ö¶mÛ{¾úš¼ÊËËL2ºwæuU×¾½ƒ$ÿôéş7N¦\'t‘üøã•utÀä¢‹.\nıõWåÿ:OşøãşÎ¯ë\0şüóÏÃwÜşùçŸÊ_:Cşûï¿ğÃ?„o¼1<óÌ3áï¿ÿï:€ÉN;í/ÂEu‚$à^vÙeaî¹çÇ|øé§Ÿâk]	ğK/½¶ß~ûğÕW_UşÒwòï¿ÿÆó¸öÚkÃ\"‹,†rÈ°òÊ+‡7ß|3ß•\0ÿı÷áˆ#guVøóÏ?+íùøãÃQG-wè¡‡===aÔQG\r÷İw_¿+æyä‘°ñÆ‡ç{®O\\…ûŞ{ï…}÷İ7L0Ááÿû_7ÑsÏ=7üşûïİ	0@YÎŞ{ï8à€ğÍ7ßT^i¿°ÊÏ>û,Ü~ûíaıõ×£6ZdAú—.³Ì21 w%À„u*K-µT¸õÖ[ÛÎ*ÜÔo¿ı6<øàƒa·İvÓL3M?—§£Œ2JôÃ]0Kzíµ×Âæ›ovŞyçhÑíÇùùçŸc`=úè£Ã,³ÌYÕ¦ÕëÜX×LP¡O<1Ì?ÿü1Š#ù­Öj…`>úh8ì°ÃÂJ+­Fyä\\0«é…^Øİ\0#óO<ñDXqÅcÀ{çwš\nxÜÌ—_~¿ç†n{î¹g¤^yà•Q«««&_|ñEØvÛm£O¼à‚¢åÕ#n’ É_²VASğšuÖYÃC‘\\Yüñ»à_ı5»™fš)¬¹æš‘:•™×c=ÙÀ	\'œWÀb‹-YAX\rkåx]+\\Âë¯¿³§©¦š*ƒ¦Z‚;Ÿzê©añÅsÌ1G˜xâ‰Ã°Ã›P³Z9fW‹ÌN8á„aİu×\rŸ~úiå•şE¼ûî»Ã:ë¬&Ÿ|ò0Ø`ƒåƒÒJ­»«EpzàÂSL&™d’½óDnÉ%—#8b!Íj™VİõòöÛo‡µ×^;7Üp1z³ê´<ôĞCaÙe—¯÷\Z¸´rü®—_~ù%œsÎ9‘«rçw^å•ùìşûïÆ{ìŞ—VÎ¡ëE°»ç{ÂDM†\Zj¨°Ç{„ß~û­ßßç›o¾0øàƒçƒĞN­œß@!„õÖ[/òW\rcÙ*[“M6Y>\0íÖÊ¹\r¢vöÙgGv0Î8ã„3Î8#¼õÖ[a‡vˆ5Ú\\\0\ZP+¡ôj¨œÛ@#×_}LğÚ6Ú(\\qÅ1•V É NU%³\ZF\Zi¤B>Şxã\r|\0¿úê«aÕUW?í´ÓÆzÂ‚.˜@½:ÖXcÅloÆg,uÃvÜqÇ`íÈ#Œ8î¸ã†UVY%½øzuôÑG+¬°B¤ze«j*|ÀXƒDc„Fˆq¬bŒ1Æƒ:h.e”ÿŞd“MÂAoV¶=TM_xá…ŞX@?KÕË¤B¹eídüñpóÍ7‡»îº+<ıôÓáÅ_ï¾ûnøî»ïbQGª›ÌÔU1´Œ›\0òğÃßEóyş\\û–[n	Ë-·\\éïáF>úè£öÌš\0\n˜¯¿ş:Ö€§r5İtÓÅ”g¥|\ZE±hòÿ^+¬Ô”(•u\Z¤É“½°í¶Û®ßÅª( e‘z;ŞË/¿f=«ÀçPÄ¶\0ì¢Y¨æ Ë<ùä“kö¯\ZQ7ÇEãºÙ´˜>ğÀãû€â†•]ÖŞ?Ì0Ã„%–X\"¶‰¬ ôÍ*£VŒä†qµ`<TÕÒ¾ôÒKcey\'Ñ\n†¥¨ˆ“7×¬B=7•Å¢v\níV·ôşûï‡]wİµcHÔJY}õÕcmÄÊj	Àî”+jlH•wğV+@¶Ùf›¸RÒâFãÃ3Ì0CîçÒÊ²Yœµé¦›FÿÍ¥w¿ıö«ÛwãÇbÄÒ4ÀüŒ»uøá‡ÇeÕl›¥µ:Döl›È\r8W[mµÜÏQ–†nM=õÔ‘! T¬–{{ã7¢[Tä}¶šZhœ¹9ßC\ZØE6×\\sMØl³ÍÚê\nò@I:œKSç£“÷³T\n	º…h7%m&E@cÉ°=¸3Ï<3ßD\ZØr—=ôĞ0Ûl³µ<€•Qş—¿ÌúßDt‡Y!@½ŸµjŒê³zÃ*|ğA?Úg@ÀÔğä²Ç+Rlg­µÖ\n¯¼òJ?ë%uìîèğ}H|=Ô¥•ÊI‰”\'–ûÁÜ¯È£.°Ï>ûDüÖ>ª%ëv(ÈgU¤0àï­.3-uìÃ7İtSX~ùåã‰—¥>µT€™~úéãÅá¹š—Ô1$ŠäyÇÙ·Új«ª‰C\0šŞ›÷»!Vœ`œHâvß}÷8À×hüŒh÷»QYN^\Z`QÑ0†%f	ÕKÜ½ßsÌ1ã<™¶AjVæ{]¨Èıá‡FUÛµdO9å”H•¼WKhæ™gîùı½š|ŒaöÙgïw¸q°ÿvÚi±VÑL‰{$•EÅ¥¬”q‚ØÄ§•UVº°R€œ~úéáùçŸï7^|òÉ\'ÑwšªøÕW_]ye@áĞÆ4e4jª}äzdZÍÖˆ‹5HëóÀ%…\0³éíB-”{jÊZ¥·Nà¸ã‹Ö”pÃfÅÅH½i5±TQ5n\'9\'.càêÌO¸¦jã§µ”Ñ¨®m¸á†qÀÏ\r«&5V”1®	$Q2ï`yŠ²è°üÍa}!Æ¡øóä¼€mè„uÓûï¿?®««LL¬¨š0nº³šå&R`€Šá„õL½ Cü«‘$Ñ:ëô{S²\0›ÂdqÉ6+àp;²¾]vÙ%&J#é>S×nbHÀå¯ÕšWSæÚªììƒˆm€Õ”Kprü¬Q¦ô^±¾’,À’¼9»¯Ã\nC÷|òÉpÛm·EëTG1„K@MÅFS¦dšH.À(Îå—_óó²<3nb\0EË¦·$°Ìïºë®«ê²œ·×d¨ÒÌ\0ğ\nX@md5\0°ƒÈFÖXcÒ~WÎÏŸa}é²’Xl`8ÙÚE;e\0€ñC|Q”,]õ©dG\"i\'K²\0£˜fˆkEıVK\0óM÷Ş{o˜wŞyK+šzop=’˜\ZBé3€åïòõ2®AF†¬kİtšå&ÒQ\0sâè‡l-}ByŠŠaRÛN	hyÒQ\0ëğâxE©0²-¨%„½“%0Ftşùç÷>À–¸_™	˜I\'4Ö¸“N—,À}Æ\"¸E”¢Â¹ª“éE4®$0ã0wQ34¼—ÑzŠjÖöÖ>Iƒ™§Æóe5Ê\Z²’x®¹æŠq&*û·ÕxS˜&1Æ·ì­Y‰\0ëım_R–:r%İ\"Rv;4“kPkP|ªììá‡z/¼p,Ì§Ûó˜”t¹Y‰\0›cH¾¸š¢eÊ­*9¶[,o\0/¹†\r6Ø ‚Îk7±Òj…,•µX éë\0ÒÈ;H¢¢¯æ&?İ-=2#ZÉuØ§¡†Ì×\Z.©Å÷%Zúl\n@ÍHX).ï ‰¢fÚ\"\n9İ\"h§‘-Vš\\GºeÄX4Ò×™V\0«ıÚ°ØŒôà²yH+ÿ«xŞM\"ÃTL×»s\rü«òkB/¦Šöm`Uf+šÉT{(ïËÓjP£Ù;ÙÛ¢Ã«Y\\ƒ¢9œ´ÕıwÑE­™Xq!üv3µíT&ïËÓŠŞ´‚²ô–°8İ%×ä\ZüJ²O…-±§V·†Õä«Õû+’øĞˆœ/O«V‰Q¤nBçbÎ9çŒç/†”‘D$ËĞÚZµF¾ŒOÉnQ»F¥g‹-¶Èıò´ê6Òfï+AÃLyÚFàüµ½=öØş,Ğ€“Td¯7QìI›ÉN¥F¥\'Í«©á¾l«“…1pÉù«o³èl\rBÊ_k6“ÀB¿4*=æËò¾<­[n¹eG—%³\"35ÄçÜY¡tY2•eâOÑğ	*§	Ú¨ô”™n1°ÑM¢®Ì¤á²\0²o#+e\06#,AiTz’©¥İdÁ\\™\'Q¡_–¸@g2)¯2VÖ‚=uªQé)3îOöf\rµÑe‘u:oAÎ¿ÕòÄÀa‘æB\r	6*=eÊ”üYv\'O\'\nk?›IsàX:yï5½YÄ\"Ô2®ºêªÊ§ê—+¯¼2÷ËÓ*HTtî$10sÌ1ÇD`dafŒ«kğ`#SmçÁ–TŞ—§Õ¨şwŞYùHç\n¦°ôÒKÇRcÂ}Õ}ó„¯¶• Öv$“kæá£=rò¼/O«b<âŞÉ¢ËrÉ%—ÄÁ=–\'ûÌ£f‰p†ÉY{Ş5Ó¤ÑLë¨;Èûò´ºËîv\'‹92İni±â”™Zc³e«iêÆÕnR‰õà\"&á¤İÉ²OÕëmÁpõ	j‚›6QÑ¹ªCèÒä]/õ=8t3Y‰\0+Lç$Q>Í({â:Q4t»Yœ\rÜ¶ñÍlxcº—U\0›.µ= ‰\0µÏ;HZ\rŠĞÖ“ãÑ-	CĞ¨,:G3¾éVRú.[šñ¿$lG*yJ”›Ğ•5IÙ)Â7*£ÕùÙ\n¦\\ä3efEÛdJ®¦Y‰\0søZByJ«¹ˆF!Û.Äì~Òœtn6¶›ájÕ5šw‰ª¢™ynV\"Àü[dÅªÿ¶‹\Z¥ïëÚ„ã›BO™ ^b¿E-ÑúÑÅÀ2øØ¼k¤¨[+Ü‰\0[RòuLÉ;`ZEÖC9d€Gô¶°Ô‹/¾85ÇŸZ®Ák_Yæ	€­U¼?L´¹±Z‘5Qé£âè«\"<ëõ$É„Æ¥~a‘µi×¹-ª±l\rÒVQÒ~\0sòvSëyN«‰‘#å¾\":ÔÑzßk¯½âS¯íGN?> O°\nÖîıEã¹Ü 1ŞVO?€‰W\\®ÕiMÈ£BvQÔnµ(ÒH*<t®¨Ê(C&Æ 0¼kI”õr9ZI­º¦ş\0Ğ°²OÊ“|Èÿ{ó‡ô´ƒ”#­ ¢F¬ë‘((·Öªš%ê‚E+¢é`ÂWÙ4ÍWÕŠ´‰ÚÍ®›t´KXŠ%Óå.²0à²D#©µF¤u­vò?ûì³•oh\0°Oš†EÙ‰â•j\\L»Ü…ï„W×ÅA¿£º–wÎYM6)¶:¦\00ìÚDà‹y¢~‚ÆóspÑVŸ¤š®ój\r»¹V’±U£e,—ªn½õÖ…<ºÉ˜Xº±’wRYµÄü\\‚Ga©Ã¶Ê)vK‚<*«Vá›K\0‚”_ÂJ†şŠTÍW‘Ş³%Ú!Uf\r¸ e¦Ğ“wryÊw[Æ‚Ÿ*W3Ù›d££˜ç~ü…ÎjÖ6¤—‰TÂ1Ï<óD–Ñ®Ì´*À8¶ké*ô´ZrÁà9ê~D´‘Ç\Zpª|²/–™€÷J6¬(ÌÈ2Ëº4ïÃ‹5EÛ9V`\"`(z^NÙe—(È7óæ»¬ˆ2ş˜nŠÊ˜à–WŒğÜ‡“N:)²\n…²9Q=;#¹eŸûĞ¨LXŠ¥ª%STÊ*K´\'ì	<† ¹-~3ïâÜVH¯sp²,~^i’Å6ò.­\"ç¡ÒNpI)€‰è,ç×9¨÷‘ƒĞ2DŸ•-©#ø-õôËp´=.²5OÑ³w\Z—5¾Å_Ê %\rej&yjZÛáÓÛåwÓR\Z`Â’E[–Xöqyêsj‚Œ¥ÍÂ§œrÊHô)nt0nI†å½eıkú¬®‡yèŞÜÀ^ÀDn/Cò»–ŠÒµÚŞ n¦ ‹º	¸j½.©`biy4¸ÁY\\­á¾TVo¶ÌŠãz¸¹Ş—4p\"–š¬	³¸¨Ø[ÊjùjãÉ•Ôš‘h§40Áìèñ,£O~)¥|:nÂ•Séë`VMš8Y—¶È¯…SOö×\n•òz˜ÎíÑ\\x´›ß×Ò2€	KÁ]H,XQüáĞ@Z¥¨Ÿ3ág%&qoûÚjÒR€´‹ä£eÊ€êém­Í(¬yé±æzƒZWX+ºÀ­–¶\0œ`»p`•}ê©§â3\'lQ•‰å˜§\0•Ø`…ÈÂ€êû;ÅZ”ş™>SXhôI\0\0\0\0IEND®B`‚',52.00,0.00,1,22,5,1,'7751851559096',1,0,0),(2,'MESAS','DAS','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0B\0\0\0d\0\0\02¡æÃ\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Á\0\0Á¸‘kí\0\0CşIDATx^»wX•y²-¼7QÄ’“€Š˜EÌD1 ˜ssÀ€9`Î9!DED	’Í9v·¦{úÌœ{ïsîë[õÛl¤{æœïşQÏ›C­Zµªêe£Ñö=ˆ?Û~eš>h‡j—ÿƒÅñÜ:Ûû—mŞ«Ï>hzgqı 4½x¿¿¯39G÷mŸ6–×öä¾ZÓŠõàşz¦‰á9b=øl1®k{î©5^Ç}êºÚuı¹1ÜÅånµü úøÓö¿uş²z( êë€Ğöæ3şÕ;W¿O=(ÚXî¯gš<^gúãû`G\'{íW&Ûz«;OLÀ¬]j´ı ¾È²ÿj‡ÿû÷ ı¿]+¦;GÓOgj]îÑ›/Ù‹Ô÷Õ3m,Ï­Œì¯[±°n÷S×ÕE€â>ƒşGQß´ıÄt ¨ª]ÿïL€ÓÛ7‡ë›ÎIƒ~‡`ØŸëµ×©kÿò¼±Úkõ€(‡$½ş)§i½×€nıOÖ[Î©¥~ºj‡–¦pL™Á€ÃÊ´ıÑxÃz/¦é¯³úûÔyÊŞ‡KqXgµàô\'ú¼º/×¨gıOÔ=W·Íû×«{¦8£\0§øÒµ¦‰Ö‡çÔí\0j÷Ótï ¹æ¯AªYL€øö2¢ÿ±ZÇt/\"ÛbrL\0Ó›ş\\“dyB-õ×éìÛ1åtÿSµÏù„vÀÉ¹ïŸ·õL­ßú¦;¦ÀªÛÖ?W÷~:_¸Õî×QkêÁu/ı-Zjÿ_ìÛËÖ¾x­C:\'¿û¯×ş¶>€ÏPÛ\'•iª3µÍ{jÉ=¾§wô›éÔmÿéıiºwúö>ºÀı›ë4ƒ¿=\\ÿ:Ó½ìŸñÜ¿¯üçs´ƒøpeúí3t†6„Ó‡Áà³ßÎxN#ûÄêÎ|Z×ÖßO@Óƒ_ß9:R?1ƒ|Fı}ÿö4ıƒõª—«uZ#/§¶¹ü«q£ÊÎÕ;ÍĞÿjC.Á`èyh‡Ğyš:w(¯Â%É9Úar-‰éŸSïıÔ;Ö‹F\'¾Åmygu>ï3èB-èº÷Tçàşú¬Të4õ@yıCåÊj·ÿâŒvØÅ?o‹Cµûëlèeh†Ñâ¯üÅ²itXLî#6œ×Çóyj÷¬5¤>(Z_¸¾‰ÓƒèYS·=„`p]´ºN–²­Î¡Ou×I#/ w@9\'èM^şß:TÏôç—mq”6üšÎFĞ®×³›ßÖåM›ÀëFğ\Ze¼ŞêF şÄ½)&Ñ!qV¿/ûêL®ã’ûuşé¯•óÅè¯\0#Vß)I½CÃ¯Ö:Äeİö_ÖkM;\"‡Î‰éœÕ&æB“˜§³¤[´Ûÿ­$éÎ×á½Ôıä¾rÿúÀ[ê³©¤o&çÔš\\Ã¥v÷ë¯S×r¿ºNT-ÈêaúHÆë^@\0Ğà¸şoÍ áÏ¡¸Åm—Wg‰·¡y—NŞF–ÉÔùÚ‘EĞŒ*€fô=hÆ=€6¥FŞ€q·GñXÊ\r˜$çê®—{	˜¬zy®œleõøgã1²K› Tm0õŒÓõWS@Ô9/•È\n…%Rt .Zµ¦\0âq‚ /­®³|µÔ&Ñ¹‘÷ M.€Ñ¨BŒºO\0J`$–Âõ¤ûğŸÿ#Ë`’R\n‹‘`8Š×&òÜz@Èó\r¾=SˆLíö·ı$=³Hİ¶şü1}ZêNªE]ÿpÒù[Tô Ô!û€¼°r˜‰%=`ôÒyqœùÉŒôèr˜yã”|XŒ+B@bÅÄò6NXâæŠ†Ê`8¦†É÷aL@’ó¿1ŠÏ0HÈ\'8—ÏTÏe\0ş\'ÓŸ£{×ZPë™ŞŸ:A d)\0(Ôy¡ ÖYyx µVÇ€D‰i.\0$\0švd‰2C¨n8ª&£Árt)ÌSKÑ(­¦î½ùÀ†°q\n†cû0¸xtƒsd\'UÂ‚`4H$cF“)‘¦pÉõ¬ZÓ¸ûÿcd\"—\n¼Úõ?Y- 5ä¡AĞ¯¥¥D¢îÊiåÅT´d;K\"‘QO*&\0e:_Ã¤2˜\'WÂlâ[Úc´›U€)«2°bË^L]´qC’¡1m+›öˆƒ†“£åØŒ­‚y\nL.†Q2·“\\¹?ÁMà’f0âÏ¦ßÿÍ$8ò^ MÖGp)&z¤ö`ÙVàÖ.¿E]€øK´iBsÉw}ÎŒ”cº”úk’KuÆèkS* ËTH}Ë´pNÍ‡[§¾IBÊ¤ÙˆgÏ@Ä/ÿ8´rÁ¬ëá<ş!šL|„æ©5h8®¦R¦”ar9´£Ê•–h“xš€£\0J,ş2¢JY&û°d¯b³€Ç¥–9©Ô]„NœW¹Îƒ¤¨˜#¤T]QÇÄ¨j‹úëÍp\\5LÓªa<é\ZLz‹ãÑ626®A0wğ‚q3G4°†ÆÈ\ZF–è<¾=`3&öSk`5µVk`AV™#³R*ùüjŒ®R€èXW¼Xm:şÉjÓ›f¤¯U¦?‡ë‰¼W\"ï‘ÀàÉR3šÎ‹cÊÄY\0¢òzuë¥Ê4)<&Æ}šFh£F¯„É„\'\n³iÏÑbşsØt€†6~hfãÃV`îìû6hîÜ.î]ajáğş3``âÿy`7ã)ZL}ŠÆÑ|b5ŒR	Á5dÊèŞEŞAÿNtPX8ê¯¦cQpê<®+Ó£”\0ˆ¬Ò-\rGKt%Òá\"İ‰¼@4[¡œÔŒá…4İ:_f,oH3Çıãj`úFŸÀdÒ4šTæ“«Ñ|égFß¦.~hàŞæ®]`æÒÍì½ÑØª5m;ÀÓ³#ì\\¢ 5²€©U{8õÏ€İô×h>«-§¼€ÙäJ˜N¨Q 0e´c¸$(jïbÀmÍ8y:.ëòLOÕVûî\ZIÛ*ìª;Îeí¶F3†‘¥sêäq‘<7`44©•ĞÊKp]ošÔjhùrú¥!«ñd2aê4˜Nm6,}·¹OÑÌ3–NĞÈÁÃÑ¸•+L,aÑÀM\Z:ÃPÛ¾şı`hØÆš–0hä×•Ÿ`7û%ïSÍû=U)f:¡\nÆ*uáûJ ”284µÍ\0şÉjA ê©ŒëÚ1L=.5Ú‰<iŸÈSx`w¦ñ¢)ÕĞLæEŒ®á”\ZM}¬–Ú)a@§õKãaæc˜1Št¾åü*Ø.y\rŸu`Õ’)ÑÂ\Z+h´‚™\rLMlĞÄÊfF-`ÕĞöv¾04°‚VCÓZÀ&jl–¿…ã’h>÷\ZñşfS«aÂ÷0â{L¤¥UÀPŞ—ï­ßo<ME­ÒEĞ4ÜÖ¦ÒGP]\0%À\ZîSÁÿ˜Æ}FÓyáÔrM«€ñ,.gñé\\ŸÉ›Îdf1\Z³ù\"sy.ÿjfójĞ`Şc4ZôVKŸ¡Ù²g°[ómä!ªÿhXX´ íLé¬5RëZØÛt€]+4oá	s–Rc²CcĞZC´[öN«¨1‹_£µ¦Á›@Ì`ô¦3§Ñ)1d(&šÄã“+j­J·M6Ip%˜:£ÓiOÔR¶µ“Ø´gj©1›óbsÊĞp6ë?f>“%lmn`?À¥ù<R•Ñ6_P‹EU0WÆí\n4XX¦‹Ÿ¢)h¹ò%<Ö>…÷ÖWpğî›ÖŞĞ4q€¦3L,[ÁÌ¬9E©L´fphê_.°´h†\r[ shìa¦!+ú/‡ÛÚ·pYÂôZT&KÙŒñyFóØ¡Î¦£|7}€Œg2@4Igº`Ötúão6®=×p®L·®i¼°u6¿–óYÂ”Ãj×—TÖYã%Ü·´Í––+k²¨ÍW Éò\nØ.¯„Ãºj¸g<F›ÌWh¿ş\Z˜·‰M;X·…¡¥3£mÁÔhIf4…‰Æ-\ZØÀÉÎ,›ÁÌ¤Œ\Z“)dõ¢aónh»÷#\\Ö½€ãr2cé4]XË¹à›Ï“àT¨\0™Í-SfÊ`Šé÷›2€:c_SgÜÍcbs©=4“9l2¢Uz1TëtÙ,ãvú:G[YëÜÇe«ÕE°[U„VkyŞª‡°¡É>ëuà¼¾î›*ÑvK%üw<SÄXx‡Œ†[pZû±\"8±D6Q:add	ëÎh`ØfájKĞØ[	\Z0FR©!ÜÆïƒWæc¸¯¯‚ãÚ2¾Ç#´H\'øéĞdI	UÊà=R«o–¨ız³\\TQk(­şÍ*ê–\Z÷Up]‘gšëšûp_÷\0ëï£í†ûjé²î>÷óœµù|).3\nà²şÏ+Tæ¹!ş›ŠĞaK	ºl/GäaÒ¯qGX·‰€]—A°ñ‡¦¡-L\Z;ÃœÂiÑ¨\Z7qFÃF.pw÷ƒGSægc8z„¨êad`#MRÕ¡ûÂgk1Ü3Â~ÁßÀ^cu!ô€‚Z¨ÌzéŸÍ&ı>Z-côÆ@³RØ®(E«å%´Gh¹¼TG€¥¬šş™y CAW°17ÜFÇuè¸é>ü¶¢ÍÆBÄe^Ç ·Ñ~Ó=tÛ˜‹ tã-LÙ•ƒ¡{n!lg	zí+AlV©rÄÑ»œ½ÂĞ„}„¦EĞ¨LÌmm#1-Íanf‹F­\r™.\rĞ94\n¦\Z¦†ÖÂIàìº`ê‰rl:skOÜÁ²Ã¹XuèÆï¹„Ñ{®£ÇÆëè¸æ6¼ÖäÂcuZ¯fV2h·àºšZS7Ğ™As#s=3\náµ¶\0mÖİƒçÚp!£½2Já´$XÏ^jô®k´ı¢·ÜDÌÖ\\ôØ™‹Ñn`ØÎ[c+OßGÚŞk|ğ5Äì¼‡ØmÙÜ”yñ>æ¼ƒ‘Ûó0ôÀÄ)Gß]w)x6pnûÎœ\'ÚÂ¥} <ıºÂ¨QKX²ZØ»úÃË;)Cµ·¥~X£]ğ0¦„ˆ¦˜FvØš]ƒGó°ôè}$f\\ÄP+fÕ5ô^Áë.aàª3‘‘Aë²Ñsm6ÂÖäÀƒ´ş6:¬ÏƒÆ-²•Û§Ó–´Ë¸ÿõwÑ1óÚmº_²Ù/ƒF¦kfï¾†)‡ï`ôŞ[˜}<ÛİBúş‹Hßs»¯ mõ1¬9zsåaDæ%Ì9S‰]9ù2÷úÌ?%Gò°’Q›}ä.¦|ˆ7¤&;¡²E[Ø·†qso4qlÏôp„µk\'¸xùÃÉµLš¸qa\Z›Â©]4æo;ÆòÙ”:Ák5Ğ;a&‘ûo\"eÛuİ”ƒî Ç†lDm¸ŠŒD„ˆŒ«ˆÜt¡›n\"zıu„¯½Šî™¹ˆÚrİ·İCÍ·¹á&ún+@Ìî¿‹ğÌ[ˆÈÌGøæ»ŠÙšÔg0fÕ1¬<t™§ocìª³¾ö4/:‰”µÇá3v\'ÆdœAúÁl¬=y[öœCŸ…ûĞqì~Ìß}ÛOçâ\0;t­\n+±ìH6LİY\n#zè(øtŒ_Ptï3>Ápkİ	Aaqhí\nŸÎİé´Ì-]Tÿ°ú§_3®kí¦–fÃšs1÷P&gåaÂ.$+s³²1yËiLÜ|7gcÈ†µá¦m¹„1›/bô–‹ÚŞƒa™ÙH;T€>ksÑjğFD,<€Ù\'Ñk]úm¼‰!ÛïcàÖÛĞ]ÍÈÎ9uç.`ÆÎsè6å‚¦Fÿ…Çl;}›_¡å’¦W0ÏÌÛzÛ.>@|úALÚ~ñ+ÎãAØwõc‹ÖŒhSôOLCLl<‚ºBbÂDø‡EÃ·}¢Ğ®cxùEÁÈ´!šÚ¸ÃĞŠ,`ç¹õì8°İfbÒ·*Şâø½rd¿‹3·áè»Y†U‡/bsôÖ¤ï=‹ñKcıÁ+Ø—}.Ü&‹.ÃoÌ6ÄÎ8¢a÷İ0^‰®\"rúq4é™«Ø-hÒg\'ìûdAã3æ8F‘rS3/¢}ò4².ÉûÑmò>LØx+öœÄ”WĞsşŒ_w~ãv#~Õ9,>pëO]Áîs¼vÍiì=w\\‚Oğ •ë&Z4³öÇÀ„Qˆ„‘Ã“1`pú\r†¨Èè\Zk§¶ªw°qğƒkÛL™·.)¼M˜±#—öÈÊ©À‘u!Y×J°(‹A8z	»N33Obõ+‘é;,ã\\‡ìBûø-X|ø2fî¹\r»¸°êµsw nÁ9ØõÙË¸ oŞ£Á¢çZ¸>ï› ±´ûï€y-0ŠÙÃ›`·Fòçõûa½F}÷ÂdàAXÆBã¡{t?¬è‘mß0î·fƒN¢YÂ)XÄF“À	Jù\r4-ĞĞ±¶/FÏC0v\\\Zâ“1lØôê5öî`ãØ\rH%1§Y!$6Mí1tü\\VWÑÍ»¯@TÚN$/;‡ÖƒVÃ+i+:NÈBÓz\\EÚ†‹è>f+¦m?‡íçï#$u7¬c7Ã{Ø.Œ\\}ãÖÄ½Šç¿áìì…&pìú¯ÀšÓeØ|ı¶]Î##7Â0z+ÌzfÂ4f;é³F‘`BÚAÓ¸h14‹@í€iL4áPÔ4n\Z÷ÚŒ&Ñ[Ğ´ï&XõŞ\0‹Ømh—…ı²ØHj4ƒmàh8öšÁu\n Ë§´Ñ2Xi4Æ1f²*©f†ò¡Æ\n¦ì\Z¶‡™±3OÍ„‘V®Ñ iøbtLÙ…IĞ!q=–¿‹]W`Ñş<djNŞté‡®#ıX.âfíÆ¬­çà94öqéHÙˆ€‘™X~2s÷ä eå¸ä,:Û…™óà3l¢¦@Ò’óĞ˜GmDã˜µh³Íº¯uÔ\n´è±\n-c×¡EÌXw_›èõhÃmîoÌs,ÂÖÁ\"b=¬z®FË^kĞ¼Ç:Òp=\\ûn€û`²JkÀKÛcà3tš¶t‚‰u5wciÔ¨^ÂÎÉ‹M•4P`hÜÍ¬¬açì–NÁğ0‡`YBkl†FMĞiâNt¹³öP¯bÕÑ[è3ûÆl¸„ø%g¸ä$BG®EüÂSğê³N}Ò)öG˜²}Â(Šş ù;Ñmô6ø­A÷éG´ò4BÆ@ÜŒÃH\\z\Z»èåp]†6¼Gl:<˜C®DÓ1v)\\{­†SÏÅpæ~wîo»mú®€gïeê<¯ŞkàÕo\r¼û®‚OŸ•pç}:ÙÉJ`B\ráĞe|¯ãÀe‡f= ±>@h\Z 2º/á4jHĞ$5È’&½aŞÄş½§¨ëÍ¹OcÚ=§nÇ…ÊØqı1–g;?h=8ˆ¨‰[à“°·aÊÎ››´CV¢iÄ<4é6‡¯W×Ê$;Xı®ÂqÀR§DŸYY8Wü·«_àÌ=å1‹ÑºW:ZÇ,‚;nÓsÚõYß>‹áÕk!ì£WÃ¾{:œ{.‚[ìB¸“^mã–Á·ßxÇ-„oÜøÅÍGè°Mğî³¯¤ƒ\ZÁ£ë ´¸Z–G{Ÿ>°°v£ÓZ:m\n#ã¬ò\rB[gvŸ\rabá„Î¡pó\'h¼Æçi,Ú`å‘‡¼ğ¢§€gÿ¥ğO\\—p°¶İç¢ãˆ•N^ ä­h²]Fí‡¹_*zMŞ‹˜Ômê\ZÁk`Ùy2†±÷qŒ\\ŠV!p,ÿâ&gb_N	4¶=–ÒÙ%°‹\\»î‹aºÍxRÓ°…h¾-‚À6b>ì¢æÂ>j!£æÃ!rœ£ MÜ\"´éµ­\"fÃØg\nf³½6óK¨úZÎ^0öŸÅ¨ÚP;ÁÔÚ“2mi©ßM-í©\r`nŞ‚ÃÏkŞ-»Á¼M˜\ZY uÏeÊIß„]Œözô›{ˆà®†ë€Õ°é¹\0&fÂ©Çj„¥f vÖ^¦r:\\bfÁ£ß\"„ÚÇğ)ˆHİßá°\"K¼ûÎ‡Sô\\Å¦”U§˜Ní¶\Z7:å½®¤“gÏ%pê¾\0^qËáFÇC“H»Ş³0h)¼zÌ…wïtøpÙ¦×<4è0İæ@Û~4^É¬Ã©Ğ´M…¡ÿx“şZj–´oÕe(\Z»ö‚™Es˜5¥ÓLV„Ä˜À4ä>.©	F¦°sïO:ÛÑ/\Z‚¦Á™té-¹¿6!«`:6LÛæ!K0qıa¤®>…Èäåè9q?Â™©O¡÷é1fdÁ7i%Óc+Ö½ë€)p¦¿va³XŠs)˜ı¥œ>ÃgÂ-lZGÌ€kèTx†¦¢mäT´‰ƒÖQsàJxÄX³Ñ¶Ç,Fh:L|§Ã°s\Z,§Â¨íD´@&L…Aû4v%èX##s4çxmÑ9	>±R9La`a¹Mu¬ Fh„!\r¸ÏLWQØDëí‹ÉkÎÁ¸ı0X…Ì†i§Ih1îıVÁ t&$›F,€i Ÿå™Ê*³1Ó6 ]ü\nìÈ)…[ôLêÕ\\ÌØÁ¹häÄ¤ìÀ‰üJ%eÀ±÷R´›ƒ¥§\nÑ›:á@‘oÆB ñŠ¨IğˆLƒwih7í{ÍA»˜Ùè7qsà×c¼Â\'Ã=|\Zì#§Á°ıd˜NCsn‡$o„Uç•:ÍÃfÃ¤Ëx4é2-Zu}¯©°!ƒÑÊÑ)b+6`i$IC2AÃÊ!¥U>ÊÈ(×ÖnãàÚc1Œ¼áÕŸ\"=d\rSx\Z†.¡fÍãË¯…e—4,¢³)ëÖ|$±^vøZñİb¦B{\nuÔ¸mˆIÛÿ„íğIÚ\r³ ÅhšV‘«àÒoZ‘YÖ½Ö³¡ê6öÁSà2\r.4É)Ç°Ép˜\n—ÈIp	ÏîÓ™\Z³àÖ}\Z+Åt8…ÍDË.©hè?Í»NƒÆe8¬§“^Ãy¯9Hœ±\r»€±×d‚@ÍğOC\'o¶Şnhhë	có¦01±„UKÉç;ùpcÔÆ-aÜÌ—ÙGoV`àB6qîqè3eÚ^\nï!,×İç£yè|„¤lÆ•H]ÅQàT	6œ»…ë5/4bÂÇï„K¨[¯•:ë\0VÉGÔ´ıŒ>Á™…lµ[Ä,ƒmìŞ/v¬~\ZënãÑ¢ë8Ø¥Á¶Û8ØMGsæyË£Ğ¦\nŸCïd:6ºfo0~}æ A›d˜¶…a3v`Âš³°àº]0Ó+&\rö†ÂÌs(Lı¦Ã¨Ã4]\r;Åæ.Qê“èƒ¡)š{?âl©-ì`Ø¨\\[·…oL\"Vî½ˆyá6ëOŞDä¸ÕğèË—¦FÍßuwK!fäBÎ<…Tÿ2œ½[ÕazLGxÚLßqkNÜGt\ZÇ†^ëàÀŠ×˜ÌiÉşÇÀglÉ¬ ¹hÀ÷Ö´‰˜—P:3Ú‡eÀH<V“`2ö!£`Ù>	hÖeÌ¼ĞØG€š€†­GrÔîc·a0ó¦h: ¢gÂ# ?fm>ËÕïğàÙ¬>p\r¡şá0µmC]hDMadÁuõ‰ËFV­`ÒÈ\Zã¬ÃŒÌ3˜¹ö(FÏİJ\Z‡QkĞ¾ß2ì¹Z‚¼ªç¸^ø”ƒV6¢—Q·baæy´fz’½›O\\Càè,¶®ÔƒØ)›Ğ2ú6h‚&lƒqêZçiÔ´Éh>—)5Â·÷DXù\rG“tÖ}0|{ÍE¢mS×>hæ\nc—A0t€†tÜ¡\'4‰ĞØ€Æy …tB’VaÙşLcOïÛ#\ræ­ƒ4hüP¡#Æ¢kÊ\n¬èÍ¾Á†Œh¬Eé‚‘a3‚b	o¦ˆwÁ|*~ÿ´\rè?y+—\"21‡²q«ì	®—Uª(4¢İ/]uÂ¶lö\Z‡¯f:lg9ŸÏê2–1ËÑ0f*ÌÚMƒÿ°ì*#yÍXv£Ğû¥1•“ØgLBƒ®Óa<Z_îs‹œNƒ¡ÃÀ9pNCÔØÕ0ug×gO³ínÃõî0²ë‡æ~ñ°éÈáiîDY‚ ø¹è: \rm(´í(´c`ß1NÃ\'z\n\\Ã¥Ğ	päÌa>–éÑ”£ +¨	Z#V3v›\\šZ:ÃÜ¦+¼{¦aÉ®³X•u	±£Ò1mõ»]ó÷«q†ºÑkärÄLß…¾SwbáÁ»h¹şœ\'ÌºÌ@ØØ=X¸÷LÚÎE·ñG`ŞmºOÈÀ¬íç1ß\rF~\Z[SV·†!óĞ4tÌy]#–aM;æºË@FqzÛÄˆNFò‚->s¼£\' k¿98zM¤scàİ+Ş¤«s—$8Œ\"\0ãa×5Y‰§©o\"L<G ïxŒPÕÄÒo\ZuJ†%iÌš¨rij`£†N0³jÍÙƒ`%\Zc;hš´G4Yàš–s«€Épì‘Î¨®DPÂl$Îİ\rÇ©°pÿMT++œ»/…¹ë´šÉakL»²êœø…ØYnÁÀi[±ñì}D²zDPxı“98Æ¤S¿fÃ°İ8˜‡­ep\ZGÃÌ­?Ú÷\nßãÙçOSQî6p:ZG…_ï±ğˆ‰&Ş}ÑÈ££>ş}&ÁÆ,(ˆ&mÇÂ¨õv‚ñL¯±\n3ŸD4é8\Z-ºĞ8xµ¤îXy²mVšĞTè-[÷f§Ä}œ:Ù;šÙÃĞ>\rX\nç–ù°`ª6ë–†Å»r1qq².Üe?ö#V#hÌØ„Í‡M÷•ğ±–¦>yOÃì]WT—Ü1~#Ïİ†ÓE5X´ıb§îSÕË1,sÅc¬>t	r8KìE‡°\'§šÖ¡ãá?RÒ®S\"œC’ÈŠ	hé7€¢ØÛŒ€™ë X´J0aíCšû3Òm†Â²m\"m8Ö-@Ù—ÿ‹Ş7ÀÜ‡çµ¡t¦‘g<Zø&ÁÒ{4`lÔ\\•Iù[§u0Ìì‚Ù@¹ªÜ¨¡¬¼caÎó[²›´\n˜„¦©hÁª1jÉøÇ¥Á§ïbøYD`Ù½¶M†YÇ	œæaêö‹Øy¹gV\"<a®>|…û\"ÔO~ÀõÇÏ°ãJ!¢RuÏdvŸØ|æ.”TáfY\r.¬kŞ15ü‡À°U$u œQ\0»€xÖõ`NŒ¢Ï`4mOÁæ>ñhÙ>ËD4ô¦ö9w°Ñk°ùt>Ê?ş‚‚7?bÎ¦«pí·.ƒ1b>šúÆÃ“%O#¢hÂÛÌ‘i`~I0h#6^Z»N0²î3‡@2i8\Z´…æyÎhÄ¥f\"pÈLô·¦^I0r­k<¥­÷LAdÊVË)b”o¢]¯iX´õ.<,ÆµŠWH]…!³21kÃ)ìË~€9ÛrØwö_(ÀÕG¯qöÁ3¾^HóÈT«\0:ª\"¤±‰¦e,Üû¨H6ñH‚UëÁhì9¼è¼× Øµ§0¶†‰motŸ´\rÓ¶æ »ü*>ıŠÛÏ¿\"~æz¶él¤ì£¡uîËvIpgÕ	†©SWöl½“Ñ€éfì	cÇ`Úuf0üù²‡Ñ5~5\ZuLÁÊ×1hÚ.x…Qƒ|‡±<3HmYªM‡‰ğ’œ5.½Å±ktèÜ=\nü\0ÌŞzk\\ÇáÛØt=@Né[\\.¬ÁéûUØã\"†MÃÉ›Õ8™[‚åY©={(‡H˜:ö‚‰}\'\0ı”˜»€‰{OX·»C`ß…Õ£{1Ğ6‹P¬iBHİ•ƒ!+!6nİIÜ|ö‡óÃÔ¹\'´¶l È6—Şp„VãĞÒ#Œ¬pPÍ›9,3×hsôÖ4÷ƒ¥[8R—ÆÒ]GÙ´MC3Šlßáh5 „Ö¡XÆEå{NØŠ=ÙùÈ8vKöœÁñ›…¸Rü‹·\\áó+±ıb>g±1;…ÛNbí‘lì¹øaı\'#}ËYD™‚YÙª™±ù0Yê…>qpñï‡¶½Ñ¬íPØùƒµ{wõL€MŠ\\³`ÙÆé\0hÆ9„-¶ïP¸DODrÆyÄ¯<‰	Û¯ajÖ\rŒYÍÒw²\0+ŞeÛ\Z£Ø£±‰€SP–_ë£–>¬Û±háßNa0t…‘C0lüzã4©z\"¯Tõ4Mı\'1c¨UƒÙ»#úğºaˆ¿wØNŸÍ­Dvşc¬Øz=f!|Ø\\¸EŸI«±şôì ²²¿ÇJ¸\r{N`J\'À+t2ÕãR1\'ó,–ìÎfgÙ!íºÅ¡CĞPÄMEP\\úOFx#`ÒwcLgZÃ¹Óp´òç(Øø@ÒÒ#´ô0,:‚3÷`ÀâCè5ç’ÖÅ¸ç0tş6]q0têû€¾ìAú¢U;²Äº|X–\rœB`âÁûE°B«}0sİ.˜¸œú‘\0s¾´4{\ZÇ>ìh¹¤Ø´›ƒ-gòq1¿”N²rõFëd¸D¤±êÍbOF›ˆ1˜°ø\0ï>éÃ?vücRáËæ®9û[–u`uİ°õô-d¾\0M^ƒ7aİ‡!¼ïpxwåØÔ|aØ¸›úc¬Öª\\:åàÚµ7¼É Èät$­>ƒ²;s¢¦ìFpêVLßáL‘1[.aì†Ó¬å‡”#Şq)hÙ1šC\\?Úcúê£ìXÙ¥ZGÁĞ1\r™†§î<FÒ‚­œUâÙù% 9§X3DÅFCW¶ò^lñ½‡`À¸5¾]úÏ€C7–èNi0ñ€!éğ\" îAcÑ&$½&sVá$L¡·aY÷aÿcá9œ	ŸîĞšƒaw6’±ñs ñí.‘Ñ.d ÜºDÇÈapnßÍ[G¡±k$¬;fy.Ñğj×î½àê?K ×ü,ô»‘S2	ÄN_s\n)œÉN\"iıQŒZi›ÎaöÎ8„ô†C×¾hê‰6Á‰¸ÿê\'XùöQ©cFVX¶î‹ê¯ÿ…ïBÑ›ß0rÑ^XuI±e‡ëĞ—m0×ÛD\'v°&m¨am“àLŒX¾[O‚E»xÕ\0úõE=K€K·dÕôYú\r…ch*«Í\0˜ºQë:q8dere`ƒzMB\'²§CÅ×¯ó@¸·BÔ té‘\0¿ğ>t”wˆÖAÑ–Ç|èx+°t‰@C»HLŞ{#VŸÆÀ95=áS2à¿ã¶ vñ>ø$®BÔÔ=\nŒµ§nãş‡?Ğ>–eØ§\Z¹D\"tÀ4T}ı\r©?†Nİ•N¥~FéÛ_Püê{Ü{ò	W«¾Bë4.#88¥!vô‚É~‡ƒ Ë¯‰[?2fEUš·1{*S-~·‘<M]›!ªÚ9t¥z%7.½‚“áÑm¸r¾SH\"ºF¦À?$¢Îræä…Ö{ÃÑ7\\­»uì¯X8µ‰„S;:ßªš9G¢™c(bF-ÇD*sì¼½è4:£V±Û[‚6CVÀoÔf¸[Ïó°”CØıw?âŞËÏxòõ?ĞÒ;¶]z£Wwö#}YÖJX:»Cc×†.!è´U_~CÙ›_ÈŠ¯jıNõÜy÷+¦PoŒØÀ5“.µË8xPZÓYéc¬9ÿ´êÇ\0]Ë/#ƒ\"Z‡eƒFágôİ“Ñ.‚ºĞeÚ% (v<:G‚?Ë²\0Ò1|g+ŸhXz†À®\r«‡{l`íÔ­\\ºÀÙ;.¾Ñpğí[–¶fŞ}0…ƒNâÊ£ˆ˜~¡d@\0Ç\\ÿÑ™h=h\\o@¿ÉQôég<xùE/@áË_:<\rQà\Z:”`Œä”895X:©\nŒHXyõÂ“·ñâÇ¿ãÍ¯ÿo~ù/T}ø^EÁ³·¸÷â{ôµA£aß™\'\0¾!#ÑœÕËÆ/Q§íÙäÉÔy»ßÁpgÄ½ÂFÃC€Ğ˜4„tnİS(Õx´\Z„vaâ–aß&˜Îw‚½{7´rgwçĞ¤­­g,¬œÂan‚†ÎÑ¹üRÖœERúQt•‰›¹Ü	·¡«á1h	Pìî¿şw¿ÀÃ—ïñèÃw(zñ9ÅÏÑ}ä„qxZyèœcf¡y·©¬(ìÜzÃ€]ªi—©ê#jËn3`2G™G¯¥h7d)&fœÁÅ’W¸ıø™T\r—ÀáJ;%Á¶Ã8t\ZÉj$yŸ„Ö]àÁ4hÃŠà6\níC“Ñ•# :U± søHtäP×9j$ºÅ¦  6•é’DÑv\rE+·`´ò\nƒ£O¬]¢ÑÜ¥;¬XÒšyÄ(0ZºÅÀÀ63¯bÅ™DÍØ‰Nc6¡Ëø]pî?“7_AÉû_ğàÅ;<gŸÿô#2‚E¯¿Çµ§U¬Ñ®ßb4æÈ3~¬\" qäJ4\r_\nMÈbhºÍ‡QĞ\"õ7‰Á\\†.ƒyĞB4ä`%_•Ú\rÍÀ°y‘]ñ—ŠâÎóŸ1záö%v¦‡3ÅÑ;d<	‚8Ş)b4£Ç!8z<‚{ŒC—ˆdB×˜1›€°>Ú;İzŒ†+E{¨±mÏ0Øz‡±R„ÁÁ+N¾½ØTõ„\r‡ f^Ñ°öŒCÈÈå·ù\"zÏÙ‰(¾”÷°Ùèš¼÷^ı‡¯?(äÕ¼åK¾Á]ÒşŞ“×ê§g–\"ïñg\\)†ó•/a»KĞ t!\ZE­„E0Gè°t/ár5Œ£AØJuã˜Üm	Œ	üq&!ıò}Æíª¸Zú‚-ı;œ+~‡=Sá>ši’ÌœN‘Iè\ZM§£StC@zGh_:ßoŠZî“Šöd†/MôF†M»w4º‡!0¸\'üƒzÁ«}¼:Æ¢µ_w´e\'Ø¦mš·‹Å¤myè¿üú®»€°É°;»¥Ã’W_ğàùGeOŞáö“7Ìé÷dÅ{ÒJß|Û/X	xŞ›/H\\q\nÍÂç¡™Ğ0r4át6p\rL»­€6`–Â,d%:¯6p	´]æ£Áq«5¯ØQ¾EnÕ;\\,{‚sßâúsŞsf:w§î1=Æ¢·»]ŒGšoähxGQhƒà”ˆ¶d[×x8tf×ÚÀ5şLÇ\0ÕNÛ9¢5ÅÑÙ;îá°cz_t	ëN`ÄŠ˜¼é0Š>şÎÜÿ„Š÷ß+GK^§s´9VÌjQöê;¦È\'VåÛ¯(÷eï>(!Íã±¤•§àĞs	ZD¥£SÀ”kº-†Qğv^­?S\'p4íÁÜ6,Øy› |UŒ¸QöÎTálñ\\*}góÑyï5\ZmÃéÀt–Il¢|»W•+K§+YãÀÆë.A#a×mšùĞÍ\ZšÆìı-ÛÃÊQf	4áœ¡±ôƒ™c§Å>HÙt=§nÃñ‚\Z¿ùµş½ıéğƒZ* è¸Ø£—_PNm(yN ØÈ¾*2GÖ˜BZA\rÁy®KŸÙ•ğê³-b–£y÷9—IáÍPZ¡é4šÎóaH–w]ŒÉÛs´p?ÒÜÁ¹Â\nœ¹[ƒS÷âèİrœäty¾DR%M5Z-;$ªqÀ†ùoÇ²ÚŠÕÊkMaµf*Èº}àH8rÜoÙ‘}„I‹.\n­U{˜6ï­¹/,»ÀÜ6MØ…¥¬ÀìİWQôşgä?y‹Gï~¡0ş„â÷? øõŠ	EtV¢.Š©èŒÒŸQóî\'T²’”¬Âñöç(à¼ù„ëïá\n\\.~†“÷«‘G‘t»Yö\ZyO>àØİ7Ëy0h?Ú®K`¼/?eÚÌEêæk8sÿ9Î>x‚÷à9_ü\ZçKß`Ì²ƒÊYŸÓà˜¢¾™êŒzĞE–)hÑ~0¯6c#Îä?—Ou`hÇ	°‘4MBa!£nËnhÚ¦\'ŒìzàZõ”ığ’ÖbÅ|Q±GQc”:^ñæ”¿üÕtZ¬æÍW<~Ëóè|Åûñàúåxôı¯\\ş’/?£üÃ÷¨ùüª>şL}ù„ÜšwÈyô²Î²‹_âÖ£/¸Yı\Z½fì‡¦ëubºt]Mğj„MÜódÂ‰¼jì½U†½7ádÁSœyP¥¾JÉDºİ‡À±;ĞuÄ*õgÍ8\nüÖSù(d£VüådW~ÁŞk¨¶¡j2¶â¤iáCë\0˜´ŠBøĞE(cGXúİï(şü7”~¢Ó|á\":% ˆ	È[.e?õ¢œKÑ\rYJÚèÁ* c\nXéÛŸ	äÏUXõ+¿ù•Œú—=ÁÇop¥ä9.>|¦ìÂƒ§8qçN>ÅÍÊWÔŒÉL•ÙĞvšÂ´¡vƒímùÊ½7·Y¹e8[£~ku0·‡\n^cë¥RÕâò=o±šåT}V÷Ûuõ!6œ,Àºã·°õB!4¦¶ªÿohƒ&hìÖÇó*Pğî/æ¦óÒ)~ cŒ¦tR@)£C¥Œ~Kº}ÒWH!}øñ+î2E®Ò‰š¯ÿÄÅÒ§¸M]¹Gö<|ûÕßı‚g~bTËpşÑSìÍ)Å‘¼G¸ÂÔ8’Ç¼¿Wƒ7+pêşÎ­bU™±›¯Ã&’¬ğŸªşàÜ!a%Ü®ÁÁ¼2‚R„íWï#ëF)ö]/Ãîœ\"^_Š—±‡÷–´›Ï?À«%Ø|á>¶\\z ¾n‹i4VĞÂ‹ãp³@D%.TÎğe‹>ş\r…TöàéO*“Æ¥ßışÆu²â3[`{øQös›\0”|y\'K¹şöãwxöÓ?q÷ÕGÜ¡˜J¥ùü;v‘’çŸàjÙœ+ª!ÅØ¾S‰ùÕ8]ğŒ:AAÌ{ŠÔ-ÇÑ4rÆ¬>Œ£…åHYm§sjœ‰\rçË°ãÒ}t.+·‚€”`şîóØ{£ŠÎñY5È8óP}0Úxl8S€¶ôëNŞÅz¦Š¦™S,,8L¿[…ü_pçÙEc½â¤0B¢+`ˆ£‚˜œ£?.L¨øáoL…¯xDp ¢?ü‚§œ*¾ÿCWõÓÏÈ}üòÙELX»Ø%¸òä1.½a\Zãôİ\'Š+\\Ç¦ó8q³ûóª•º¾‰ÛÉì¦“n–áèı\ZøÚŠäçÕoB³®—cå‘\\•Û¯–cÍÉ|õ{«Ìd™qúîÉÁÒ¹XwªËŞÄÚ\"*~Ê¾û?¸ÍÆ$·æ\rÁøÄyá;N?¨hëFÈ¶¤‰\0¡è\'ŠéïŠ\rE~@Õ¿¡êÇßQùÃßU\n”ÿ3.× ›Ôp¤©’1§â¦o>Mfü¼e{nãï`Î}•ÇóŸb#Gx1¡õÁÛÏÕO‡¶]y¨¶·ÏÇkÅØvı6œ»‡uÇîbÛz‰û.—`ËÅ¬?s_E^lÅá›,Õ˜Æ}¬>qWılñşkXrà:4wèØ§o‘Çº~çÙ\'ÅÉ=#d”Ö;,\0ˆé cG}F”ĞÊ	ˆ˜œ\'÷(&CşíŸê˜èË–Ü‚×Ÿp¾è¢\Z½úŸşïaØâ½HX„såÔ¨2jB…úiÀ–ËL—k¥È){…Ôu§°íRú½çjQíz95Î_ÊÇ¡¼\Z¶ôoÔ¯‚³®W*Êgœ¾§L~á/ŒØp¦P±êèmõƒ÷UÇu¿ü×\\ú·YïójŞ#·ú½b„ˆûÿES\"‹ƒâ¼×\"&©SJÆÈy÷ØtÉ9÷Y21ªúÇ¾ªoø“ïG>E´øËo¨ =ùú#NçW äİolÑ¿`ß5¦ İ)Wér¦ BUƒ]WÉœ\n¸şHı$@~s¹“ÙÀÎòÈ\'œit ïÉy„}7*˜FeØy…©B¦ì S6.$@Xsü.õA\0ÊWÛ\ZáÖ³È% òrù¬\0b÷˜ßdƒC˜Á¥~½€ÕAÒF/¢:‘ü™)ò7•EŸ©1<O¥ÖÛ¿ãò£J$¥®üúj~ş¥YE¾ş‚7?ãDÁl¿@§®Pés+UÕ8_…c·Êq˜Uà4õàz5¼RŒCÙ¬«ÅJ+²X¤¬9yGU}×ÊyícŞ£\nûnÑx|ÿÍJ‚Fp¹”Š±é&Z²ìàudœ-Ô¥†\0!/yWZ_:—ÍP>s[„8-\0ÈòŞ»ïÕº”T=(’¨\råtPòİŠ	÷ßş‚+o(–?ãí?ÿÿí?±éÔMäsÎ¨üÊ¦êçßÔ5\"ĞÒ\n}…ÊRÊDø‘Çï°YºûTEÿà\r–Ãì‡dE‡­§8x³X•L©<òCù\rg‹”.HôŞ}Ã·Ÿb÷µ\n¾Å¾‚i\"¶Ÿ©¶Çå[Œ¨ˆåÒı¢@Lê½Şô@ÔgŠní²şº¤…”J½†ÈvñÎÔaHå—ñî?şSÙ‹¿ÿSUa„°H\Zµ5Ÿ‘y®\0Ëå)•Ÿ»ó\n)Ä¦s±öX²rØ)Šß«ª°ûÊ#Ê­V?à$çÇ¯>¢æu\'ï+ç6+$õocÉ¾«dÑWJ6_¸Ü[Rcù¡\\\në#•\"\Zq¼>ul ÄÙú¦ALX!Vğö{å¼8®[ş¦¢-Â(úPõõ¼ÿÇÿAÍ’¿±BıÂåªÒÜzÊ¶ºú3ÖÍÅü]Ù*:ò? ™aRÆIU÷…Î»¯êÇO¾Ç‹tˆõ_§WËÇrV\rY¦¹…mÙeŠòòÿ·_ü¨ÒgÅá[X~X\'R1äŞëYJìÍÆÊc·¡ÉcjÜfjÈR€¸Oq ş\n‚XÑ]ÉÔ—N}ó¤[!å4J7«ßªr*¥øÅßÿ7Ê¿p¦`i­üéïŠ=w_~Ü\'ß) ä\'A[É­Tué$j‹³r±<l>{OıålüúStæ6ğPµëz…i»ÅíWaóÅ‡Øz¥D5KR$6/¡&TQcÍá˜µë¼ê–î¿Éª¡cÄšã÷ûa€\0p‹c³,õ¬ĞëB}f(&Ô–ËúM•®É’~âoxüËßUÕ‘æI\"/}ÃËßÿ“åSÒågÜyÁÉóı/È.£\Z+Ñ‡§ïbÁî+°<åÌÅ*‡Å$m&dœÀÜ½×”Â‹ê/?tC1aï5v”ì\rDôK¹fW6.Š¥4V)«cÏõjÕ^Ïß{7Èÿxä ıà-ÅIGa‰bDıÔ6ˆ©õZqê–ÒhÕ–PBÚmİ¾ª±’.ó\'v™ÃÇ?ı®À‘ı9dÉÍªO¸VşÕsd—¼CvÅGÕE¦º©ÄNõB%h¢ğÂ¡ò¼İ—Uc$¬‘}Ò\Zï¢óÒ4	p’ó{sª°–Ûˆ8¾ûZV“şfìV÷_²/‹™\"3v^Âôm0iÓI,ØGæIjHZÔg‚T\r©úm=u b†\0!€H¾Ë¬¡f¦…T…j!\Z!B*Ço°O¹QıÇë\n€•	È[%–Bİ½TôÕGi¦†Øª¼Ÿ4<â˜\0£æ‚°0ë*Öó³®c–0éÄ=•ÿ»rª!ÿ£¶öÌ¬=u\0S@™2)»±hú~êµdÙÑ;J‹¤‘š³;3w\\ú¦z@¤‡¸Í±XÏÙ¯XB ô¦Ò¤–JT\'©›<¥*Hc%İeÍOÿPlQ¼^ı	—‹_qœş‚%¯p÷ég5ÓH\n]*}‰¥ï±—¹¾ïzJaƒˆ§´ÀÒ	ÊI—¹#§BÑ{İ¹bŒ\\y6UÎ‰ğMË¼†ñG1Ö²‚,İ—‹vçÂ­ÇJ¬?›GQ.T¢)ŒK?pCéIÚÆS\nÍÍ§l¦ØZË25ıÖs6X´\\6Y¢úÔÑƒ O½^HÏ ›J9+°&(².Çe†¹QóW+Ş«®QÄñúã(şğÊ¾0}˜4\\×Ç‰ó¹ê¤C”üFˆ\0ÊrWN¥Š *Ìë\rJ°ø`.Ù@–P@¥ü]°‹˜ûÂ–MŠ¨åXuª\Z×áÈà°&â+ûD;DŒp\rï¡‘¼½şø½²O>(“u=b„\0 V¿|ŠhŠãª½æR˜¡×}«ûä#Á`‰~ñnT½ÁõÊ×Ša\"¨2ƒT~ÿ‹järª>âìÃ—Çß¨KZd¼Œ3wUs$ú‘AVè…q+û‰u§e ¢fĞî¿åÇï«_ÛIJHù”lÉ¡[bæícâ8.‚+Ú!÷@…mbšk5ïê€Ğ Îs&¨M½VèAø+#Äi}j€ì×•XeŸÈ\"î“æéSNZìÒ~Uã¹X%;Ïçü—êBE/n=ı\'©Çï>S œ,|¦Úoyñ´§•c\"|Šç8y\nÍÜVìt&d^*ÁîÕ*ú›˜B\ZgùqÉ6U%i Ôu¼èL«\Za€¤…\0¢_×k„\0‘ÿV—ú®Q¿Ôõß\0TP)Âáªì»Ÿ”VH!û„1jDçRöåwÜ{õQ\'¦PZìœÊ7\nü«UïÔ—èå±?¯BUÑ™æg]Ã\"ŠãêS÷±ş\\‘¢ÿÖ«•J$±7˜µ+ëÎ>TNI±ÿÖceSöœSÿOâ½ÎËZªRAÒbñÁª\"‰ + „	„€ ÛõÅRŸÂ‰´:@¤\"#ÄY}Z”÷wõ)¯ü;–Î_şC•PÏ•Jòì·0m>«ï·\nÂã/¸şä{jÄ\\ªüŒİœ/ä·P’&gDyÛíÍì*Å„\r’\Zâ”¤Ã26Hò¡E˜ ¶å2*²#bìF˜øÂÎ[ÏXjeâ$Ôq^J¯\0!÷«Óˆlæ®ªóãÎ«z3G}¬­Ä7úë€VÜ|üû~U­wùò)O:O]ú3¤Í¾û™İåW\\.ã³ùã÷t) \"y8ÿ	N¿Á©Â—J8e)%öØ}I‘\"•ûûrkÔº|°Ñ—DGœ“6[¢>us4­G!rB¦ê5d¿”VLÑX@Såóúãw¤åkeÂˆú\Z!©¡g…ú¹B!\0HÔ«ØEJQ#6Sãáû/xòë?¨tœz\"½‡®ûUM»×ªŞxêu!§æÎ¿å]#$‹©°óz)‘\rËŞğüŸÔ7ˆc¯TK- ÈR\0‘vZ—ŞA?’ÿòàĞg8zï¥F#ß1°à\0Ó¦¼)Ò—Èü\"™Ü£z6ˆIÅ$=î¼ş\\FıŠ! (d”E\0•&î2p}ş\Zğw„€v—möíWº¯â2î_,yÆTü ò?»æ{å¼L†›ÎßÃ!:/Ê¤yŠİçÍ\Z]§{±âƒÒ\nL†°£dHÖÍj%~ÒYJt aĞÁ;q¢ğÚ–˜mÚu²ê8¥ô\n¤¢HZ	3äc|¼Q}„ÎyéXçUÕø¤cƒtštB€ĞÏDÉ÷¢\ròAæ7Ewùt/ô,å@HŠH»- »dI·kìd;»ò-®±Á’Şáh#G§¶])R­\'IaÃÇÎ˜lÀ¶^~¨RäBé¢–ì¤ûrŸ(@ô@¿Ç^¤$±^ÓöÃ&r¶ú÷çÀä\Zİ—í*µöò:18./©HÉ¿åz ô¬0aGıÔÄyYJe4úÀâğÅÒ×È®ú€«l¦n<!à/Tš;Éœ—/Ô»9&&IÙwæ¡hÖ{Õé\nóDs.±-?Ë’z¶HÒ¨F9*­¸¤Œr<W>À”«¥€rıÇºóÕĞ¸\'«Ã.ÙŸ«*Êa6m¢E;¯«	V>éi$Bzd)¬ĞëƒªòÕùåGµT\0pW`¨Ş@×EêÅR€Ê /­ëR¿£¾Å•J\n\"‡­3El˜J^*Ê/¤0r¾ç÷Ü`Ş“öÂqö\r9Õß¼·dû6^x…÷\\Ùk¦ñW%ªRI\0¡õ	.ÅIiÂ„-‚D~ÏR$¯8‹EœXeú”2,Z¢D÷‚n‚=z÷©.5tÎëLÀĞw”7ŸJ_Ánóé[U=TzÔ\\òr:ñüŠ\n²@ÇËyÖZJ£ÜG\"{®äµàÄƒ—tâ-¶\\*ä?V \\(ÿÄı¯TU8O\r¸ôèßå{¥]…u@<ÿÇïì0ãâ£ÏŠÂÑÂçê«µ¤“8š×Ê÷¼U­À:UøJõ$²-‘~cåÁ<¬>.¿–¯[•`î\'›Tjè5BØ¡k¬¤Ë|ÇuN‡Ï> ÷ù{„ˆ¤€ c‚”Dù‹—®jHªˆ&è¿Oè+Œ¤—\0q‰£÷É‡â,ó7WÇ1F–:†”ã2EQÚmI!¹¶ø»_ÕÇœÇ¿ÿM}®¿T&zñæl¿€#•@ˆ&ÂI›ó%ïi¹÷é¯U5‘òºıJ™jÕgî¸ŒÙÛ/©U}¼Í©~£–Ò)ëˆ,ÅB@”*~üC9®+‡ÒÔ~«$(úïja{-Ë©ù¤¢(’€ ÎïºVÊHŠ¸=SeR—û<‡£¹¤”|ç•}ı*~ùªûM¥ÒÅ²w8ığÎ–|V=8)ú\"l@„Ç)´ç	ØYN´ò,ù‰‘\0#çÉ—¬-¼nÁ>İli¦Tg©g„˜¨»˜€\"àˆZçÊ_¾êiƒ8¯áÎËOj¿/xÏ–üÕ•*úŠ!‚y‹&Î‰Ó‚D}ß­JÕ4‰I9Md¿÷÷“ßb\r¾2İ¾ûñşÇ?•â_|Ä÷dßq¬€)Aí÷ç1˜Z\')°ÂçRÙ\'¥Â\ZùH#ÌÑ5ioÔ¬!C›hˆŒûï<Æÿõ+H«qF×\0\0\0\0IEND®B`‚',10.00,17.00,1,61,5,1,'',1,0,0),(3,'PANTALON JEANS','PANTALONES','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0X\0\0\0d\0\0\0-÷â\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\02IDATx^İİ°ìXğ»ßÚ¶mÛ¶mÛ¨µmÛ¶m£Ö¶mÛ{¾úš¼ÊËËL2ºwæuU×¾½ƒ$ÿôéş7N¦\'t‘üøã•utÀä¢‹.\nıõWåÿ:OşøãşÎ¯ë\0şüóÏÃwÜşùçŸÊ_:Cşûï¿ğÃ?„o¼1<óÌ3áï¿ÿï:€ÉN;í/ÂEu‚$à^vÙeaî¹çÇ|øé§Ÿâk]	ğK/½¶ß~ûğÕW_UşÒwòï¿ÿÆó¸öÚkÃ\"‹,†rÈ°òÊ+‡7ß|3ß•\0ÿı÷áˆ#guVøóÏ?+íùøãÃQG-wè¡‡===aÔQG\r÷İw_¿+æyä‘°ñÆ‡ç{®O\\…ûŞ{ï…}÷İ7L0Ááÿû_7ÑsÏ=7üşûïİ	0@YÎŞ{ï8à€ğÍ7ßT^i¿°ÊÏ>û,Ü~ûíaıõ×£6ZdAú—.³Ì21 w%À„u*K-µT¸õÖ[ÛÎ*ÜÔo¿ı6<øàƒa·İvÓL3M?—§£Œ2JôÃ]0Kzíµ×Âæ›ovŞyçhÑíÇùùçŸc`=úè£Ã,³ÌYÕ¦ÕëÜX×LP¡O<1Ì?ÿü1Š#ù­Öj…`>úh8ì°ÃÂJ+­Fyä\\0«é…^Øİ\0#óO<ñDXqÅcÀ{çwš\nxÜÌ—_~¿ç†n{î¹g¤^yà•Q«««&_|ñEØvÛm£O¼à‚¢åÕ#n’ É_²VASğšuÖYÃC‘\\Yüñ»à_ı5»™fš)¬¹æš‘:•™×c=ÙÀ	\'œWÀb‹-YAX\rkåx]+\\Âë¯¿³§©¦š*ƒ¦Z‚;Ÿzê©añÅsÌ1G˜xâ‰Ã°Ã›P³Z9fW‹ÌN8á„aİu×\rŸ~úiå•şE¼ûî»Ã:ë¬&Ÿ|ò0Ø`ƒåƒÒJ­»«EpzàÂSL&™d’½óDnÉ%—#8b!Íj™VİõòöÛo‡µ×^;7Üp1z³ê´<ôĞCaÙe—¯÷\Z¸´rü®—_~ù%œsÎ9‘«rçw^å•ùìşûïÆ{ìŞ—VÎ¡ëE°»ç{ÂDM†\Zj¨°Ç{„ß~û­ßßç›o¾0øàƒçƒĞN­œß@!„õÖ[/òW\rcÙ*[“M6Y>\0íÖÊ¹\r¢vöÙgGv0Î8ã„3Î8#¼õÖ[a‡vˆ5Ú\\\0\ZP+¡ôj¨œÛ@#×_}LğÚ6Ú(\\qÅ1•V É NU%³\ZF\Zi¤B>Şxã\r|\0¿úê«aÕUW?í´ÓÆzÂ‚.˜@½:ÖXcÅloÆg,uÃvÜqÇ`íÈ#Œ8î¸ã†UVY%½øzuôÑG+¬°B¤ze«j*|ÀXƒDc„Fˆq¬bŒ1Æƒ:h.e”ÿŞd“MÂAoV¶=TM_xá…ŞX@?KÕË¤B¹eídüñpóÍ7‡»îº+<ıôÓáÅ_ï¾ûnøî»ïbQGª›ÌÔU1´Œ›\0òğÃßEóyş\\û–[n	Ë-·\\éïáF>úè£öÌš\0\n˜¯¿ş:Ö€§r5İtÓÅ”g¥|\ZE±hòÿ^+¬Ô”(•u\Z¤É“½°í¶Û®ßÅª( e‘z;ŞË/¿f=«ÀçPÄ¶\0ì¢Y¨æ Ë<ùä“kö¯\ZQ7ÇEãºÙ´˜>ğÀãû€â†•]ÖŞ?Ì0Ã„%–X\"¶‰¬ ôÍ*£VŒä†qµ`<TÕÒ¾ôÒKcey\'Ñ\n†¥¨ˆ“7×¬B=7•Å¢v\níV·ôşûï‡]wİµcHÔJY}õÕcmÄÊj	Àî”+jlH•wğV+@¶Ùf›¸RÒâFãÃ3Ì0CîçÒÊ²Yœµé¦›FÿÍ¥w¿ıö«ÛwãÇbÄÒ4ÀüŒ»uøá‡ÇeÕl›¥µ:Döl›È\r8W[mµÜÏQ–†nM=õÔ‘! T¬–{{ã7¢[Tä}¶šZhœ¹9ßC\ZØE6×\\sMØl³ÍÚê\nò@I:œKSç£“÷³T\n	º…h7%m&E@cÉ°=¸3Ï<3ßD\ZØr—=ôĞ0Ûl³µ<€•Qş—¿ÌúßDt‡Y!@½ŸµjŒê³zÃ*|ğA?Úg@ÀÔğä²Ç+Rlg­µÖ\n¯¼òJ?ë%uìîèğ}H|=Ô¥•ÊI‰”\'–ûÁÜ¯È£.°Ï>ûDüÖ>ª%ëv(ÈgU¤0àï­.3-uìÃ7İtSX~ùåã‰—¥>µT€™~úéãÅá¹š—Ô1$ŠäyÇÙ·Új«ª‰C\0šŞ›÷»!Vœ`œHâvß}÷8À×hüŒh÷»QYN^\Z`QÑ0†%f	ÕKÜ½ßsÌ1ã<™¶AjVæ{]¨Èıá‡FUÛµdO9å”H•¼WKhæ™gîùı½š|ŒaöÙgïw¸q°ÿvÚi±VÑL‰{$•EÅ¥¬”q‚ØÄ§•UVº°R€œ~úéáùçŸï7^|òÉ\'ÑwšªøÕW_]ye@áĞÆ4e4jª}äzdZÍÖˆ‹5HëóÀ%…\0³éíB-”{jÊZ¥·Nà¸ã‹Ö”pÃfÅÅH½i5±TQ5n\'9\'.càêÌO¸¦jã§µ”Ñ¨®m¸á†qÀÏ\r«&5V”1®	$Q2ï`yŠ²è°üÍa}!Æ¡øóä¼€mè„uÓûï¿?®««LL¬¨š0nº³šå&R`€Šá„õL½ Cü«‘$Ñ:ëô{S²\0›ÂdqÉ6+àp;²¾]vÙ%&J#é>S×nbHÀå¯ÕšWSæÚªììƒˆm€Õ”Kprü¬Q¦ô^±¾’,À’¼9»¯Ã\nC÷|òÉpÛm·EëTG1„K@MÅFS¦dšH.À(Îå—_óó²<3nb\0EË¦·$°Ìïºë®«ê²œ·×d¨ÒÌ\0ğ\nX@md5\0°ƒÈFÖXcÒ~WÎÏŸa}é²’Xl`8ÙÚE;e\0€ñC|Q”,]õ©dG\"i\'K²\0£˜fˆkEıVK\0óM÷Ş{o˜wŞyK+šzop=’˜\ZBé3€åïòõ2®AF†¬kİtšå&ÒQ\0sâè‡l-}ByŠŠaRÛN	hyÒQ\0ëğâxE©0²-¨%„½“%0Ftşùç÷>À–¸_™	˜I\'4Ö¸“N—,À}Æ\"¸E”¢Â¹ª“éE4®$0ã0wQ34¼—ÑzŠjÖöÖ>Iƒ™§Æóe5Ê\Z²’x®¹æŠq&*û·ÕxS˜&1Æ·ì­Y‰\0ëım_R–:r%İ\"Rv;4“kPkP|ªììá‡z/¼p,Ì§Ûó˜”t¹Y‰\0›cH¾¸š¢eÊ­*9¶[,o\0/¹†\r6Ø ‚Îk7±Òj…,•µX éë\0ÒÈ;H¢¢¯æ&?İ-=2#ZÉuØ§¡†Ì×\Z.©Å÷%Zúl\n@ÍHX).ï ‰¢fÚ\"\n9İ\"h§‘-Vš\\GºeÄX4Ò×™V\0«ıÚ°ØŒôà²yH+ÿ«xŞM\"ÃTL×»s\rü«òkB/¦Šöm`Uf+šÉT{(ïËÓjP£Ù;ÙÛ¢Ã«Y\\ƒ¢9œ´ÕıwÑE­™Xq!üv3µíT&ïËÓŠŞ´‚²ô–°8İ%×ä\ZüJ²O…-±§V·†Õä«Õû+’øĞˆœ/O«V‰Q¤nBçbÎ9çŒç/†”‘D$ËĞÚZµF¾ŒOÉnQ»F¥g‹-¶Èıò´ê6Òfï+AÃLyÚFàüµ½=öØş,Ğ€“Td¯7QìI›ÉN¥F¥\'Í«©á¾l«“…1pÉù«o³èl\rBÊ_k6“ÀB¿4*=æËò¾<­[n¹eG—%³\"35ÄçÜY¡tY2•eâOÑğ	*§	Ú¨ô”™n1°ÑM¢®Ì¤á²\0²o#+e\06#,AiTz’©¥İdÁ\\™\'Q¡_–¸@g2)¯2VÖ‚=uªQé)3îOöf\rµÑe‘u:oAÎ¿ÕòÄÀa‘æB\r	6*=eÊ”üYv\'O\'\nk?›IsàX:yï5½YÄ\"Ô2®ºêªÊ§ê—+¯¼2÷ËÓ*HTtî$10sÌ1ÇD`dafŒ«kğ`#SmçÁ–TŞ—§Õ¨şwŞYùHç\n¦°ôÒKÇRcÂ}Õ}ó„¯¶• Öv$“kæá£=rò¼/O«b<âŞÉ¢ËrÉ%—ÄÁ=–\'ûÌ£f‰p†ÉY{Ş5Ó¤ÑLë¨;Èûò´ºËîv\'‹92İni±â”™Zc³e«iêÆÕnR‰õà\"&á¤İÉ²OÕëmÁpõ	j‚›6QÑ¹ªCèÒä]/õ=8t3Y‰\0+Lç$Q>Í({â:Q4t»Yœ\rÜ¶ñÍlxcº—U\0›.µ= ‰\0µÏ;HZ\rŠĞÖ“ãÑ-	CĞ¨,:G3¾éVRú.[šñ¿$lG*yJ”›Ğ•5IÙ)Â7*£ÕùÙ\n¦\\ä3efEÛdJ®¦Y‰\0søZByJ«¹ˆF!Û.Äì~Òœtn6¶›ájÕ5šw‰ª¢™ynV\"Àü[dÅªÿ¶‹\Z¥ïëÚ„ã›BO™ ^b¿E-ÑúÑÅÀ2øØ¼k¤¨[+Ü‰\0[RòuLÉ;`ZEÖC9d€Gô¶°Ô‹/¾85ÇŸZ®Ák_Yæ	€­U¼?L´¹±Z‘5Qé£âè«\"<ëõ$É„Æ¥~a‘µi×¹-ª±l\rÒVQÒ~\0sòvSëyN«‰‘#å¾\":ÔÑzßk¯½âS¯íGN?> O°\nÖîıEã¹Ü 1ŞVO?€‰W\\®ÕiMÈ£BvQÔnµ(ÒH*<t®¨Ê(C&Æ 0¼kI”õr9ZI­º¦ş\0Ğ°²OÊ“|Èÿ{ó‡ô´ƒ”#­ ¢F¬ë‘((·Öªš%ê‚E+¢é`ÂWÙ4ÍWÕŠ´‰ÚÍ®›t´KXŠ%Óå.²0à²D#©µF¤u­vò?ûì³•oh\0°Oš†EÙ‰â•j\\L»Ü…ï„W×ÅA¿£º–wÎYM6)¶:¦\00ìÚDà‹y¢~‚ÆóspÑVŸ¤š®ój\r»¹V’±U£e,—ªn½õÖ…<ºÉ˜Xº±’wRYµÄü\\‚Ga©Ã¶Ê)vK‚<*«Vá›K\0‚”_ÂJ†şŠTÍW‘Ş³%Ú!Uf\r¸ e¦Ğ“wryÊw[Æ‚Ÿ*W3Ù›d££˜ç~ü…ÎjÖ6¤—‰TÂ1Ï<óD–Ñ®Ì´*À8¶ké*ô´ZrÁà9ê~D´‘Ç\Zpª|²/–™€÷J6¬(ÌÈ2Ëº4ïÃ‹5EÛ9V`\"`(z^NÙe—(È7óæ»¬ˆ2ş˜nŠÊ˜à–WŒğÜ‡“N:)²\n…²9Q=;#¹eŸûĞ¨LXŠ¥ª%STÊ*K´\'ì	<† ¹-~3ïâÜVH¯sp²,~^i’Å6ò.­\"ç¡ÒNpI)€‰è,ç×9¨÷‘ƒĞ2DŸ•-©#ø-õôËp´=.²5OÑ³w\Z—5¾Å_Ê %\rej&yjZÛáÓÛåwÓR\Z`Â’E[–Xöqyêsj‚Œ¥ÍÂ§œrÊHô)nt0nI†å½eıkú¬®‡yèŞÜÀ^ÀDn/Cò»–ŠÒµÚŞ n¦ ‹º	¸j½.©`biy4¸ÁY\\­á¾TVo¶ÌŠãz¸¹Ş—4p\"–š¬	³¸¨Ø[ÊjùjãÉ•Ôš‘h§40Áìèñ,£O~)¥|:nÂ•Séë`VMš8Y—¶È¯…SOö×\n•òz˜ÎíÑ\\x´›ß×Ò2€	KÁ]H,XQüáĞ@Z¥¨Ÿ3ág%&qoûÚjÒR€´‹ä£eÊ€êém­Í(¬yé±æzƒZWX+ºÀ­–¶\0œ`»p`•}ê©§â3\'lQ•‰å˜§\0•Ø`…ÈÂ€êû;ÅZ”ş™>SXhôI\0\0\0\0IEND®B`‚',120.00,0.00,1,30,5,2,'40494250',1,0,0),(4,'CHOMPA DE LANA ','CHOMPAS','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0X\0\0\0d\0\0\0-÷â\0\0\0sRGB\0®Îé\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Ã\0\0ÃÇo¨d\0\02IDATx^İİ°ìXğ»ßÚ¶mÛ¶mÛ¨µmÛ¶m£Ö¶mÛ{¾úš¼ÊËËL2ºwæuU×¾½ƒ$ÿôéş7N¦\'t‘üøã•utÀä¢‹.\nıõWåÿ:OşøãşÎ¯ë\0şüóÏÃwÜşùçŸÊ_:Cşûï¿ğÃ?„o¼1<óÌ3áï¿ÿï:€ÉN;í/ÂEu‚$à^vÙeaî¹çÇ|øé§Ÿâk]	ğK/½¶ß~ûğÕW_UşÒwòï¿ÿÆó¸öÚkÃ\"‹,†rÈ°òÊ+‡7ß|3ß•\0ÿı÷áˆ#guVøóÏ?+íùøãÃQG-wè¡‡===aÔQG\r÷İw_¿+æyä‘°ñÆ‡ç{®O\\…ûŞ{ï…}÷İ7L0Ááÿû_7ÑsÏ=7üşûïİ	0@YÎŞ{ï8à€ğÍ7ßT^i¿°ÊÏ>û,Ü~ûíaıõ×£6ZdAú—.³Ì21 w%À„u*K-µT¸õÖ[ÛÎ*ÜÔo¿ı6<øàƒa·İvÓL3M?—§£Œ2JôÃ]0Kzíµ×Âæ›ovŞyçhÑíÇùùçŸc`=úè£Ã,³ÌYÕ¦ÕëÜX×LP¡O<1Ì?ÿü1Š#ù­Öj…`>úh8ì°ÃÂJ+­Fyä\\0«é…^Øİ\0#óO<ñDXqÅcÀ{çwš\nxÜÌ—_~¿ç†n{î¹g¤^yà•Q«««&_|ñEØvÛm£O¼à‚¢åÕ#n’ É_²VASğšuÖYÃC‘\\Yüñ»à_ı5»™fš)¬¹æš‘:•™×c=ÙÀ	\'œWÀb‹-YAX\rkåx]+\\Âë¯¿³§©¦š*ƒ¦Z‚;Ÿzê©añÅsÌ1G˜xâ‰Ã°Ã›P³Z9fW‹ÌN8á„aİu×\rŸ~úiå•şE¼ûî»Ã:ë¬&Ÿ|ò0Ø`ƒåƒÒJ­»«EpzàÂSL&™d’½óDnÉ%—#8b!Íj™VİõòöÛo‡µ×^;7Üp1z³ê´<ôĞCaÙe—¯÷\Z¸´rü®—_~ù%œsÎ9‘«rçw^å•ùìşûïÆ{ìŞ—VÎ¡ëE°»ç{ÂDM†\Zj¨°Ç{„ß~û­ßßç›o¾0øàƒçƒĞN­œß@!„õÖ[/òW\rcÙ*[“M6Y>\0íÖÊ¹\r¢vöÙgGv0Î8ã„3Î8#¼õÖ[a‡vˆ5Ú\\\0\ZP+¡ôj¨œÛ@#×_}LğÚ6Ú(\\qÅ1•V É NU%³\ZF\Zi¤B>Şxã\r|\0¿úê«aÕUW?í´ÓÆzÂ‚.˜@½:ÖXcÅloÆg,uÃvÜqÇ`íÈ#Œ8î¸ã†UVY%½øzuôÑG+¬°B¤ze«j*|ÀXƒDc„Fˆq¬bŒ1Æƒ:h.e”ÿŞd“MÂAoV¶=TM_xá…ŞX@?KÕË¤B¹eídüñpóÍ7‡»îº+<ıôÓáÅ_ï¾ûnøî»ïbQGª›ÌÔU1´Œ›\0òğÃßEóyş\\û–[n	Ë-·\\éïáF>úè£öÌš\0\n˜¯¿ş:Ö€§r5İtÓÅ”g¥|\ZE±hòÿ^+¬Ô”(•u\Z¤É“½°í¶Û®ßÅª( e‘z;ŞË/¿f=«ÀçPÄ¶\0ì¢Y¨æ Ë<ùä“kö¯\ZQ7ÇEãºÙ´˜>ğÀãû€â†•]ÖŞ?Ì0Ã„%–X\"¶‰¬ ôÍ*£VŒä†qµ`<TÕÒ¾ôÒKcey\'Ñ\n†¥¨ˆ“7×¬B=7•Å¢v\níV·ôşûï‡]wİµcHÔJY}õÕcmÄÊj	Àî”+jlH•wğV+@¶Ùf›¸RÒâFãÃ3Ì0CîçÒÊ²Yœµé¦›FÿÍ¥w¿ıö«ÛwãÇbÄÒ4ÀüŒ»uøá‡ÇeÕl›¥µ:Döl›È\r8W[mµÜÏQ–†nM=õÔ‘! T¬–{{ã7¢[Tä}¶šZhœ¹9ßC\ZØE6×\\sMØl³ÍÚê\nò@I:œKSç£“÷³T\n	º…h7%m&E@cÉ°=¸3Ï<3ßD\ZØr—=ôĞ0Ûl³µ<€•Qş—¿ÌúßDt‡Y!@½ŸµjŒê³zÃ*|ğA?Úg@ÀÔğä²Ç+Rlg­µÖ\n¯¼òJ?ë%uìîèğ}H|=Ô¥•ÊI‰”\'–ûÁÜ¯È£.°Ï>ûDüÖ>ª%ëv(ÈgU¤0àï­.3-uìÃ7İtSX~ùåã‰—¥>µT€™~úéãÅá¹š—Ô1$ŠäyÇÙ·Új«ª‰C\0šŞ›÷»!Vœ`œHâvß}÷8À×hüŒh÷»QYN^\Z`QÑ0†%f	ÕKÜ½ßsÌ1ã<™¶AjVæ{]¨Èıá‡FUÛµdO9å”H•¼WKhæ™gîùı½š|ŒaöÙgïw¸q°ÿvÚi±VÑL‰{$•EÅ¥¬”q‚ØÄ§•UVº°R€œ~úéáùçŸï7^|òÉ\'ÑwšªøÕW_]ye@áĞÆ4e4jª}äzdZÍÖˆ‹5HëóÀ%…\0³éíB-”{jÊZ¥·Nà¸ã‹Ö”pÃfÅÅH½i5±TQ5n\'9\'.càêÌO¸¦jã§µ”Ñ¨®m¸á†qÀÏ\r«&5V”1®	$Q2ï`yŠ²è°üÍa}!Æ¡øóä¼€mè„uÓûï¿?®««LL¬¨š0nº³šå&R`€Šá„õL½ Cü«‘$Ñ:ëô{S²\0›ÂdqÉ6+àp;²¾]vÙ%&J#é>S×nbHÀå¯ÕšWSæÚªììƒˆm€Õ”Kprü¬Q¦ô^±¾’,À’¼9»¯Ã\nC÷|òÉpÛm·EëTG1„K@MÅFS¦dšH.À(Îå—_óó²<3nb\0EË¦·$°Ìïºë®«ê²œ·×d¨ÒÌ\0ğ\nX@md5\0°ƒÈFÖXcÒ~WÎÏŸa}é²’Xl`8ÙÚE;e\0€ñC|Q”,]õ©dG\"i\'K²\0£˜fˆkEıVK\0óM÷Ş{o˜wŞyK+šzop=’˜\ZBé3€åïòõ2®AF†¬kİtšå&ÒQ\0sâè‡l-}ByŠŠaRÛN	hyÒQ\0ëğâxE©0²-¨%„½“%0Ftşùç÷>À–¸_™	˜I\'4Ö¸“N—,À}Æ\"¸E”¢Â¹ª“éE4®$0ã0wQ34¼—ÑzŠjÖöÖ>Iƒ™§Æóe5Ê\Z²’x®¹æŠq&*û·ÕxS˜&1Æ·ì­Y‰\0ëım_R–:r%İ\"Rv;4“kPkP|ªììá‡z/¼p,Ì§Ûó˜”t¹Y‰\0›cH¾¸š¢eÊ­*9¶[,o\0/¹†\r6Ø ‚Îk7±Òj…,•µX éë\0ÒÈ;H¢¢¯æ&?İ-=2#ZÉuØ§¡†Ì×\Z.©Å÷%Zúl\n@ÍHX).ï ‰¢fÚ\"\n9İ\"h§‘-Vš\\GºeÄX4Ò×™V\0«ıÚ°ØŒôà²yH+ÿ«xŞM\"ÃTL×»s\rü«òkB/¦Šöm`Uf+šÉT{(ïËÓjP£Ù;ÙÛ¢Ã«Y\\ƒ¢9œ´ÕıwÑE­™Xq!üv3µíT&ïËÓŠŞ´‚²ô–°8İ%×ä\ZüJ²O…-±§V·†Õä«Õû+’øĞˆœ/O«V‰Q¤nBçbÎ9çŒç/†”‘D$ËĞÚZµF¾ŒOÉnQ»F¥g‹-¶Èıò´ê6Òfï+AÃLyÚFàüµ½=öØş,Ğ€“Td¯7QìI›ÉN¥F¥\'Í«©á¾l«“…1pÉù«o³èl\rBÊ_k6“ÀB¿4*=æËò¾<­[n¹eG—%³\"35ÄçÜY¡tY2•eâOÑğ	*§	Ú¨ô”™n1°ÑM¢®Ì¤á²\0²o#+e\06#,AiTz’©¥İdÁ\\™\'Q¡_–¸@g2)¯2VÖ‚=uªQé)3îOöf\rµÑe‘u:oAÎ¿ÕòÄÀa‘æB\r	6*=eÊ”üYv\'O\'\nk?›IsàX:yï5½YÄ\"Ô2®ºêªÊ§ê—+¯¼2÷ËÓ*HTtî$10sÌ1ÇD`dafŒ«kğ`#SmçÁ–TŞ—§Õ¨şwŞYùHç\n¦°ôÒKÇRcÂ}Õ}ó„¯¶• Öv$“kæá£=rò¼/O«b<âŞÉ¢ËrÉ%—ÄÁ=–\'ûÌ£f‰p†ÉY{Ş5Ó¤ÑLë¨;Èûò´ºËîv\'‹92İni±â”™Zc³e«iêÆÕnR‰õà\"&á¤İÉ²OÕëmÁpõ	j‚›6QÑ¹ªCèÒä]/õ=8t3Y‰\0+Lç$Q>Í({â:Q4t»Yœ\rÜ¶ñÍlxcº—U\0›.µ= ‰\0µÏ;HZ\rŠĞÖ“ãÑ-	CĞ¨,:G3¾éVRú.[šñ¿$lG*yJ”›Ğ•5IÙ)Â7*£ÕùÙ\n¦\\ä3efEÛdJ®¦Y‰\0søZByJ«¹ˆF!Û.Äì~Òœtn6¶›ájÕ5šw‰ª¢™ynV\"Àü[dÅªÿ¶‹\Z¥ïëÚ„ã›BO™ ^b¿E-ÑúÑÅÀ2øØ¼k¤¨[+Ü‰\0[RòuLÉ;`ZEÖC9d€Gô¶°Ô‹/¾85ÇŸZ®Ák_Yæ	€­U¼?L´¹±Z‘5Qé£âè«\"<ëõ$É„Æ¥~a‘µi×¹-ª±l\rÒVQÒ~\0sòvSëyN«‰‘#å¾\":ÔÑzßk¯½âS¯íGN?> O°\nÖîıEã¹Ü 1ŞVO?€‰W\\®ÕiMÈ£BvQÔnµ(ÒH*<t®¨Ê(C&Æ 0¼kI”õr9ZI­º¦ş\0Ğ°²OÊ“|Èÿ{ó‡ô´ƒ”#­ ¢F¬ë‘((·Öªš%ê‚E+¢é`ÂWÙ4ÍWÕŠ´‰ÚÍ®›t´KXŠ%Óå.²0à²D#©µF¤u­vò?ûì³•oh\0°Oš†EÙ‰â•j\\L»Ü…ï„W×ÅA¿£º–wÎYM6)¶:¦\00ìÚDà‹y¢~‚ÆóspÑVŸ¤š®ój\r»¹V’±U£e,—ªn½õÖ…<ºÉ˜Xº±’wRYµÄü\\‚Ga©Ã¶Ê)vK‚<*«Vá›K\0‚”_ÂJ†şŠTÍW‘Ş³%Ú!Uf\r¸ e¦Ğ“wryÊw[Æ‚Ÿ*W3Ù›d££˜ç~ü…ÎjÖ6¤—‰TÂ1Ï<óD–Ñ®Ì´*À8¶ké*ô´ZrÁà9ê~D´‘Ç\Zpª|²/–™€÷J6¬(ÌÈ2Ëº4ïÃ‹5EÛ9V`\"`(z^NÙe—(È7óæ»¬ˆ2ş˜nŠÊ˜à–WŒğÜ‡“N:)²\n…²9Q=;#¹eŸûĞ¨LXŠ¥ª%STÊ*K´\'ì	<† ¹-~3ïâÜVH¯sp²,~^i’Å6ò.­\"ç¡ÒNpI)€‰è,ç×9¨÷‘ƒĞ2DŸ•-©#ø-õôËp´=.²5OÑ³w\Z—5¾Å_Ê %\rej&yjZÛáÓÛåwÓR\Z`Â’E[–Xöqyêsj‚Œ¥ÍÂ§œrÊHô)nt0nI†å½eıkú¬®‡yèŞÜÀ^ÀDn/Cò»–ŠÒµÚŞ n¦ ‹º	¸j½.©`biy4¸ÁY\\­á¾TVo¶ÌŠãz¸¹Ş—4p\"–š¬	³¸¨Ø[ÊjùjãÉ•Ôš‘h§40Áìèñ,£O~)¥|:nÂ•Séë`VMš8Y—¶È¯…SOö×\n•òz˜ÎíÑ\\x´›ß×Ò2€	KÁ]H,XQüáĞ@Z¥¨Ÿ3ág%&qoûÚjÒR€´‹ä£eÊ€êém­Í(¬yé±æzƒZWX+ºÀ­–¶\0œ`»p`•}ê©§â3\'lQ•‰å˜§\0•Ø`…ÈÂ€êû;ÅZ”ş™>SXhôI\0\0\0\0IEND®B`‚',60.00,0.00,1,25,5,2,'',1,0,0),(5,'NUEVO','NADA','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0X\0\0\0d\0\0\0-÷â\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0¾\0\0¾êB±À\0\02IDATx^İİ°ìXğ»ßÚ¶mÛ¶mÛ¨µmÛ¶m£Ö¶mÛ{¾úš¼ÊËËL2ºwæuU×¾½ƒ$ÿôéş7N¦\'t‘üøã•utÀä¢‹.\nıõWåÿ:OşøãşÎ¯ë\0şüóÏÃwÜşùçŸÊ_:Cşûï¿ğÃ?„o¼1<óÌ3áï¿ÿï:€ÉN;í/ÂEu‚$à^vÙeaî¹çÇ|øé§Ÿâk]	ğK/½¶ß~ûğÕW_UşÒwòï¿ÿÆó¸öÚkÃ\"‹,†rÈ°òÊ+‡7ß|3ß•\0ÿı÷áˆ#guVøóÏ?+íùøãÃQG-wè¡‡===aÔQG\r÷İw_¿+æyä‘°ñÆ‡ç{®O\\…ûŞ{ï…}÷İ7L0Ááÿû_7ÑsÏ=7üşûïİ	0@YÎŞ{ï8à€ğÍ7ßT^i¿°ÊÏ>û,Ü~ûíaıõ×£6ZdAú—.³Ì21 w%À„u*K-µT¸õÖ[ÛÎ*ÜÔo¿ı6<øàƒa·İvÓL3M?—§£Œ2JôÃ]0Kzíµ×Âæ›ovŞyçhÑíÇùùçŸc`=úè£Ã,³ÌYÕ¦ÕëÜX×LP¡O<1Ì?ÿü1Š#ù­Öj…`>úh8ì°ÃÂJ+­Fyä\\0«é…^Øİ\0#óO<ñDXqÅcÀ{çwš\nxÜÌ—_~¿ç†n{î¹g¤^yà•Q«««&_|ñEØvÛm£O¼à‚¢åÕ#n’ É_²VASğšuÖYÃC‘\\Yüñ»à_ı5»™fš)¬¹æš‘:•™×c=ÙÀ	\'œWÀb‹-YAX\rkåx]+\\Âë¯¿³§©¦š*ƒ¦Z‚;Ÿzê©añÅsÌ1G˜xâ‰Ã°Ã›P³Z9fW‹ÌN8á„aİu×\rŸ~úiå•şE¼ûî»Ã:ë¬&Ÿ|ò0Ø`ƒåƒÒJ­»«EpzàÂSL&™d’½óDnÉ%—#8b!Íj™VİõòöÛo‡µ×^;7Üp1z³ê´<ôĞCaÙe—¯÷\Z¸´rü®—_~ù%œsÎ9‘«rçw^å•ùìşûïÆ{ìŞ—VÎ¡ëE°»ç{ÂDM†\Zj¨°Ç{„ß~û­ßßç›o¾0øàƒçƒĞN­œß@!„õÖ[/òW\rcÙ*[“M6Y>\0íÖÊ¹\r¢vöÙgGv0Î8ã„3Î8#¼õÖ[a‡vˆ5Ú\\\0\ZP+¡ôj¨œÛ@#×_}LğÚ6Ú(\\qÅ1•V É NU%³\ZF\Zi¤B>Şxã\r|\0¿úê«aÕUW?í´ÓÆzÂ‚.˜@½:ÖXcÅloÆg,uÃvÜqÇ`íÈ#Œ8î¸ã†UVY%½øzuôÑG+¬°B¤ze«j*|ÀXƒDc„Fˆq¬bŒ1Æƒ:h.e”ÿŞd“MÂAoV¶=TM_xá…ŞX@?KÕË¤B¹eídüñpóÍ7‡»îº+<ıôÓáÅ_ï¾ûnøî»ïbQGª›ÌÔU1´Œ›\0òğÃßEóyş\\û–[n	Ë-·\\éïáF>úè£öÌš\0\n˜¯¿ş:Ö€§r5İtÓÅ”g¥|\ZE±hòÿ^+¬Ô”(•u\Z¤É“½°í¶Û®ßÅª( e‘z;ŞË/¿f=«ÀçPÄ¶\0ì¢Y¨æ Ë<ùä“kö¯\ZQ7ÇEãºÙ´˜>ğÀãû€â†•]ÖŞ?Ì0Ã„%–X\"¶‰¬ ôÍ*£VŒä†qµ`<TÕÒ¾ôÒKcey\'Ñ\n†¥¨ˆ“7×¬B=7•Å¢v\níV·ôşûï‡]wİµcHÔJY}õÕcmÄÊj	Àî”+jlH•wğV+@¶Ùf›¸RÒâFãÃ3Ì0CîçÒÊ²Yœµé¦›FÿÍ¥w¿ıö«ÛwãÇbÄÒ4ÀüŒ»uøá‡ÇeÕl›¥µ:Döl›È\r8W[mµÜÏQ–†nM=õÔ‘! T¬–{{ã7¢[Tä}¶šZhœ¹9ßC\ZØE6×\\sMØl³ÍÚê\nò@I:œKSç£“÷³T\n	º…h7%m&E@cÉ°=¸3Ï<3ßD\ZØr—=ôĞ0Ûl³µ<€•Qş—¿ÌúßDt‡Y!@½ŸµjŒê³zÃ*|ğA?Úg@ÀÔğä²Ç+Rlg­µÖ\n¯¼òJ?ë%uìîèğ}H|=Ô¥•ÊI‰”\'–ûÁÜ¯È£.°Ï>ûDüÖ>ª%ëv(ÈgU¤0àï­.3-uìÃ7İtSX~ùåã‰—¥>µT€™~úéãÅá¹š—Ô1$ŠäyÇÙ·Új«ª‰C\0šŞ›÷»!Vœ`œHâvß}÷8À×hüŒh÷»QYN^\Z`QÑ0†%f	ÕKÜ½ßsÌ1ã<™¶AjVæ{]¨Èıá‡FUÛµdO9å”H•¼WKhæ™gîùı½š|ŒaöÙgïw¸q°ÿvÚi±VÑL‰{$•EÅ¥¬”q‚ØÄ§•UVº°R€œ~úéáùçŸï7^|òÉ\'ÑwšªøÕW_]ye@áĞÆ4e4jª}äzdZÍÖˆ‹5HëóÀ%…\0³éíB-”{jÊZ¥·Nà¸ã‹Ö”pÃfÅÅH½i5±TQ5n\'9\'.càêÌO¸¦jã§µ”Ñ¨®m¸á†qÀÏ\r«&5V”1®	$Q2ï`yŠ²è°üÍa}!Æ¡øóä¼€mè„uÓûï¿?®««LL¬¨š0nº³šå&R`€Šá„õL½ Cü«‘$Ñ:ëô{S²\0›ÂdqÉ6+àp;²¾]vÙ%&J#é>S×nbHÀå¯ÕšWSæÚªììƒˆm€Õ”Kprü¬Q¦ô^±¾’,À’¼9»¯Ã\nC÷|òÉpÛm·EëTG1„K@MÅFS¦dšH.À(Îå—_óó²<3nb\0EË¦·$°Ìïºë®«ê²œ·×d¨ÒÌ\0ğ\nX@md5\0°ƒÈFÖXcÒ~WÎÏŸa}é²’Xl`8ÙÚE;e\0€ñC|Q”,]õ©dG\"i\'K²\0£˜fˆkEıVK\0óM÷Ş{o˜wŞyK+šzop=’˜\ZBé3€åïòõ2®AF†¬kİtšå&ÒQ\0sâè‡l-}ByŠŠaRÛN	hyÒQ\0ëğâxE©0²-¨%„½“%0Ftşùç÷>À–¸_™	˜I\'4Ö¸“N—,À}Æ\"¸E”¢Â¹ª“éE4®$0ã0wQ34¼—ÑzŠjÖöÖ>Iƒ™§Æóe5Ê\Z²’x®¹æŠq&*û·ÕxS˜&1Æ·ì­Y‰\0ëım_R–:r%İ\"Rv;4“kPkP|ªììá‡z/¼p,Ì§Ûó˜”t¹Y‰\0›cH¾¸š¢eÊ­*9¶[,o\0/¹†\r6Ø ‚Îk7±Òj…,•µX éë\0ÒÈ;H¢¢¯æ&?İ-=2#ZÉuØ§¡†Ì×\Z.©Å÷%Zúl\n@ÍHX).ï ‰¢fÚ\"\n9İ\"h§‘-Vš\\GºeÄX4Ò×™V\0«ıÚ°ØŒôà²yH+ÿ«xŞM\"ÃTL×»s\rü«òkB/¦Šöm`Uf+šÉT{(ïËÓjP£Ù;ÙÛ¢Ã«Y\\ƒ¢9œ´ÕıwÑE­™Xq!üv3µíT&ïËÓŠŞ´‚²ô–°8İ%×ä\ZüJ²O…-±§V·†Õä«Õû+’øĞˆœ/O«V‰Q¤nBçbÎ9çŒç/†”‘D$ËĞÚZµF¾ŒOÉnQ»F¥g‹-¶Èıò´ê6Òfï+AÃLyÚFàüµ½=öØş,Ğ€“Td¯7QìI›ÉN¥F¥\'Í«©á¾l«“…1pÉù«o³èl\rBÊ_k6“ÀB¿4*=æËò¾<­[n¹eG—%³\"35ÄçÜY¡tY2•eâOÑğ	*§	Ú¨ô”™n1°ÑM¢®Ì¤á²\0²o#+e\06#,AiTz’©¥İdÁ\\™\'Q¡_–¸@g2)¯2VÖ‚=uªQé)3îOöf\rµÑe‘u:oAÎ¿ÕòÄÀa‘æB\r	6*=eÊ”üYv\'O\'\nk?›IsàX:yï5½YÄ\"Ô2®ºêªÊ§ê—+¯¼2÷ËÓ*HTtî$10sÌ1ÇD`dafŒ«kğ`#SmçÁ–TŞ—§Õ¨şwŞYùHç\n¦°ôÒKÇRcÂ}Õ}ó„¯¶• Öv$“kæá£=rò¼/O«b<âŞÉ¢ËrÉ%—ÄÁ=–\'ûÌ£f‰p†ÉY{Ş5Ó¤ÑLë¨;Èûò´ºËîv\'‹92İni±â”™Zc³e«iêÆÕnR‰õà\"&á¤İÉ²OÕëmÁpõ	j‚›6QÑ¹ªCèÒä]/õ=8t3Y‰\0+Lç$Q>Í({â:Q4t»Yœ\rÜ¶ñÍlxcº—U\0›.µ= ‰\0µÏ;HZ\rŠĞÖ“ãÑ-	CĞ¨,:G3¾éVRú.[šñ¿$lG*yJ”›Ğ•5IÙ)Â7*£ÕùÙ\n¦\\ä3efEÛdJ®¦Y‰\0søZByJ«¹ˆF!Û.Äì~Òœtn6¶›ájÕ5šw‰ª¢™ynV\"Àü[dÅªÿ¶‹\Z¥ïëÚ„ã›BO™ ^b¿E-ÑúÑÅÀ2øØ¼k¤¨[+Ü‰\0[RòuLÉ;`ZEÖC9d€Gô¶°Ô‹/¾85ÇŸZ®Ák_Yæ	€­U¼?L´¹±Z‘5Qé£âè«\"<ëõ$É„Æ¥~a‘µi×¹-ª±l\rÒVQÒ~\0sòvSëyN«‰‘#å¾\":ÔÑzßk¯½âS¯íGN?> O°\nÖîıEã¹Ü 1ŞVO?€‰W\\®ÕiMÈ£BvQÔnµ(ÒH*<t®¨Ê(C&Æ 0¼kI”õr9ZI­º¦ş\0Ğ°²OÊ“|Èÿ{ó‡ô´ƒ”#­ ¢F¬ë‘((·Öªš%ê‚E+¢é`ÂWÙ4ÍWÕŠ´‰ÚÍ®›t´KXŠ%Óå.²0à²D#©µF¤u­vò?ûì³•oh\0°Oš†EÙ‰â•j\\L»Ü…ï„W×ÅA¿£º–wÎYM6)¶:¦\00ìÚDà‹y¢~‚ÆóspÑVŸ¤š®ój\r»¹V’±U£e,—ªn½õÖ…<ºÉ˜Xº±’wRYµÄü\\‚Ga©Ã¶Ê)vK‚<*«Vá›K\0‚”_ÂJ†şŠTÍW‘Ş³%Ú!Uf\r¸ e¦Ğ“wryÊw[Æ‚Ÿ*W3Ù›d££˜ç~ü…ÎjÖ6¤—‰TÂ1Ï<óD–Ñ®Ì´*À8¶ké*ô´ZrÁà9ê~D´‘Ç\Zpª|²/–™€÷J6¬(ÌÈ2Ëº4ïÃ‹5EÛ9V`\"`(z^NÙe—(È7óæ»¬ˆ2ş˜nŠÊ˜à–WŒğÜ‡“N:)²\n…²9Q=;#¹eŸûĞ¨LXŠ¥ª%STÊ*K´\'ì	<† ¹-~3ïâÜVH¯sp²,~^i’Å6ò.­\"ç¡ÒNpI)€‰è,ç×9¨÷‘ƒĞ2DŸ•-©#ø-õôËp´=.²5OÑ³w\Z—5¾Å_Ê %\rej&yjZÛáÓÛåwÓR\Z`Â’E[–Xöqyêsj‚Œ¥ÍÂ§œrÊHô)nt0nI†å½eıkú¬®‡yèŞÜÀ^ÀDn/Cò»–ŠÒµÚŞ n¦ ‹º	¸j½.©`biy4¸ÁY\\­á¾TVo¶ÌŠãz¸¹Ş—4p\"–š¬	³¸¨Ø[ÊjùjãÉ•Ôš‘h§40Áìèñ,£O~)¥|:nÂ•Séë`VMš8Y—¶È¯…SOö×\n•òz˜ÎíÑ\\x´›ß×Ò2€	KÁ]H,XQüáĞ@Z¥¨Ÿ3ág%&qoûÚjÒR€´‹ä£eÊ€êém­Í(¬yé±æzƒZWX+ºÀ­–¶\0œ`»p`•}ê©§â3\'lQ•‰å˜§\0•Ø`…ÈÂ€êû;ÅZ”ş™>SXhôI\0\0\0\0IEND®B`‚',10.00,13.00,2,20,5,2,'42013631',1,0,0),(6,'OTRO','DDD','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0X\0\0\0d\0\0\0-÷â\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0Â\0\0Â(J€\0\02IDATx^İİ°ìXğ»ßÚ¶mÛ¶mÛ¨µmÛ¶m£Ö¶mÛ{¾úš¼ÊËËL2ºwæuU×¾½ƒ$ÿôéş7N¦\'t‘üøã•utÀä¢‹.\nıõWåÿ:OşøãşÎ¯ë\0şüóÏÃwÜşùçŸÊ_:Cşûï¿ğÃ?„o¼1<óÌ3áï¿ÿï:€ÉN;í/ÂEu‚$à^vÙeaî¹çÇ|øé§Ÿâk]	ğK/½¶ß~ûğÕW_UşÒwòï¿ÿÆó¸öÚkÃ\"‹,†rÈ°òÊ+‡7ß|3ß•\0ÿı÷áˆ#guVøóÏ?+íùøãÃQG-wè¡‡===aÔQG\r÷İw_¿+æyä‘°ñÆ‡ç{®O\\…ûŞ{ï…}÷İ7L0Ááÿû_7ÑsÏ=7üşûïİ	0@YÎŞ{ï8à€ğÍ7ßT^i¿°ÊÏ>û,Ü~ûíaıõ×£6ZdAú—.³Ì21 w%À„u*K-µT¸õÖ[ÛÎ*ÜÔo¿ı6<øàƒa·İvÓL3M?—§£Œ2JôÃ]0Kzíµ×Âæ›ovŞyçhÑíÇùùçŸc`=úè£Ã,³ÌYÕ¦ÕëÜX×LP¡O<1Ì?ÿü1Š#ù­Öj…`>úh8ì°ÃÂJ+­Fyä\\0«é…^Øİ\0#óO<ñDXqÅcÀ{çwš\nxÜÌ—_~¿ç†n{î¹g¤^yà•Q«««&_|ñEØvÛm£O¼à‚¢åÕ#n’ É_²VASğšuÖYÃC‘\\Yüñ»à_ı5»™fš)¬¹æš‘:•™×c=ÙÀ	\'œWÀb‹-YAX\rkåx]+\\Âë¯¿³§©¦š*ƒ¦Z‚;Ÿzê©añÅsÌ1G˜xâ‰Ã°Ã›P³Z9fW‹ÌN8á„aİu×\rŸ~úiå•şE¼ûî»Ã:ë¬&Ÿ|ò0Ø`ƒåƒÒJ­»«EpzàÂSL&™d’½óDnÉ%—#8b!Íj™VİõòöÛo‡µ×^;7Üp1z³ê´<ôĞCaÙe—¯÷\Z¸´rü®—_~ù%œsÎ9‘«rçw^å•ùìşûïÆ{ìŞ—VÎ¡ëE°»ç{ÂDM†\Zj¨°Ç{„ß~û­ßßç›o¾0øàƒçƒĞN­œß@!„õÖ[/òW\rcÙ*[“M6Y>\0íÖÊ¹\r¢vöÙgGv0Î8ã„3Î8#¼õÖ[a‡vˆ5Ú\\\0\ZP+¡ôj¨œÛ@#×_}LğÚ6Ú(\\qÅ1•V É NU%³\ZF\Zi¤B>Şxã\r|\0¿úê«aÕUW?í´ÓÆzÂ‚.˜@½:ÖXcÅloÆg,uÃvÜqÇ`íÈ#Œ8î¸ã†UVY%½øzuôÑG+¬°B¤ze«j*|ÀXƒDc„Fˆq¬bŒ1Æƒ:h.e”ÿŞd“MÂAoV¶=TM_xá…ŞX@?KÕË¤B¹eídüñpóÍ7‡»îº+<ıôÓáÅ_ï¾ûnøî»ïbQGª›ÌÔU1´Œ›\0òğÃßEóyş\\û–[n	Ë-·\\éïáF>úè£öÌš\0\n˜¯¿ş:Ö€§r5İtÓÅ”g¥|\ZE±hòÿ^+¬Ô”(•u\Z¤É“½°í¶Û®ßÅª( e‘z;ŞË/¿f=«ÀçPÄ¶\0ì¢Y¨æ Ë<ùä“kö¯\ZQ7ÇEãºÙ´˜>ğÀãû€â†•]ÖŞ?Ì0Ã„%–X\"¶‰¬ ôÍ*£VŒä†qµ`<TÕÒ¾ôÒKcey\'Ñ\n†¥¨ˆ“7×¬B=7•Å¢v\níV·ôşûï‡]wİµcHÔJY}õÕcmÄÊj	Àî”+jlH•wğV+@¶Ùf›¸RÒâFãÃ3Ì0CîçÒÊ²Yœµé¦›FÿÍ¥w¿ıö«ÛwãÇbÄÒ4ÀüŒ»uøá‡ÇeÕl›¥µ:Döl›È\r8W[mµÜÏQ–†nM=õÔ‘! T¬–{{ã7¢[Tä}¶šZhœ¹9ßC\ZØE6×\\sMØl³ÍÚê\nò@I:œKSç£“÷³T\n	º…h7%m&E@cÉ°=¸3Ï<3ßD\ZØr—=ôĞ0Ûl³µ<€•Qş—¿ÌúßDt‡Y!@½ŸµjŒê³zÃ*|ğA?Úg@ÀÔğä²Ç+Rlg­µÖ\n¯¼òJ?ë%uìîèğ}H|=Ô¥•ÊI‰”\'–ûÁÜ¯È£.°Ï>ûDüÖ>ª%ëv(ÈgU¤0àï­.3-uìÃ7İtSX~ùåã‰—¥>µT€™~úéãÅá¹š—Ô1$ŠäyÇÙ·Új«ª‰C\0šŞ›÷»!Vœ`œHâvß}÷8À×hüŒh÷»QYN^\Z`QÑ0†%f	ÕKÜ½ßsÌ1ã<™¶AjVæ{]¨Èıá‡FUÛµdO9å”H•¼WKhæ™gîùı½š|ŒaöÙgïw¸q°ÿvÚi±VÑL‰{$•EÅ¥¬”q‚ØÄ§•UVº°R€œ~úéáùçŸï7^|òÉ\'ÑwšªøÕW_]ye@áĞÆ4e4jª}äzdZÍÖˆ‹5HëóÀ%…\0³éíB-”{jÊZ¥·Nà¸ã‹Ö”pÃfÅÅH½i5±TQ5n\'9\'.càêÌO¸¦jã§µ”Ñ¨®m¸á†qÀÏ\r«&5V”1®	$Q2ï`yŠ²è°üÍa}!Æ¡øóä¼€mè„uÓûï¿?®««LL¬¨š0nº³šå&R`€Šá„õL½ Cü«‘$Ñ:ëô{S²\0›ÂdqÉ6+àp;²¾]vÙ%&J#é>S×nbHÀå¯ÕšWSæÚªììƒˆm€Õ”Kprü¬Q¦ô^±¾’,À’¼9»¯Ã\nC÷|òÉpÛm·EëTG1„K@MÅFS¦dšH.À(Îå—_óó²<3nb\0EË¦·$°Ìïºë®«ê²œ·×d¨ÒÌ\0ğ\nX@md5\0°ƒÈFÖXcÒ~WÎÏŸa}é²’Xl`8ÙÚE;e\0€ñC|Q”,]õ©dG\"i\'K²\0£˜fˆkEıVK\0óM÷Ş{o˜wŞyK+šzop=’˜\ZBé3€åïòõ2®AF†¬kİtšå&ÒQ\0sâè‡l-}ByŠŠaRÛN	hyÒQ\0ëğâxE©0²-¨%„½“%0Ftşùç÷>À–¸_™	˜I\'4Ö¸“N—,À}Æ\"¸E”¢Â¹ª“éE4®$0ã0wQ34¼—ÑzŠjÖöÖ>Iƒ™§Æóe5Ê\Z²’x®¹æŠq&*û·ÕxS˜&1Æ·ì­Y‰\0ëım_R–:r%İ\"Rv;4“kPkP|ªììá‡z/¼p,Ì§Ûó˜”t¹Y‰\0›cH¾¸š¢eÊ­*9¶[,o\0/¹†\r6Ø ‚Îk7±Òj…,•µX éë\0ÒÈ;H¢¢¯æ&?İ-=2#ZÉuØ§¡†Ì×\Z.©Å÷%Zúl\n@ÍHX).ï ‰¢fÚ\"\n9İ\"h§‘-Vš\\GºeÄX4Ò×™V\0«ıÚ°ØŒôà²yH+ÿ«xŞM\"ÃTL×»s\rü«òkB/¦Šöm`Uf+šÉT{(ïËÓjP£Ù;ÙÛ¢Ã«Y\\ƒ¢9œ´ÕıwÑE­™Xq!üv3µíT&ïËÓŠŞ´‚²ô–°8İ%×ä\ZüJ²O…-±§V·†Õä«Õû+’øĞˆœ/O«V‰Q¤nBçbÎ9çŒç/†”‘D$ËĞÚZµF¾ŒOÉnQ»F¥g‹-¶Èıò´ê6Òfï+AÃLyÚFàüµ½=öØş,Ğ€“Td¯7QìI›ÉN¥F¥\'Í«©á¾l«“…1pÉù«o³èl\rBÊ_k6“ÀB¿4*=æËò¾<­[n¹eG—%³\"35ÄçÜY¡tY2•eâOÑğ	*§	Ú¨ô”™n1°ÑM¢®Ì¤á²\0²o#+e\06#,AiTz’©¥İdÁ\\™\'Q¡_–¸@g2)¯2VÖ‚=uªQé)3îOöf\rµÑe‘u:oAÎ¿ÕòÄÀa‘æB\r	6*=eÊ”üYv\'O\'\nk?›IsàX:yï5½YÄ\"Ô2®ºêªÊ§ê—+¯¼2÷ËÓ*HTtî$10sÌ1ÇD`dafŒ«kğ`#SmçÁ–TŞ—§Õ¨şwŞYùHç\n¦°ôÒKÇRcÂ}Õ}ó„¯¶• Öv$“kæá£=rò¼/O«b<âŞÉ¢ËrÉ%—ÄÁ=–\'ûÌ£f‰p†ÉY{Ş5Ó¤ÑLë¨;Èûò´ºËîv\'‹92İni±â”™Zc³e«iêÆÕnR‰õà\"&á¤İÉ²OÕëmÁpõ	j‚›6QÑ¹ªCèÒä]/õ=8t3Y‰\0+Lç$Q>Í({â:Q4t»Yœ\rÜ¶ñÍlxcº—U\0›.µ= ‰\0µÏ;HZ\rŠĞÖ“ãÑ-	CĞ¨,:G3¾éVRú.[šñ¿$lG*yJ”›Ğ•5IÙ)Â7*£ÕùÙ\n¦\\ä3efEÛdJ®¦Y‰\0søZByJ«¹ˆF!Û.Äì~Òœtn6¶›ájÕ5šw‰ª¢™ynV\"Àü[dÅªÿ¶‹\Z¥ïëÚ„ã›BO™ ^b¿E-ÑúÑÅÀ2øØ¼k¤¨[+Ü‰\0[RòuLÉ;`ZEÖC9d€Gô¶°Ô‹/¾85ÇŸZ®Ák_Yæ	€­U¼?L´¹±Z‘5Qé£âè«\"<ëõ$É„Æ¥~a‘µi×¹-ª±l\rÒVQÒ~\0sòvSëyN«‰‘#å¾\":ÔÑzßk¯½âS¯íGN?> O°\nÖîıEã¹Ü 1ŞVO?€‰W\\®ÕiMÈ£BvQÔnµ(ÒH*<t®¨Ê(C&Æ 0¼kI”õr9ZI­º¦ş\0Ğ°²OÊ“|Èÿ{ó‡ô´ƒ”#­ ¢F¬ë‘((·Öªš%ê‚E+¢é`ÂWÙ4ÍWÕŠ´‰ÚÍ®›t´KXŠ%Óå.²0à²D#©µF¤u­vò?ûì³•oh\0°Oš†EÙ‰â•j\\L»Ü…ï„W×ÅA¿£º–wÎYM6)¶:¦\00ìÚDà‹y¢~‚ÆóspÑVŸ¤š®ój\r»¹V’±U£e,—ªn½õÖ…<ºÉ˜Xº±’wRYµÄü\\‚Ga©Ã¶Ê)vK‚<*«Vá›K\0‚”_ÂJ†şŠTÍW‘Ş³%Ú!Uf\r¸ e¦Ğ“wryÊw[Æ‚Ÿ*W3Ù›d££˜ç~ü…ÎjÖ6¤—‰TÂ1Ï<óD–Ñ®Ì´*À8¶ké*ô´ZrÁà9ê~D´‘Ç\Zpª|²/–™€÷J6¬(ÌÈ2Ëº4ïÃ‹5EÛ9V`\"`(z^NÙe—(È7óæ»¬ˆ2ş˜nŠÊ˜à–WŒğÜ‡“N:)²\n…²9Q=;#¹eŸûĞ¨LXŠ¥ª%STÊ*K´\'ì	<† ¹-~3ïâÜVH¯sp²,~^i’Å6ò.­\"ç¡ÒNpI)€‰è,ç×9¨÷‘ƒĞ2DŸ•-©#ø-õôËp´=.²5OÑ³w\Z—5¾Å_Ê %\rej&yjZÛáÓÛåwÓR\Z`Â’E[–Xöqyêsj‚Œ¥ÍÂ§œrÊHô)nt0nI†å½eıkú¬®‡yèŞÜÀ^ÀDn/Cò»–ŠÒµÚŞ n¦ ‹º	¸j½.©`biy4¸ÁY\\­á¾TVo¶ÌŠãz¸¹Ş—4p\"–š¬	³¸¨Ø[ÊjùjãÉ•Ôš‘h§40Áìèñ,£O~)¥|:nÂ•Séë`VMš8Y—¶È¯…SOö×\n•òz˜ÎíÑ\\x´›ß×Ò2€	KÁ]H,XQüáĞ@Z¥¨Ÿ3ág%&qoûÚjÒR€´‹ä£eÊ€êém­Í(¬yé±æzƒZWX+ºÀ­–¶\0œ`»p`•}ê©§â3\'lQ•‰å˜§\0•Ø`…ÈÂ€êû;ÅZ”ş™>SXhôI\0\0\0\0IEND®B`‚',15.00,41.00,1,20,5,1,'',1,0,0);

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

insert  into `proveedor`(`documento`,`razon`,`telefono`,`direccion`,`fechaRegistro`,`email`,`estado`) values ('20490253867','ITDECSA','245844','AV LA CULTURA NÂ° 772','2015-07-01','informes@itdecsa.com',0),('45454545454','CUSCO HOSTING','44444444','CUSCO PERU','2015-07-01','cuscohos@hotmail.com',1);

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

insert  into `tipodescuento`(`id`,`nombre`,`porcentaje`,`estado`) values (1,'DESCUENTO NAVIDEÃ‘O',10,0),(2,'DESCUENTO DE 10%',10,0),(3,'DESCUENTO 02',4,0),(4,'DESCUENTO 03 ',12,0),(5,'DESCEUNTO 05',13,0),(6,'FIESTAS PATRIAAS',8,0);

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

insert  into `usuario`(`dni`,`nombre`,`apaterno`,`amaterno`,`sexo`,`nick`,`pass`,`telefono`,`direccion`,`nacimiento`,`privilegio`,`estado`) values (40494250,'EDGARD','RAYME','QUISPE','M','edgard','1234','45454545','AV. LA CULTURA NÂ° 772','2015-06-30',0,0);

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
