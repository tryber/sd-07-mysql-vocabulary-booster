SELECT t1.FirstName AS "Nome completo", Count(t2.OrderID) AS "Total de pedidos"
FROM w3schoools.Employees AS t1
INNER JOIN w3schoools.Orders AS t2
ON t1.EmployeeID = t2.EmployeeID
GROUP BY "Nome completo"
ORDER BY "Total de pedidos" DESC;
