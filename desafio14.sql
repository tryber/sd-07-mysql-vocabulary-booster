SELECT Country AS `País` FROM 
(SELECT DISTINCT(Country) FROM w3schools.suppliers
UNION
SELECT DISTINCT(Country) FROM w3schools.customers) AS `País`
ORDER BY Country
LIMIT 5;
