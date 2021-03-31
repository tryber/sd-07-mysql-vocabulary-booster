SELECT
  cust1.ContactName AS Nome,
  cust1.Country AS País,
  cust2.Qtd - 1 AS 'Número de compatriotas'
FROM (
  SELECT Country, COUNT(Country) AS Qtd
  FROM w3schools.customers
  GROUP BY Country
) AS cust2
INNER JOIN
  w3schools.customers AS cust1 ON cust2.Country = cust1.Country
WHERE
  cust2.Qtd - 1 > 0 
ORDER BY
  Nome;
