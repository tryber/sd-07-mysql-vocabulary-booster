SELECT consu.country AS "País" 
FROM w3schools.customers AS consu
UNION
SELECT forne.country
FROM w3schools.suppliers AS forne
ORDER BY 1
LIMIT 5;
