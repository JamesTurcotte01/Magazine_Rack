-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema belt_retake
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema belt_retake
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `belt_retake` DEFAULT CHARACTER SET utf8 ;
USE `belt_retake` ;

-- -----------------------------------------------------
-- Table `belt_retake`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belt_retake`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `belt_retake`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `belt_retake`.`table1` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `users_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_table1_users_idx` (`users_id` ASC) VISIBLE,
  CONSTRAINT `fk_table1_users`
    FOREIGN KEY (`users_id`)
    REFERENCES `belt_retake`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
