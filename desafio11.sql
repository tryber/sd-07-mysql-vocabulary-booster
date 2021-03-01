SELECT
t1.ContactName AS 'Nome',
t1.Country AS 'País',
(SELECT (COUNT(*)) FROM w3schools.customers WHERE t1.Country = Country AND t1.ContactName <> ContactName;) AS 'Número de compatriotas'
FROM w3schools.customers AS t1
GROUP BY t1.ContactName HAVING (SELECT (COUNT(*)) FROM w3schools.customers WHERE t1.Country = Country AND t1.ContactName <> ContactName;) <> 0
ORDER BY t1.ContactName;
