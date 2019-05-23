drop database if exists frizerski;	
create database frizerski default character set utf8;
use frizerski;
create table djelatnik(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
iban char(21),
korisnik int not null
);
create table korisnik(
id int not null primary key auto_increment,
usluga int not null
);
create table usluga(
id int not null primary key auto_increment,
ime varchar(50),
cijena decimal(18,2)
);

alter table djelatnik add foreign key (korisnik) references korisnik(id);
alter table korisnik add foreign key (usluga) references usluga(id);
insert into usluga (id, ime) values (null,'Pranje face');
update usuluga set ime='Pranje kose' where id=1;
delete usluga where id=1;

