SELECT
CONCAT(emp.FirstName, ' ', emp.LastName) AS 'Nome completo',
COUNT(o.EmployeeID) AS 'Total de pedidos'
FROM w3schools.orders AS o
INNER JOIN w3schools.employees AS emp ON o.EmployeeID = emp.EmployeeID
GROUP BY CONCAT(emp.FirstName, ' ', emp.LastName)
ORDER BY COUNT(o.EmployeeID);
