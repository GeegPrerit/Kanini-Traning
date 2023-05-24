create table Employee (Empid	       int	  					primary key,
Empname	       varchar(20)	,
Designation	    varchar(20)	,
Dateofjoin	    date	,
Salary	           int);		

create table Project (Projectno	int   primary key,
Projectname	   varchar(20),
Duration	      int,
Budget	         int);

create table EMP_PROJ(Empid  int  references employee(Empid),
Projectno  int     references project(projectno));

insert into Employee values(1001,'Jane','Senior Programmer','2009-04-06',100000);

insert into Employee values(1002,'Jenny','Junior Programmer','2010-08-13',75000); 

insert into Employee values(1003,'John','Professor','2012-09-16',80000); 

insert into Employee values(1004,'Jasper','Associate Professor','2013-11-02',60000);

insert into Employee values(1005,'Jansi','Assistant Professor','2013-09-16',60000); 

insert into Project values(401,'Storage Concepts',65,50000); 
insert into Project values(402,'Robotics',55,90000);
insert into Project values(403,'Deep Learning',50,80000); insert into Project values(404,'Machine Learning',69,99000); insert into Project values(405,'Networking',67,89000);


insert into EMP_PROJ values(1001,401); 
insert into EMP_PROJ values(1002,401); 
insert into EMP_PROJ values(1003,401); 
insert into EMP_PROJ values(1004,402); 
insert into EMP_PROJ values(1005,402); 
insert into EMP_PROJ values(1001,402); 
insert into EMP_PROJ values(1002,403); 
insert into EMP_PROJ values(1004,403);
insert into EMP_PROJ values(1005,403); 
insert into EMP_PROJ values(1003,404); 
insert into EMP_PROJ values(1002,404);
insert into EMP_PROJ values(1001,405); 
insert into EMP_PROJ values(1002,405); 
insert into EMP_PROJ values(1003,405); 
insert into EMP_PROJ values(1004,405); 

select * from Employee;
select * from project;
select * from EMP_PROJ;


select empname,datediff(year, dateofjoin,getdate()) as year from employee;

/*1.	DISPLAY THE PROJECT DETAILS OF PROJECT DONE BY JOHN */
select * from project where projectno in (select projectno from EMP_PROJ where empid in(select empid from employee where empname='john'));

/*2.	DISPLAY THE PROJECT NAME AND DURATION OF PROJECTS DONE BY JUNIOR PROGRAMMER*/
select Projectname, Duration from Project where Projectno in (select Projectno from EMP_PROJ where Empid in (select Empid from Employee where Designation = 'Junior Programmer'));

/*3.	DISPLAY THE NAME OF EMPLOYEES WHO ARE WORKING UNDER ROBOTICS */
select Empname from employee where Empid in (select Empid from EMP_PROJ where Projectno in(select Projectno from Project where Projectname='Robotics'))

/*4.	DISPLAY THE EMPLOYEE ID OF EMPLOYEES WHO ARE WORKING IN PROJECTS WITH DURATION 50 TO 75*/
select Empid from Employee where Empid in (select Empid from EMP_PROJ where Projectno in (select Projectno from Project where Duration between 50 and 75))

/*5.	DISPLAY THE NAME OF EMPLOYEES WHO ARE WORKING IN PROJECT NO 402 */
select Empname from Employee where Empid in(select Empid from EMP_PROJ where Projectno in(select projectno from project where Projectno=402))

/*6.	DISPLAY THE PROJECT NAME AND DURATION OF THE PROJECTS DONE BY EMPLOYEES WHO HAVE JOINED ON 02-11-2013*/
select projectname, Duration from Project where Projectno in (select Projectno from EMP_PROJ where Empid in (select Empid from Employee where Dateofjoin = '2013-11-02'));


alter table onlineorder drop PK__onlineor__C2FFCF1356388F5E;
alter table emp_proj drop FK__EMP_PROJ__Projec__60A75C0F;

delete from project where projectno=402;


alter table emp_proj add constraint fk_empid FOREiGN key (empid) references employee(empid) on delete cascade;

alter table emp_proj drop fk_empid;
set nocount off
select * from Employee;
select * from project;
select * from EMP_PROJ;

