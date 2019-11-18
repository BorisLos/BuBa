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


#SELECT * FROM zupanija;

INSERT INTO zupanija (sifra,naziv,zupan) values 
(null,'OBZ','Ivan');

insert into zupanija (sifra,naziv,zupan) values
(null,'VSZ','Jozo'),
(null,'BPZ','Marko');


#select * from opcina;

insert into opcina (sifra,zupanija,naziv,nacelnik) values
(null,1,'Opcina Beli Manastir','Robert'),
(null,1,'Opcina Osijek','Ivica'),
(null,2,'Opcina Vukovar','Ivan'),
(null,3,'Opcina Slavonski Brod)','Milica');

#select * from mjesto;

insert into mjesto (sifra,naziv,opcina,brojstanovnika) values
(null,'Osijek',2,107784),
(null,'Beli Manastir',1,10068),
(null,'Vukovar',3,27683),
(null,'Slavonski Brod',4,59141);
