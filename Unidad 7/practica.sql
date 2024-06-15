CREATE TABLE persona (
    correo varchar(40 ) NOT NULL constraint pers_pk PRIMARY KEY,
    nomu varchar(40) NOT NULL,
    nombre varchar(60)
);

CREATE TABLE curso (
    nom varchar(40 )  NOT NULL,
    ch integer NOT NULL,
    CONSTRAINT curso_pk PRIMARY KEY (nom)

);

CREATE TABLE dicta (
    correo varchar(40 )  NOT NULL,
    nom varchar(40 ) NOT NULL,
primary key(correo,nom),
foreign key(correo) references Persona(correo),    
foreign key(nom) references Curso(nom)
);

CREATE TABLE inscripcion (
    correo varchar(40 )  NOT NULL,
    nom varchar(40 ) NOT NULL,
    correod varchar(40 ) ,
    nota integer,
primary key(correo,nom),
foreign key(correo) references Persona(correo) ,
foreign key(correod) references Persona(correo) ,   
foreign key(nom) references Curso(nom)
);


CREATE TABLE tema (
    nom varchar(40 )  NOT NULL,
    tema varchar(40 ) NOT NULL,
 primary key(nom,tema),
 foreign key(nom) references curso(nom)     

);

INSERT INTO curso VALUES ('Python I', 29);
INSERT INTO curso VALUES ('Python II', 28);

INSERT INTO curso VALUES ('Javascript I', 50),
('Javascript II', 38),
('Kotlin I', 45),
('Kotlin II', 42);


--Inserciones de persona
INSERT INTO persona VALUES ('anagarcia32@gmail.com', 'AnaGarcia131', 'Ana Garcia');
INSERT INTO persona VALUES ('anagarcia56@gmail.com', 'AnaG56', 'Ana Garcia');
INSERT INTO persona VALUES ('pablogomes45@gmail.com', 'Pablito45', 'Pablo Gomes');
INSERT INTO persona VALUES ('rubengonzales104@gmail.com', 'RubenG10', 'Ruben Gonzales');
INSERT INTO persona VALUES ('estefaniaperalta@gmail.com', 'Estefania22', 'Estefania Peralta');
INSERT INTO persona VALUES ('gonzaloramos1978@yahoo.com.ar', 'GonzaloR78', 'Gonzalo Ramos');
INSERT INTO persona VALUES ('franciscopeña52@yahoo.com.ar', 'FranPeña865', 'Francisco Peña');
INSERT INTO persona VALUES ('pedroibañez@yahoo.com.ar', 'PedroIbañez223', 'Pedro Ibañez');
INSERT INTO persona VALUES ('gisellevasquez201@yahoo.com.ar', 'Giselle201', 'Giselle Vasquez');
INSERT INTO persona VALUES ('giselleV146@gmail.com', 'GVasquez24', 'Giselle Vasquez');


INSERT INTO tema VALUES ('Python I', 'Estructuras de datos');
INSERT INTO tema VALUES ('Python I', 'Estructuras de control');
INSERT INTO tema VALUES ('Python I', 'Aplicacion');
INSERT INTO tema VALUES ('Python I', 'Caracteristicas');
INSERT INTO tema VALUES ('Python II', 'Estructuras de datos');
INSERT INTO tema VALUES ('Python II', 'Estructuras de control');
INSERT INTO tema VALUES ('Python II', 'Aplicacion');
INSERT INTO tema VALUES ('Python II', 'Caracteristicas');
INSERT INTO tema VALUES ('Javascript I', 'Estructuras de datos');
INSERT INTO tema VALUES ('Javascript I', 'Estructuras de control');
INSERT INTO tema VALUES ('Javascript I', 'Aplicacion');
INSERT INTO tema VALUES ('Javascript I', 'Caracteristicas');
INSERT INTO tema VALUES ('Javascript II', 'Estructuras de datos');
INSERT INTO tema VALUES ('Javascript II', 'Estructuras de control');
INSERT INTO tema VALUES ('Javascript II', 'Aplicacion');
INSERT INTO tema VALUES ('Javascript II', 'Caracteristicas');
INSERT INTO tema VALUES ('Kotlin I', 'Estructuras de datos');
INSERT INTO tema VALUES ('Kotlin I', 'Estructuras de control');
INSERT INTO tema VALUES ('Kotlin I', 'Aplicacion');
INSERT INTO tema VALUES ('Kotlin I', 'Caracteristicas');
INSERT INTO tema VALUES ('Kotlin II', 'Estructuras de datos');
INSERT INTO tema VALUES ('Kotlin II', 'Estructuras de control');
INSERT INTO tema VALUES ('Kotlin II', 'Aplicacion');
INSERT INTO tema VALUES ('Kotlin II', 'Caracteristicas');



