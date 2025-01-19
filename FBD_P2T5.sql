--P2T5
create database p2t5
go

use p2t5
go

create table paciente(
	codigoPac int not null,
	nombre1 varchar(30),
	nombre2 varchar(30),
	apPat varchar(30),
	apMat varchar(30),
	calle varchar(30),
	num varchar(10),
	col varchar(30),
	cp varchar(8),
	cd varchar(30),
	fechaNac date
)
go

create table medico(
	codigoMed int not null,
	nombre1 varchar(30),
	nombre2 varchar(30),
	apPat varchar(30),
	apMat varchar(30),
)
go

create table consulta(
	codigoCons int not null,
	numConsultorio int,
	fechaCons date,
	codigoPac int
)
go

create table consulta_medico(
	codigoMed int not null,
	codigoCons int not null,
	observaciones text,
)
go

create table tel_pac(
	codigoPac int not null,
	telefono varchar(15)
)
go

create table tel_med(
	codigoMed int not null,
	telefono varchar(15)
)
go

create table esp_med(
	codigoMed int,
	especialidad varchar(30)
)
go

--Modificar las tablas
--Agregarle llaves primarias y foraneas

alter table paciente
add primary key (codigoPac)
go

alter table medico
add primary key (codigoMed)
go

alter table consulta
add primary key (codigoCons)
go

alter table consulta
add foreign key (codigoPac) references paciente(codigoPac)
on delete cascade
on update cascade
go

alter table consulta_medico
add primary key (codigoMed, codigoCons)
go

alter table consulta_medico
add foreign key (codigoMed) references medico(codigoMed)
on delete cascade
on update cascade
go

alter table consulta_medico
add foreign key (codigoCons) references consulta(codigoCons)
on delete cascade
on update cascade
go

alter table tel_pac
add foreign key (codigoPac) references paciente (codigoPac)
on delete cascade
on update cascade
go

alter table tel_med
add foreign key (codigoMed) references medico (codigoMed)
on delete cascade
on update cascade
go

alter table esp_med
add foreign key (codigoMed) references medico (codigoMed)
on delete cascade
on update cascade
go


--Insertar registros
insert into paciente values
(1,'MARCO','','DE LA O','CASTILLO','HIDALGO',6,'CENTRO',27000,'TORREON','1980/12/11'),
(2,'MARIA','ELENA','BETANCOURT','SANDOVAL','MORELOS',123,'LAS FLORES',27908,'LERDO','2000-11-28'),
(3,'ESTELA','ADRIANA','FONG','HERNANDEZ','ARISTA',56767,'LAS DALIAS',27980,'LERDO','1979-10-13'),
(4,'JUAN','JOSE','LIRA','MARTINEZ','MATAMOROS',232,'LAS MAGNOLIAS',	27002,'GOMEZ','1985-08-31'),
(5,'JUAN','','LOPEZ','LOPEZ','BRAVO',45646,'CENTRO',27000,'TORREON','1988-05-17'),
(6,'LUIS','ELIAS','RODRIGUEZ','LOERA','HIDALGO',1009,'LAS ROSAS',27005,'LERDO','1960-06-07'),
(7,'ALBERTO','CARLOS','SILVA','FONG','BRAVO',4,'EL CASTAÑO',27890,'GOMEZ','1991-05-05'),
(8,'ROBERTO','','BRISEÑO','LIRA','ALLENDE',89,'CENTRO',27000,'TORREON','2001-10-28'),
(9,'BENITO','','CASTRO','LIRA','OCAMPO',234,'LAS FLORES',27908,'LERDO','2009-05-16'),
(10,'LUIS','ANTONIO','CASTILLO','LOPEZ','ESCOBEDO',1234,'LAS MAGNOLIAS',27002,'GOMEZ','2008-07-29'),
(11,'JUAN','JOSE','SORIANO','RODRIGUEZ','ARISTA',7,'LAS DALIAS',27980,'LERDO','2007-06-13'),
(12,'ESTEBAN','MARIANO','ARIAS','BATARSE','HIDALGO',6,'CENTRO',27000,'TORREON','1971-09-02')

