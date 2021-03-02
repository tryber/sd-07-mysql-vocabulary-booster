SELECT CONCAT(empl.FirstName," ", empl.LastName) AS "Nome completo",
COUNT(ord.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS empl
INNER JOIN w3schools.orders AS ord
ON empl.EmployeeID = ord.EmployeeID
GROUP BY CONCAT(empl.FirstName," ", empl.LastName)
ORDER BY `Total de pedidos`;
