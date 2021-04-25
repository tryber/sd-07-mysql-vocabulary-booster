SELECT CONCAT(
    table_employees.FirstName,
    " ",
    table_employees.LastName
  ) AS `Nome completo`,
  COUNT(*) AS `Total de pedidos`
FROM w3schools.orders AS table_orders
  INNER JOIN w3schools.employees AS table_employees ON table_orders.EmployeeID = table_employees.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`;
