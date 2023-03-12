/* 
Select Stetament
*, Top, Distinct, Count, As, Max, Min, Avg
*/

SELECT TOP 5 *
FROM EmployeeDemographics 

SELECT DISTINCT(Gender)
FROM EmployeeDemographics 

SELECT DISTINCT(EmployeeID)
FROM EmployeeDemographics 

SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics 

SELECT MAX(Salary) AS Max_Salary
FROM EmployeeSalary

SELECT MIN(Salary) AS Min_Salary
FROM EmployeeSalary

SELECT AVG(Salary) AS Avg_Salary
FROM EmployeeSalary

