use demo;

select e.eid ,e.name,e.city,e1.doj,e1.department,e1.designation,e1.salary
from emp as e
left join empsale as e1
on e.eid =e1.eid
where city='chennai'

union 

select e.eid ,e.name,e.city,e1.doj,e1.department,e1.designation,e1.salary
from emp as e
right join empsale as e1
on e.eid =e1.eid
where city='chennai'

select e.eid ,e.name,e.city,e1.doj,e1.department,e1.designation,e1.salary
from emp as e
full join empsale as e1
on e.eid =e1.eid
where city='chennai'; 
-------------------------------
select *from empsale
where salary is null;
--------------------------------
--inventory table

------------------------------------------------------------
--create a view 
select *from empsale;
select sum (salary) as 'totalcost' ,department
from empsale
group by department
having sum (salary) >100000
order by sum (salary);
---------------------------------------------------------
create view empsale1 
as
 select sum (salary) as 'totalcost' ,department
 from empsale
 group by department
 having sum (salary) >100000;
 
 select *from empsale1
 order by department desc;

 drop view empsale1;
 ----------------------------------------------------------



