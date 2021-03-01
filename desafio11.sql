SELECT C1.ContactName AS "Nome",C1.Country AS "País",COUNT(C1.Country) AS "Número de compatriotas" 
FROM w3schools.customers AS C1
INNER JOIN w3schools.customers AS C2
ON C1.Country = C2.Country
GROUP BY C1.CustomerID
ORDER BY Nome;
