SELECT C1.ContactName AS 'Nome', C1.Country AS 'País', COUNT(C1.Country) AS 'Número de compatriotas'
FROM w3schools.customers C1, w3schools.customers C2
WHERE C1.CustomerID <> C2.CustomerID
AND C1.Country = C2.Country
GROUP BY C1.CustomerID
ORDER BY C1.ContactName;
