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

insert into radnik (id, ime, prezime, oib, iban, nadredeni) values (1, 'Marko', 'Herek', 12345678901, 123456789012345678901, null),
(2, 'Ivan', 'Ivic', 12345678910, 123456789012345678901, 1), (6, 'Pero', 'Peric', 21345678901, 123456789012345678901, null),
(3, 'Marko', 'Maric', 31345678901, 321456789012345678901, 1), (4, 'Hrvoje', 'Herek', 12345328901, 123452189012345678901, null),
(5, 'Marko', 'Marlic', 72345678901, 223456789012345678901, null);

insert into gradiliste (id, ime) values (1, 'Osijek'), (2, 'Baranja'), (3, 'Valpovo');

insert into dogadaj (id, vrijemepocetka, vrijemekraja, radnik, gradiliste) values (1, '2019-07-17 10:15:11', '2019-07-1723:15:11', 1,1); 