drop database if exists osnovnavrijednost;
create database osnovnasredstva default character set utf8;
use osnovnasredstva;

create table osnovnosredstvo(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    nabavnavrijednost decimal(18,2),
    inventarnibroj int,
    prostorija int
);

create table prostorija(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    duzina decimal(18,2),
    sirina decimal(18,2),
    kat int
);

create table kat(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null
);

alter table osnovnosredstvo add foreign key (prostorija) references prostorija(sifra);
alter table prostorija add foreign key (kat) references kat(sifra);
