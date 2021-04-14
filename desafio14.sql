SELECT Country AS 'País' FROM
(SELECT Country FROM w3schools.customers UNION
SELECT Country FROM w3schools.suppliers) AS Countries
ORDER BY Country
LIMIT 5;
