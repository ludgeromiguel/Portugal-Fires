use master;

drop database if exists portugal_incendios;

create database portugal_incendios;

use portugal_incendios;

create table Calendario (
	calendarioID int not null identity(1,1) primary key,
	ano int not null,
	mes int not null,
	dia int not null,
);

create table Tempo (
	tempoID int not null identity(1,1) primary key,
	hora int not null,
	minuto int not null,
);

create table Localizacao (
	localizacaoID int not null identity(1,1) primary key,
	distrito varchar(100) not null,
	concelho varchar(100) not null,
	freguesia varchar(255) not null,
	local varchar(255) not null,
);

create table Coordenadas (
	coordenadasID int not null identity(1,1) primary key,
	latitude varchar(50) not null,
	longitude varchar(50) not null,
);

create table TipoCausa (
	tipoCausaID int not null identity(1,1) primary key,
	nome varchar(50) not null,
);

create table FonteAlerta (
	fonteAlertaID int not null identity(1,1) primary key,
	nome varchar(100) not null,
);

create table TipoIncendio (
	tipoIncendioID int not null identity(1,1) primary key,
	reacendimento tinyint not null,
	falsoAlarme tinyint not null,
	fogacho tinyint not null,
);

create table Incendio (
	incendioID int not null identity(1,1) primary key,
	dataAlertaID int not null,
	horaAlertaID int not null,
	dataExtincaoID int not null,
	horaExtincaoID int not null,
	dataPrimeiraIntervencaoID int not null,
	horaPrimeiraIntervencaoID int not null,
	localizacaoID int not null,
	coordenadasID int not null,
	tipoCausaID int not null,
	fonteAlertaID int not null,
	tipoIncendioID int not null,
	areaPovoamento decimal(13,5) null,
	areaMato decimal(13,5) null,
	areaAgricula decimal(13,5) null,
);

alter table Incendio 
	add constraint FK_INCENDIO_DATAALERTA foreign key (dataAlertaID)
		references Calendario (calendarioID);

alter table Incendio
	add constraint FK_INCENDIO_HORAALERTA foreign key (horaAlertaID)
		references Tempo (tempoID);

alter table Incendio
	add constraint FK_INCENDIO_DATAEXTINCAO foreign key (dataExtincaoID)
		references Calendario (calendarioID);

alter table Incendio
	add constraint FK_INCENDIO_HORAEXTINCAO foreign key (horaExtincaoID)
		references Tempo (tempoID);

alter table Incendio
	add constraint FK_INCENDIO_DATAPRIMEIRAINTERVENCAO foreign key (dataPrimeiraIntervencaoID)
		references Calendario (calendarioID);

alter table Incendio
	add constraint FK_INCENDIO_HORAPRIMEIRAINTERVENCAO foreign key (horaPrimeiraIntervencaoID)
		references Tempo (tempoID);

alter table Incendio
	add constraint FK_INCENDIO_LOCALIZACAO foreign key (localizacaoID)
		references Localizacao (localizacaoID);

alter table Incendio
	add constraint FK_INCENDIO_COORDENADAS foreign key (coordenadasID)
		references Coordenadas (coordenadasID);

alter table Incendio
	add constraint FK_INCENDIO_TIPOCAUSA foreign key (tipoCausaID)
		references TipoCausa (tipoCausaID);

alter table Incendio
	add constraint FK_INCENDIO_FONTEALERTA foreign key (fonteAlertaID)
		references FonteAlerta (fonteAlertaID);

alter table Incendio
	add constraint FK_INCENDIO_TIPOINCENDIO foreign key (tipoIncendioID)
		references TipoIncendio (tipoIncendioID);