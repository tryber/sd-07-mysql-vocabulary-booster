SELECT CONCAT(FUNC.FirstName, ' ', FUNC.LastName) AS 'Nome completo',
COUNT(FUNC.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees as FUNC
INNER JOIN w3schools.orders AS PEDIDO
ON PEDIDO.EmployeeID = FUNC.EmployeeID
GROUP BY PEDIDO.EmployeeID
ORDER by COUNT(FUNC.EmployeeID);


