use master;
go
drop database if exists novabaza;
go
create database novabaza;
go 

use novabaza;
create table smjerovi(
sifra int not null primary key identity(1,1),
naziv varchar(100) not null,
trajanje decimal
);