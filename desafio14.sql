SELECT DISTINCT customers.Country AS "País"
FROM w3schools.customers AS customers
UNION
SELECT DISTINCT suppliers.Country
FROM w3schools.suppliers AS suppliers
ORDER BY "País"
LIMIT 5;
