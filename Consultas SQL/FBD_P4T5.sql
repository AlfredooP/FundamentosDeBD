create database p4t5
go

use p4t5
go

create table docentes(
	curpD int primary key,
	nombre1 varchar(30),
	nombre2 varchar(30),
	apPat varchar(30),
	apMat varchar(30),
	calle varchar(30),
	num varchar(10),
	col varchar(30),
	cp varchar(10),
	cd varchar(30),
	fechaD date
)
go

create table docente_tel(
	curpD int,
	telefono varchar(18)
	primary key (curpD,telefono),
	constraint FK_DT foreign key (curpD) references docentes (curpD)
)
go

create table curso(
	idCurso int primary key,
	nombreCurso varchar(30),
	numSemanas int,
	fechaI date,
	curpD int,
	constraint FK_CD foreign key (curpD) references docentes (curpD)
)
go

create table materias(
	idMateria int primary key,
	nombre varchar(30),
	grupo varchar(1),
	numAlumnInsc int,
	idCurso int,
	constraint FK_MC foreign key (idCurso) references curso (idCurso)
)
go

create table materias_horario(
	idMateria int,
	hora time,
	lugar varchar(20),
	primary key (idMateria, hora, lugar),
	constraint FK_MH foreign key (idMateria) references materias (idMateria)
)
go

create table alumnos(
	curpA int primary key,
	nombre1 varchar(30),
	nombre2 varchar(30),
	apPat varchar(30),
	apMat varchar(30),
	calle varchar(30),
	num varchar(10),
	col varchar(30),
	cp varchar(10),
	cd varchar(30),
	fechaA date
)
go

create table alumno_tel(
	curpA int,
	telefono varchar(18)
	primary key (curpA,telefono),
	constraint FK_AT foreign key (curpA) references alumnos (curpA)
)
go


create table docente_materia(
	curpD int,
	idMateria int,
	primary key (curpD,idMateria),
	constraint FK_DM foreign key (curpD) references docentes (curpD),
	constraint FK_MD foreign key (idMateria) references materias (idMateria)
)
go

create table alumno_materia(
	curpA int,
	idMateria int,
	primary key (curpA,idMateria),
	constraint FK_AM foreign key (curpA) references alumnos (curpA),
	constraint FK_MA foreign key (idMateria) references materias (idMateria)
)
go