drop database if exists vrtic;	
create database vrtic default character set utf8;
use vrtic;
create table djelatnik(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
iban char(21),
odgojnaskupina int not null
);
create table odgojnaskupina(
id int not null primary key auto_increment
);
create table dijete(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
);
create table dijeteodgojnaskupina(
dijete int not null,
odgojnaskupina int not null);
alter table dijeteodgojnaskupina add foreign key (odgojnaskupina) references odgojnaskupina(id);
alter table dijeteodgojnaskupina add foreign key (dijete) references dijete(id);
alter table djelatnik add foreign key (odgojnaskupina) references odgojnaskupina(id);


