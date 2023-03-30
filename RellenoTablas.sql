-- Insertar datos en la tabla sucursal
INSERT INTO sucursal (idSucursal, ciudad, estado)
VALUES (1, 'Maracay', 'Aragua'),
       (2, 'Orlando', 'Florida'),
       (3, 'Los Angeles', 'California'),
	   (4, 'Houston', 'Texas');

-- Insertar datos en la tabla persona
INSERT INTO persona (idPersona, idSucursal, tipo_persona, nombre, direccion, telefono, edad, email)
VALUES (1, 1, 'Empleado', 'Juan Perez', 'Calle 1, #123', '305-123-4567', 28, 'juan.perez@example.com'),
       (2, 1, 'Cliente', 'Maria Rodriguez', 'Calle 2, #456', '305-234-5678', 35, 'maria.rodriguez@example.com'),
       (3, 2, 'Proveedor', 'Distribuidora de Repuestos', 'Av. Principal, #789', '407-345-6789', NULL, 'distribuidora@example.com');

-- Insertar datos en la tabla fabricante
INSERT INTO fabricante (idFabricante, nombre, direccion, distribuidor)
VALUES (1, 'Bosch', 'Av. Principal, #111', 'Distribuidora de Repuestos'),
       (2, 'Motorcraft', 'Calle 4, #222', 'Distribuidora de Repuestos'),
       (3, 'Mann Filter', 'Calle 8, #333', 'Distribuidora de Repuestos'),
	   (4, 'MonMon', 'M. Principal, #31415', 'Distribuidora de Repuestos');

-- Insertar datos en la tabla categoria
INSERT INTO categoria (idCategoria, nombre, descripcion)
VALUES (1, 'Filtros', 'Filtros para motor'),
       (2, 'Lubricantes', 'Aceites y lubricantes para veh�culos'),
       (3, 'Suspensi�n', 'Piezas de suspensi�n para veh�culos'),
	   (4, 'Frenos', 'Repuestos para el sistema de frenos de veh�culos'),
	   (5, 'Motor', 'Repuestos para el motor de veh�culos'),
	   (6, 'Transmisi�n', 'Repuestos para la transmisi�n de veh�culos'),
	   (7, 'Sistema el�ctrico', 'Repuestos para el sistema el�ctrico de veh�culos'),
	   (8, 'Neum�ticos'	,'Repuestos para los neum�ticos de veh�culos'),
	   (9, 'Aire acondicionado', 'Repuestos para el sistema de aire acondicionado de veh�culos'),
	   (10, 'Accesorios', 'Accesorios para veh�culos'),

-- Insertar datos en la tabla articulo
INSERT INTO articulo (idArticulo, idCategoria, idFabricante, nombre, stock, descripcion)
VALUES (1, 1, 1, 'Filtro de aceite', 100, 'Filtro de aceite para veh�culos'),
       (2, 1, 2, 'Filtro de aire', 150, 'Filtro de aire para veh�culos'),
       (3, 2, 1, 'Aceite sint�tico', 200, 'Aceite sint�tico para motor'),
       (4, 3, 3, 'Amortiguador', 50, 'Amortiguador para veh�culos'),
	   (5, 2, 1, 'Bujias', 12, 'Bujias de Carro');

-- Insertar datos en la tabla compra
INSERT INTO compra (idCompra, idProveedor, tipo_comprobante, numero_comprobante, fecha_hora, impuesto, total_compra, estado)
VALUES (1, 3, 'Factura', '001-001', '2022-01-01 10:00:00', 0.18, 1000.00, 'Aprobado'),
       (2, 3, 'Factura', '002-001', '2022-02-01 12:00:00', 0.18, 1500.00, 'Aprobado');

-- Insertar datos en la tabla detalle_compra
INSERT INTO detalle_compra (idDetalle_compra, idCompra, idArticulo, cantidad, precio_compra, precio_venta)
VALUES (1, 1, 1, 50, 10.00, 12.00),
       (2, 1, 2, 75, 8.00, 12.00),
       (3, 1, 3, 100, 20.00, 30.00),
       (4, 2, 3, 150, 18.00, 25.00),
       (5, 2, 4, 50, 40.00, 60.00);

