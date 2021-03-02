SELECT C1.ContactName AS `Nome`,
C1.Country AS `País`,
(SELECT COUNT(*) 
FROM w3schools.customers AS C2
WHERE C2.Country = C1.Country AND C1.CustomerID <> C2.CustomerID) AS `Número de compatriotas`
FROM w3schools.customers AS C1
WHERE Country = Country
ORDER BY `Nome`;
