SELECT CONCAT(e.FirstName, " ", e.LastName) AS "Nome completo",
    COUNT(o.EmployeeID) AS "Total de pedidos"
    FROM w3schools.orders AS o
    INNER JOIN w3schools.employees AS e
        ON e.EmployeeID = o.EmployeeID
    GROUP BY e.EmployeeID
    ORDER BY COUNT(o.EmployeeID);
