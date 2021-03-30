SELECT CONCAT(FirstName, ' ', LastName) AS "Nome completo",
COUNT(o.EmployeeID) AS "Total de pedidos"
FROM w3schools.employees e
INNER JOIN w3schools.orders o
ON e.EmployeeID = o.EmployeeID
GROUP BY e.EmployeeID
ORDER BY 2;
