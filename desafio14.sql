SELECT
DISTINCT c.country AS País
FROM w3schools.customers c
UNION
SELECT
DISTINCT s.country AS País
FROM w3schools.suppliers s
ORDER BY País
LIMIT 5;
