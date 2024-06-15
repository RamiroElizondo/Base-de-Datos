create table Persona (
    nom varchar(30) not null constraint pers_pk primary key,
    fechanac date
);
create table Pelicula (
    titulo varchar(40) not null constraint pel_pk primary key,
    estreno date,
	lema varchar(60)
);

CREATE TABLE Actua
    (
        nom varchar(30) NOT NULL,
        titulo varchar(40)  NOT NULL,
        primary key(nom,titulo),
        foreign key(nom) references Persona(nom) on delete cascade,
        foreign key(titulo) references Pelicula(titulo) on delete cascade      
    );
CREATE TABLE Dirige
    (
        nom varchar(30) NOT NULL,
        titulo varchar(40)  NOT NULL,
        primary key(nom,titulo),
        foreign key(nom) references Persona(nom) on delete cascade,
        foreign key(titulo) references Pelicula(titulo) on delete cascade      
    );

create table Sigue (
    seguido varchar(30) not null,
    seguidor varchar(30) not null,
	primary key(seguido,seguidor),
	foreign key(seguido) references Persona(nom) on delete cascade,
    foreign key(seguidor) references Persona(nom) on delete cascade
);

insert into Persona values
        ('Keanu Reeves','1964-03-23'),
        ('Carrie-Anne Moss','1967-03-29'),
        ('Hugo Weaving','1960-03-30'),
        ('Emil Eifrem','1978-10-20'),
    		('Al Pacino','1940-10-20'),
    		('Charlize Theron','1975-10-20'),
    		('Lilly Wachowski','1967-05-27'),
    		('Taylor Hackford','1944-08-13'),
	    	('Paul Blythe','2009-12-13');
insert into Pelicula values
        ('The Matrix','1990-09-13','Welcome to the Real World'),
        ('The Matrix Revolutions','2003-04-19','Everything that has a beginning has an end'),
        ('The Devils Advocate','1997-08-30','Evil has its winning ways');
		
Insert into Actua values
     ('Keanu Reeves','The Matrix'),
     ('Hugo Weaving','The Matrix'),
	 ('Emil Eifrem','The Matrix'),
	 ('Al Pacino','The Matrix'),
	 ('Keanu Reeves','The Matrix Revolutions'),
	 ('Lilly Wachowski','The Matrix Revolutions'),
	 ('Al Pacino','The Matrix Revolutions'),
	 ('Keanu Reeves','The Devils Advocate'),
	 ('Al Pacino','The Devils Advocate');

Insert into Dirige values
     ('Carrie-Anne Moss','The Matrix'),
     ('Hugo Weaving','The Matrix'),
	 ('Keanu Reeves','The Matrix Revolutions'),
	 ('Carrie-Anne Moss','The Matrix Revolutions'),
	 ('Carrie-Anne Moss','The Devils Advocate'),
	 ('Taylor Hackford','The Devils Advocate');
Insert into Sigue values
     ('Keanu Reeves','Hugo Weaving'),
     ('Keanu Reeves','Al Pacino'),
	 ('Emil Eifrem','Lilly Wachowski'),
	 ('Keanu Reeves','Paul Blythe'),
	 ('Al Pacino','Keanu Reeves');
--1. Personas (nombre) que han actuado en más de una película estrenada en 
--el año 1990.


--2. Películas (título y lema) en las que han actuado solamente personas 
--que nacieron antes del 1970.

SELECT titulo,lema
FROM Pelicula
WHERE titulo in (
  SELECT DISTINCT Actua.titulo
    FROM Actua
    NATURAL JOIN PERSONA 
    WHERE Persona.fechanac<date('1970-01-01')
  EXCEPT
  SELECT DISTINCT Actua.titulo
    FROM Actua
    NATURAL JOIN PERSONA
    WHERE Persona.fechanac>date('1970-01-01'));


--3. Personas (todos los datos) que han actuado en todas las películas 
--dirigidas por Carrie-Anne Moss.
SELECT nom,fechanac
FROM Persona
WHERE Not exists(
  SELECT titulo
  FROM Pelicula
  NATURAL JOIN DIRIGE
  WHERE DIRIGE.nom = 'Carrie-Anne Moss' and not exists(
    SELECT *
    FROM Actua
    WHERE Persona.nom = Actua.nom and Actua.titulo = Pelicula.titulo
  )
);


--lo que tengo al final (divisor) va al medio, el dividendo va al final y 
--la tabla de donde saco los datos que necesito al principio


--4. Obtener el título y fecha de estreno de las películas dirigidas 
--por Keanu Reeves.

SELECT titulo,estreno
  FROM Pelicula
  NATURAL JOIN Dirige
  WHERE Dirige.nom='Keanu Reeves';
--5. Personas (todos los datos) que han actuado y/o dirigido en las mismas 
--Películas en las que actuó Keanu Reeves.
SELECT DISTINCT Persona.nom,Persona.fechanac
	FROM Persona
	JOIN Actua A1 ON A1.nom = Persona.nom
	JOIN ACTUA A2 ON A2.titulo = A1.titulo
	WHERE A2.nom = A1.nom and A1.nom<>'Keanu Reeves'

UNION
SELECT DISTINCT Persona.nom,Persona.fechanac
	FROM Persona
	JOIN Dirige ON Dirige.nom = Persona.nom	
	JOIN Actua ON Actua.titulo = Dirige.titulo
	WHERE Actua.nom='Keanu Reeves' and Dirige.nom <> 'Keanu Reeves'

--6. Personas (nombre) que han actuado en las películas The Matrix y 
--The Matrix Revolutions.
SELECT nom
	FROM Persona
	NATURAL JOIN Actua
	WHERE Actua.titulo='The Matrix'
intersect
SELECT nom
	FROM Persona
	NATURAL JOIN Actua
	WHERE Actua.titulo='The Matrix Revolutions'
--7. Persona/s (todos los datos) que ha/n dirigido más películas.
SELECT nom,fechanac
	FROM Persona
	NATURAL JOIN Dirige
	GROUP BY nom
	HAVING COUNT(nom)=(
		SELECT MAX(cantD) 
			FROM(
				SELECT nom,COUNT(nom) as cantD
				FROM Dirige
				GROUP BY nom
			)
		)
--8. Nombre de la persona junto a la cantidad de películas que ha dirigido.
SELECT nom,COUNT(nom)
	FROM Dirige
	GROUP BY nom
--9. Personas (todos sus datos) que han participado actuando y dirigiendo 
--la misma película.
SELECT Persona.nom,Persona.fechanac
	FROM Persona
	NATURAL JOIN Actua
	NATURAL JOIN Dirige 
	WHERE Actua.nom =Dirige.nom and Actua.titulo = Dirige.titulo
	SELECT * FROM Actua
	Intersect
	sELECT * FROM Dirige

--10.Título de la película junto a la cantidad de personas que participaron
--actuando y/o dirigiendo.(consultar)
SELECT titulo,SUM(cant)
FROM(
	SELECT Pelicula.titulo,count(nom) as cant
		FROM Pelicula
		JOIN Actua ON Pelicula.titulo = Actua.titulo
		GROUP BY Pelicula.titulo
	union all
	SELECT Pelicula.titulo,count(nom) as cant
		FROM Pelicula
		JOIN Dirige ON Pelicula.titulo = Dirige.titulo
		GROUP BY Pelicula.titulo
	) 
GROUP BY titulo
