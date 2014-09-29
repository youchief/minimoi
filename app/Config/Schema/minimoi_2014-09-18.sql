# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.33)
# Database: minimoi
# Generation Time: 2014-09-18 15:19:20 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table bons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bons`;

CREATE TABLE `bons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `used` datetime DEFAULT NULL,
  `key` varchar(45) NOT NULL,
  `amount` float NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end` date NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `bons` WRITE;
/*!40000 ALTER TABLE `bons` DISABLE KEYS */;

INSERT INTO `bons` (`id`, `created`, `used`, `key`, `amount`, `description`, `end`, `status`)
VALUES
	(1,'2014-09-18 14:25:16',NULL,'17300000',799,'big','2016-09-18','ACTIVE'),
	(2,'2014-09-18 14:25:16',NULL,'17300001',799,'big','2016-09-18','ACTIVE'),
	(3,'2014-09-18 14:25:16',NULL,'17300002',799,'big','2016-09-18','ACTIVE'),
	(4,'2014-09-18 14:25:16',NULL,'17300003',799,'big','2016-09-18','ACTIVE'),
	(5,'2014-09-18 14:25:16',NULL,'17300004',799,'big','2016-09-18','ACTIVE'),
	(6,'2014-09-18 14:25:16',NULL,'17300005',799,'big','2016-09-18','ACTIVE'),
	(7,'2014-09-18 14:25:16',NULL,'17300006',799,'big','2016-09-18','ACTIVE'),
	(8,'2014-09-18 14:25:16',NULL,'17300007',799,'big','2016-09-18','ACTIVE'),
	(9,'2014-09-18 14:25:40',NULL,'17300008',499,'large','2016-09-18','ACTIVE'),
	(10,'2014-09-18 14:25:40',NULL,'17300009',499,'large','2016-09-18','ACTIVE'),
	(11,'2014-09-18 14:25:40',NULL,'17300010',499,'large','2016-09-18','ACTIVE'),
	(12,'2014-09-18 14:25:40',NULL,'17300011',499,'large','2016-09-18','ACTIVE'),
	(13,'2014-09-18 14:25:40',NULL,'17300012',499,'large','2016-09-18','ACTIVE'),
	(14,'2014-09-18 14:25:40',NULL,'17300013',499,'large','2016-09-18','ACTIVE'),
	(15,'2014-09-18 14:25:40',NULL,'17300014',499,'large','2016-09-18','ACTIVE'),
	(16,'2014-09-18 14:25:40',NULL,'17300015',499,'large','2016-09-18','ACTIVE'),
	(17,'2014-09-18 14:26:01',NULL,'17300016',399,'medium','2016-09-18','ACTIVE'),
	(18,'2014-09-18 14:26:01',NULL,'17300017',399,'medium','2016-09-18','ACTIVE'),
	(19,'2014-09-18 14:26:01',NULL,'17300018',399,'medium','2016-09-18','ACTIVE'),
	(20,'2014-09-18 14:26:01',NULL,'17300019',399,'medium','2016-09-18','ACTIVE'),
	(21,'2014-09-18 14:26:01',NULL,'17300020',399,'medium','2016-09-18','ACTIVE'),
	(22,'2014-09-18 14:26:01',NULL,'17300021',399,'medium','2016-09-18','ACTIVE'),
	(23,'2014-09-18 14:26:01',NULL,'17300022',399,'medium','2016-09-18','ACTIVE'),
	(24,'2014-09-18 14:26:01',NULL,'17300023',399,'medium','2016-09-18','ACTIVE'),
	(25,'2014-09-18 14:26:01',NULL,'17300024',399,'medium','2016-09-18','ACTIVE'),
	(26,'2014-09-18 14:26:01',NULL,'17300025',399,'medium','2016-09-18','ACTIVE'),
	(27,'2014-09-18 14:26:01',NULL,'17300026',399,'medium','2016-09-18','ACTIVE'),
	(28,'2014-09-18 14:26:01',NULL,'17300027',399,'medium','2016-09-18','ACTIVE'),
	(29,'2014-09-18 14:26:01',NULL,'17300028',399,'medium','2016-09-18','ACTIVE'),
	(30,'2014-09-18 14:26:01',NULL,'17300029',399,'medium','2016-09-18','ACTIVE'),
	(31,'2014-09-18 14:26:01',NULL,'17300030',399,'medium','2016-09-18','ACTIVE'),
	(32,'2014-09-18 14:26:01',NULL,'17300031',399,'medium','2016-09-18','ACTIVE'),
	(33,'2014-09-18 14:26:01',NULL,'17300032',399,'medium','2016-09-18','ACTIVE'),
	(34,'2014-09-18 14:26:01',NULL,'17300033',399,'medium','2016-09-18','ACTIVE'),
	(35,'2014-09-18 14:26:01',NULL,'17300034',399,'medium','2016-09-18','ACTIVE'),
	(36,'2014-09-18 14:26:01',NULL,'17300035',399,'medium','2016-09-18','ACTIVE'),
	(37,'2014-09-18 14:26:26',NULL,'17300036',349,'small','2016-09-18','ACTIVE'),
	(38,'2014-09-18 14:26:26',NULL,'17300037',349,'small','2016-09-18','ACTIVE'),
	(39,'2014-09-18 14:26:26',NULL,'17300038',349,'small','2016-09-18','ACTIVE'),
	(40,'2014-09-18 14:26:26',NULL,'17300039',349,'small','2016-09-18','ACTIVE'),
	(41,'2014-09-18 14:26:26',NULL,'17300040',349,'small','2016-09-18','ACTIVE'),
	(42,'2014-09-18 14:26:26',NULL,'17300041',349,'small','2016-09-18','ACTIVE'),
	(43,'2014-09-18 14:26:26',NULL,'17300042',349,'small','2016-09-18','ACTIVE'),
	(44,'2014-09-18 14:26:26',NULL,'17300043',349,'small','2016-09-18','ACTIVE'),
	(45,'2014-09-18 14:26:39',NULL,'17300044',299,'mini','2016-09-18','ACTIVE'),
	(46,'2014-09-18 14:26:39',NULL,'17300045',299,'mini','2016-09-18','ACTIVE'),
	(47,'2014-09-18 14:26:39',NULL,'17300046',299,'mini','2016-09-18','ACTIVE'),
	(48,'2014-09-18 14:26:39',NULL,'17300047',299,'mini','2016-09-18','ACTIVE'),
	(49,'2014-09-18 14:26:39',NULL,'17300048',299,'mini','2016-09-18','ACTIVE'),
	(50,'2014-09-18 14:26:39',NULL,'17300049',299,'mini','2016-09-18','ACTIVE'),
	(51,'2014-09-18 14:26:39',NULL,'17300050',299,'mini','2016-09-18','ACTIVE'),
	(52,'2014-09-18 14:26:39',NULL,'17300051',299,'mini','2016-09-18','ACTIVE');

