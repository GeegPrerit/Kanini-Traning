create table student(roll int primary key,std_name varchar(20),std_address varchar(300));
create table enrolled(roll int references student(roll),course_name varchar(20));

insert into student values(1001,'prerit','jaipur'),(1002,'shaktimaan','rajasthan'),(1003,'power ranger','pune')
insert into enrolled values(1001,'python'),(1002,'web tech'),(1003,'.net')
insert into student values(1005,'xyz','bihar')
insert into student values(1006,'pqr','jammu')
insert into enrolled values(1004,'python')

select * from student inner join enrolled on student.roll=enrolled.roll
select * from student s left join enrolled on s.roll=enrolled.roll
select * from student s right join enrolled on s.roll=enrolled.roll
select * from student s full join enrolled on s.roll=enrolled.roll



select * from student
select * from enrolled