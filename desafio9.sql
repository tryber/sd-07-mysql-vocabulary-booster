SELECT 
CONCAT(E.FirstName, ' ', E.LastName) as `Nome completo`,
COUNT(E.FirstName) as `Total de pedidos`
FROM orders O
INNER JOIN employees E
ON O.EmployeeId = E.EmployeeId
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
