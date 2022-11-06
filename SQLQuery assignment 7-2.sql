use demo;

select * from emp;
select *from empsale;
--*********************
--1
select eid ,name ,city
from emp 
where city='chennai';
--**********************
--2
select e.eid,e.name, e2.doj,e2.designation,e2.department,e2.salary
   from emp as e
   inner join empsale as e2
   on e.eid= e2.eid
   where designation='sysadmin';
--*********************************************
--3
select eid, salary,(salary-salary*.1) as 'redusalary'
from empsale 
where eid in (select eid from emp where city ='chennai');
--************************************************************
--4
select emp.eid,name,city,doj,designation,department,salary
   from emp 
   inner join empsale 
   on emp.eid= empsale.eid
   where empsale.department in (select department 
                                from empsale 
                                where  eid in (select eid  from emp where name in ('ram','saran')));
 
--*********************************************************************************
--5
create table trainings(
eid varchar(5),
name varchar (10),
department varchar(15),
);
insert into trainings (eid,name,department)
select e.eid,e.name,e1.department
from emp as e
inner join empsale as e1
on e.eid=e1.eid 
where department='admin';

select *from trainings;
--*****************************************************
--6
delete from trainings 
where eid in (select eid 
              from emp 
			  where name='saran');
--********************************************************
--7
select * from empsale
where exists (select eid from empsale where salary > 200000);
--***************************************************************



 



