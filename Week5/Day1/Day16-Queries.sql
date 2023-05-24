create table students(Rollno int,Name varchar(20),DOB date,Mark1 int,Mark2 int,Mark3 int);


insert into students values(101,'ALINA','2000-01-07',100,98,89); 
insert into students values(102,'ALISHA','2002-07-07',80,68,79); 
insert into students values(103,'BELLA','2001-08-11',100,98,99); 
insert into students values(104,'CHARLIE','2004-12-30',80,88,94);
insert into students values(105,'DAVIS','2003-04-12',78,98,88);

select * from students

/*Add a column Total*/
alter table students add total int;
/*For student with rollno=104, update the mark1 with 98*/
UPDATE students SET mark1 = 98 WHERE rollno=104;
/*calculate the total for all students by modifiying that total field*/
update students set total=(mark1+mark2+mark3);
/*DISPLAY THE ROLL NUMBERS OF STUDENTS WHOSE MARK1 IS GREATER THAN 80*/
select rollno from students where mark1>80;
/*DISPLAY THE NAMES OF STUDENTS WHOSE MARK1 IS GREATER THAN 60 AND MARK1 IS LESSER THAN OR EQUAL TO 80*/
select name from students where mark1>60 and mark1<=80;
/*UPDATE NAME OF A STUDENT WHOSE ROLL NUMBER IS 105*/
update students set name='prerit' where rollno =105;
/*DISPLAY THE NAMES AND ROLL NUMBER OF STUDENTS WHO SCORED 100 IN ANY 1 SUBJECT*/
select name,rollno from students where mark1>100 or mark2>100 or mark3>100;
/*DISPLAY THE NAME OF STUDENTS STARTING WITH A*/
select name from students where name like 'a%';
/*DISPLAY THE NAME OF STUDENTS ENDING WITH A*/
select name from students where name like '%a';
/*DISPLAY THE MINIMUM MARK IN MARK1*/
select min(mark1) as maximum from students;
/*DISPLAY THE MAXIMUM MARK IN MARK1*/
select max(mark1) as maximum from students;
/*DISPLAY THE AVERAGE OF MARK1 */
select avg(mark1) from students;
/*DISPLAY THE SUM OF MARK1*/
select sum(mark1) from students 
/*DISPLAY TOTAL NUMBER OF RECORDS*/
select count(*) from students;
/*DISPLAY THE RECORDS OF STUDENT NAME IN ALPHABETICAL ORDER*/
select * from students order by name;
/*DISPLAY THE RECORDS OF STUDENT NAME IN DESCENDING ORDER*/
select * from students order by name desc;
/*DELETE THE RECORD OF A STUDENT WITH ROLLNO 105*/
delete from students where rollno=105;


update students set mark1+=2;
select * from students;


select * from students where rollno in(select rollno from students where rollno>=102);

select * from students where exists (select rollno from students where name='alina');
