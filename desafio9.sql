SELECT CONCAT(employees.FirstName, " ", employees.LastName) AS "Nome completo",
COUNT(orders.OrderID) AS "Total de pedidos"
FROM w3schools.orders AS orders
INNER JOIN w3schools.employees AS employees
ON employees.EmployeeID = orders.EmployeeID
GROUP BY CONCAT(employees.FirstName, " ", employees.LastName)
ORDER BY COUNT(orders.OrderID) ASC;
