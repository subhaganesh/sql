--create a data base in sql server
create database demo;
use demo;

--create table (emp) in (demo) database

create table emp(
eid char(5),
name varchar(20),
addr varchar(30),
city varchar(15),
phone char(13),
email varchar(20),
dob date
);

--insert values in (emp) table

insert into emp(eid,name,addr,city,phone,email,dob)
values('e0001','varun','45joe st tam','chennai','9785674450','varun@gmail.com','04/06/2012');
insert into emp(eid,name,addr,city,phone,email,dob)
values('e0002','saran','49jim st vel','tirichy','9785670050','saran@gmail.com','04/03/2012');
insert into emp(eid,name,addr,city,phone,email,dob)
values('e0003','gupta','45goa st tam','madurai','9995674450','gupta@yahoo.com','10/06/2012');
insert into emp(eid,name,addr,city,phone,email,dob)
values('e0004','ram','45fog st ady','cmbt','9785675550','ram@gmail.com','08/06/2012');
insert into emp(eid,name,addr,city,phone,email,dob)
values('e0005','rajulu','45ram st vel','cmbt','9734574450','raju@outlook.com','04/06/2012');
insert into emp(eid,name,addr,city,phone,email,dob)
values('e0006','ramba','45ram st chm','chennai','9734574450','ramba@gmail.com','12/06/2012');
insert into emp(eid,name,addr,city,phone,email,dob)
values('e0007','kishore','45lone st chm','chennai','9734574450','kish@yahoo.com','04/06/2012');
insert into emp(eid,name,addr,city,phone,email,dob)
values('e0008','kumar','45ram st vel','karai','9734574477','kumar@gmail.com','03/12/2012');
insert into emp(eid,name,addr,city,phone,email,dob)
values('e0009','jai','45kings st ady','chennai','9734074450','jai@gmail.com','04/07/2012');
insert into emp(eid,name,addr,city,phone,email,dob)
values('e0010','kuna','45yuvi st tam','madurai','9734578950','kuna@gmail.com','02/09/2012');

--date format (mm/dd/yyyy)

--view (emp) table from (demo) database

select * from emp;









