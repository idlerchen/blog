/*
SQLyog Ultimate v8.32 
MySQL - 5.7.21 : Database - blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `blog`;

/*Table structure for table `t_article` */

DROP TABLE IF EXISTS `t_article`;

CREATE TABLE `t_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) NOT NULL,
  `author` varchar(30) NOT NULL,
  `sort` varchar(30) NOT NULL,
  `time` datetime DEFAULT '2017-09-18 00:00:00',
  `star` int(11) DEFAULT '0',
  `comment` int(11) DEFAULT '0',
  `visit` int(11) DEFAULT '0',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_article` */

/*Table structure for table `t_article_delet` */

DROP TABLE IF EXISTS `t_article_delet`;

CREATE TABLE `t_article_delet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `author` varchar(30) NOT NULL,
  `sort` varchar(30) NOT NULL,
  `time` datetime DEFAULT '2017-09-18 00:00:00',
  `star` int(11) DEFAULT '0',
  `comment` int(11) DEFAULT '0',
  `visit` int(11) DEFAULT '0',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_article_delet` */

/*Table structure for table `t_comment` */

DROP TABLE IF EXISTS `t_comment`;

CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `nickname` varchar(30) DEFAULT NULL,
  `content` text,
  `time` datetime DEFAULT '2017-09-18 00:00:00',
  `star` int(11) DEFAULT '0',
  `diss` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `article_id` FOREIGN KEY (`article_id`) REFERENCES `t_article` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_comment` */

/*Table structure for table `t_tag` */

DROP TABLE IF EXISTS `t_tag`;

CREATE TABLE `t_tag` (
  `id` int(11) DEFAULT NULL,
  `tag` varchar(30) DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `t_tag_ibfk_1` FOREIGN KEY (`id`) REFERENCES `t_article` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_tag` */

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'primary_key',
  `user_name` varchar(20) NOT NULL COMMENT 'username',
  `user_password` varchar(20) NOT NULL COMMENT 'password',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

/*Table structure for table `t_visitor` */

DROP TABLE IF EXISTS `t_visitor`;

CREATE TABLE `t_visitor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `web_ip` varchar(50) DEFAULT NULL,
  `host` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_visitor` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
