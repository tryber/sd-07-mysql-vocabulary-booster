SELECT 
c.Country AS "País"
FROM w3schools.customers AS c, w3schools.suppliers AS s
WHERE c.Country <> s.Country
ORDER BY s.Country ASC
LIMIT 5;