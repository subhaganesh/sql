use demo;
--1
create function calculator (@x as int,@y as int,@o as char(1))
returns int
as
begin 
       declare @r as int;
	    
		if @o='+'
		    set @r=@x+@y;
		else if @o='-'
		    set @r= @x-@y;
		else if @o='*'
		    set @r= @x*@y;	
		else if @o='/'
		    set @r= @x/@y;
		else if @o='%'
		    set @r= @x%@y;
		else
		    set @r=0;

		return @r;
end;	

select dbo.calculator(100,10,'+')
select dbo.calculator(100,10,'-')		
select dbo.calculator(100,10,'/')			     
select dbo.calculator(100,10,'%')
select dbo.calculator(100,10,'*')
select dbo.calculator(100,10,'#');

--**************************************************************************
--2
create function emailid_1()
returns table
as
        return (
		         select  concat (left(name,10),
                      right(name,1),
					  left (eid, 3),
					  ('@rcg.com')) as 'official id'   from emp);
		
select * from dbo.emailid_1();
drop function emailid_1;
--***********************************************************************************************************
--3
create function details(@x as varchar (10))
returns table
as
        return (
		        select e.eid, e.name, e1.designation, e1.department, e1.salary
                from emp as e 
                inner join empsale as e1
                on e.eid=e1.eid
				where department= @x);

select * from dbo.details('admin');

drop function details;
--***********************************************************************************
--4
create function details_1(@z as varchar(3))
returns table
as
        return (
		        select  e.name,e1.department, e1.designation,e.city,e.dob 
                from emp as e 
                inner join empsale as e1
                on e.eid=e1.eid
				where month(dob)=@z);

select * from dbo.details_1(4);

drop function details_1;
--****************************************************************************************
--5
create function details_2(@z as varchar(3))
returns table
as
        return (
		        select  e.name,e1.department,e1.doj
                from emp as e 
                inner join empsale as e1
                on e.eid=e1.eid
				where datediff(yy,doj,getdate())=@z);

select * from dbo.details_2(10);

drop function details_2;
--*****************************************************************************************