/*
7. Actualice la carga horaria del curso Ruby por 60.
8. Elimine el curso Ruby I.
9. Correo y nombre de todas las personas.
10. Cantidad de cursos.
11. Cantidad de docentes.
12. Nota máxima obtenida en el curso ‘’Python I‘’.
13. Nombre de los cursos ordenados por nombre.
14. Nombre del curso que tiene una carga horaria superior a la de todos los cursos que dicta “pedroibañez@yahoo.com.ar”.
15. Personas, docentes o alumnos(todos sus datos) que se llama Rosa
16. Cursos que tienen una carga horaria superior a la del curso “Kotlin I”, ordenados descendentemente por cantidad de horas.
17. Cursos (todos los datos) cuya carga horaria sea superior a las 40 horas reloj.
18. Cursos (todos los datos) cuya carga horaria se encuentre entre 40 y 45 horas reloj.
19. Docentes (correo y nombre) que dictan cursos.
20. Listado de los cursos (nombre) junto a los datos del docente que los dicta.
21. Obtenga el curso (todos los datos) junto a los datos de los alumnos inscriptos. Se deben incluir todos los cursos registrados más allá que no tengan alumnos inscriptos.. (Usar OUTER JOIN)
22. Docentes (todos los datos) que dictan los cursos “Python I”.
23. Docentes (todos los datos) que dictan los cursos “Python II”.
24. Listado de docentes (correo) que dictan el curso “Python I” y/o “Python II”.
25. Docentes (correo) que dictan los cursos “Python I” y “Python II”.
26. Docentes (todos los datos) que cursaron algún curso de verano.
27. Alumnos (todos los datos) que se inscribieron en el curso “Kotlin I”.
28. Alumnos (todos los datos) que se inscribieron en el curso “Kotlin II”.
29. Listado de alumnos (correo) que se inscribieron tanto en el curso “Kotlin I” como “Kotlin II”.
30. Alumnos (todos los datos) que aprobaron el curso “Python I” y “Python II”.
31. Alumnos (Correo) que se inscribieron en más de un curso de verano.
32. Docentes (correo) que dictan más de un curso.
33. Docentes (todos los datos) que dictan más de un curso cuya carga horaria sea inferior a 30 horas reloj.
34. Alumnos (correo) que cursaron los mismos cursos.
35. Pares de Alumnos (todos los datos) que cursaron los mismos cursos.
36. Pares de Alumnos que cursaron los mismos cursos con distinto profesor.
*/

CREATE TABLE PERS (
    Correo VARCHAR(255),
    NomU VARCHAR(255),
    Nom VARCHAR(255)
);

CREATE TABLE CURSO (
    Nom VARCHAR(255),
    Ch INTEGER
);

CREATE TABLE INSC (
    Correo VARCHAR(255),
    Nom VARCHAR(255),
    Correod VARCHAR(255),
    Nota INTEGER
);

CREATE TABLE DICTA (
    Correo VARCHAR(255),
    Nom VARCHAR(255)
);

CREATE TABLE TEMAS (
    Nom VARCHAR(255),
    Tema VARCHAR(255)
);
-- Insertar datos en la tabla PERS
INSERT INTO PERS (Correo, NomU, Nom)
VALUES
    ('anagarcia32@gmail.com','AnaGarcia131','Ana Garcia'),
    ('pablogomes45@gmail.com','Pablito45','Pablo Gomes'),
    ('rubengonzales104@gmail.com','RubenG10','Ruben Gonzales'),
    ('estefaniaperalta@gmail.com','Estefania22','Estefania Peralta'),
    ('gonzaloramos1978@yahoo.com.ar','GonzaloR78','Gonzalo Ramos')
    

-- Insertar datos en la tabla CURSO
INSERT INTO CURSO (Nom, Ch)
VALUES
    ('Javascript I', 50),
    ('Javascript II', 38),
    ('SQL', 25);

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

--2
INSERT INTO PERS (correo,nomu,nom)
VALUES
	('anagarcia56@gmail.com', 'AnaG56','Ana Garcia' ),
	('franciscopeña52@yahoo.com.ar','FranPeña865','Gonzalo Ramos'),
	('pedroibañez@yahoo.com.ar','PedroIbañez223','Pedro Ibañez'),
	('gisellevasquez201@yahoo.com.ar','Giselle201','Giselle Vasquez'),
	('giselleV146@gmail.com','GVasquez24','Giselle Vasquez');

--3
INSERT INTO CURSO (nom,ch)
VALUES 
	('Python I', 29),
	('Python II', 28),
	('Kotlin I',45),
	('Kotlin II',42);

