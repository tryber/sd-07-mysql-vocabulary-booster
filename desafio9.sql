SELECT CONCAT(First_Name, ' ', Last_Name) AS 'Nome Completo', Count(O.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS E
INNER JOIN w3schools.orders AS O ON E.Employeed_ID = O.Employeed_ID
GROUP BY CONCAT(First_Name, ' ', Last_Name)
ORDER BY COUNT(O.Employeed_ID);
