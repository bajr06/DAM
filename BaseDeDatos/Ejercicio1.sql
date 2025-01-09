-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Tabla `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `Nombre` VARCHAR(20) NOT NULL,
  `Apeliido` VARCHAR(20) NOT NULL,
  `RFC` INT NOT NULL,
  `Dirección` VARCHAR(45) NOT NULL,
  `Fecha de Nacimiento` DATETIME NOT NULL,
  PRIMARY KEY (`Nombre`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabla `mydb`.`Proveedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Proveedores` (
  `NIE` INT NOT NULL,
  `Nombre` VARCHAR(20) NOT NULL,
  `Dirección` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`NIE`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabla `mydb`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Producto` (
  `Código` INT NOT NULL,
  `Nombre` VARCHAR(20) NOT NULL,
  `Precio_Unitario` FLOAT NOT NULL,
  `Proveedores_NIE` INT NOT NULL,
  PRIMARY KEY (`Código`, `Proveedores_NIE`),
  INDEX `fk_Producto_Proveedores1_idx` (`Proveedores_NIE` ASC) VISIBLE,
  CONSTRAINT `fk_Producto_Proveedores1`
    FOREIGN KEY (`Proveedores_NIE`)
    REFERENCES `mydb`.`Proveedores` (`NIE`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabla `mydb`.`Compra`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Compra` (
  `Cliente_Nombre` VARCHAR(20) NOT NULL,
  `Producto_Código` INT NOT NULL,
  PRIMARY KEY (`Cliente_Nombre`, `Producto_Código`),
  INDEX `fk_Cliente_has_Producto_Producto1_idx` (`Producto_Código` ASC) VISIBLE,
  INDEX `fk_Cliente_has_Producto_Cliente_idx` (`Cliente_Nombre` ASC) VISIBLE,
  CONSTRAINT `fk_Cliente_has_Producto_Cliente`
    FOREIGN KEY (`Cliente_Nombre`)
    REFERENCES `mydb`.`Cliente` (`Nombre`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Cliente_has_Producto_Producto1`
    FOREIGN KEY (`Producto_Código`)
    REFERENCES `mydb`.`Producto` (`Código`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Tabla `mydb`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP);

USE `mydb` ;

-- -----------------------------------------------------
-- Placeholder table for view `mydb`.`view1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`view1` (`id` INT);

-- -----------------------------------------------------
-- View `mydb`.`view1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`view1`;
USE `mydb`;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