insert into medico values
(10,'MARIA','LUISA','RIVAS','MIRANDA'),
(20,'JOSE','CARLOS','PORRAS','RAMIREZ'),
(30,'LILI','EUGENIA','RAMIREZ','RAMIREZ'),
(40,'MARIA','BARBARA','GUTIERREZ','GONZALEZ'),
(50,'ESTFANIA','JIMENA','LOPEZ','RODRIGUEZ'),
(60,'SOFIA','','HILARIO','LOPEZ'),
(70,'LAURA','BELEN','CASAS','JAUREGUI'),
(80,'EMILIO','','FRIAS','CASAS'),
(90,'JOSE','CARLOS','LOPEZ','CASTRO'),
(100,'ALBERTO','DANIEL','RAMIREZ','TORRES'),
(110,'JUAN','JOSE','GARCIA','FERNANDEZ'),
(120,'GILBERTO','','GALLARDO','GONZALEZ')

insert into consulta values
(1000,2,'2022-01-01',1),
(2000,3,'2023-08-12',2),
(3000,4,'2022-10-12',3),
(4000,52,'2022-09-07',2),
(5000,3,'2023-10-10',6),
(6000,10,'2022-09-17',7),
(7000,9,'2022-05-14',2),
(8000,8,'2022-06-12',9),
(9000,4,'2023-01-02',11),
(10000,6,'2023-11-11',10),
(11000,7,'2022-12-15',9),
(12000,9,'2021-11-19',2),
(13000,1,'2021-09-23',7),
(14000,2,'2021-08-07',8),
(15000,2,'2020-09-01',5)

insert into consulta_medico values
(10,15000,'Todo bien'),
(20,10000,'Revisión en 10 días'),
(50,1000,'Reposar 5 días'),
(90,2000,'Todo bien'),
(110,1000,'Siguiente cita en 3 meses'),
(20,12000,'Tomar plortero c/8 hr x 3 días'),
(30,7000,'Realizar análisis'),
(90,5000,'Hacer ejercicio'),
(120,1000,'Comer sano y seguir la dieta'),
(120,2000,'Todo bien'),
(40,7000,'Tomar betacaroteno'),
(50,10000,'Revisión en 2 semanas'),
(60,12000,'Reposar 3 días'),
(70,3000,'Hacer ejercicio, seguir la dieta'),
(80,2000,'Siguiente cita en 1 meses'),
(90,10000,'Realizar análisis'),
(100,15000,'Hacer ejercicio'),
(120,5000,'Comer sano y seguir la dieta')

insert into tel_pac values
(1,'8712345678'),
(1,'1828374898'),
(1,'9065328765'),
(2,'1290348965'),
(2,'1789346758'),
(3,'7934567890'),
(3,'7123125678'),
(3,'9191919190'),
(4,'1278903456'),
(4,'5412237890'),
(5,'7812341234'),
(6,'5656347890'),
(7,'9001237890'),
(8,'1890764567'),
(8,'1256789034'),
(8,'8876654435'),
(9,'2213556789'),
(9,'2211567908'),
(10,'1873255890'),
(10,'1745237890'),
(11,'1928374093'),
(12,'9871290345'),
(12,'8123478651'),
(12,'9121325687')

insert into tel_med values
(10,'1928374093'),
(10,'9871290345'),
(10,'8123478651'),
(20,'9121325687'),
(30,'8712345678'),
(30,'1828374898'),
(30,'9065328765'),
(40,'1290348965'),
(50,'1789346758'),
(60,'7934567890'),
(60,'7123125678'),
(60,'9191919190'),
(70,'1278903456'),
(70,'6754672389'),
(70,'5412237890'),
(80,'7812341234'),
(90,'5656347890'),
(100,'9001237890'),
(100,'1890764567'),
(100,'1256789034'),
(110,'8876654435'),
(120,'2213556789'),
(120,'2211567908'),
(120,'1873255890'),
(120,'1745237890')

