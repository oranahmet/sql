create table proje1.customer(
id int not null auto_increment,
adi varchar(15)not null,
adres varchar(50),
kayittarihi datetime default now(),
yas int,
check(yas>18),
primary key(id)

);

insert into proje1.customer(adi,adres,kayittarihi,yas)values("ahmet","mustfa kemalmah.","2023-05-07  -12:15:05",27);
select * from proje1.customer;




