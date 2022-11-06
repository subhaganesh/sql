use demo;

create view empsalecst
as
 select e.eid, e.name,e1.doj,e1.designation,e1.department,e1.salary as 'basic',  salary * 0.15 as 'hra'  , salary  * 0.09 as 'pf', ( (salary)+(salary * 0.15+salary  * 0.09)) as'net' , ((salary+salary * 0.15+salary  * 0.09)- (salary  * 0.09)) as 'gross'
 from emp as e
 inner join empsale as e1
 on e.eid=e1.eid;
 
 select * from empsalecst;

 drop view empsalecst;

 select * from empsale;

 ----------------------------------------------------------------------------

 create view emphr
 as
   select e.eid,e.name, e2.doj,e2.designation,e2.department
   from emp as e
   inner join empsale as e2
   on e.eid= e2.eid
   where department='hr' and doj between '2012-1-03' and '2012-12-06'; 

select *from emphr;

------------------------------------------------------------------------

