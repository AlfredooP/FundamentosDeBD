--P1T5

--Crear la base de datos
create database p1t5;

--Seleccionar la base de datos
use p1t5;

--Crear tabla cliente
create table cliente(
	numSSCli int primary key,
	nombre1 varchar(30),
	nombre2 varchar(30),
	apPat varchar(30),
	apMat varchar(30),
	calle varchar(20),
	num varchar(10),
	col varchar(30),
	cp varchar(10),
	cd varchar(30)
);
go

--Crear tabla automovil
create table automovil(
	idAutomovil int primary key,
	placa varchar(10),
	modelo int,
	marca varchar(30),
	numSSCli int,
	foreign key (numSSCli) references cliente(numSSCli)
);
go
	
--Crear tabla Mecanico
create table mecanico(
	numSSMec int primary key,
	nombre1 varchar(30),
	nombre2 varchar(30),
	apPat varchar(30),
	apMat varchar(30),
	dia int,
	mes int,
	año int,
	salario money
);
go

--Crear tabla Automovil-Mecanico
create table automovil_mecanico(
	idAutomovil int,
	numSSMec int,
	primary key (idAutomovil,numSSMec),
	foreign key (idAutomovil) references automovil(idAutomovil),
	foreign key (numSSMec) references mecanico(numSSMec),
	numHoras int,
	diaR int,
	mesR int,
	añoR int
);
go

--Crear tabla Automovil-Color
create table automovil_color(
	idAutomovil int,
	color varchar(20),
	primary key (idAutomovil,color),
	foreign key (idAutomovil) references automovil(idAutomovil),
);
go

--Crear tabla Cliente-Telefono
create table cliente_telefono(
	numSSCli int,
	telefono varchar(15),
	primary key (numSSCli,telefono),
	foreign key (numSSCli) references cliente(numSSCli)
);
go

--Insertar registros de la tabla cliente
insert into cliente values(100,'JORGE','LUIS','RODRIGUEZ','MEJIA','HIDALGO',6,'CENTRO',27000,'TORREON')
insert into cliente values(200,'MARTIN','SEBASTIAN','LOPEZ','MORENO','MORELOS',123,'LAS FLORES',27908, 'LERDO')
insert into cliente values(300,'LUIS','','MARTINEZ','SILVA','ARISTA',56767,'LAS DALIAS',27980,'LERDO')
insert into cliente values(400,'ANA','MARIA','HERNANDEZ','MARTINEZ','MATAMOROS',232,'LAS MAGNOLIAS',27002,'GOMEZ')
insert into cliente values(500,'MARCO','','DE LA O','CASTILLO','BRAVO',45646,'CENTRO',27000,'TORREON')
insert into cliente values(600,'MARIA','ELENA','BETANCOURT','SANDOVAL','HIDALGO',1009,'LAS ROSAS',27005,'LERDO')
insert into cliente values(700,'ESTELA','ADRIANA','FONG','HERNANDEZ','BRAVO',4,'EL CASTAÑO',27890,'GOMEZ')
insert into cliente values(800,'JUAN','JOSE','LIRA','MARTINEZ','ALLENDE',89,'CENTRO',27000,'TORREON')
insert into cliente values(900,'JUAN','','LOPEZ','LOPEZ','OCAMPO',234,'LAS FLORES',27908,'LERDO')
insert into cliente values(1000,'LUIS','ELIAS','RODRIGUEZ','LOERA','ESCOBEDO',1234,'LAS MAGNOLIAS',27002,'GOMEZ')
go

--Mostrar todos los registros de la tabla cliente
--select * from cliente

--Borrar registros
--delete cliente

--Insertar registros de la tabla automovil
insert into automovil values
(1,'ERT567',2020,'NISSAN',100),
(2,'VGH123',2010,'FORD',200),
(3,'KIU789',2021,'HONDA',100),
(4,'ZXS234',2022,'VW',300),
(5,'POI786',2023,'NISSAN',400),
(6,'KLJ234',2020,'NISSAN',500),
(7,'TRE678',2022,'CHRYSLER',600),
(8,'NBT231',2023,'FORD',700),
(9,'HYT900',2020,'TOYOTA',100),
(10,'SJQ618',2000,'TOYOTA',200)
go

--Mostrar todos los registros de la tabla automovil
--select * from automovil

--Intentar insertar registro con una llave foranea de un cliente que no exista
--insert into automovil values(20,'ERT567',2020,'NISSAN',1100)

--Insertar registros de la tabla mecanico
insert into mecanico values
(1000,'MARCO','JOSE','RAMIREZ','MORENO',23,8,2000,15000),
(2000,'LUIS','BRAULIO','RODRIGUEZ','MARTINEZ',	12,9,1980,12000),
(3000,'JUAN','','LOPEZ','LIRA',2,1,1990,10000),
(4000,'ESTEBAN','MARIANO','ARIAS','BATARSE',1,4,1997,15000),
(5000,'JOSE','MARIA','CEPEDA','CASTILLO',30,7,2001,17000),
(6000,'LUIS','','LOPEZ','DE LA O',28,2,2002,23000),
(7000,'ALBERTO','CARLOS','SILVA','FONG',29,6,1984,22000),
(8000,'ROBERTO','','BRISEÑO','LIRA',17,2,1981,15000),
(9000,'BENITO','','CASTRO','LIRA',5,3,1993,14000),
(10000,'LUIS','ANTONIO','CASTILLO','LOPEZ',4,9,1979,10000),
(11000,'JUAN','JOSE','SORIANO','RODRIGUEZ',2,12,1995,11000)
go

