-- update => veri tabanındaki verileri guncellemek icn kullanırız

update proje1.personel set id=id+10;

select * from proje1.personel;
 
 update proje1.personel set bolum="Tesis" , yas=20 where id=11;

update proje1.personel set maas=maas+2000 where bolum="Personel";

update proje1.personel set bolum="ceo" where id=16;

select @maxMaas:=max(maas) as maas from proje1.personel;

select * from proje1.personel where maas=@maxMaas;

select @ortalamaYas:=avg(yas) from proje1.personel;
select @kckMaas:=min(maas) from proje1.personel where yas>@ortalamaYas;
select * from proje1.personel where maas=@kckMaas;

update proje1.personel set maas=maas-500 where bolum in("Bakim" , "Personel");

-- alter kullanimi 

-- kolon ekleme

alter table proje1.personel add adres varchar(150) default 'Almanya';

alter table proje1.personel add cinsiyet varchar(10);

-- tablo ismi degistirme 

alter table proje1.personel rename to proje1.persons;

alter table proje1.persons rename to proje1.personel;

update proje1.personel set cinsiyet='erkek' where id <> 12;
update proje1.personel set cinsiyet='kadın' where id = 12;

-- kolon isim degistirme

alter table proje1.personel rename column bolum to departman;

alter table proje1.personel rename column ad to isim;

-- her hangi bir kolondaki bilgileri güncellemek icin modify yapısı kullanılır;

alter table proje1.personel alter column adres set default 'Turkiye';

 alter table proje1.personel modify adres  varchar(200) default 'Turkiye';
 
 insert into proje1.personel(id, isim, departman, yas, maas, cinsiyet) values (19, 'Can', 'Tesis', 35, 7000, 'Erkek');

-- check ekleme
alter table proje1.personel add constraint check (maas>4000);

insert into proje1.personel(id, isim, departman, yas, maas, cinsiyet) values (20, 'Hasan', 'Tesis', 35, 5000, 'Erkek');
 
 
select *from proje1.personel;
