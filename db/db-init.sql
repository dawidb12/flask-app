CREATE DATABASE IF NOT EXISTS `baza_uzytkownikow`;
USE `baza_uzytkownikow`;

CREATE TABLE IF NOT EXISTS `accounts` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`username` varchar(50) NOT NULL,
	`password` varchar(255) NOT NULL,
	`email` varchar(100) NOT NULL,
	`organisation` varchar(100) NOT NULL,
	`address` varchar(100) NOT NULL,
	`city` varchar(100) NOT NULL,
	`state` varchar(100) NOT NULL,
	`country` varchar(100) NOT NULL,
	`postalcode` varchar(100) NOT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