--select * from mecanico

insert into automovil_mecanico values
(1,11000,8,2,3,2020),
(1,10000,7,3,3,2020),
(2,2000,5,4,6,2020),
(2,3000,2,4,6,2020),
(2,1000,8,4,6,2020),
(3,3000,4,6,7,2020),
(4,1000,7,8,2,2021),
(4,2000,8,8,2,2021),
(4,4000,2,9,2,2021),
(4,11000,3,9,2,2021),
(5,6000,6,23,9,2021),
(5,7000,7,23,9,2021),
(6,9000,2,17,6,2022),
(7,1000,5,18,6,2022),
(8,10000,6,22,8,2023),
(9,11000,8,1,11,2023),
(9,7000,4,1,11,2023),
(10,5000,4,29,12,2023)
go

--select * from automovil_mecanico

insert into automovil_color values
(1,'ROJO'),
(2,'NEGRO'),
(2,'GRIS'),
(3,'AZUL MARINO'),
(3,'GRIS'),
(4,'BLANCO'),
(5,'NEGRO'),
(6,'AZUL MARINO'),
(7,'BLANCO'),
(8,'ROJO'),
(9,'AMARILLO'),
(10,'NEGRO'),
(10,'GRIS')
go

--select * from automovil_color

insert into cliente_telefono values
(100,'8712345678'),
(100,'1828374898'),
(100,'9065328765'),
(200,'1290348965'),
(200,'1789346758'),
(300,'7934567890'),
(400,'7123125678'),
(400,'9191919190'),
(400,'1278903456'),
(500,'6754672389'),
(500,'5412237890'),
(500,'7812341234'),
(600,'5656347890'),
(700,'9001237890'),
(700,'1890764567'),
(700,'1256789034'),
(800,'8876654435'),
(800,'2213556789'),
(900,'2211567908'),
(900,'1873255890'),
(900,'1745237890'),
(900,'1756432167'),
(1000,'8967109234')
go

--select * from cliente_telefono

--1.Mostrar el nombre completo de todos los mecanicos
select nombre1, nombre2, apPat, apMat from mecanico

--2.Mostrar el nombre del cliente y sus numeros telefonicos
select nombre1, nombre2, apPat, apMat, telefono from cliente c, cliente_telefono ct where c.numSSCli = ct.numSSCli

--3.Agregar un campo a la tabla cliente llamado salario del tipo int
alter table cliente add salario int
--alter table cliente drop column salario (quita la columna)

--4.Modificar el campo anterior a money
alter table cliente alter column salario money

--5.Generar datos aleatorios a la tabla cliente en el campo salario
update cliente set salario = RAND(CHECKSUM(NEWID()))*100000
--select * from cliente

--6.Mostrar el salario mas alto
select MAX(salario) as 'SALARIO MAS ALTO' from cliente

--7.Mostrtar el promedio de los salarios
select AVG(salario) as 'PROMEDIO DE SALARIOS' from cliente

--8.Mostrar los nombres de los clientes que viven en Torreon
select nombre1, nombre2, apPat, apMat from cliente where cd = 'TORREON'

--9.Mostrar el numero total de autos por marca
select marca, COUNT(idAutomovil) as 'total' from automovil group by (marca)

--10.Mostrar el numero total de telefonos de cada cliente
select numSSCli, COUNT(*) as 'total de telefonos' from cliente_telefono group by(numSSCli)

--11.Mostrar el numero de autos que ha reparado cada mecanico
select numSSMec as 'NumSS', COUNT(*) as 'Número de autos reparados' from automovil_mecanico group by (numSSMec)

--12.Mostrar el nombre y primer apellidode todos los clientes que su nombre inicie con M
select nombre1, apPat from cliente where nombre1 like 'M%'

--13.Mostrar el nombre de los mecanicos que nacieron entre los años 1980 y 2001
select nombre1, año from mecanico where año >= 1980 and año <= 2001 order by año asc
--select nombre1, año from mecanico where año between 1980 and 2001 order by año desc

--14.Modificar el año de nacimiento de los mecanicos que nacieron de 1990 en adelante, sumarle 5 años mas
update mecanico set año = año+5 where año >= 1990
--select * from mecanico

--15.Mostrar el nombre completo de los mecanicos en orden descendente del salario
select nombre1+' '+nombre2+' '+apPat+' '+apMat as 'nombre', salario from mecanico order by salario desc

--16.Modificar el salario de los mecanicos en un 10%
update mecanico set salario = salario*1.1
--select * from mecanico

--17.Eliminar los numeros de telefono del cliente 500
delete cliente_telefono where numSSCli = 500
--select * from cliente_telefono

--18.Mostrar el numero y nombre de los clientes que el nombre de la calle donde viven inicie con A
select numSSCli, nombre1 from cliente where calle like 'A%'
--select numSSCli, nombre1, calle from cliente where calle like 'A%'