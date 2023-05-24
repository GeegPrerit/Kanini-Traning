/*1.	DISPLAY THE PROJECT DETAILS OF PROJECT DONE BY JOHN */
select p. * from project p join EMP_PROJ on p.Projectno=EMP_PROJ.Projectno join employee on Employee.Empid=EMP_PROJ.Empid where  employee.Empname='john'

/*2.	DISPLAY THE PROJECT NAME AND DURATION OF PROJECTS DONE BY JUNIOR PROGRAMMER*/
select p.Projectname,p.Duration from Project p join EMP_PROJ on p.Projectno=EMP_PROJ.Projectno join Employee on Employee.Empid=EMP_PROJ.Empid where Employee.Designation='professor';


select * from employee
select * from EMP_PROJ
select * from Project