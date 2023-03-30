CREATE TABLE persona (
    idPersona INT PRIMARY KEY,
    idSucursal INT NOT NULL,
    tipo_persona VARCHAR(20) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(100),
    telefono VARCHAR(20),
    edad INT,
    email VARCHAR(50)
);

CREATE TABLE articulo (
    idArticulo INT PRIMARY KEY,
    idCategoria INT NOT NULL,
    idFabricante INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    stock INT,
    descripcion VARCHAR(100)
);

CREATE TABLE categoria (
    idCategoria INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE fabricante (
    idFabricante INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(100),
    distribuidor VARCHAR(50)
);

CREATE TABLE sucursal (
    idSucursal INT PRIMARY KEY,
    ciudad VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL
);

CREATE TABLE compra (
    idCompra INT PRIMARY KEY,
    idProveedor INT NOT NULL,
    tipo_comprobante VARCHAR(50),
    numero_comprobante VARCHAR(50),
    fecha_hora DATETIME,
    impuesto DECIMAL(10,2),
    total_compra DECIMAL(10,2),
    estado VARCHAR(20)
);

CREATE TABLE detalle_compra (
    idDetalle_compra INT PRIMARY KEY,
    idCompra INT NOT NULL,
    idArticulo INT NOT NULL,
    cantidad INT,
    precio_compra DECIMAL(10,2),
    precio_venta DECIMAL(10,2)
);











