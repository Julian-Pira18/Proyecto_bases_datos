-- trigger que impida crear un equipo de trabajo sin asignarle una sede:

DELIMITER $$
CREATE TRIGGER antes_insertar_integrante_equipo
BEFORE INSERT ON integrante_equipo_trabajo 
FOR EACH ROW
BEGIN
    IF NEW.id_equipo IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se puede insertar un integrante sin un id del equipo asignado';
    END IF;
END $$
DELIMITER ;
Insert into integrante_equipo_trabajo (nombre, correo, cargo) values
("xd","dfkjsd", "dasfsd");
-- Funciona

-- Cuando se elimine un profesor se elimine su id del curso al que este asociado o bueno que se actualice a vacio. 
DELIMITER $$
CREATE TRIGGER despues_eliminar_profesor
AFTER DELETE ON profesor
FOR EACH ROW
BEGIN
    UPDATE cursos_diplomados
    set id_profesor = null
    Where OLD.id = id_profesor;  
END $$
DELIMITER ;

DELETE FROM profesor
where id = 1;
select * from cursos_diplomados;
-- funciona

-- Cuando se elimine un profesor se elimine su id del curso al que este asociado o bueno que se actualice a vacio. 
DELIMITER $$
CREATE TRIGGER despues_eliminar_profesor
AFTER DELETE ON profesor
FOR EACH ROW
BEGIN
    UPDATE cursos_diplomados
    set id_profesor = null
    Where OLD.id = id_profesor;  
END $$
DELIMITER ;

DELETE FROM profesor
where id = 1;
select * from cursos_diplomados;
-- funciona

-- Cuando se actualice el profesor a un curso ...mescla con la tabla estudainte y la tabla profesor actualizar 

-- Cuando se elimine un curso actualizar las llvaes foraneas para que no quede relacion con el estudainte y el curso


DELIMITER $$
CREATE TRIGGER despues_eliminar_curso
AFTER DELETE ON cursos_diplomados
FOR EACH ROW
BEGIN
    DELETE FROM cursar_estudiante_cursos  
    WHERE OLD.id = cursar_estudiante_cursos.id_cursos_diplomados;
END $$
DELIMITER ;
delete FROM cursos_diplomados
WHERE id = 18;
Select * from cursar_estudiante_cursos;
-- funciona


-- trigger cuando se elimine una pasantia y se elimine del estudiante y se cambie el boleano de estado de pasantia.
DELIMITER $$
CREATE TRIGGER despues_eliminar_pasantia
AFTER DELETE ON practicas_pasantia
FOR EACH ROW
BEGIN
    UPDATE estudiante
    set id_practica = null, estado_practica = False
    WHERE old.id = id_practica ;
END $$
DELIMITER ;
SELECT * FROM estudiante;
update estudiante 
set id_practica = 1
where id = 1;
delete FROM practicas_pasantia
WHERE id = 1;
Select * from cursar_estudiante_cursos;
-- funciona

--  Trigger que se asegure que al crear un proyecto este tenga una sede
DELIMITER $$
CREATE TRIGGER antes_insertar_proyecto
BEFORE INSERT ON proyecto
FOR EACH ROW
BEGIN
    IF NEW.id_sede IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'No se puede insertar un proyecto sin asignarle una sede';
    END IF;
END $$
DELIMITER ;
Insert into proyecto (nombre,descripcion) values
("nojsdfkjsd", "djfksdf");
-- funciona


-- Impide insertar un estudiante con correo repetido
DELIMITER $$
CREATE TRIGGER no_correo_duplicado_estudiantes BEFORE INSERT ON estudiante
FOR EACH ROW
BEGIN
-- Revisar si ya existe un correo electrónico igual
    IF EXISTS (SELECT * FROM estudiante WHERE correo = NEW.correo) THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El correo electrónico ya existe';
    END IF;
END $$
DELIMITER ;

INSERT INTO estudiante (nombre, correo) VALUES("DSAFDS", 'MaraElena_Castillo34@yahoo.com');
-- funciona

-- cuando se vaya a agregar un curso con un nombre replicado que modifique ese nuevo nombre poniendo un (2)
DROP TRIGGER nombre_curso_replicado;
DELIMITER $$
CREATE TRIGGER nombre_curso_replicado BEFORE INSERT ON cursos_diplomados
FOR EACH ROW
BEGIN
	Declare numero_repetido INT;
    IF EXISTS (SELECT * FROM cursos_diplomados WHERE nombre = New.nombre ) THEN 
		SELECT COUNT(nombre)INTO numero_repetido FROM cursos_diplomados WHERE nombre LIKE CONCAT(New.nombre, '%');
        SET NEW.nombre = CONCAT(New.nombre,'(', numero_repetido + 1,')');
    END IF;
END $$
DELIMITER ;

SELECT * FROM cursos_diplomados;
INSERT INTO cursos_diplomados(nombre) VALUES("Rústico Madera Pizza");

-- Curso que verifica si se repite el nombre de un curso al insertarlo y le agrega un numero dependiendo de cuantos cursos
-- con el mismo nombre halla
DROP TRIGGER nombre_curso_replicado;
DELIMITER $$
CREATE TRIGGER nombre_curso_replicado BEFORE INSERT ON cursos_diplomados
FOR EACH ROW
BEGIN
	Declare numero_repetido INT;

    IF EXISTS (SELECT * FROM cursos_diplomados WHERE nombre = New.nombre ) THEN 
		SELECT COUNT(nombre)INTO numero_repetido FROM cursos_diplomados WHERE nombre LIKE CONCAT(New.nombre, '%');
        SET NEW.nombre = CONCAT(New.nombre,'(', numero_repetido + 1,')');
    END IF;
END $$
DELIMITER ;


-- Si el id de un servicio_detalle_estado esta vacio entocnes agregue automaticamente el 1
DELIMITER $$
CREATE TRIGGER verifica_servicio_ciudadania BEFORE INSERT ON servicio_detalle_ciudadania
FOR EACH ROW
BEGIN
    IF New.id_servicio_ciudadania IS NULL THEN 
        set New.id_servicio_ciudadania = 1; 
    END IF;
END $$
DELIMITER ;

--
DELIMITER $$
CREATE TRIGGER verifica_servicio_estado BEFORE INSERT ON servicio_detalle_estado
FOR EACH ROW
BEGIN
    IF New.id_servicio_estado IS NULL THEN 
        set New.id_servicio_estado = 1; 
    END IF;
END $$
DELIMITER ;

--
DELIMITER $$
CREATE TRIGGER verifica_servicio_empresa BEFORE INSERT ON servicio_detalle_empresa
FOR EACH ROW
BEGIN
    IF New.id_servicio_empresa IS NULL THEN 
        set New.id_servicio_empresa = 1; 
    END IF;
END $$
DELIMITER ;

-- trigger para que cada direccion agregada se tenga obligatoriamente una sede

DELIMITER $$
CREATE TRIGGER direccion_sede BEFORE INSERT ON direccion
FOR EACH ROW
BEGIN
    IF New.id_sede IS NULL THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se puede insertar una direccion sin relacionarlo con una sede, inserta el id de la sede';
    END IF;
END $$
DELIMITER ;
insert into direccion(carrera) values("fdsfasf");

