/*
Aliasing (pseudônimo em pt, dar um nome a)
*/ 

SELECT FirstName + ' ' + LastName AS FullName
FROM EmployeeDemographics

SELECT AVG(Age) AS AVG_Age
FROM EmployeeDemographics

SELECT Demo.EmployeeID, Demo.FirstName, Sal.Salary
FROM EmployeeDemographics Demo
JOIN EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID

/*
Partition By
*/ 

SELECT *
FROM EmployeeDemographics

SELECT * 
FROM EmployeeSalary

SELECT FirstName, LastName,	Gender, Salary
, COUNT(Gender) OVER(PARTITION BY Gender) as TotalGender
FROM EmployeeDemographics dem
JOIN EmployeeSalary sal
	ON dem.EmployeeID = sal.EmployeeID


