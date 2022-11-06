use demo;

select *from emp;
select *from empsale;

select count (eid) as 'num of employees',city
from emp
group by city
order by count (eid) desc;
--------------------------------------------------
--method-1
select *from emp
where email like ('%gmail%' )or email like ('%outlook%');
--method-2
select *from emp
where email not like '%yahoo%';
--------------------------------------------------

select count (eid) as 'num of members',designation,sum (salary) as 'totalcost'
from empsale
group by designation 
order by count (eid) desc;
