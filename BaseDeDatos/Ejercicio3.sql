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
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `DNI` VARCHAR(9) NOT NULL,
  `Tipo.cliente` ENUM("A", "B") NULL,
  `Nombre.cliente` VARCHAR(20) NULL,
  `Apellidos.cliente` VARCHAR(90) NULL,
  `Email` VARCHAR(45) NULL,
  `C.P` VARCHAR(5) NULL,
  `Dirección` VARCHAR(100) NULL,
  `Localidad` VARCHAR(45) NULL,
  PRIMARY KEY (`DNI`),
  UNIQUE INDEX `Nombre.cliente_UNIQUE` (`Nombre.cliente` ASC) VISIBLE,
  UNIQUE INDEX `Apellidos.cliente_UNIQUE` (`Apellidos.cliente` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Diseño`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Diseño` (
  `ID.Diseño` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Tamaño.Diseño` SMALLINT NULL,
  `Formato` ENUM("1", "2", "3", "4") NULL,
  `Cliente_DNI` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`ID.Diseño`, `Cliente_DNI`),
  INDEX `fk_Diseño_Cliente1_idx` (`Cliente_DNI` ASC) VISIBLE,
  CONSTRAINT `fk_Diseño_Cliente1`
    FOREIGN KEY (`Cliente_DNI`)
    REFERENCES `mydb`.`Cliente` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cliente_Teléfono`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente_Teléfono` (
  `ID.Cliente.Teléfono` INT NOT NULL,
  `Teléfono` INT(10) NULL,
  `Cliente_DNI` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`ID.Cliente.Teléfono`),
  INDEX `fk_Cliente_Teléfono_Cliente_idx` (`Cliente_DNI` ASC) VISIBLE,
  CONSTRAINT `fk_Cliente_Teléfono_Cliente`
    FOREIGN KEY (`Cliente_DNI`)
    REFERENCES `mydb`.`Cliente` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Producto` (
  `Nombre.Producto` VARCHAR(45) NOT NULL,
  `Descripción` TEXT NULL,
  `Tamaño.Producto` SMALLINT NULL,
  `Acabado` ENUM("1", "2") NULL,
  `Tipo.Papel` ENUM("A", "B", "C") NULL,
  `Impresión` ENUM("X", "Y", "Z") NULL,
  PRIMARY KEY (`Nombre.Producto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Factura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Factura` (
  `N*Factura` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Tipo.Pago` ENUM("Bizum", "Tarjeta") NULL,
  `Importe` DECIMAL(7,3) NULL,
  `Envio` ENUM("Domicilio", "Tienda") NULL,
  PRIMARY KEY (`N*Factura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Departamento` (
  `Nombre.Departamento` VARCHAR(45) NOT NULL,
  `Email` VARCHAR(300) NULL,
  PRIMARY KEY (`Nombre.Departamento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Empleado` (
  `DNI` VARCHAR(9) NOT NULL,
  `Nombre.Empleado` VARCHAR(45) NULL,
  `Apellidos.Empleado` VARCHAR(90) NULL,
  `Email` VARCHAR(300) NULL,
  `Dirección` VARCHAR(100) NULL,
  `Salario` DECIMAL(4,2) NULL,
  `Comisión` TINYINT NULL,
  `Seguridad.Social` VARCHAR(20) NULL,
  `Departamento_Nombre.Departamento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`DNI`),
  UNIQUE INDEX `Apellidos.Empleado_UNIQUE` (`Apellidos.Empleado` ASC) VISIBLE,
  UNIQUE INDEX `Nombre.Empleado_UNIQUE` (`Nombre.Empleado` ASC) VISIBLE,
  INDEX `fk_Empleado_Departamento1_idx` (`Departamento_Nombre.Departamento` ASC) VISIBLE,
  CONSTRAINT `fk_Empleado_Departamento1`
    FOREIGN KEY (`Departamento_Nombre.Departamento`)
    REFERENCES `mydb`.`Departamento` (`Nombre.Departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
COMMENT = '								';


-- -----------------------------------------------------
-- Table `mydb`.`Empleado_Teléfono`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Empleado_Teléfono` (
  `ID.Empleado.Teléfono` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Teléfono` INT(9) NULL,
  `Empleado_DNI` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`ID.Empleado.Teléfono`),
  INDEX `fk_Empleado_Teléfono_Empleado1_idx` (`Empleado_DNI` ASC) VISIBLE,
  CONSTRAINT `fk_Empleado_Teléfono_Empleado1`
    FOREIGN KEY (`Empleado_DNI`)
    REFERENCES `mydb`.`Empleado` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Realiza:`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Realiza:` (
  `Producto_Nombre.Producto` VARCHAR(45) NOT NULL,
  `Empleado_DNI` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`Producto_Nombre.Producto`, `Empleado_DNI`),
  INDEX `fk_Producto_has_Empleado_Empleado1_idx` (`Empleado_DNI` ASC) VISIBLE,
  INDEX `fk_Producto_has_Empleado_Producto1_idx` (`Producto_Nombre.Producto` ASC) VISIBLE,
  CONSTRAINT `fk_Producto_has_Empleado_Producto1`
    FOREIGN KEY (`Producto_Nombre.Producto`)
    REFERENCES `mydb`.`Producto` (`Nombre.Producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_has_Empleado_Empleado1`
    FOREIGN KEY (`Empleado_DNI`)
    REFERENCES `mydb`.`Empleado` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Solicita:`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Solicita:` (
  `Producto_Nombre.Producto` VARCHAR(45) NOT NULL,
  `Factura_N*Factura` INT UNSIGNED NOT NULL,
  `Cliente_DNI` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`Producto_Nombre.Producto`, `Factura_N*Factura`),
  INDEX `fk_Producto_has_Factura_Factura1_idx` (`Factura_N*Factura` ASC) VISIBLE,
  INDEX `fk_Producto_has_Factura_Producto1_idx` (`Producto_Nombre.Producto` ASC) VISIBLE,
  INDEX `fk_Solicita:_Cliente1_idx` (`Cliente_DNI` ASC) VISIBLE,
  CONSTRAINT `fk_Producto_has_Factura_Producto1`
    FOREIGN KEY (`Producto_Nombre.Producto`)
    REFERENCES `mydb`.`Producto` (`Nombre.Producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_has_Factura_Factura1`
    FOREIGN KEY (`Factura_N*Factura`)
    REFERENCES `mydb`.`Factura` (`N*Factura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Solicita:_Cliente1`
    FOREIGN KEY (`Cliente_DNI`)
    REFERENCES `mydb`.`Cliente` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
