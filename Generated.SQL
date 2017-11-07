/*
Created: 5/11/2017
Modified: 7/11/2017
Model: MySQL 5.7
Database: MySQL 5.7
*/


-- Create tables section -------------------------------------------------

-- Table participante
CREATE DATABASE amigoSecreto;
USE amigoSecreto;

CREATE TABLE `participante`
(
  `correo` VARCHAR(100) NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `apellido` VARCHAR(100) NOT NULL,
  `edad` INT,
  `genero` CHAR(1),
  `contraseña` VARCHAR(20),
  CONSTRAINT participante_edad_check CHECK(edad>=0),
  PRIMARY KEY (`correo`)
)
;


-- Table tienda

CREATE TABLE `tienda`
(
  `idTienda` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `direccion` VARCHAR(500) NOT NULL,
  `categoria` VARCHAR(100) NOT NULL,
  `horaApertura` TIME,
  `horaClausura` TIME,
  CONSTRAINT tienda_edad_check CHECK(horaClausura>horaApertura),
  PRIMARY KEY (`idTienda`)
)
;


-- Table sorteo

CREATE TABLE `sorteo`
(
  `idSorteo` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(500) NOT NULL,
  `tema` VARCHAR(100),
  `fechaC` DATE NOT NULL,
  `fechaR` DATE,
  `direccion` VARCHAR(500),
  `montoMin` FLOAT,
  `montoMax` FLOAT,
  `correoOrg` VARCHAR(100),
  PRIMARY KEY (`idSorteo`),
  CONSTRAINT sorteo_edad_check CHECK(fechaR>fechaC),
  CONSTRAINT sorteo_montoMin_check CHECK(montoMin>=0),
  CONSTRAINT sorteo_montoMax_check CHECK(montoMax>=0 AND montoMax>=montoMin)
)
;

CREATE INDEX `IX_administra` ON `sorteo` (`correoOrg`)
;

-- Table producto

CREATE TABLE `producto`
(
  `nombre` VARCHAR(100) NOT NULL,
  `idProducto` INT NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(100) NOT NULL,
  `precio` FLOAT NOT NULL,
  `idTienda` INT NOT NULL,

  PRIMARY KEY (`idProducto`,`idTienda`),
  CONSTRAINT producto_precio_check CHECK(precio>=0)
)
;

-- Table participa

CREATE TABLE `participa`
(
  `idSorteo` INT NOT NULL AUTO_INCREMENT,
  `correoPart` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idSorteo`,`correoPart`)
)
;
 

-- Table regala

CREATE TABLE `regala`
(
  `idSorteo` INT NOT NULL AUTO_INCREMENT,
  `correoP1` VARCHAR(100) NOT NULL,
  `correoP2` VARCHAR(100),
  PRIMARY KEY (`idSorteo`,`correoP1`)
)
;

CREATE INDEX `IX_regala` ON `regala` (`correoP2`)
;


-- Table prefiere

CREATE TABLE `prefiere`
(
  `idProducto` INT NOT NULL,
  `idTienda` INT NOT NULL,
  `correo` VARCHAR(100) NOT NULL,
  `idSorteo` INT NOT NULL,
  `descripcion` VARCHAR(500),
  PRIMARY KEY (`idProducto`,`idTienda`,`correo`,`idSorteo`)
)
;

 
-- Create foreign keys (relationships) section ------------------------------------------------- 


ALTER TABLE `producto` ADD CONSTRAINT `posee` FOREIGN KEY (`idTienda`) REFERENCES `tienda` (`idTienda`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `participa` ADD CONSTRAINT `participa1` FOREIGN KEY (`idSorteo`) REFERENCES `sorteo` (`idSorteo`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `participa` ADD CONSTRAINT `participa2` FOREIGN KEY (`correoPart`) REFERENCES `participante` (`correo`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `regala` ADD CONSTRAINT `regala1` FOREIGN KEY (`idSorteo`) REFERENCES `sorteo` (`idSorteo`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `regala` ADD CONSTRAINT `regala2` FOREIGN KEY (`correoP1`) REFERENCES `participante` (`correo`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `prefiere` ADD CONSTRAINT `prefiere3` FOREIGN KEY (`idProducto`, `idTienda`) REFERENCES `producto` (`idProducto`, `idTienda`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `prefiere` ADD CONSTRAINT `prefiere2` FOREIGN KEY (`correo`) REFERENCES `participante` (`correo`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `prefiere` ADD CONSTRAINT `prefiere1` FOREIGN KEY (`idSorteo`) REFERENCES `sorteo` (`idSorteo`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `sorteo` ADD CONSTRAINT `administra` FOREIGN KEY (`correoOrg`) REFERENCES `participante` (`correo`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


ALTER TABLE `regala` ADD CONSTRAINT `Relationship2` FOREIGN KEY (`correoP2`) REFERENCES `participante` (`correo`) ON DELETE RESTRICT ON UPDATE RESTRICT
;


