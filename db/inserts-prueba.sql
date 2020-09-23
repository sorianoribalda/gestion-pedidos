INSERT INTO usuarios VALUES
(NULL,'Pepe','pepe@gmail.com');
SELECT * FROM usuarios;
INSERT INTO pedidos VALUES
(NULL, 1,NULL,'no');
SELECT * FROM pedidos;
INSERT INTO productos VALUES
(1, 'reloj',61.50),
(2, 'pantalón',31.50),
(3, 'camisa',20.50),
(4, 'chaqueta',51.50),
(5, 'calcetines',3.50);
SELECT * FROM productos;
INSERT INTO detalles VALUES
(1, 1, 3, 2),
(2, 1, 4, 1);
SELECT * FROM productos
JOIN detalles
ON productos.id_producto = detalles.id_producto JOIN
pedidos ON pedidos.id_pedido = detalles.id_pedido;

-- CREATE VIEW pedidoDetalle AS 
SELECT
pedidos.id_pedido AS pedido,
productos.nombre_producto AS artículos,
detalles.cantidad AS cantidad,
productos.precio_producto AS precio
FROM pedidos 
JOIN detalles
ON pedidos.id_pedido = detalles.id_pedido
JOIN productos
ON productos.id_producto = detalles.id_producto;
where pedidos = 1;
