CREATE TABLE estado_vehiculos (
    id_estado INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE tipo_trasmisiones (
    id_trasmision INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE tipo_combustibles (
    id_combustible INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Marcas (
    id_marca INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Vehiculos (
    id_vehiculo INT PRIMARY KEY,
    modelo VARCHAR(100) NOT NULL,
    anio INT NOT NULL,
    VIM VARCHAR(100) NOT NULL UNIQUE,
    precio FLOAT NOT NULL,
    color VARCHAR(100) NOT NULL,
    disponibilidad VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_marca) REFERENCES Marcas(id_marca), 
    FOREIGN KEY (id_estado) REFERENCES estado_vehiculos(id_estado), 
    FOREIGN KEY (id_trasmision) REFERENCES tipo_trasmisiones(id_trasmision)
);

CREATE TABLE vehiculos_combustible (
    id_vehiculos_combustible INT PRIMARY KEY,
    FOREIGN KEY (id_vehiculo) REFERENCES Vehiculos(id_vehiculo),
    FOREIGN KEY (id_combustible) REFERENCES tipos_combustibles(id_combustible)
);

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    direccion VARCHAR(100) NOT NULL
);

CREATE TABLE Vendedores (
    n_empleado INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    f_contratacion DATE NOT NULL
);

CREATE TABLE tipo_servicios(
    id_tipo_servicio INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Servicios (
    id_servicio INT PRIMARY KEY,
    fecha_servicio DATE NOT NULL,
    costo FLOAT NOT NULL
    FOREIGN KEY (id_tipo_servicio) REFERENCES tipo_servicios(id_tipo_servicio),
    FOREIGN KEY (id_vehiculo) REFERENCES Vehiculos(id_vehiculo)
);

CREATE TABLE metodo_pagos (
  id_pago INT PRIMARY KEY,
  N nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE servicios_clientes (
    id_servicio_cliente INT PRIMARY KEY,
    FOREIGN KEY (id_servicio) REFERENCES Servicios(id_servicio),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_pago) REFERENCES metodo_pagos(id_pago)
);

CREATE TABLE Ventas (
    id_venta INT PRIMARY KEY,
    f_venta DATE NOT NULL, 
    total FLOAT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (n_empleado) REFERENCES Vendedores(n_empleado),
    FOREIGN KEY (id_pago) REFERENCES metodo_pagos(id_pago)
);

