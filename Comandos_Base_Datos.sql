/* Creacion de Base de Datos */
CREATE DATABASE clinica; 

/* Creacion de esquemas */

CREATE SCHEMA adm;
CREATE SCHEMA citas;
CREATE SCHEMA facturacion; 




/* Dat permisos a usuario para manejar base de datos */
GRANT ALL PRIVILEGES ON DATABASE clinica TO postgres;



/* Crear Tablas */
CREATE TABLE adm.paciente (
    id integer PRIMARY KEY,
    identificacion varchar(20),
    nombre varchar(20),
    apellido varchar(20),
    direccion varchar(20),
    telefono varchar(20),
    fecha_nacimiento timestamp
);  

CREATE TABLE adm.medico (
    id integer PRIMARY KEY,
    nombre varchar(20),
    apellido varchar(20),
    profesion varchar(20)
);

CREATE TABLE citas.agenda (
    id integer PRIMARY KEY,
    fecha_cita timestamp,
    duracion integer,
    id_tipo varchar(20),
    id_paciente integer NOT NULL,
    id_medico integer NOT NULL,
);


CREATE TABLE citas_tipo (
    id varchar(2) PRIMARY KEY,
    nombre varchar(20),
    costo integer
);

CREATE TABLE facturacion_agenda_admision (
    id_admision integer,
    id_agenda integer
);

CREATE TABLE facturacion_facturas (
    id integer PRIMARY KEY,
    id_paciente integer,
    id_admision integer,
    valor_total integer
);

CREATE TABLE facturacion_admision (
    id integer PRIMARY KEY,
    id_paciente integer,
    eps varchar(5),
    fecha_creacion timestamp
);