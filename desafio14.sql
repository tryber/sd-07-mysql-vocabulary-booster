SELECT sup.Country AS `País`
FROM w3schools.suppliers AS sup
UNION
SELECT cus.Country AS `País`
FROM w3schools.customers AS cus
GROUP BY `País`
ORDER BY `País`
LIMIT 5;
