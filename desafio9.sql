SELECT 
concat(employees.FirstName, ' ', employees.LastName) AS 'Nome completo',
count(*) AS 'Total de pedidos'
FROM w3schools.employees AS employees
INNER JOIN w3schools.orders AS orders
ON employees.EmployeeID = orders.EmployeeID
GROUP BY employees.EmployeeID
ORDER BY 2;
