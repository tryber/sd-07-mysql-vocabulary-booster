SELECT
CONCAT(e.FirstName, ' ', e.LastName),
COUNT(o.EmployeeID)
FROM w3schools.orders AS o
INNER JOIN
w3schools.employees AS e
ON
e.EmployeeID = o.EmployeeID
GROUP BY 1;
