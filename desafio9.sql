SELECT
	CONCAT(e.firstname, ' ', e.lastname) AS 'Nome completo',
    COUNT(o.employeeid ) AS 'Total de pedidos'
FROM w3schools.orders AS o
INNER JOIN w3schools.employees AS e
	ON o.employeeid = e.employeeid
GROUP BY o.employeeid
ORDER BY `Total de pedidos`;
