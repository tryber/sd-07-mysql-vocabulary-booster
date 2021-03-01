SELECT 
CONCAT(e.FirstName, ' ', e.LastName) "Nome completo",
(SELECT COUNT(*) FROM w3schools.orders WHERE EmployeeID = e.EmployeeID) "Total de pedidos"
FROM w3schools.employees AS e
WHERE (SELECT COUNT(*) FROM w3schools.orders WHERE EmployeeID = e.EmployeeID) <> 0
ORDER BY `Total de pedidos`;
