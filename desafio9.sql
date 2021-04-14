SELECT CONCAT(emplo.FirstName,' ', emplo.LastName) AS 'Nome Completo',
COUNT(orders.OrderID) AS 'Total de pedidos'
FROM w3schools.employees AS emplo
INNER JOIN w3schools.orders AS orders ON emplo.EmployeeID = orders.EmployeeID
GROUP BY emplo.EmployeeID
ORDER BY `Total de pedidos`;
