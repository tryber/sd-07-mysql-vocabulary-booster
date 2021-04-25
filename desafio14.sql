SELECT DISTINCT(COUNTRY) AS País FROM(
SELECT Country FROM w3schools.customers
UNION
SELECT Country FROM w3schools.suppliers) AS Consulta
ORDER BY COUNTRY
LIMIT 5;
