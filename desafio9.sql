SELECT 
CONCAT(emps.FirstName, ' ', emps.LastName) AS `Nome completo`,
COUNT(ord.EmployeeID) AS `Total de pedidos`
FROM w3schools.employees as emps
INNER JOIN w3schools.orders AS ord
ON emps.EmployeeID = ord.EmployeeID
GROUP BY ord.EmployeeID
ORDER BY `Total de pedidos`;
