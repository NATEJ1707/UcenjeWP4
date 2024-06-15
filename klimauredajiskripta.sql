use master;
go
drop database if exists klimauredjaj;
go
create database klimauredjaj;
go 
use klimauredjaj;

create table proizvodi(
sifra int not null primary key identity(1,1),
nazv varchar(100),
cijena decimal (18,2),
verificiran bit
);

create table stavke(
racun int not null,
proizvod int not null,
kolicina int not null,
cijena decimal(18,2)
);

create table racuni(
sifra int not null primary key identity(1,1),
datum datetime,
kupac int,
brojracuna varchar(20) 
);

create table kupci(
sifra int not null primary key identity(1,1),
ime varchar(20) not null,
prezime varchar(20) not null,
ulica varchar(50),
mjesto varchar(50)
);

alter table stavke add foreign key (racun) references racuni(sifra);
alter table stavke add foreign key (proizvod) references proizvodi(sifra);
alter table racuni add foreign key (kupac) references kupci(sifra);





