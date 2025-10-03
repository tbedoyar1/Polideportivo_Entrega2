

USE Polideportivo;

-- ========================
-- DEPORTES (maestro) - mínimo 5 registros
-- ========================
INSERT INTO Deportes (id_deporte, nombre, tipo) VALUES
(1, 'Boxeo', 'Contacto'),
(2, 'Kickboxing', 'Contacto'),
(3, 'Muay Thai', 'Contacto'),
(4, 'Jiu-Jitsu', 'Grappling'),
(5, 'Taekwondo', 'Contacto'),
(6, 'Wrestling', 'Grappling');

-- ========================
-- PROFESORES (cada profesor tiene un id_deporte)
-- ========================
INSERT INTO Profesores (id_profesor, nombre, apellido, telefono, email, id_deporte) VALUES
(1, 'Carlos', 'Gonzalez', '3001112222', 'carlos.gonzalez@example.com', 1),
(2, 'María', 'Lopez', '3002223333', 'maria.lopez@example.com', 4),
(3, 'Andrés', 'Ramirez', '3003334444', 'andres.ramirez@example.com', 3),
(4, 'Lucía', 'Martinez', '3004445555', 'lucia.martinez@example.com', 5),
(5, 'Diego', 'Sanchez', '3005556666', 'diego.sanchez@example.com', 2),
(6, 'Ana', 'Torres', '3006667777', 'ana.torres@example.com', 6),
(7, 'Javier', 'Rios', '3007778888', 'javier.rios@example.com', 1),
(8, 'Sofía', 'Vargas', '3008889999', 'sofia.vargas@example.com', 4);

-- ========================
-- CLIENTES (transaccional) - al menos 30 registros
-- ========================
INSERT INTO Clientes (id_cliente, nombre, apellido, edad, telefono, email) VALUES
(1, 'Juan', 'Perez', 25, '3100000001', 'juan.perez1@example.com'),
(2, 'Laura', 'Gomez', 30, '3100000002', 'laura.gomez@example.com'),
(3, 'Mateo', 'Soto', 22, '3100000003', 'mateo.soto@example.com'),
(4, 'Valentina', 'Ruiz', 27, '3100000004', 'valentina.ruiz@example.com'),
(5, 'Sebastián', 'Diaz', 28, '3100000005', 'sebastian.diaz@example.com'),
(6, 'Isabella', 'Lopez', 21, '3100000006', 'isabella.lopez@example.com'),
(7, 'Santiago', 'Morales', 26, '3100000007', 'santiago.morales@example.com'),
(8, 'Camila', 'Torres', 24, '3100000008', 'camila.torres@example.com'),
(9, 'Nicolas', 'Herrera', 29, '3100000009', 'nicolas.herrera@example.com'),
(10, 'Daniela', 'Castillo', 23, '3100000010', 'daniela.castillo@example.com'),
(11, 'Mateo', 'Alvarez', 20, '3100000011', 'mateo.alvarez@example.com'),
(12, 'Alejandra', 'Paredes', 32, '3100000012', 'alejandra.paredes@example.com'),
(13, 'Felipe', 'Cano', 31, '3100000013', 'felipe.cano@example.com'),
(14, 'Mariana', 'Ortega', 19, '3100000014', 'mariana.ortega@example.com'),
(15, 'Camilo', 'Reyes', 33, '3100000015', 'camilo.reyes@example.com'),
(16, 'Daniel', 'Velez', 34, '3100000016', 'daniel.velez@example.com'),
(17, 'Antonia', 'Mendoza', 18, '3100000017', 'antonia.mendoza@example.com'),
(18, 'Mateo', 'Ruiz', 29, '3100000018', 'mateo.ruiz2@example.com'),
(19, 'Sara', 'Gonzalez', 27, '3100000019', 'sara.gonzalez@example.com'),
(20, 'Andres', 'Pena', 35, '3100000020', 'andres.pena@example.com'),
(21, 'Katherine', 'Silva', 26, '3100000021', 'katherine.silva@example.com'),
(22, 'Ricardo', 'Navas', 28, '3100000022', 'ricardo.navas@example.com'),
(23, 'Laura', 'Ruiz', 24, '3100000023', 'laura.ruiz2@example.com'),
(24, 'Diego', 'Lopez', 22, '3100000024', 'diego.lopez2@example.com'),
(25, 'Marta', 'Suarez', 41, '3100000025', 'marta.suarez@example.com'),
(26, 'Pablo', 'Rojas', 38, '3100000026', 'pablo.rojas@example.com'),
(27, 'Olga', 'Fernandez', 36, '3100000027', 'olga.fernandez@example.com'),
(28, 'Rafael', 'Guerrero', 40, '3100000028', 'rafael.guerrero@example.com'),
(29, 'Bianca', 'Santos', 29, '3100000029', 'bianca.santos@example.com'),
(30, 'Hector', 'Cruz', 31, '3100000030', 'hector.cruz@example.com'),
(31, 'Luciana', 'Diaz', 25, '3100000031', 'luciana.diaz@example.com'),
(32, 'Oscar', 'Navarro', 27, '3100000032', 'oscar.navarro@example.com'),
(33, 'Paula', 'Camacho', 23, '3100000033', 'paula.camacho@example.com'),
(34, 'Jorge', 'Salazar', 32, '3100000034', 'jorge.salazar@example.com'),
(35, 'Monica', 'Arias', 28, '3100000035', 'monica.arias@example.com'),
(36, 'Gustavo', 'Castro', 30, '3100000036', 'gustavo.castro@example.com'),
(37, 'Adriana', 'Flores', 29, '3100000037', 'adriana.flores@example.com'),
(38, 'Hernan', 'Medina', 26, '3100000038', 'hernan.medina@example.com'),
(39, 'Rosario', 'Alvarez', 21, '3100000039', 'rosario.alvarez@example.com'),
(40, 'Victor', 'Molina', 33, '3100000040', 'victor.molina@example.com');

