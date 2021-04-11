SELECT C1.ContactName AS `Nome`,
C1.Country AS `País`,
COUNT(C1.Country) AS `Número de compatriotas`
FROM w3schools.customers AS C1, w3schools.customers AS C2
WHERE C2.Country = C1.Country AND C1.CustomerID <> C2.CustomerID
GROUP BY C1.CustomerID
HAVING `Número de compatriotas` > 0
ORDER BY `Nome`;
