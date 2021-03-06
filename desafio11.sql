SELECT
ContactName AS 'Nome',
Country AS 'País',
(SELECT COUNT(ContactName) FROM w3schools.customer c2 WHERE c1.Country = c2.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customer c1
WHERE (SELECT COUNT(ContactName) FROM w3schools.customer c2 WHERE c1.Country = c2.Country) - 1 > 0
ORDER BY c1.ContactName;
