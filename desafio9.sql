SELECT CONCAT(t2.FirstName, ' ', t2.LastName) AS 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.orders AS t1
INNER JOIN w3schools.employees AS t2
ON t1.EmployeeID = t2.EmployeeID
GROUP BY t1.EmployeeID
ORDER BY 2;
