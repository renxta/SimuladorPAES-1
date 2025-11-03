-- ==============================================
-- BASE DE DATOS COMPLETA PARA DEMRE 2024
-- Compatible con el backend del Simulador PAES
-- ==============================================

-- Crear base de datos
CREATE DATABASE IF NOT EXISTS demre2024_full
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE demre2024_full;

-- ==============================================
-- 1. TABLA UNIVERSIDADES
-- ==============================================
CREATE TABLE IF NOT EXISTS universidades (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(200) NOT NULL,
  acreditacion INT NULL,
  sitio_web VARCHAR(255) NULL,
  direccion VARCHAR(255) NULL,
  latitud DECIMAL(10,7) NULL,
  longitud DECIMAL(10,7) NULL,
  UNIQUE KEY ux_universidad_nombre (nombre)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ==============================================
-- 2. TABLA CARRERAS
-- ==============================================
CREATE TABLE IF NOT EXISTS carreras (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(200) NOT NULL,
  duracion VARCHAR(50) NULL,
  vacantes INT NULL,
  arancel INT NULL,
  universidad_id INT NOT NULL,
  CONSTRAINT fk_carrera_univ FOREIGN KEY (universidad_id) REFERENCES universidades(id)
    ON DELETE CASCADE ON UPDATE CASCADE,
  UNIQUE KEY ux_carrera_univ (universidad_id, nombre)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ==============================================
-- 3. TABLA PONDERACIONES
-- ==============================================
CREATE TABLE IF NOT EXISTS ponderaciones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  carrera_id INT NOT NULL UNIQUE,
  w_lenguaje DECIMAL(5,2) NOT NULL DEFAULT 0,
  w_matematicas DECIMAL(5,2) NOT NULL DEFAULT 0,
  w_matematicas2 DECIMAL(5,2) NOT NULL DEFAULT 0,
  w_ciencias DECIMAL(5,2) NOT NULL DEFAULT 0,
  w_historia DECIMAL(5,2) NOT NULL DEFAULT 0,
  w_nem DECIMAL(5,2) NOT NULL DEFAULT 0,
  w_ranking DECIMAL(5,2) NOT NULL DEFAULT 0,
  CONSTRAINT fk_ponderacion_carrera FOREIGN KEY (carrera_id)
    REFERENCES carreras(id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ==============================================
-- 4. TABLA PUNTAJES DE CORTE
-- ==============================================
CREATE TABLE IF NOT EXISTS puntajes_corte (
  id INT AUTO_INCREMENT PRIMARY KEY,
  carrera_id INT NOT NULL,
  puntaje_minimo DECIMAL(6,2) NOT NULL,
  ano INT NOT NULL,
  CONSTRAINT fk_pc_carrera FOREIGN KEY (carrera_id)
    REFERENCES carreras(id) ON DELETE CASCADE ON UPDATE CASCADE,
  UNIQUE KEY ux_pc_carrera_ano (carrera_id, ano)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ==============================================
-- 5. TABLA SIMULACIONES
-- ==============================================
CREATE TABLE IF NOT EXISTS simulaciones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  carrera_id INT NULL,
  puntaje_lenguaje DECIMAL(6,2) NULL,
  puntaje_matematicas DECIMAL(6,2) NULL,
  puntaje_matematicas2 DECIMAL(6,2) NULL,
  puntaje_ciencias DECIMAL(6,2) NULL,
  puntaje_historia DECIMAL(6,2) NULL,
  puntaje_nem DECIMAL(6,2) NULL,
  puntaje_ranking DECIMAL(6,2) NULL,
  puntaje_total DECIMAL(7,2) NOT NULL,
  CONSTRAINT fk_sim_carrera FOREIGN KEY (carrera_id)
    REFERENCES carreras(id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ==============================================
-- 6. VISTAS DE APOYO (opcional para consultas)
-- ==============================================
CREATE OR REPLACE VIEW vista_carreras_completa AS
SELECT
  u.nombre AS universidad,
  c.nombre AS carrera,
  c.vacantes,
  c.arancel,
  p.w_lenguaje,
  p.w_matematicas,
  p.w_matematicas2,
  p.w_ciencias,
  p.w_historia,
  p.w_nem,
  p.w_ranking,
  pc.puntaje_minimo,
  pc.ano
FROM carreras c
LEFT JOIN universidades u ON u.id = c.universidad_id
LEFT JOIN ponderaciones p ON p.carrera_id = c.id
LEFT JOIN puntajes_corte pc ON pc.carrera_id = c.id;

-- ==============================================
-- 7. INSERTAR DATOS DE EJEMPLO (opcional)
-- ==============================================
INSERT INTO universidades (nombre, acreditacion, sitio_web, direccion)
VALUES
('Universidad de Chile', 7, 'https://www.uchile.cl', 'Santiago'),
('Pontificia Universidad Católica de Chile', 7, 'https://www.uc.cl', 'Santiago'),
('Universidad de Santiago de Chile', 6, 'https://www.usach.cl', 'Santiago'),
('Universidad Técnica Federico Santa María', 6, 'https://www.usm.cl', 'Valparaíso'),
('Universidad de Valparaíso', 5, 'https://www.uv.cl', 'Valparaíso'),
('Universidad Austral de Chile', 6, 'https://www.uach.cl', 'Valdivia')
ON DUPLICATE KEY UPDATE nombre = VALUES(nombre);

-- ==============================================
-- 8. CHEQUEO FINAL
-- ==============================================
SELECT COUNT(*) AS total_universidades FROM universidades;
SELECT COUNT(*) AS total_carreras FROM carreras;
SELECT COUNT(*) AS total_ponderaciones FROM ponderaciones;
SELECT COUNT(*) AS total_puntajes_corte FROM puntajes_corte;

-- Fin del script
