SELECT A.ContactName AS 'Nome',
A.Country AS 'País',
COUNT(B.COUNTRY) AS 'Número de compatriotas'
FROM w3schools.customers AS A, w3schools.customers AS B
WHERE B.CustomerID <> A.CustomerID AND A.Country = B.Country
GROUP BY A.CustomerID
ORDER BY 1;
