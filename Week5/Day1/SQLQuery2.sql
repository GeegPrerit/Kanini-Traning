create table customer (cid int primary key,cname varchar(30),caddress varchar(30),cmobile bigint);

create table product (pid int primary key ,pname varchar(30),price int,quantity int);

create table onlineorder (oid int primary key,cid int references customer(cid),pid int references product(pid));

insert into customer values(1,'abc','diuhagifgffyagyg',1234567890);
insert into customer values(2,'def','diuhagifgffyagyg',1234567890);
insert into customer values(3,'ghi','diuhagifgffyagyg',1234567890);
insert into customer values(4,'jkl','diuhagifgffyagyg',1234567890);
insert into customer values(5,'mno','diuhagifgffyagyg',1234567890);
select * from customer;


create table customer(cid int primary key,
                      cname varchar(30),
					  caddress varchar(30),
					  cmobile bigint)
insert into customer values(1,'Ashok','Andra',7810808191)
insert into customer values(2,'Abinav','Andra',7810808101)
insert into customer values(3,'Dhyan','KGF',7810809191)
insert into customer values(4,'Chhagan','Maharastra',7710808191)
insert into customer values(5,'Safal','Nagpur',7810908191)
select * from customer
create table product(pid int primary key,
                     pname varchar(30),
					 pprice decimal(5,2),
					 pqty int)
insert into product values(901,'Twilight',100.00,20)
insert into product values(902,'Harry Potter',200.00,25)
insert into product values(903,'Twiligh',100.00,30)
insert into product values(904,'Munch',50.00,50)
insert into product values(905,'Dairy Milk',50.00,100)
create table onlineorder(oid int primary key,
                   cid int references customer(cid),
				   pid int references product(pid))
insert into onlineorder values(9001,1,901)
insert into onlineorder values(9002,1,902)
insert into onlineorder values(9003,1,903)
insert into onlineorder values(9004,2,901)
insert into onlineorder values(9005,2,902)
insert into onlineorder values(9006,2,903)
insert into onlineorder values(9007,3,901)
insert into onlineorder values(9008,3,904)
insert into onlineorder values(9009,3,905)
insert into onlineorder values(9010,4,905)
insert into onlineorder values(9011,4,904)
insert into onlineorder values(9012,5,903)
insert into onlineorder values(9013,5,905)

select * from customer
select * from product
select * from onlineorder