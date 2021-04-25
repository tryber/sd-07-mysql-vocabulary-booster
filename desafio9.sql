SELECT
CONCAT(EMPLOYEES.FirstName, ' ', EMPLOYEES.LastName) AS 'Nome completo',
COUNT(ORDERS.OrderID) AS 'Total de pedidos'
FROM
w3schools.employees AS EMPLOYEES
INNER JOIN
w3schools.orders AS ORDERS ON EMPLOYEES.EmployeeID = ORDERS.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
