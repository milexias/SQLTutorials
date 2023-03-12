/*
Temp Table
*/

-- Possibilita inserir dados temporarios em uma table já existente
-- facilita pois você cria uma temp table e os dados ficam guardados nela para facilitar a execução
-- não precisa ficar sempre inserindo os comandos porque ela guarda os dados na temp table
CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES (
'1001', 'HR', '45000'
)

INSERT INTO #temp_Employee
SELECT *
FROM EmployeeSalary

-- pra dropar uma possivel table já existente inser comando drop table if, 
-- sempre vai executar sem erros 

DROP TABLE IF EXISTS #temp_Employee2
CREATE TABLE #temp_Employee2 (
JobTitle varchar(50),
EmployeePerJob int,
AvgAge int,
AvgSalary int
)

INSERT INTO #temp_Employee2 
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM EmployeeDemographics emp
JOIN EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #temp_Employee2

