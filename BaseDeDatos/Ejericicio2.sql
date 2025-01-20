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
-- Table `mydb`.`Asignatura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Asignatura` (
  `ID_Asignatura` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ID_Asignatura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Teléfono`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Teléfono` (
  `ID_Telefono` INT NOT NULL,
  `Número` INT(9) NULL,
  PRIMARY KEY (`ID_Telefono`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Profesor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Profesor` (
  `DNI` INT(9) NOT NULL,
  `Nombre` VARCHAR(20) NULL,
  `Tipo_Via` ENUM("Calle", "Avenida") NULL,
  `Nombre_Via` VARCHAR(45) NULL,
  `Numero` INT NULL,
  `Teléfono_ID_Telefono` INT NULL,
  `Coordinador_DNI` INT(9) NULL,
  PRIMARY KEY (`DNI`),
  INDEX `fk_Profesor_Teléfono1_idx` (`Teléfono_ID_Telefono` ASC) VISIBLE,
  INDEX `fk_Profesor_Profesor1_idx` (`Coordinador_DNI` ASC) VISIBLE,
  CONSTRAINT `fk_Profesor_Teléfono1`
    FOREIGN KEY (`Teléfono_ID_Telefono`)
    REFERENCES `mydb`.`Teléfono` (`ID_Telefono`)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Profesor_Profesor1`
    FOREIGN KEY (`Coordinador_DNI`)
    REFERENCES `mydb`.`Profesor` (`DNI`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Normas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Normas` (
  `ID_Norma` INT NOT NULL,
  `Normascol` VARCHAR(45) NULL,
  PRIMARY KEY (`ID_Norma`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Examen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Examen` (
  `ID_Examen` INT NOT NULL,
  `Descripcion` TEXT NULL,
  `Tipo` ENUM("Práctica") NULL,
  `Normas_ID_Norma` INT NOT NULL,
  PRIMARY KEY (`ID_Examen`),
  INDEX `fk_Examen_Normas1_idx` (`Normas_ID_Norma` ASC) VISIBLE,
  CONSTRAINT `fk_Examen_Normas1`
    FOREIGN KEY (`Normas_ID_Norma`)
    REFERENCES `mydb`.`Normas` (`ID_Norma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Preguntas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Preguntas` (
  `ID_Pregunas` INT NOT NULL,
  `Descripcion` TEXT NULL,
  `Examen_ID_Examen` INT NOT NULL,
  PRIMARY KEY (`ID_Pregunas`, `Examen_ID_Examen`),
  INDEX `fk_Preguntas_Examen1_idx` (`Examen_ID_Examen` ASC) VISIBLE,
  CONSTRAINT `fk_Preguntas_Examen1`
    FOREIGN KEY (`Examen_ID_Examen`)
    REFERENCES `mydb`.`Examen` (`ID_Examen`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Imparte:`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Imparte:` (
  `Asignatura_ID_Asignatura` INT UNSIGNED NOT NULL,
  `Profesor_DNI` INT(9) NULL,
  `Año` YEAR(2024) NULL,
  PRIMARY KEY (`Asignatura_ID_Asignatura`, `Profesor_DNI`),
  INDEX `fk_Asignatura_has_Profesor_Profesor1_idx` (`Profesor_DNI` ASC) VISIBLE,
  INDEX `fk_Asignatura_has_Profesor_Asignatura_idx` (`Asignatura_ID_Asignatura` ASC) VISIBLE,
  CONSTRAINT `fk_Asignatura_has_Profesor_Asignatura`
    FOREIGN KEY (`Asignatura_ID_Asignatura`)
    REFERENCES `mydb`.`Asignatura` (`ID_Asignatura`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Asignatura_has_Profesor_Profesor1`
    FOREIGN KEY (`Profesor_DNI`)
    REFERENCES `mydb`.`Profesor` (`DNI`)
    ON DELETE SET NULL
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Crea`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Crea` (
  `Examen_ID_Examen` INT NOT NULL,
  `Profesor_DNI` INT(9) NULL,
  `Asignatura_ID_Asignatura` INT NOT NULL,
  PRIMARY KEY (`Examen_ID_Examen`, `Asignatura_ID_Asignatura`),
  INDEX `fk_Examen_has_Profesor_Profesor1_idx` (`Profesor_DNI` ASC) VISIBLE,
  INDEX `fk_Examen_has_Profesor_Examen1_idx` (`Examen_ID_Examen` ASC) VISIBLE,
  INDEX `fk_Examen_has_Profesor_Asignatura1_idx` (`Asignatura_ID_Asignatura` ASC) VISIBLE,
  CONSTRAINT `fk_Examen_has_Profesor_Examen1`
    FOREIGN KEY (`Examen_ID_Examen`)
    REFERENCES `mydb`.`Examen` (`ID_Examen`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Examen_has_Profesor_Profesor1`
    FOREIGN KEY (`Profesor_DNI`)
    REFERENCES `mydb`.`Profesor` (`DNI`)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Examen_has_Profesor_Asignatura1`
    FOREIGN KEY (`Asignatura_ID_Asignatura`)
    REFERENCES `mydb`.`Asignatura` (`ID_Asignatura`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
