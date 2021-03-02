SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS 'Nome completo',
  COUNT(*) AS 'Total de pedidos'
FROM orders
  JOIN employees ON employees.EmployeeID = orders.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
