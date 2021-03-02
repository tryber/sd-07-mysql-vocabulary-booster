SELECT
  A.ContactName AS 'Nome',
  A.Country AS 'País',
  COUNT(*) - 1 AS 'Número de compatriotas'
FROM
  customers AS A,
  customers AS B
WHERE
  A.Country = B.Country
GROUP BY
  A.ContactName,
  A.Country
HAVING
	`Número de compatriotas` > 0
ORDER BY
  A.ContactName;