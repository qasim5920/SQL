create database qasim
use qasim
create table [order]
(
productId int not null,
productName varchar(50) unique,
productPrice float,
)



alter table [order] add constraint pkkjknknnjnknnj primary key (productId);


drop table [order]
select * from [order]
--select update delete insert

insert into [order] (productId) values (3)

delete from [order] where productId=3
insert into [order] values(11,'efhe',966)

--And Or Not    In
select * from [order] where productPrice<10.0 And productId=1

select * from [order] where productId=8 or productId=11 or productId=1

select * from [order] where productId in (8,11,1)

--like
select * from [order]
select * from [order] where productName like ('d%')
select * from [order] where productName like ('e__e')
select * from [order] where productName like ('e__e')
select * from [order] where productName like ('[A-Z+]')
select * from [order] where productName like ('[a-z+]%')




create table product(
productId int primary key,
productName varchar(50),
productStock int,
productPrice float,
)


create table customer(
product int ,
CName varchar(50),
id int primary key,
phone float,

foreign key  (product) references product(productId)
)


insert into product values (1,'pizza',60,120)
insert into product values (2,'burger',10,180)
insert into product values (3,'shwarma',20,190)
insert into product values (5,'toco',50,1220)
insert into product values (6,'donot',22,833)


insert into customer values (10,'abdukl',2,2222)
select * from customer


select * from product where productStock=(Select productStock from customer where product=2)
