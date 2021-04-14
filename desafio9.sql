SELECT CONCAT(e.firstname, ' ', e.lastname) 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM w3schools.orders o
INNER JOIN w3schools.employees e
ON o.employeeid=e.employeeid
GROUP BY CONCAT(e.firstname, ' ', e.lastname)
ORDER BY COUNT(*);
