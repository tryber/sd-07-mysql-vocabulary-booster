SELECT
CONCAT(emp.FirstName, ' ',emp.LastName) AS `Nome completo`
FROM w3schools.employees AS emp;

SELECT
cus.ContactName AS `Nome completo`
FROM w3schools.customers AS cus;

SELECT
cus.ContactName AS `Nome completo`
FROM w3schools.orders AS ord
INNER JOIN w3schools.customers AS cus
ON ord.CustomerID = cus.CustomerID
INNER JOIN w3schools.employees AS emp
ON cus.ContactName = CONCAT(emp.FirstName, ' ', emp.LastName);
