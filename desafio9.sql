SELECT 
  CONCAT(EMP.FirstName, ' ', EMP.LastName) AS 'Nome completo',
  COUNT(ORD.EmployeeID) AS 'Total de pedidos'
FROM
  w3schools.employees AS EMP 
INNER JOIN
  w3schools.orders AS ORD
ON
  ORD.EmployeeID = EMP.EmployeeID
GROUP BY
  CONCAT(EMP.FirstName, ' ', EMP.LastName)
ORDER BY
  COUNT(ORD.EmployeeID) ASC;
