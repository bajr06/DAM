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
-- Table `mydb`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuario` (
  `ID.Usuario` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(15) NOT NULL,
  `Apellidos` VARCHAR(30) NOT NULL,
  `Password` VARCHAR(10) NOT NULL,
  `E-mail` VARCHAR(320) NOT NULL,
  `Cédula` VARCHAR(9) NOT NULL,
  `Tipo` ENUM('Administrador', 'Jefe') NOT NULL,
  PRIMARY KEY (`ID.Usuario`),
  UNIQUE INDEX `Password_UNIQUE` (`Password` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Equipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Equipo` (
  `Código` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Ubicación` ENUM('INFO1', 'INFO2') NOT NULL,
  `Responsable` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Código`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Hardware`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Hardware` (
  `ID.Hardware` INT NOT NULL AUTO_INCREMENT,
  `Tipo` ENUM('Procesador', 'Gráfica', 'Placa Base') NOT NULL,
  `Bien.Nacional` TINYINT NOT NULL,
  PRIMARY KEY (`ID.Hardware`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Historial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Historial` (
  `ID.Historial` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Fecha.Entrada` DATE NOT NULL,
  `Fecha.Salida` DATE NOT NULL,
  `Observaciones` TEXT NOT NULL,
  `Status` ENUM('En proceso', 'Terminado') NOT NULL,
  `Equipo_Código` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ID.Historial`),
  INDEX `fk_Historial_Equipo1_idx` (`Equipo_Código` ASC) VISIBLE,
  CONSTRAINT `fk_Historial_Equipo1`
    FOREIGN KEY (`Equipo_Código`)
    REFERENCES `mydb`.`Equipo` (`Código`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Software`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Software` (
  `ID.Software` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Tipo` ENUM('Software', 'Programa') NOT NULL,
  PRIMARY KEY (`ID.Software`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Carácteristicas_Software`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Carácteristicas_Software` (
  `ID.Carácterisiticas.S` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Licencia` VARCHAR(20) NOT NULL,
  `Versión` TINYINT(10) NOT NULL,
  `Otros` VARCHAR(45) NOT NULL,
  `Obsevaciones` TEXT NOT NULL,
  PRIMARY KEY (`ID.Carácterisiticas.S`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Características_Hardware`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Características_Hardware` (
  `ID.Carácteristicas.h` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Marcal` ENUM('HP', 'ASUS') NOT NULL,
  `Seria` VARCHAR(16) NOT NULL,
  `Modelo` VARCHAR(20) NOT NULL,
  `Observacion` TEXT(50) NOT NULL,
  PRIMARY KEY (`ID.Carácteristicas.h`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Interviene:`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Interviene:` (
  `Usuario_ID.Usuario` INT UNSIGNED NOT NULL,
  `Equipo_Código` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Usuario_ID.Usuario`, `Equipo_Código`),
  INDEX `fk_Usuario_has_Equipo_Equipo1_idx` (`Equipo_Código` ASC) VISIBLE,
  INDEX `fk_Usuario_has_Equipo_Usuario_idx` (`Usuario_ID.Usuario` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario_has_Equipo_Usuario`
    FOREIGN KEY (`Usuario_ID.Usuario`)
    REFERENCES `mydb`.`Usuario` (`ID.Usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuario_has_Equipo_Equipo1`
    FOREIGN KEY (`Equipo_Código`)
    REFERENCES `mydb`.`Equipo` (`Código`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Posee 1:`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Posee 1:` (
  `Características_Hardware_ID.Carácteristicas.h` INT UNSIGNED NOT NULL,
  `Hardware_ID.Hardware` INT NOT NULL,
  `Interviene:_Usuario_ID.Usuario` INT UNSIGNED NOT NULL,
  `Interviene:_Equipo_Código` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Características_Hardware_ID.Carácteristicas.h`, `Hardware_ID.Hardware`, `Interviene:_Usuario_ID.Usuario`, `Interviene:_Equipo_Código`),
  INDEX `fk_Características_Hardware_has_Hardware_Hardware1_idx` (`Hardware_ID.Hardware` ASC) VISIBLE,
  INDEX `fk_Características_Hardware_has_Hardware_Características__idx` (`Características_Hardware_ID.Carácteristicas.h` ASC) VISIBLE,
  INDEX `fk_Posee 1:_Interviene:1_idx` (`Interviene:_Usuario_ID.Usuario` ASC, `Interviene:_Equipo_Código` ASC) VISIBLE,
  CONSTRAINT `fk_Características_Hardware_has_Hardware_Características_Ha1`
    FOREIGN KEY (`Características_Hardware_ID.Carácteristicas.h`)
    REFERENCES `mydb`.`Características_Hardware` (`ID.Carácteristicas.h`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Características_Hardware_has_Hardware_Hardware1`
    FOREIGN KEY (`Hardware_ID.Hardware`)
    REFERENCES `mydb`.`Hardware` (`ID.Hardware`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Posee 1:_Interviene:1`
    FOREIGN KEY (`Interviene:_Usuario_ID.Usuario` , `Interviene:_Equipo_Código`)
    REFERENCES `mydb`.`Interviene:` (`Usuario_ID.Usuario` , `Equipo_Código`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Posee 2:`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Posee 2:` (
  `Carácteristicas_Software_ID.Carácterisiticas.S` INT UNSIGNED NOT NULL,
  `Software_ID.Software` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Carácteristicas_Software_ID.Carácterisiticas.S`, `Software_ID.Software`),
  INDEX `fk_Carácteristicas_Software_has_Software_Software1_idx` (`Software_ID.Software` ASC) VISIBLE,
  INDEX `fk_Carácteristicas_Software_has_Software_Carácteristicas__idx` (`Carácteristicas_Software_ID.Carácterisiticas.S` ASC) VISIBLE,
  CONSTRAINT `fk_Carácteristicas_Software_has_Software_Carácteristicas_So1`
    FOREIGN KEY (`Carácteristicas_Software_ID.Carácterisiticas.S`)
    REFERENCES `mydb`.`Carácteristicas_Software` (`ID.Carácterisiticas.S`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Carácteristicas_Software_has_Software_Software1`
    FOREIGN KEY (`Software_ID.Software`)
    REFERENCES `mydb`.`Software` (`ID.Software`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
