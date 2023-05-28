DROP SCHEMA extension;
CREATE SCHEMA extension;
Use extension;

CREATE TABLE equipo_trabajo (
		id INT NOT NULL AUTO_INCREMENT,
        cargo VARCHAR(20),
        PRIMARY KEY(id)
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;



CREATE TABLE integrante_equipo_trabajo (
		id INT NOT NULL AUTO_INCREMENT,
        nombre VARCHAR(60), 
        correo VARCHAR(60),
        cargo VARCHAR(60),
        id_equipo INT,
        
        PRIMARY KEY(id),
        FOREIGN KEY (id_equipo) REFERENCES equipo_trabajo(id) 
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;


CREATE TABLE sede(
		id INT NOT NULL AUTO_INCREMENT,
        nombre VARCHAR(60), 
        correo VARCHAR(60),
        numero VARCHAR(20),
        id_equipo_trabajo INT,
        
        PRIMARY KEY(id),
        FOREIGN KEY (id_equipo_trabajo) REFERENCES equipo_trabajo(id)
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;


CREATE TABLE direccion (
		id INT NOT NULL AUTO_INCREMENT,
        carrera VARCHAR(60), 
        calle VARCHAR(60),
        codigo_postal INT,
		id_sede INT UNIQUE,
		
        PRIMARY KEY(id),
        FOREIGN KEY (id_sede) REFERENCES sede(id) 
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;


CREATE TABLE proyecto (
		id INT NOT NULL AUTO_INCREMENT,
        nombre VARCHAR(60), 
        descripcion TEXT,
        fecha DATE,
        id_sede INT,
        id_equipo_trabajo INT,
        id_direccion INT,
        PRIMARY KEY(id),

        
        FOREIGN KEY (id_sede) REFERENCES sede(id),
        FOREIGN KEY (id_equipo_trabajo) REFERENCES equipo_trabajo(id),
        FOREIGN KEY (id_direccion) REFERENCES direccion(id) 
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE  decano (
		id INT NOT NULL AUTO_INCREMENT,
        nombre VARCHAR(60), 
        correo VARCHAR(60), 
        
        PRIMARY KEY(id)
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;



CREATE TABLE facultad(
		id INT NOT NULL AUTO_INCREMENT,
        nombre VARCHAR(60), 
        id_decano INT,
        
        PRIMARY KEY(id),
        FOREIGN KEY (id_decano) REFERENCES decano(id) 
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;


CREATE TABLE profesor(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(60),
    correo VARCHAR(60),
    id_facultad INT,
    
    PRIMARY KEY(id),
    FOREIGN KEY (id_facultad) REFERENCES facultad(id)
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE modalidad(
    id INT NOT NULL AUTO_INCREMENT,
    tipo_modalidad VARCHAR(45),
    PRIMARY KEY(id)
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;


CREATE TABLE  cursos_diplomados(
		id INT NOT NULL AUTO_INCREMENT,
        nombre VARCHAR(60), 
        duracion VARCHAR(60),
        fecha DATE,
        id_profesor INT,
        id_modalidad INT,
    
        PRIMARY KEY(id),
        FOREIGN KEY (id_profesor) REFERENCES profesor(id),
        FOREIGN KEY (id_modalidad) REFERENCES modalidad(id) 
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;


CREATE TABLE entidad(
    id INT NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(60),
    PRIMARY KEY(id)
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;


CREATE TABLE  practicas_pasantia(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(60),
    descripcion VARCHAR(60),
    tipo_empresa INT,
    FOREIGN KEY (tipo_empresa) REFERENCES entidad(id),
    PRIMARY KEY(id)
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;


CREATE TABLE  estudiante(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(60),
    correo VARCHAR(60),
    rol VARCHAR(60),
    estado_practica BOOLEAN,
    id_practica INT,

    PRIMARY KEY(id),
    FOREIGN KEY (id_practica) REFERENCES practicas_pasantia(id)
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------------------


CREATE TABLE servicio_extension(
		id INT NOT NULL AUTO_INCREMENT,    
        id_facultad INT,
        id_profesor INT,

        PRIMARY KEY(id),
        FOREIGN KEY (id_profesor) REFERENCES profesor(id),
        FOREIGN KEY (id_facultad) REFERENCES facultad(id)
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;


CREATE TABLE servicio_ciudadania (
		id INT NOT NULL AUTO_INCREMENT,
        correo VARCHAR(60), 
        telefono VARCHAR(12),
        id_servicio_extension INT,
        id_facultad INT,
        id_profesor INT,
        
        PRIMARY KEY(id),
        FOREIGN KEY (id_servicio_extension) REFERENCES servicio_extension(id),
        FOREIGN KEY (id_facultad) REFERENCES facultad(id),
        FOREIGN KEY (id_profesor) REFERENCES profesor(id)
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE servicio_detalle_ciudadania (
		id INT NOT NULL AUTO_INCREMENT,
        nombre VARCHAR(60), 
        descripcion TEXT,
        id_servicio_ciudadania INT,

        PRIMARY KEY(id),
        FOREIGN KEY (id_servicio_ciudadania) REFERENCES servicio_ciudadania(id)
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE servicio_estado (
		id INT NOT NULL AUTO_INCREMENT,
        correo VARCHAR(60), 
        telefono VARCHAR(60),
        id_servicio_extension INT,
        id_facultad INT,
        id_profesor INT,
        
		PRIMARY KEY(id),
        FOREIGN KEY (id_servicio_extension) REFERENCES servicio_extension(id),
        FOREIGN KEY (id_facultad) REFERENCES facultad(id),
        FOREIGN KEY (id_profesor) REFERENCES profesor(id)
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE servicio_detalle_estado (
	    id INT NOT NULL AUTO_INCREMENT,
        nombre VARCHAR(60), 
        descripcion TEXT,
        id_servicio_estado INT,

        PRIMARY KEY(id),
        FOREIGN KEY (id_servicio_estado) REFERENCES servicio_estado(id)
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE servicio_empresa (
		id INT NOT NULL AUTO_INCREMENT,
        correo VARCHAR(60), 
        telefono VARCHAR(60),
        id_servicio_extension INT,
        id_facultad INT,
        id_profesor INT,
        PRIMARY KEY(id),

        FOREIGN KEY (id_servicio_extension) REFERENCES servicio_extension(id),
        FOREIGN KEY (id_facultad) REFERENCES facultad(id),
        FOREIGN KEY (id_profesor) REFERENCES profesor(id)
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE servicio_detalle_empresa (
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(60), 
    descripcion TEXT,
    id_servicio_empresa INT,

    PRIMARY KEY(id),
    FOREIGN KEY (id_servicio_empresa) REFERENCES servicio_empresa(id)
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE pertenecer_sede_facultad (
        id_facultad INT,
        id_sede INT,
        
        FOREIGN KEY (id_facultad) REFERENCES facultad(id),
        FOREIGN KEY (id_sede) REFERENCES sede(id) 
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;


CREATE TABLE Tener_Profesor_Estudiante(
        profesor_id INT,
        estudiante_id INT,

        FOREIGN KEY (profesor_id) REFERENCES profesor(id),
        FOREIGN KEY (estudiante_id) REFERENCES estudiante(id) 
    
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE cursar_estudiante_servicio (
        id_estudiante INT,
        id_servicio_extension INT,
        id_facultad INT,
        id_profesor INT,

        
        FOREIGN KEY (id_estudiante) REFERENCES estudiante(id),
        FOREIGN KEY (id_servicio_extension) REFERENCES servicio_extension(id),
        FOREIGN KEY (id_facultad) REFERENCES facultad(id),
        FOREIGN KEY (id_profesor) REFERENCES profesor(id) 
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;

CREATE TABLE cursar_estudiante_cursos(
    id_estudiante INT,
    id_cursos_diplomados INT,
    id_profesor INT,

    FOREIGN KEY (id_estudiante) REFERENCES estudiante(id),
    FOREIGN KEY (id_cursos_diplomados) REFERENCES cursos_diplomados(id),
    FOREIGN KEY (id_profesor) REFERENCES profesor(id)
)
DEFAULT CHARSET = utf8mb4
COLLATE=utf8mb4_unicode_ci;