CREATE TABLE liquidaciones(
    id SERIAL NOT NULL PRIMARY KEY,
    ruta VARCHAR(50) NOT NULL
);

CREATE TABLE departamentos(
    id SERIAL NOT NULL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE trabajadores(
    rut VARCHAR(13) UNIQUE NOT NULL PRIMARY KEY,
    nombre VARCHAR (100) NOT NULL,
    direccion VARCHAR (100) NOT NULL,
    id_departamento INT NOT NULL REFERENCES departamentos(id),
    id_liquidacion INT NOT NULL REFERENCES liquidaciones(id)
);
