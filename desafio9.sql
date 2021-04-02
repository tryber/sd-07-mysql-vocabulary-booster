SELECT
CONCAT(emp.FirstName, ' ', emp.LastName) 'Nome completo',
COUNT(*) 'Total de pedidos'
FROM w3schools.orders
LEFT JOIN w3schools.employees emp
ON orders.EmployeeID = emp.EmployeeID
INNER JOIN w3schools.customers ctms
ON ctms.CustomerID = orders.CustomerID
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos`;
