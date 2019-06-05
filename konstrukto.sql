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
	key nadredeni (nadredeni)
    );
create table gradiliste (
    id int not null primary key auto_increment,
    ime varchar(50)
);
create table dogadaj(
    vrijeme datetime,
    radnik int not null,
    gradiliste int not null
);

alter table dogadaj add foreign key (gradiliste) references gradiliste(id); 
alter table dogadaj add foreign key (radnik) references radnik(id); 
