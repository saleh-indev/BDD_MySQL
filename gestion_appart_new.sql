
CREATE DATABASE appartment;

CREATE TABLE IF NOT EXISTS Emplacement(
    id_emplacement INTEGER NOT NULL UNIQUE PRIMARY KEY,
    department_id VARCHAR(5) NOT NULL,
    commune VARCHAR(45) NOT NULL,
    voie VARCHAR(5) NULL
);

CREATE TABLE IF NOT EXISTS Bien(
    id_bien INTEGER NOT NULL UNIQUE PRIMARY KEY,
    piece INTEGER NOT NULL,
    type_local VARCHAR(25) NOT NULL,
    surface_carree DECIMAL(6,2) NOT NULL,
    surface_terrain INTEGER,
    id_emplacement INTEGER NOT NULL,
    FOREIGN KEY (id_emplacement) REFERENCES Emplacement(id_emplacement)
);


CREATE TABLE IF NOT EXISTS Mutation(
    id_mutation INTEGER NOT NULL UNIQUE PRIMARY KEY,
    date_m DATE NOT NULL,
    valeur DECIMAL(9,2) NOT NULL,
    id_bien INTEGER NOT NULL,
    FOREIGN KEY (id_bien) REFERENCES Bien(id_bien)
);