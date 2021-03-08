SELECT DISTINCT customers.Country AS "País"
FROM w3schools.customers AS customer
UNION
SELECT DISTINCT suppliers.Country
FROM w3schools.suppliers AS supplier
ORDER BY "País"
LIMIT 5;
