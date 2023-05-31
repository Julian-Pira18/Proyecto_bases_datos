-- Procedimiento para obtener información de un proyecto por su nombre:

DELIMITER $$
CREATE PROCEDURE ObtenerProyectoPorNombre (IN proyecto_nombre VARCHAR(200))
BEGIN
    SELECT * FROM proyecto
    WHERE nombre = proyecto_nombre;
END $$
DELIMITER ;

call obtenerProyectoPorNombre("nacional factores productor")

-- Procedimiento para obtener todoss los proyectos asociados a una sede
DELIMITER $$
CREATE PROCEDURE ObtenerProyectoPorsede (IN sede_nombre VARCHAR(200))
BEGIN
    SELECT * FROM proyecto 
    INNER JOIN sede ON sede.id = id_sede
    WHERE sede.nombre = sede_nombre;
END $$
DELIMITER ;

call obtenerProyectoPorsede("palmira");

--Procedimiento para insertar un nuevo integrante de equipo de trabajo:
DELIMITER $$
CREATE PROCEDURE InsertarIntegranteEquipoTrabajo (IN nombre_ VARCHAR(60), IN correo_ VARCHAR(60), IN cargo_ VARCHAR(60), IN equipoID_ INT )
BEGIN
    INSERT INTO integrante_equipo_trabajo (nombre, correo, cargo, id_equipo) VALUES 
    (nombre_, correo_, cargo_, equipoID_);
END $$
DELIMITER ;

call InsertarIntegranteEquipoTrabajo("Julian", "jsdfkjdshfsd", "nasdfbjkda", 0);
SELECT * FROM integrante_equipo_trabajo;


--Procedimiento para actualizar la información de un estudiante por su ID:
DELIMITER $$
CREATE PROCEDURE ActualizarEstudiantePorID(
    IN estudianteID INT,
    IN nombre_ VARCHAR(60),
    IN correo_ VARCHAR(60),
    IN rol_ VARCHAR(60)
)
BEGIN
    UPDATE estudiante
    SET nombre = nombre_, correo = correo_, rol = rol_
    WHERE id = estudianteID ;
END $$
DELIMITER ;

call ActualizarEstudiantePorID(1,"julian","dkjfasdkjf", "jfdhsakjhfkas");
SELECT * FROM estudiante ;



-- Lista de estudiantes por practica  -- pendiente modificar los insert ii_practica

DELIMITER $$
CREATE PROCEDURE ObtenerEstudiantesPorpractica(IN practica_id INT)
BEGIN
    SELECT * FROM estudiante
    INNER JOIN practicas_pasantia ON  id_practica = practicas_pasantia.id
    WHERE practica_id = id_practica;
END $$
DELIMITER ;
call ObtenerEstudiantesPorpractica (1);



--Procedimiento para asignar o cambiar un profesor a un curso:

DELIMITER $$
CREATE PROCEDURE AsignarProfesorCurso(
    IN cursoId INT,
    IN profesorId INT
)
BEGIN
    UPDATE cursos_diplomados
    SET id_profesor = profesorID
    WHERE id = cursoId;
END $$
DELIMITER ;

call AsignarProfesorCurso (2, 1);

Select * from cursos_diplomados;

-- HASTA ACA FUNCIONAN

-- Procedimiento para obtener curso por nombre
DELIMITER $$
CREATE PROCEDURE obtener_Curso_Nombre(IN nombre_curso VARCHAR(200))
BEGIN
    SELECT * from cursos_diplomados
    WHERE nombre_curso = cursos_diplomados.nombre;
END $$
DELIMITER ;

call obtener_Curso_Nombre("Rústico Madera Pizza");