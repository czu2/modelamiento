CREATE TABLE cursos(
    id SERIAL NOT NULL PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL
);

CREATE TABLE alumnos(
    rut VARCHAR(13) NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_curso INT NOT NULL REFERENCES cursos(id)
);

CREATE TABLE departamentos(
    id SERIAL NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE profesores(
    id SERIAL NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_departamento INT NOT NULL REFERENCES departamentos(id)
);

CREATE TABLE pruebas(
    id SERIAL NOT NULL PRIMARY KEY,
    puntaje INT NOT NULL,
    id_profesor INT NOT NULL REFERENCES profesores(id)
);

CREATE TABLE alumnos_pruebas(
    id_alumno VARCHAR(13) NOT NULL REFERENCES alumnos(rut),
    id_prueba INT NOT NULL REFERENCES pruebas(id)
);

