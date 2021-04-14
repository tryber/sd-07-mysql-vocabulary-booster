SELECT
  customers.contactName AS "Nome",
  customers.Country AS "País",
  `Número de compatriotas`
FROM customers
JOIN (
  SELECT
    customers.Country AS country,
    COUNT(*) - 1 AS `Número de compatriotas`
  FROM customers
  GROUP BY customers.Country
  HAVING `Número de compatriotas` > 0
  ) AS compratiotas
ON compratiotas.Country  = customers.Country
ORDER BY Nome;
