SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS 'Nome completo',
COUNT(orders.EmployeeID) AS 'Total de pedidos'
FROM w3schools.orders AS orders
INNER JOIN w3schools.employees AS employees ON employees.EmployeeID = orders.EmployeeID
GROUP BY orders.EmployeeID
HAVING COUNT(orders.EmployeeID) > 1
ORDER BY COUNT(orders.EmployeeID);
