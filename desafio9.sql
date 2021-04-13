SELECT CONCAT(E.FirstName, ' ', E.LastName) AS "Nome completo",
COUNT(O.ShipperID) AS "Total de pedidos" 
FROM w3schools.employees AS E
INNER JOIN w3schools.orders  AS O ON O.EmployeeID  = E.EmployeeID
GROUP BY CONCAT(E.FirstName, ' ', E.LastName)
ORDER BY COUNT(O.ShipperID);
