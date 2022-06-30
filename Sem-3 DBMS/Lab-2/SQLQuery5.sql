--1. Display all the employees whose name starts with �m� and 4 th character is �h�.
Select * from Employee where EName like 'm__h%';
--2. Find the value of 3 raised to 5. Label the column as output.
select POWER(3,5) as Pow;
--3. Write a query to subtract 20 days from the current date.

SELECT GETDATE() 'Today', 
           DATEADD(day,-20,GETDATE()) 'Today - 20 Days';
--4. Write a query to display name of employees whose name starts with �j� and contains �n� in their name.
Select EName from Employee where EName like 'J%' and EName like '%n%';
--5. Display 2nd to 9th character of the given string �SQL Programming�.
select substring('SQL Programming',2,8);
--6. Display name of the employees whose city name ends with �ney� &contains six characters.
select EName from  Employee where City like '___ney';
--7. Write a query to convert value 15 to string.
select cast(15 as varchar);
select  convert(varchar,15);
--8. Add department column with varchar (20) to Employee table.
alter table Employee add Department varchar(20);
--9. Set the value of department to Marketing who belongs to London city.
update Employee set Department = 'Marketing' where City = 'London'; 
--10. Display all the employees whose name ends with either �n� or �y�.
Select EName from Employee where EName like '%n' or EName like '%y';
--11. Find smallest integer value that is greater than or equal to 63.1, 63.8 and -63.2.
select ceiling(63.1),ceiling(63.8),ceiling(-63.2); 
--12. Display all employees whose joining date is not available.
select * from Employee where JoiningDate is Null;
--13. Display name of the employees in capital letters and city in small letters.
Select upper(Ename),lower(City) from Employee;
--14. Change the data type of Ename from varchar (30) to char (30).
alter table Employee 
alter column EName char(30); 
--15. Display city wise maximum salary.
Select City,max(Salary) from Employee group by city;
--16. Produce output like <Ename> works at <city> and earns <salary> (In single column).
select Concat(rtrim(EName), ' works at', City, ' and earns',Salary) from Employee;
--17. Find total number of employees whose salary is more than 5000.
select count(EName) from Employee where salary >5000;
--18. Write a query to display first 4 & last 3 characters of all the employees.
select left(EName,4),Right(rtrim(EName),3) from Employee
--19. List the city having total salaries more than 15000 and employees joined after 1st January, 2014.
select City,sum(Salary) 
from Employee
where JoiningDate>'01-JAN-14'
group by City
having sum(Salary)>15000;
--20. Write a query to replace �u� with �oo� in Ename.
Select REPLACE(EName, 'u', 'oo') from Employee; 
--21. Display city with average salaries and total number of employees belongs to each city.
Select City,AVG(Salary),SUM(EID) from Employee group by City;
--22. Display total salaries paid to female employees.
SELECT SUM(Salary) from Employee where Gender = 'female';
--23. Display name of the employees and their experience in years.
select EName, DATEADD(year,getdate(),-JoiningDate)from Employee;
--24. Remove column department from employee table.
Alter table Employee
drop column Department ;
--25. Update the value of city from syndey to null.
Update Employee set City =null where City ='Sydney';
--26. Retrieve all Employee name, Salary & Joining date.
Select EName,Salary,JoiningDate from Employee;
--27. Find out combine length of Ename & Gender.
Select len(EName)+len(Gender) from Employee;
--28. Find the difference between highest & lowest salary.
Select max(Salary) - min(Salary) from Employee;
--29. Rename a column from Ename to FirstName.
sp_rename 'Employee.EName','FirstName','Column';
--30. Rename a table from Employee to EmpMaster.
sp_rename 'Employee','EmployeeMaster';
--select , update , insert ,  delete

