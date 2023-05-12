-- Creacion de los usuarios correspondientes al rol de estudiante.
CREATE USER 'estudiante'@'localhost' IDENTIFIED BY '1234';

CREATE USER 'estudiante1'@'localhost' IDENTIFIED BY '2345';

CREATE USER 'estudiante2'@'localhost' IDENTIFIED BY '6789';

CREATE USER 'estudiante3'@'localhost' IDENTIFIED BY '22222';

CREATE USER 'estudiante4'@'localhost' IDENTIFIED BY '221322';

CREATE USER 'estudiante5'@'localhost' IDENTIFIED BY '37457';

CREATE USER 'estudiante6'@'localhost' IDENTIFIED BY '32457';

CREATE USER 'estudiante7'@'localhost' IDENTIFIED BY '535473';

-- Creacion de los usuarios correspondientes al rol de profesor.
CREATE USER 'profesor1'@'localhost' IDENTIFIED BY '1234';

CREATE USER 'profesor2'@'localhost' IDENTIFIED BY '2345';

CREATE USER 'profesor3'@'localhost' IDENTIFIED BY '6789';

CREATE USER 'profesor4'@'localhost' IDENTIFIED BY '22122';

CREATE USER 'profesor5'@'localhost' IDENTIFIED BY '37457';

CREATE USER 'profesor6'@'localhost' IDENTIFIED BY '32457';

CREATE USER 'profesor7'@'localhost' IDENTIFIED BY '535473';

CREATE USER 'profesor8'@'localhost' IDENTIFIED BY '968398';

-- Creacion de los usuarios correspondientes al rol de administrador.
CREATE USER 'admin0'@'localhost' IDENTIFIED  BY '3474746';

CREATE USER 'admin1'@'localhost' IDENTIFIED  BY '111111';

CREATE USER 'admin2'@'localhost' IDENTIFIED  BY '6648374';

CREATE USER 'admin3'@'localhost' IDENTIFIED  BY '78764583';

CREATE USER 'admin4'@'localhost' IDENTIFIED  BY '54635645';

CREATE USER 'admin5'@'localhost' IDENTIFIED  BY '67675655';

CREATE USER 'admin6'@'localhost' IDENTIFIED  BY '6274832';

CREATE USER 'admin7'@'localhost' IDENTIFIED  BY '4675545';

-- Creacion de los usuarios correspondientes al rol de super administrador.
CREATE USER 'super_admin'@'localhost' IDENTIFIED  BY '67565';

CREATE USER 'super_admin1'@'localhost' IDENTIFIED  BY '9878';

CREATE USER 'super_admin2'@'localhost' IDENTIFIED  BY '87878';

-- Asignacion de permisos para las personas que se encuentren en el rol de estudiante.

GRANT SELECT ON vw_equipo_trabajo 
TO 'estudiante'@'localhost', 'estudiante1'@'localhost', 'estudiante2'@'localhost', 'estudiante3'@'localhost', 'estudiante4'@'localhost', 'estudiante5'@'localhost', 'estudiante6'@'localhost', 'estudiante7'@'localhost';

GRANT SELECT ON vw_sede 
TO 'estudiante'@'localhost', 'estudiante1'@'localhost', 'estudiante2'@'localhost', 'estudiante3'@'localhost', 'estudiante4'@'localhost', 'estudiante5'@'localhost', 'estudiante6'@'localhost', 'estudiante7'@'localhost';

GRANT SELECT ON vw_proyecto
TO 'estudiante'@'localhost', 'estudiante1'@'localhost', 'estudiante2'@'localhost', 'estudiante3'@'localhost', 'estudiante4'@'localhost', 'estudiante5'@'localhost', 'estudiante6'@'localhost', 'estudiante7'@'localhost';

GRANT SELECT ON vw_direccion 
TO 'estudiante'@'localhost', 'estudiante1'@'localhost', 'estudiante2'@'localhost', 'estudiante3'@'localhost', 'estudiante4'@'localhost', 'estudiante5'@'localhost', 'estudiante6'@'localhost', 'estudiante7'@'localhost';

GRANT SELECT ON vw_servicio_estado 
TO 'estudiante'@'localhost', 'estudiante1'@'localhost', 'estudiante2'@'localhost', 'estudiante3'@'localhost', 'estudiante4'@'localhost', 'estudiante5'@'localhost', 'estudiante6'@'localhost', 'estudiante7'@'localhost';

GRANT SELECT ON vw_servicio_empresa 
TO 'estudiante'@'localhost', 'estudiante1'@'localhost', 'estudiante2'@'localhost', 'estudiante3'@'localhost', 'estudiante4'@'localhost', 'estudiante5'@'localhost', 'estudiante6'@'localhost', 'estudiante7'@'localhost';

