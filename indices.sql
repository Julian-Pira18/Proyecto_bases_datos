-- Se realiza el indice para que todos los usuarios independiente de su rol puedan observar el nombre y la fecha de los cursos a una mayor velocidad.
CREATE INDEX cursos_diplomados_index ON cursos_diplomados(nombre, fecha) USING HASH;

-- Se realiza el indice para que los usuarios con el rol de ciudadania puedan observar el nombre de cada servicio que se brinda a una mayor velocidad.
CREATE UNIQUE INDEX servicio_detalle_ciudadania_index ON servicio_detalle_ciudadania(nombre);

-- Se realiza el indice para que los usuarios con el rol de empresa puedan observar el nombre de cada servicio que se brinda a una mayor velocidad.
CREATE UNIQUE INDEX servicio_detalle_empresa_index ON servicio_detalle_empresa(nombre);

-- Se realiza el indice para que los usuarios con el rol de gobierno puedan observar el nombre de cada servicio que se brinda a una mayor velocidad.
CREATE UNIQUE INDEX servicio_detalle_estado_index ON servicio_detalle_estado(nombre);

-- Se realiza el indice para que cada usuario independiente de su rol pueda ver su informacion a mayor velocidad.
CREATE INDEX estudiante_index ON estudiante(nombre, correo, rol);

-- Se realiza el indice para que los usuarios con el rol de ciudadania y que ademas sean estudiantes de la universidad tengan acceso a la informacion de las practicas y pasantias que se esten brindando a mayor velocidad.
CREATE UNIQUE INDEX practicas_pasantia_index ON practicas_pasantia(nombre);

-- Se realiza el indice para que los usuarios con el rol de administrador puedan acceder eficazmente a los datos de los profesores.
CREATE INDEX profesor_index ON profesor(nombre, correo) USING HASH;

-- Se realiza el indice para que los usuarios con el rol de administrador puedan acceder eficazmente a los datos de los decanos.
CREATE INDEX decano_index ON decano(nombre, correo) USING HASH;

-- Se realiza el indice para que los usuarios con el rol de administrador puedan acceder eficazmente a los datos de los proyectos que se esten ejecutano o planeando.
CREATE INDEX proyecto_index ON proyecto(nombre) USING HASH;

-- Se realiza el indice para que los usuarios con el rol de administrador puedan acceder eficazmente a los datos de los integrantes pertenecientes a un equipo de trabajo.
CREATE INDEX integrante_equipo_trabajo_index ON integrante_equipo_trabajo(correo, cargo) USING HASH;

-- Se realiza el indice para que los usuraios independiente de su rol puedan acceder eficamente a la informacion de cada sede.
CREATE INDEX sede_index ON sede(nombre, correo, numero);

-- Se realiza el indice para que los usurios con el rol de administrador puedan acceder eficazmente al cargo de los equipos de trabajo.
CREATE UNIQUE INDEX equipo_trabajo_index ON equipo_trabajo(cargo);
