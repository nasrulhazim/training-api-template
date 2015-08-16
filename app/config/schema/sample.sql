/*
SQLyog Ultimate v9.63 
MySQL - 5.6.12-log : Database - training_development
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`status`,`created_at`,`updated_at`) values (1,'Nasrul Hazim','nasrulhazim.m@gmail.com','81dc9bdb52d04dc20036dbd8313ed055',1,'2015-08-03 09:27:25','2015-08-03 09:27:25'),(2,'Tuan Norhafizah','tn_hafizah@yahoo.com','e10adc3949ba59abbe56e057f20f883e',1,'2015-08-03 09:27:59','2015-08-03 09:27:59'),(3,'kasim','kasim@gmail.com','81dc9bdb52d04dc20036dbd8313ed055',0,'2015-08-03 15:00:40','2015-08-03 15:00:40'),(4,'aminah','aminah@gmail.com','81dc9bdb52d04dc20036dbd8313ed055',1,'2015-08-03 15:01:01','2015-08-03 15:01:01'),(5,'hassan','hassan@yahoo.com','81dc9bdb52d04dc20036dbd8313ed055',0,'2015-08-03 15:02:09','2015-08-03 15:02:09'),(6,'najib','najib@menteri.gov.my','81dc9bdb52d04dc20036dbd8313ed055',1,'2015-08-09 10:25:46','2015-08-09 10:25:46'),(7,'ahmad maslan','ahmad.maslan@gmail.com','81dc9bdb52d04dc20036dbd8313ed055',0,'2015-08-09 10:26:21','2015-08-09 10:26:21'),(8,'test','VA@va.com',NULL,0,'2015-08-15 19:42:35','2015-08-15 19:42:35');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
