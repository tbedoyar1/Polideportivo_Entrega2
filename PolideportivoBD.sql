

DROP DATABASE IF EXISTS Polideportivo;
CREATE DATABASE Polideportivo;
USE Polideportivo;

-- ============================
-- TABLA DEPORTES (Maestro)
-- ============================
CREATE TABLE Deportes (
    id_deporte INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) NOT NULL
);

-- ============================
-- TABLA PROFESORES (Cada profesor solo un deporte)
-- ============================
CREATE TABLE Profesores (
    id_profesor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(100),
    id_deporte INT NOT NULL,
    CONSTRAINT fk_profesor_deporte FOREIGN KEY (id_deporte) REFERENCES Deportes(id_deporte)
);

-- ============================
-- TABLA CLIENTES (Transaccional)
-- ============================
CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    edad INT,
    telefono VARCHAR(15),
    email VARCHAR(100)
);

-- ============================
-- TABLA EVENTOS (Maestro)
-- ============================
CREATE TABLE Eventos (
    id_evento INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    lugar VARCHAR(100) NOT NULL
);

-- ============================
-- TABLA INSCRIPCIONES (Transaccional)
-- ============================
CREATE TABLE Inscripciones (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_deporte INT NOT NULL,
    fecha DATE NOT NULL,
    CONSTRAINT fk_inscripcion_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    CONSTRAINT fk_inscripcion_deporte FOREIGN KEY (id_deporte) REFERENCES Deportes(id_deporte)
);

-- ============================
-- TABLA PAGOS (Transaccional)
-- ============================
CREATE TABLE Pagos (
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    id_inscripcion INT NOT NULL,
    monto DECIMAL(10,2) NOT NULL,
    fecha DATE NOT NULL,
    metodo VARCHAR(50),
    CONSTRAINT fk_pago_inscripcion FOREIGN KEY (id_inscripcion) REFERENCES Inscripciones(id_inscripcion)
);

-- ============================
-- TABLA PARTICIPACIONES (Transaccional)
-- ============================
CREATE TABLE Participaciones (
    id_participacion INT AUTO_INCREMENT PRIMARY KEY,
    id_evento INT NOT NULL,
    id_cliente INT NOT NULL,
    resultado VARCHAR(50),
    CONSTRAINT fk_participacion_evento FOREIGN KEY (id_evento) REFERENCES Eventos(id_evento),
    CONSTRAINT fk_participacion_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);
