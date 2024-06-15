CREATE TABLE Tarjeta
(num integer not null,
monto integer,
dni integer,
nombre varchar(30),
prov varchar(30),
primary key(num)
);

INSERT INTO Tarjeta VALUES
(100, 450, 35678900, 'Juan Perez', 'San Juan'),
(102, 678, 40222333, 'María Castro', 'Córdoba'),
(103, 450, 34567890, 'Ariel Gonzalez', 'San Juan'),
(344, 234, 33444567, 'Ian Mendez', 'San Juan'),
(345, 239, 38444567, 'Morena Torrez', 'San Luis'),
(500, 450, 34567890, 'Ariel Gonzalez', 'San Juan');

CREATE TABLE Linea
(codlinea varchar(10),
cuit integer,
primary key(codlinea,cuit),
foreign key(cuit) references Empresa(cuit) on delete cascade
);

INSERT INTO Linea VALUES
('26A', 1),
('48', 1),
('17',1),
('17',2),
('11', 2),
('26A', 3);

CREATE TABLE Empresa
(cuit integer,
nombre varchar(30),
direc varchar(30),
prov varchar(30),
primary key(cuit)
);

INSERT INTO Empresa VALUES
(1, 'El Triunfo', '9 de Julio 789 (o)', 'San Juan'),
(2, 'La Positiva', 'Av. Ignacio de la Rosa 4560(o)', 'San Juan'),
(3, 'La Cordobesa', 'Av 9 de Julio 890(N)', 'Córdoba');

CREATE TABLE Viajes
(num integer,
fecha date,
hora varchar(10),
codlinea varchar(10),
empresa integer,
importe float,
primary key(num, fecha, hora),
foreign key(codlinea, empresa) references Linea(codlinea, cuit) on delete cascade
);
INSERT INTO Viajes VALUES
(100, '2019-04-24', '12:45', '26A', 1, 16.9),
(100, '2018-10-15', '08:24', '26A', 3, 8.9),
(100, '2016-03-02', '18:24', '17', 2, 8.9),
(100, '2016-03-02', '22:24', '17', 2, 8.9),
(100, '2018-03-02', '22:24', '17', 2, 8.9),
(100, '2018-03-03', '22:24', '17', 2, 8.9),
(102, '2018-10-15', '09:56', '26A', 1, 15.4),
(102, '2018-09-09', '12:09', '48', 1, 12.4),
(103, '2019-05-04', '22:00', '26A', 1, 16.9),
(344, '2019-05-04', '20:08', '11', 2, 15.8),
(345, '2019-04-24', '12:55', '26A', 1, 16.9),
(345, '2019-04-24', '16:05', '26A', 1, 16.9),
(500, '2020-04-24', '16:05', '26A', 1, 16.9),
(500, '2019-12-20', '16:05', '26A', 3, 16.9);
