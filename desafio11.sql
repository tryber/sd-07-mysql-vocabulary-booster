SELECT DISTINCT t1.ContactName AS `Nome`, t1.Country AS `País`, (SELECT COUNT(Country) FROM w3schools.customers WHERE Country = t2.Country GROUP BY Country) AS `Número de compatriotas`
FROM w3schools.customers as t1, w3schools.customers as t2
WHERE t1.ContactName <> t2.ContactName
AND t1.Country = t2.Country
ORDER BY `Nome`;
