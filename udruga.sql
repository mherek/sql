drop database if exists udruga;	
create database udruga default character set utf8;
use udruga;
create table djelatnik(
id int not null primary key auto_increment,
ime varchar(50),
prezime varchar(50),
iban char(21)
);
create table pas(
id int not null primary key auto_increment,
soba int not null,
djelatnik int not null
);
create table soba(
id int not null primary key auto_increment,
brojsobe varchar(50)
);

alter table pas add foreign key (soba) references soba(id);
alter table pas add foreign key (djelatnik) references djelatnik(id);


insert into djelatnik (id,ime,prezime) values (null,'Ivan','Daric');
delete from djelatnik where id=1;


