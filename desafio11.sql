SELECT
	C.ContactName AS 'Nome',
    C.Country AS 'País',
    COUNT(C.Country) AS 'Número de compatriotas'
FROM w3schools.customers C
JOIN w3schools.customers D
WHERE C.Country = D.Country AND C.CustomerID <> D.CustomerID
GROUP BY C.CustomerID
ORDER BY C.ContactName;