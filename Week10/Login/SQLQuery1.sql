create database users;
use users
create table registration(userId varchar(30),pass varchar(30),job_profile varchar(30));
insert into registration values('prerit.web@gmil.com','abc@123','associate software developer');

create table employee(employeeId int,emp_name varchar(30),age varchar(30));
alter table employee add primary key (employeeId);
ALTER TABLE employee
ALTER COLUMN employeeId INT
ADD CONSTRAINT Id PRIMARY KEY (employeeId);

select * from employee
select * from registration;

alter table employee add primary key (employeeId)
alter table employee alter column employeeId int not null