-- ========================
-- EVENTOS (maestro) - mínimo 5 registros
-- ========================
INSERT INTO Eventos (id_evento, nombre, fecha, lugar) VALUES
(1, 'Torneo Regional Boxeo', '2025-04-20', 'Gimnasio Central'),
(2, 'Copa Nacional Jiu-Jitsu', '2025-06-15', 'Coliseo Norte'),
(3, 'Exhibición Muay Thai', '2025-05-10', 'Polideportivo Sur'),
(4, 'Campeonato Taekwondo', '2025-07-01', 'Centro Deportivo'),
(5, 'Liga Kickboxing 2025', '2025-08-12', 'Arena Principal');

-- ========================
-- INSCRIPCIONES (transaccional) - varios registros
-- ========================
INSERT INTO Inscripciones (id_inscripcion, id_cliente, id_deporte, fecha) VALUES
(1, 1, 1, '2025-01-10'),
(2, 2, 4, '2025-01-11'),
(3, 3, 3, '2025-01-12'),
(4, 4, 2, '2025-01-13'),
(5, 5, 1, '2025-01-14'),
(6, 6, 5, '2025-01-15'),
(7, 7, 2, '2025-01-16'),
(8, 8, 3, '2025-01-17'),
(9, 9, 1, '2025-01-18'),
(10, 10, 4, '2025-01-19'),
(11, 11, 2, '2025-01-20'),
(12, 12, 3, '2025-01-21'),
(13, 13, 1, '2025-01-22'),
(14, 14, 5, '2025-01-23'),
(15, 15, 4, '2025-01-24'),
(16, 16, 2, '2025-01-25'),
(17, 17, 3, '2025-01-26'),
(18, 18, 1, '2025-01-27'),
(19, 19, 2, '2025-01-28'),
(20, 20, 5, '2025-01-29'),
(21, 21, 3, '2025-01-30'),
(22, 22, 4, '2025-02-01'),
(23, 23, 1, '2025-02-02'),
(24, 24, 2, '2025-02-03'),
(25, 25, 3, '2025-02-04'),
(26, 26, 4, '2025-02-05'),
(27, 27, 5, '2025-02-06'),
(28, 28, 1, '2025-02-07'),
(29, 29, 2, '2025-02-08'),
(30, 30, 3, '2025-02-09'),
(31, 31, 4, '2025-02-10'),
(32, 32, 1, '2025-02-11'),
(33, 33, 5, '2025-02-12'),
(34, 34, 2, '2025-02-13'),
(35, 35, 3, '2025-02-14'),
(36, 36, 4, '2025-02-15'),
(37, 37, 1, '2025-02-16'),
(38, 38, 2, '2025-02-17'),
(39, 39, 5, '2025-02-18'),
(40, 40, 3, '2025-02-19'),
(41, 1, 2, '2025-03-01'),
(42, 2, 3, '2025-03-02'),
(43, 3, 4, '2025-03-03'),
(44, 4, 5, '2025-03-04'),
(45, 5, 1, '2025-03-05');

