/*1.Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.*/
select first_name from worker as worker_name
/*2.Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.*/
select upper(first_name) from worker
/*3.Write an SQL query to fetch unique values of DEPARTMENT from Worker table.*/
select distinct department from worker;
/*4.Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.*/
select substring( first_name, 1, 3 ) from worker;
/*5.Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.*/
SELECT CHARINDEX('a', first_name) from worker;
/*6.Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.*/
select rtrim(first_name) from worker;
/*7.Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.*/
select ltrim(first_name) from worker
/*8.Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.*/
select distinct len(department) from worker;
/*9.Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.*/
select replace(first_name,'a','A') from worker
/*10.Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.*/
select concat(first_name,' ',last_name)from worker as complete_name
/*11.Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.*/
select * from worker order by first_name asc;
/*12.Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.*/
select * from worker order by first_name asc and order by department desc
/*13.Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.*/
select * from worker where first_name='vipul' or first_name ='satish';
/*14.Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.*/
select * from worker except select first_name='vipul' and first_name='satish'
/*15.Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.*/
select * from worker where department='admin';
/*16.Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.*/
select * from worker where first_name like'a';
/*17.Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.*/
select * from worker where first_name like '%a'
/*18.Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.*/
select * from worker where first_name like '_____%h' 
/*19.Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.*/
select * from worker where SALARY between 100000 and 500000
/*20.Write an SQL query to print details of the Workers who have joined in Feb’2014.*/
select * from worker where year(joining_date) =2014 and month(joining_date)=2
/*21.Write an SQL query to fetch the count of employees working in the department ‘Admin’.*/
select count(*) from worker where department='admin'
/*22.Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.*/
SELECT first_name + ' ' + last_name as complete_name  from worker where salary between 50000 and 100000;
/*23.Write an SQL query to fetch the no. of workers for each department in the descending order.*/
select department, count(*) from worker group by department order by department desc;
/*24.Write an SQL query to print details of the Workers who are also Managers.*/
select manager, AFFECTED_FROM, count() from title group by WORKER_TITLE, AFFECTED_FROM having count()>1;
/*25.select * from worker a inner join title b on a.worker_id = b.worker_ref_id and b.worker_title in('manager');*/

select * from worker
select * from worker where worker_id%2=0;