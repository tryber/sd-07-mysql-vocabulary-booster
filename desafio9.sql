SELECT CONCAT(employees.firstName, ' ', employees.lastName) AS 'Nome completo',
COUNT(orders.OrderID) AS 'Total de pedidos'
FROM w3schools.employees AS employees
INNER JOIN w3schools.orders AS orders
ON employees.EmployeeID = orders.EmployeeID
GROUP BY employees.EmployeeID
ORDER BY `Total de pedidos`;
