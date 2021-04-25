SELECT
    CONCAT(t2.firstname, " ", t2.lastname) AS "Nome completo",
    COUNT(t1.employeeid) AS "Total de pedidos"
FROM w3schools.orders AS t1
    INNER JOIN w3schools.employees AS t2
WHERE
    t1.employeeid = t2.employeeid
GROUP BY t1.employeeid
ORDER BY COUNT(t1.employeeid);
