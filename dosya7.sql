-- -- roun kullanimi -> ondalikli sayiları yuvarlamak içn kullanılır---
select round(maas, 0) from proje1.personel;

select round( avg (maas), 2) as ortalama from proje1.personel;

select * from proje1.personel limit 2;

select * from proje1.personel order by maas;
select * from proje1.personel order by maas desc;
select * from proje1.personel order by maas asc;
select * from proje1.personel order by 5 desc;

select * from proje1.personel order by maas desc limit 1;

select * from proje1.personel where bolum in("Yonetim","Bakim") and yas>15 order by yas asc limit 1;

select * from proje1.personel where yas=(select yas from proje1.personel where bolum in("Yonetim", "Bakim") and yas>15 order by yas asc limit 1)
 and bolum in("Bakim", "Yonetim");

select * from proje1.personel where ad like "%a%" order by ad;

select maas from proje1.personel where maas> (select avg(maas) from proje1.personel) order by maas asc limit 1;

select avg(yas) from proje1.personel;

select min(maas) from proje1.personel where yas>(select avg(yas) from proje1.personel);

select * from proje1.personel where maas=(select min(maas) from proje1.personel where yas>(select avg(yas) from proje1.personel));

insert into proje1.personel values(1, "Yunus", "Bakim", 16, 4800.50);
insert into proje1.personel values(2, "Sena", "Personel", 15, 4250.25);
insert into proje1.personel values(3, "Ali", "Personel", 17, 5000.25);
insert into proje1.personel values(4, "Ahmet", "Yonetim", 14, 7000.50);
insert into proje1.personel values(5, "Zafer", "Yonetim", 16, 8000.50);
insert into proje1.personel values(6, "Tugrul", "Yonetim", 25, 25000.50);
insert into proje1.personel values(7, "Huzeyfe", "Tesis", 15, 5000.50);
insert into proje1.personel values(8, "Huzeyfe", "Bakim", 15, 8000.50);
truncate table proje1.personel;
delete from proje1.personel where id=1;

set sql_safe_updates=0; -- kaydetme modunu kapatır
delete from proje1.personel;

delete from proje1.personel where bolum = "Yonetim";

select avg(maas) from proje1.personel;

select maas from proje1.personel where maas>(select avg(maas) from proje1.personel) order by maas limit 1;

delete from proje1.personel where maas = (select * from (select maas from proje1.personel where maas>(select avg(maas) from proje1.personel) order by maas limit 1
)as del) ;

start transaction;

savepoint savePoint1;

delete from proje1.personel where id=1;

rollback to savepoint1;


savepoint lll;

delete from proje1.personel where id=6;

rollback to savepoint1;




select * from proje1.personel;