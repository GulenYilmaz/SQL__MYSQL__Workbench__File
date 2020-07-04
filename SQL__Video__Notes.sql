use syntaxhrm_mysql;
-- use veritabani name -->comutu bir veri tabanina baglanmak istersek kullaniyoruz


-- SELECT QUERY--
-- select bilgisayar dilince sorgulamak anlamina geliyor, istedigimiz degeri yada fonsiyonu sorgulayabiliriz 
select (4+5)*5;

-- select  as--> column olusturuyor verdigimiz degeri isimlendiriyor
select "yunus" as yakut;

-- select version(); hangi versionu kullaniyorsak onu veriyor
select version() ;

-- select now(); su andaki tarihi ve saati veriyor
select now() ;

-- sunucu ustundeki birden fazla veri tabani varsa hepsini gosteriyor
show databases

-- create database name  , -->bizim icin data base olusturuyor
-- create table name ,--> bizim  icin table olusturuyor
-- create table musteri (isim varchar(20), soyisim varchar(20));


-- desc tablo name ile icerigini detaylarini  gorebiliriz; desc =describe
-- desc tablo name . Tables;

select * from hs_hr_emp_dependents ; 
select emp_firstname, emp_lastname
from hs_hr_employees;

-- order siralama yapmak istiyorsak eger --order by-- kullanabiliriz
select *from hs_hr_employees order by emp_lastname;


-- eger tablo icinde degisiklikler yapmak istiyorsak var olan bilgiyi degistirmek istiyorsak  --update ve set-- query kullaniyoruz
update hs_hr_employees set emp_number ="13409" where emp_lastname="Sakhi";
select * from hs_hr_emp_skill;
delete from hs_hr_emp_skill where skill_id='1';


-- eger column eklemek yada silmek istiyorsak eger  alter table -->add column yada drop column 
alter table hs_hr_emp_skill add column customer varchar(20);
alter table hs_hr_emp_skill drop column customer ;



