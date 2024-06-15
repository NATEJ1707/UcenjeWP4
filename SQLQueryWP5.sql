use master;
go
drop database if exists klimauredjaj;
go
create database klimauredjaj;
go 
use klimauredjaj;

create table Proizvod(
sifra int not null primary key identity(1,1),
nazv varchar(100),
cijena decimal (18,2),
verificiran bit
);

create table stavka(
racun varchar(20) not null,
proizvod varchar(50),
kolicina int not null,
cijena decimal(18,2)
);

create table racun(
sifra int not null primary key identity(1,1),
datum datetime,
kupac varchar(50),
brojracuna varchar(20) 
);

create table kupac(
sifra int not null primary key identity(1,1),
ime varchar(20) not null,
prezime varchar(20) not null,
ulica varchar(50),
mjesto varchar(50)
);

alter table 





