SELECT Country AS `País` FROM 
(SELECT DISTINCT(Country) FROM suppliers
UNION
SELECT DISTINCT(Country) FROM customers) AS `País`
ORDER BY Country
LIMIT 5;
