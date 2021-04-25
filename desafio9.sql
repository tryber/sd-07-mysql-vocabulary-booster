SELECT CONCAT(FirstName, ' ', LastName) AS 'Nome completo', COUNT(*) AS 'Total de pedidos'
FROM w3schools.employees AS E
INNER JOIN w3schools.orders AS O
ON E.EmployeeID = O.EmployeeID
GROUP BY CONCAT(FirstName, ' ', LastName)
ORDER BY COUNT(*);
