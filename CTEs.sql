/* 
CTEs
*/

-- Semelhante a temp table porém tem que executar completa todas as vezes
WITH CTE_Employee as 
(SELECT FirstName, LastName, Gender, Salary
, COUNT(gender) OVER (PARTITION BY Gender) as TotalGender
, AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM EmployeeDemographics emp
JOIN EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
SELECT *
FROM CTE_Employee

