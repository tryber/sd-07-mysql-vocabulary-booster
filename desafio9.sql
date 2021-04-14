SELECT CONCAT(e.FirstName,' ',e.lastName) AS "Nome completo", count(o.EmployeeID) AS "Total de pedidos"
FROM w3schools.employees e
inner join w3schools.orders o ON o.EmployeeID = e.EmployeeID 
GROUP BY `Nome Completo`
ORDER BY `Total de pedidos`
