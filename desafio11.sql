SELECT a.contactname AS 'Nome', 
a.country AS 'País',
COUNT(*)-1 AS 'Número de compatriotas'
FROM customers AS a
LEFT JOIN customers AS b
ON a.country=b.country
GROUP BY a.contactname, a.country
HAVING(COUNT(*)>1) ORDER BY a.contactname;
