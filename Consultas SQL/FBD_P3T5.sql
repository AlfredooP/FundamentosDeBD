create database p3t5
go

use p3t5
go

create table autor(
	codigoAutor varchar(5) primary key,
	nomb1A varchar(30),
	nomb2A varchar(30),
	apPatA varchar(30),
	apMatA varchar(30),
	fechaNacA date
)
go

create table usuario(
	codigoUsuario varchar(5) primary key,
	nomb1U varchar(30),
	nomb2U varchar(30),
	apPatU varchar(30),
	apMatU varchar(30),
	calleU varchar(30),
	numU varchar(10),
	colU varchar(30),
	cpU varchar(10),
	cdU varchar(30)
)
go

create table usuario_tel(
	codigoU varchar(5),
	telefono varchar(18),
	primary key (codigoU,telefono),
	constraint FK_UT foreign key (codigoU) references usuario (codigoUsuario)
)
go

create table libro(
	codigoL int primary key,
	titulo varchar(30),
	editorial varchar(30),
	numPags int,
)
go

create table volumen(
	codigoV varchar(5) primary key,
	localizacion varchar(20),
	codigoU varchar(5),
	constraint FK_VU foreign key (codigoU) references usuario (codigoUsuario),
	fechaP date,
	fechaD date,
	codigoL int,
	constraint FK_VL foreign key (codigoL) references libro (codigoL),
)
go

create table autor_libro(
	codigoAutor varchar(5),
	codigoL int,
	primary key (codigoAutor,codigoL),
	constraint FK_ALA foreign key (codigoAutor) references autor(codigoAutor),
	constraint FK_ALL foreign key (codigoL) references libro(codigoL),
)

insert into autor values									
(100,'JUAN','JOSE','LIRA','MARTINEZ','1980-01-30'),
(200,'JUAN','','LOPEZ','LOPEZ','1980-12-11'),
(300,'LUIS','ELIAS','RODRIGUEZ','LOERA','2000-11-28'),
(400,'ALBERTO','CARLOS','SILVA','FONG','1979-10-13'),
(500,'ROBERTO','','BRISEÑO','LIRA','1985-08-31'),
(600,'BENITO','','CASTRO','LIRA','1988-05-17'),
(700,'LUIS','ANTONIO','CASTILLO','LOPEZ','1960-06-07'),
(800,'JUAN','JOSE','SORIANO','RODRIGUEZ','1991-05-05'),
(900,'ESTEBAN','MARIANO','ARIAS','BATARSE','2001-10-28'),
(1000,'JORGE','LUIS','RODRIGUEZ','MEJIA','2009-05-16'),
(1100,'MARTIN','SEBASTIAN','LOPEZ','MORENO','2008-07-29'),
(1200,'LUIS','','MARTINEZ','SILVA','2007-06-13'),
(1300,'ANA','MARIA','HERNANDEZ','MARTINEZ','1971-09-02'),
(1400,'MARCO','','DE LA O','CASTILLO','1980-01-30'),
(1500,'MARIA','ELENA','BETANCOURT','SANDOVAL','1980-12-11'),
(1600,'ESTELA','ADRIANA','FONG','HERNANDEZ','2000-11-28'),
(1700,'JUAN','JOSE','LIRA','MARTINEZ','1979-10-13'),
(1800,'JUAN','','LOPEZ','LOPEZ','1985-08-31'),
(1900,'LUIS','ELIAS','RODRIGUEZ','LOERA','1988-05-17'),
(2000,'PEDRO','','RAMIREZ','LIRA','1960-06-07')

