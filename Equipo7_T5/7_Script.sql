create database E7T5
go

--Equipo No.7
--22130800 Angel David Avalos Carrillo
--22130803 Alfredo Puentes Vargas
use E7T5
go

--PLOMERO (curpPlomero(PK), nomb1P, nomb2P, apPatP, apMatP, diaNP, mesNP, añoNP, correoElec)
create table plomero(
curpPlom	varchar(25)		primary key,
nomb1P		varchar(25),
nomb2P		varchar(25),
apPatP		varchar(25),
apMatP		varchar(25),
diaNP		int,
mesNP		varchar(25),
añoNP		int,
correoElec	varchar(30)
)
go

--AYUDANTE (curpPlomero(PK,FK), idAyudante(PK), nomb1A, nomb2A, apPatA, apMAtA, edad)
create table ayudante(
curpPlom	varchar(25),
idAyudante	varchar(25),
primary key(curpPlom, idAyudante),
nomb1A		varchar(25),
nomb2A		varchar(25),
apPatA		varchar(25),
apMatA		varchar(25),
edad		int,
constraint AP_FK foreign key (curpPlom) references plomero (curpPlom)
on delete cascade
on update cascade
)
go

