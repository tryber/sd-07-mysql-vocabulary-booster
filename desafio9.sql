SELECT CONCAT(e.firstname, ' ', e.lastname) 'Nome completo',
COUNT(*) AS 'Total de pedidos'
FROM orders o
INNER JOIN employees e
ON o.employeeid=e.employeeid
GROUP BY CONCAT(e.firstname, ' ', e.lastname)
ORDER BY COUNT(*);
