
create database p5t5
go

use p5t5
go

create table sede(
	claveSede varchar(30) primary key,
	numComplejos int,
	presupuesto int
)

create table complejodeportivo(
	claveCD varchar(30) primary key,	
	localizacion varchar(30),
	nombreJefe varchar(30),
	area money,
	claveSede varchar(30),
	constraint FK_SC foreign key (claveSede) references sede (claveSede)
	on delete cascade
	on update cascade
)

create table evento(
	claveEvento varchar(30) primary key,	
	fechaE date,
	numComisarios int,
	numParticipantes int,
	duracion varchar(30),
	claveCD varchar(30),
	constraint FK_CE foreign key (claveCD) references complejodeportivo (claveCD)
	on delete cascade
	on update cascade
)

create table comisario(
	codigoComis varchar(30) primary key,
	nomb1 varchar(30),
	nomb2 varchar(30),
	apPat varchar(30),
	apmat varchar(30),
	nacionalidad varchar(30)
)

create table evento_comisario(
	claveEvento varchar(30),
	codigoComis varchar(30),
	primary key (claveEvento,codigoComis),
	constraint FK_EEC foreign key (claveEvento) references evento (claveEvento)
	on delete cascade
	on update cascade,
	constraint FK_CEC foreign key (codigoComis) references comisario (codigoComis)
	on delete cascade
	on update cascade
)

create table evento_eq(
	claveEvento varchar(30),
	equipo varchar(30),
	primary key (claveEvento, equipo),
	constraint FK_EEE foreign key (claveEvento) references evento (claveEvento)
	on delete cascade
	on update cascade
)

create table unideportivo_cd(
	claveCD varchar(30),
	idUCD int,
	numEventosCelebrados int,
	primary key (claveCD, idUCD),
	constraint FK_CU foreign key (claveCD) references complejodeportivo (claveCD)
	on delete cascade
	on update cascade
)

create table juez_comisario(
	codigoComis varchar(30),
	idJC int,
	numEventos int,
	primary key (codigoComis, idJC),
	constraint FK_CJ foreign key (codigoComis) references comisario (codigoComis)
	on delete cascade
	on update cascade
)

create table obs_comisario(
	codigoComis varchar(30),
	idIOC int,
	primary key (codigoComis,idIOC),
	fechaUE date,
	constraint FK_CO foreign key (codigoComis) references comisario (codigoComis)
	on delete cascade
	on update cascade
)



insert into sede values ('SE100',10,100000);
insert into sede values ('SE101',1,150000);
insert into sede values ('SE102',4,120000);
insert into sede values ('SE103',5,190000);
insert into sede values ('SE104',6,200000);
insert into sede values ('SE105',3,100500);
insert into sede values ('SE106',2,350000);
insert into sede values ('SE107',9,500000);
insert into sede values ('SE108',6,600000);
insert into sede values ('SE109',7,230000);
insert into sede values ('SE110',3,170000);

insert into complejodeportivo values('CD100','Norte','Carlos',346.45,'SE110');
insert into complejodeportivo values('CD200','Sur','Lorena',317890,'SE109');
insert into complejodeportivo values('CD300','Norte','Osvaldo',45678.2,'SE101');
insert into complejodeportivo values('CD400','Noreste','Juan',50000.23,'SE101');
insert into complejodeportivo values('CD500','Oeste','Carlos',756345,'SE105');
insert into complejodeportivo values('CD600','Sur','Martha',34567.12,'SE106');
insert into complejodeportivo values('CD700','Este','Jorge',56789,'SE102');
insert into complejodeportivo values('CD800','Sur','Carmen',7789345,'SE108');
insert into complejodeportivo values('CD900','Noroeste','José',22190,'SE103');
insert into complejodeportivo values('CD110','Noreste','María',34590.22,'SE104');
insert into complejodeportivo values('CD120','Sur','Carlos',45678.15,'SE107');

insert into evento values ('EV100','2020-01-05',230,4,'12:40','CD400');
insert into evento values ('EV110','2019-09-13',55,2,'13:45','CD500');
insert into evento values ('EV120','2020-02-01',42,4,'17:50','CD800');
insert into evento values ('EV130','2019-07-08',102,15,'20:00','CD110');
insert into evento values ('EV140','2019-04-02',99,10,'21:30','CD200');
insert into evento values ('EV150','2019-06-02',85,8,'11:00','CD300');
insert into evento values ('EV160','2020-12-04',34,4,'14:57','CD400');
insert into evento values ('EV170','2019-09-13',304,20,'15:24','CD120');
insert into evento values ('EV180','2019-08-30',440,50,'16:56','CD600');
insert into evento values ('EV190','2019-02-15',110,20,'7:23','CD900');
insert into evento values ('EV200','2020-11-01',59,7,'10:50','CD800');

