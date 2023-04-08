create table proje1.urunler(
id int not null, 
dersAdi varchar(45),
kont int,
primary key(id)
);

create table proje1.urunler(
Id int not null,
urunAdi varchar (30),
urunFiyati varchar (30),
urunStok int,
primary key (ogrenciId)
);


insert into proje1.urunler values(1, "bilgisayar", 1200,20);
insert into proje1.urun values(2, "monitör", 1800,50);
insert into proje1.urun values(3, "mause", 250,30);
insert into proje1.urun values(4, "klavye", 1200,40);
insert into proje1.urun values(5, "kulaklık", 1200,80);
select * from proje1.urunler;