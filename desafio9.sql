SELECT CONCAT(t2.FirstName,' ',t2.LastName) as `Nome completo`,
count(t2.EmployeeID) as `Total de pedidos`
FROM orders as t1
INNER JOIN employees as t2
on t1.EmployeeID = t2.EmployeeID
GROUP BY t2.EmployeeID
ORDER BY count(t2.EmployeeID)