insert into libro values
(1,'FISICA','MC GRAW HILL',1000),
(2,'QUIMICA','IBEROAMERICANA',234),
(3,'C#','PORRUA',456546),
(4,'JAVA','MC GRAW HILL',768),
(5,'CALCULO','MC GRAW HILL',3400),
(6,'FISICA 2','MC GRAW HILL',2880),
(7,'JAVA SCRIPT','IBEROAMERICANA',3000),
(8,'ALGEBRA','IBEROAMERICANA',1100),
(9,'QUIMICA 3','PORRUA',1000),
(10,'PROGRAMACION','PORRUA',240),
(11,'ALGORITMOS','MC GRAW HILL',980),
(12,'C# Y JAVA','PLANETA',1070),
(13,'CALCULO 2','PLANETA',567),
(14,'MATEMATICAS','MC GRAW HILL',3409),
(15,'FISICA','MC GRAW HILL',3500),
(16,'JAVA','PORRUA',2000),
(17,'ALGEBRA','IBEROAMERICANA',1000),
(18,'FISICA 3','MC GRAW HILL',680),
(19,'CALCULO 2','MC GRAW HILL',400),
(20,'JAVA 2','MC GRAW HILL',200)

insert into autor_libro values
(100,18),
(100,20),
(200,1),
(300,19),
(400,3),
(500,4),
(600,2),
(700,8),
(700,12),
(900,7),
(900,19),
(1000,2),
(1100,9),
(1100,11),
(1100,13),
(1400,7),
(1500,15),
(1600,16),
(1600,18),
(1600,19),
(1700,3),
(1800,2),
(1900,16),
(2000,19),
(2000,1)

insert into usuario values
('100A','MARTIN','SEBASTIAN','LOPEZ','MORENO','HIDALGO','6','CENTRO','27000','TORREON'),
('100B','LUIS','MARIO','MARTINEZ','SILVA','MORELOS','123','LAS FLORES','27908','LERDO'),
('100C','ANA','MARIA','HERNANDEZ','MARTINEZ','ARISTA','56767','LAS DALIAS','27980','LERDO'),
('100D','MARCO','AURELIO','DE LA O','CASTILLO','MATAMOROS','232','LAS MAGNOLIAS','27002','GOMEZ'),
('100E','MARIA','ELENA','BETANCOURT','SANDOVAL','BRAVO','45646','CENTRO','27000','TORREON'),
('100F','ESTELA','ADRIANA','FONG','HERNANDEZ','HIDALGO','1009','LAS ROSAS','27005','LERDO'),
('100G','ELIAS','RODRIGUEZ','LOERA','HIDALGO','BRAVO','4','EL CASTAÑO','27890','GOMEZ'),
('100H','CARLOS','SILVA','FONG','BRAVO','ALLENDE','89','CENTRO','27000','TORREON'),
('100I','ELENA','BLANCA','LIRA','ALLENDE','OCAMPO','234','LAS FLORES','27908','LERDO'),
('100J','MARIO','CASTRO','LIRA','OCAMPO','ESCOBEDO','1234','LAS MAGNOLIAS','27002','GOMEZ'),
('100K','ANA','ROCIO','LOPEZ','ESCOBEDO','HIDALGO','6','CENTRO','27000','TORREON'),
('100L','MARCO','MANUEL','DE LA O','CASTILLO','MORELOS','123','LAS FLORES','27908','LERDO'),
('100M','MARIA','ELENA','BETANCOURT','SANDOVAL','ARISTA','56767','LAS DALIAS','27980','LERDO'),
('100N','ESTELA','ADRIANA','FONG','HERNANDEZ','MATAMOROS','232','LAS MAGNOLIAS','27002','GOMEZ'),
('100O','JUAN','JOSE','LIRA','MARTINEZ','BRAVO','45646','CENTRO','27000','TORREON'),
('100P','ESTELA','PAULINA','LOPEZ','LOPEZ','HIDALGO','1009','LAS ROSAS','27005','LERDO')

insert into usuario_tel values
('100A','8712345678'),
('100B','1828374898'),
('100C','9065328765'),
('100D','1290348965'),
('100E','1789346758'),
('100F','7934567890'),
('100G','7123125678'),
('100H','9191919190'),
('100I','1278903456'),
('100J','5412237890'),
('100K','7812341234'),
('100L','5656347890'),
('100M','9001237890'),
('100N','1890764567'),
('100O','1256789034'),
('100P','1256789038')

