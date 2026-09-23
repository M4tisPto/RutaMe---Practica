-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema RutaMe
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema RutaMe
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `RutaMe` DEFAULT CHARACTER SET utf8 ;
USE `RutaMe` ;

-- -----------------------------------------------------
-- Table `RutaMe`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RutaMe`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NULL,
  `apellido` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RutaMe`.`rutas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RutaMe`.`rutas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `usuario_iid` INT NOT NULL,
  `nombre` VARCHAR(255) NULL,
  `fecha` DATETIME NULL,
  `dificultad` VARCHAR(255) NULL,
  `cupos` VARCHAR(255) NULL,
  `pundo_de_encuentro` VARCHAR(255) NULL,
  `descripcion` TEXT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_table1_usuarios_idx` (`usuario_iid` ASC) VISIBLE,
  CONSTRAINT `fk_table1_usuarios`
    FOREIGN KEY (`usuario_iid`)
    REFERENCES `RutaMe`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
