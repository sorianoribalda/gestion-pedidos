-- 1 insertamos productos
INSERT INTO productos VALUES
(1, 'margarita',61.50),
(2, 'caprichosa',31.50),
(3, 'cuatro quesos',20.50),
(4, 'puttanesca',51.50),
(5, 'barbacoa',3.50);
-- 2 comprobamos productos
SELECT * FROM productos;
-- 3 insertamos usuarios
INSERT INTO usuarios VALUES
(NULL,'Pepe','pepe@gmail.com');
SELECT id_usuario FROM usuarios ORDER BY id_usuario LIMIT 1;
INSERT INTO usuarios VALUES
(NULL,'Perico','perico@gmail.com');
SELECT id_usuario FROM usuarios ORDER BY id_usuario DESC LIMIT 1;
-- 4 iniciamos pedido sin confirmar
INSERT INTO pedidos VALUES
(NULL, 1,NULL,'no');
SELECT * FROM pedidos;
-- 5 ver productos y seleccionamos detalle
SELECT * FROM productos;
INSERT INTO detalles VALUES
(NULL, 1, 3, 2),
(NULL, 1, 4, 1);
-- 6 ver productos seleccionados
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
