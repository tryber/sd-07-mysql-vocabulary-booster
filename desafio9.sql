SELECT
concat(employees.FirstName, " ", employees.LastName) AS'Nome completo',
COUNT(orders.EmployeeID) AS 'Total de pedidos'
FROM w3schools.orders
INNER JOIN employees ON orders.EmployeeID = employees.EmployeeID
GROUP BY 1
ORDER BY 2 ASC;
