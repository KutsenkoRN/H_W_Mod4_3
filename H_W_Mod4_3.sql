USE AdventureWorksLT2019

SELECT *
FROM Sales.Customer

SELECT *
FROM Sales.Store
ORDER BY Sales.Store.Name 

SELECT TOP 10 * 
FROM HumanResources.Employee 
WHERE BirthDate > '1989-09-28'

SELECT NationalIDNumber, LoginID, JobTitle
FROM HumanResources.Employee
WHERE LoginID LIKE '%0'
ORDER BY JobTitle DESC

SELECT *
FROM Person.Person
WHERE ModifiedDate > '2007-12-31' AND ModifiedDate < '2009-01-01' AND MiddleName IS NOT NULL AND Title IS NULL

SELECT DISTINCT
d.Name
FROM HumanResources.Department d
JOIN HumanResources.EmployeeDepartmentHistory e ON d.DepartmentID = e.DepartmentID WHERE EndDate IS NULL

SELECT Sum(CommissionPct) as ComissionPctSum
FROM Sales.SalesPerson 
GROUP BY TerritoryID HAVING Sum(CommissionPct) > 0

SELECT *
FROM HumanResources.Employee
WHERE VacationHours =
(
SELECT MAX(VacationHours)
FROM HumanResources.Employee
)

SELECT *
FROM HumanResources.Employee
WHERE JobTitle = 'Sales Representative' OR JobTitle = 'Network Administrator' OR JobTitle = 'Network Manager' 

SELECT *
FROM HumanResources.Employee e
LEFT JOIN Purchasing.PurchaseOrderHeader p ON e.BusinessEntityID = p.EmployeeID
