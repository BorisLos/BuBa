drop database if exists drzavnauprava;
create database drzavnauprava;
use drzavnauprava;

create table zupanija(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    zupan varchar(50) not null
);

create table opcina(
    sifra int not null primary key auto_increment,
    zupanija int not null,
    naziv varchar(50) not null,
    nacelnik varchar(50) not null
);

create table mjesto(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    opcina int not null,
    brojstanovnika int not null
);

alter table opcina add foreign key (zupanija) references zupanija(sifra);

alter table mjesto add foreign key (opcina) references opcina(sifra);
