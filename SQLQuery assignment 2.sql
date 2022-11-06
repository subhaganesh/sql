use demo;

--create empsale table?
create table empsale(
eid char(5),
department varchar(15),
designation varchar(12),
doj date,
salary int
);

select * from empsale;


insert into empsale(eid,department,designation,doj,salary) 
values ('e0001','hr','asso','01/03/2012',10000);
insert into empsale 
values ('e0002','admin','sysadmin','12/06/2012',30000);
insert into empsale
values ('e0003','management','sr.mana','02/07/2012',110000);
insert into empsale 
values ('e0004','hr','sr.asso','11/04/2012',30000);
insert into empsale 
values ('e0005','service','je','08/03/2012',10000);
insert into empsale 
values ('e0006','it','je','01/13/2012',40000);
insert into empsale 
values ('e0007','service','je','02/03/2012',13000);

select *from empsale

--where name last word n?
select *from emp
where name like '%n';

--increase the salary of all hr by 10%? 
update empsale
set salary=(salary+salary*0.1)
where department='hr';

select *from empsale;

select *from emp;

