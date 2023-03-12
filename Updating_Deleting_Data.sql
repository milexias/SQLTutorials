/*
Updating, Deleting data 
*/

SELECT *
FROM EmployeeDemographics

-- atualizando infos no database
UPDATE EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'Holly' AND LastName = 'Flax'

UPDATE EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'
WHERE EmployeeID = 1012

-- antes de deletar um dado (irreversivel), verificar o mesmo
SELECT *
FROM EmployeeDemographics
WHERE EmployeeID  = 1005

DELETE
FROM EmployeeDemographics
WHERE EmployeeID  = 1005