insert into comisario values ('CO100','José','Luis','Díaz','Ramírez','Mexicano');
insert into comisario values ('CO200','María','','Pérez','Pérez','Mexicano');
insert into comisario values ('CO300','Luis','Hernán','Fernádez','Hernández','Español');
insert into comisario values ('CO400','Patricia','Flor','Ortiz','Hugalde','Chilena');
insert into comisario values ('CO500','Diana','','Villa','Díaz','Mexicana');
insert into comisario values ('CO600','Sonia','','López','Flores','Hondureña');
insert into comisario values ('CO700','Hugo','Javier','Garay','Velíz','Mexicano');
insert into comisario values ('CO800','Juan','','Fong','Saracho','Chino');
insert into comisario values ('CO900','Tomás','','Wong','Smith','Estadounidense');

insert into evento_comisario values ('EV100','CO300');
insert into evento_comisario values ('EV110','CO300');
insert into evento_comisario values ('EV120','CO100');
insert into evento_comisario values ('EV130','CO100');
insert into evento_comisario values ('EV190','CO100');
insert into evento_comisario values ('EV140','CO200');
insert into evento_comisario values ('EV150','CO200');
insert into evento_comisario values ('EV110','CO600');
insert into evento_comisario values ('EV150','CO600');
insert into evento_comisario values ('EV170','CO300');
insert into evento_comisario values ('EV170','CO400');
insert into evento_comisario values ('EV190','CO400');
insert into evento_comisario values ('EV190','CO500');
insert into evento_comisario values ('EV200','CO500');
insert into evento_comisario values ('EV100','CO500');
insert into evento_comisario values ('EV170','CO700');
insert into evento_comisario values ('EV170','CO800');
insert into evento_comisario values ('EV110','CO900');
insert into evento_comisario values ('EV100','CO100');

insert into evento_eq values ('EV100','caballetes');
insert into evento_eq values ('EV110','pesas');
insert into evento_eq values ('EV120','jabalina');
insert into evento_eq values ('EV130','barras');
insert into evento_eq values ('EV140','caballetes');
insert into evento_eq values ('EV150','caballetes');
insert into evento_eq values ('EV160','pesas');
insert into evento_eq values ('EV170','balones');
insert into evento_eq values ('EV180','balones');
insert into evento_eq values ('EV190','jabalina');
insert into evento_eq values ('EV200','caballos');

insert into unideportivo_cd values ('CD100',1,20);
insert into unideportivo_cd values ('CD200',2,50);
insert into unideportivo_cd values ('CD300',3,10);
insert into unideportivo_cd values ('CD400',4,35);
insert into unideportivo_cd values ('CD500',5,25);
insert into unideportivo_cd values ('CD600',6,32);
insert into unideportivo_cd values ('CD700',7,41);
insert into unideportivo_cd values ('CD800',8,18);
insert into unideportivo_cd values ('CD900',9,39);
insert into unideportivo_cd values ('CD120',10,18);
insert into unideportivo_cd values ('CD110',11,72);

insert into juez_comisario values ('CO100',1,5);
insert into juez_comisario values ('CO200',2,34);
insert into juez_comisario values ('CO300',3,20);
insert into juez_comisario values ('CO400',4,29);
insert into juez_comisario values ('CO500',5,35);
insert into juez_comisario values ('CO600',6,18);
insert into juez_comisario values ('CO700',7,22);
insert into juez_comisario values ('CO800',8,46);
insert into juez_comisario values ('CO900',9,15);

insert into obs_comisario values ('CO100',1,'2019-09-13');
insert into obs_comisario values ('CO200',2,'2020-02-01');
insert into obs_comisario values ('CO300',3,'2019-04-02');
insert into obs_comisario values ('CO400',4,'2019-06-02');
insert into obs_comisario values ('CO500',5,'2020-12-04');
insert into obs_comisario values ('CO600',6,'2019-09-13');
insert into obs_comisario values ('CO700',7,'2019-08-30');
insert into obs_comisario values ('CO800',8,'2019-02-15');
insert into obs_comisario values ('CO900',9,'2020-11-01');

--2.Mostrar el nombre del comisario que participo en el evento de clave “EV120”.
select nomb1, nomb2, apPat, apMat, claveEvento from comisario c, evento_comisario ec where claveEvento = 'EV120' and c.codigoComis = ec.codigoComis

--3.Mostrar el presupuesto de cada una de las sedes del complejo deportivo cuyo nombre del jefe de organización es “Carlos”.
select presupuesto, s.claveSede from complejodeportivo cd, sede s where nombreJefe = 'Carlos' and cd.claveSede = s.claveSede
--Usando join
select presupuesto, s.claveSede from complejodeportivo cd join sede s on s.claveSede = cd.claveSede and nombreJefe = 'Carlos'

--4.Mostrar el número de complejos deportivos unideportivos de cada complejo deportivo.
select CD.claveCD, COUNT(*) from complejodeportivo cd join unideportivo_cd ucd on cd.claveCD = ucd.claveCD group by cd.claveCD

