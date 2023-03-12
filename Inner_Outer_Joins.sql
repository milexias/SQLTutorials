/*
Inner Joins, Full/Left/Right Outer Joins
*/

--Insert into EmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL, 'Holly','Flax', NULL, 'Male'),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')

--Insert into EmployeeSalary VALUES
--(1010, NULL, 47000),
--(NULL, 'Salesman', 43000)

SELECT *
FROM EmployeeDemographics

SELECT *
FROM EmployeeSalary

-- Inner Join, une os dados que são iguais
SELECT *
FROM EmployeeDemographics
Inner Join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Full Outer Join, une todos os dados (independente se há um correspondente)
SELECT *
FROM EmployeeDemographics
Full Outer Join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Right Outer Join, une todos os dados da coluna da direita do = (neste caso, salary)
SELECT *
FROM EmployeeDemographics
Right Outer Join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

	-- Left Outer Join, une todos os dados da coluna da esquerda do = (neste caso, demographics)
SELECT *
FROM EmployeeDemographics
Left Outer Join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Exemplo de uso prático, filtrando colunas que desejamos das duas bases
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics
Inner Join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


-- Exemplo de uso prático, filtrando colunas que desejamos das duas bases utilizando base right or left
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics
Right Outer Join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics
Left Outer Join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Unindo os dados para classificar o maior salario , excete michael
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM EmployeeDemographics
Inner Join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary DESC

-- Unindo os dados para ver a media salarial de um cargo especifico
SELECT JobTitle, AVG(Salary) Avg_Salary
FROM EmployeeDemographics
Inner Join EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle 