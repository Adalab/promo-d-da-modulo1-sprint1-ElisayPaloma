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
        
        
    
    
    INSERT INTO Zapatillas (modelo, color, marca, talla)
		VALUES ('XQYUN', 'Negro', 'Nike', 42),
		('UOPMN', 'Rosas', 'Nike', 39),
		('OPNYT', 'Verdes', 'Adidas', 35);
        
        
        
	INSERT INTO Empleados (nombre, tienda, salario, fecha_incorporacion)
		VALUES ('Laura', 'Alcobendas', 25987, '2010-09-03'),
		('María', 'Sevilla', 0, '2001-04-11'),
        ('Ester', 'Oviedo', 30165.98, '2000-11-29');
        
        
	INSERT INTO Clientes (nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
		VALUES ('Monica', 123456789, 'monica@email.com', 'Calle Felicidad', 'Mostoles', 'Madrid', 28176),
        ('Lorena', 289345678, 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', 12346),
        ('Carmen', 298463759, 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', 23456);
        
        
	
	INSERT INTO Facturas (numero_factura, fecha, id_zapatilla, id_empleado, id_cliente, total)
		VALUES (123, '2001-12-11', 1, 2, 1, 54.98),
        (1234, '2005-05-23', 1, 1, 3, 89.91),
        (12345, '2015-09-18', 2, 3, 3, 76.23);
        
	
        
        
   
            
    