-- ========================
-- PAGOS (transaccional)
-- ========================
INSERT INTO Pagos (id_pago, id_inscripcion, monto, fecha, metodo) VALUES
(1, 1, 50.00, '2025-01-11', 'Efectivo'),
(2, 1, 25.00, '2025-01-20', 'Tarjeta'),
(3, 2, 100.00, '2025-01-12', 'Efectivo'),
(4, 3, 75.00, '2025-01-13', 'Transferencia'),
(5, 4, 60.00, '2025-01-14', 'Efectivo'),
(6, 5, 50.00, '2025-01-15', 'Tarjeta'),
(7, 6, 80.00, '2025-01-16', 'Efectivo'),
(8, 7, 40.00, '2025-01-17', 'Tarjeta'),
(9, 8, 90.00, '2025-01-18', 'Transferencia'),
(10, 9, 55.00, '2025-01-19', 'Efectivo'),
(11, 10, 120.00, '2025-01-20', 'Tarjeta'),
(12, 11, 60.00, '2025-01-21', 'Efectivo'),
(13, 12, 75.00, '2025-01-22', 'Transferencia'),
(14, 13, 50.00, '2025-01-23', 'Efectivo'),
(15, 14, 65.00, '2025-01-24', 'Tarjeta'),
(16, 15, 70.00, '2025-01-25', 'Efectivo'),
(17, 16, 55.00, '2025-01-26', 'Tarjeta'),
(18, 17, 80.00, '2025-01-27', 'Transferencia'),
(19, 18, 50.00, '2025-01-28', 'Efectivo'),
(20, 19, 60.00, '2025-01-29', 'Tarjeta'),
(21, 20, 95.00, '2025-01-30', 'Efectivo'),
(22, 21, 85.00, '2025-02-02', 'Transferencia'),
(23, 22, 70.00, '2025-02-03', 'Tarjeta'),
(24, 23, 50.00, '2025-02-04', 'Efectivo'),
(25, 24, 60.00, '2025-02-05', 'Tarjeta'),
(26, 25, 75.00, '2025-02-06', 'Transferencia'),
(27, 26, 85.00, '2025-02-07', 'Efectivo'),
(28, 27, 90.00, '2025-02-08', 'Tarjeta'),
(29, 28, 55.00, '2025-02-09', 'Efectivo'),
(30, 29, 100.00, '2025-02-10', 'Transferencia'),
(31, 30, 65.00, '2025-02-11', 'Tarjeta'),
(32, 31, 75.00, '2025-02-12', 'Efectivo'),
(33, 32, 55.00, '2025-02-13', 'Transferencia'),
(34, 33, 60.00, '2025-02-14', 'Tarjeta'),
(35, 34, 95.00, '2025-02-15', 'Efectivo'),
(36, 35, 50.00, '2025-02-16', 'Tarjeta'),
(37, 36, 70.00, '2025-02-17', 'Transferencia'),
(38, 37, 85.00, '2025-02-18', 'Efectivo'),
(39, 38, 55.00, '2025-02-19', 'Tarjeta'),
(40, 39, 60.00, '2025-02-20', 'Transferencia'),
(41, 40, 75.00, '2025-02-21', 'Efectivo'),
(42, 41, 45.00, '2025-03-02', 'Efectivo'),
(43, 42, 110.00, '2025-03-03', 'Tarjeta'),
(44, 43, 95.00, '2025-03-04', 'Transferencia'),
(45, 44, 80.00, '2025-03-05', 'Efectivo'),
(46, 45, 50.00, '2025-03-06', 'Tarjeta');

-- ========================
-- PARTICIPACIONES (transaccional)
-- ========================
INSERT INTO Participaciones (id_participacion, id_evento, id_cliente, resultado) VALUES
(1, 1, 1, 'Ganador'),
(2, 1, 5, 'Perdedor'),
(3, 2, 2, 'Semifinalista'),
(4, 2, 12, 'Participante'),
(5, 3, 3, 'Participante'),
(6, 3, 7, 'Ganador'),
(7, 4, 8, 'Participante'),
(8, 4, 10, 'Participante'),
(9, 5, 9, 'Finalista'),
(10, 5, 11, 'Participante'),
(11, 1, 13, 'Participante'),
(12, 2, 14, 'Participante'),
(13, 3, 15, 'Participante'),
(14, 4, 16, 'Finalista'),
(15, 5, 17, 'Participante'),
(16, 1, 18, 'Participante'),
(17, 2, 19, 'Participante'),
(18, 3, 20, 'Participante'),
(19, 4, 21, 'Participante'),
(20, 5, 22, 'Participante'),
(21, 1, 23, 'Participante'),
(22, 2, 24, 'Participante'),
(23, 3, 25, 'Participante'),
(24, 4, 26, 'Participante'),
(25, 5, 27, 'Participante'),
(26, 1, 28, 'Participante'),
(27, 2, 29, 'Participante'),
(28, 3, 30, 'Participante'),
(29, 4, 31, 'Participante'),
(30, 5, 32, 'Participante'),
(31, 1, 33, 'Participante'),
(32, 2, 34, 'Participante'),
(33, 3, 35, 'Participante'),
(34, 4, 36, 'Participante'),
(35, 5, 37, 'Participante'),
(36, 1, 38, 'Participante'),
(37, 2, 39, 'Participante'),
(38, 3, 40, 'Participante'),
(39, 4, 1, 'Participante'),
(40, 5, 2, 'Participante');

-- FIN DEL SCRIPT
