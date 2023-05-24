create table employee2(empid int,empname varchar(30),roles varchar(30));
insert into employee2 values(1,'A','HR');
insert into employee2 values(2,'B','PL');
insert into employee2 values(3,'C','PM');
insert into employee2 values(4,'D','M');

SELECT empid, empname,
CASE
    WHEN roles = 'HR' THEN 'human resource managment'
    WHEN roles = 'PM' THEN 'project manager'
    ELSE 'Professer'
END 
FROM employee2;

declare @empid int 
set @empid=101
print @empid