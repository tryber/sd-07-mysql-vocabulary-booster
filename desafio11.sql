SELECT ContactName AS 'Nome',
Country AS 'País', 
COUNT(CustomerID) - 1 AS 'Número de compatriotas'
FROM w3schools.customers
GROUP BY CustomerID
having COUNT(CustomerID) - 1 > 0
ORDER BY ContactName;
