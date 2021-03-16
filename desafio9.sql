SELECT CONCAT(wemp.FirstName, ' ', wemp.LastName) AS 'Nome completo', COUNT(word.OrderID) AS 'Total de pedidos'
FROM w3schools.employees wemp
INNER JOIN w3schools.orders word ON wemp.EmployeeID = word.EmployeeID
GROUP BY wemp.EmployeeID
ORDER BY `Total de pedidos`;