GRANT SELECT ON vw_servicio_ciudadania 
TO 'estudiante'@'localhost', 'estudiante1'@'localhost', 'estudiante2'@'localhost', 'estudiante3'@'localhost', 'estudiante4'@'localhost', 'estudiante5'@'localhost', 'estudiante6'@'localhost', 'estudiante7'@'localhost';

GRANT SELECT ON vw_servicio_detalle_ciudadania 
TO 'estudiante'@'localhost', 'estudiante1'@'localhost', 'estudiante2'@'localhost', 'estudiante3'@'localhost', 'estudiante4'@'localhost', 'estudiante5'@'localhost', 'estudiante6'@'localhost', 'estudiante7'@'localhost';

GRANT SELECT ON vw_servicio_detalle_empresa 
TO 'estudiante'@'localhost', 'estudiante1'@'localhost', 'estudiante2'@'localhost', 'estudiante3'@'localhost', 'estudiante4'@'localhost', 'estudiante5'@'localhost', 'estudiante6'@'localhost', 'estudiante7'@'localhost';

GRANT SELECT ON vw_servicio_detalle_estado 
TO 'estudiante'@'localhost', 'estudiante1'@'localhost', 'estudiante2'@'localhost', 'estudiante3'@'localhost', 'estudiante4'@'localhost', 'estudiante5'@'localhost', 'estudiante6'@'localhost', 'estudiante7'@'localhost';

GRANT SELECT ON vw_facultad 
TO 'estudiante'@'localhost', 'estudiante1'@'localhost', 'estudiante2'@'localhost', 'estudiante3'@'localhost', 'estudiante4'@'localhost', 'estudiante5'@'localhost', 'estudiante6'@'localhost', 'estudiante7'@'localhost';

GRANT SELECT ON vw_decano 
TO 'estudiante'@'localhost', 'estudiante1'@'localhost', 'estudiante2'@'localhost', 'estudiante3'@'localhost', 'estudiante4'@'localhost', 'estudiante5'@'localhost', 'estudiante6'@'localhost', 'estudiante7'@'localhost';

GRANT SELECT ON vw_cursos_diplomados 
TO 'estudiante'@'localhost', 'estudiante1'@'localhost', 'estudiante2'@'localhost', 'estudiante3'@'localhost', 'estudiante4'@'localhost', 'estudiante5'@'localhost', 'estudiante6'@'localhost', 'estudiante7'@'localhost';

GRANT SELECT ON vw_modalidad 
TO 'estudiante'@'localhost', 'estudiante1'@'localhost', 'estudiante2'@'localhost', 'estudiante3'@'localhost', 'estudiante4'@'localhost', 'estudiante5'@'localhost', 'estudiante6'@'localhost', 'estudiante7'@'localhost';

GRANT SELECT ON vw_estudiante 
TO 'estudiante'@'localhost', 'estudiante1'@'localhost', 'estudiante2'@'localhost', 'estudiante3'@'localhost', 'estudiante4'@'localhost', 'estudiante5'@'localhost', 'estudiante6'@'localhost', 'estudiante7'@'localhost';

-- Asignacion de permisos para las personas que se encuentren en el rol de profesor.

GRANT SELECT ON vw_equipo_trabajo 
TO 'profesor1'@'localhost', 'profesor2'@'localhost', 'profesor3'@'localhost', 'profesor4'@'localhost', 'profesor5'@'localhost', 'profesor6'@'localhost', 'profesor7'@'localhost', 'profesor8'@'localhost';

GRANT SELECT ON vw_sede 
TO 'profesor1'@'localhost', 'profesor2'@'localhost', 'profesor3'@'localhost', 'profesor4'@'localhost', 'profesor5'@'localhost', 'profesor6'@'localhost', 'profesor7'@'localhost', 'profesor8'@'localhost';

GRANT SELECT ON vw_proyecto
TO 'profesor1'@'localhost', 'profesor2'@'localhost', 'profesor3'@'localhost', 'profesor4'@'localhost', 'profesor5'@'localhost', 'profesor6'@'localhost', 'profesor7'@'localhost', 'profesor8'@'localhost';

GRANT SELECT ON vw_direccion 
TO 'profesor1'@'localhost', 'profesor2'@'localhost', 'profesor3'@'localhost', 'profesor4'@'localhost', 'profesor5'@'localhost', 'profesor6'@'localhost', 'profesor7'@'localhost', 'profesor8'@'localhost';

GRANT SELECT ON vw_servicio_estado 
TO 'profesor1'@'localhost', 'profesor2'@'localhost', 'profesor3'@'localhost', 'profesor4'@'localhost', 'profesor5'@'localhost', 'profesor6'@'localhost', 'profesor7'@'localhost', 'profesor8'@'localhost';

GRANT SELECT ON vw_servicio_empresa 
TO 'profesor1'@'localhost', 'profesor2'@'localhost', 'profesor3'@'localhost', 'profesor4'@'localhost', 'profesor5'@'localhost', 'profesor6'@'localhost', 'profesor7'@'localhost', 'profesor8'@'localhost';

