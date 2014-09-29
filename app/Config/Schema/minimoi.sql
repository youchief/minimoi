/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50534
 Source Host           : localhost
 Source Database       : minimoi

 Target Server Type    : MySQL
 Target Server Version : 50534
 File Encoding         : utf-8

 Date: 09/17/2014 14:25:08 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `bons`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `bons`
-- ----------------------------
BEGIN;
INSERT INTO `bons` VALUES ('1', '2014-09-17 09:38:27', '2014-09-17 11:23:49', '3245234523', '200', 'petite figurine ', '2014-09-17', 'USED'), ('2', '2014-09-17 11:27:41', null, '3245234524', '400', 'petite figurine ', '2014-09-17', 'WAITING'), ('3', '2014-09-17 11:28:02', '2014-09-17 11:32:01', '3245234522', '100', 'petite figurine ', '2014-09-17', 'USED');
COMMIT;

-- ----------------------------
--  Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `groups`
-- ----------------------------
BEGIN;
INSERT INTO `groups` VALUES ('1', 'admin'), ('2', 'sales');
COMMIT;

-- ----------------------------
--  Table structure for `order_lines`
-- ----------------------------
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

-- ----------------------------
--  Table structure for `orders`
-- ----------------------------
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

-- ----------------------------
--  Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `products`
-- ----------------------------
BEGIN;
INSERT INTO `products` VALUES ('1', '1. Mini â€“ 1/15', 'Scan et impression 3d\r\nVotre MimiMoi en format Large 12.5cm', '299'), ('2', '2. Small â€“ 1/12', 'Scan et impression 3d\r\n\r\nVotre MimiMoi en format Small 15cm', '349'), ('3', '3. Medium â€“ 1/10', 'Scan et impression 3d\r\n\r\nVotre MimiMoi en format Medium 18cm', '399');
COMMIT;

-- ----------------------------
--  Table structure for `reservations`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `reservations`
-- ----------------------------
BEGIN;
INSERT INTO `reservations` VALUES ('1', '2014-09-10 13:18:00', '2014-09-10 13:20:00', '', '', '', null, '', '', '', 'FREE'), ('2', '2014-09-11 13:26:00', '2014-09-11 14:26:00', 'Cyril', 'Hirschi', 'Ch de la cure 12', '1003', 'Lausanne', '0123123123123', '12938471293487', 'RESERVED'), ('3', '2014-09-12 15:46:00', '2014-09-12 16:46:00', '', '', '', null, '', '', '', 'FREE'), ('4', '2014-09-15 15:47:00', '2014-09-17 15:47:00', '', '', '', null, '', '', '', 'FREE');
COMMIT;

-- ----------------------------
--  Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_users_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `users`
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('8', 'admin', '$2a$10$QQ4N4stIW2X8CByoGuDGdu0DpIGLAvvquLKVuE5m4.OKEVgMvA4de', '1'), ('9', 'sales', '$2a$10$9wM4fvF17c3sud0Q8WwW3ucXnj.jP1LbjdaAm.XuNOAuOZmzpFw7W', '2');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
