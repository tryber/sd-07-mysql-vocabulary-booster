SELECT t1.Country AS `País`
FROM w3schools.customers AS t1
INNER JOIN w3schools.suppliers AS t2
ON t1.Country <> t2.Country
GROUP BY t1.Country
ORDER BY t1.Country
LIMIT 5;