--5.	Mostrar el nombre completo de todos los comisarios que han trabajado como observadores.
select nomb1, nomb2, apPat, apMat from comisario c, obs_comisario oc where c.codigoComis = oc.codigoComis

--6.	Mostrar el equipamiento de los eventos que se llevaron a cabo el día 13 de septiembre de 	2019.
select fechaE, equipo from evento_eq ee, evento e where ee.claveEvento = e.claveEvento and fechaE = '2019-09-13'

--7.	Mostrar el número total de comisarios que han trabajado como jueces.
select count(distinct codigoComis) from juez_comisario

--8.	Modificar el presupuesto de las sedes, agregarles un 10%
update sede set presupuesto = (presupuesto) * .10

--9.	Mostrar el presupuesto de c/u de los complejos de cada sede.
select s.presupuesto, s.claveSede from complejodeportivo cd join sede s on cd.claveSede = s.claveSede

--10.	Mostrar el nombre completo de los comisaros cuyo primer nombre empiece con la letra “J”.
select nomb1, nomb2, apPat, apMat from comisario where nomb1 like 'J%'

--11.	Crear una tabla llamada observador2 que sea igual que la tabla observador, copiar todos los registros de observador a observador2.
select * into observador2 from obs_comisario

--12.	Mostrar el número de complejos deportivos de cada sede, ordenar por sede de forma descendente.
select numComplejos, claveSede from sede order by claveSede desc

--13.	Mostrar el punto anterior pero solo mostrar aquellas sedes que tengan un cero en la cuarta posición de la clave.      
select numComplejos, claveSede from sede  where claveSede like '___0%' order by claveSede desc

--14.	Eliminar los registros de la tabla observador2 que hayan participado como observador en el año 2020
delete from observador2 where fechaUE between '2020-01-01' and '2020-12-31'

--15.	Eliminar la tabla observador2
drop table observador2

--16.	Crear una tabla llamada observador2 que sea igual que la tabla observador y copiar todos los registros de observador a observador2
select * into observador2 from obs_comisario

--17.	Modificar la tabla comisario, cambiar la nacionalidad Mexicano a Ciudadano Mexicano.
update comisario set nacionalidad = 'Ciudadano Mexicano' where nacionalidad = 'Mexicano'
select * from comisario

--18.	Mostrar los eventos cuya duración fue mayor que la duración promedio de todos los eventos.
select * from evento where duracion > (select AVG(duracion) from evento)

--19.	Mostrar la clave del complejo deportivo con mayor número de eventos celebrados.
select claveCD from unideportivo_cd where numEventosCelebrados = (select MAX(numEventosCelebrados) from unideportivo_cd)

--20.	Insertar 10 registros a la tabla polideportivo_cd
create table polideportivo_cd(
	claveCD varchar(30),
	idUCD int,
	localizacion varchar(30),
	numDeportes int
	primary key (claveCD, idUCD),
	constraint FK_CP foreign key (claveCD) references complejodeportivo (claveCD)
	on delete cascade
	on update cascade
)
insert into polideportivo_cd values ('CD100',1,'Norte',4);
insert into polideportivo_cd values ('CD200',2,'Noreste',6);
insert into polideportivo_cd values ('CD300',3,'Norte',8);
insert into polideportivo_cd values ('CD400',4,'Sur',7);
insert into polideportivo_cd values ('CD500',5,'Sur',7);
insert into polideportivo_cd values ('CD600',6,'Oeste',5);
insert into polideportivo_cd values ('CD700',7,'Sureste',6);
insert into polideportivo_cd values ('CD800',8,'Noroeste',6);
insert into polideportivo_cd values ('CD900',9,'Este',7);
insert into polideportivo_cd values ('CD1000',10,'Suroeste',10);
select * from polideportivo_cd

--21.	Mostrar el número de complejos deportivos polideportivos de cada complejo deportivo.
select COUNT(*) from polideportivo_cd p join complejodeportivo cd on cd.claveCD = p.claveCD group by cd.claveCD

--22.	Agregar un campo sueldo a la tabla comisario del tipo double
alter table comisario add sueldo money

--23.	Generar sueldos aleatorios a la tabla comisario
update comisario set sueldo = RAND(CHECKSUM(NEWID()))*100000

--24.	Mostrar el total de sueldos de los observadores
select SUM(sueldo) as 'total' from comisario c join obs_comisario oc on c.codigoComis = oc.codigoComis

--25.	Mostrar el total de sueldos de los jueces
select SUM(sueldo) as 'total' from comisario c join juez_comisario jc on c.codigoComis = jc.codigoComis

--26.	Eliminar todos los registros de la tabla polideportivo_cd
delete from polideportivo_cd

--27.	Eliminar el campo salario de la tabla comisario
alter table comisario drop column sueldo

