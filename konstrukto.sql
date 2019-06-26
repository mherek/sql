drop database if exists konstrukto;
create database konstrukto;
use konstrukto;
create table radnik (
    id int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib char(11),
	iban char(21),
	nadredeni int(11) default null,
	napomena varchar(200)
	);
create table gradiliste (
    id int not null primary key auto_increment,
    ime varchar(50),
	adresa varchar(50)
	
);
create table dogadaj(
	id int not null primary key auto_increment,
    vrijemepocetka datetime,
	vrijemekraja  datetime,
    radnik int not null,
    gradiliste int not null
);

alter table dogadaj add foreign key (gradiliste) references gradiliste(id); 
alter table dogadaj add foreign key (radnik) references radnik(id); 
alter table radnik add foreign key (nadredeni) references radnik(id);
