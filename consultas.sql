use proyecto_extension;

-- recogame los estudiantes que estan en mas de dos cursos que empezaron en una fecha diferente a 2011-11-06 
SELECT estudiante.nombre AS estudiante, COUNT(Fecha)AS Diferentes 
FROM cursos_diplomados
JOIN cursar_estudiante_cursos ON cursos_diplomados.id = id_cursos_diplomados
JOIN estudiante ON estudiante.id = cursar_estudiante_cursos.id_estudiante
WHERE fecha != "2011-11-06"
GROUP BY estudiante.nombre
HAVING COUNT(Fecha)>2;

  
-- proyectos en los cuales haya mas de tres integrantes
-- COUNT(*) cuenta todas las filas sin excepcion 

SELECT p.nombre AS nombre_proyecto, p.fecha, f.nombre AS nombre_facultad, COUNT(*) AS cantidad_integrantes
FROM proyecto p
JOIN sede s ON p.id_sede = s.id
JOIN direccion d ON p.id_direccion = d.id
JOIN equipo_trabajo et ON p.id_equipo_trabajo = et.id
JOIN integrante_equipo_trabajo iet ON et.id = iet.id_equipo
JOIN facultad f ON et.id = f.id_decano
GROUP BY p.nombre, p.fecha, f.nombre
HAVING COUNT(*) > 3;
 

-- Listar los profesores que han impartido cursos y diplomados por más de 2 horas:
SELECT profesor.nombre, cursos_diplomados.duracion
FROM profesor
JOIN cursos_diplomados ON profesor.id = cursos_diplomados.id_profesor
GROUP BY profesor.id, cursos_diplomados.id
HAVING SUM(DATEDIFF(NOW(), cursos_diplomados.fecha))/365 > 2;



-- Mostrar las facultades que tienen al menos 5 cursos o diplomados:
SELECT facultad.nombre, COUNT(*) AS num_cursos_diplomados
FROM cursos_diplomados
JOIN profesor ON cursos_diplomados.id_profesor = profesor.id
JOIN facultad ON profesor.id_facultad = facultad.id
GROUP BY facultad.id
HAVING COUNT(*) >= 5;


-- Obtener las sedes que tienen más de 3 proyectos en curso:
SELECT sede.nombre, COUNT(*) AS num_proyectos
FROM proyecto
JOIN sede ON proyecto.id_sede = sede.id
WHERE proyecto.fecha >= NOW()
GROUP BY sede.id
HAVING COUNT(*) > 3;





-- Mostrar el nombre de la sede y la cantidad de proyectos que tienen asociados, pero solo para aquellas sedes que tengan más de 5 proyectos.
SELECT sede.nombre, COUNT(proyecto.id) AS cantidad_proyectos
FROM sede
JOIN proyecto ON sede.id = proyecto.id_sede
GROUP BY sede.id
HAVING cantidad_proyectos > 5;

-- Mostrar el nombre del profesor y la cantidad de cursos que ha dictado, pero solo para aquellos profesores que hayan dictado más de 3 cursos.
SELECT profesor.nombre, COUNT(cursos_diplomados.id) AS cantidad_cursos
FROM profesor
JOIN cursos_diplomados ON profesor.id = cursos_diplomados.id_profesor
GROUP BY profesor.id
HAVING cantidad_cursos > 3;
-- Mostrar el nombre del equipo de trabajo y la cantidad de sedes que tiene asociadas, pero solo para aquellos equipos que tengan más de 2 sedes asociadas.

SELECT equipo_trabajo.cargo, COUNT(sede.id) AS cantidad_sedes
FROM equipo_trabajo
JOIN sede ON equipo_trabajo.id = sede.id_equipo_trabajo
GROUP BY equipo_trabajo.id
HAVING cantidad_sedes > 2;

-- Mostrar el nombre del servicio de extensión y la cantidad de servicios de ciudadanía que tiene asociados, pero solo para aquellos servicios de extensión que tengan más de 1 servicio de ciudadanía asociado.
SELECT servicio_extension.id, COUNT(servicio_ciudadania.id) AS cantidad_servicios_ciudadania
FROM servicio_extension
JOIN servicio_ciudadania ON servicio_extension.id = servicio_ciudadania.id_servicio_extension
GROUP BY servicio_extension.id
HAVING cantidad_servicios_ciudadania > 1;

-- Mostrar el nombre del decano y la cantidad de facultades que tiene asociadas, pero solo para aquellos decanos que tengan más de 2 facultades asociadas.
SELECT decano.nombre, COUNT(facultad.id) AS cantidad_facultades
FROM decano
JOIN facultad ON decano.id = facultad.id_decano
GROUP BY decano.id
HAVING cantidad_facultades > 2;

-- Mostrar el nombre del servicio de extensión y la cantidad de servicios de estado que tiene asociados, pero solo para aquellos servicios de extensión que tengan más de 1 servicio de estado asociado.

SELECT servicio_extension.id, COUNT(servicio_estado.id) AS cantidad_servicios_estado
FROM servicio_extension
JOIN servicio_estado ON servicio_extension.id = servicio_estado.id_servicio_extension
GROUP BY servicio_extension.id
HAVING cantidad_servicios_estado > 1;

