SELECT A.ContactName AS Nome, 
A.Country AS País, 
Count(B.Country)-1 AS 'Número de compatriotas'
FROM w3schools.customers AS A,
w3schools.customers AS B
WHERE A.Country = B.Country
GROUP BY A.ContactName, A.Country
HAVING COUNT(B.Country) - 1 > 0
ORDER BY A.ContactName ASC;
