SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS "Nome completo",
COUNT(customers.customerID) AS "Total de pedidos"
FROM customers
JOIN orders
ON orders.customerID = customers.customerID
JOIN employees
ON orders.EmployeeID = employees.EmployeeID
GROUP BY employees.EmployeeID
ORDER BY `Total de pedidos`;
