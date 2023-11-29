CREATE SCHEMA `Horas_Sociales` ;
USE `Horas_Sociales`;

CREATE TABLE estudiantes(
    estud_id     INT auto_increment NOT NULL,
    nombre       VARCHAR(50)    NOT NULL,
    grado        VARCHAR(10)    NOT NULL,
    modalidad    VARCHAR(50)    NOT NULL,
    edad         INT(3)     NOT NULL,
    telefono     INT(15)    NOT NULL,
    correo       VARCHAR(50)    NOT NULL,
    CONSTRAINT student_key PRIMARY KEY (estud_id)
);

CREATE TABLE usuarios(
    usuario       VARCHAR(50)    NOT NULL,
    contrasena    VARCHAR(10)    NOT NULL,
    estud_id      INT            ,
    CONSTRAINT student_key PRIMARY KEY (usuario)
);

ALTER TABLE usuarios ADD (
    CONSTRAINT usuario_fk FOREIGN KEY (estud_id) REFERENCES estudiantes(estud_id) ON UPDATE CASCADE
);

CREATE TABLE actividades(
    activ_id        INT auto_increment NOT NULL, 
    actividad       VARCHAR(50)    NOT NULL,
    tipo            VARCHAR(10)    NOT NULL,
    horas           INT(5)     NOT NULL,
    fecha_inicio    DATETIME   NOT NULL,
    fecha_fin       DATETIME   NOT NULL,
    encuentro       VARCHAR(50)    NOT NULL,
    cupo            INT(5)     NOT NULL,
    CONSTRAINT actividad_key PRIMARY KEY (activ_id)
); 

CREATE TABLE asignaciones (
    activ_id        INT  NOT NULL, 
    estud_id        INT  NOT NULL,
    CONSTRAINT asignacion_key PRIMARY KEY (activ_id, estud_id)
);

ALTER TABLE asignaciones ADD (
    CONSTRAINT activ_fk FOREIGN KEY (activ_id) REFERENCES actividades(activ_id) ON UPDATE CASCADE,
    CONSTRAINT estud_fk FOREIGN KEY (estud_id) REFERENCES estudiantes(estud_id) ON UPDATE CASCADE
);