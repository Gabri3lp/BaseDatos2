INSERT INTO Participante
VALUES	('Gabriel@hotmail.com', 'Gabriel', 'Pérez', 20, 'M', '12345678'),
		('Daniel@hotmail.com', 'Daniel', 'Añez', 21, 'M', '12345689'),
		('Pedro@hotmail.com', 'Pedro', 'Flores', 21, 'M', '12345689'),
		('Ariadne@hotmail.com', 'Ariadne', 'Vasquez', 22, 'F', '12345689'),
		('Nora@hotmail.com', 'Noraimar', 'Mora', 20, 'F', '12345689'),
		('Eduardo@hotmail.com', 'Eduardo', 'Ascanio', 21, 'M', '12345689'),
		('Mundarain@hotmail.com', 'Jose', 'Mundarain', NULL, NULL, NULL),
		('Oscar@hotmail.com', 'Oscar', 'Castillejo', NULL, NULL , NULL);

INSERT INTO Tienda
VALUES 	(NULL, 'Tienda de juancho', 'Unare', 'Ropa', NULL, NULL),
		(NULL, 'Tienda de pedro', 'Unare', 'comida', NULL, NULL),
		(NULL, 'Tienda de yulimar', 'core 8', 'Ropa', NULL, NULL),
		(NULL, 'Toy Express', 'Unare', 'Juguetes', NULL, NULL);

INSERT INTO Producto 
VALUES	('Carrito',NULL,'Jueguete',10, 4),
		('Patito',NULL, 'Jueguete',10, 4),
		('Muñeca',NULL, 'Jueguete',10, 4),
		('Hamburguesa',NULL, 'Comida',9, 2),
		('Empanada',NULL, 'Comida', 5, 2),
		('Arepa',NULL, 'Comida',3, 2),
		('Camisas',NULL, 'Ropa', 8, 1),
		('Pantalon',NULL, 'Ropa', 8, 1),
		('Zapatos',NULL, 'Ropa', 8, 1);

INSERT INTO Sorteo 
VALUES	(NULL,' Navidad',  'regalos navideños', DATE '2017-07-11', DATE '2017-08-11','Las casitas', 1000, 15000,'Gabriel@hotmail.com'),
		(NULL, 'Cumpleaños', 'Cualquier cosa', DATE '2017-11-11', DATE '2017-12-20', 'Las casitas', NULL, NULL, 'Mundarain@hotmail.com');

INSERT INTO Participa 
VALUES	(1, 'Gabriel@hotmail.com'),
		(1, 'Pedro@hotmail.com'),
		(1, 'Ariadne@hotmail.com'),
		(1, 'Nora@hotmail.com'),
		(1, 'Eduardo@hotmail.com'),
		(1, 'Mundarain@hotmail.com'),
		(1, 'Daniel@hotmail.com'),
		(1, 'Oscar@hotmail.com'),
		(2, 'Gabriel@hotmail.com'),
		(2, 'Pedro@hotmail.com'),
		(2, 'Ariadne@hotmail.com');

INSERT INTO Regala 
VALUES	(1, 'Gabriel@hotmail.com','Pedro@hotmail.com'),
		(1, 'Pedro@hotmail.com', 'Ariadne@hotmail.com'),
		(1, 'Ariadne@hotmail.com', 'Nora@hotmail.com'),
		(1, 'Nora@hotmail.com', 'Eduardo@hotmail.com'),
		(1, 'Eduardo@hotmail.com', 'Mundarain@hotmail.com'),
		(1, 'Mundarain@hotmail.com',  'Daniel@hotmail.com'),
		(1, 'Daniel@hotmail.com', 'Oscar@hotmail.com'),
		(1, 'Oscar@hotmail.com', 'Gabriel@hotmail.com');

INSERT INTO Prefiere
VALUES	(1, 4, 'Gabriel@hotmail.com', 1, 'Quiero un carro rojo'),
		(1, 4, 'Nora@hotmail.com', 1, 'Quiero un carro azul'),
		(1, 4, 'Eduardo@hotmail.com', 1, 'Quiero un carro verde'),
		(4, 2, 'Mundarain@hotmail.com', 1, 'Quiero una Hamburguesa con queso');