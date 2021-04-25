SELECT
  CONCAT(employeer.FirstName, ' ', employeer.LastName) as `Nome completo`,
  COUNT(ord.OrderID) AS `Total de pedidos`
FROM
  w3schools.orders AS ord
  INNER JOIN w3schools.employees as employeer
    ON ord.EmployeeID = employeer.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