insert into volumen values
('1A','E1N','100A','2021-01-12','2021-01-20',1),
('2A','E12S','100B','2021-02-12','2021-02-20',2),
('2B','E1SO','100C','2021-02-12','2021-02-20',6),
('3A','E1NE','100D','2021-02-12','2021-02-20',7),
('3C','E4N','100E','2021-06-13','2021-06-15',8),
('4B','E4S','100F','2021-06-20','2021-06-25',13),
('4D','E5S','100G','2021-06-30','2021-07-03',14),
('5F','E6N','100H','2022-09-10','2022-09-15',18),
('5G','E6N','100I','2022-09-15','2022-09-20',9),
('5H','E6N','100N','2022-09-18','2022-09-19',10),
('6G','E10SO','100O','2022-09-22','2022-09-22',11),
('7H','E10N','100P','2022-09-28','2022-09-29',12),
('8A','E10SO','100A','2022-10-02','2022-10-09',13),
('8B','E8N','100B','2022-10-03','2022-10-09',14),
('8I','E8S','100E','2023-02-12','2023-02-20',15),
('9J','E9SO','100F','2023-06-13','2023-06-15',16),
('10A','E9NE','100O','2023-06-20','2023-06-25',17),
('10K','E9NE','100P','2023-09-18','2023-09-19',18),
('11F','E9S','100C','2023-09-22','2023-09-22',19),
('11L','E7S','100D','2023-09-28','2023-09-29',20)


--1.Mostrar el nombre completo de todos los autores.
select nomb1A, nomb2A, apPatA, apMatA from autor

--2.Mostrar el primer nombre y apellido de los usuarios que vivan en la ciudad de LERDO Y GOMEZ.
select nomb1U, apPatU, cdU from usuario where cdU = 'LERDO' or cdU = 'GOMEZ'

--3.Mostrar el código de los volúmenes que fueron devueltos en el mes de Junio del año 2021 y año 2023.
select codigoV, fechaD from volumen where fechaD between '2021-06-01' and '2021-06-30' or fechaD between '2023-06-01' and '2023-06-30'

--4.Mostrar el título de los libros de la editorial MC GRAW HILL.
select titulo, editorial from libro where editorial = 'MC GRAW HILL'

--5.Mostrar el primer nombre del usuario y el número de telefonos que tiene.
select nomb1U, telefono from usuario u, usuario_tel ut where u.codigoUsuario = ut.codigoU

--6.Mostrar los códigos de los libros que tienen más de 1000 páginas.
select codigoL, numPags from libro where numPags > 1000

--7.Mostrar el número de libros de cada editorial.
select COUNT(*) as 'num de libros', editorial from libro group by editorial

--8.Mostrar el número de autores que nacieron después del año 1980.
select COUNT(*) as 'autores nacidos despues de 1980' from autor where fechaNacA >= '1981-01-01'
select * from autor

--9.Mostar el número total de libros que ha escrito cada autor.
select COUNT(*) as 'num de libros', codigoAutor from autor_libro group by codigoAutor

--10.Mostrar el código del volumen, el nombre del libro y el primer nombre del usaurio que se le presto al usuario 100H.
select codigoV, titulo, nomb1U, codigoU from volumen v, libro l, usuario u where v.codigoL = l.codigoL and v.codigoU = u.codigoUsuario and v.codigoU = '100H'

--11.Mostrar el primer nombre y primer apellido del autor que escribió el libro de código 20.
select nomb1A, apPatA, codigoL from autor a, autor_libro al where a.codigoAutor = al.codigoAutor and codigoL = 20

--12.Mostrar el código y el título del libro o libros que en el título tengan una letra cualquiera, un # y luego los demás caracteres no importan.
select codigoL, titulo from libro where titulo like '_#%'

--13.Mostrar el nombre del libro que tiene mayor número de páginas.
select titulo, numPags from libro where numPags = (select MAX(numPags) from libro)

--14.Modificar el nombre de la editorial IBEROAMECIANA por IBERO-AMERICANA.
update libro set editorial = 'IBERO-AMERICANA' where editorial = 'IBEROAMERICANA'
select * from libro

--15.Incrementar el número de páginas de los libros de FISICA en un 10%
update libro set numPags = numPags*1.1 where titulo like 'FISICA%'
select * from libro
