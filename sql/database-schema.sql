# table schema queries
CREATE DATABASE IF NOT EXISTS `sample_store`;

USE `sample_store`;

CREATE TABLE IF NOT EXISTS `users` (
	`IdUser` INT(11) NOT NULL AUTO_INCREMENT,
	`Username` VARCHAR(100) NOT NULL DEFAULT '',
	`Email` VARCHAR(100) NOT NULL DEFAULT '',
	`Password` VARCHAR(40) NOT NULL DEFAULT '' COMMENT 'SHA-1 algorithm.',
	PRIMARY KEY (`IdUser`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=0;

CREATE TABLE IF NOT EXISTS `products` (
	`IdProduct` INT(11) NOT NULL AUTO_INCREMENT,
	`ProductName` VARCHAR(50) NOT NULL DEFAULT '',
	`Price` INT(5) NOT NULL,
	PRIMARY KEY (`IdProduct`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=0;

CREATE TABLE IF NOT EXISTS `orders` (
	`IdOrder` INT(11) NOT NULL AUTO_INCREMENT,
	`IdUser` INT(11) NOT NULL,
	`IdProduct` INT(11) NOT NULL,
	`TotalAmount` INT(10) NOT NULL,
	PRIMARY KEY (`IdOrder`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=0

CREATE TABLE IF NOT EXISTS `credit_cards` (
	`IdCreditCard` INT(11) NOT NULL AUTO_INCREMENT,
	`IdUser` INT(11) NOT NULL,
	`CardNumber` INT(19) NOT NULL,
	`Cvv` INT(4) NOT NULL,
	`Sold` INT(11) NOT NULL,
  PRIMARY KEY (`IdCreditCard`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=0;