--Inserciones de inscripcion
INSERT INTO inscripcion VALUES('anagarcia32@gmail.com', 'Python I', 'estefaniaperalta@gmail.com', 7);
INSERT INTO inscripcion VALUES('franciscopeña52@yahoo.com.ar', 'Python I', 'estefaniaperalta@gmail.com', 9);
INSERT INTO inscripcion VALUES('anagarcia32@gmail.com', 'Python II', 'pedroibañez@yahoo.com.ar', 8);
INSERT INTO inscripcion VALUES('anagarcia56@gmail.com', 'Python II', 'estefaniaperalta@gmail.com', 6);
INSERT INTO inscripcion VALUES('pedroibañez@yahoo.com.ar', 'Python I', 'estefaniaperalta@gmail.com', 9);
INSERT INTO inscripcion VALUES('rubengonzales104@gmail.com', 'Kotlin I', 'gonzaloramos1978@yahoo.com.ar', 8);
INSERT INTO inscripcion VALUES('rubengonzales104@gmail.com', 'Kotlin II', 'gonzaloramos1978@yahoo.com.ar', 6);
INSERT INTO inscripcion VALUES('anagarcia56@gmail.com', 'Javascript I', 'pablogomes45@gmail.com', 7);
INSERT INTO inscripcion VALUES('gisellevasquez201@yahoo.com.ar', 'Javascript I', 'pablogomes45@gmail.com', 8);
INSERT INTO inscripcion VALUES('gisellevasquez201@yahoo.com.ar', 'Javascript II', 'pablogomes45@gmail.com', 7);
INSERT INTO inscripcion VALUES('giselleV146@gmail.com', 'Javascript II', 'pablogomes45@gmail.com', 7);


INSERT INTO dicta VALUES ('estefaniaperalta@gmail.com', 'Python I');
INSERT INTO dicta VALUES ('estefaniaperalta@gmail.com', 'Python II');
INSERT INTO dicta VALUES ('pedroibañez@yahoo.com.ar', 'Python II');
INSERT INTO dicta VALUES ('gonzaloramos1978@yahoo.com.ar', 'Kotlin I');
INSERT INTO dicta VALUES ('gonzaloramos1978@yahoo.com.ar', 'Kotlin II');
INSERT INTO dicta VALUES ('pablogomes45@gmail.com', 'Javascript I');
INSERT INTO dicta VALUES ('pablogomes45@gmail.com', 'Javascript II');


--A. Inserte nuevas Personas con los siguientes datos:  
--1. < kf@gmail.com, kf, Katerin Falcon > 
--1.    < mgh@gmail.com, mgh,Rosa González> 
--2.    < rgh@gmail.com, rlh,Rosa López>
INSERT INTO persona VALUES('kf@gmail.com','kf','Katerin Falcon');
INSERT INTO persona VALUES('mgh@gmail.com','mgh','Rosa González');
INSERT INTO persona VALUES('rgh@gmail.com','rlh','Rosa López');
--B. Inserte el nuevo curso con los siguientes datos:  
--3.     < Ruby, 40> 
INSERT INTO curso VALUES('Ruby',40);
--C. Inserte los temas para el curso con los siguientes datos:  
--4.     < Ruby, Estructura de Datos> 
--1.    < Ruby, Estructura de Control> 
INSERT INTO tema VALUES('Ruby','Estructura de Datos');
INSERT INTO tema VALUES('Ruby','Estructura de Control');
--D. Inserte la nueva tupla para DICTA con los siguientes datos:  
--5. < kf@gmail.com, Ruby> 
INSERT INTO dicta VALUES('kf@gmail.com','Ruby');
--E. Modifique la carga horaria del curso Ruby con el valor 60.
UPDATE curso SET ch=60 WHERE nom='Ruby';
--6. Elimine el curso Ruby*/



