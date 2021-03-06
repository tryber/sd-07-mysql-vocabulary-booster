SELECT
ContactName AS Nome,
Country AS País,
COUNT(Country) AS 'Número de compatriotas'
FROM w3schools.customers
GROUP BY País
HAVING COUNT(País) > 1
ORDER BY Nome;
