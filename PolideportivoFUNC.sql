
USE Polideportivo;

-- =============================================================
-- FUNCIONES
-- =============================================================

-- 1) Función para calcular la edad de un cliente
DELIMITER //
CREATE FUNCTION calcular_edad_cliente(p_id_cliente INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_edad INT;
    SELECT edad INTO v_edad
    FROM Clientes
    WHERE id_cliente = p_id_cliente;
    RETURN v_edad;
END//
DELIMITER ;

-- Ejemplo de uso:
-- SELECT calcular_edad_cliente(1);

-- 2) Función para calcular el total pagado por un cliente
DELIMITER //
CREATE FUNCTION total_pagado_cliente(p_id_cliente INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE v_total DECIMAL(10,2);
    SELECT COALESCE(SUM(p.monto),0) INTO v_total
    FROM Pagos p
    INNER JOIN Inscripciones i ON p.id_inscripcion = i.id_inscripcion
    WHERE i.id_cliente = p_id_cliente;
    RETURN v_total;
END//
DELIMITER ;

-- Ejemplo de uso:
-- SELECT total_pagado_cliente(1);

-- =============================================================
-- VISTAS
-- =============================================================

-- 1) Vista de clientes con sus inscripciones y deporte
CREATE VIEW vista_clientes_inscripciones AS
SELECT c.id_cliente, c.nombre, c.apellido, d.nombre AS deporte, i.fecha
FROM Clientes c
JOIN Inscripciones i ON c.id_cliente = i.id_cliente
JOIN Deportes d ON i.id_deporte = d.id_deporte;

-- SELECT * FROM vista_clientes_inscripciones;

-- 2) Vista de profesores con el deporte que enseñan
CREATE VIEW vista_profesores_deporte AS
SELECT p.id_profesor, p.nombre, p.apellido, d.nombre AS deporte
FROM Profesores p
JOIN Deportes d ON p.id_deporte = d.id_deporte;

-- SELECT * FROM vista_profesores_deporte;

-- 3) Vista de pagos con información del cliente
CREATE VIEW vista_pagos_clientes AS
SELECT p.id_pago, c.nombre, c.apellido, p.monto, p.fecha, p.metodo
FROM Pagos p
JOIN Inscripciones i ON p.id_inscripcion = i.id_inscripcion
JOIN Clientes c ON i.id_cliente = c.id_cliente;

-- SELECT * FROM vista_pagos_clientes;

-- =============================================================
-- PROCEDIMIENTOS ALMACENADOS
-- =============================================================

-- 1) Registrar un nuevo cliente
DELIMITER //
CREATE PROCEDURE registrar_cliente(
    IN p_nombre VARCHAR(100),
    IN p_apellido VARCHAR(100),
    IN p_edad INT,
    IN p_telefono VARCHAR(15),
    IN p_email VARCHAR(100)
)
BEGIN
    INSERT INTO Clientes(nombre, apellido, edad, telefono, email)
    VALUES (p_nombre, p_apellido, p_edad, p_telefono, p_email);
END//
DELIMITER ;

-- CALL registrar_cliente('Pedro','Sánchez',22,'3123456789','pedro.sanchez@correo.com');

-- 2) Registrar un pago
DELIMITER //
CREATE PROCEDURE registrar_pago(
    IN p_id_inscripcion INT,
    IN p_monto DECIMAL(10,2),
    IN p_fecha DATE,
    IN p_metodo VARCHAR(50)
)
BEGIN
    INSERT INTO Pagos(id_inscripcion, monto, fecha, metodo)
    VALUES (p_id_inscripcion, p_monto, p_fecha, p_metodo);
END//
DELIMITER ;

-- CALL registrar_pago(1, 150.00, '2025-03-01', 'Tarjeta');

-- =============================================================
-- TRIGGERS
-- =============================================================

-- 1) Trigger para evitar pagos con monto negativo
DELIMITER //
CREATE TRIGGER trg_validar_pago
BEFORE INSERT ON Pagos
FOR EACH ROW
BEGIN
    IF NEW.monto <= 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El monto del pago debe ser mayor a 0';
    END IF;
END//
DELIMITER ;

-- 2) Trigger para auditar inscripciones
CREATE TABLE Auditoria_Inscripciones (
    id_auditoria INT AUTO_INCREMENT PRIMARY KEY,
    id_inscripcion INT,
    id_cliente INT,
    id_deporte INT,
    fecha_inscripcion DATE,
    accion VARCHAR(50),
    fecha_evento TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //
CREATE TRIGGER trg_auditar_inscripcion
AFTER INSERT ON Inscripciones
FOR EACH ROW
BEGIN
    INSERT INTO Auditoria_Inscripciones(id_inscripcion, id_cliente, id_deporte, fecha_inscripcion, accion)
    VALUES (NEW.id_inscripcion, NEW.id_cliente, NEW.id_deporte, NEW.fecha, 'INSCRIPCION CREADA');
END//
DELIMITER ;
