CREATE TABLE PERS (
    Correo VARCHAR(255) primary key,
    NomU VARCHAR(255),
    Nombre VARCHAR(255)
);

CREATE TABLE CURSO (
    Nom VARCHAR(255) primary key,
    Ch INTEGER
);

CREATE TABLE INSC (
    Correo VARCHAR(255),
    Nom VARCHAR(255),
    Correod VARCHAR(255),
    Nota INTEGER,
    constraint pk_insc primary key (Correo, Nom),
    CONSTRAINT insc_pers_fk FOREIGN KEY (correo) REFERENCES pers(correo) ON DELETE CASCADE ON UPDATE cascade,
	CONSTRAINT insc_curso_fk FOREIGN KEY (nom) REFERENCES curso(nom) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE DICTA (
    Correo VARCHAR(255),
    Nom VARCHAR(255),
    constraint pk_dicta primary key (Correo, Nom),
    CONSTRAINT dicta_pers_fk FOREIGN KEY (correo) REFERENCES pers(correo) ON DELETE CASCADE ON UPDATE cascade,
	CONSTRAINT dicta_curso_fk FOREIGN KEY (nom) REFERENCES curso(nom) ON DELETE CASCADE ON UPDATE CASCADE
);

create table TEMAS(
    Nom VARCHAR(255) ,
    Tema VARCHAR(255),
    constraint pk_tema primary key (Nom,Tema),
	CONSTRAINT tema_curso_fk FOREIGN KEY (nom) REFERENCES curso(nom) ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO PERS (Correo, NomU, Nombre)
VALUES
    ('anagarcia32@gmail.com','AnaGarcia131','Ana Garcia'),
    ('pablogomes45@gmail.com','Pablito45','Pablo Gomes'),
    ('rubengonzales104@gmail.com','RubenG10','Ruben Gonzales'),
    ('estefaniaperalta@gmail.com','Estefania22','Estefania Peralta'),
    ('gonzaloramos1978@yahoo.com.ar','GonzaloR78','Gonzalo Ramos'),
    ('RosaSanchez@yahoo.com.ar','Rosita171','Rosa Sanchez')

INSERT INTO CURSO (Nom, Ch)
VALUES
    ('Javascript I', 50),
    ('Javascript II', 38),
    ('SQL', 25),
   	('Ruby', 40);

-- Insertar datos en la tabla INSC
INSERT INTO INSC (Correo, Nom, Correod, Nota)
VALUES
    ('anagarcia56@gmail.com', 'Javascript I', 'pablogomes45@gmail.com', 7),
    ('gisellevasquez201@yahoo.com.ar', 'Javascript I', 'pablogomes45@gmail.com', 8),
    ('gisellevasquez201@yahoo.com.ar', 'Javascript II', 'pablogomes45@gmail.com', 7),
    ('giselleV146@gmail.com', 'Javascript II', 'pablogomes45@gmail.com', 7);

-- Insertar datos en la tabla DICTA
INSERT INTO DICTA (Correo, Nom)
VALUES
    ('pedroibañez@yahoo.com.ar', 'Kotlin I'),
    ('gonzaloramos1978@yahoo.com.ar', 'Python I'),
    ('gonzaloramos1978@yahoo.com.ar', 'SQL'),
    ('pablogomes45@gmail.com', 'Javascript I'),
    ('pablogomes45@gmail.com', 'Javascript II');

-- Insertar datos en la tabla TEMAS
INSERT INTO TEMAS (Nom, Tema)
VALUES
    ('Python I', 'Estructuras de datos'),
    ('Python I', 'Caracteristicas'),
    ('Python II', 'Aplicacion'),
    ('Python II', 'Caracteristicas'),
    ('Javascript I', 'Estructuras de datos'),
    ('Javascript I', 'Estructuras de control'),
    ('Javascript I', 'Aplicacion'),
    ('Javascript I', 'Caracteristicas'),
    ('Javascript II', 'Estructuras de datos'),
    ('Javascript II', 'Estructuras de control'),
    ('Javascript II', 'Aplicacion'),
    ('Javascript II', 'Caracteristicas'),
    ('Kotlin I', 'Estructuras de control'),
    ('Kotlin I', 'Caracteristicas'),
    ('Kotlin II', 'Estructuras de datos'),
    ('Kotlin II', 'Estructuras de control'),
    ('Kotlin II', 'Aplicacion'),
    ('Kotlin II', 'Caracteristicas');
