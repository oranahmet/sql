create table proje1.ogrenciler(
id int not null, 
dersAdi varchar(45),
kont int,
primary key(id)
);

create table proje1.ogrenci(
ogrenciId int not null,
ogrenciAdi varchar (30),
ogrencisoyadiAdi varchar (30),
ogrenciadresi varchar (30),
primary key (ogrenciId)
);


insert into proje1.öğrenciler values(40, "ahmet oran", 1);
insert into proje1.ogrenci values(40, "ahmet oran", 20);
insert into proje1.ogrenci values(3, "masa", 100.50);
insert into proje1.ogrenci(urunId,urunAdi) values(4, "armut");
select * from proje1.urunler;

