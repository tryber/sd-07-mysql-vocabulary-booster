SELECT A.ContactName AS 'Nome', 
A.Country AS 'País', 
COUNT(B.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS A, w3schools.customers AS B
WHERE A.Country = B.Country 
GROUP BY A.CustomerID
HAVING `Número de compatriotas` <> 0
ORDER BY A.ContactName;
