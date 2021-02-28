SELECT CONCAT(EMP.FirstName, ' ', EMP.LastName) "Nome completo",
COUNT(ORD.EmployeeID) "Total de pedidos"
FROM w3schools.employees EMP
INNER JOIN w3schools.orders ORD
ON ORD.EmployeeID = EMP.EmployeeID
GROUP BY ORD.EmployeeID
ORDER BY COUNT(ORD.EmployeeID);
