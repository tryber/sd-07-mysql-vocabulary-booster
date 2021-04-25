SELECT CONCAT(emp.firstname, ' ',emp.lastname) AS 'Nome completo',
COUNT(od.employeeid) AS 'Total de pedidos'
FROM w3schools.employees AS emp
INNER JOIN w3schools.orders AS od ON od.employeeid = emp.employeeid
GROUP BY `Nome completo`
ORDER BY `Total de pedidos`
