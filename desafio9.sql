SELECT
CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
(
SELECT
COUNT(*)
FROM w3schools.orders o
WHERE o.EmployeeID = e.EmployeeID
) AS `Total de pedidos`
FROM w3schools.employees e
HAVING `Total de pedidos` > 0
ORDER BY `Total de pedidos`;
