SELECT CONCAT(E.FirstName, ' ', E.LastName) `Nome completo`,
COUNT(O.OrderID) `Total de pedidos`
FROM w3schools.employees E, w3schools.orders O
WHERE E.EmployeeID=O.EmployeeID 
GROUP BY O.EmployeeID
ORDER BY `Total de pedidos`;
