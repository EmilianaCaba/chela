DELIMITER //

-- Vistas
CREATE OR REPLACE VIEW v_productos_con_stock AS
SELECT id_productos, nombre, talle, stock, categoria
FROM productos
WHERE stock > 0;
//

CREATE OR REPLACE VIEW v_pedidos_pendientes AS
SELECT id_pedido, id_cliente, id_usuario, fecha_pedido
FROM pedidos
WHERE estado_pedido = 'pendiente';
//

CREATE OR REPLACE VIEW v_ventas_por_vendedor AS
SELECT u.nombre AS nombre_vendedor, u.apellido AS apellido_vendedor, COUNT(p.id_pedido) AS total_pedidos
FROM pedidos p
JOIN usuarios u ON p.id_usuario = u.id_usuario
GROUP BY u.nombre, u.apellido;
//

CREATE OR REPLACE VIEW v_productos_con_categorias AS
SELECT p.id_productos, p.nombre, p.descripcion, p.stock, c.nombre_categoria AS categoria
FROM productos p
JOIN categorias c ON p.categoria = c.nombre_categoria;
//

CREATE OR REPLACE VIEW v_valoraciones_productos AS
SELECT p.nombre, AVG(c.calificacion) AS calificacion_promedio
FROM comentarios c
JOIN productos p ON c.id_producto = p.id_productos
GROUP BY p.nombre;
//

-- Funciones
DROP FUNCTION IF EXISTS calcular_precio_con_descuento;
CREATE FUNCTION calcular_precio_con_descuento(
    precio DECIMAL(10,2),
    valor_descuento DECIMAL(10,2),
    tipo_descuento VARCHAR(45)
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE precio_final DECIMAL(10,2);
    IF tipo_descuento = 'porcentaje' THEN
        SET precio_final = precio * (1 - valor_descuento);
    ELSEIF tipo_descuento = 'monto fijo' THEN
        SET precio_final = precio - valor_descuento;
    ELSE
        SET precio_final = precio;
    END IF;
    RETURN precio_final;
END//

DROP FUNCTION IF EXISTS obtener_nombre_cliente;
CREATE FUNCTION obtener_nombre_cliente(id_cliente_param INT)
RETURNS VARCHAR(91)
DETERMINISTIC
BEGIN
    DECLARE nombre_completo VARCHAR(91);
    SELECT CONCAT(nombre, ' ', apellido) INTO nombre_completo
    FROM clientes
    WHERE id_clientes = id_cliente_param;
    RETURN nombre_completo;
END//

-- Stored Procedures
DROP PROCEDURE IF EXISTS sp_actualizar_stock;
CREATE PROCEDURE sp_actualizar_stock(
    IN id_producto_param INT,
    IN cantidad_param INT
)
BEGIN
    UPDATE productos
    SET stock = stock - cantidad_param
    WHERE id_productos = id_producto_param;
END//

DROP PROCEDURE IF EXISTS sp_listar_pedidos_por_cliente;
CREATE PROCEDURE sp_listar_pedidos_por_cliente(
    IN id_cliente_param INT
)
BEGIN
    SELECT *
    FROM pedidos
    WHERE id_cliente = id_cliente_param;
END//

-- Triggers
DROP TRIGGER IF EXISTS tr_descontar_stock_despues_pedido;
CREATE TRIGGER tr_descontar_stock_despues_pedido
AFTER INSERT ON detalles_pedido
FOR EACH ROW
BEGIN
    UPDATE productos
    SET stock = stock - NEW.cantidad
    WHERE id_productos = NEW.id_producto;
END//

DROP TRIGGER IF EXISTS tr_registrar_movimiento_stock;
CREATE TRIGGER tr_registrar_movimiento_stock
AFTER INSERT ON detalles_pedido
FOR EACH ROW
BEGIN
    INSERT INTO movimientos_stock (id_producto, tipo_movimiento, cantidad, motivo)
    VALUES (NEW.id_producto, 'salida', NEW.cantidad, 'Venta registrada en un pedido.');
END//

DELIMITER ;