create database wee5day2;
create table employee(empis int,empname varchar(20));

alter table employee add age int

alter table employee add check(age>25 and age<50)
select * from employee

insert into employee values(1001,'prerit',49) 
insert into employee values(1002,'shaktimaan',26) 

create table emp(empid int,empname varchar(20),locations varchar(20))

alter table emp add default 'banglour' for locations
insert into emp(empid,empname) values(1001,'prerit');
select * from emp;

drop table emp;
create table emp(empis int unique,empname varchar(20));
insert into emp values(1001,'prerit') 
insert into emp values(1001,'prerit') 
insert into emp values(null,'prerit') 

alter table emp alter column empname varchar(20) not null;
delete from emp where empis=null;


CREATE TABLE Customer (
          order_id INT,
          product_id INT,
          amount INT,
          PRIMARY KEY (order_id, product_id,amount)
     ) ;
	select * from Customer
insert into customer values(101,2002,1000) 
insert into customer values(101,2002,1000) 