--4
INSERT INTO TEMAS (nom,tema)
VALUES
	('Python I', 'Estructuras de control'),
	('Python I', 'Aplicacion'),
	('Python II', 'Estructuras de datos'),
	('Python II', 'Estructuras de control'),
	('Kotlin I', 'Estructuras de datos'),
	('Kotlin I', 'Aplicacion');

--5
INSERT INTO DICTA (correo,nom)
VALUES
	('estefaniaperalta@gmail.com', 'Python I'),
	('estefaniaperalta@gmail.com', 'Python II'),
	('gonzaloramos1978@yahoo.com.ar', 'Kotlin I'),
	('gonzaloramos1978@yahoo.com.ar', 'Kotlin II');

--6
INSERT INTO INSC (correo,nom,correod,nota)
VALUES
	('anagarcia32@gmail.com', 'Python I', 'estefaniaperalta@gmail.com', 7),
	('franciscopeña52@yahoo.com.ar', 'Python I', 'estefaniaperalta@gmail.com', 9),
	('anagarcia32@gmail.com', 'Python II', 'pedroibañez@yahoo.com.ar', 8),
	('anagarcia56@gmail.com', 'Python II', 'estefaniaperalta@gmail.com', 6),
	('pedroibañez@yahoo.com.ar', 'Python I', 'estefaniaperalta@gmail.com', 9),
	('rubengonzales104@gmail.com', 'Kotlin I', 'gonzaloramos1978@yahoo.com.ar', 8),
	('rubengonzales104@gmail.com', 'Kotlin II', 'gonzaloramos1978@yahoo.com.ar', 6);

--7 Actualice la carga horaria del curso Ruby por 60
UPDATE CURSO SET ch=60 WHERE nom='Ruby';

--8 Elimine el curso Ruby I.
DELETE FROM CURSO WHERE Nom = 'Ruby';

--9 Correo y nombre de todas las personas.
SELECT correo,nom FROM PERS;

--10 Cantidad de cursos.
SELECT COUNT(*) FROM CURSO;

--11 Cantidad de docentes.
SELECT COUNT(*) FROM (PERS  JOIN DICTA ON PERS.correo = DICTA.correo);

--12 Nota máxima obtenida en el curso ‘’Python I‘’.
SELECT MAX(nota) FROM INSC WHERE nom='Python I';

--13 Nombre de los cursos ordenados por nombre.
SELECT nom FROM CURSO ORDER BY nom ASC;

--14 Nombre del curso que tiene una carga horaria superior a la de todos los cursos que dicta “pedroibañez@yahoo.com.ar"
SELECT nom 
	FROM CURSO 
	WHERE ch > (
		SELECT MAX(ch) 
		FROM CURSO 
		NATURAL JOIN DICTA 
		WHERE correo='pedroibañez@yahoo.com.ar'
	);

--15 Personas, docentes o alumnos(todos sus datos) que se llama Rosa
SELECT * FROM PERS WHERE nom='Rosa%'; /*Al poner al final el % indica que la palabra esta al inicio*/

--16  Cursos que tienen una carga horaria superior a la del curso “Kotlin I”, ordenados descendentemente por cantidad de horas.
SELECT nom FROM CURSO WHERE ch > (SELECT ch 
	FROM CURSO 
	WHERE nom='Kotlin I');

--17 Cursos (todos los datos) cuya carga horaria sea superior a las 40 horas reloj.
SELECT * FROM CURSO WHERE ch>40;

--18 Cursos (todos los datos) cuya carga horaria se encuentre entre 40 y 45 horas reloj.
SELECT * FROM CURSO WHERE ch>40 and ch<45;
SELECT * FROM CURSO WHERE ch BETWEEN 40 AND 45;

--19 Docentes (correo y nombre) que dictan cursos.
SELECT DISTINCT PERS.correo,PERS.nom 
	FROM PERS 
	JOIN DICTA ON PERS.correo = DICTA.correo;

--20 Listado de los cursos (nombre) junto a los datos del docente que los dicta.
SELECT DICTA.nom AS nombreCurso,AUX.correo,AUX.nomu,AUX.nom
	FROM CURSO
	LEFT JOIN (
		SELECT DICTA.nom AS nombreCurso,PERS.correo,PERS.nomu,PERS.nom 
		FROM PERS JOIN DICTA ON PERS.correo = DICTA.correo) AUX ON CURSO.nom = AUX.nombreCurso
	);

SELECT DISTINCT CURSO.nom AS nombreCurso, PERS.correo, PERS.nomu, PERS.nom
FROM CURSO
LEFT JOIN DICTA ON CURSO.nom = DICTA.nom
LEFT JOIN PERS ON DICTA.correo = PERS.correo;

--21 Obtenga el curso (todos los datos) junto a los datos de los alumnos inscriptos. Se deben incluir todos los cursos registrados más allá que no tengan alumnos inscriptos.. (Usar OUTER JOIN)
SELECT CURSO.*,INSC.correo,INSC.nota 
	FROM CURSO 
	LEFT OUTER JOIN INSC ON CURSO.nom = INSC.nom;

