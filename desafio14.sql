(SELECT Country AS 'País'
FROM w3schools.customers c)
UNION
(SELECT Country AS 'País'
FROM w3schools.suppliers)
ORDER BY 1
LIMIT 5;
