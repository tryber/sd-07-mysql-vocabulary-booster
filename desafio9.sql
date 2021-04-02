SELECT
CONCAT(emp.FirstName, ' ', emp.LastName) 'Nome completo',
order_d.Quantity 'Total de pedidos'
FROM w3schools.orders
LEFT JOIN w3schools.employees emp
ON orders.EmployeeID = emp.EmployeeID
INNER JOIN w3schools.order_details order_d
ON order_d.OrderID = orders.OrderID
GROUP BY orders.EmployeeID
ORDER BY Quantity;
