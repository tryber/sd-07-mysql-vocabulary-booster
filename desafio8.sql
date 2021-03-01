SELECT * FROM w3schools.orders AS O
INNER JOIN w3schools.customers AS C ON C.CustomerID = O.CustomerID
ORDER BY 1