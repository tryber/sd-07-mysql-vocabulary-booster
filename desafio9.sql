SELECT CONCAT(EMP.FirstName, " ", EMP.LastName) AS "Nome completo",
COUNT(ORD.EmployeeID) AS "Total de pedidos"
FROM w3schools.employees AS EMP
INNER JOIN w3schools.orders AS ORD
ON EMP.EmployeeID = ORD.EmployeeID
GROUP BY ORD.EmployeeID
ORDER BY COUNT(ORD.EmployeeID) ASC;
