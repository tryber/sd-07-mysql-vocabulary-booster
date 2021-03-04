SELECT T1.ContactName AS 'Nome', 
T1.Country AS 'País',
COUNT(T1.Country) AS 'Número de compatriotas'
FROM w3schools.customers AS T1, w3schools.customers AS T2
WHERE T1.CustomerID <> T2.CustomerID
AND T1.Country = T2.Country
GROUP BY T1.CustomerID
ORDER BY T1.ContactName;
