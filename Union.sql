/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [EmployeeID]
      ,[FirstName]
      ,[LastName]
      ,[Age]
      ,[Gender]
  FROM [SQLTutorial].[dbo].[WareHouseEmployeeDemographics]

  SELECT *
  FROM .dbo.WareHouseEmployeeDemographics