insert into esp_med values
(10,'Ginécologo'),
(10,'Pediátra'),
(20,'Familiar'),
(20,'Ginécologo'),
(30,'Familiar'),
(40,'Familiar'),
(50,'Familiar'),
(50,'Pediátra'),
(60,'Familiar'),
(70,'Familiar'),
(80,'Familiar'),
(80,'Otorrinolaringólogo'),
(80,'Pediátra'),
(90,'Familiar'),
(100,'Familiar'),
(110,'Familiar'),
(120,'Oftalmólogo'),
(120,'Cirujano')

--1.Mostrar el nombre completo de todos los médicos.
select nombre1, nombre2, apPat, apMat from medico order by nombre1 asc, nombre2 asc, apPat asc, apMat asc

--2.Mostrar el nombre del médico y todos sus teléfonos
select nombre1, nombre2, apPat, apMat, telefono from medico m, tel_med tm where m.codigoMed = tm.codigoMed

--3.Agregar un campo a la tabla consulta llamado costo del tipo int.
alter table consulta add costo int

--4.Modificar el campo anterior a tipo double.
alter table consulta alter column costo money

--5.Generar datos aleatorios a la tabla consulta en el campo costo.
update consulta set costo = RAND(CHECKSUM(NEWID()))*1000

--6.Mostrar el nombre del médico con el salario más alto.
alter table medico add salario money
update medico set salario = RAND(CHECKSUM(NEWID()))*10000
select nombre1, nombre2, apPat, apMat, salario from medico where salario = (select MAX(salario) from medico)

--7.Mostrar el promedio de los costos de las consultas.
select AVG(costo) as 'promedio' from consulta

--8.Mostrar los nombres de los pacientes que asistieron a consulta entre el día 1-enero-2020 y 30-noviembre-2022.
select nombre1, nombre2, apPat, apMat, fechaCons from paciente p, consulta c where p.codigoPac = c.codigoPac and fechaCons between '2020-01-01' and '2022-11-30' order by fechaCons asc

--9.Mostrar el número promedio de pacientes consultados en el mes de noviembre del año 2023.
select (select COUNT(*) from consulta where fechaCons between '2023-11-01' and '2023-11-30')*100 / (select COUNT(*) from consulta) as 'promedio'

--10.Mostrar el número de consultas realizadas en el año 2023.
select COUNT(*) as 'no. consultas' from consulta where fechaCons between '2023-01-01' and '2023-12-31'

--11.Mostrar el número de consultas realizadas por cada médico.
select codigoMed, COUNT(*) as 'no.consultas' from consulta_medico group by (codigoMed)

--12.Mostrar el nombre y primer apellido de todos los pacientes que su nombre inicie con J.
select nombre1, apPat from paciente where nombre1 like 'J%'

--13.Mostrar el nombre de los pacientes que fueron atendidos entre el año 2020 y 2021.
select nombre1, nombre2, apPat, apMat, fechaCons from paciente p, consulta c where p.codigoPac = c.codigoPac and fechaCons between '2020-01-01' and '2021-12-31' order by fechaCons asc

--14.Mostrar el nombre completo de los médicos en orden descendente del salario.
select nombre1, nombre2, apPat, apMat, salario from medico order by salario desc

--15.Mostrar el nombre y primer apellido de los médicos cuyo código del médico sea mayor a 60.
select codigoMed, nombre1, apPat from medico where codigoMed > 60

--16.Mostrar el código y nombre del paciente en donde el nombre de la colonia en la que vive las primeras 4 letras no importen, pero la quinta sea la F y luego las demas no importan
select codigoPac, nombre1, col from paciente where col like '____F%'

--17.Eliminar a los pacientes cuyo año de nacimiento sea de 1980 para abajo.
delete from paciente where fechaNac <= '1980-12-31'
select * from paciente

--eliminar la base de datos
--drop database p2t5

--18.Modificar el año de la consulta cuyo dia sea el numero 14, cambiar el año a 2023
update consulta set fechaCons = '2023-01-01' where fechaCons like '________14'
select * from consulta

--19.Eliminar los numeros de telefono de los medicos que el codigo del medico inicie con un 1
delete from tel_med where codigoMed like '1%'
select * from tel_med
