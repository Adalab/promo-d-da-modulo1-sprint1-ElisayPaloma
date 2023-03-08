-- usamos el schema creado en el pair proggramin anterior
USE `tienda_zapatillas`;

-- Insertamos los datos en las tablas:

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