CREATE SCHEMA `tienda_zapatillas`;
USE `tienda_zapatillas`;
CREATE TABLE Zapatillas(
	id_zapatillas INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(45) NOT NULL,
    color VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_zapatillas));
  
  
CREATE TABLE Clientes(
	id_cliente INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    numero_telefono INT(9) NOT NULL,
    email VARCHAR(45) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
    ciudad VARCHAR(45) NOT NULL,
    provincia VARCHAR(45) NOT NULL,
    pais VARCHAR(45) NOT NULL,
    codigo_postal VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_cliente));
    
CREATE TABLE Empleados(
	id_empleado INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    tienda VARCHAR(45) NOT NULL,
    salario INT,
    fecha_incorporacion DATE NOT NULL,
    PRIMARY KEY (id_empleado));
    
    
CREATE TABLE Facturas(
	id_factura INT NOT NULL AUTO_INCREMENT,
    numero_factura VARCHAR(45) NOT NULL,
    fecha DATE NOT NULL,
    id_zapatillas INT NOT NULL,
    id_empleado INT NOT NULL,
    id_cliente INT NOT NULL,
    PRIMARY KEY (id_factura),
    CONSTRAINT `fk_factura_zapatillas`
		FOREIGN KEY (id_zapatillas)
        REFERENCES Zapatillas (id_zapatillas), 
	CONSTRAINT `fk_factura_empleado`
		FOREIGN KEY (id_empleado)
		REFERENCES Empleados (id_empleado),
    CONSTRAINT `fk_factura_cliente`
		FOREIGN KEY (id_cliente)
        REFERENCES Clientes (id_cliente) ON DELETE CASCADE ON UPDATE CASCADE);
        
ALTER TABLE Zapatillas
	ADD COLUMN marca VARCHAR(45) NOT NULL,
	ADD COLUMN talla INT NOT NULL;
    
ALTER TABLE Empleados
	MODIFY COLUMN salario FLOAT NOT NULL;
    
ALTER TABLE Clientes 
	DROP COLUMN pais;

ALTER TABLE Clientes
	MODIFY codigo_postal INT,
	ADD CONSTRAINT `CK_CP` CHECK ((codigo_postal = 5)); 
    
ALTER TABLE Facturas
	ADD COLUMN total FLOAT; 
        
        
    
    
    
