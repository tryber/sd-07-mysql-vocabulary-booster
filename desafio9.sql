SELECT
CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
COUNT(o.OrderID) AS 'Total de pedidos'
FROM w3schools.employees e

LEFT JOIN w3schools.orders o
ON e.EmployeeID = o.EmployeeID

GROUP BY o.EmployeeID

HAVING `Total de pedidos` > 0

ORDER BY `Total de pedidos`;
