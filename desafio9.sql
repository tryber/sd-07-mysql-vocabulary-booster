SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.orders o
JOIN w3schools.employees e
ON o.EmployeeID = e.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
