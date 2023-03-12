/*
Group By, Order By,
*/

SELECT * 
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC

SELECT * 
FROM EmployeeDemographics
ORDER BY 4 DESC, 5 DESC

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY Gender DESC

