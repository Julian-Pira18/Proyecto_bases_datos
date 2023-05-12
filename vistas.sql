
CREATE VIEW vw_equipo_trabajo AS 
SELECT cargo FROM equipo_trabajo;

CREATE VIEW vw_integrante_equipo_trabajo AS 
SELECT nombre, correo, cargo FROM integrante_equipo_trabajo;

CREATE VIEW vw_sede AS 
SELECT nombre, correo, numero FROM sede;

CREATE VIEW vw_direccion AS 
SELECT carrera, calle, codigo_postal FROM direccion;

CREATE VIEW vw_proyecto AS 
SELECT nombre, descripcion, fecha FROM proyecto;

CREATE VIEW vw_decano AS 
SELECT nombre, correo FROM decano;

CREATE VIEW vw_facultad AS 
SELECT nombre FROM decano;

CREATE VIEW vw_profesor AS 
SELECT nombre, correo FROM profesor;

CREATE VIEW vw_modalidad AS 
SELECT tipo_modalidad FROM modalidad;

CREATE VIEW vw_cursos_diplomados AS 
SELECT nombre, duracion, fecha  FROM cursos_diplomados;

CREATE VIEW vw_estudiante AS 
SELECT nombre, correo FROM estudiante;

CREATE VIEW vw_servicio_ciudadania AS 
SELECT correo,telefono  FROM servicio_ciudadania;

CREATE VIEW vw_servicio_detalle_ciudadania AS 
SELECT nombre, descripcion, fecha FROM servicio_detalle_ciudadania;

CREATE VIEW vw_servicio_estado AS 
SELECT correo, telefono FROM servicio_estado;

CREATE VIEW vw_servicio_detalle_estado AS 
SELECT nombre, descripcion,fecha FROM servicio_detalle_estado;

CREATE VIEW vw_servicio_empresa AS 
SELECT correo, telefono FROM servicio_empresa;

CREATE VIEW vw_servicio_detalle_empresa AS 
SELECT nombre, descripcion,fecha FROM servicio_detalle_empresa;

--  NEWS ---------------------------------------------------------------------
-- musestra el profesor con su respectivo alumno
CREATE VIEW estudiante_profesor AS 
SELECT profesor.nombre AS profesor, estudiante.nombre AS estudiante
FROM profesor
JOIN tener_profesor_estudiante ON tener_profesor_estudiante.profesor_id = profesor.id
JOIN estudiante ON estudiante.id = tener_profesor_estudiante.estudiante_id;

-- muestra cada decano con que facultad corresponde (hay que confidurar id_decano de facultad)
CREATE VIEW decano_facultad AS 
SELECT decano.nombre AS decano, facultad.nombre AS facultad
FROM decano
JOIN facultad ON decano.id = facultad.id_decano;


SELECT * FROM facultad;
SELECT * FROM decano;

update facultad Set id_decano = 50 where id = 7;

-- Servicios para la ciudadania-----
CREATE VIEW Servicios_comunitat AS 
SELECT servicio_detalle_ciudadania AS decano, facultad.nombre AS servicio_detalle_ciudadania 
FROM servicio_detalle_ciudadania
JOIN servicio_ciudadania ON servicio_deatalle_ciudadania.id_servicio_ciudadania = servicio_ciudadania.id;

