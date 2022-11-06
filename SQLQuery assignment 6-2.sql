use demo;
select * from emp
select * from empsale;
--1
select count (eid) as 'teamsize' ,department ,avg (salary) as 'avg salary'
from empsale
group by department;
--*****************************************************************************
--2
select count(department) 
from empsale
where department='admin';
--*************************************************************************************
--3
select  max(salary) as 'max sala',min(salary) as 'min sala', department
from empsale
where department='admin'
group by department;
--*************************************************************************************
--4
select count (emp.eid) as 'teamsize' ,empsale.department,avg (salary) as 'avg salary'
from empsale 
inner join emp 
on empsale.eid=emp.eid
where emp.city='cmbt'
group by department;
----------------------
select * from emp
select *from empsale;
--**************************************************************************************
--5
select eid,name,email, upper(concat (left (name,1),
                      right(name,1),
					  right (eid, 3),
					  '@rcg.com' ) )as 'official id' from emp;
--***************************************************************************************
--6
select name,city,phone,email,dob,datediff(yy,dob,getdate()) as 'age'
from emp
where datediff(yy,dob,getdate()) >=10;
--**************************************************************************************
--7
select e.eid,e.name,e1.doj
from emp as e
full join empsale as e1
on e.eid=e1.eid
where datediff(yy,doj,getdate()) >5;
--***************************************************************************************
--8
select  e.name,e1.department, e1.designation,e.city,e.dob 
from emp as e 
inner join empsale as e1
on e.eid=e1.eid
where month(dob)=month(getdate());
--***************************************************************************************
--9

--****************************************************************************************
--10
select eid,name ,len(name) as 'len'
from emp
where len (name) >6;
--****************************************************************************************





