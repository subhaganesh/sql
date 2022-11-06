--emp
use demo;

select *from emp;

--eid
alter table emp
alter column eid char(5) not null;

alter table emp
add constraint eid primary key (eid);

--name
alter table emp
alter column name varchar(20) not null

--addr
alter table emp
add constraint  addr check ((addr like '%vel')or(addr like '%tam')or(addr like '%chm')or(addr like'%ady')) ;
 
 update emp
 set addr='43 joe st tir'
 where eid='e0001';

--city
alter table emp
add constraint  city check (city in ('karai' ,'chennai','madurai','tirichy','cmbt'));

 update emp
 set city='vellore'
 where eid='e0001';

--phone
select distinct phone 
from emp;

alter table emp
add constraint phone  unique (phone);

--email
alter table emp
add constraint  email check ((email like '%gmail%') or (email like '%yahoo%') or (email like '%outlook%'));

 update emp
 set email='subha@hotmail.com'
 where eid='e0001';

--dob
 select *from emp;

 alter table emp
 add constraint dob check (dob<='2013-01-01');

 update emp
 set dob='2013-02-09'
 where eid='e0001';


 -------------------------------


 --empsale

 select *from empsale;
 --eid
 alter table empsale
 add constraint fkey foreign key (eid) references emp (eid);

 insert into empsale
 values ('e0011','hr','director','2012-01-08',600000)

 --department 
 alter table empsale
 add constraint dept check (department in ('hr','admin','service','management','it'));

 update empsale
 set department ='director'
 where eid='e0001';

 --designation
 alter table empsale
 add constraint desi check (designation in ('asso','sysadmin','sr.mana','sr.asso','je'));

 update empsale
 set designation ='executive'
 where eid='e0001';

 --salary
 alter table empsale
 add constraint salary check (salary <=985000);

 update empsale
 set salary =986000
 where eid='e0001';

 --department
 alter table empsale
 add constraint department default 'temporary' for department;
 
 
insert into empsale(eid,designation,doj,salary) 
values ('e0009','asso','01/03/2012',10000);

select *from empsale;




---------------------
--apply constraint when creating a table

/*create table empsale(
eid char(5) references emp (eid),------->foreign key(relationship between two tables)
department varchar(15) default 'temporary',
designation varchar(12) check in ('asso','sysadmin','sr.mana','sr.asso','je'),
doj date,
salary int check (salary <= 985000)
);
---------------
create table emp(
eid char(5) not null primary key,
name varchar(20) not null,
addr varchar(30),
city varchar(15) default 'chennai',
phone char(13) unique,
email varchar(20),
dob date
);*/


 



 






 





