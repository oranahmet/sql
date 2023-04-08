use proje1;


create table urunler1(
urun_id int primary key auto_increment,
urun_adi varchar(50), 
fiyat double
);

-- insert into urunler(urun_adi, fiyat) values ('Hamburger', 8.50),('Cheeseburger', 10.50),('Sucuk Burger', 11);

insert into urunler(urun_adi, fiyat) values ('Hamburger', 8.50);
insert into urunler(urun_adi, fiyat) values('Cheeseburger', 10.50);
insert into urunler(urun_adi, fiyat) values('Sucuk Burger', 11);

select * from urunler;

create table siparis(
siparis_id int primary key auto_increment,
urun_id int,
adet int,
toplam_fiyat double,
adres varchar(250),
foreign key (urun_id) references urunler(urun_id)
-- on delete cascade
-- on update cascade
on delete set null
on update set null

);


insert into siparis(urun_id, adet, toplam_fiyat, adres) values(14, 5, 42.5, 'Istanbul');
insert into siparis(urun_id, adet, toplam_fiyat, adres) values(12, 2, 21, 'ankara');
insert into siparis(urun_id, adet, toplam_fiyat, adres) values(13, 1, 11, 'ankara');

delete from urunler where urun_id =13;
select * from proje1.siparis;
select * from proje1.urunler;

update urunler set urun_id=urun_id+10;

set sql_safe_updates=0;







-- kategoriler ve products diye table olusturup urunler ekleyip cascade ile silip ve update yapiniz


create table kategoriler(
kat_id int primary key auto_increment,
kat_adi varchar(100)
);


insert into kategoriler(kat_adi) values('Computer');
insert into kategoriler(kat_adi) values('Telefon');
insert into kategoriler(kat_adi) values('Ev Esyasi');

select * from kategoriler;

create table products(
product_id int primary key auto_increment,
kat_id int, 
product_adi varchar(100),
product_fiyat double,
foreign key (kat_id) references kategoriler(kat_id)
on delete cascade
on update cascade
);

insert into products(kat_id, product_adi, product_fiyat) values(1, 'Dell', 1000);
insert into products(kat_id, product_adi, product_fiyat) values(2, 'Samsung', 700);
insert into products(kat_id, product_adi, product_fiyat) values(3, 'Bulasik Makinasi', 700);
insert into products(kat_id, product_adi, product_fiyat) values(1, 'Asus', 1200);
insert into products(kat_id, product_adi, product_fiyat) values(3, 'Camasir Makinasi', 800);
select * from products;
delete from kategoriler where kat_id=3;

-- join kullanimi


insert into kategoriler(kat_adi) values("ps");


select kategoriler.kat_id, kategoriler.kat_adi, products.product_id, products.product_adi,products.product_fiyat 
from kategoriler 
left join products
on kategoriler.kat_id=products.kat_id;



select kategoriler.kat_id, kategoriler.kat_adi, products.product_id, products.product_adi,products.product_fiyat 
from products 
right join kategoriler
on kategoriler.kat_id=products.kat_id;


select kategoriler.kat_id, kategoriler.kat_adi, products.product_id, products.product_adi,products.product_fiyat 
from products 
inner join kategoriler
on kategoriler.kat_id=products.kat_id;

select kategoriler.kat_id, kategoriler.kat_adi,products.product_id, products.product_adi,products.product_fiyat 
from products 
left join kategoriler
on kategoriler.kat_id=products.kat_id
union
select kategoriler.kat_id, kategoriler.kat_adi,products.product_id, products.product_adi,products.product_fiyat 
from products 
right join kategoriler
on kategoriler.kat_id=products.kat_id;

/*

Join islemleri ise farklı Tablolari birlestirmek icin kullanilir. Diger 
    bir ifade ile farkli tablolardaki secilen sutunlar ile yeni bir tablo 
    olusturmak icin kullanilabilir.
    
    JOIN islemleri Iliskisel Veritabanlari icin cok onemli bir ozelliktir. Çunku
    Foreign Key'ler ile iliskili olan tablolardan istenilen sutunlari cekmek 
    icin JOIN islemleri kullanilabilir.
    
    mySQL'de 3 Cesit Join islemi kullanilabilmektedir.
    
    1) INNER JOIN:  Tablolardaki ortak olan sonuc kumesini gosterir
    2) LEFT JOIN:  Ilk tabloda (Sol) olup digerinde olmayan sonuclari gosterir
    3) RIGHT JOIN: Sadece Ikinci tabloda olan tum sonuclari gosterir
       FULL JOIN=(left join + union  + right join) Tablodaki tum sonuclari gosterir*/


