DROP DATABASE IF EXISTS gestionpedidos;
CREATE DATABASE gestionpedidos;
USE gestionpedidos;
DROP TABLE IF EXISTS usuarios;
CREATE TABLE usuarios(
    id_usuario INT AUTO_INCREMENT,
    nombre_usuario VARCHAR (99),
    email_usuario VARCHAR (99),
     PRIMARY KEY (id_usuario)
);
DROP TABLE IF EXISTS productos;
CREATE TABLE productos(
    id_producto INT AUTO_INCREMENT,
    nombre_producto VARCHAR (99),
    precio_producto DECIMAL(6,2),
    PRIMARY KEY (id_producto)
);
DROP TABLE IF EXISTS pedidos;
CREATE TABLE pedidos(
    id_pedido INT AUTO_INCREMENT,
    id_usuario INT NOT NULL,
    fecha_pedido TIMESTAMP,
    confirmar_pedido CHAR(2) DEFAULT 'no',
    PRIMARY KEY (id_pedido)
);
DROP TABLE IF EXISTS detalles_producto;
CREATE TABLE detalles(
    id_detalle INT AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad INT NOT NULL,
    PRIMARY KEY (id_detalle)
);