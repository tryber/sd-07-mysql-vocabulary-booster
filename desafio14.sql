SELECT c.Country AS "País"
FROM w3schools.customers AS c
INNER JOIN w3schools.suppliers AS s ON c.Country = s.Country
GROUP BY c.Country
ORDER BY c.Country
LIMIT 5;
