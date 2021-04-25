SELECT CONCAT(emplss.FirstName, ' ', emplss.LastName) AS 'Nome completo',
COUNT(orde.EmployeeID) AS 'Total de pedidos'
FROM w3schools.orders AS orde
INNER JOIN w3schools.employees AS emplss
ON emplss.EmployeeID = orde.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
