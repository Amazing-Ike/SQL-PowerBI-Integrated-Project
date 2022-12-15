
Select CONCAT(FirstName, ' ', MiddleName, ' ', LastName) as Full_Name,HRE.JobTitle, HRE.Gender, hre.HireDate, 
HRE.MaritalStatus, hre.OrganizationLevel,
hre.SickLeaveHours, hre.VacationHours, hre.BirthDate, DATEPART(YEAR,HRE.BirthDate) AS Birth_Year, 
DATEDIFF(YEAR,HRE.BirthDate,GETDATE()) Age,
DATEPART(YEAR,HireDate) Year_Hired, DATEDIFF(YEAR,HRE.HireDate,GETDATE()) Year_Service
from HumanResources.Employee HRE
INNER JOIN Person.Person PP
on PP.BusinessEntityID = HRE.BusinessEntityID



--SELECT * FROM Person.Person

