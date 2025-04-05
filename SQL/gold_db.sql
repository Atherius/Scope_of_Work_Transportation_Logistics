use AdventureWorks2022

select*from HumanResources.Employee
select*from HumanResources.EmployeeDepartmentHistory
select*from HumanResources.EmployeePayHistory
select*from Person.Person
--BusinessEntityID
select*from HumanResources.Department
--DepartmentID
--Find the first middle and last name of emp as full name 
--along with their sal whode sal is greater then the avg of their sal

select Full_Name,Salary,Avg_Salary from
(
select CONCAT_WS(' ',p.FirstName,p.MiddleName,p.LastName)as Full_Name,
h.Rate as Salary,
avg(h.Rate) over(partition by h.BusinessEntityID)as Avg_Salary
from Person.Person p
join HumanResources.EmployeePayHistory h
on p.BusinessEntityID=h.BusinessEntityID
)as dada
where Salary>Avg_Salary

create view loni as
select CONCAT_WS(' ',p.FirstName,p.MiddleName,p.LastName)as Full_Name,
h.Rate as Salary,
avg(h.Rate) over(partition by h.BusinessEntityID)as Avg_Salary
from Person.Person p
join HumanResources.EmployeePayHistory h
on p.BusinessEntityID=h.BusinessEntityID

select *from loni where Salary>Avg_Salary
