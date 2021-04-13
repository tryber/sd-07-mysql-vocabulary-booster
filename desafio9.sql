SELECT CONCAT(employe.FirstName,' ',employe.LastName) AS "Nome completo",
COUNT(*) AS "Total de pedidos" 
FROM w3schools.orders AS order_data
LEFT JOIN w3schools.employees AS employe
ON order_data.EmployeeID = employe.EmployeeID
GROUP BY order_data.EmployeeID
ORDER BY `Total de pedidos`;
