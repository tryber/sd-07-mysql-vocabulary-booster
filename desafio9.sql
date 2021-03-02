SELECT 
    CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome completo',
    COUNT(o.EmployeeId) AS 'Total de pedidos'
FROM
    w3schools.orders AS o
        INNER JOIN
    w3schools.employees AS e ON o.EmployeeId = e.EmployeeId
GROUP BY o.EmployeeId
ORDER BY `Total de pedidos`;
