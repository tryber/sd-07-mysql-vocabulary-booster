SELECT CONCAT(N.FirstName, ' ', N.LastName) AS 'Nome completo',
COUNT(P.OrderID) AS 'Total de pedidos'
FROM w3schools.orders AS P
INNER JOIN w3schools.employees AS N
ON P.EmployeeID = N.EmployeeID
GROUP BY CONCAT(N.FirstName, ' ', N.LastName)
ORDER BY COUNT(P.OrderID);
