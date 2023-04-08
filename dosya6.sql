create table proje1.personel(
id int  not null primary key,
ad varchar(50),
bolum varchar(50),
yas int,
maas double
);


insert into proje1.personel values(1, "Yunus", "Bakim", 16, 4800.50);
insert into proje1.personel values(2, "Sena", "Personel", 15, 4250.25);
insert into proje1.personel values(3, "Ali", "Personel", 17, 5000.25);
insert into proje1.personel values(4, "Ahmet", "Yonetim", 14, 7000.50);
insert into proje1.personel values(5, "Zafer", "Yonetim", 16, 8000.50);
insert into proje1.personel values(6, "Tugrul", "Yonetim", 25, 25000.50);
insert into proje1.personel values(7, "Huzeyfe", "Tesis", 15, 5000.50);
insert into proje1.personel values(8, "Huzeyfe", "Bakim", 15, 8000.50);

select * from proje1.personel;


select count(id) as personel_sayisi from proje1.personel;

select count(yas) as personel_yas from proje1.personel where yas>15;

select count(distinct(ad)) as farkli_isim_kisi_sayisi from proje1.personel;

select sum(maas) as toplam_maas from proje1.personel;

select sum(maas) as  toplam_maas from proje1.personel where bolum="Yonetim";

select sum(maas) as yas_maas from proje1.personel where yas>16 and bolum="Yonetim";

select sum(yas) as yas_toplam from proje1.personel where ad="Huzeyfe";

select max(maas) as max_maas from proje1.personel;

select max(yas) as max_yas from proje1.personel;

select * from proje1.personel where yas=(select max(yas) from proje1.personel);

select * from proje1.personel where yas=25;

select min(maas) as min_maas from proje1.personel;

select min(yas) as min_yas from proje1.personel;

select ad from proje1.personel where yas=(select min(yas) from proje1.personel);

select * from proje1.personel where ad like "%a%" or maas=(select min(maas) as min_maas from proje1.personel);

select avg(maas) as ortalama_maas from proje1.personel;

select avg(yas) as ortalama_yas from proje1.personel;

select avg(yas) as ortalama_yas from proje1.personel;

select avg(maas)  as yas_ortal from proje1.personel where yas> (select avg(yas) from proje1.personel);

 select ad,yas,upper(ad) as buyuk_harfli from proje1.personel;

 select bolum,upper(bolum) as buyuk_harfli from proje1.personel;
 
select ad, lower(ad) as kucukharfli_ad from proje1.personel;

select bolum, lower(bolum) as kucukharfli_ad from proje1.personel;

select ad, length (ad) as uzunluk from proje1.personel;

select  bolum, length (bolum) as uzunluk from proje1.personel;

 select ad, substr(ad,3,2) as parcali_isim from proje1.personel;
 
  select  substr(bolum,2,2) as parcali_bolum from proje1.personel;
  
  
 
select * from proje1.personel;

