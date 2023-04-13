create database flyawayp;


use flyawayp;

create table adminlogin(
ademail varchar(30) primary key,
adpwd varchar(25));

select * from adminlogin;

create table flight(
Airport varchar(200) primary key,
airline varchar(50) not null,
sourcee varchar(200) not null,
destination varchar(200) not null,
seats int,
price int);

select * from flight;

delete from flight where Airport='Rajiv Gandhi Airport';

select * from flight where sourcee='Nagpur' and destination='Delhi';

update flight set Airport='?', airline='?', sourcee='?', destination='?', seats=?, price=?
where Airport='?';

create table passenger(
pname varchar(200) primary key,
gender varchar(6),
location varchar(100),
phoneno varchar(10),
datee date,
noofperson varchar(1),
email varchar(200),
passwd varchar(200));


select * from passenger;
