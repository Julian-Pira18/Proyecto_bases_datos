CREATE ROLE student;
CREATE ROLE teacher;
CREATE ROLE admin_;
CREATE ROLE super_admin;


GRANT CREATE, SELECT, INSERT, UPDATE, DELETE ON extension.* to super_admin;

GRANT SELECT ON extension.vw_equipo_trabajo TO student;
GRANT SELECT ON extension.vw_sede TO student;
GRANT SELECT ON extension.vw_direccion TO student;
GRANT SELECT ON extension.vw_proyecto TO student;
GRANT SELECT ON extension.vw_decano TO student;
GRANT SELECT ON extension.vw_facultad TO student;
GRANT SELECT ON extension.vw_modalidad TO student;
GRANT SELECT ON extension.vw_cursos_diplomados TO student;
GRANT SELECT ON extension.vw_estudiante TO student;
GRANT SELECT ON extension.vw_servicio_ciudadania TO student;
GRANT SELECT ON extension.vw_servicio_detalle_ciudadania TO student;
GRANT SELECT ON extension.vw_servicio_estado TO student;
GRANT SELECT ON extension.vw_servicio_detalle_estado TO student;
GRANT SELECT ON extension.vw_servicio_empresa TO student;


GRANT SELECT ON extension.vw_equipo_trabajo TO teacher;
GRANT SELECT ON extension.vw_sede TO teacher;
GRANT SELECT ON extension.vw_direccion TO teacher;
GRANT SELECT ON extension.vw_proyecto TO teacher;
GRANT SELECT ON extension.vw_decano TO teacher;
GRANT SELECT ON extension.vw_facultad TO teacher;
GRANT SELECT ON extension.vw_modalidad TO teacher;
GRANT SELECT ON extension.vw_cursos_diplomados TO teacher;
GRANT SELECT ON extension.vw_estudiante TO teacher;
GRANT SELECT ON extension.vw_servicio_ciudadania TO teacher;
GRANT SELECT ON extension.vw_servicio_detalle_ciudadania TO teacher;
GRANT SELECT ON extension.vw_servicio_estado TO teacher;
GRANT SELECT ON extension.vw_servicio_detalle_estado TO teacher;
GRANT SELECT ON extension.vw_servicio_empresa TO teacher;

GRANT SELECT ON extension.vw_equipo_trabajo TO admin_;
GRANT SELECT ON extension.vw_integrante_equipo_trabajo TO admin_;
GRANT SELECT ON extension.vw_sede TO admin_;
GRANT SELECT ON extension.vw_direccion TO admin_;
GRANT SELECT ON extension.vw_proyecto TO admin_;
GRANT SELECT ON extension.vw_decano TO admin_;
GRANT SELECT ON extension.vw_facultad TO admin_;
GRANT SELECT ON extension.vw_profesor TO admin_;
GRANT SELECT ON extension.vw_modalidad TO admin_;
GRANT SELECT ON extension.vw_cursos_diplomados TO admin_;
GRANT SELECT ON extension.vw_estudiante TO admin_;
GRANT SELECT ON extension.vw_servicio_ciudadania TO admin_;
GRANT SELECT ON extension.vw_servicio_detalle_ciudadania TO admin_;
GRANT SELECT ON extension.vw_servicio_estado TO admin_;
GRANT SELECT ON extension.vw_servicio_detalle_estado TO admin_;
GRANT SELECT ON extension.vw_servicio_empresa TO admin_;

GRANT CREATE, INSERT, UPDATE, DELETE ON extension.vw_proyecto TO admin_;
GRANT CREATE, INSERT, UPDATE, DELETE ON extension.vw_facultad TO admin_;
GRANT CREATE, INSERT, UPDATE, DELETE ON extension.vw_profesor TO admin_;
GRANT CREATE, INSERT, UPDATE, DELETE ON extension.vw_modalidad TO admin_;
GRANT CREATE, INSERT, UPDATE, DELETE ON extension.vw_cursos_diplomados TO admin_;
GRANT CREATE, INSERT, UPDATE, DELETE ON extension.vw_estudiante TO admin_;
GRANT CREATE, INSERT, UPDATE, DELETE ON extension.vw_servicio_ciudadania TO admin_;
GRANT CREATE, INSERT, UPDATE, DELETE ON extension.vw_servicio_detalle_ciudadania TO admin_;    
GRANT CREATE, INSERT, UPDATE, DELETE ON extension.vw_servicio_estado TO admin_;
GRANT CREATE, INSERT, UPDATE, DELETE ON extension.vw_servicio_detalle_estado TO admin_;
GRANT CREATE, INSERT, UPDATE, DELETE ON extension.vw_servicio_empresa TO admin_;