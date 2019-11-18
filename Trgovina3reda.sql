drop database if exists trgovina;
create database trgovina;
use trgovina;

create table racun(
    sifra int not null primary key auto_increment,
    datum datetime,
    rednibroj int not null,
    operater int not null
);

create table stavka(
    racun int not null,
    proizvod int not null,
    kolicina decimal(18,3) not null
);

create table proizvod(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    cijena decimal(18,2)
);

create table operater(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    email varchar(50) not null
);
alter table stavka add foreign key (racun) references racun(sifra);
alter table stavka add foreign key (proizvod) references proizvod(sifra);

alter table racun add foreign key (operater) references operater(sifra);


#select * from operater; 

insert into operater (sifra,ime,prezime,email) values
(null,'Ivana','Ivic','iivic@gmail.com');

insert into operater (sifra,ime,prezime,email) values
(null,'Eva','Evic','eevic@gmail.com');

insert into operater (sifra,ime,prezime,email) values
(null,'Jelica','Jelic','jjelic@gmail.com'),
(null,'Ivan','Ivanovic','iivanovic@gmail.com');



#select * from proizvod;

insert into proizvod (sifra,naziv,cijena) values
(null,'kruh',5.60),
(null,'mlijeko',4.99),
(null,'brasno',3.75);


#select * from racun;

insert into racun (sifra,datum,rednibroj,operater) values
(null,'2019-11-15 15:10:00',1,1);

insert into racun (sifra,datum,rednibroj,operater) values
(null,'2019-11-15 15:33:00',2,2),
(null,'2019-11-15 16:17:10',3,1),
(null,'2019-11-15 15:59:00',4,3);


#select * from stavka;


insert into stavka (racun,proizvod,kolicina) values
(1,2,1),
(2,1,1.5),
(4,3,2);