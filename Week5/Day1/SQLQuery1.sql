create table A(rollno int,name varchar(30),job varchar (30));
create table B(rollno int,name varchar(30),job varchar (30));
create table C(id int,lname varchar(30),description varchar (30));

insert into A values(1,'xyz','pl'),(2,'abc','tl'),(3,'def','hr');
insert into B values(1,'xyz','pl'),(4,'rst','pm'),(5,'qr','tl');
insert into C values(1,'xyz','pl'),(4,'rst','pm'),(5,'qr','tl');
select * from A;
select * from B;
select * from C;

select * from A 
UNION
select * from C ;

select * from A 
UNION ALL
select * from B ;

select * from A 
intersect
select * from B ;