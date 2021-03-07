SELECT
CONCAT(w3schools.employees.FirstName, ' ', w3schools.employees.LastName) AS 'Nome completo',
COUNT(w3schools.employees.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees
INNER JOIN w3schools.orders
ON w3schools.orders.EmployeeID = w3schools.employees.EmployeeID
GROUP BY w3schools.employees.EmployeeID
ORDER BY 2; 