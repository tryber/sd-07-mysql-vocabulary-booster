SELECT C.Country AS 'País'
FROM w3schools.customers AS C
UNION
SELECT S.Country AS 'País'
FROM w3schools.suppliers AS S
ORDER BY 1
LIMIT 5;
