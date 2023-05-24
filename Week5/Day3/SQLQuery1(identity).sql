create database week5day3;

create table demo(rollno int primary key identity(1000,1),name varchar(20))

insert into demo(name) values('prerit')
insert into demo(name) values('abc')

select * from temp1

create table demo2(empid int primary key identity(1000,1) not null,empname varchar(20),locations varchar(20),joiningdate date,salary bigint not null);

create table temp1(gender varchar(5) check (gender in('male','female','other')));
insert into temp1 values('ss');

select isnull(100,null);
print isnull(null,100);
print isnull(null,null);

select coalesce(null,null,100,1001,10000)

create table temp2(fname varchar(20),lastname varchar(20),intials varchar(10))

insert into temp2 values('prerit','khandelwal','mr')
select * from temp2
select top 5 * from temp2; 
select top 5 fname from temp2; 
select top 20 percent * from temp2; 

select * into temp3 from temp2
select fname into onlyname from temp2
select * from onlyname 