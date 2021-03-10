SELECT CONCAT(e.FirstName, ' ', e.LastName) AS `Nome completo`,
COUNT(ord.OrderID) AS `Total de pedidos`
FROM employees AS e
INNER JOIN orders AS ord
ON e.EmployeeID = ord.EmployeeID
GROUP BY ord.EmployeeID
ORDER BY `Total de pedidos`;
