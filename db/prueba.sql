------------------------------
-- Archivo de base de datos --
------------------------------

DROP TABLE IF EXISTS alumnos CASCADE;

CREATE TABLE alumnos
(
    id          BIGSERIAL       PRIMARY KEY
  , nombre      VARCHAR(50)     NOT NULL
  , apellidos   VARCHAR(50)     NOT NULL
  , curso_id    BIGINT          REFERENCES cursos (id)
                                ON DELETE NO ACTION
                                ON UPDATE CASCADE
);

DROP TABLE IF EXISTS cursos CASCADE;

CREATE TABLE cursos
(
    id        BIGSERIAL         PRIMARY KEY
  , nombre    VARCHAR(255)      NOT NULL
  , numero    numeric(1)        CONSTRAINT ck_numero_adecuado
                                CHECK numero = NULL
                                OR (numero > 0 AND numero <= 6)
);

DROP TABLE IF EXISTS aulas CASCADE;

CREATE TABLE aulas
(
    id      BIGSERIAL           PRIMARY KEY
  , nombre  VARCHAR(2)          NOT NULL
);

DROP TABLE IF EXISTS asignaturas CASCADE;

CREATE TABLE asignaturas
(
    id      BIGSERIAL           PRIMARY KEY
  , nombre  VARCHAR(255)        NOT NULL
);
