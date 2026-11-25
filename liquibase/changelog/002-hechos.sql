--liquibase formatted sql

--changeset jeremy:007-hecho-movimiento-financiero
CREATE TABLE IF NOT EXISTS club_voley_dev.hecho_movimiento_financiero (
  id_movimiento BIGINT NOT NULL,
  id_tiempo INT NOT NULL,
  id_categoria INT NOT NULL,
  id_deportista INT NOT NULL,
  id_producto INT NOT NULL,
  id_sede INT NOT NULL,
  monto_esperado DECIMAL(12,2) NOT NULL,
  monto DECIMAL(12,2) NOT NULL,
  cantidad INT NOT NULL
) USING DELTA;
--rollback DROP TABLE IF EXISTS club_voley_dev.hecho_movimiento_financiero;

--changeset jeremy:008-hecho-movimiento-inventario
CREATE TABLE IF NOT EXISTS club_voley_dev.hecho_movimiento_inventario (
  id_movimiento_inv BIGINT NOT NULL,
  id_tiempo INT NOT NULL,
  id_producto INT NOT NULL,
  tipo_movimiento STRING NOT NULL,
  cantidad INT NOT NULL
) USING DELTA;
--rollback DROP TABLE IF EXISTS club_voley_dev.hecho_movimiento_inventario;
