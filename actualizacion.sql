-- Actualización de datos

use proyecto_extension;

UPDATE cursos_diplomados 
SET id_modalidad = 2 WHERE id_profesor = 21;

UPDATE estudiante
SET correo = "Roberto@unal.edu.co" WHERE nombre = "Roberto";

UPDATE integrante_equipo_trabajo
SET cargo = "Administrador" WHERE correo = "Teodoro.Godnez@hotmail.com";

UPDATE facultad
SET facultad.nombre = "Ciencias" WHERE id_decano = 35;

UPDATE proyecto
SET nombre = "Empoderando comunidades con bicimaquinas" WHERE proyecto.id = 4;

UPDATE servicio_ciudadania
SET telefono = "+57 53547323" WHERE correo = "ciudadaniaart@hotmail.com";

UPDATE integrante_equipo_trabajo
SET correo = "marisol@unal.edu.co" WHERE id = 6;

UPDATE decano
SET nombre = "Fabian" WHERE id = 1;

UPDATE sede
SET numero = "+57 763545432" WHERE nombre = "Bogota";

UPDATE equipo_trabajo
SET cargo = "Marketing" WHERE id = 2;

-- Eliminación de datos

DELETE FROM estudiante WHERE correo = "Roberto@unal.edu.co";

DELETE FROM proyecto WHERE nombre = "Empoderando comunidades con bicimaquinas";

DELETE FROM integrante_equipo_trabajo WHERE correo = "Teodoro.Godnez@hotmail.com";

DELETE FROM servicio_detalle_empresa WHERE fecha = "2022-05-23";

DELETE FROM profesor WHERE id = 34;

DELETE FROM proyecto WHERE nombre = "Pre-emptivo global enfoque";

DELETE FROM servicio_detalle_empresa WHERE fecha = "2023-02-19";

DELETE FROM estudiante WHERE correo = "Gabriela_Murillo@yahoo.com";

DELETE FROM cursos_diplomados WHERE nombre = "Sabroso Plástico Coche";

DELETE FROM profesor WHERE correo = "Sergio_Pizarro@yahoo.com";