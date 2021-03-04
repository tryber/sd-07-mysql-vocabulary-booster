SELECT country AS `País` FROM 
(SELECT DISTINCT(country) FROM w3schools.suppliers
UNION
SELECT DISTINCT(country) FROM w3schools.customers) AS `País`
ORDER BY Country
LIMIT 5;
