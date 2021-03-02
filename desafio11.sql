SELECT
	cp1.ContactName AS 'Nome',
	cp1.Country AS 'País',
	COUNT(*) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS cp1,
w3schools.customers AS cp2
WHERE cp1.Country = cp2.Country
GROUP BY cp1.ContactName
HAVING COUNT(cp1.Country) > 1
ORDER BY cp1.ContactName;
