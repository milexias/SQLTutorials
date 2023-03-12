/*
Where Statement
=, <>, <, >, And, OR, Like, Null, In
*/

-- Selecionar onde é igual a:
SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim'

-- Selecionar onde não é igual a: 
SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'

-- Maior ou menor que:
SELECT *
FROM EmployeeDemographics
WHERE Age > 30

SELECT *
FROM EmployeeDemographics
WHERE Age >= 30

SELECT *
FROM EmployeeDemographics
WHERE Age <= 30

-- Adicionando variaveis:
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male'

SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male'

-- Filtrando por letras ou pedaços de palavras:
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%ott%'

-- NULL
SELECT *
FROM EmployeeDemographics
WHERE LastName is NULL

SELECT *
FROM EmployeeDemographics
WHERE LastName is NOT NULL

-- Multiplos Statements
SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael', 'Kevin')


