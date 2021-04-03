(
SELECT
customers.Country AS 'País'
FROM w3schools.customers
GROUP BY Country
ORDER BY Country
LIMIT 5
)
UNION
(
SELECT
suppliers.Country AS 'País'
FROM w3schools.suppliers
GROUP BY Country
ORDER BY Country
LIMIT 5
)
ORDER BY País
LIMIT 5;
