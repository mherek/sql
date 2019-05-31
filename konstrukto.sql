drop database if exists konstrukto;
create database konstrukto;
use konstrukto;
create table radnik (
    id int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib char(11),
	iban (21),
    sef int not null
	);
create table sef (
    id int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib char(11)   
);
create table gradiliste (
    id int not null primary key auto_increment,
    ime varchar(50),
    sef int not null
);
create table dogadaj(
    vrijeme datetime,
    radnik int not null,
    gradiliste int not null
);
alter table radnik add foreign key (sef) references sef(id); 
alter table gradiliste add foreign key (sef) references sef(id); 
alter table dogadaj add foreign key (gradiliste) references gradiliste(id); 
alter table dogadaj add foreign key (radnik) references radnik(id); 
