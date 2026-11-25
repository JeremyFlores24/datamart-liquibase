--liquibase formatted sql

--changeset jeremy:001-esquema
CREATE SCHEMA IF NOT EXISTS club_voley_dev;
--rollback DROP SCHEMA IF EXISTS club_voley_dev CASCADE;

--changeset jeremy:002-dim-tiempo
CREATE TABLE IF NOT EXISTS club_voley_dev.dim_tiempo (
  id_tiempo INT NOT NULL,
  fecha DATE NOT NULL,
  mes INT NOT NULL,
  trimestre INT NOT NULL,
  anio INT NOT NULL,
  temporada STRING
) USING DELTA;
--rollback DROP TABLE IF EXISTS club_voley_dev.dim_tiempo;

--changeset jeremy:003-dim-sede
CREATE TABLE IF NOT EXISTS club_voley_dev.dim_sede (
  id_sede INT NOT NULL,
  nombre_sede STRING NOT NULL
) USING DELTA;
--rollback DROP TABLE IF EXISTS club_voley_dev.dim_sede;

--changeset jeremy:004-dim-categoria-financiera
CREATE TABLE IF NOT EXISTS club_voley_dev.dim_categoria_financiera (
  id_categoria INT NOT NULL,
  tipo_movimiento STRING NOT NULL,
  concepto STRING NOT NULL
) USING DELTA;
--rollback DROP TABLE IF EXISTS club_voley_dev.dim_categoria_financiera;

--changeset jeremy:005-dim-deportista
CREATE TABLE IF NOT EXISTS club_voley_dev.dim_deportista (
  id_deportista INT NOT NULL,
  codigo_deportista STRING NOT NULL,
  categoria_edad STRING NOT NULL,
  estado_matricula STRING NOT NULL
) USING DELTA;
--rollback DROP TABLE IF EXISTS club_voley_dev.dim_deportista;

--changeset jeremy:006-dim-producto
CREATE TABLE IF NOT EXISTS club_voley_dev.dim_producto (
  id_producto INT NOT NULL,
  tipo STRING NOT NULL,
  talla STRING,
  temporada STRING
) USING DELTA;
--rollback DROP TABLE IF EXISTS club_voley_dev.dim_producto;