GRANT SELECT ON vw_servicio_ciudadania 
TO 'profesor1'@'localhost', 'profesor2'@'localhost', 'profesor3'@'localhost', 'profesor4'@'localhost', 'profesor5'@'localhost', 'profesor6'@'localhost', 'profesor7'@'localhost', 'profesor8'@'localhost';

GRANT SELECT ON vw_servicio_detalle_ciudadania 
TO 'profesor1'@'localhost', 'profesor2'@'localhost', 'profesor3'@'localhost', 'profesor4'@'localhost', 'profesor5'@'localhost', 'profesor6'@'localhost', 'profesor7'@'localhost', 'profesor8'@'localhost';

GRANT SELECT ON vw_servicio_detalle_empresa 
TO 'profesor1'@'localhost', 'profesor2'@'localhost', 'profesor3'@'localhost', 'profesor4'@'localhost', 'profesor5'@'localhost', 'profesor6'@'localhost', 'profesor7'@'localhost', 'profesor8'@'localhost';

GRANT SELECT ON vw_servicio_detalle_estado 
TO 'profesor1'@'localhost', 'profesor2'@'localhost', 'profesor3'@'localhost', 'profesor4'@'localhost', 'profesor5'@'localhost', 'profesor6'@'localhost', 'profesor7'@'localhost', 'profesor8'@'localhost';

GRANT SELECT ON vw_facultad 
TO 'profesor1'@'localhost', 'profesor2'@'localhost', 'profesor3'@'localhost', 'profesor4'@'localhost', 'profesor5'@'localhost', 'profesor6'@'localhost', 'profesor7'@'localhost', 'profesor8'@'localhost';

GRANT SELECT ON vw_decano 
TO 'profesor1'@'localhost', 'profesor2'@'localhost', 'profesor3'@'localhost', 'profesor4'@'localhost', 'profesor5'@'localhost', 'profesor6'@'localhost', 'profesor7'@'localhost', 'profesor8'@'localhost';

GRANT SELECT ON vw_cursos_diplomados 
TO 'profesor1'@'localhost', 'profesor2'@'localhost', 'profesor3'@'localhost', 'profesor4'@'localhost', 'profesor5'@'localhost', 'profesor6'@'localhost', 'profesor7'@'localhost', 'profesor8'@'localhost';

GRANT SELECT ON vw_modalidad 
TO 'profesor1'@'localhost', 'profesor2'@'localhost', 'profesor3'@'localhost', 'profesor4'@'localhost', 'profesor5'@'localhost', 'profesor6'@'localhost', 'profesor7'@'localhost', 'profesor8'@'localhost';

GRANT SELECT ON vw_estudiante 
TO 'profesor1'@'localhost', 'profesor2'@'localhost', 'profesor3'@'localhost', 'profesor4'@'localhost', 'profesor5'@'localhost', 'profesor6'@'localhost', 'profesor7'@'localhost', 'profesor8'@'localhost';

GRANT SELECT ON vw_profesor
TO 'profesor1'@'localhost', 'profesor2'@'localhost', 'profesor3'@'localhost', 'profesor4'@'localhost', 'profesor5'@'localhost', 'profesor6'@'localhost', 'profesor7'@'localhost', 'profesor8'@'localhost';

-- Asignacion de permisos para las personas que se encuentren en el rol de administrador.

GRANT SELECT ON vw_equipo_trabajo 
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

GRANT SELECT ON vw_sede 
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_proyecto
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

GRANT SELECT ON vw_direccion 
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_servicio_estado 
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_servicio_empresa 
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_servicio_ciudadania 
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_servicio_detalle_ciudadania 
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_servicio_detalle_empresa 
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_servicio_detalle_estado 
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_facultad 
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_profesor 
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

GRANT SELECT ON vw_decano 
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_cursos_diplomados 
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_modalidad 
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_estudiante 
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

GRANT SELECT ON vw_integrante_equipo_trabajo
TO 'admin0'@'localhost', 'admin1'@'localhost', 'admin2'@'localhost', 'admin3'@'localhost', 'admin4'@'localhost', 'admin5'@'localhost', 'admin6'@'localhost', 'admin7'@'localhost';

-- Asignacion de permisos para las personas que se encuentren en el rol de super administrador.

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_equipo_trabajo 
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_sede 
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_proyecto
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_direccion 
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_servicio_estado 
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_servicio_empresa 
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_servicio_ciudadania 
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_servicio_detalle_ciudadania 
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_servicio_detalle_empresa 
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_servicio_detalle_estado 
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_facultad 
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_profesor 
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_decano 
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_cursos_diplomados 
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_modalidad 
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_estudiante 
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE ON vw_integrante_equipo_trabajo
TO 'super_admin'@'localhost', 'super_admin1'@'localhost', 'super_admin2'@'localhost';


