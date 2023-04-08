create table proje1.orders(
id int not null,
email varchar(50),
ad varchar(10),
soyad varchar(10),
tel varchar(40),
tarih int not null,
urun varchar(15),
fiyat int not null,
adet int not null,
toplamfiyat int not null,
primary key(id)

);


insert into proje1.orders values (1, "ahmet1@gmail", "ahmet", "yfds", "123456789", 2023, "pizza", 30, 1, 25);
insert into proje1.orders values (2, "ahmet2@gmail", "fd", "aslan", "122456789", 2023, "spizza", 25, 2, 25);
insert into proje1.orders values (3, "ahmet3@gmail", "fdsa", "drs", "135456789", 2023, "tpizza", 19, 3, 19);
insert into proje1.orders values (4, "ahmet4@gmail", "fe", "afdfd", "134756789", 2023, "hpizza", 20, 4, 20);
insert into proje1.orders values (5, "ahmet5@gmail", "ef", "fdas", "1345567789", 2023, "ipizza", 21, 5, 21);
insert into proje1.orders values (6, "ahmet6@gmail", "fd", "fads", "13456789", 2023, "cpizza", 10, 5, 10);
insert into proje1.orders values (7, "ahmet7@gmail", "as", "oran", "134556789", 2023, "fpizza", 24, 7, 24);
insert into proje1.orders values (8, "ahmet8@gmail", "fr", "fd", "13456789", 2023, "epizza", 18, 8, 18);
insert into proje1.orders values (9, "ahmet9@gmail", "fd", "dss", "134567589", 2023, "opizza", 15, 3, 15);
insert into proje1.orders values (10, "ahmet10@gmail", "fee", "fe", "134556789", 2023, "rpizza", 28, 9, 28);

select * from proje1.orders where toplamfiyat>25;
