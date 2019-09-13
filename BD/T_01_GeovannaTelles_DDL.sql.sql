create database T_OpFlix

use T_OpFlix

--DDL--

create table Tipos
(
	IdTipo	int primary key identity
	,Nome	varchar (255) not null unique
);

create table Plataformas
(
	IdPlataforma	int primary key identity
	,Nome			varchar (255) not null 
);

create table Generos
(
	IdGenero	int primary key identity
	,Nome		varchar (255) not null unique
);

create table TipoUsuarios
(
	IdTipoUsuario	int primary key identity
	,Nome			varchar (255) not null unique
);

create table Usuarios
(
	IdUsuario			int primary key identity
	,Nome				varchar (255) not null 
	,Email				varchar (255) not null unique
	,Senha				varchar (255) not null
	,IdTipoUsuario		int foreign key references TipoUsuarios(IdTipoUsuario)
);

create table Lancamentos
(
	IdLancamento		int primary key identity
	,Nome				varchar (255) not null unique
	,Duracao_min		int not null
	,Classificacao		varchar (255) not null
	,DataLancamento		date not null
	,Sinopse			varchar (1000) not null
	,IdPlataforma		int foreign key references Plataformas(IdPlataforma)
	,IdGenero			int foreign key references Generos(IdGenero)
	,IdTipo				int foreign key references Tipos(IdTipo)
);
