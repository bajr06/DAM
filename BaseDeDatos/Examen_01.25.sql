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
-- Table `mydb`.`Equipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Equipo` (
  `Código.Equipo` INT UNSIGNED NOT NULL,
  `Ciudad` ENUM("Madrid", "Barcelona", "Sevilla") NULL,
  `Aforo` SMALLINT NOT NULL AUTO_INCREMENT,
  `Año.Fundación` TINYINT NULL,
  `Nombre.Estadio` VARCHAR(30) NULL,
  `Nombre.Equipo` VARCHAR(30) NULL,
  PRIMARY KEY (`Código.Equipo`),
  UNIQUE INDEX `Código.Equipo_UNIQUE` (`Código.Equipo` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Dirección del Presidente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Dirección del Presidente` (
  `ID.Dirección.Presidente` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Tipo.Vía` VARCHAR(15) NOT NULL,
  `Nombre.Via` VARCHAR(25) NOT NULL,
  `Número.Portal` TINYINT NOT NULL,
  PRIMARY KEY (`ID.Dirección.Presidente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Presidente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Presidente` (
  `DNI` VARCHAR(9) NOT NULL,
  `Nombre` VARCHAR(15) NULL,
  `Apellido` VARCHAR(20) NULL,
  `Año.Elección` TINYINT NULL,
  `Equipo_Código.Equipo` INT UNSIGNED NOT NULL,
  `Dirección del Presidente_ID.Dirección.Presidente` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`DNI`),
  INDEX `fk_Presidente_Equipo1_idx` (`Equipo_Código.Equipo` ASC) VISIBLE,
  INDEX `fk_Presidente_Dirección del Presidente1_idx` (`Dirección del Presidente_ID.Dirección.Presidente` ASC) VISIBLE,
  CONSTRAINT `fk_Presidente_Equipo1`
    FOREIGN KEY (`Equipo_Código.Equipo`)
    REFERENCES `mydb`.`Equipo` (`Código.Equipo`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Presidente_Dirección del Presidente1`
    FOREIGN KEY (`Dirección del Presidente_ID.Dirección.Presidente`)
    REFERENCES `mydb`.`Dirección del Presidente` (`ID.Dirección.Presidente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Jugador`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Jugador` (
  `Código.Jugador` INT UNSIGNED NOT NULL,
  `Nombre` VARCHAR(15) NULL,
  `Apellido` VARCHAR(25) NULL,
  `Nacionalidad` ENUM("Española", "Británica", "Portugues") NULL,
  `Fecha.Nacimiento` TINYINT NULL,
  `Posición` ENUM("Defensa", "Delantero", "Portero", "Centrocampista") NULL,
  `Equipo_Código.Equipo` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Código.Jugador`, `Equipo_Código.Equipo`),
  UNIQUE INDEX `Código.Jugador_UNIQUE` (`Código.Jugador` ASC) VISIBLE,
  INDEX `fk_Jugador_Equipo1_idx` (`Equipo_Código.Equipo` ASC) VISIBLE,
  CONSTRAINT `fk_Jugador_Equipo1`
    FOREIGN KEY (`Equipo_Código.Equipo`)
    REFERENCES `mydb`.`Equipo` (`Código.Equipo`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Gol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Gol` (
  `Minuto.gol` SMALLINT NOT NULL,
  `Descrpición` TEXT NULL,
  `Jugador_Código.Jugador` INT UNSIGNED NOT NULL,
  `Jugador_Equipo_Código.Equipo` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Minuto.gol`),
  INDEX `fk_Gol_Jugador1_idx` (`Jugador_Código.Jugador` ASC, `Jugador_Equipo_Código.Equipo` ASC) VISIBLE,
  CONSTRAINT `fk_Gol_Jugador1`
    FOREIGN KEY (`Jugador_Código.Jugador`)
    REFERENCES `mydb`.`Jugador` (`Código.Jugador`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Partido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Partido` (
  `Código.Partido` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Fecha` SMALLINT NULL,
  `Gol.Fuera` TINYINT UNSIGNED NOT NULL,
  `Gol.Casa` TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (`Código.Partido`),
  UNIQUE INDEX `Código.Partido_UNIQUE` (`Código.Partido` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tiene`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tiene` (
  `Gol_Minuto.gol` SMALLINT NOT NULL,
  `Partido_Código.Partido` INT UNSIGNED NOT NULL,
  `Tipo` ENUM("Tiro libre", "Penalti", "Cornet") NULL,
  PRIMARY KEY (`Gol_Minuto.gol`, `Partido_Código.Partido`),
  INDEX `fk_Tiene_Partido1_idx` (`Partido_Código.Partido` ASC) VISIBLE,
  CONSTRAINT `fk_Tiene_Gol1`
    FOREIGN KEY (`Gol_Minuto.gol`)
    REFERENCES `mydb`.`Gol` (`Minuto.gol`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Tiene_Partido1`
    FOREIGN KEY (`Partido_Código.Partido`)
    REFERENCES `mydb`.`Partido` (`Código.Partido`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
