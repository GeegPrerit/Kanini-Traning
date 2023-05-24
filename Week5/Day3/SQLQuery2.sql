create database worker;

CREATE TABLE Worker (
	WORKER_ID INT NOT NULL PRIMARY KEY identity(1,1) ,
	FIRST_NAME varCHAR(25),
	LAST_NAME varCHAR(25),
	SALARY INT,
	JOINING_DATE date,
	DEPARTMENT varCHAR(25)
);

INSERT INTO Worker 
	(FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		('Monika', 'Arora', 100000, '07-03-2023', 'HR'),
		('Niharika', 'Verma', 80000, '07-03-2011', 'Admin'),
		('Vishal', 'Singhal', 300000, '02-02-2014', 'HR'),
		('Amitabh', 'Singh', 500000, '08-03-2015', 'Admin'),
		('Vivek', 'Bhati', 500000,'02-05-2011', 'Admin'),
		('Vipul', 'Diwan', 200000,'09-07-2012', 'Account'),
		('Satish', 'Kumar', 75000,'05-06-2010', 'Account'),
		('Geetika', 'Chauhan', 90000,'05-09-2009', 'Admin');
drop table bonus
		CREATE TABLE Bonus (
	WORKER_REF_ID int,
	BONUS_AMOUNT int,
	BONUS_DATE date,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID,BONUS_AMOUNT,BONUS_DATE) VALUES
		(1,5000,'2011-03-21'),
		(2,3000,'2011-04-07'),
		(3,4000,'2009-02-16'),
		(1,4500,'2010-09-13'),
		(2,3500,'2023-11-11');
	CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE varCHAR(25),
	AFFECTED_FROM date,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (1, 'Manager', '2016-02-20'),
 (2, 'Executive', '2016-06-11'),
 (8, 'Executive', '2016-06-11'),
 (5, 'Manager', '2016-06-11'),
 (4, 'Asst. Manager', '2016-06-11'),
 (7, 'Executive', '2016-06-11'),
 (6, 'Lead', '2016-06-11'),
 (3, 'Lead', '2016-06-11');


 
 select * from worker
 select * from bonus
 select * from title