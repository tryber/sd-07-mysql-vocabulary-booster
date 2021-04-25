SELECT DISTINCT Country AS 'País'
FROM (SELECT Country FROM w3schools.customers
UNION ALL
SELECT Country FROM w3schools.suppliers) AS SQ
ORDER BY SQ.Country
LIMIT 5;