--22 Docentes (todos los datos) que dictan los cursos “Python I”.
SELECT DISTINCT PERS.nom,PERS.correo,PERS.nomu FROM PERS JOIN DICTA ON PERS.correo = DICTA.correo and DICTA.nom ='Python I';

--23 Docentes (todos los datos) que dictan los cursos “Python II”.
SELECT DISTINCT PERS.nom,PERS.correo,PERS.nomu FROM PERS JOIN DICTA ON PERS.correo = DICTA.correo and DICTA.nom ='Python II';

--24 Listado de docentes (correo) que dictan el curso “Python I” y/o “Python II”. 
SELECT DISTINCT PERS.correo 
	FROM PERS 
	JOIN DICTA ON PERS.correo = DICTA.correo and DICTA.nom ='Python I'
UNION
SELECT DISTINCT PERS.correo
	FROM PERS 
	JOIN DICTA ON PERS.correo = DICTA.correo and DICTA.nom ='Python II';

--25 Docentes (correo) que dictan los cursos “Python I” y “Python II”.
SELECT DISTINCT PERS.correo 
	FROM PERS 
	JOIN DICTA ON PERS.correo = DICTA.correo and DICTA.nom ='Python I'
INTERSECT
SELECT DISTINCT PERS.correo
	FROM PERS 
	JOIN DICTA ON PERS.correo = DICTA.correo and DICTA.nom ='Python II';

--26 Docentes (todos los datos) que cursaron algún curso de verano.
SELECT DISTINCT PERS.*
FROM PERS
JOIN DICTA ON PERS.correo = DICTA.correo
JOIN INSC ON PERS.correo = INSC.correod

--27 Alumnos (todos los datos) que se inscribieron en el curso “Kotlin I”.
SELECT PERS.*
FROM PERS
JOIN INSC ON PERS.correo = INSC.correo and INSC.nom='Kotlin I'

--28 Alumnos (todos los datos) que se inscribieron en el curso “Kotlin II”.
SELECT PERS.*
	FROM PERS
	JOIN INSC ON PERS.correo = INSC.correo and INSC.nom='Kotlin II'

--29 Listado de alumnos (correo) que se inscribieron tanto en el curso “Kotlin I” como “Kotlin II”.
SELECT PERS.correo
	FROM PERS
	JOIN INSC ON PERS.correo = INSC.correo and INSC.nom='Kotlin I'
INTERSECT
SELECT PERS.correo
	FROM PERS
	JOIN INSC ON PERS.correo = INSC.correo and INSC.nom='Kotlin II'

--30 Alumnos (todos los datos) que aprobaron el curso “Python I” y “Python II”. 
SELECT PERS.*
	FROM PERS
	JOIN INSC ON PERS.correo = INSC.correo and INSC.nota>=7 and INSC.nom ='Python I'
INTERSECT
SELECT PERS.*
	FROM PERS
	JOIN INSC ON PERS.correo = INSC.correo and INSC.nota>=7 and INSC.nom ='Python II'

--31 Alumnos (Correo) que se inscribieron en más de un curso de verano.
SELECT DISTINCT INSC.correo
FROM INSC INSC2
JOIN INSC ON INSC2.correo = INSC.correo and INSC.nom <> INSC2.nom

SELECT INSC.correo
FROM INSC
JOIN CURSO ON INSC.nom = CURSO.nom
GROUP BY INSC.correo
HAVING COUNT(DISTINCT INSC.nom) > 1;

--32 Docentes (correo) que dictan más de un curso.
SELECT DICTA.correo
	FROM DICTA
	JOIN CURSO ON CURSO.nom = DICTA.nom
	GROUP BY DICTA.correo
	HAVING COUNT(DISTINCT DICTA.nom) > 1

--33 Docentes (todos los datos) que dictan más de un curso cuya carga horaria sea inferior a 30 horas reloj.
SELECT PERS.*
	FROM PERS
	JOIN DICTA ON PERS.correo = DICTA.correo
	JOIN CURSO ON DICTA.nom = CURSO.nom
	WHERE CURSO.ch < 30
	GROUP BY (PERS.nom, PERS.nomu,PERS.correo)
	HAVING COUNT(DISTINCT DICTA.nom) > 1

--34 Alumnos (correo) que cursaron los mismos cursos.
WITH Alumnos_Cursos AS (
    SELECT correo, STRING_AGG(nom, ',') AS cursos
    FROM INSC
    GROUP BY correo
)
SELECT A1.correo AS Alumno1
FROM Alumnos_Cursos A1
JOIN Alumnos_Cursos A2 ON A1.cursos = A2.cursos AND A1.correo <> A2.correo;