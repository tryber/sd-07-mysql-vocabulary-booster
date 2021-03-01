SELECT CONCAT(FirstName, ' ', LastName) AS 'Nome Completo', Count(O.EmployeeID) AS 'Total de pedidos'
FROM w3schools.employees AS E
INNER JOIN w3schools.orders AS O ON E.EmployeeID = O.EmployeeID
GROUP BY CONCAT(FirstName, ' ', LastName)
ORDER BY COUNT(O.EmployeeID);
