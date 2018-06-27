/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.19 : Database - loginmanage
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`loginmanage` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `loginmanage`;

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `pId` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `pName` varchar(50) NOT NULL COMMENT '产品名称',
  `pCount` int(5) NOT NULL COMMENT '库存数量',
  `price` int(5) NOT NULL COMMENT '价格',
  `img` varchar(50) DEFAULT NULL COMMENT '商品配图',
  `desc` text COMMENT '商品描述',
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`pId`,`pName`,`pCount`,`price`,`img`,`desc`) values (00000000000000000001,'焦糖奶香的 New Balance 高质感联名鞋款',491,210,'images/shoe.jpg','New Balance 和 J.Crew 带来这款全新的联名鞋款，选用 New Balance 997 的创作雏形，宛如牛奶糖般的焦糖色泽作主配色，以及贯穿深棕色和奶油色系添增分明层次，以高规格的美制水准搭配牛巴革、麂皮和皮革等上乘材质作为鞋身用料，质感满满。'),(00000000000000000002,'aritzia半身裙',306,519,'images/close.jpg','圆领剪裁，展露性感锁骨。'),(00000000000000000003,'10度学生控油洗面奶女男深层清洁补水保湿收缩毛孔温和泡沫洁面乳',200,39,'images/water.jpg','海藻深层补水洁颜乳'),(00000000000000000004,'Midea/美的 BCD-525WKPZM(E)对开门电冰箱双开门变频家用风冷无霜',60,3199,'images/airCondition.jpg','Midea/美的 BCD-525WKPZM(E)对开门电冰箱双开门变频家用风冷无霜'),(00000000000000000005,'双面佩戴皮带 Levis美国正品代购 牛仔复古牛皮李维斯针扣男腰带',12,168,'images/belt.jpg','双面佩戴皮带 Levis美国正品代购 牛仔复古牛皮李维斯针扣男腰带'),(00000000000000000006,'Royalstar/荣事达 GL1800H玻璃电热烧水壶家用透明全自动断电保温',206,109,'images/coner.jpg','Royalstar/荣事达 GL1800H玻璃电热烧水壶家用透明全自动断电保温');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` bigint(20) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `password` varchar(16) NOT NULL COMMENT '密码',
  `nick` varchar(50) NOT NULL COMMENT '用户昵称',
  `account` int(5) NOT NULL DEFAULT '10000' COMMENT '用户账户余额',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