/*!40000 ALTER TABLE `bons` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;

INSERT INTO `groups` (`id`, `name`)
VALUES
	(1,'admin'),
	(2,'sales');

/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table order_lines
# ------------------------------------------------------------

DROP TABLE IF EXISTS `order_lines`;

CREATE TABLE `order_lines` (
  `id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_lines_products1_idx` (`product_id`),
  KEY `fk_order_lines_orders1_idx` (`order_id`),
  CONSTRAINT `fk_order_lines_products1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_lines_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table orders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `bon_id` varchar(45) DEFAULT NULL,
  `bon_key` varchar(45) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `reservation_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orders_reservations1_idx` (`reservation_id`),
  CONSTRAINT `fk_orders_reservations1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `name`, `description`, `price`)
VALUES
	(1,'1. Mini â€“ 1/15','Scan et impression 3d\r\nVotre MimiMoi en format Large 12.5cm',299),
	(2,'2. Small â€“ 1/12','Scan et impression 3d\r\n\r\nVotre MimiMoi en format Small 15cm',349),
	(3,'3. Medium â€“ 1/10','Scan et impression 3d\r\n\r\nVotre MimiMoi en format Medium 18cm',399);

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table reservations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reservations`;

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  `firstanme` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;

INSERT INTO `reservations` (`id`, `from`, `to`, `firstanme`, `lastname`, `address`, `zip`, `city`, `phone`, `code`, `status`)
VALUES
	(1,'2014-09-10 13:18:00','2014-09-10 13:20:00','','','',NULL,'','','','FREE'),
	(2,'2014-09-11 13:26:00','2014-09-11 14:26:00','Cyril','Hirschi','Ch de la cure 12',1003,'Lausanne','0123123123123','12938471293487','RESERVED'),
	(3,'2014-09-12 15:46:00','2014-09-12 16:46:00','','','',NULL,'','','','FREE'),
	(4,'2014-09-15 15:47:00','2014-09-17 15:47:00','','','',NULL,'','','','FREE');

/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_users_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `password`, `group_id`)
VALUES
	(8,'admin','$2a$10$QQ4N4stIW2X8CByoGuDGdu0DpIGLAvvquLKVuE5m4.OKEVgMvA4de',1),
	(9,'sales','$2a$10$9wM4fvF17c3sud0Q8WwW3ucXnj.jP1LbjdaAm.XuNOAuOZmzpFw7W',2);

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
