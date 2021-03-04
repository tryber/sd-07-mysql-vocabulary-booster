SELECT Country AS "País"
FROM w3schools.customers
UNION 
SELECT w3schools.Country AS "País"
FROM suppliers
ORDER BY `País`
LIMIT 5;
